enum {  // File Descriptor
    FAT_FD_CLUSTER,
    FAT_FD_PARENT_CLUSTER,
    FAT_FD_SIZE,
    FAT_FD_ATTR,
    FAT_FD_SIZE_
};

enum {  // Entry
    FAT_ENTRY_NAME,
    FAT_ENTRY_ATTR = 11,
    FAT_ENTRY_START_CLUSTER = 26,
    FAT_ENTRY_SIZE = 28,
    FAT_ENTRY_SIZE_ = 32
};

enum {
    FAT_ATTR_READONLY   = 1,
    FAT_ATTR_HIDDEN     = 2,
    FAT_ATTR_SYSTEM     = 4,
    FAT_ATTR_VOLUME     = 8,
    FAT_ATTR_DIR        = 16,
    FAT_ATTR_ARCHIVE    = 32
};

char *fat_root_block;
char *fat_table;
int fat_sector_per_cluster;
int fat_cluster_size;
int fat_max_root_entries;
int fat_start_of_data;
int fat_root_sector;
int fat_sector_per_fat;
int fat_start_of_fat;

void
fat16_init()
{
    int t;

    fat_root_block = (char*)malloc(DRIVER_BLOCK_SIZE);
    read_block(0, fat_root_block);

    fat_sector_per_cluster = fat_root_block[13];
    fat_cluster_size = fat_sector_per_cluster << 9;
    fat_max_root_entries = (*(int*)(fat_root_block + 16) >> 8) & ((1 << 16) - 1);

    // read fat
    fat_sector_per_fat = *(int*)(fat_root_block + 20) >> 16;
    fat_table = (char*)malloc(fat_sector_per_fat << 9);
    fat_start_of_fat = *(int*)(fat_root_block + 12) >> 16;
    read_blocks(fat_start_of_fat, fat_sector_per_fat, fat_table);

    t = *(int*)(fat_root_block + 20) >> 16;
    fat_start_of_data = (t << 1) + (fat_max_root_entries >> 4) + fat_start_of_fat;

    fat_root_sector = (t << 1) + fat_start_of_fat;
}

int *
fat16_fd_new(int cluster, int parent_cluster, int size, int attr)
{
    int *ret;

    ret = (int*)malloc(FAT_FD_SIZE_ << 2);
    ret[FAT_FD_CLUSTER]         = cluster;
    ret[FAT_FD_PARENT_CLUSTER]  = parent_cluster;
    ret[FAT_FD_SIZE]            = size;
    ret[FAT_FD_ATTR]            = attr;
}

int *
fat16_get_root_fd()
{ return fat16_fd_new(0, 0, fat_max_root_entries << 5, FAT_ATTR_DIR); }

char *  // return at path sep
fat16_normalize_filename(char *path, char *dst)
{
    int count;

    memset(dst, 0x20, 11);
    count = 0;
    while (count++ < 8 && *path && *path != '.' && *path != '/') {
        *dst++ = *path++;
    }
    while (*path && *path != '.' && *path != '/') ++path;
    if (*path != '.') return path;

    dst = dst + (8 - count);
    count = 0; ++path;
    while (count++ < 3 && *path && *path != '/') {
        *dst++ = *path++;
    }
    while (*path && *path != '/') ++path;
    return path;
}

int
fat16_file_size(int *fd)
{ return fd[FAT_FD_SIZE]; }

int
fat16_next_cluster(int cluster)
{
    if (!cluster) return 0;
    if (cluster & 1) { return *(int*)(fat_table + ((cluster >> 1) << 2)) >> 16; }
    return *(int*)(fat_table + (cluster << 1)) & ((1 << 16) - 1);
}

void
fat16_set_fat(int cluster, int next_cluster)
{
    int original;
    int sector;

    if (!cluster) return 0;
    if (cluster & 1) {
        original = *(int*)(fat_table + ((cluster >> 1) << 2)) & ((1 << 16) - 1);
        *(int*)(fat_table + (cluster >> 1) << 2) = (next_cluster << 16) | original;
    }
    else {
        original = *(int*)(fat_table + (cluster << 1)) >> 16;
        *(int*)(fat_table + (cluster << 1)) = (original << 16) | next_cluster;
    }

    sector = cluster >> 8;
    write_block(fat_start_of_fat, sector, fat_table + (sector << 9));
    write_block(fat_start_of_fat, sector + fat_sector_per_fat, fat_table + (sector << 9));
}

int
fat16_sector_of_file(int *fd, int index)
{
    int cluster;

    if (!fd) { return 0; }
    if (fd[FAT_FD_CLUSTER] == 0) { return index + fat_root_sector; }

    cluster = fd[FAT_FD_CLUSTER];
    while (index >= fat_sector_per_cluster) {
        cluster = fat16_next_cluster(cluster);
        if (cluster & ((0xFF << 8) | 0x80)) return 0;   // end of fat list
        index = index - fat_sector_per_cluster;
    }
    return (cluster - 2) * fat_sector_per_cluster + index + fat_start_of_data;
}

int *
fat16_find_in_dir(int *fd, char *name)
{
    int dir_size, *ret;
    char *buf, *entry, *buf_limit;

    dir_size    = fat16_file_size(fd);
    entry       = buf = (char*)malloc(dir_size);
    buf_limit   = entry + dir_size;
    fat16_read_file(fd, 0, dir_size, buf);

    while (entry < buf_limit && *entry) {
        if (strncmp(name, entry, 11) == 0) {
            ret = fat16_fd_new(
                    *(int*)(entry + 24) >> 16,
                    fd[FAT_FD_CLUSTER],
                    *(int*)(entry + 28),
                    *(entry + 11)
                );
            free(buf);
            return ret;
        }
        entry = entry + FAT_ENTRY_SIZE;
    }

    free(buf);
    return 0;
}

int *
fat16_open_file(char *path)
{
    int *fd, *nfd;
    char *name;

    if (*path != '/') return 0;   // must start on root

    fd = fat16_get_root_fd();
    name = (char*)malloc(11);       // 8 + 3

    while (*path++) {
        path = fat16_normalize_filename(path, name);
        nfd = fat16_find_in_dir(fd, name);
        if (!nfd) {
            free(name);
            return 0;
        }
        free(fd);
        fd = nfd;
    }
    free(name);
    return fd;
}

int
fat16_next_sector(int *fd, int sector)
{
    int cluster;

    if (sector < fat_start_of_data) return sector + 1;
    if ((sector - fat_start_of_data + 1) & (fat_sector_per_cluster - 1)) return sector + 1;

    cluster = (sector - fat_start_of_data) / fat_sector_per_cluster;
    cluster = fat16_next_cluster(cluster);
    return cluster * fat_sector_per_cluster + fat_start_of_data;
}

int
fat16_read_file(int *fd, int start, int length, char *buf)
{
    int sector;
    int offset;
    int l_bound;
    char *buffer;

    if (!fd) return 0;
    if (fd[FAT_FD_SIZE] <= start) return 0;
    if (fd[FAT_FD_SIZE] <= start + length) length = fd[FAT_FD_SIZE];

    buffer = (start & 0x1FF) || (length & 0x1FF) ? (char*)malloc(512) : 0;

    sector = fat16_sector_of_file(fd, start >> 9);
    offset = 0;

    while (offset < length) {
        l_bound = start & 0x1FF;
        if (l_bound == 0 && length - offset >= 512) {
            read_block(sector, buf + offset);
            offset = offset + 512;
            start  = start + 512;
        }
        else {
            read_block(sector, buffer);
            l_bound = min(512, length - offset) - l_bound;  // use as temp variable
            memcpy(buf + offset, buffer, l_bound);
            offset = l_bound + offset;
            start  = l_bound + start;
        }
        sector = fat16_next_sector(fd, sector);
    }

    if (buffer) free(buffer);
    return length;
}

int
fat16_alloc_fat()
{ }

int
fat16_last_cluster(int *fd)
{
    int last_cluster;
    int cluster;

    if (!fd) return 0;
    if (!fd[FAT_FD_CLUSTER]) return 0;

    cluster = fd[FAT_FD_CLUSTER];
    while (cluster & ((0xFF << 8) | 0x80) == 0) {
        last_cluster = cluster;
        cluster = fat16_next_cluster(cluster);
    }
    return last_cluster;
}

void
fat16_resize_file(int *fd, int new_size)
{
    int size;
    int cluster;
    int cluster_nr;
    int expect_cluster;

    if (!fd[FAT_FD_CLUSTER]) return;            // root dir
    if (fd[FAT_FD_SIZE] >= new_size) return;    // grow only

    size = fd[FAT_FD_SIZE];
    expect_cluster = new_size / fat_cluster_size;
    cluster_nr = size / fat_cluster_size;
    cluster = fat16_last_cluster(fd);

    while (cluster_nr < expect_cluster) {
        fat16_set_fat(cluster, fat16_alloc_fat());
        cluster = fat16_next_cluster(cluster);
        cluster_nr ++;
    }
}

int
fat16_write_file(int *fd, int start, int length, char *buf)
{
    if (!fd) return 0;
    if (fd[FAT_FD_SIZE] <= start + length) fat16_resize_file(fd, start + length);
}
