#include "../../basic_level/macros.asm"

@def _actual_exec
    @param addr

    move($gp, @addr)
    jalr @addr, $ra
    move($gp, $zero)
@enddef
