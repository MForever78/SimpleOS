#include "macros.asm"

@global DISP_BASE_ADDR
    dd 0x40000000

@def disp_calc_addr
    @param x
    @param y

    sll @retval, @y, 10     # multiply y by 1024
    add @retval, @retval, @x
    sll @retval, @retval, 1
    add @retval, @retval, @DISP_BASE_ADDR
@enddef

@def disp_draw_line_unsafe
    @param x
    @param y
    @param len
    @param color

    @call disp_calc_addr, @x, @y

    move(@tc, @color)
    move(@tl, @len)

_disp_draw_line_unsafe_loop_begin:
    beq @tl, @zero, _disp_draw_line_unsafe_end
    sh @tc, 0(@retval)
    addi @retval, @retval, 1
    addi @tl, @tl, -1
    j _disp_draw_line_unsafe_loop_begin

@enddef
