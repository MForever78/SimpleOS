_ls_ref:

list:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _list_start
_list_ref_pos:
_list_module_ref:
    dd   _ls_ref

_list_start:
    addi $sp, $sp, -24
## line 10
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
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
## line 12
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _list_1459912872
## line 13
    addi $v0, $ra, s1486131208[_list_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
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
## line 14
    j    _list_end
_list_1459912872:
## line 16
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  file_is_dir
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _list_1459913304
## line 17
    addi $t0, $fp, -8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
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
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 18
_list_1459913032:
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _list_1459913120
    and  $v0, $t0, $v0
    lw   $v0, -8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    addi $t0, $v0, 0
_list_1459913120:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _list_1459913188
## line 18
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _list_1459913032
_list_1459913188:
## line 19
    addi $v0, $ra, s1486131220[_list_ref_pos]
    addi $t0, $v0, 0
    addi $t1, $fp, -8
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t1, 4($sp)
    sw   $t2, 0($sp)
    jal  file_size
    lw   $t0, 8($sp)
    lw   $t1, 4($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _list_1459914344
_list_1459913304:
## line 22
    addi $t0, $fp, -20
    lw   $v0, -4($fp)
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
## line 23
    addi $t0, $fp, -8
    addi $t1, $fp, -12
    lw   $v0, -20($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t1, 4($sp)
    sw   $t2, 0($sp)
    jal  malloc
    lw   $t0, 8($sp)
    lw   $t1, 4($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 24
    addi $t0, $fp, -16
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 26
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    lw   $v0, -20($fp)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  read
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 28
_list_1459913572:
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, -16($fp)
    slt  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _list_1459913644
    and  $v0, $t0, $v0
    lw   $v0, -8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
_list_1459913644:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _list_1459913704
    and  $v0, $t0, $v0
    lw   $v0, -8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -32
    addi $t0, $v0, 0
_list_1459913704:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _list_1459914304
## line 29
    addi $t0, $fp, -24
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 11
    lb   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 30
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    andi $v0, $t0, 2
    addi $t0, $v0, 0
    bne  $v0, $zero, _list_1459913860
    or   $v0, $t0, $v0
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    andi $v0, $t0, 4
    addi $t0, $v0, 0
_list_1459913860:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _list_1459914240
## line 33
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    andi $v0, $t0, 16
    beq  $v0, $zero, _list_1459914044
## line 34
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 8
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 35
    addi $v0, $ra, s1486131228[_list_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
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
    beq  $zero, $zero, _list_1459914236
_list_1459914044:
## line 38
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 11
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 39
    addi $v0, $ra, s1486131236[_list_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, 28
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -8($fp)
    addi $t3, $v0, 0
    addi $v0, $t3, 24
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    srl  $v0, $t3, 16
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
_list_1459914236:
_list_1459914240:
## line 42
    addi $t0, $fp, -8
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 32
    sw   $v0, 0($t0)
    beq  $zero, $zero, _list_1459913572
_list_1459914304:
## line 44
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_list_1459914344:
## line 47
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  close
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_list_end:
    addi $sp, $sp, 24
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global list
s1486131208:
    string "’“≤ªµΩ %s\n"

s1486131220:
    string "%s	%d\n\n"

s1486131228:
    string "	%sDIR\n"

s1486131236:
    string "	%s	%d	%d\n"


main:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _main_start
_main_ref_pos:
_main_module_ref:
    dd   _ls_ref

_main_start:
    addi $sp, $sp, -4
## line 55
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459914592
## line 56
    addi $t0, $fp, -4
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
## line 57
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  get_cwd
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 58
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  list
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 59
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459914908
_main_1459914592:
## line 62
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 62
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 63
_main_1459914692:
    lw   $v0, 8($fp)
    beq  $v0, $zero, _main_1459914904
## line 64
    addi $v0, $ra, s1486131248[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    lw   $v0, 0($v0)
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
## line 65
    lw   $v0, 12($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  list
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 66
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 66
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459914692
_main_1459914904:
_main_1459914908:
## line 70
    addi $v0, $zero, 0

_main_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global main
s1486131248:
    string "%s\n"

