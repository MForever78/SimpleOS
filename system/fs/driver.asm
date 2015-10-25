
@global DRIVER_BLOCK_SIZE
    dd 512

@global DRIVER_SECTOR_START
    dd 0

@global DRIVER_SECTOR_COUNT
    dd 0

@def driver_init
    @call malloc, @DRIVER_BLOCK_SIZE
    move(@mbr, @retval)

    @call _driver_read_block, @zero, @mbr

    lh @low_half, 454(@mbr)
    lh @high_half, 456(@mbr)
    sll @sector_start, @high_half, 16
    or @sector_start, @sector_start, @low_half
    sw @sector_start, @&DRIVER_SECTOR_START

    lh @low_half, 458(@mbr)
    lh @high_half, 460(@mbr)
    sll @sector_count, @high_half, 16
    or @sector_count, @sector_count, @low_half
    sw @sector_count, @&DRIVER_SECTOR_COUNT

    @call free, @mbr
@enddef

@def read_blocks
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
    @call _driver_read_block, @ts, @tp
    addi @tc, @tc, -1
    beq @tc, @zero, _read_blocks_end

    addi @ts, @ts, 1
    addi @tp, @tp, @DRIVER_BLOCK_SIZE
    
    j _read_blocks_loop_start
@enddef

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
    addi @tp, @tp, @DRIVER_BLOCK_SIZE
    
    j _read_blocks_loop_start
@enddef

@def read_block
    @param index
    @param ptr

    li(@one, 1)
    @call read_blocks, @index, @one, @ptr
@enddef

@def write_block
    @param index
    @param ptr

    li(@one, 1)
    @call write_blocks, @index, @one, @ptr
@enddef

@def _driver_calc_offset
    @param index

    @call mod, @index, @DRIVER_SECTOR_COUNT
    addi @retval, @index, @DRIVER_SECTOR_START
@enddef

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
