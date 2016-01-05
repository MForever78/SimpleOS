#include "../../basic_level/macros.asm"

@def keyboard_int_handler
    lui @key_addr, 0x6000
    lw @keycode, 0(@key_addr)
    @call keyboard_queue_push @keycode
@enddef
