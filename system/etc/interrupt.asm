## jump to init at the very begining
j   _init

## mem[4] is the address of the general interrupt handler
_general_interrupt_addr:
    dd _general_interrupt_handler
    
_general_interrupt_handler:
    ## save the world
    addi    $sp, $sp, -136
    sw      $0, 0($sp)
    sw      $1, 4($sp)
    sw      $2, 8($sp)
    sw      $3, 12($sp)
    sw      $4, 16($sp)
    sw      $5, 20($sp)
    sw      $6, 24($sp)
    sw      $7, 28($sp)
    sw      $8, 32($sp)
    sw      $9, 36($sp)
    sw      $10, 40($sp)
    sw      $11, 44($sp)
    sw      $12, 48($sp)
    sw      $13, 52($sp)
    sw      $14, 56($sp)
    sw      $15, 60($sp)
    sw      $16, 64($sp)
    sw      $17, 68($sp)
    sw      $18, 72($sp)
    sw      $19, 76($sp)
    sw      $20, 80($sp)
    sw      $21, 84($sp)
    sw      $22, 88($sp)
    sw      $23, 92($sp)
    sw      $24, 96($sp)
    sw      $25, 100($sp)
    sw      $26, 104($sp)
    sw      $27, 108($sp)
    sw      $28, 112($sp)
    sw      $29, 116($sp)
    sw      $30, 120($sp)
    sw      $31, 124($sp)
    mfc0    @status, 12
    mfc0    @cause, 13
    mfc0    @epc, 14
    sw      @status, 128($sp)
    sw      @cause, 132($sp)
    sw      @epc, 136($sp)
    
    ## renable interrupts
    srl     @status, 16
    mtc0    13, @status
    
    ## reset global pointer
    move($gp, $zero)

    ## jump to interrupt routine
    addi    @int_addr, @cause, int_base
    lw      @int_addr, 0(@int_addr)
    jalr    @int_addr
    
    ## restore the world
    lw      $0, 0($sp)
    lw      $1, 4($sp)
    lw      $2, 8($sp)
    lw      $3, 12($sp)
    lw      $4, 16($sp)
    lw      $5, 20($sp)
    lw      $6, 24($sp)
    lw      $7, 28($sp)
    lw      $8, 32($sp)
    lw      $9, 36($sp)
    lw      $10, 40($sp)
    lw      $11, 44($sp)
    lw      $12, 48($sp)
    lw      $13, 52($sp)
    lw      $14, 56($sp)
    lw      $15, 60($sp)
    lw      $16, 64($sp)
    lw      $17, 68($sp)
    lw      $18, 72($sp)
    lw      $19, 76($sp)
    lw      $20, 80($sp)
    lw      $21, 84($sp)
    lw      $22, 88($sp)
    lw      $23, 92($sp)
    lw      $24, 96($sp)
    lw      $25, 100($sp)
    lw      $26, 104($sp)
    lw      $27, 108($sp)
    lw      $28, 112($sp)
    lw      $29, 116($sp)
    lw      $30, 120($sp)
    lw      $31, 124($sp)
    lw      @status, 128($sp)
    lw      @cause, 132($sp)
    lw      @epc, 136($sp)
    mtc0    12, @status
    mtc0    13, @cause
    mtc0    14, @epc
    addi    $sp, $sp, 136

    ## interrupt return
    eret

int_base:
int_reboot:
int0:
    j _init

int_clock:
int1:
    dd 0

int_vga:
int2:
    dd 0

int_board:
int3:
    dd 0

int_keyboard:
int4:
    dd _routine_keyboard_input

int_uart:
int5:
    dd 0

int_spi:
int6:
    dd 0

