## size of a block, which is used as sector size in FAT
@global DRIVER_BLOCK_SIZE
    dd 512

## index of start sector for the first primary partition
@global DRIVER_SECTOR_START
    dd 0

## number of sectors in the first primary partition
@global DRIVER_SECTOR_COUNT
    dd 0

## initialize the driver, should exec before fat16_init
@def driver_init
    @call malloc, @DRIVER_BLOCK_SIZE        # allocate buffer for MBR
    move(@mbr, @retval)

    @call _driver_read_block, @zero, @mbr   # read MBR to buffer

    addi @addr, @mbr, 454
    @call load_word_unalign, @addr
    sw @retval, @&DRIVER_SECTOR_START       # retrive & save SECTOR_START

    addi @addr, @mbr, 458
    @call load_word_unalign, @addr
    sw @retval, @&DRIVER_SECTOR_COUNT       # retrive & save SECTOR_COUNT

    @call free, @mbr                        # free buffer for MBR
@enddef

## read continuous blocks from driver
@def read_blocks
    @param start
    @param count
    @param ptr

    @local ts
    @local tp
    @local tc

    @call _driver_calc_offset, @start       # calculate the absolute index of blcok on the driver
                                            #   with the given logical index in the partition

    move(@ts, @retval)
    move(@tp, @ptr)

_read_blocks_loop_start:                    # loop to read all blocks
    @call _driver_read_block, @ts, @tp
    addi @tc, @tc, -1
    beq @tc, @zero, _read_blocks_end

    addi @ts, @ts, 1
    add @tp, @tp, @DRIVER_BLOCK_SIZE
    
    j _read_blocks_loop_start
@enddef

## write continuous blocks into driver
@def write_blocks
    @param start
    @param count
    @param ptr

    @local ts
    @local tp
    @local tc

    @call _driver_calc_offset, @start

    move(@ts, @retval)
    move(@tp, @ptr)

_read_blocks_loop_start:
    @call _driver_write_block, @ts, @tp
    addi @tc, @tc, -1
    beq @tc, @zero, _read_blocks_end

    addi @ts, @ts, 1
    add @tp, @tp, @DRIVER_BLOCK_SIZE
    
    j _read_blocks_loop_start
@enddef

## read a single block from driver
@def read_block
    @param index
    @param ptr

    li(@one, 1)
    @call read_blocks, @index, @one, @ptr
@enddef

## write a single block into driver
@def write_block
    @param index
    @param ptr

    li(@one, 1)
    @call write_blocks, @index, @one, @ptr
@enddef

## calculate absolute block index
@def _driver_calc_offset
    @param index

    @call mod, @index, @DRIVER_SECTOR_COUNT     # if index greater than bound, then loop back
    add @retval, @index, @DRIVER_SECTOR_START
@enddef

#########################################################################
## for debug, map the driver directly into memory
@global DISK_MEMORY_OFFSET
    dd 0x08000000   # 128MB

@def _driver_read_block
    @param index
    @param ptr

    ## now on the simulator
    sll @src, @index, 9 # mul index by 512
    add @src, @src, @DISK_MEMORY_OFFSET
    @call memcpy, @ptr, @src, @DRIVER_BLOCK_SIZE
@enddef

@def _driver_write_block
    @param index
    @param ptr

    sll @dst, @index, 9 # mul index by 512
    add @dst, @dst, @DISK_MEMORY_OFFSET
    @call memcpy, @dst, @ptr, @DRIVER_BLOCK_SIZE
@enddef
