_io_ref:

input_method_enable:
    dd 0
.global input_method_enable

io_init:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _io_init_start
_io_init_ref_pos:
_io_init_module_ref:
    dd   _io_ref

_io_init_start:
## line 7
    lw   $v0, _io_init_module_ref[_io_init_ref_pos]($ra)
    addi $v0, $v0, input_method_enable[_io_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)

_io_init_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global io_init

key_displayable:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _key_displayable_start
_key_displayable_ref_pos:
_key_displayable_module_ref:
    dd   _io_ref

_key_displayable_start:
## line 12
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 32
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _key_displayable_1459912832
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 127
    slt  $v0, $t0, $v0
    addi $t0, $v0, 0
_key_displayable_1459912832:
    and  $v0, $t0, $v0

_key_displayable_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global key_displayable

getchar:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _getchar_start
_getchar_ref_pos:
_getchar_module_ref:
    dd   _io_ref

_getchar_start:
## line 17
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  console_read_char
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_getchar_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global getchar

getline:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _getline_start
_getline_ref_pos:
_getline_module_ref:
    dd   _io_ref

_getline_start:
    addi $sp, $sp, -8
## line 25
    addi $t0, $fp, -4
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 26
_getline_1459912908:
    addi $v0, $zero, 1
    beq  $v0, $zero, _getline_1459913960
## line 27
    lw   $v0, _getline_module_ref[_getline_ref_pos]($ra)
    addi $v0, $v0, input_method_enable[_io_ref]
    lw   $v0, 0($v0)
    beq  $v0, $zero, _getline_1459913000
## line 28
    addi $t0, $fp, -8
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  getchar
    lw   $t0, 0($sp)
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sb   $v0, 0($t0)
    beq  $zero, $zero, _getline_1459913948
_getline_1459913000:
## line 32
    addi $t0, $fp, -8
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  getchar
    lw   $t0, 0($sp)
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sb   $v0, 0($t0)
## line 33
    lb   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 18
    bne  $v0, $t0, _getline_1459913144
## line 34
    lw   $v0, _getline_module_ref[_getline_ref_pos]($ra)
    addi $v0, $v0, input_method_enable[_io_ref]
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    lw   $v0, _getline_module_ref[_getline_ref_pos]($ra)
    addi $v0, $v0, input_method_enable[_io_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _getline_1459913944
_getline_1459913144:
## line 36
    lb   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 8
    bne  $v0, $t0, _getline_1459913312
## line 37
    lw   $v0, -4($fp)
    beq  $v0, $zero, _getline_1459913300
## line 38
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
## line 39
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  console_backspace
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_getline_1459913300:
    beq  $zero, $zero, _getline_1459913940
_getline_1459913312:
## line 42
    lb   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 10
    bne  $v0, $t0, _getline_1459913592
## line 43
    addi $t0, $fp, -8
    addi $t1, $zero, 1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  console_print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 44
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $fp, -4
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lb   $v0, -8($fp)
    sb   $v0, 0($t0)
## line 45
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 46
    lw   $v0, -4($fp)
    j    _getline_end
    beq  $zero, $zero, _getline_1459913936
_getline_1459913592:
## line 48
    lb   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  key_displayable
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $v0, $zero, _getline_1459913932
## line 49
    addi $t0, $fp, -8
    addi $t1, $zero, 1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  console_print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 50
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $fp, -4
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lb   $v0, -8($fp)
    sb   $v0, 0($t0)
## line 51
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    bne  $v0, $t0, _getline_1459913928
## line 52
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 53
    lw   $v0, -4($fp)
    j    _getline_end
_getline_1459913928:
_getline_1459913932:
_getline_1459913936:
_getline_1459913940:
_getline_1459913944:
_getline_1459913948:
    beq  $zero, $zero, _getline_1459912908
_getline_1459913960:

_getline_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global getline

_print_number:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  __print_number_start
__print_number_ref_pos:
__print_number_module_ref:
    dd   _io_ref

__print_number_start:
    addi $sp, $sp, -8
## line 66
    addi $t0, $fp, -4
    addi $v0, $ra, s1486131208[__print_number_ref_pos]
    sw   $v0, 0($t0)
## line 67
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 11
    sw   $v0, 0($t0)
## line 69
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, __print_number_1459914148
## line 70
    addi $v0, $ra, s1486131224[__print_number_ref_pos]
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  console_print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 71
    j    __print_number_end
__print_number_1459914148:
## line 73
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $t0, $v0
    beq  $v0, $zero, __print_number_1459914292
## line 74
    addi $v0, $ra, s1486131228[__print_number_ref_pos]
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  console_print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 75
    addi $t0, $fp, 8
    addi $t1, $zero, 0
    lw   $v0, 8($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
__print_number_1459914292:
## line 77
__print_number_1459914304:
    lw   $v0, 8($fp)
    beq  $v0, $zero, __print_number_1459914500
## line 78
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 48
    lw   $v0, 8($fp)
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
## line 79
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
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
    beq  $zero, $zero, __print_number_1459914304
__print_number_1459914500:
## line 82
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 12
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  console_print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

__print_number_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global _print_number
s1486131208:
    string "            "

s1486131224:
    string "0"

s1486131228:
    string "-"


_print_hex:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  __print_hex_start
__print_hex_ref_pos:
__print_hex_module_ref:
    dd   _io_ref

__print_hex_start:
    addi $sp, $sp, -12
## line 92
    addi $t0, $fp, -4
    addi $v0, $ra, s1486131232[__print_hex_ref_pos]
    sw   $v0, 0($t0)
## line 93
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 8
    sw   $v0, 0($t0)
## line 94
    addi $v0, $ra, s1486131244[__print_hex_ref_pos]
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
## line 96
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    sw   $v0, 0($t0)
## line 97
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t0
    beq  $v0, $zero, __print_hex_1459914912
## line 97
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 65
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, -10
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
    beq  $zero, $zero, __print_hex_1459915012
__print_hex_1459914912:
## line 98
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 48
    lw   $v0, -12($fp)
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
__print_hex_1459915012:
## line 99
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 101
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    sw   $v0, 0($t0)
## line 102
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t0
    beq  $v0, $zero, __print_hex_1459915284
## line 102
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 65
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, -10
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
    beq  $zero, $zero, __print_hex_1459915384
__print_hex_1459915284:
## line 103
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 48
    lw   $v0, -12($fp)
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
__print_hex_1459915384:
## line 104
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 106
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    sw   $v0, 0($t0)
## line 107
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t0
    beq  $v0, $zero, __print_hex_1459915656
## line 107
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 65
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, -10
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
    beq  $zero, $zero, __print_hex_1459915756
__print_hex_1459915656:
## line 108
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 48
    lw   $v0, -12($fp)
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
__print_hex_1459915756:
## line 109
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 111
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    sw   $v0, 0($t0)
## line 112
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t0
    beq  $v0, $zero, __print_hex_1459916028
## line 112
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 65
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, -10
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
    beq  $zero, $zero, __print_hex_1459916128
__print_hex_1459916028:
## line 113
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 48
    lw   $v0, -12($fp)
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
__print_hex_1459916128:
## line 114
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 116
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    sw   $v0, 0($t0)
## line 117
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t0
    beq  $v0, $zero, __print_hex_1459916400
## line 117
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 65
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, -10
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
    beq  $zero, $zero, __print_hex_1459916500
__print_hex_1459916400:
## line 118
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 48
    lw   $v0, -12($fp)
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
__print_hex_1459916500:
## line 119
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 121
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    sw   $v0, 0($t0)
## line 122
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t0
    beq  $v0, $zero, __print_hex_1459916772
## line 122
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 65
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, -10
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
    beq  $zero, $zero, __print_hex_1459916872
__print_hex_1459916772:
## line 123
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 48
    lw   $v0, -12($fp)
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
__print_hex_1459916872:
## line 124
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 126
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    sw   $v0, 0($t0)
## line 127
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t0
    beq  $v0, $zero, __print_hex_1459917144
## line 127
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 65
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, -10
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
    beq  $zero, $zero, __print_hex_1459917244
__print_hex_1459917144:
## line 128
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 48
    lw   $v0, -12($fp)
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
__print_hex_1459917244:
## line 129
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 131
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 15
    sw   $v0, 0($t0)
## line 132
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    slt  $v0, $v0, $t0
    beq  $v0, $zero, __print_hex_1459917516
## line 132
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 65
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, -10
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
    beq  $zero, $zero, __print_hex_1459917616
__print_hex_1459917516:
## line 133
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 48
    lw   $v0, -12($fp)
    add  $v0, $t1, $v0
    sb   $v0, 0($t0)
__print_hex_1459917616:
## line 134
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 4
    sw   $v0, 0($t0)
## line 136
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $t1, $zero, 8
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  console_print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

__print_hex_end:
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global _print_hex
s1486131232:
    string "         "

s1486131244:
    string "0x"

