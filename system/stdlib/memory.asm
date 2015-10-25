
@global _malloc_memory_pool_start
    dd 0x00100000   ## 1MB

@global _malloc_linked_list_start
    dd 0            ## un-initialized

@global MALLOC_HEADER_FLAGS
    dd 0xF0000000

@global MALLOC_LAST_FLAG
    dd 0x10000000

@global MALLOC_LAST_FLAG_NEG
    dd 0xEFFFFFFF

@global MALLOC_USED_FLAG
    dd 0x20000000

@global MALLOC_USED_FLAG_NEG
    dd 0xDFFFFFFF

@global MALLOC_LENGTH_MASK
    dd 0x0FFFFFFF

@global MALLOC_SIZE_LAST_2
    dd 0x00000003

@global MALLOC_SIZE_LAST_2_NEG
    dd 0xFFFFFFFC

@def malloc
    @param size
    @local current_ptr

    ## make size % 4 == 0
    @call _malloc_normalize_size @size
    sw @retval, @&size

    ## initialize linked list if havent
    bne @zero, @_malloc_linked_list_start, _malloc_initialized
    @call malloc_init

    ## loop started
_malloc_initialized:
    move(@current_ptr, @_malloc_linked_list_start)

_malloc_loop_start:
    ## check if this block is free
    lw @current_header, -4(@current_ptr)
    and @compare_result, @current_header, @MALLOC_USED_FLAG
    beq @zero, @compare_result, _malloc_free_found
    and @current_length, @current_header, @MALLOC_LENGTH_MASK   # prevent double calculate in free_found
    j _malloc_continue

_malloc_free_found:
    ## check if size is big enough
    and @current_length, @current_header, @MALLOC_LENGTH_MASK
    slt @compare_result, @current_length, @size
    beq @zero, @compare_result, _malloc_block_found

_malloc_not_enough_space_continue:
    ## test if next block is also free
    add @next_ptr, @current_ptr, @current_length
    addi @next_ptr, @next_ptr, 4
    lw @next_header, -4(@next_ptr)
    and @compare_result, @next_header, @MALLOC_USED_FLAG
    ## if so, combine the two block
    beq @zero, @compare_result, _malloc_combine_block
    move(@current_ptr, @next_ptr)
    j _malloc_loop_start

_malloc_continue:
    add @next_ptr, @current_ptr, @current_length
    addi @current_ptr, @next_ptr, 4
    j _malloc_loop_start

_malloc_combine_block:
    and @current_length, @current_header, @MALLOC_LENGTH_MASK
    add @next_header, @next_header, @current_length
    addi @next_header, @next_header, 4
    sw @next_header, -4(@current_ptr)
    j _malloc_loop_start

_malloc_block_found:
    ## test if space enough for next block
    sub @compare_result, @current_length, @size
    slti @compare_result, @compare_result, 8
    bne @compare_result, @zero, _malloc_block_size_fit

    ## if so, split block
    add @next_ptr, @current_ptr, @size
    addi @next_ptr, @next_ptr, 4
    move(@next_header, @current_header)
    sub @next_header, @next_header, @size
    addi @next_header, @next_header, -4
    sw @next_header, -4(@next_ptr)

    ## modify current length & set the header not last
    and @current_header, @current_header, @MALLOC_HEADER_FLAGS
    and @current_header, @current_header, @MALLOC_LAST_FLAG_NEG
    or @current_header, @current_header, @size

_malloc_block_size_fit:
    ## mark the block not free
    or @current_header, @current_header, @MALLOC_USED_FLAG
    sw @current_header, -4(@current_ptr)
    move(@retval, @current_ptr)
@enddef # malloc

@def calloc
    @param num
    @param size

    @call mul @num @size
    @call malloc @retval
@enddef # calloc

@def free
    @param pointer

    lw @current_header, -4(@pointer)
    and @current_header, @current_header, @MALLOC_USED_FLAG_NEG
    sw @current_header, -4(@pointer)
@enddef # free

## no param
@def malloc_init
    ## initialize linked list
    addi @pool_start, @_malloc_memory_pool_start, 4
    sw @pool_start, @&_malloc_linked_list_start

    ## initialize first free block
    lli(@linked_list_header, 0x10A0,0x0000)
    sw @linked_list_header, -4(@pool_start)
@enddef

@def _malloc_normalize_size
    @param size
    
    and @size_end_2_bits, @size, @MALLOC_SIZE_LAST_2
    beq @size_end_2_bits, @zero, __malloc_normalize_size_not_adjusted
    and @size_front_30_bits, @size, @MALLOC_SIZE_LAST_2_NEG
    addi @retval, @size_front_30_bits, 4
    @return
__malloc_normalize_size_not_adjusted:
    move(@retval, @size)
@enddef

@def load_half_unaligned
    @param addr

    lb @lower, 0(@addr)
    lb @upper, 1(@addr)
    sll @retval, @upper, 8
    or @retval, @retval, @lower
@enddef

@def load_dword_unaligned
    @param addr
    lb @b0, 0(@addr)
    lb @b1, 1(@addr)
    lb @b2, 2(@addr)
    lb @b3, 3(@addr)

    sll @b1, @b1, 8
    sll @b2, @b2, 16
    sll @b3, @b3, 24

    move(@retval, @b0)
    or @retval, @retval, @b1
    or @retval, @retval, @b2
    or @retval, @retval, @b3
@enddef
