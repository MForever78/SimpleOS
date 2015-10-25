#include "driver.asm"

@global FAT_BOOT_RECORD
    dd 0

@global FAT_SECTOR_PER_CLUSTER
    dd 0

@global FAT_CLUSTER_SIZE
    dd 0

@global FAT_START_OF_FAT
    dd 0

@global FAT_ROOT_FD
    size FILE_SIZE

@global FAT_ROOT_FD_PTR
    dd FAT_ROOT_FD

@global FAT_PATH_SEP
    db 47   # '/'

@def fat16_init
    @local sector_per_cluster
    @local reserved_sectors
    @local sector_per_fat

    @call malloc, @DRIVER_BLOCK_SIZE
    sw @retval, @&FAT_BOOT_RECORD
    @call read_block, @zero, @FAT_BOOT_RECORD

    move(@base_addr, @FAT_BOOT_RECORD)

    lb @sector_per_cluster, FBR_SECTOR_PER_CLUSTER_B(@base_addr)
    lw @reserved_sectors,   FBR_RESERVED_SECTORS_W(@base_addr)
    lw @sector_per_fat,     FBR_SECTOR_PER_FAT_W(@base_addr)

    sw @sector_per_cluster, @&FAT_SECTOR_PER_CLUSTER

    sll @fat_cluster_size, @sector_per_cluster, 9
    sw @fat_cluster_size, @&FAT_CLUSTER_SIZE

    sll @fat_size, @sector_per_fat, 9
    @call malloc, @fat_size
    sw @retval, @&FAT_START_OF_FAT
    @call read_blocks, @reserved_sectors, @sector_per_fat, @FAT_START_OF_FAT

    @call memset, @FAT_ROOT_FD_PTR, @zero, FILE_SIZE
    sll @root_sector, @sector_per_fat, 1
    addi @root_sector, @root_sector, @reserved_sectors
    sw @root_sector, FILE_SECTOR_D(@FAT_ROOT_FD_PTR)
@enddef

@def fat16_read_file
    @param fp
    @param start
    @param length
    @param ptr

@enddef

@def _fat16_sector_in_file
    @param fp
    @param index

    @local cluster
    @local ti

    move(@ti, @index)

    lw @file_sector, FILE_SECTOR_D(@fp)
    @call div, @file_sector, @FAT_SECTOR_PER_CLUSTER
    move(@cluster, @retval)

_fat16_sector_in_file_loop_begin:
    slt @compare_result, @ti, @FAT_SECTOR_PER_CLUSTER
    bne @compare_result, @zero, _fat16_sector_in_file_find_cluster
    @call _fat16_next_cluster, @cluster
    move(@cluster, @retval)
    sub @ti, @ti, @FAT_SECTOR_PER_CLUSTER
    j _fat16_sector_in_file_loop_begin

_fat16_sector_in_file_find_cluster:
    @call mul, @cluster, @FAT_SECTOR_PER_CLUSTER
    add @retval, @retval, @ti
@enddef

@def _fat16_next_cluster
    @param cluster

    // TODO

@enddef

@def _fat16_read_file_in_sector
    @param sector
    @param offset
    @param length
    @param ptr

    @local sector_buffer

    @call malloc, @DRIVER_BLOCK_SIZE
    move(@sector_buffer, @retval)
    @call read_block, @sector, @sector_buffer

    add @begin, @sector_buffer, @offset
    @call memcpy, @ptr, @begin, @length
@enddef
