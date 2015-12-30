_cd_ref:

main:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _main_start
_main_ref_pos:
_main_module_ref:
    dd   _cd_ref

_main_start:
    addi $sp, $sp, -8
## line 8
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    bne  $v0, $t0, _main_1459912780
## line 8
    addi $v0, $zero, 0
    j    _main_end
_main_1459912780:
## line 9
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  change_dir
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 10
    addi $t0, $fp, -4
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  get_env_error
    lw   $t0, 0($sp)
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 11
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, -1
    bne  $v0, $t0, _main_1459912988
## line 11
    addi $v0, $ra, s1486131208[_main_ref_pos]
    addi $t0, $v0, 0
    addi $t1, $zero, 32767
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459913412
_main_1459912988:
## line 12
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, -2
    bne  $v0, $t0, _main_1459913088
## line 12
    addi $v0, $ra, s1486131224[_main_ref_pos]
    addi $t0, $v0, 0
    addi $t1, $zero, 32767
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459913408
_main_1459913088:
## line 13
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, -3
    bne  $v0, $t0, _main_1459913188
## line 13
    addi $v0, $ra, s1486131240[_main_ref_pos]
    addi $t0, $v0, 0
    addi $t1, $zero, 32767
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459913404
_main_1459913188:
## line 15
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
## line 16
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  get_cwd
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 17
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 32767
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 18
    addi $v0, $ra, s1486131256[_main_ref_pos]
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 19
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
_main_1459913404:
_main_1459913408:
_main_1459913412:
## line 22
    lw   $v0, -4($fp)

_main_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global main
s1486131208:
    string "Path too long\n"

s1486131224:
    string "Path not found\n"

s1486131240:
    string "Path not a dir\n"

s1486131256:
    string "\n"

