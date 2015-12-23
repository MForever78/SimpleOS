enum {  // File Descriptor
    FAT_FD_CLUSTER,
    FAT_FD_PARENT_CLUSTER,
    FAT_FD_PARENT_OFFSET,
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
fat16_fd_new(int cluster, int parent_cluster, int parent_offset, int size, int attr)
{
    int *ret;

    ret = (int*)malloc(FAT_FD_SIZE_ << 2);
    ret[FAT_FD_CLUSTER]         = cluster;
    ret[FAT_FD_PARENT_CLUSTER]  = parent_cluster;
    ret[FAT_FD_PARENT_OFFSET]   = parent_offset;
    ret[FAT_FD_SIZE]            = size;
    ret[FAT_FD_ATTR]            = attr;

    return ret;
}

int *
fat16_get_root_fd()
{ return fat16_fd_new(0, 0, 0, fat_max_root_entries << 5, FAT_ATTR_DIR); }

char *  // return at path sep
fat16_normalize_filename(char *path, char *dst)
{
    int count;

    memset(dst, 0x20, 11);
    count = 0;
    while (count++ < 8 && *path && *path != '.' && *path != '/') {
        *dst++ = (*path >= 'a' && *path <= 'z') ? *path - 32 : *path;
        path++;
    }
    while (*path && *path != '.' && *path != '/') ++path;
    if (*path != '.') { return path; }

    dst = dst + (9 - count);
    count = 0; ++path;
    while (count++ < 3 && *path && *path != '/') {
        *dst++ = (*path >= 'a' && *path <= 'z') ? *path - 32 : *path;
        path++;
    }
    while (*path && *path != '/') ++path;

    return path;
}

int
fat16_file_size(int *fd)
{ return fd[FAT_FD_SIZE]; }

int
fat16_file_attr(int *fd)
{ return fd[FAT_FD_ATTR]; }

int
fat16_file_is_readonly(int *fd)
{ return fat16_file_attr(fd) & FAT_ATTR_READONLY; }

int
fat16_file_is_hidden(int *fd)
{ return fat16_file_attr(fd) & FAT_ATTR_HIDDEN; }

int
fat16_file_is_system(int *fd)
{ return fat16_file_attr(fd) & FAT_ATTR_SYSTEM; }

int
fat16_file_is_volume(int *fd)
{ return fat16_file_attr(fd) & FAT_ATTR_VOLUME; }

int
fat16_file_is_dir(int *fd)
{ return fat16_file_attr(fd) & FAT_ATTR_DIR; }

int
fat16_file_is_archive(int *fd)
{ return fat16_file_attr(fd) & FAT_ATTR_ARCHIVE; }

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
        *(int*)(fat_table + ((cluster >> 1) << 2)) = (next_cluster << 16) | original;
    }
    else {
        original = *(int*)(fat_table + (cluster << 1)) >> 16;
        *(int*)(fat_table + (cluster << 1)) = (original << 16) | next_cluster;
    }

    sector = cluster >> 8;
    write_block(fat_start_of_fat + sector, fat_table + (sector << 9));
    write_block(fat_start_of_fat + sector + fat_sector_per_fat, fat_table + (sector << 9));
}

int
fat16_sector_by_first_cluster(int cluster, int index)
{
    if (!cluster) { return index + fat_root_sector; }
    while (index >= fat_sector_per_cluster) {
        if (cluster & ((0xFF << 8) | 0x80) == ((0xFF << 8) | 0x80)) return 0;   // end of fat list
        cluster = fat16_next_cluster(cluster);
        index = index - fat_sector_per_cluster;
    }
    return (cluster - 2) * fat_sector_per_cluster + index + fat_start_of_data;
}

int
fat16_sector_of_file(int *fd, int index)
{
    if (!fd) { return 0; }
    if (fd[FAT_FD_CLUSTER] == 0) { return index + fat_root_sector; }
    return fat16_sector_by_first_cluster(fd[FAT_FD_CLUSTER], index);
}

char *
fat16_find_in_dir_entry(char *buf, char *buf_limit, char *name)
{
    while (buf < buf_limit && *buf) {
        if (strncmp(name, buf, 11) == 0) {
            return buf;
        }
        buf = buf + FAT_ENTRY_SIZE_;
    }

    return 0;
}

int *
fat16_find_in_dir(int *fd, char *name)
{
    int dir_size, cluster, *ret;
    char *buf, *entry;

    if (!fat16_file_is_dir(fd)) return 0;

    dir_size    = fat16_file_size(fd);
    buf         = (char*)malloc(dir_size);
    fat16_read_file(fd, 0, dir_size, buf);
    entry = fat16_find_in_dir_entry(buf, buf + dir_size, name);
    if (entry) {
        cluster = *(int*)(entry + 24) >> 16;
        if (!cluster) cluster = (1 << 16) - 1;  // empty file
        ret = fat16_fd_new(
                cluster,
                fd[FAT_FD_CLUSTER],
                (int)entry - (int)buf,
                *(int*)(entry + 28) ? *(int*)(entry + 28) : fat_cluster_size,
                *(entry + 11)
            );
    }
    else ret = 0;
    free(buf);
    return ret;
}

int *
fat16_open_file(char *path)
{
    int *fd, *nfd;
    char *name;

    if (*path != '/') return 0;   // must start on root
    if (!*(path + 1)) return fat16_get_root_fd();

    fd = fat16_get_root_fd();
    name = (char*)malloc(11);       // 8 + 3

    while (*path++) {
        path = fat16_normalize_filename(path, name);
        nfd = fat16_find_in_dir(fd, name);
        if (!nfd) {
            free(fd);
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

    cluster = 
        (fat_sector_per_cluster == 4) ? 
            ((sector - fat_start_of_data) >> 2) :
            ((sector - fat_start_of_data) / fat_sector_per_cluster);
    cluster = fat16_next_cluster(cluster + 2);
    if (cluster < 0) return cluster;
    return (cluster - 2) * fat_sector_per_cluster + fat_start_of_data;
}

int
fat16_read_file(int *fd, int start, int length, char *buf)
{
    int sector;
    int offset;
    int l_bound;
    int rlen;
    char *buffer;

    if (!fd) return 0;
    if (fd[FAT_FD_SIZE] <= start) return 0;
    if (fd[FAT_FD_SIZE] <= start + length) length = fd[FAT_FD_SIZE];

    buffer = (start & 0x1FF) || (length & 0x1FF) ? (char*)malloc(512) : 0;

    sector = fat16_sector_of_file(fd, start >> 9);
    offset = 0;

    while (offset < length) {
        l_bound = start & 0x1FF;
        if (!l_bound && length - offset >= 512) {
            read_block(sector, buf + offset);
            offset = offset + 512;
            start  = start + 512;
        }
        else {
            read_block(sector, buffer);
            rlen = min(512 - l_bound, length - offset);
            memcpy(buf + offset, buffer, rlen);
            offset = rlen + offset;
            start  = rlen + start;
        }
        sector = fat16_next_sector(fd, sector);
    }

    if (buffer) free(buffer);
    return length;
}

int
fat16_alloc_fat()
{
    int *p;

    p = (int*)fat_table + 2;  // start with cluster #4
    while ((*p & ((1 << 16) - 1)) && (*p >> 16)) ++p;
    return (((int)p - (int)fat_table) >> 1) + ((*p >> 16) ? 0 : 1);
}

int
fat16_last_cluster(int *fd)
{
    int last_cluster;
    int cluster;

    if (!fd) return 0;
    if (!fd[FAT_FD_CLUSTER]) return 0;

    last_cluster = cluster = fd[FAT_FD_CLUSTER];
    while ((cluster & ((0xFF << 8) | 0x80)) != ((0xFF << 8) | 0x80)) {
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
    int new_cluster;
    int expect_cluster;
    int sector;

    char *buff, *entry;

    if (!fd[FAT_FD_CLUSTER]) return;            // root dir
    if (fat16_file_is_dir(fd)) return;

    size = fd[FAT_FD_SIZE];
    expect_cluster = new_size / fat_cluster_size;
    cluster_nr = size / fat_cluster_size;
    cluster = fat16_last_cluster(fd);

    if (cluster == ((1 << 16) - 1)) {           // empty file
        fd[FAT_FD_CLUSTER] = new_cluster = cluster = fat16_alloc_fat();
        cluster_nr ++;
    }
    else {
        new_cluster = fd[FAT_FD_CLUSTER];
    }

    while (cluster_nr < expect_cluster) {
        fat16_set_fat(cluster, fat16_alloc_fat());
        cluster = fat16_next_cluster(cluster);
        cluster_nr ++;
    }
    fat16_set_fat(cluster, (1 << 16) - 1);

    fd[FAT_FD_SIZE] = new_size;

    // update file size in parent
    buff = malloc(512);
    sector = fat16_sector_by_first_cluster(fd[FAT_FD_PARENT_CLUSTER], fd[FAT_FD_PARENT_OFFSET] >> 9);
    read_block(sector, buff);
    entry = buff + (fd[FAT_FD_PARENT_OFFSET] & 0x1FF);

    *(int*)(entry + FAT_ENTRY_SIZE) = new_size;
    *(int*)(entry + 24) = (new_cluster << 16) | (*(int*)(entry + 24) & ((1 << 16) - 1));

    write_block(sector, buff);
    free(buff);
}

int
fat16_write_file(int *fd, int start, int length, char *buf)
{
    int sector;
    int offset;
    int l_bound;
    int wlen;
    char *buffer;

    if (!fd) return 0;
    if (fd[FAT_FD_SIZE] <= start + length) fat16_resize_file(fd, start + length);

    buffer = (start & 0x1FF) || (length & 0x1FF) ? (char*)malloc(512) : 0;

    sector = fat16_sector_of_file(fd, start >> 9);
    offset = 0;

    while (offset < length) {
        l_bound = start & 0x1FF;
        if (!l_bound && length - offset >= 512) {
            write_block(sector, buf + offset);
            offset = offset + 512;
            start  = start + 512;
        }
        else {
            read_block(sector, buffer);
            wlen = min(512 - l_bound, length - offset);
            memcpy(buffer + l_bound, buf + offset, wlen);
            offset = wlen + offset;
            start  = wlen + start;
            write_block(sector, buffer);
        }
        sector = fat16_next_sector(fd, sector);
    }

    if (buffer) free(buffer);
    return length;
}

int *
fat16_create_file_in_dir(int *fd, char *name)
{
    int dir_size, *ret;
    char *buf, *entry;

    dir_size    = fat16_file_size(fd);
    entry = buf = (char*)malloc(dir_size);
    fat16_read_file(fd, 0, dir_size, buf);

    while (*entry) entry = entry + FAT_ENTRY_SIZE_;
    memset(entry, 0, FAT_ENTRY_SIZE_);

    memcpy(entry, name, 11);
    *(int*)(entry + 24) = ((1 << 16) - 1) << 16;    // set first cluster

    fat16_write_file(fd, entry - buf, FAT_ENTRY_SIZE_, entry);

    free(buf);

    return fat16_fd_new(
            (1 << 16) - 1,
            fd[FAT_FD_CLUSTER],
            entry - buf,
            0,
            0
        );
}

int *
fat16_create_file(char *path)
{
    int *fd, *nfd;
    char *name;

    if (*path != '/') return 0;

    fd = fat16_get_root_fd();
    name = (char*)malloc(11);

    while (*path++) {
        path = fat16_normalize_filename(path, name);
        nfd = fat16_find_in_dir(fd, name);
        if (!nfd && !*path) {
            nfd = fat16_create_file_in_dir(fd, name);
            free(fd);
            free(path);
            return nfd;
        }
        else if (!nfd) {
            free(fd);
            free(name);
            return 0;
        }
        free(fd);
        fd = nfd;
    }
    free(name);
    if (fat16_file_size(fd)) { fat16_resize_file(fd, 0); }
    return fd;
}

int *
fat16_create_dir_in_dir(int *fd, char *path)
{
    // TODO
}

int *
fat16_create_dir(char *path)
{
    int *fd, *nfd;
    char *name;

    if (*path != '/') return 0;

    fd = fat16_get_root_fd();
    name = (char*)malloc(11);

    while (*path++) {
        path = fat16_normalize_filename(path, name);
        nfd = fat16_find_in_dir(fd, name);
        if (!nfd) {
            nfd = fat16_create_dir_in_dir(fd, path);
        }
        free(fd);
        fd = nfd;
    }
    free(name);
    return fd;
}

void
fat16_close_file(int *fd)
{ if (fd) free(fd); }

char *
fat16_read(char *path)
{
    int *fd;
    int size;
    char *buff;

    fd = fat16_open_file(path);
    if (!fd) { return 0; }
    buff = malloc((size = fat16_file_size(fd)));
    if (!buff) { fat16_close_file(fd); return 0; }
    size = size - fat16_read_file(fd, 0, size, buff);
    if (size) { fat16_close_file(fd); free(buff); return 0; }
    fat16_close_file(fd);
    return buff;
}
