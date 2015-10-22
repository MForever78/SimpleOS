_init:
    li($sp, STACK_SIZE)     # init the stack

    @call main
__forever:
    j __forever

@def main
    @local size
    @local saved_ptr
    @local saved_ptr_2

    li(@size, 10)
    @call malloc @size

    @call malloc @size
    move(@saved_ptr, @retval)
    @call malloc @size
    move(@saved_ptr_2, @retval)
    @call malloc @size
    @call free @saved_ptr
    @call free @saved_ptr_2

    li(@size, 20)
    @call malloc @size
@enddef
