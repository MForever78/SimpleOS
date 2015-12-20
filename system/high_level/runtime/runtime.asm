#include "../../basic_level/macros.asm"

@def _actual_exec
    @param addr

    jalr @addr, $ra
@enddef
