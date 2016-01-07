_font_ref:

font_en:
    dd 0
.global font_en

font_zh:
    dd 0
.global font_zh

font_disp_en_char_unsafe:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _font_disp_en_char_unsafe_start
_font_disp_en_char_unsafe_ref_pos:
_font_disp_en_char_unsafe_module_ref:
    dd   _font_ref

_font_disp_en_char_unsafe_start:
    addi $sp, $sp, -4
## line 9
    addi $t0, $fp, -4
    addi $t1, $zero, 16384
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    sll  $v0, $t2, 4
    addi $t2, $v0, 0
    addi $v0, $zero, 5
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t3, $v0, 0
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t1, 8($sp)
    sw   $t3, 4($sp)
    sw   $t2, 0($sp)
    jal  mul
    lw   $t0, 12($sp)
    lw   $t1, 8($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t2, $v0, 0
    lw   $v0, 8($fp)
    add  $v0, $t2, $v0
    addi $t2, $v0, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 10
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lb   $v0, 16($fp)
    sw   $v0, 0($t0)

_font_disp_en_char_unsafe_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global font_disp_en_char_unsafe

font_disp_string_unsafe:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _font_disp_string_unsafe_start
_font_disp_string_unsafe_ref_pos:
_font_disp_string_unsafe_module_ref:
    dd   _font_ref

_font_disp_string_unsafe_start:
## line 16
_font_disp_string_unsafe_1459912900:
    addi $t0, $fp, 20
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    beq  $v0, $zero, _font_disp_string_unsafe_1459913140
## line 17
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    lw   $v0, 16($fp)
    lb   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  font_disp_en_char_unsafe
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 18
    addi $t0, $fp, 16
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 19
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 8
    sw   $v0, 0($t0)
    beq  $zero, $zero, _font_disp_string_unsafe_1459912900
_font_disp_string_unsafe_1459913140:

_font_disp_string_unsafe_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global font_disp_string_unsafe

font_disp_string_n_xy:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _font_disp_string_n_xy_start
_font_disp_string_n_xy_ref_pos:
_font_disp_string_n_xy_module_ref:
    dd   _font_ref

_font_disp_string_n_xy_start:
## line 26
    addi $t0, $fp, 20
    lw   $v0, 16($fp)
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
    addi $t1, $v0, 0
    lw   $v0, 20($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  min
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 27
    addi $t0, $fp, 20
    addi $t1, $zero, 80
    lw   $v0, 8($fp)
    sub  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, 20($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  min
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 28
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    lw   $v0, 16($fp)
    addi $t2, $v0, 0
    lw   $v0, 20($fp)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  font_disp_string_unsafe
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 29
    lw   $v0, 20($fp)

_font_disp_string_n_xy_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global font_disp_string_n_xy

font_disp_string_xy:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _font_disp_string_xy_start
_font_disp_string_xy_ref_pos:
_font_disp_string_xy_module_ref:
    dd   _font_ref

_font_disp_string_xy_start:
## line 34
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    lw   $v0, 16($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 128
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  font_disp_string_n_xy
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_font_disp_string_xy_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global font_disp_string_xy
