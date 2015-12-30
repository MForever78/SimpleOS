_ed_ref:

buf:
    dd 0
.global buf

buf_size:
    dd 0
.global buf_size

line_number:
    dd 0
.global line_number

line_start:
    dd 0
.global line_start

input_buf:
    dd 0
.global input_buf

main:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _main_start
_main_ref_pos:
_main_module_ref:
    dd   _ed_ref

_main_start:
    addi $sp, $sp, -16
## line 16
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf_size[_ed_ref]
    addi $t0, $v0, 0
    addi $t1, $zero, 100
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
## line 17
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_ed_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf_size[_ed_ref]
    lw   $v0, 0($v0)
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
## line 18
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_number[_ed_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 19
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_ed_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 20
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 22
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    addi $t0, $v0, 0
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
## line 24
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    beq  $v0, $zero, _main_1459913628
## line 25
    addi $t0, $fp, -4
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
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
## line 26
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459913252
## line 27
    addi $v0, $ra, s1486131208[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
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
    beq  $zero, $zero, _main_1459913588
_main_1459913252:
## line 30
    addi $t0, $fp, -8
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
## line 31
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf_size[_ed_ref]
    lw   $v0, 0($v0)
    slt  $v0, $v0, $t0
    beq  $v0, $zero, _main_1459913396
## line 32
    addi $v0, $ra, s1486131228[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459913584
_main_1459913396:
## line 35
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    lw   $v0, -8($fp)
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
## line 36
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 37
    addi $v0, $ra, s1486131248[_main_ref_pos]
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
_main_1459913584:
_main_1459913588:
## line 40
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
_main_1459913628:
## line 43
_main_1459913640:
    addi $v0, $zero, 1
    beq  $v0, $zero, _main_1459917584
## line 44
    addi $v0, $ra, s1486131264[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 45
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  get_line
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 46
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 113
    bne  $v0, $t0, _main_1459913892
## line 47
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 48
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 49
    addi $v0, $zero, 0
    j    _main_end
    beq  $zero, $zero, _main_1459917572
_main_1459913892:
## line 51
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 112
    bne  $v0, $t0, _main_1459914320
## line 52
    addi $t0, $fp, -12
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 53
_main_1459914004:
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459914076
    and  $v0, $t0, $v0
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -10
    addi $t0, $v0, 0
_main_1459914076:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459914144
## line 53
    addi $t0, $fp, -12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459914004
_main_1459914144:
## line 54
    addi $t0, $fp, -16
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    sb   $v0, 0($t0)
## line 55
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 56
    addi $v0, $ra, s1486131268[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
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
## line 57
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    lb   $v0, -16($fp)
    sb   $v0, 0($t0)
    beq  $zero, $zero, _main_1459917568
_main_1459914320:
## line 59
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 119
    bne  $v0, $t0, _main_1459914940
## line 60
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  get_line
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 61
    addi $t0, $fp, -8
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  strlen
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 62
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 63
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _main_1459914632
## line 64
    addi $v0, $ra, s1486131272[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459914928
_main_1459914632:
## line 67
    addi $t0, $fp, -4
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
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
## line 68
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459914788
## line 69
    addi $v0, $ra, s1486131288[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
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
    beq  $zero, $zero, _main_1459914888
_main_1459914788:
## line 72
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t1, 8($sp)
    sw   $t2, 4($sp)
    sw   $t3, 0($sp)
    jal  strlen
    lw   $t0, 12($sp)
    lw   $t1, 8($sp)
    lw   $t2, 4($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
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
_main_1459914888:
## line 74
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
_main_1459914928:
    beq  $zero, $zero, _main_1459917564
_main_1459914940:
## line 77
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 105
    bne  $v0, $t0, _main_1459915308
## line 78
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  get_line
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 79
    addi $t0, $fp, -8
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  strlen
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 80
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  strlen
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  memmove
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 81
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
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
    beq  $zero, $zero, _main_1459917560
_main_1459915308:
## line 83
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 97
    bne  $v0, $t0, _main_1459915860
## line 84
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  get_line
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 85
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _main_1459915592
## line 86
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_number[_ed_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 87
_main_1459915496:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -10
    beq  $v0, $zero, _main_1459915588
    beq  $zero, $zero, _main_1459915496
_main_1459915588:
_main_1459915592:
## line 89
    addi $t0, $fp, -8
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  strlen
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 91
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  strlen
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  memmove
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 92
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
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
    beq  $zero, $zero, _main_1459917556
_main_1459915860:
## line 94
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 100
    bne  $v0, $t0, _main_1459916304
## line 95
    addi $t0, $fp, -12
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 96
_main_1459915972:
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459916044
    and  $v0, $t0, $v0
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -10
    addi $t0, $v0, 0
_main_1459916044:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459916112
## line 96
    addi $t0, $fp, -12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459915972
_main_1459916112:
## line 97
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _main_1459916192
## line 97
    addi $t0, $fp, -12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
_main_1459916192:
## line 98
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, -12($fp)
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
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  memmove
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459917552
_main_1459916304:
## line 100
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 108
    bne  $v0, $t0, _main_1459917160
## line 101
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  get_line
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 102
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 103
    addi $t0, $fp, -12
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 104
_main_1459916484:
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459916572
    and  $v0, $t0, $v0
    lw   $v0, -12($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459916572:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459916728
## line 105
    addi $t0, $fp, -8
    lw   $v0, -8($fp)
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
    addi $t2, $fp, -12
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
    beq  $zero, $zero, _main_1459916484
_main_1459916728:
## line 107
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_number[_ed_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 108
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_ed_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 109
_main_1459916808:
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459916884
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
_main_1459916884:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459917148
## line 110
_main_1459916908:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459916980
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -10
    addi $t0, $v0, 0
_main_1459916980:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459917048
## line 110
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459916908
_main_1459917048:
## line 111
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_number[_ed_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 112
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_start[_ed_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459916808
_main_1459917148:
    beq  $zero, $zero, _main_1459917548
_main_1459917160:
## line 115
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 103
    bne  $v0, $t0, _main_1459917284
## line 116
    addi $v0, $ra, s1486131308[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line_number[_ed_ref]
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
    beq  $zero, $zero, _main_1459917544
_main_1459917284:
## line 119
    addi $v0, $ra, s1486131312[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 120
    addi $v0, $ra, s1486131336[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 121
    addi $v0, $ra, s1486131352[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 122
    addi $v0, $ra, s1486131372[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 123
    addi $v0, $ra, s1486131396[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 124
    addi $v0, $ra, s1486131412[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 125
    addi $v0, $ra, s1486131428[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 126
    addi $v0, $ra, s1486131440[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459917544:
_main_1459917548:
_main_1459917552:
_main_1459917556:
_main_1459917560:
_main_1459917564:
_main_1459917568:
_main_1459917572:
    beq  $zero, $zero, _main_1459913640
_main_1459917584:
## line 130
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 131
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, input_buf[_ed_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 132
    addi $v0, $zero, 0

_main_end:
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global main
s1486131208:
    string "无法读取文件 %s\n"

s1486131228:
    string "文件大小超过限制\n"

s1486131248:
    string "读取 %d 字节\n"

s1486131264:
    string "* "

s1486131268:
    string "%s\n"

s1486131272:
    string "请输入文件名\n"

s1486131288:
    string "无法创建文件 %s\n"

s1486131308:
    string "%d\n"

s1486131312:
    string "a: 在当前行之后插入\n"

s1486131336:
    string "d: 删除当前行\n"

s1486131352:
    string "g: 显示当前行号\n"

s1486131372:
    string "i: 在当前行之前插入\n"

s1486131396:
    string "l: 切换到某行\n"

s1486131412:
    string "p: 打印当前行\n"

s1486131428:
    string "q: 退出\n"

s1486131440:
    string "w: 保存文件\n"

