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
    addi $sp, $sp, -100
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
    addi $t0, $fp, -32
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
    addi $t0, $fp, -40
    addi $t1, $fp, 12
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 27
_main_1459913632:
    lw   $v0, -40($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459913704
    and  $v0, $t0, $v0
    lw   $v0, -40($fp)
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
    lw   $v0, -40($fp)
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
    addi $t2, $fp, -40
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
    addi $t0, $fp, -56
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
    addi $t0, $fp, -60
    lw   $v0, -52($fp)
    sw   $v0, 0($t0)
## line 41
    addi $t0, $fp, -92
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 42
    addi $t0, $fp, -96
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
    beq  $v0, $zero, _main_1459917472
## line 46
    addi $t0, $fp, -12
    addi $t1, $fp, -36
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
    lw   $v0, -36($fp)
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
    addi $t0, $fp, -28
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  file_size
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 48
    addi $t0, $fp, -84
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, -60($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    lw   $v0, -28($fp)
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
    beq  $v0, $zero, _main_1459915188
## line 48
    addi $v0, $ra, s1486131372[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -84($fp)
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
## line 48
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459915188:
## line 49
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
## line 50
    lw   $v0, -60($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 26
    addi $t1, $v0, 0
    ori  $v0, $t1, 2
    sub  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459915388
## line 50
    addi $v0, $ra, s1486131392[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -36($fp)
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
_main_1459915388:
## line 51
    lw   $v0, -60($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -84($fp)
    sub  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459915624
## line 51
    addi $v0, $ra, s1486131416[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -36($fp)
    addi $t1, $v0, 0
    lw   $v0, -60($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -84($fp)
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
## line 51
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459915624:
## line 53
    addi $t0, $fp, -88
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    sw   $v0, 0($t0)
## line 54
    addi $t0, $fp, -20
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    lw   $v0, -88($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 56
    addi $t0, $fp, -76
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    lw   $v0, -60($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 57
    addi $t0, $fp, -60
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    lw   $v0, -60($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 59
_main_1459915964:
    lw   $v0, -76($fp)
    addi $t0, $v0, 0
    lw   $v0, -60($fp)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459917316
## line 60
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459916928
## line 62
    lw   $v0, -96($fp)
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    sw   $v0, 0($t0)
## line 63
    addi $t0, $fp, -96
    lw   $v0, -76($fp)
    sw   $v0, 0($t0)
## line 64
    addi $t0, $fp, -84
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 65
    addi $t0, $fp, -40
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 66
_main_1459916240:
    lw   $v0, -40($fp)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _main_1459916392
## line 66
    addi $t0, $fp, -84
    lw   $v0, -84($fp)
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
    addi $t2, $fp, -40
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    lb   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459916240
_main_1459916392:
## line 67
    lw   $v0, -76($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
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
    beq  $v0, $zero, _main_1459916576
    addi $v0, $zero, 0
    beq  $zero, $zero, _main_1459916592
_main_1459916576:
    lw   $v0, -24($fp)
_main_1459916592:
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 68
    lw   $v0, -76($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -84($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 6
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 69
    addi $t0, $fp, -76
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 12
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
    beq  $zero, $zero, _main_1459917304
_main_1459916928:
## line 71
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 15
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    bne  $v0, $t0, _main_1459917160
## line 73
    addi $t0, $fp, -76
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 12
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
    beq  $zero, $zero, _main_1459917300
_main_1459917160:
## line 75
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 15
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    bne  $v0, $t0, _main_1459917296
## line 77
    addi $t0, $fp, -76
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459917296:
_main_1459917300:
_main_1459917304:
    beq  $zero, $zero, _main_1459915964
_main_1459917316:
## line 81
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 81
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 82
    addi $t0, $fp, -16
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    lw   $v0, -88($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459914732
_main_1459917472:
## line 85
    lw   $v0, -96($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 86
    addi $t0, $fp, -16
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459917568
    addi $v0, $zero, 12
    beq  $zero, $zero, _main_1459917580
_main_1459917568:
    addi $v0, $zero, 0
_main_1459917580:
    sw   $v0, 0($t0)
## line 87
    addi $t0, $fp, -72
    lw   $v0, -56($fp)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459917680
    lw   $v0, -20($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, 12
    beq  $zero, $zero, _main_1459917696
_main_1459917680:
    lw   $v0, -20($fp)
_main_1459917696:
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 89
    addi $t0, $fp, -60
    lw   $v0, -52($fp)
    sw   $v0, 0($t0)
## line 90
    addi $t0, $fp, -64
    lw   $v0, -56($fp)
    sw   $v0, 0($t0)
## line 91
    addi $t0, $fp, -80
    lw   $v0, -76($fp)
    sw   $v0, 0($t0)
## line 93
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459918108
## line 94
    addi $t0, $fp, -64
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
## line 95
    addi $t0, $fp, -64
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
## line 96
    addi $t0, $fp, -64
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
_main_1459918108:
## line 99
_main_1459918120:
    lw   $v0, -60($fp)
    addi $t0, $v0, 0
    lw   $v0, -80($fp)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459926180
## line 100
    lw   $v0, -64($fp)
    addi $t0, $v0, 0
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -60($fp)
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
## line 101
    addi $t0, $fp, -88
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -12
    sw   $v0, 0($t0)
## line 102
    addi $t0, $fp, -68
    lw   $v0, -64($fp)
    addi $t1, $v0, 0
    lw   $v0, -88($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 103
    addi $t0, $fp, -76
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    lw   $v0, -60($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 104
    addi $t0, $fp, -60
    lw   $v0, -60($fp)
    addi $t1, $v0, 0
    lw   $v0, -60($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 106
_main_1459918652:
    lw   $v0, -76($fp)
    addi $t0, $v0, 0
    lw   $v0, -60($fp)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459926076
## line 107
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 3
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459919604
## line 108
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459919420
## line 109
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 110
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 111
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    sw   $v0, 0($t0)
## line 112
    lw   $v0, -72($fp)
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
## line 113
    addi $t0, $fp, -72
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
_main_1459919420:
## line 115
    addi $t0, $fp, -76
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 12
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
    beq  $zero, $zero, _main_1459926064
_main_1459919604:
## line 117
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 15
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    bne  $v0, $t0, _main_1459923740
## line 118
    addi $t0, $fp, -84
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 119
    addi $t0, $fp, -40
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 120
_main_1459919780:
    lw   $v0, -40($fp)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _main_1459919932
## line 120
    addi $t0, $fp, -84
    lw   $v0, -84($fp)
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
    addi $t2, $fp, -40
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    lb   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459919780
_main_1459919932:
## line 121
    addi $t0, $fp, -84
    lw   $v0, -84($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 6
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 122
    addi $t0, $fp, -100
    lw   $v0, -92($fp)
    sw   $v0, 0($t0)
## line 123
_main_1459920088:
    lw   $v0, -100($fp)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459920192
    and  $v0, $t0, $v0
    lw   $v0, -84($fp)
    addi $t0, $v0, 0
    lw   $v0, -100($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sub  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459920192:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459920256
## line 123
    addi $t0, $fp, -100
    lw   $v0, -100($fp)
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459920088
_main_1459920256:
## line 124
    lw   $v0, -100($fp)
    beq  $v0, $zero, _main_1459922784
## line 125
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    bne  $v0, $t0, _main_1459920860
## line 126
    addi $t0, $fp, -84
    lw   $v0, -64($fp)
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
## line 127
    lw   $v0, -64($fp)
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -100($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
    lw   $v0, -84($fp)
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
    beq  $zero, $zero, _main_1459922772
_main_1459920860:
## line 130
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 18
    bne  $v0, $t0, _main_1459921572
## line 131
    addi $t0, $fp, -84
    lw   $v0, -64($fp)
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
## line 132
    lw   $v0, -64($fp)
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -100($fp)
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
    lw   $v0, -84($fp)
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
## line 133
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459921560
## line 134
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    sw   $v0, 0($t0)
## line 135
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
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
_main_1459921560:
    beq  $zero, $zero, _main_1459922768
_main_1459921572:
## line 138
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    bne  $v0, $t0, _main_1459922300
## line 139
    addi $t0, $fp, -84
    lw   $v0, -64($fp)
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
## line 140
    lw   $v0, -64($fp)
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -100($fp)
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
    lw   $v0, -84($fp)
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
## line 141
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459922288
## line 142
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    sw   $v0, 0($t0)
## line 143
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
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
_main_1459922288:
    beq  $zero, $zero, _main_1459922764
_main_1459922300:
## line 146
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 50
    bne  $v0, $t0, _main_1459922760
## line 147
    lw   $v0, -64($fp)
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -100($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 148
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459922756
## line 149
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 49
    sw   $v0, 0($t0)
## line 150
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
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
_main_1459922756:
_main_1459922760:
_main_1459922764:
_main_1459922768:
_main_1459922772:
    beq  $zero, $zero, _main_1459923572
_main_1459922784:
## line 155
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459923452
## line 156
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 157
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
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
## line 158
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 159
    lw   $v0, -72($fp)
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
## line 160
    addi $t0, $fp, -72
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
    beq  $zero, $zero, _main_1459923568
_main_1459923452:
## line 162
    addi $v0, $ra, s1486131484[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
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
## line 162
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459923568:
_main_1459923572:
## line 164
    addi $t0, $fp, -76
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 12
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
    beq  $zero, $zero, _main_1459926060
_main_1459923740:
## line 166
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    bne  $v0, $t0, _main_1459924520
## line 167
    addi $t0, $fp, -84
    lw   $v0, -64($fp)
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
## line 168
    lw   $v0, -64($fp)
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -84($fp)
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
    lw   $v0, -84($fp)
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
## line 169
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459924440
## line 170
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    sw   $v0, 0($t0)
## line 171
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
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
_main_1459924440:
## line 173
    addi $t0, $fp, -76
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459926056
_main_1459924520:
## line 175
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    bne  $v0, $t0, _main_1459925380
## line 176
    addi $t0, $fp, -84
    lw   $v0, -64($fp)
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
## line 177
    lw   $v0, -64($fp)
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -84($fp)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, -12
    addi $t2, $v0, 0
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459924864
    addi $v0, $zero, 0
    beq  $zero, $zero, _main_1459924880
_main_1459924864:
    lw   $v0, -24($fp)
_main_1459924880:
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
    lw   $v0, -84($fp)
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
## line 178
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459925300
## line 179
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    sw   $v0, 0($t0)
## line 180
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
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
_main_1459925300:
## line 182
    addi $t0, $fp, -76
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459926052
_main_1459925380:
## line 184
    lw   $v0, -76($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 49
    bne  $v0, $t0, _main_1459926048
## line 185
    lw   $v0, -64($fp)
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, -12
    addi $t0, $v0, 0
    lw   $v0, -64($fp)
    addi $t1, $v0, 0
    lw   $v0, -76($fp)
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
    beq  $v0, $zero, _main_1459925692
    addi $v0, $zero, 0
    beq  $zero, $zero, _main_1459925708
_main_1459925692:
    lw   $v0, -24($fp)
_main_1459925708:
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 186
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459925976
## line 187
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 49
    sw   $v0, 0($t0)
## line 188
    addi $t0, $fp, -72
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -76($fp)
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
_main_1459925976:
## line 190
    addi $t0, $fp, -76
    lw   $v0, -76($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459926048:
_main_1459926052:
_main_1459926056:
_main_1459926060:
_main_1459926064:
    beq  $zero, $zero, _main_1459918652
_main_1459926076:
## line 194
    addi $t0, $fp, -64
    lw   $v0, -68($fp)
    sw   $v0, 0($t0)
## line 195
    addi $t0, $fp, -16
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    lw   $v0, -88($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459918120
_main_1459926180:
## line 198
    addi $t0, $fp, -12
    lw   $v0, -32($fp)
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
    beq  $v0, $zero, _main_1459926340
## line 198
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
## line 198
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459926340:
## line 200
    lw   $v0, -8($fp)
    beq  $v0, $zero, _main_1459926572
## line 201
    lw   $v0, -56($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -72($fp)
    addi $t1, $v0, 0
    lw   $v0, -56($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 202
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    lw   $v0, -56($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    lw   $v0, -72($fp)
    addi $t3, $v0, 0
    lw   $v0, -56($fp)
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
    beq  $zero, $zero, _main_1459926676
_main_1459926572:
## line 205
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    lw   $v0, -56($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    lw   $v0, -64($fp)
    addi $t3, $v0, 0
    lw   $v0, -56($fp)
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
_main_1459926676:
## line 207
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
## line 210
    lw   $v0, -56($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 212
    addi $v0, $zero, 0

_main_end:
    addi $sp, $sp, 100
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

