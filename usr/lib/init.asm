#include "../../system/basic_level/macros.asm"

@def init
    sw      $sp, _init_stack($gp)
    @call   initc
@enddef

_init_stack:
    dd  0

@def exit
    @param code

    addi    @retval, @code, 0
    lw      $sp, _init_stack($gp)
@enddef
