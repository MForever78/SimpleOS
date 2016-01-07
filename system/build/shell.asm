_shell_ref:

shell:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _shell_start
_shell_ref_pos:
_shell_module_ref:
    dd   _shell_ref

_shell_start:
    addi $sp, $sp, -12
## line 9
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
## line 10
_shell_1459912772:
    addi $v0, $zero, 1
    beq  $v0, $zero, _shell_1459913832
## line 11
    addi $v0, $ra, s1486131208[_shell_ref_pos]
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  console_print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 12
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 256
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  getline
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 13
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 14
    addi $t0, $fp, -12
    lw   $v0, -4($fp)
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
## line 15
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, -1024
    bne  $v0, $t0, _shell_1459913212
## line 16
    addi $v0, $ra, s1486131212[_shell_ref_pos]
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
## line 17
    lw   $v0, -4($fp)
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
## line 18
    addi $v0, $ra, s1486131236[_shell_ref_pos]
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
    beq  $zero, $zero, _shell_1459913820
_shell_1459913212:
## line 20
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, -1025
    bne  $v0, $t0, _shell_1459913404
## line 21
    addi $v0, $ra, s1486131240[_shell_ref_pos]
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
## line 22
    lw   $v0, -4($fp)
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
## line 23
    addi $v0, $ra, s1486131260[_shell_ref_pos]
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
    beq  $zero, $zero, _shell_1459913816
_shell_1459913404:
## line 25
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, -1026
    bne  $v0, $t0, _shell_1459913596
## line 26
    addi $v0, $ra, s1486131264[_shell_ref_pos]
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
## line 27
    lw   $v0, -4($fp)
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
## line 28
    addi $v0, $ra, s1486131304[_shell_ref_pos]
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
    beq  $zero, $zero, _shell_1459913812
_shell_1459913596:
## line 30
    lw   $v0, -12($fp)
    beq  $v0, $zero, _shell_1459913760
## line 31
    addi $v0, $ra, s1486131308[_shell_ref_pos]
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
## line 32
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  _print_number
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 33
    addi $v0, $ra, s1486131328[_shell_ref_pos]
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
    beq  $zero, $zero, _shell_1459913808
_shell_1459913760:
## line 36
    addi $v0, $ra, s1486131332[_shell_ref_pos]
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
_shell_1459913808:
_shell_1459913812:
_shell_1459913816:
_shell_1459913820:
    beq  $zero, $zero, _shell_1459912772
_shell_1459913832:

_shell_end:
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global shell
s1486131208:
    string "$ "

s1486131212:
    string "Command not found: `"

s1486131236:
    string "\'\n\n"

s1486131240:
    string "Commond not MERL: `"

s1486131260:
    string "\'\n\n"

s1486131264:
    string "Command contains unresolved symbol: `"

s1486131304:
    string "\'\n\n"

s1486131308:
    string "Command returned: "

s1486131328:
    string "\n\n"

s1486131332:
    string "\n"

