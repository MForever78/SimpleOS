#include "macros.asm"

@global STACK_TOP
    dd 0x00010000

@def breakpoint
    lui $t0, 0x2000
    addi $t1, $zero, 0x3FFF
    sw $t1, 512($t0)
@enddef

## initialize point, which initialize all this system
_init:
    addi $gp, $zero, 0
    mtco $zero, CP0_STATUS  ## disable all interrupt
    move($sp, @STACK_TOP)

    @call breakpoint

    @call malloc_init
    @call breakpoint

    @call driver_init
    @call breakpoint

    @call keyboard_init
    @call breakpoint

    @call fat16_init
    @call breakpoint

    @call console_init
    @call breakpoint

    @call io_init
    @call breakpoint
 
    @call env_init
    @call breakpoint

    addi $t0, $zero, 0x7FFF
    mtco $t0, CP0_STATUS

    @call shell
__forever:
    j __forever

.global _init
