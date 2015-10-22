
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

