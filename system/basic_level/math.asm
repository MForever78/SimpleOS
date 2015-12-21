#include "macros.asm"

@def mul
    @param a
    @param b

    move(@ta, @a)
    slt @compare_result, @ta, @b
    beq @compare_result, @zero, _mul_after_swap
    sw @b, @&a
    sw @ta, @&b
_mul_after_swap:
    move(@retval, @zero)
    move(@ta, @a)
    move(@tb, @b)

    slt @compare_result, @tb, @zero
    beq @compare_result, @zero, _mul_loop_start

    sub @tb, @zero, @tb
    @call mul, @ta, @tb
    sub @retval, @zero, @retval
    @return

_mul_loop_start:
    beq @tb, @zero, _mul_end
    add @retval, @retval, @ta
    addi @tb, @tb, -1
    j _mul_loop_start
@enddef # mul

@def mod
    @param a
    @param b

    move(@retval, @a)
    move(@tb, @b)
    move(@lb, @b)

    j _mod_adjust_loop_cmp
_mod_adjust_loop_begin:
    sll @tb, @tb, 1
_mod_adjust_loop_cmp:
    slt @compare_result, @retval, @tb
    beq @compare_result, @zero, _mod_adjust_loop_begin

    beq @tb, @lb, _mod_end

_mod_loop_begin:
    srl @tb, @tb, 1
    slt @compare_result, @retval, @tb
    bne @compare_result, @zero, _mod_dont_sub
    sub @retval, @retval, @tb
_mod_dont_sub:
    bne @tb, @lb, _mod_loop_begin
@enddef

@def div
    @param a
    @param b

    move(@retval, @zero)
    move(@ta, @a)
    move(@tb, @b)
    move(@lb, @b)
    li(@i, 1)

    j _div_adjust_loop_cmp
_div_adjust_loop_begin:
    sll @tb, @tb, 1
    sll @i, @i, 1
_div_adjust_loop_cmp:
    slt @compare_result, @ta, @tb
    beq @compare_result, @zero, _div_adjust_loop_begin

    beq @tb, @lb, _div_end

_div_loop_begin:
    srl @tb, @tb, 1
    srl @i, @i, 1
    slt @compare_result, @ta, @tb
    bne @compare_result, @zero, _div_dont_sub
    sub @ta, @ta, @tb
    or @retval, @retval, @i
_div_dont_sub:
    bne @tb, @lb, _div_loop_begin
@enddef

@def max
    @param a
    @param b
    
    slt @compare_result, @a, @b
    beq @compare_result, @zero, _max_a_is_greater
    move(@retval, @b)
    @return
_max_a_is_greater:
    move(@retval, @a)
    @return
@enddef

@def min
    @param a
    @param b
    
    slt @compare_result, @a, @b
    beq @compare_result, @zero, _min_a_is_greater
    move(@retval, @a)
    @return
_min_a_is_greater:
    move(@retval, @b)
@enddef

@def subabs
    @param a
    @param b

    slt @compare_result, @a, @b
    beq @compare_result, @zero, _subabs_a_is_greater
    sub @retval, @b, @a
    @return

_subabs_a_is_greater:
    sub @retval, @a, @b
@enddef
