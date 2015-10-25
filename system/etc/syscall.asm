_keyboard_buff:
    size 256
@global _keyboard_in_ptr
        dd _keyboard_buff
@global _keyboard_out_ptr
        dd _keyboard_buff

_routine_keyboard_input:

    lw      @input_ptr, @_keyboard_in_ptr
    lw      @output_ptr, @_keyboard_out_ptr
    addi    @input_ptr, 1
    beq     @input_ptr, @output_ptr, _keyboard_buff_full
    ## buffer not full, save code from keyboard
    addi    @input_ptr, -1
    ## read scan code from keyboard
    lli(@addr, ADDR_KEYBOARD)
    lw      @scan_code, 0(@addr)
    ## save scan code to buffer
    sw      @scan_code, 0(@input_ptr)
    ## move input pointer
    addi    @input_ptr, 1
    sw      @input_ptr, @&_keyboard_in_ptr

    ## if buffer is full, do nothing (maybe ring a bell?)
_keyboard_buff_full:
    eret

