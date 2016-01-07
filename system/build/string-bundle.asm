# 1 "string.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "string.asm"
# 1 "macros.asm" 1
# 2 "string.asm" 2

.global memset
memset:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    addi $t1, $a1, 0
    lw $a2, 16($fp)
    addi $t2, $a2, 0

    beq $t2, $zero, _memset_end

    addi $t3, $t2, 7
    srl $t3, $t3, 3
    andi $t4, $t2, 7

    sll $t4, $t4, 2
    addi $t4, $t4, _memset_jump_list
    add $t4, $t4, $gp
    lw $t4, 0($t4)
    jr $t4

_memset_jump_list:
    dd _memset_case_0
    dd _memset_case_1
    dd _memset_case_2
    dd _memset_case_3
    dd _memset_case_4
    dd _memset_case_5
    dd _memset_case_6
    dd _memset_case_7

_memset_case_0:
_memset_loop_begin:
    sb $t1, 0($t0)
    addi $t0, $t0, 1
_memset_case_7:
    sb $t1, 0($t0)
    addi $t0, $t0, 1
_memset_case_6:
    sb $t1, 0($t0)
    addi $t0, $t0, 1
_memset_case_5:
    sb $t1, 0($t0)
    addi $t0, $t0, 1
_memset_case_4:
    sb $t1, 0($t0)
    addi $t0, $t0, 1
_memset_case_3:
    sb $t1, 0($t0)
    addi $t0, $t0, 1
_memset_case_2:
    sb $t1, 0($t0)
    addi $t0, $t0, 1
_memset_case_1:
    sb $t1, 0($t0)
    addi $t0, $t0, 1

    addi $t3, $t3, -1
    bne $t3, $zero, _memset_loop_begin


_memset_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global memcpy
memcpy:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    addi $t1, $a1, 0
    lw $a2, 16($fp)
    addi $t2, $a2, 0

    beq $t2, $zero, _memcpy_end

    addi $t3, $t2, 7
    srl $t3, $t3, 3
    andi $t4, $t2, 7 # $t2 % 8

    sll $t4, $t4, 2
    addi $t4, $t4, _memcpy_jump_list
    add $t4, $t4, $gp
    lw $t4, 0($t4)
    jr $t4

_memcpy_jump_list:
    dd _memcpy_case_0
    dd _memcpy_case_1
    dd _memcpy_case_2
    dd _memcpy_case_3
    dd _memcpy_case_4
    dd _memcpy_case_5
    dd _memcpy_case_6
    dd _memcpy_case_7

_memcpy_case_0:
_memcpy_loop_begin:
    lb $t5, 0($t1)
    sb $t5, 0($t0)
    addi $t1, $t1, 1
    addi $t0, $t0, 1
_memcpy_case_7:
    lb $t5, 0($t1)
    sb $t5, 0($t0)
    addi $t1, $t1, 1
    addi $t0, $t0, 1
_memcpy_case_6:
    lb $t5, 0($t1)
    sb $t5, 0($t0)
    addi $t1, $t1, 1
    addi $t0, $t0, 1
_memcpy_case_5:
    lb $t5, 0($t1)
    sb $t5, 0($t0)
    addi $t1, $t1, 1
    addi $t0, $t0, 1
_memcpy_case_4:
    lb $t5, 0($t1)
    sb $t5, 0($t0)
    addi $t1, $t1, 1
    addi $t0, $t0, 1
_memcpy_case_3:
    lb $t5, 0($t1)
    sb $t5, 0($t0)
    addi $t1, $t1, 1
    addi $t0, $t0, 1
_memcpy_case_2:
    lb $t5, 0($t1)
    sb $t5, 0($t0)
    addi $t1, $t1, 1
    addi $t0, $t0, 1
_memcpy_case_1:
    lb $t5, 0($t1)
    sb $t5, 0($t0)
    addi $t1, $t1, 1
    addi $t0, $t0, 1

    addi $t3, $t3, -1
    bne $t3, $zero, _memcpy_loop_begin

_memcpy_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global memmove
memmove:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)


    lw $a2, 16($fp)
    addi $sp, $sp, -4
    sw $a2, 0($sp)
    jal malloc
    addi $sp, $sp, 4
    addi $s0, $v0, 0

    lw $a2, 16($fp)
    addi $sp, $sp, -4
    sw $a2, 0($sp)
    lw $a1, 12($fp)
    addi $sp, $sp, -4
    sw $a1, 0($sp)
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal memcpy
    addi $sp, $sp, 12
    lw $a2, 16($fp)
    addi $sp, $sp, -4
    sw $a2, 0($sp)
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    lw $a0, 8($fp)
    addi $sp, $sp, -4
    sw $a0, 0($sp)
    jal memcpy
    addi $sp, $sp, 12
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal free
    addi $sp, $sp, 4

_memmove_end:
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global strchr
strchr:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $v0, $a0, 0
    lw $a1, 12($fp)
    addi $t0, $a1, 0
_strchr_loop_begin:
    lb $t1, 0($v0)
    beq $t0, $t1, _strchr_end
    beq $zero, $t1, _strchr_end
    addi $v0, $v0, 1
    j _strchr_loop_begin

_strchr_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global strnchr
strnchr:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $v0, $a0, 0
    lw $a1, 12($fp)
    addi $t0, $a1, 0
    lw $a2, 16($fp)
    addi $t1, $a2, 0
    beq $t1, $zero, _strnchr_end
_strnchr_loop_begin:
    lb $t2, 0($v0)
    beq $t0, $t2, _strnchr_end
    beq $zero, $t2, _strnchr_end
    addi $v0, $v0, 1
    addi $t1, $t1, -1
    bne $t1, $zero, _strnchr_loop_begin

_strnchr_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global strncmp
strncmp:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    addi $t1, $a1, 0
    lw $a2, 16($fp)
    addi $t2, $a2, 0
    addi $v0, $zero, 0
_strncmp_loop_begin:
    beq $t2, $zero, _strncmp_end
    addi $t2, $t2, -1
    lb $t3, 0($t0)
    lb $t4, 0($t1)
    or $v0, $t3, $t4
    beq $v0, $zero, _strncmp_end

    sub $v0, $t3, $t4
    bne $v0, $zero, _strncmp_end

    addi $t0, $t0, 1
    addi $t1, $t1, 1
    j _strncmp_loop_begin

_strncmp_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global strcmp
strcmp:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    addi $t1, $a1, 0
_strcmp_loop_begin:
    lb $t2, 0($t0)
    lb $t3, 0($t1)
    or $v0, $t2, $t3
    beq $v0, $zero, _strcmp_end

    sub $v0, $t2, $t3
    bne $v0, $zero, _strcmp_end

    addi $t0, $t0, 1
    addi $t1, $t1, 1

    j _strcmp_loop_begin

_strcmp_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global strlen
strlen:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $t0, $a0, 0
    addi $v0, $zero, 0
_strlen_loop_begin:
    lb $t1, 0($t0)
    beq $t1, $zero, _strlen_end

    addi $v0, $v0, 1
    addi $t0, $t0, 1
    j _strlen_loop_begin

_strlen_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global strcpy
strcpy:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a1, 12($fp)
    addi $t0, $a1, 0
    lw $a0, 8($fp)
    addi $t1, $a0, 0

_strcpy_loop_begin:
    lb $t2, 0($t0)
    sb $t2, 0($t1)
    addi $t0, $t0, 1
    addi $t1, $t1, 1
    bne $t2, $zero, _strcpy_loop_begin

_strcpy_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global strncpy
strncpy:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a1, 12($fp)
    addi $t0, $a1, 0
    lw $a0, 8($fp)
    addi $t1, $a0, 0
    lw $a2, 16($fp)
    addi $t2, $a2, 0

    j _strncpy_loop_cmp
_strncpy_loop_begin:
    lb $t3, 0($t0)
    sb $t3, 0($t1)
    addi $t0, $t0, 1
    addi $t1, $t1, 1
    addi $t2, $t2, -1
    beq $t3, $zero, _strncpy_end
_strncpy_loop_cmp:
    bne $t2, $zero, _strncpy_loop_begin
    sb $zero, 0($t1)

_strncpy_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global strnuppercase
strnuppercase:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    addi $sp, $sp, -4
    sw $s2, 0($sp)


    lw $a0, 8($fp)
    addi $s0, $a0, 0
    lw $a1, 12($fp)
    addi $s1, $a1, 0
    lw $a2, 16($fp)
    addi $s2, $a2, 0
    beq $s2, $zero, _strnuppercase_end
_strnuppercase_loop_begin:
    lb $t0, 0($s1)
    beq $t0, $zero, _strnuppercase_end
    addi $sp, $sp, -4
    sw $t0, 0($sp)
    jal uppercase
    addi $sp, $sp, 4
    sb $v0, 0($s0)
    addi $s1, $s1, 1
    addi $s0, $s0, 1
    addi $s2, $s2, -1
    bne $s2, $zero, _strnuppercase_loop_begin

_strnuppercase_end:
    lw $s2, 0($sp)
    addi $sp, $sp, 4
    lw $s1, 0($sp)
    addi $sp, $sp, 4
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global LOWER_A
LOWER_A:
    dd 'a'

.global LOWER_Z
LOWER_Z:
    dd 'z'

.global uppercase
uppercase:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    lw $at, LOWER_A($gp)
    slt $t0, $a0, $at
    bne $t0, $zero, _uppercase_not_changed
    lw $at, LOWER_Z($gp)
    lw $a0, 8($fp)
    slt $t0, $at, $a0
    bne $t0, $zero, _uppercase_not_changed

    lw $a0, 8($fp)
    addi $v0, $a0, -32
    j _uppercase_end
_uppercase_not_changed:
    lw $a0, 8($fp)
    addi $v0, $a0, 0

_uppercase_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global UPPER_A
UPPER_A:
    dd 'A'

.global UPPER_Z
UPPER_Z:
    dd 'Z'

.global lowercase
lowercase:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    lw $at, UPPER_A($gp)
    slt $t0, $a0, $at
    bne $t0, $zero, _lowercase_not_changed
    lw $at, UPPER_Z($gp)
    lw $a0, 8($fp)
    slt $t0, $at, $a0
    bne $t0, $zero, _lowercase_not_changed

    lw $a0, 8($fp)
    addi $v0, $a0, 32
    j _lowercase_end
_lowercase_not_changed:
    lw $a0, 8($fp)
    addi $v0, $a0, 0

_lowercase_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra



