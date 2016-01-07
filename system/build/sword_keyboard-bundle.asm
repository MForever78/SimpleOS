# 1 "sword_keyboard.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "sword_keyboard.asm"
# 1 "../../basic_level/macros.asm" 1
# 2 "sword_keyboard.asm" 2

.global keyboard_int_handler
keyboard_int_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    lui $t0, 0x6000
    lw $t1, 0($t0)
    addi $sp, $sp, -4
    sw $t1, 0($sp)
    jal keyboard_queue_push
    addi $sp, $sp, 4

_keyboard_int_handler_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra



