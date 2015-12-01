#include "macros.asm"

@global STACK_TOP
    dd 0x00100000

## initialize point, which initialize all this system
_init:
    move($sp, @STACK_TOP)

    @call driver_init
    @call fat16_init

    @call main
__forever:
    j __forever

.global _init

## main function, a shell to be done
@def main
@enddef
