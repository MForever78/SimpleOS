# 1 "exec.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "exec.asm"
# 1 "../../basic_level/macros.asm" 1
# 2 "exec.asm" 2

.global _actual_exec
_actual_exec:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $gp, $a0, 0
    lw $a0, 8($fp)
    jalr $a0, $ra
    addi $gp, $zero, 0

__actual_exec_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra



