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
    add @root_sector, @root_sector, @reserved_sectors
    sw @root_sector, FILE_SECTOR_D(@FAT_ROOT_FD_PTR)
@enddef

@def fat16_read_file
    @param fp
    @param start
    @param length
    @param ptr

    @local sector
    @local offset
    @local read_length
    
    @call div, @start, @DRIVER_BLOCK_SIZE
    @call _fat16_sector_in_file, @fp, @retval
    move(@sector, @retval)
    @call mod, @start, @DRIVER_BLOCK_SIZE
    move(@offset, @offset)
    
_fat16_read_file_loop_begin:
    sub @read_length, @DRIVER_BLOCK_SIZE, @offset
    @call min, @read_length, @length
    move(@read_length, @retval)
    @call _fat16_read_file_in_sector, @sector, @offset, @read_length, @ptr

    sub @tmp, @length, @read_length
    sw @tmp, @&length
    add @tmp, @ptr, @read_length
    sw @tmp, @&ptr
    move(@offset, @zero)
    @call _fat16_next_sector, @sector
    move(@sector, @retval)
    bne @length, @zero, _fat16_read_file_loop_begin
@enddef

@def _fat16_next_sector
    @param sector

    @local sector_next

    addi @sector_next, @sector, 1
    @call mod, @sector_next, @FAT_SECTOR_PER_CLUSTER
    beq @retval, @zero, _fat16_next_sector_next_cluster
    move(@retval, @sector_next)
    @return
_fat16_next_sector_next_cluster:
    @call div, @sector, @FAT_SECTOR_PER_CLUSTER
    @call _fat16_next_cluster, @retval
    @call mul, @retval, @FAT_SECTOR_PER_CLUSTER
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

    sll @fat_offset, @cluster, 1
    add @fat_entry, @fat_offset, @FAT_START_OF_FAT
    lh @retval, 0(@fat_entry)
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
