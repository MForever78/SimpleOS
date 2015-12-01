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
_mod_loop_start:
    slt @compare_result, @retval, @tb
    bne @compare_result, @zero, _mod_end
    sub @retval, @retval, @tb
    j _mod_loop_start
@enddef

@def div
    @param a
    @param b

    move(@retval, @zero)
    move(@ta, @a)
    move(@tb, @b)
_div_loop_start:
    slt @compare_result, @ta, @tb
    bne @compare_result, @zero, _div_end
    addi @retval, @retval, 1
    sub @ta, @ta, @tb
    j _div_loop_start
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
