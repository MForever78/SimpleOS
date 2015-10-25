#include "driver.asm"

@global FAT_BOOT_RECORD
    dd 0

@global FAT_SECTOR_PER_CLUSTER
    dd 0

@global FAT_START_OF_FAT
    dd 0

@global FAT_START_OF_ROOT
    dd 0

@def fat16_init
    @call malloc, @DRIVER_BLOCK_SIZE
    sw @retval, @&FAT_BOOT_RECORD
    @call read_block, @zero, @FAT_BOOT_RECORD

    move(@base_addr, @FAT_BOOT_RECORD)
    
    @call _fat16_load_fat, @base_addr
@enddef

@def _fat16_load_fat
    @param base_addr

    lh @reserved_sectors, 14(@base_addr)
    lh @sectors_per_fat, 22(@base_addr)

    sll @fat_size, @sectors_per_fat, 9  # mul sectors_per_fat by 512
    @call malloc, @fat_size
    sw @retval, @&FAT_START_OF_FAT

    @call read_blocks, @reserved_sectors, @sectors_per_fat, @FAT_START_OF_FAT
@enddef
