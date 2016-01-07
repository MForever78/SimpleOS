#include "macros.asm"

    j _init
    dd int_universal_handler

int_universal_handler:
    addi    $sp, $sp, -132
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
    sw      $t0, 128($sp)

    addi    $gp, $zero, 0

##    mfco    $t1, CP0_STATUS
##    srl     $t1, $t1, 16
##
##    slti    $k0, $t0, 8
##    beq     $k0, $zero, _int_restore_status
##
##    addi    $k0, $zero, 1
##    sllv    $k0, $k0, $t0
##    nor     $k0, $k0, $zero
##    and     $t1, $t1, $k0
##
##    ## re-enable interrupt
##_int_restore_status:
##    mtco    $t1, CP0_STATUS

    sll     $t0, $t0, 2
    addi    $t0, $t0, INTERRUPT_TABLE
    lw      $t0, 0($t0)
    jalr    $t0, $ra

    lw      $t0, 128($sp)
    slti    $t0, $t0, 8
    bne     $t0, $zero, _int_dont_set_v0
    sw      $v0, 4($sp)

_int_dont_set_v0:
##    mfco    $t1, CP0_STATUS
##
##    lw      $t0, 128($sp)
##    slti    $k0, $t0, 8
##    beq     $k0, $zero, _int_dont_renable_status
##
##    addi    $k0, $zero, 1
##    sllv    $k0, $k0, $t0
##    or      $t1, $t1, $k0
##
##_int_dont_renable_status:
##    sll     $t1, $t1, 16
##    mtco    $t1, CP0_STATUS

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
    addi    $sp, $sp, 132
    eret

INTERRUPT_TABLE:
I0:     dd  int_handler_nop
I1:     dd  int_handler_nop
I2:     dd  int_handler_nop
I3:     dd  keyboard_int_handler
I4:     dd  int_handler_nop
I5:     dd  int_handler_nop
I6:     dd  int_handler_nop
I7:     dd  int_handler_nop
I8:     dd  reboot_int_handler
I9:     dd  sleep_int_handler
I10:    dd  print_str_handler
I11:    dd  get_char_handler
I12:    dd  get_line_handler
I13:    dd  open_file_handler
I14:    dd  create_file_handler
I15:    dd  read_file_handler
I16:    dd  write_file_handler
I17:    dd  close_file_handler
I18:    dd  mkdir_handler
I19:    dd  unlink_handler
I20:    dd  system_handler
I21:    dd  malloc_handler
I22:    dd  free_handler
I23:    dd  get_cwd_handler
I24:    dd  change_dir_handler
I25:    dd  get_cmd_handler
I26:    dd  get_env_error_handler
I27:    dd  int_handler_nop
I28:    dd  int_handler_nop
I29:    dd  int_handler_nop
I30:    dd  int_handler_nop
I31:    dd  int_handler_nop

int_handler_nop:
    jr $ra

reboot_int_handler:
    ## disable interrupt
    mfco    $t1, CP0_STATUS
    sll     $t1, $t1, 16
    mtco    $t1, CP0_STATUS

    addi    $1, $0, 0
    addi    $2, $0, 0
    addi    $3, $0, 0
    addi    $4, $0, 0
    addi    $5, $0, 0
    addi    $6, $0, 0
    addi    $7, $0, 0
    addi    $8, $0, 0
    addi    $9, $0, 0
    addi    $10, $0, 0
    addi    $11, $0, 0
    addi    $12, $0, 0
    addi    $13, $0, 0
    addi    $14, $0, 0
    addi    $15, $0, 0
    addi    $16, $0, 0
    addi    $17, $0, 0
    addi    $18, $0, 0
    addi    $19, $0, 0
    addi    $20, $0, 0
    addi    $21, $0, 0
    addi    $22, $0, 0
    addi    $23, $0, 0
    addi    $24, $0, 0
    addi    $25, $0, 0
    addi    $26, $0, 0
    addi    $27, $0, 0
    addi    $28, $0, 0
    addi    $29, $0, 0
    addi    $30, $0, 0
    addi    $31, $0, 0
    jr      $0

sleep_int_handler:
    ## TODO
    jr $ra

@def print_str_handler
    @local str
    @local len
    move(@str, $a0)
    move(@len, $a1)

    @call console_print_str, @str, @len
@enddef

@def get_char_handler
    jal     getchar
@enddef

@def get_line_handler
    addi    $sp, $sp, -4
    sw      $a1, 0($sp)
    addi    $sp, $sp, -4
    sw      $a0, 0($sp)
    jal     getline
    addi    $sp, $sp, 8
@enddef

@def open_file_handler
    @local path
    @local buf

    move(@path, $a0)
    @call malloc, 256
    move(@buf, @retval)

    @call get_cwd
    @call strcpy, @buf, @retval
    @call resolve_relative_path, @buf, @path
    @call fat16_open_file, @buf
@enddef

@def create_file_handler
    @local path
    @local buf

    move(@path, $a0)
    @call malloc, 256
    move(@buf, @retval)

    @call get_cwd
    @call strcpy, @buf, @retval
    @call resolve_relative_path, @buf, @path
    @call fat16_create_file, @buf
@enddef

@def read_file_handler
    @local fd
    @local buf
    @local start
    @local length

    move(@fd, $a0)
    move(@buf, $a1)
    move(@start, $a2)
    move(@length, $a3)
    @call fat16_read_file, @fd, @start, @length, @buf
@enddef

@def write_file_handler
    @local fd
    @local buf
    @local start
    @local length

    move(@fd, $a0)
    move(@buf, $a1)
    move(@start, $a2)
    move(@length, $a3)
    @call fat16_write_file, @fd, @start, @length, @buf
@enddef

@def close_file_handler
    @local fd

    move(@fd, $a0)
    @call fat16_close_file, @fd
@enddef

mkdir_handler:
    jr      $ra

unlink_handler:
    jr      $ra

system_handler:
    jr      $ra

@def malloc_handler
    addi    $sp, $sp, -4
    sw      $a0, 0($sp)
    jal     malloc
    addi    $sp, $sp, 4
@enddef

@def free_handler
    addi    $sp, $sp, -4
    sw      $a0, 0($sp)
    jal     free
    addi    $sp, $sp, 4
@enddef

@def get_cwd_handler
    @local buf
    move(@buf, $a0)
    
    @call get_cwd
    @call strcpy, @buf, @retval
@enddef

@def change_dir_handler
    @local rel
    move(@rel, $a0)

    @call change_dir, @rel
@enddef

@def get_cmd_handler
    @local buf
    move(@buf, $a0)

    @call get_cmd
    @call strcpy, @buf, @retval
@enddef

@def get_env_error_handler
    @call get_env_error
@enddef
