_printf_ref:

_convert_int:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  __convert_int_start
__convert_int_ref_pos:
__convert_int_module_ref:
    dd   _printf_ref

__convert_int_start:
    addi $sp, $sp, -12
## line 8
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, __convert_int_1459912860
## line 9
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    sb   $v0, 0($t0)
## line 10
    lw   $v0, 8($fp)
    j    __convert_int_end
__convert_int_1459912860:
## line 12
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $t0, $v0
    beq  $v0, $zero, __convert_int_1459913036
## line 13
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    addi $v0, $zero, 45
    sb   $v0, 0($t0)
## line 14
    addi $t0, $fp, 12
    addi $t1, $zero, 0
    lw   $v0, 12($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
__convert_int_1459913036:
## line 17
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    sw   $v0, 0($t0)
## line 18
__convert_int_1459913084:
    lw   $v0, 12($fp)
    beq  $v0, $zero, __convert_int_1459913280
## line 19
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    addi $t1, $zero, 48
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    addi $v0, $zero, 10
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t3, $v0, 0
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t1, 8($sp)
    sw   $t3, 4($sp)
    sw   $t2, 0($sp)
    jal  mod
    lw   $t0, 12($sp)
    lw   $t1, 8($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
## line 20
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    addi $v0, $zero, 10
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  div
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, __convert_int_1459913084
__convert_int_1459913280:
## line 23
    addi $t0, $fp, -8
    lw   $v0, 8($fp)
    sw   $v0, 0($t0)
## line 25
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 26
__convert_int_1459913372:
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, __convert_int_1459913636
## line 27
    addi $t0, $fp, -12
    lw   $v0, -4($fp)
    lb   $v0, 0($v0)
    sb   $v0, 0($t0)
## line 28
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    sb   $v0, 0($t0)
## line 29
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lb   $v0, -12($fp)
    sb   $v0, 0($t0)
## line 31
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 31
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    beq  $zero, $zero, __convert_int_1459913372
__convert_int_1459913636:
## line 34
    lw   $v0, -8($fp)

__convert_int_end:
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global _convert_int

_convert_hex:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  __convert_hex_start
__convert_hex_ref_pos:
__convert_hex_module_ref:
    dd   _printf_ref

__convert_hex_start:
    addi $sp, $sp, -4
## line 41
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 8
    sw   $v0, 0($t0)
## line 43
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    addi $t1, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t1
    beq  $v0, $zero, __convert_hex_1459913884
    addi $t1, $zero, 65
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -10
    beq  $zero, $zero, __convert_hex_1459913932
__convert_hex_1459913884:
    addi $t1, $zero, 48
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
__convert_hex_1459913932:
    sb   $v0, 0($t0)
## line 44
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 46
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    addi $t1, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t1
    beq  $v0, $zero, __convert_hex_1459914160
    addi $t1, $zero, 65
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -10
    beq  $zero, $zero, __convert_hex_1459914208
__convert_hex_1459914160:
    addi $t1, $zero, 48
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
__convert_hex_1459914208:
    sb   $v0, 0($t0)
## line 47
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 49
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    addi $t1, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t1
    beq  $v0, $zero, __convert_hex_1459914436
    addi $t1, $zero, 65
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -10
    beq  $zero, $zero, __convert_hex_1459914484
__convert_hex_1459914436:
    addi $t1, $zero, 48
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
__convert_hex_1459914484:
    sb   $v0, 0($t0)
## line 50
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 52
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    addi $t1, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t1
    beq  $v0, $zero, __convert_hex_1459914712
    addi $t1, $zero, 65
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -10
    beq  $zero, $zero, __convert_hex_1459914760
__convert_hex_1459914712:
    addi $t1, $zero, 48
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
__convert_hex_1459914760:
    sb   $v0, 0($t0)
## line 53
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 55
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    addi $t1, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t1
    beq  $v0, $zero, __convert_hex_1459914988
    addi $t1, $zero, 65
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -10
    beq  $zero, $zero, __convert_hex_1459915036
__convert_hex_1459914988:
    addi $t1, $zero, 48
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
__convert_hex_1459915036:
    sb   $v0, 0($t0)
## line 56
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 58
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    addi $t1, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t1
    beq  $v0, $zero, __convert_hex_1459915264
    addi $t1, $zero, 65
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -10
    beq  $zero, $zero, __convert_hex_1459915312
__convert_hex_1459915264:
    addi $t1, $zero, 48
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
__convert_hex_1459915312:
    sb   $v0, 0($t0)
## line 59
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 61
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    addi $t1, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t1
    beq  $v0, $zero, __convert_hex_1459915540
    addi $t1, $zero, 65
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -10
    beq  $zero, $zero, __convert_hex_1459915588
__convert_hex_1459915540:
    addi $t1, $zero, 48
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
__convert_hex_1459915588:
    sb   $v0, 0($t0)
## line 62
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 64
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    addi $t1, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t1
    beq  $v0, $zero, __convert_hex_1459915816
    addi $t1, $zero, 65
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -10
    beq  $zero, $zero, __convert_hex_1459915864
__convert_hex_1459915816:
    addi $t1, $zero, 48
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
__convert_hex_1459915864:
    sb   $v0, 0($t0)
## line 65
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 67
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 8

__convert_hex_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global _convert_hex

sprintf:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _sprintf_start
_sprintf_ref_pos:
_sprintf_module_ref:
    dd   _printf_ref

_sprintf_start:
    addi $sp, $sp, -16
## line 77
    addi $t0, $fp, -8
    lw   $v0, 8($fp)
    sw   $v0, 0($t0)
## line 78
    addi $t0, $fp, -12
    lw   $v0, 12($fp)
    sw   $v0, 0($t0)
## line 79
    addi $t0, $fp, -4
    addi $v0, $fp, 12
    sw   $v0, 0($t0)
## line 80
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 81
    addi $t0, $fp, -16
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 83
_sprintf_1459916152:
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _sprintf_1459917968
## line 84
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 37
    bne  $v0, $t0, _sprintf_1459917828
## line 85
    addi $t0, $fp, -16
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 86
    addi $t0, $fp, -12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 87
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 100
    bne  $v0, $t0, _sprintf_1459916484
## line 88
    addi $t0, $fp, -8
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $t2, $fp, -4
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 4
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -4
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  _convert_int
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _sprintf_1459917756
_sprintf_1459916484:
## line 90
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 120
    bne  $v0, $t0, _sprintf_1459916656
## line 91
    addi $t0, $fp, -8
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $t2, $fp, -4
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 4
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -4
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  _convert_hex
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _sprintf_1459917752
_sprintf_1459916656:
## line 93
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 99
    bne  $v0, $t0, _sprintf_1459916840
## line 94
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    addi $t1, $fp, -4
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -4
    lw   $v0, 0($v0)
    sb   $v0, 0($t0)
    beq  $zero, $zero, _sprintf_1459917748
_sprintf_1459916840:
## line 96
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 115
    bne  $v0, $t0, _sprintf_1459917072
## line 97
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 98
    addi $t0, $fp, -8
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $t2, $fp, -4
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 4
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -4
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t1, 4($sp)
    sw   $t2, 0($sp)
    jal  strlen
    lw   $t0, 8($sp)
    lw   $t1, 4($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _sprintf_1459917744
_sprintf_1459917072:
## line 100
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 46
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _sprintf_1459917200
    and  $v0, $t0, $v0
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 42
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_sprintf_1459917200:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _sprintf_1459917276
    and  $v0, $t0, $v0
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 2
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 115
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_sprintf_1459917276:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _sprintf_1459917652
## line 101
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strncpy
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 102
    addi $t0, $fp, -8
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 103
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 104
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 2
    sw   $v0, 0($t0)
    beq  $zero, $zero, _sprintf_1459917740
_sprintf_1459917652:
## line 107
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    sb   $v0, 0($t0)
_sprintf_1459917740:
_sprintf_1459917744:
_sprintf_1459917748:
_sprintf_1459917752:
_sprintf_1459917756:
## line 109
    addi $t0, $fp, -12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    beq  $zero, $zero, _sprintf_1459917956
_sprintf_1459917828:
## line 112
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    addi $t1, $fp, -12
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    lb   $v0, 0($v0)
    sb   $v0, 0($t0)
_sprintf_1459917956:
    beq  $zero, $zero, _sprintf_1459916152
_sprintf_1459917968:
## line 115
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 116
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    sub  $v0, $t0, $v0

_sprintf_end:
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global sprintf

printf:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _printf_start
_printf_ref_pos:
_printf_module_ref:
    dd   _printf_ref

_printf_start:
    addi $sp, $sp, -20
## line 127
    addi $t0, $fp, -8
    addi $t1, $zero, 256
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  malloc
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 128
    addi $t0, $fp, -12
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
## line 129
    addi $t0, $fp, -16
    lw   $v0, 8($fp)
    sw   $v0, 0($t0)
## line 130
    addi $t0, $fp, -4
    addi $v0, $fp, 8
    sw   $v0, 0($t0)
## line 131
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 132
    addi $t0, $fp, -20
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 134
_printf_1459918288:
    lw   $v0, -16($fp)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _printf_1459920104
## line 135
    lw   $v0, -16($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 37
    bne  $v0, $t0, _printf_1459919964
## line 136
    addi $t0, $fp, -20
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 137
    addi $t0, $fp, -16
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 138
    lw   $v0, -16($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 100
    bne  $v0, $t0, _printf_1459918620
## line 139
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $fp, -4
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 4
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -4
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  _convert_int
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _printf_1459919892
_printf_1459918620:
## line 141
    lw   $v0, -16($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 120
    bne  $v0, $t0, _printf_1459918792
## line 142
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $fp, -4
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 4
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -4
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  _convert_hex
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _printf_1459919888
_printf_1459918792:
## line 144
    lw   $v0, -16($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 99
    bne  $v0, $t0, _printf_1459918976
## line 145
    addi $t0, $fp, -12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    addi $t1, $fp, -4
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -4
    lw   $v0, 0($v0)
    sb   $v0, 0($t0)
    beq  $zero, $zero, _printf_1459919884
_printf_1459918976:
## line 147
    lw   $v0, -16($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 115
    bne  $v0, $t0, _printf_1459919208
## line 148
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 149
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $fp, -4
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 4
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -4
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t1, 4($sp)
    sw   $t2, 0($sp)
    jal  strlen
    lw   $t0, 8($sp)
    lw   $t1, 4($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _printf_1459919880
_printf_1459919208:
## line 151
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 46
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _printf_1459919336
    and  $v0, $t0, $v0
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 42
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_printf_1459919336:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _printf_1459919412
    and  $v0, $t0, $v0
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 2
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 115
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_printf_1459919412:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _printf_1459919788
## line 152
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strncpy
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 153
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 154
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 155
    addi $t0, $fp, -16
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 2
    sw   $v0, 0($t0)
    beq  $zero, $zero, _printf_1459919876
_printf_1459919788:
## line 158
    addi $t0, $fp, -12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    lw   $v0, -16($fp)
    lb   $v0, 0($v0)
    sb   $v0, 0($t0)
_printf_1459919876:
_printf_1459919880:
_printf_1459919884:
_printf_1459919888:
_printf_1459919892:
## line 160
    addi $t0, $fp, -16
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    beq  $zero, $zero, _printf_1459920092
_printf_1459919964:
## line 163
    addi $t0, $fp, -12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    addi $t1, $fp, -16
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    lb   $v0, 0($v0)
    sb   $v0, 0($t0)
_printf_1459920092:
    beq  $zero, $zero, _printf_1459918288
_printf_1459920104:
## line 166
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 167
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    sub  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 168
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 170
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    sub  $v0, $t0, $v0

_printf_end:
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global printf
