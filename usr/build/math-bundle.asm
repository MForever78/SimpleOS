# 1 "../../system/basic_level/math.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "../../system/basic_level/math.asm"
# 1 "../../system/basic_level/macros.asm" 1
# 2 "../../system/basic_level/math.asm" 2

.global mul
mul:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    slt $t1, $t0, $a1
    beq $t1, $zero, _mul_after_swap
    lw $a1, 12($fp)
    sw $a1, 8($fp)
    sw $t0, 12($fp)
_mul_after_swap:
    addi $v0, $zero, 0
    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    addi $t2, $a1, 0

    slt $t1, $t2, $zero
    beq $t1, $zero, _mul_loop_start

    sub $t2, $zero, $t2
    addi $sp, $sp, -4
    sw $t2, 0($sp)
    addi $sp, $sp, -4
    sw $t0, 0($sp)
    jal mul
    addi $sp, $sp, 8
    sub $v0, $zero, $v0
    j _mul_end

_mul_loop_start:
    beq $t2, $zero, _mul_end
    add $v0, $v0, $t0
    addi $t2, $t2, -1
    j _mul_loop_start

_mul_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global mod
mod:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $v0, $a0, 0
    lw $a1, 12($fp)
    addi $t0, $a1, 0
    lw $a1, 12($fp)
    addi $t1, $a1, 0

    j _mod_adjust_loop_cmp
_mod_adjust_loop_begin:
    sll $t0, $t0, 1
_mod_adjust_loop_cmp:
    slt $t2, $v0, $t0
    beq $t2, $zero, _mod_adjust_loop_begin

    beq $t0, $t1, _mod_end

_mod_loop_begin:
    srl $t0, $t0, 1
    slt $t2, $v0, $t0
    bne $t2, $zero, _mod_dont_sub
    sub $v0, $v0, $t0
_mod_dont_sub:
    bne $t0, $t1, _mod_loop_begin

_mod_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global div
div:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    addi $v0, $zero, 0
    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    addi $t1, $a1, 0
    lw $a1, 12($fp)
    addi $t2, $a1, 0
    addi $t3, $zero, 1

    j _div_adjust_loop_cmp
_div_adjust_loop_begin:
    sll $t1, $t1, 1
    sll $t3, $t3, 1
_div_adjust_loop_cmp:
    slt $t4, $t0, $t1
    beq $t4, $zero, _div_adjust_loop_begin

    beq $t1, $t2, _div_end

_div_loop_begin:
    srl $t1, $t1, 1
    srl $t3, $t3, 1
    slt $t4, $t0, $t1
    bne $t4, $zero, _div_dont_sub
    sub $t0, $t0, $t1
    or $v0, $v0, $t3
_div_dont_sub:
    bne $t1, $t2, _div_loop_begin

_div_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global max
max:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    lw $a1, 12($fp)
    slt $t0, $a0, $a1
    beq $t0, $zero, _max_a_is_greater
    lw $a1, 12($fp)
    addi $v0, $a1, 0
    j _max_end
_max_a_is_greater:
    lw $a0, 8($fp)
    addi $v0, $a0, 0
    j _max_end

_max_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global min
min:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    lw $a1, 12($fp)
    slt $t0, $a0, $a1
    beq $t0, $zero, _min_a_is_greater
    lw $a0, 8($fp)
    addi $v0, $a0, 0
    j _min_end
_min_a_is_greater:
    lw $a1, 12($fp)
    addi $v0, $a1, 0

_min_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global subabs
subabs:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    lw $a1, 12($fp)
    slt $t0, $a0, $a1
    beq $t0, $zero, _subabs_a_is_greater
    lw $a1, 12($fp)
    lw $a0, 8($fp)
    sub $v0, $a1, $a0
    j _subabs_end

_subabs_a_is_greater:
    lw $a0, 8($fp)
    lw $a1, 12($fp)
    sub $v0, $a0, $a1

_subabs_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra



