#include "macros.asm"

@global DISP_BASE_ADDR
    dd 0x40000000

@def disp_get_base_addr
    lw @retval, @&DISP_BASE_ADDR
@enddef

@def disp_calc_addr
    @param x
    @param y

    sll @retval, @y, 7
    @call mul, @retval, 5
    add @retval, @retval, @x
    sll @retval, @retval, 2
    add @retval, @retval, @DISP_BASE_ADDR
@enddef

@def disp_fill_rect_unsafe
    @param x
    @param y
    @param width
    @param height
    @param color

_disp_fill_rect_unsafe_loop_begin:
    beq @height, @zero, _disp_fill_rect_unsafe_end
    @call disp_draw_line_unsafe, @x, @y, @width, @color
    addi @tmp, @y, 1
    sw @tmp, @&y
    addi @tmp, @height, -1
    sw @tmp, @&height
    j _disp_fill_rect_unsafe_loop_begin
@enddef

@def disp_draw_line_unsafe
    @param x
    @param y
    @param len
    @param color

    @call disp_calc_addr, @x, @y

    move(@tc, @color)
    move(@tl, @len)

    addi @tn, @tl, 7
    srl @tn, @tn, 3
    andi @label, @tl, 7

    sll @label, @label, 2
    addi @label, @label, _disp_draw_line_unsafe_label_table
    lw @label, 0(@label)
    jr @label

_disp_draw_line_unsafe_label_table:
    dd _disp_draw_line_unsafe_case_0
    dd _disp_draw_line_unsafe_case_1
    dd _disp_draw_line_unsafe_case_2
    dd _disp_draw_line_unsafe_case_3
    dd _disp_draw_line_unsafe_case_4
    dd _disp_draw_line_unsafe_case_5
    dd _disp_draw_line_unsafe_case_6
    dd _disp_draw_line_unsafe_case_7

_disp_draw_line_unsafe_loop_begin:
_disp_draw_line_unsafe_case_0:
    sh @tc, 0(@retval)
    addi @retval, @retval, 4
_disp_draw_line_unsafe_case_7:
    sh @tc, 0(@retval)
    addi @retval, @retval, 4
_disp_draw_line_unsafe_case_6:
    sh @tc, 0(@retval)
    addi @retval, @retval, 4
_disp_draw_line_unsafe_case_5:
    sh @tc, 0(@retval)
    addi @retval, @retval, 4
_disp_draw_line_unsafe_case_4:
    sh @tc, 0(@retval)
    addi @retval, @retval, 4
_disp_draw_line_unsafe_case_3:
    sh @tc, 0(@retval)
    addi @retval, @retval, 4
_disp_draw_line_unsafe_case_2:
    sh @tc, 0(@retval)
    addi @retval, @retval, 4
_disp_draw_line_unsafe_case_1:
    sh @tc, 0(@retval)
    addi @retval, @retval, 4

    addi @tn, @tn, -1
    bne @tn, @zero, _disp_draw_line_unsafe_loop_begin
@enddef

@def disp_draw_byte_mask_unsafe
    @param x
    @param y
    @param mask
    @param color
    @param bg_color

    @call disp_calc_addr, @x, @y

    move(@tc, @color)
    move(@tb, @bg_color)
    move(@tm, @mask)

    sh   @tb, 0(@retval)
    andi @compare_result, @tm, 0x80
    beq  @compare_result, @zero, 1
    sh   @tc, 0(@retval)
    addi @retval, @retval, 4

    sh   @tb, 0(@retval)
    andi @compare_result, @tm, 0x40
    beq  @compare_result, @zero, 1
    sh   @tc, 0(@retval)
    addi @retval, @retval, 4

    sh   @tb, 0(@retval)
    andi @compare_result, @tm, 0x20
    beq  @compare_result, @zero, 1
    sh   @tc, 0(@retval)
    addi @retval, @retval, 4

    sh   @tb, 0(@retval)
    andi @compare_result, @tm, 0x10
    beq  @compare_result, @zero, 1
    sh   @tc, 0(@retval)
    addi @retval, @retval, 4

    sh   @tb, 0(@retval)
    andi @compare_result, @tm, 0x08
    beq  @compare_result, @zero, 1
    sh   @tc, 0(@retval)
    addi @retval, @retval, 4

    sh   @tb, 0(@retval)
    andi @compare_result, @tm, 0x04
    beq  @compare_result, @zero, 1
    sh   @tc, 0(@retval)
    addi @retval, @retval, 4

    sh   @tb, 0(@retval)
    andi @compare_result, @tm, 0x02
    beq  @compare_result, @zero, 1
    sh   @tc, 0(@retval)
    addi @retval, @retval, 4

    sh   @tb, 0(@retval)
    andi @compare_result, @tm, 0x01
    beq  @compare_result, @zero, 1
    sh   @tc, 0(@retval)
    addi @retval, @retval, 4
    
@enddef
