#include "macros.asm"

@global STACK_TOP
    dd 0x00010000

## initialize point, which initialize all this system
_init:
    addi $gp, $zero, 0
    mtco $zero, CP0_STATUS  ## disable all interrupt
    move($sp, @STACK_TOP)

    @call malloc_init
    @call driver_init
    @call keyboard_init
    @call fat16_init
    @call console_init
    @call io_init
    @call env_init

    addi $t0, $zero, 0x7FFF
    mtco $t0, CP0_STATUS

    @call shell
__forever:
    j __forever

.global _init
