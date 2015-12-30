enum {
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

int
file_size(int *fd)
{ return fd[FAT_FD_SIZE]; }

int
file_is_readonly(int *fd)
{ return fd[FAT_FD_ATTR] & FAT_ATTR_READONLY; }

int
file_is_hidden(int *fd)
{ return fd[FAT_FD_ATTR] & FAT_ATTR_HIDDEN; }

int
file_is_dir(int *fd)
{ return fd[FAT_FD_ATTR] & FAT_ATTR_DIR; }

