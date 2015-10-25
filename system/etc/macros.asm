#define __overload_helper(_1, _2, _3, _4, NAME, ...)    NAME

#define move(dest, src)         \
    addi dest, src, 0

#define li(dest, imm)           \
    addi dest, $zero, imm

#define lli(dest, upper, lower) \
    lui dest, upper             __CR__\
    ori dest, dest, lower

#define push_reg(reg)           \
    addi    $sp,    $sp,    -4  __CR__\
    sw      reg,    0($sp)

#define pop_reg(reg)            \
    lw      reg,    0($sp)      __CR__\
    addi    $sp,    $sp,    4

## offset of FAT_BOOT_RECORD
#define FBR_SECTOR_PER_CLUSTER_B    13
#define FBR_RESERVED_SECTORS_W      14
#define FBR_MAX_ROOT_DIR_ENTRIES_W  17
#define FBR_SECTOR_PER_FAT_W        22

## offset of FILE structure
#define FILE_SECTOR_D           0
#define FILE_ENTRY_CLUSTER_W    4
#define FILE_ENTRY_OFFSET_W     6
#define FILE_SIZE               8
