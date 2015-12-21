#include "macros.asm"

int_reboot:
int0:
    j _init

int_clock:
int1:
    dd int_nop

int_keyboard:
int2:
    dd int_nop

int3:
    dd int_nop

int4:
    dd int_nop

int5:
    dd int_universal_handler

int6:
    dd int_nop

int7:
    dd int_nop

int8:
    dd int_nop

int9:
    dd int_nop

int10:
    dd int_nop

int11:
    dd int_nop

int12:
    dd int_nop

int13:
    dd int_nop

int14:
    dd int_nop

int15:
    dd int_nop

int16:
    dd int_nop

int17:
    dd int_nop

int18:
    dd int_nop

int19:
    dd int_nop

int20:
    dd int_nop

int21:
    dd int_nop

int22:
    dd int_nop

int23:
    dd int_nop

int24:
    dd int_nop

int25:
    dd int_nop

int26:
    dd int_nop

int27:
    dd int_nop

int28:
    dd int_nop

int29:
    dd int_nop

int30:
    dd int_nop

int31:
    dd int_nop

int32:
    dd int_nop

int33:
    dd int_nop

int34:
    dd int_nop

int35:
    dd int_nop

int36:
    dd int_nop

int37:
    dd int_nop

int38:
    dd int_nop

int39:
    dd int_nop

int40:
    dd int_nop

int_nop:
    mfco $k0, 12
    srl $k0, $k0, 16
    mtco $k0, 12
    eret

int_universal_handler:
    addi    $sp, $sp, -128
    sw      $1, 0($sp)
    sw      $2, 4($sp)
    sw      $3, 8($sp)
    sw      $4, 12($sp)
    sw      $5, 16($sp)
    sw      $6, 20($sp)
    sw      $7, 24($sp)
    sw      $8, 28($sp)
    sw      $9, 32($sp)
    sw      $10, 36($sp)
    sw      $11, 40($sp)
    sw      $12, 44($sp)
    sw      $13, 48($sp)
    sw      $14, 52($sp)
    sw      $15, 56($sp)
    sw      $16, 60($sp)
    sw      $17, 64($sp)
    sw      $18, 68($sp)
    sw      $19, 72($sp)
    sw      $20, 76($sp)
    sw      $21, 80($sp)
    sw      $22, 84($sp)
    sw      $23, 88($sp)
    sw      $24, 92($sp)
    sw      $25, 96($sp)
    sw      $26, 100($sp)
    sw      $27, 104($sp)
    sw      $28, 108($sp)
    sw      $29, 112($sp)
    sw      $30, 116($sp)
    sw      $31, 120($sp)
    mfco    $t0, CP0_EPC
    sw      $t0, 124($sp)

    mfco    $t0, CP0_CAUSE
    addi    $gp, $zero, 0

    ## re-enable interrupt
    mfco    $t1, CP0_STATUS
    srl     $t1, $t1, 16
    mtco    $t1, CP0_STATUS

    sll     $t0, $t0, 2
    addi    $t0, $t0, INTERRUPT_TABLE
    lw      $t0, 0($t0)
    jalr    $t0, $ra

    lw      $t0, 124($sp)
    mtco    $t0, CP0_EPC
    lw      $1, 0($sp)
    lw      $2, 4($sp)
    lw      $3, 8($sp)
    lw      $4, 12($sp)
    lw      $5, 16($sp)
    lw      $6, 20($sp)
    lw      $7, 24($sp)
    lw      $8, 28($sp)
    lw      $9, 32($sp)
    lw      $10, 36($sp)
    lw      $11, 40($sp)
    lw      $12, 44($sp)
    lw      $13, 48($sp)
    lw      $14, 52($sp)
    lw      $15, 56($sp)
    lw      $16, 60($sp)
    lw      $17, 64($sp)
    lw      $18, 68($sp)
    lw      $19, 72($sp)
    lw      $20, 76($sp)
    lw      $21, 80($sp)
    lw      $22, 84($sp)
    lw      $23, 88($sp)
    lw      $24, 92($sp)
    lw      $25, 96($sp)
    lw      $26, 100($sp)
    lw      $27, 104($sp)
    lw      $28, 108($sp)
    lw      $29, 112($sp)
    lw      $30, 116($sp)
    lw      $31, 120($sp)
    addi    $sp, $sp, 128
    eret

INTERRUPT_TABLE:
I0:     dd  int_handler_nop
I1:     dd  int_handler_nop
I2:     dd  int_handler_nop
I3:     dd  int_handler_nop
I4:     dd  int_handler_nop
I5:     dd  keyboard_int_handler
I6:     dd  int_handler_nop
I7:     dd  int_handler_nop
I8:     dd  int_handler_nop
I9:     dd  int_handler_nop
I10:    dd  int_handler_nop
I11:    dd  int_handler_nop
I12:    dd  int_handler_nop
I13:    dd  int_handler_nop
I14:    dd  int_handler_nop
I15:    dd  int_handler_nop
I16:    dd  int_handler_nop
I17:    dd  int_handler_nop
I18:    dd  int_handler_nop
I19:    dd  int_handler_nop
I20:    dd  int_handler_nop
I21:    dd  int_handler_nop
I22:    dd  int_handler_nop
I23:    dd  int_handler_nop
I24:    dd  int_handler_nop
I25:    dd  int_handler_nop
I26:    dd  int_handler_nop
I27:    dd  int_handler_nop
I28:    dd  int_handler_nop
I29:    dd  int_handler_nop
I30:    dd  int_handler_nop

int_handler_nop:
    jr $ra

