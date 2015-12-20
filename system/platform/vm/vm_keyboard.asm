#include "../../basic_level/macros.asm"

@global KEYBOARD_KEYCODE
    dd 0x60000000

@def keyboard_int_handler
    lw @keycode, 0(@KEYBOARD_KEYCODE)
    @call keyboard_queue_push @keycode
@enddef
