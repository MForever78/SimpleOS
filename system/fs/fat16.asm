
@global BLOCK_SIZE
    dd 512

@global BOOT_RECORD
    dd 0

@def fat16_init
    @call malloc, @BLOCK_SIZE
    sw @retval, @&BOOT_RECORD
    @call fat16_read_block, @zero
@enddef

@global DISK_MEMORY_OFFSET
    dd 0x08000000   # 128MB

@def fat16_read_block
    @param index
    @param ptr

    ## now on the simulator
    sll @src, @index, 9 # mul index by 512
    add @src, @src, @DISK_MEMORY_OFFSET
    @call memcpy, @ptr, @src, @BLOCK_SIZE
@enddef

@def fat16_write_block
    @param index
    @param ptr

    sll @dst, @index, 9 # mul index by 512
    add @dst, @dst, @DISK_MEMORY_OFFSET
    @call memcpy, @dst, @ptr, @BLOCK_SIZE
@enddef

