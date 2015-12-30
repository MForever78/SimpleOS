_lk_ref:

main:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _main_start
_main_ref_pos:
_main_module_ref:
    dd   _lk_ref

_main_start:
    addi $sp, $sp, -96
## line 13
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 13
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 15
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 16
    addi $t0, $fp, -24
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 18
_main_1459912876:
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459912948
    and  $v0, $t0, $v0
    lw   $v0, 12($fp)
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 45
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459912948:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459914032
## line 19
    lw   $v0, 12($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 109
    bne  $v0, $t0, _main_1459913072
## line 19
    addi $t0, $fp, -8
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459913932
_main_1459913072:
## line 20
    lw   $v0, 12($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 111
    bne  $v0, $t0, _main_1459913352
## line 21
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459913276
## line 21
    addi $v0, $ra, s1486131208[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 21
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459913276:
## line 22
    addi $t0, $fp, -28
    addi $t1, $fp, 12
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459913928
_main_1459913352:
## line 24
    lw   $v0, 12($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 115
    bne  $v0, $t0, _main_1459913924
## line 25
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459913556
## line 25
    addi $v0, $ra, s1486131224[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 25
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459913556:
## line 26
    addi $t0, $fp, -36
    addi $t1, $fp, 12
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 27
_main_1459913632:
    lw   $v0, -36($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459913704
    and  $v0, $t0, $v0
    lw   $v0, -36($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459913704:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459913764
    and  $v0, $t0, $v0
    lw   $v0, -36($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459913764:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459913920
## line 28
    addi $t0, $fp, -24
    lw   $v0, -24($fp)
    addi $t1, $v0, 0
    addi $v0, $zero, 10
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  mul
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t1, $v0, 0
    addi $t2, $fp, -36
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    lb   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, -48
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459913632
_main_1459913920:
_main_1459913924:
_main_1459913928:
_main_1459913932:
## line 31
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 31
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459912876
_main_1459914032:
## line 34
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459914144
## line 34
    addi $v0, $ra, s1486131236[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 34
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459914144:
## line 36
    addi $t0, $fp, -4
    addi $t1, $zero, 256
    addi $v0, $zero, 1024
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  mul
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 37
    addi $t0, $fp, -48
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
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
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459914352
## line 37
    addi $v0, $ra, s1486131272[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 37
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459914352:
## line 38
    addi $t0, $fp, -52
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
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
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459914512
## line 38
    addi $v0, $ra, s1486131312[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 38
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459914512:
## line 40
    addi $t0, $fp, -56
    lw   $v0, -48($fp)
    sw   $v0, 0($t0)
## line 41
    addi $t0, $fp, -88
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 42
    addi $t0, $fp, -92
    sw   $v0, 0($t0)
## line 43
    addi $t0, $fp, -20
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 44
    addi $t0, $fp, -16
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459914704
    addi $v0, $zero, 12
    beq  $zero, $zero, _main_1459914716
_main_1459914704:
    addi $v0, $zero, 0
_main_1459914716:
    sw   $v0, 0($t0)
## line 45
_main_1459914732:
    lw   $v0, 8($fp)
    beq  $v0, $zero, _main_1459917476
## line 46
    addi $t0, $fp, -12
    addi $t1, $fp, -32
    lw   $v0, 12($fp)
    lw   $v0, 0($v0)
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  open
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _main_1459914932
## line 46
    addi $v0, $ra, s1486131352[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -32($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 46
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459914932:
## line 47
    addi $t0, $fp, -80
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, -56($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    lw   $v0, -4($fp)
    addi $t4, $v0, 0
    lw   $v0, -56($fp)
    addi $t5, $v0, 0
    lw   $v0, -48($fp)
    sub  $v0, $t5, $v0
    addi $t5, $v0, 0
    addi $v0, $zero, 4
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t6, $v0, 0
    addi $sp, $sp, -28
    sw   $t0, 24($sp)
    sw   $t1, 20($sp)
    sw   $t2, 16($sp)
    sw   $t3, 12($sp)
    sw   $t4, 8($sp)
    sw   $t6, 4($sp)
    sw   $t5, 0($sp)
    jal  div
    lw   $t0, 24($sp)
    lw   $t1, 20($sp)
    lw   $t2, 16($sp)
    lw   $t3, 12($sp)
    lw   $t4, 8($sp)
    addi $sp, $sp, 28
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sub  $v0, $t4, $v0
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  read
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _main_1459915192
## line 47
    addi $v0, $ra, s1486131372[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -80($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 47
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459915192:
## line 48
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  close
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 49
    lw   $v0, -56($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 26
    addi $t1, $v0, 0
    ori  $v0, $t1, 2
    sub  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459915392
## line 49
    addi $v0, $ra, s1486131392[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -32($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 49
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459915392:
## line 50
    lw   $v0, -56($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -80($fp)
    sub  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459915628
## line 50
    addi $v0, $ra, s1486131416[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -32($fp)
    addi $t1, $v0, 0
    lw   $v0, -56($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -80($fp)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 50
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459915628:
## line 52
    addi $t0, $fp, -84
    lw   $v0, -56($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    sw   $v0, 0($t0)
## line 53
    addi $t0, $fp, -20
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    lw   $v0, -84($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 55
    addi $t0, $fp, -72
    lw   $v0, -56($fp)
    addi $t1, $v0, 0
    lw   $v0, -56($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 56
    addi $t0, $fp, -56
    lw   $v0, -56($fp)
    addi $t1, $v0, 0
    lw   $v0, -56($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 58
_main_1459915968:
    lw   $v0, -72($fp)
    addi $t0, $v0, 0
    lw   $v0, -56($fp)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459917320
## line 59
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459916932
## line 61
    lw   $v0, -92($fp)
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    sw   $v0, 0($t0)
## line 62
    addi $t0, $fp, -92
    lw   $v0, -72($fp)
    sw   $v0, 0($t0)
## line 63
    addi $t0, $fp, -80
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 64
    addi $t0, $fp, -36
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 65
_main_1459916244:
    lw   $v0, -36($fp)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _main_1459916396
## line 65
    addi $t0, $fp, -80
    lw   $v0, -80($fp)
    addi $t1, $v0, 0
    addi $v0, $zero, 147
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  mul
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t1, $v0, 0
    addi $t2, $fp, -36
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    lb   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459916244
_main_1459916396:
## line 66
    lw   $v0, -72($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459916580
    addi $v0, $zero, 0
    beq  $zero, $zero, _main_1459916596
_main_1459916580:
    lw   $v0, -24($fp)
_main_1459916596:
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 67
    lw   $v0, -72($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -80($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 6
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 68
    addi $t0, $fp, -72
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 12
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    addi $v0, $t2, -4
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459917308
_main_1459916932:
## line 70
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 15
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    bne  $v0, $t0, _main_1459917164
## line 72
    addi $t0, $fp, -72
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 12
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    addi $v0, $t2, -4
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459917304
_main_1459917164:
## line 74
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 15
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    bne  $v0, $t0, _main_1459917300
## line 76
    addi $t0, $fp, -72
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459917300:
_main_1459917304:
_main_1459917308:
    beq  $zero, $zero, _main_1459915968
_main_1459917320:
## line 80
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 80
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 81
    addi $t0, $fp, -16
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    lw   $v0, -84($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459914732
_main_1459917476:
## line 84
    lw   $v0, -92($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 85
    addi $t0, $fp, -16
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459917572
    addi $v0, $zero, 12
    beq  $zero, $zero, _main_1459917584
_main_1459917572:
    addi $v0, $zero, 0
_main_1459917584:
    sw   $v0, 0($t0)
## line 86
    addi $t0, $fp, -68
    lw   $v0, -52($fp)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459917684
    lw   $v0, -20($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, 12
    beq  $zero, $zero, _main_1459917700
_main_1459917684:
    lw   $v0, -20($fp)
_main_1459917700:
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 88
    addi $t0, $fp, -56
    lw   $v0, -48($fp)
    sw   $v0, 0($t0)
## line 89
    addi $t0, $fp, -60
    lw   $v0, -52($fp)
    sw   $v0, 0($t0)
## line 90
    addi $t0, $fp, -76
    lw   $v0, -72($fp)
    sw   $v0, 0($t0)
## line 92
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459918112
## line 93
    addi $t0, $fp, -60
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 26
    addi $t1, $v0, 0
    ori  $v0, $t1, 2
    sw   $v0, 0($t0)
## line 94
    addi $t0, $fp, -60
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 12
    sw   $v0, 0($t0)
## line 95
    addi $t0, $fp, -60
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
_main_1459918112:
## line 98
_main_1459918124:
    lw   $v0, -56($fp)
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459926184
## line 99
    lw   $v0, -60($fp)
    addi $t0, $v0, 0
    lw   $v0, -56($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -56($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, -12
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  memcpy
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 100
    addi $t0, $fp, -84
    lw   $v0, -56($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    sw   $v0, 0($t0)
## line 101
    addi $t0, $fp, -64
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    lw   $v0, -84($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 102
    addi $t0, $fp, -72
    lw   $v0, -56($fp)
    addi $t1, $v0, 0
    lw   $v0, -56($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 103
    addi $t0, $fp, -56
    lw   $v0, -56($fp)
    addi $t1, $v0, 0
    lw   $v0, -56($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 105
_main_1459918656:
    lw   $v0, -72($fp)
    addi $t0, $v0, 0
    lw   $v0, -56($fp)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459926080
## line 106
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 3
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459919608
## line 107
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459919424
## line 108
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 109
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 110
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    sw   $v0, 0($t0)
## line 111
    lw   $v0, -68($fp)
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  memcpy
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 112
    addi $t0, $fp, -68
    lw   $v0, -68($fp)
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    addi $v0, $t2, -4
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459919424:
## line 114
    addi $t0, $fp, -72
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 12
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    addi $v0, $t2, -4
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459926068
_main_1459919608:
## line 116
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 15
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    bne  $v0, $t0, _main_1459923744
## line 117
    addi $t0, $fp, -80
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 118
    addi $t0, $fp, -36
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 119
_main_1459919784:
    lw   $v0, -36($fp)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _main_1459919936
## line 119
    addi $t0, $fp, -80
    lw   $v0, -80($fp)
    addi $t1, $v0, 0
    addi $v0, $zero, 147
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  mul
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t1, $v0, 0
    addi $t2, $fp, -36
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    lb   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459919784
_main_1459919936:
## line 120
    addi $t0, $fp, -80
    lw   $v0, -80($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 6
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 121
    addi $t0, $fp, -96
    lw   $v0, -88($fp)
    sw   $v0, 0($t0)
## line 122
_main_1459920092:
    lw   $v0, -96($fp)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459920196
    and  $v0, $t0, $v0
    lw   $v0, -80($fp)
    addi $t0, $v0, 0
    lw   $v0, -96($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sub  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459920196:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459920260
## line 122
    addi $t0, $fp, -96
    lw   $v0, -96($fp)
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459920092
_main_1459920260:
## line 123
    lw   $v0, -96($fp)
    beq  $v0, $zero, _main_1459922788
## line 124
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    bne  $v0, $t0, _main_1459920864
## line 125
    addi $t0, $fp, -80
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 126
    lw   $v0, -60($fp)
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -96($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -16($fp)
    add  $v0, $t2, $v0
    addi $t2, $v0, 0
    addi $v0, $t2, -12
    sub  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -4
    addi $t1, $v0, 0
    srl  $v0, $t1, 2
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 16
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    and  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -80($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 16
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    addi $t3, $v0, 0
    sll  $v0, $t3, 16
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459922776
_main_1459920864:
## line 129
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 18
    bne  $v0, $t0, _main_1459921576
## line 130
    addi $t0, $fp, -80
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 131
    lw   $v0, -60($fp)
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -96($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 16
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    and  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -80($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 16
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    addi $t3, $v0, 0
    sll  $v0, $t3, 16
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 132
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459921564
## line 133
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    sw   $v0, 0($t0)
## line 134
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    sw   $v0, 0($t0)
_main_1459921564:
    beq  $zero, $zero, _main_1459922772
_main_1459921576:
## line 137
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    bne  $v0, $t0, _main_1459922304
## line 138
    addi $t0, $fp, -80
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 139
    lw   $v0, -60($fp)
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -96($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    srl  $v0, $t1, 2
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 26
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    and  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -80($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 6
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    addi $t3, $v0, 0
    sll  $v0, $t3, 26
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 140
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459922292
## line 141
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    sw   $v0, 0($t0)
## line 142
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    sw   $v0, 0($t0)
_main_1459922292:
    beq  $zero, $zero, _main_1459922768
_main_1459922304:
## line 145
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 50
    bne  $v0, $t0, _main_1459922764
## line 146
    lw   $v0, -60($fp)
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -96($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 147
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459922760
## line 148
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 49
    sw   $v0, 0($t0)
## line 149
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    sw   $v0, 0($t0)
_main_1459922760:
_main_1459922764:
_main_1459922768:
_main_1459922772:
_main_1459922776:
    beq  $zero, $zero, _main_1459923576
_main_1459922788:
## line 154
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459923456
## line 155
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 156
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    sw   $v0, 0($t0)
## line 157
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 158
    lw   $v0, -68($fp)
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
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
    jal  memcpy
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 159
    addi $t0, $fp, -68
    lw   $v0, -68($fp)
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    addi $v0, $t2, -4
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459923572
_main_1459923456:
## line 161
    addi $v0, $ra, s1486131484[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 161
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459923572:
_main_1459923576:
## line 163
    addi $t0, $fp, -72
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 12
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    addi $v0, $t2, -4
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459926064
_main_1459923744:
## line 165
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    bne  $v0, $t0, _main_1459924524
## line 166
    addi $t0, $fp, -80
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 167
    lw   $v0, -60($fp)
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -80($fp)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 16
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    and  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -80($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 16
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    addi $t3, $v0, 0
    sll  $v0, $t3, 16
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 168
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459924444
## line 169
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    sw   $v0, 0($t0)
## line 170
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    sw   $v0, 0($t0)
_main_1459924444:
## line 172
    addi $t0, $fp, -72
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459926060
_main_1459924524:
## line 174
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    bne  $v0, $t0, _main_1459925384
## line 175
    addi $t0, $fp, -80
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 176
    lw   $v0, -60($fp)
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -80($fp)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, -12
    addi $t2, $v0, 0
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459924868
    addi $v0, $zero, 0
    beq  $zero, $zero, _main_1459924884
_main_1459924868:
    lw   $v0, -24($fp)
_main_1459924884:
    add  $v0, $t2, $v0
    addi $t2, $v0, 0
    srl  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 26
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    and  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -80($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 6
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    addi $t3, $v0, 0
    sll  $v0, $t3, 26
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 177
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459925304
## line 178
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    sw   $v0, 0($t0)
## line 179
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    sw   $v0, 0($t0)
_main_1459925304:
## line 181
    addi $t0, $fp, -72
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459926056
_main_1459925384:
## line 183
    lw   $v0, -72($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 49
    bne  $v0, $t0, _main_1459926052
## line 184
    lw   $v0, -60($fp)
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    lw   $v0, -72($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459925696
    addi $v0, $zero, 0
    beq  $zero, $zero, _main_1459925712
_main_1459925696:
    lw   $v0, -24($fp)
_main_1459925712:
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 185
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459925980
## line 186
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 49
    sw   $v0, 0($t0)
## line 187
    addi $t0, $fp, -68
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    sw   $v0, 0($t0)
_main_1459925980:
## line 189
    addi $t0, $fp, -72
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459926052:
_main_1459926056:
_main_1459926060:
_main_1459926064:
_main_1459926068:
    beq  $zero, $zero, _main_1459918656
_main_1459926080:
## line 193
    addi $t0, $fp, -60
    lw   $v0, -64($fp)
    sw   $v0, 0($t0)
## line 194
    addi $t0, $fp, -16
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    lw   $v0, -84($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459918124
_main_1459926184:
## line 197
    addi $t0, $fp, -12
    lw   $v0, -28($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  create
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _main_1459926344
## line 197
    addi $v0, $ra, s1486131508[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 197
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459926344:
## line 199
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459926576
## line 200
    lw   $v0, -52($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -68($fp)
    addi $t1, $v0, 0
    lw   $v0, -52($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 201
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    lw   $v0, -52($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    lw   $v0, -68($fp)
    addi $t3, $v0, 0
    lw   $v0, -52($fp)
    sub  $v0, $t3, $v0
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  write
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459926680
_main_1459926576:
## line 204
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    lw   $v0, -52($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    lw   $v0, -60($fp)
    addi $t3, $v0, 0
    lw   $v0, -52($fp)
    sub  $v0, $t3, $v0
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  write
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459926680:
## line 206
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  close
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 208
    lw   $v0, -48($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 209
    lw   $v0, -52($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 211
    addi $v0, $zero, 0

_main_end:
    addi $sp, $sp, 96
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global main
s1486131208:
    string "no output file\n"

s1486131224:
    string "no start\n"

s1486131236:
    string "Usage: lk -o output [-m] file ...\n"

s1486131272:
    string "could not malloc(%d) original space\n"

s1486131312:
    string "could not malloc(%d) destination space\n"

s1486131352:
    string "could not open(%s)\n"

s1486131372:
    string "read() returned %d\n"

s1486131392:
    string "file %s is not MERL\n"

s1486131416:
    string "out of pool size, when processing %s (filesize: %d, but %d read)\n"

s1486131484:
    string "unresolved symbol: %s\n"

s1486131508:
    string "open returned %d\n"

