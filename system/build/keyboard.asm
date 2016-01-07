_keyboard_ref:

_key_queue_b:
    dd 0
.global _key_queue_b

_key_queue_e:
    dd 0
.global _key_queue_e

_key_queue:
    dd 0
.global _key_queue

_key_shift:
    dd 0
.global _key_shift

_key_ctrl:
    dd 0
.global _key_ctrl

_key_shift_map:
    dd 0
.global _key_shift_map

_key_map:
    dd 0
.global _key_map

keyboard_init:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _keyboard_init_start
_keyboard_init_ref_pos:
_keyboard_init_module_ref:
    dd   _keyboard_ref
_keyboard_init__key_shift_table_ext:
    dd   _key_shift_table
_keyboard_init__key_map_table_ext:
    dd   _key_map_table

_keyboard_init_start:
## line 18
    lw   $v0, _keyboard_init_module_ref[_keyboard_init_ref_pos]($ra)
    addi $v0, $v0, _key_queue[_keyboard_ref]
    addi $t0, $v0, 0
    addi $t1, $zero, 256
    sll  $v0, $t1, 2
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
## line 19
    lw   $v0, _keyboard_init_module_ref[_keyboard_init_ref_pos]($ra)
    addi $v0, $v0, _key_queue_e[_keyboard_ref]
    addi $t0, $v0, 0
    lw   $v0, _keyboard_init_module_ref[_keyboard_init_ref_pos]($ra)
    addi $v0, $v0, _key_queue_b[_keyboard_ref]
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 20
    lw   $v0, _keyboard_init_module_ref[_keyboard_init_ref_pos]($ra)
    addi $v0, $v0, _key_shift[_keyboard_ref]
    addi $t0, $v0, 0
    lw   $v0, _keyboard_init_module_ref[_keyboard_init_ref_pos]($ra)
    addi $v0, $v0, _key_ctrl[_keyboard_ref]
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 21
    lw   $v0, _keyboard_init_module_ref[_keyboard_init_ref_pos]($ra)
    addi $v0, $v0, _key_shift_map[_keyboard_ref]
    addi $t0, $v0, 0
    lw   $v0, _keyboard_init__key_shift_table_ext[_keyboard_init_ref_pos]($ra)
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 22
    lw   $v0, _keyboard_init_module_ref[_keyboard_init_ref_pos]($ra)
    addi $v0, $v0, _key_map[_keyboard_ref]
    addi $t0, $v0, 0
    lw   $v0, _keyboard_init__key_map_table_ext[_keyboard_init_ref_pos]($ra)
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)

_keyboard_init_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global keyboard_init

keyboard_queue_push:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _keyboard_queue_push_start
_keyboard_queue_push_ref_pos:
_keyboard_queue_push_module_ref:
    dd   _keyboard_ref

_keyboard_queue_push_start:
## line 28
    lw   $v0, _keyboard_queue_push_module_ref[_keyboard_queue_push_ref_pos]($ra)
    addi $v0, $v0, _key_queue[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _keyboard_queue_push_module_ref[_keyboard_queue_push_ref_pos]($ra)
    addi $v0, $v0, _key_queue_e[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    sw   $v0, 0($t0)
## line 29
    lw   $v0, _keyboard_queue_push_module_ref[_keyboard_queue_push_ref_pos]($ra)
    addi $v0, $v0, _key_queue_e[_keyboard_ref]
    addi $t0, $v0, 0
    lw   $v0, _keyboard_queue_push_module_ref[_keyboard_queue_push_ref_pos]($ra)
    addi $v0, $v0, _key_queue_e[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    addi $t1, $v0, 0
    andi $v0, $t1, 255
    sw   $v0, 0($t0)

_keyboard_queue_push_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global keyboard_queue_push

keyboard_queue_pop:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _keyboard_queue_pop_start
_keyboard_queue_pop_ref_pos:
_keyboard_queue_pop_module_ref:
    dd   _keyboard_ref

_keyboard_queue_pop_start:
    addi $sp, $sp, -4
## line 37
    addi $t0, $fp, -4
    lw   $v0, _keyboard_queue_pop_module_ref[_keyboard_queue_pop_ref_pos]($ra)
    addi $v0, $v0, _key_queue[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _keyboard_queue_pop_module_ref[_keyboard_queue_pop_ref_pos]($ra)
    addi $v0, $v0, _key_queue_b[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 38
    lw   $v0, _keyboard_queue_pop_module_ref[_keyboard_queue_pop_ref_pos]($ra)
    addi $v0, $v0, _key_queue_b[_keyboard_ref]
    addi $t0, $v0, 0
    lw   $v0, _keyboard_queue_pop_module_ref[_keyboard_queue_pop_ref_pos]($ra)
    addi $v0, $v0, _key_queue_b[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    addi $t1, $v0, 0
    andi $v0, $t1, 255
    sw   $v0, 0($t0)
## line 39
    lw   $v0, -4($fp)

_keyboard_queue_pop_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global keyboard_queue_pop

keyboard_queue_size:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _keyboard_queue_size_start
_keyboard_queue_size_ref_pos:
_keyboard_queue_size_module_ref:
    dd   _keyboard_ref

_keyboard_queue_size_start:
## line 44
    addi $t0, $zero, 256
    lw   $v0, _keyboard_queue_size_module_ref[_keyboard_queue_size_ref_pos]($ra)
    addi $v0, $v0, _key_queue_e[_keyboard_ref]
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _keyboard_queue_size_module_ref[_keyboard_queue_size_ref_pos]($ra)
    addi $v0, $v0, _key_queue_b[_keyboard_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t0, $v0
    addi $t0, $v0, 0
    andi $v0, $t0, 255

_keyboard_queue_size_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global keyboard_queue_size

keyboard_get:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _keyboard_get_start
_keyboard_get_ref_pos:
_keyboard_get_module_ref:
    dd   _keyboard_ref

_keyboard_get_start:
    addi $sp, $sp, -12
## line 53
    addi $t0, $fp, -12
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 54
_keyboard_get_1459913376:
    addi $v0, $zero, 1
    beq  $v0, $zero, _keyboard_get_1459915072
## line 55
_keyboard_get_1459913404:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  keyboard_queue_size
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _keyboard_get_1459913452
    beq  $zero, $zero, _keyboard_get_1459913404
_keyboard_get_1459913452:
## line 56
    addi $t0, $fp, -4
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  keyboard_queue_pop
    lw   $t0, 0($sp)
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 57
    addi $t0, $fp, -4
    lw   $v0, _keyboard_get_module_ref[_keyboard_get_ref_pos]($ra)
    addi $v0, $v0, _key_map[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 58
    lw   $v0, -12($fp)
    beq  $v0, $zero, _keyboard_get_1459913680
## line 59
    addi $t0, $fp, -4
    addi $t1, $zero, 0
    lw   $v0, -4($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 60
    addi $t0, $fp, -12
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
_keyboard_get_1459913680:
## line 63
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _keyboard_get_1459913736
    beq  $zero, $zero, _keyboard_get_1459915060
_keyboard_get_1459913736:
## line 64
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 240
    bne  $v0, $t0, _keyboard_get_1459913824
## line 64
    addi $t0, $fp, -12
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _keyboard_get_1459915056
_keyboard_get_1459913824:
## line 65
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 16
    bne  $v0, $t0, _keyboard_get_1459913912
## line 65
    lw   $v0, _keyboard_get_module_ref[_keyboard_get_ref_pos]($ra)
    addi $v0, $v0, _key_shift[_keyboard_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _keyboard_get_1459915052
_keyboard_get_1459913912:
## line 66
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, -16
    bne  $v0, $t0, _keyboard_get_1459914000
## line 66
    lw   $v0, _keyboard_get_module_ref[_keyboard_get_ref_pos]($ra)
    addi $v0, $v0, _key_shift[_keyboard_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _keyboard_get_1459915048
_keyboard_get_1459914000:
## line 67
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    bne  $v0, $t0, _keyboard_get_1459914088
## line 67
    lw   $v0, _keyboard_get_module_ref[_keyboard_get_ref_pos]($ra)
    addi $v0, $v0, _key_ctrl[_keyboard_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _keyboard_get_1459915044
_keyboard_get_1459914088:
## line 68
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, -17
    bne  $v0, $t0, _keyboard_get_1459914176
## line 68
    lw   $v0, _keyboard_get_module_ref[_keyboard_get_ref_pos]($ra)
    addi $v0, $v0, _key_ctrl[_keyboard_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _keyboard_get_1459915040
_keyboard_get_1459914176:
## line 70
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $t1, $v0
    beq  $v0, $zero, _keyboard_get_1459914272
    addi $t1, $zero, 0
    lw   $v0, -4($fp)
    sub  $v0, $t1, $v0
    beq  $zero, $zero, _keyboard_get_1459914288
_keyboard_get_1459914272:
    lw   $v0, -4($fp)
_keyboard_get_1459914288:
    sb   $v0, 0($t0)
## line 71
    lb   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 65
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _keyboard_get_1459914380
    and  $v0, $t0, $v0
    lb   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 90
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_keyboard_get_1459914380:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _keyboard_get_1459914564
## line 72
    addi $t0, $fp, -8
    lb   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  lowercase
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sb   $v0, 0($t0)
## line 73
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $t1, $v0
    beq  $v0, $zero, _keyboard_get_1459914540
    addi $t1, $zero, 0
    lb   $v0, -8($fp)
    sub  $v0, $t1, $v0
    beq  $zero, $zero, _keyboard_get_1459914556
_keyboard_get_1459914540:
    lb   $v0, -8($fp)
_keyboard_get_1459914556:
    sw   $v0, 0($t0)
_keyboard_get_1459914564:
## line 76
    lw   $v0, _keyboard_get_module_ref[_keyboard_get_ref_pos]($ra)
    addi $v0, $v0, _key_shift[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _keyboard_get_1459914660
    and  $v0, $t0, $v0
    lw   $v0, _keyboard_get_module_ref[_keyboard_get_ref_pos]($ra)
    addi $v0, $v0, _key_shift_map[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lb   $v0, -8($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
_keyboard_get_1459914660:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _keyboard_get_1459914868
## line 77
    addi $t0, $fp, -8
    lw   $v0, _keyboard_get_module_ref[_keyboard_get_ref_pos]($ra)
    addi $v0, $v0, _key_shift_map[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lb   $v0, -8($fp)
    addi $t2, $v0, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sb   $v0, 0($t0)
## line 78
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $t1, $v0
    beq  $v0, $zero, _keyboard_get_1459914844
    addi $t1, $zero, 0
    lb   $v0, -8($fp)
    sub  $v0, $t1, $v0
    beq  $zero, $zero, _keyboard_get_1459914860
_keyboard_get_1459914844:
    lb   $v0, -8($fp)
_keyboard_get_1459914860:
    sw   $v0, 0($t0)
_keyboard_get_1459914868:
## line 81
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, _keyboard_get_module_ref[_keyboard_get_ref_pos]($ra)
    addi $v0, $v0, _key_shift[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    sll  $v0, $t2, 28
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 82
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, _keyboard_get_module_ref[_keyboard_get_ref_pos]($ra)
    addi $v0, $v0, _key_ctrl[_keyboard_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    sll  $v0, $t2, 29
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 84
    lw   $v0, -4($fp)
    j    _keyboard_get_end
_keyboard_get_1459915040:
_keyboard_get_1459915044:
_keyboard_get_1459915048:
_keyboard_get_1459915052:
_keyboard_get_1459915056:
_keyboard_get_1459915060:
    beq  $zero, $zero, _keyboard_get_1459913376
_keyboard_get_1459915072:

_keyboard_get_end:
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global keyboard_get
