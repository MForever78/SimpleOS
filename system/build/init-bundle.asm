# 1 "init.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "init.asm"
# 1 "macros.asm" 1
# 2 "init.asm" 2

.global STACK_TOP
STACK_TOP:
    dd 0x00010000

.global breakpoint
breakpoint:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    lui $t0, 0x2000
    addi $t1, $zero, 0x3FFF
    sw $t1, 512($t0)

_breakpoint_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


## initialize point, which initialize all this system
_init:
    addi $gp, $zero, 0
    mtco $zero, 1 ## disable all interrupt
    lw $at, STACK_TOP($gp)
    addi $sp, $at, 0

    jal breakpoint

    jal malloc_init
    jal breakpoint

    jal driver_init
    jal breakpoint

    jal keyboard_init
    jal breakpoint

    jal fat16_init
    jal breakpoint

    jal console_init
    jal breakpoint

    jal io_init
    jal breakpoint

    jal env_init
    jal breakpoint

    addi $t0, $zero, 0x7FFF
    mtco $t0, 1

    jal shell
__forever:
    j __forever

.global _init


