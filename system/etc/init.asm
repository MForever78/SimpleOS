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
    @local path

    la(@path, TEST_PATH)
    @call fat16_open_file, @path
    @call fat16_write_file, @retval, 0, 10, @path
@enddef
