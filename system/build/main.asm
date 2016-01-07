_main_ref:

main:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _main_start
_main_ref_pos:
_main_module_ref:
    dd   _main_ref

_main_start:
    addi $sp, $sp, -8
## line 7
    addi $v0, $ra, s1486131208[_main_ref_pos]
    addi $t0, $v0, 0
    addi $t1, $zero, 32767
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  console_print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 13
    addi $t0, $fp, -8
    addi $v0, $ra, s1486131236[_main_ref_pos]
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  system
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 14
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  _print_number
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 16
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
## line 17
_main_1459912900:
    addi $v0, $zero, 1
    beq  $v0, $zero, _main_1459913024
## line 18
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 256
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  getline
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 19
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 256
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  console_print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459912900
_main_1459913024:

_main_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global main
s1486131208:
    string "SimpleOS v0.1\nSystem ready\n"

s1486131236:
    string "test"

