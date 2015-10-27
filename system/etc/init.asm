## initialize point, which initialize all this system
_init:
    lli($sp, STACK_SIZE_UPPER, STACK_SIZE_LOWER)     # init the stack

    @call driver_init
    @call fat16_init

    @call main
__forever:
    j __forever

@global TEST_PATH
    string "/testdir/test.txt"

## main function, a shell to be done
@def main
    la(@path, TEST_PATH)
    @call fat16_open_file, @path
@enddef
