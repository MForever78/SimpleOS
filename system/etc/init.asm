## initialize point, which initialize all this system
_init:
    li($sp, STACK_SIZE)     # init the stack

    @call main
__forever:
    j __forever

## main function, a shell to be done
@def main
@enddef
