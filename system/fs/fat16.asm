#include "driver.asm"

@global FAT_BOOT_RECORD             # buffer for FAT Boot Record
    dd 0

@global FAT_SECTOR_PER_CLUSTER      # sector per cluster
    dd 0

@global FAT_CLUSTER_SIZE            # size of cluster
    dd 0

@global FAT_START_OF_FAT            # buffer for FAT
    dd 0

@global FAT_ROOT_FD                 # File descriptor for Root
    size FILE_SIZE

@global FAT_ROOT_FD_PTR             # pointer to Root FD
    dd FAT_ROOT_FD

@global FAT_PATH_SEP                # path separator
    db 47                           # '/'

## initialize fat16
@def fat16_init
    @local sector_per_cluster
    @local reserved_sectors
    @local sector_per_fat

    @call malloc, @DRIVER_BLOCK_SIZE    # allocate buffer for FAT Boot Record
    sw @retval, @&FAT_BOOT_RECORD
    @call read_block, @zero, @FAT_BOOT_RECORD   # read it

    move(@base_addr, @FAT_BOOT_RECORD)

    ## retrive infomation from FAT Boot Record
    lb @sector_per_cluster, FBR_SECTOR_PER_CLUSTER_B(@base_addr)
    lw @reserved_sectors,   FBR_RESERVED_SECTORS_W(@base_addr)
    lw @sector_per_fat,     FBR_SECTOR_PER_FAT_W(@base_addr)

    ## store SECTOR_PER_CLUSTER
    sw @sector_per_cluster, @&FAT_SECTOR_PER_CLUSTER

    ## calculate and store CLUSTER_SIZE
    sll @fat_cluster_size, @sector_per_cluster, 9   # assume BLOCK_SIZE = 512
    sw @fat_cluster_size, @&FAT_CLUSTER_SIZE

    ## calculate and read START_OF_FAT
    sll @fat_size, @sector_per_fat, 9
    @call malloc, @fat_size
    sw @retval, @&FAT_START_OF_FAT
    @call read_blocks, @reserved_sectors, @sector_per_fat, @FAT_START_OF_FAT

    ## initialize FD for Root
    @call memset, @FAT_ROOT_FD_PTR, @zero, FILE_SIZE
    sll @root_sector, @sector_per_fat, 1
    add @root_sector, @root_sector, @reserved_sectors
    sw @root_sector, FILE_SECTOR_D(@FAT_ROOT_FD_PTR)
@enddef

## read data from a file
@def fat16_read_file
    @param fp
    @param start
    @param length
    @param ptr

    @local sector
    @local offset
    @local read_length
    
    ## set first sector and data offset
    @call div, @start, @DRIVER_BLOCK_SIZE
    @call _fat16_sector_in_file, @fp, @retval
    move(@sector, @retval)
    @call mod, @start, @DRIVER_BLOCK_SIZE
    move(@offset, @offset)
    
_fat16_read_file_loop_begin:
    ## calculate read_length for this read
    sub @read_length, @DRIVER_BLOCK_SIZE, @offset
    @call min, @read_length, @length
    move(@read_length, @retval)

    ## read
    @call _fat16_read_file_in_sector, @sector, @offset, @read_length, @ptr

    ## modify loop variables
    ## TODO detect end of file
    sub @tmp, @length, @read_length
    sw @tmp, @&length
    add @tmp, @ptr, @read_length
    sw @tmp, @&ptr
    move(@offset, @zero)
    @call _fat16_next_sector, @sector
    move(@sector, @retval)
    bne @length, @zero, _fat16_read_file_loop_begin
@enddef

## calculate next sector in the file
@def _fat16_next_sector
    @param sector

    @local sector_next

    ## detect if sector_next is still in this cluster
    addi @sector_next, @sector, 1
    @call mod, @sector_next, @FAT_SECTOR_PER_CLUSTER
    beq @retval, @zero, _fat16_next_sector_next_cluster
    move(@retval, @sector_next)
    @return

_fat16_next_sector_next_cluster:
    ## if not, call next_cluster
    @call div, @sector, @FAT_SECTOR_PER_CLUSTER
    @call _fat16_next_cluster, @retval
    @call mul, @retval, @FAT_SECTOR_PER_CLUSTER
@enddef

## get sector in file by index
@def _fat16_sector_in_file
    @param fp
    @param index

    @local cluster
    @local ti

    move(@ti, @index)

    ## calculate first cluster
    lw @file_sector, FILE_SECTOR_D(@fp)
    @call div, @file_sector, @FAT_SECTOR_PER_CLUSTER
    move(@cluster, @retval)

_fat16_sector_in_file_loop_begin:
    ## loop to find that cluster
    slt @compare_result, @ti, @FAT_SECTOR_PER_CLUSTER
    bne @compare_result, @zero, _fat16_sector_in_file_find_cluster
    @call _fat16_next_cluster, @cluster
    move(@cluster, @retval)
    sub @ti, @ti, @FAT_SECTOR_PER_CLUSTER
    j _fat16_sector_in_file_loop_begin

_fat16_sector_in_file_find_cluster:
    ## locate the sector
    @call mul, @cluster, @FAT_SECTOR_PER_CLUSTER
    add @retval, @retval, @ti
@enddef

## get next cluster
@def _fat16_next_cluster
    @param cluster

    ## lookup FAT
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

    ## read that sector into a buffer
    @call malloc, @DRIVER_BLOCK_SIZE
    move(@sector_buffer, @retval)
    @call read_block, @sector, @sector_buffer

    ## copy requested part into caller's buffer
    add @begin, @sector_buffer, @offset
    @call memcpy, @ptr, @begin, @length
@enddef
