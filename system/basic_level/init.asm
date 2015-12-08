#include "macros.asm"

@global STACK_TOP
    dd 0x00100000

## initialize point, which initialize all this system
_init:
    move($sp, @STACK_TOP)

    @call driver_init
    @call fat16_init
    @call console_init

    @call main
__forever:
    j __forever

.global _init

.extern fat16_open_file

@global PATH
    string "/testdir/test.txt"

## main function, a shell to be done
@def main
    @local path
    la(@path, PATH)

    @call disp_draw_line_unsafe, 10, 10, 10, 15
@enddef
