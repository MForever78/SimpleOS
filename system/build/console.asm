_console_ref:

console_rows:
    dd 0
.global console_rows

console_cols:
    dd 0
.global console_cols

console_color:
    dd 0
.global console_color

console_bg_color:
    dd 0
.global console_bg_color

console_waitting:
    dd 0
.global console_waitting

console_cursor_state:
    dd 0
.global console_cursor_state

console_init:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _console_init_start
_console_init_ref_pos:
_console_init_module_ref:
    dd   _console_ref

_console_init_start:
## line 13
    lw   $v0, _console_init_module_ref[_console_init_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 14
    lw   $v0, _console_init_module_ref[_console_init_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 15
    lw   $v0, _console_init_module_ref[_console_init_ref_pos]($ra)
    addi $v0, $v0, console_color[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 4095
    sw   $v0, 0($t0)
## line 16
    lw   $v0, _console_init_module_ref[_console_init_ref_pos]($ra)
    addi $v0, $v0, console_bg_color[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 17
    lw   $v0, _console_init_module_ref[_console_init_ref_pos]($ra)
    addi $v0, $v0, console_waitting[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 19
    addi $v0, $zero, 0

_console_init_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global console_init

console_scroll_up_screen:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _console_scroll_up_screen_start
_console_scroll_up_screen_ref_pos:
_console_scroll_up_screen_module_ref:
    dd   _console_ref

_console_scroll_up_screen_start:
    addi $sp, $sp, -4
## line 28
    addi $t0, $fp, -4
    addi $t1, $zero, 16384
    sll  $v0, $t1, 16
    sw   $v0, 0($t0)
## line 29
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 320
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $t2, $zero, 9280
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
## line 31
    lw   $v0, _console_scroll_up_screen_module_ref[_console_scroll_up_screen_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 28
    sw   $v0, 0($t0)
## line 32
    lw   $v0, _console_scroll_up_screen_module_ref[_console_scroll_up_screen_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)

_console_scroll_up_screen_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global console_scroll_up_screen

console_draw_cursor:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _console_draw_cursor_start
_console_draw_cursor_ref_pos:
_console_draw_cursor_module_ref:
    dd   _console_ref

_console_draw_cursor_start:
## line 38
    lw   $v0, _console_draw_cursor_module_ref[_console_draw_cursor_ref_pos]($ra)
    addi $v0, $v0, console_cursor_state[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 39
    lw   $v0, _console_draw_cursor_module_ref[_console_draw_cursor_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _console_draw_cursor_module_ref[_console_draw_cursor_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _console_draw_cursor_module_ref[_console_draw_cursor_ref_pos]($ra)
    addi $v0, $v0, console_cursor_state[_console_ref]
    lw   $v0, 0($v0)
    beq  $v0, $zero, _console_draw_cursor_1459913212
    addi $v0, $zero, 95
    beq  $zero, $zero, _console_draw_cursor_1459913224
_console_draw_cursor_1459913212:
    addi $v0, $zero, 32
_console_draw_cursor_1459913224:
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

_console_draw_cursor_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global console_draw_cursor

console_toggle_cursor:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _console_toggle_cursor_start
_console_toggle_cursor_ref_pos:
_console_toggle_cursor_module_ref:
    dd   _console_ref

_console_toggle_cursor_start:
## line 49
    lw   $v0, _console_toggle_cursor_module_ref[_console_toggle_cursor_ref_pos]($ra)
    addi $v0, $v0, console_cursor_state[_console_ref]
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    lw   $v0, _console_toggle_cursor_module_ref[_console_toggle_cursor_ref_pos]($ra)
    addi $v0, $v0, console_cursor_state[_console_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 50
    lw   $v0, _console_toggle_cursor_module_ref[_console_toggle_cursor_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _console_toggle_cursor_module_ref[_console_toggle_cursor_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _console_toggle_cursor_module_ref[_console_toggle_cursor_ref_pos]($ra)
    addi $v0, $v0, console_cursor_state[_console_ref]
    lw   $v0, 0($v0)
    beq  $v0, $zero, _console_toggle_cursor_1459913372
    addi $v0, $zero, 95
    beq  $zero, $zero, _console_toggle_cursor_1459913384
_console_toggle_cursor_1459913372:
    addi $v0, $zero, 32
_console_toggle_cursor_1459913384:
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

_console_toggle_cursor_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global console_toggle_cursor

console_return_line:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _console_return_line_start
_console_return_line_ref_pos:
_console_return_line_module_ref:
    dd   _console_ref

_console_return_line_start:
## line 61
    lw   $v0, _console_return_line_module_ref[_console_return_line_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 29
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    beq  $v0, $zero, _console_return_line_1459913500
## line 62
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  console_scroll_up_screen
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _console_return_line_1459913536
_console_return_line_1459913500:
## line 65
    lw   $v0, _console_return_line_module_ref[_console_return_line_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
_console_return_line_1459913536:

_console_return_line_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global console_return_line

console_backspace:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _console_backspace_start
_console_backspace_ref_pos:
_console_backspace_module_ref:
    dd   _console_ref

_console_backspace_start:
## line 72
    lw   $v0, _console_backspace_module_ref[_console_backspace_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    lw   $v0, 0($v0)
    beq  $v0, $zero, _console_backspace_1459913704
## line 73
    lw   $v0, _console_backspace_module_ref[_console_backspace_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _console_backspace_module_ref[_console_backspace_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 32
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
## line 78
    lw   $v0, _console_backspace_module_ref[_console_backspace_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 79
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  console_draw_cursor
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _console_backspace_1459913900
_console_backspace_1459913704:
## line 81
    lw   $v0, _console_backspace_module_ref[_console_backspace_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    lw   $v0, 0($v0)
    beq  $v0, $zero, _console_backspace_1459913896
## line 82
    lw   $v0, _console_backspace_module_ref[_console_backspace_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _console_backspace_module_ref[_console_backspace_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 32
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
## line 87
    lw   $v0, _console_backspace_module_ref[_console_backspace_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 88
    lw   $v0, _console_backspace_module_ref[_console_backspace_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 79
    sw   $v0, 0($t0)
## line 89
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  console_draw_cursor
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_console_backspace_1459913896:
_console_backspace_1459913900:

_console_backspace_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global console_backspace

console_print_str:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _console_print_str_start
_console_print_str_ref_pos:
_console_print_str_module_ref:
    dd   _console_ref

_console_print_str_start:
    addi $sp, $sp, -12
## line 100
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _console_print_str_1459913968
## line 100
    addi $v0, $zero, 0
    j    _console_print_str_end
_console_print_str_1459913968:
## line 101
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 10
    bne  $v0, $t0, _console_print_str_1459914084
## line 103
    lw   $v0, _console_print_str_module_ref[_console_print_str_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _console_print_str_module_ref[_console_print_str_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 32
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
_console_print_str_1459914084:
## line 110
    addi $t0, $fp, -4
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 111
_console_print_str_1459914128:
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    slt  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _console_print_str_1459914296
    and  $v0, $t0, $v0
    addi $t0, $fp, -12
    addi $t1, $fp, 8
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    lb   $v0, 0($v0)
    sb   $v0, 0($t0)
    addi $t0, $v0, 0
_console_print_str_1459914296:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _console_print_str_1459914948
## line 112
    lb   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 10
    bne  $v0, $t0, _console_print_str_1459914384
## line 113
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  console_return_line
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _console_print_str_1459914936
_console_print_str_1459914384:
## line 115
    lb   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    bne  $v0, $t0, _console_print_str_1459914768
## line 116
    addi $t0, $fp, -8
    lw   $v0, _console_print_str_module_ref[_console_print_str_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 8
    addi $t1, $v0, 0
    andi $v0, $t1, -8
    addi $t1, $v0, 0
    lw   $v0, _console_print_str_module_ref[_console_print_str_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 117
_console_print_str_1459914528:
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    beq  $v0, $zero, _console_print_str_1459914756
## line 118
    lw   $v0, _console_print_str_module_ref[_console_print_str_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _console_print_str_module_ref[_console_print_str_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 32
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
## line 123
    lw   $v0, _console_print_str_module_ref[_console_print_str_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 80
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    beq  $v0, $zero, _console_print_str_1459914744
## line 124
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  console_return_line
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_console_print_str_1459914744:
    beq  $zero, $zero, _console_print_str_1459914528
_console_print_str_1459914756:
    beq  $zero, $zero, _console_print_str_1459914932
_console_print_str_1459914768:
## line 129
    lw   $v0, _console_print_str_module_ref[_console_print_str_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _console_print_str_module_ref[_console_print_str_ref_pos]($ra)
    addi $v0, $v0, console_rows[_console_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lb   $v0, -12($fp)
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
## line 134
    lw   $v0, _console_print_str_module_ref[_console_print_str_ref_pos]($ra)
    addi $v0, $v0, console_cols[_console_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 80
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    beq  $v0, $zero, _console_print_str_1459914928
## line 135
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  console_return_line
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_console_print_str_1459914928:
_console_print_str_1459914932:
_console_print_str_1459914936:
    beq  $zero, $zero, _console_print_str_1459914128
_console_print_str_1459914948:
## line 139
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  console_draw_cursor
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 140
    lw   $v0, -4($fp)

_console_print_str_end:
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global console_print_str

console_read_char:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _console_read_char_start
_console_read_char_ref_pos:
_console_read_char_module_ref:
    dd   _console_ref

_console_read_char_start:
    addi $sp, $sp, -4
## line 147
    lw   $v0, _console_read_char_module_ref[_console_read_char_ref_pos]($ra)
    addi $v0, $v0, console_waitting[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 148
    addi $t0, $fp, -4
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  keyboard_get
    lw   $t0, 0($sp)
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 149
    lw   $v0, _console_read_char_module_ref[_console_read_char_ref_pos]($ra)
    addi $v0, $v0, console_waitting[_console_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 150
    lw   $v0, -4($fp)

_console_read_char_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global console_read_char
