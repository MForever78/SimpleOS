#include "../../basic_level/macros.asm"

@def _enable_disk_interrupt
    mfco    $t0, CP0_STATUS
    ori     $t0, $t0, 2
    mtco    $t0, CP0_STATUS
@enddef
