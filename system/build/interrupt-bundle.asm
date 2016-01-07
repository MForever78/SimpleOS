# 1 "interrupt.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "interrupt.asm"
# 1 "macros.asm" 1
# 2 "interrupt.asm" 2

    j _init
    dd int_universal_handler

int_universal_handler:
    addi $sp, $sp, -132
    sw $1, 0($sp)
    sw $2, 4($sp)
    sw $3, 8($sp)
    sw $4, 12($sp)
    sw $5, 16($sp)
    sw $6, 20($sp)
    sw $7, 24($sp)
    sw $8, 28($sp)
    sw $9, 32($sp)
    sw $10, 36($sp)
    sw $11, 40($sp)
    sw $12, 44($sp)
    sw $13, 48($sp)
    sw $14, 52($sp)
    sw $15, 56($sp)
    sw $16, 60($sp)
    sw $17, 64($sp)
    sw $18, 68($sp)
    sw $19, 72($sp)
    sw $20, 76($sp)
    sw $21, 80($sp)
    sw $22, 84($sp)
    sw $23, 88($sp)
    sw $24, 92($sp)
    sw $25, 96($sp)
    sw $26, 100($sp)
    sw $27, 104($sp)
    sw $28, 108($sp)
    sw $29, 112($sp)
    sw $30, 116($sp)
    sw $31, 120($sp)
    mfco $t0, 3
    sw $t0, 124($sp)
    mfco $t0, 2
    sw $t0, 128($sp)

    addi $gp, $zero, 0

## mfco $t1, 1
## srl $t1, $t1, 16
##
## slti $k0, $t0, 8
## beq $k0, $zero, _int_restore_status
##
## addi $k0, $zero, 1
## sllv $k0, $k0, $t0
## nor $k0, $k0, $zero
## and $t1, $t1, $k0
##
## ## re-enable interrupt
##_int_restore_status:
## mtco $t1, 1

    sll $t0, $t0, 2
    addi $t0, $t0, INTERRUPT_TABLE
    lw $t0, 0($t0)
    jalr $t0, $ra

    lw $t0, 128($sp)
    slti $t0, $t0, 8
    bne $t0, $zero, _int_dont_set_v0
    sw $v0, 4($sp)

_int_dont_set_v0:
## mfco $t1, 1
##
## lw $t0, 128($sp)
## slti $k0, $t0, 8
## beq $k0, $zero, _int_dont_renable_status
##
## addi $k0, $zero, 1
## sllv $k0, $k0, $t0
## or $t1, $t1, $k0
##
##_int_dont_renable_status:
## sll $t1, $t1, 16
## mtco $t1, 1

    lw $t0, 124($sp)
    mtco $t0, 3
    lw $1, 0($sp)
    lw $2, 4($sp)
    lw $3, 8($sp)
    lw $4, 12($sp)
    lw $5, 16($sp)
    lw $6, 20($sp)
    lw $7, 24($sp)
    lw $8, 28($sp)
    lw $9, 32($sp)
    lw $10, 36($sp)
    lw $11, 40($sp)
    lw $12, 44($sp)
    lw $13, 48($sp)
    lw $14, 52($sp)
    lw $15, 56($sp)
    lw $16, 60($sp)
    lw $17, 64($sp)
    lw $18, 68($sp)
    lw $19, 72($sp)
    lw $20, 76($sp)
    lw $21, 80($sp)
    lw $22, 84($sp)
    lw $23, 88($sp)
    lw $24, 92($sp)
    lw $25, 96($sp)
    lw $26, 100($sp)
    lw $27, 104($sp)
    lw $28, 108($sp)
    lw $29, 112($sp)
    lw $30, 116($sp)
    lw $31, 120($sp)
    addi $sp, $sp, 132
    eret

INTERRUPT_TABLE:
I0: dd int_handler_nop
I1: dd int_handler_nop
I2: dd int_handler_nop
I3: dd keyboard_int_handler
I4: dd int_handler_nop
I5: dd int_handler_nop
I6: dd int_handler_nop
I7: dd int_handler_nop
I8: dd reboot_int_handler
I9: dd sleep_int_handler
I10: dd print_str_handler
I11: dd get_char_handler
I12: dd get_line_handler
I13: dd open_file_handler
I14: dd create_file_handler
I15: dd read_file_handler
I16: dd write_file_handler
I17: dd close_file_handler
I18: dd mkdir_handler
I19: dd unlink_handler
I20: dd system_handler
I21: dd malloc_handler
I22: dd free_handler
I23: dd get_cwd_handler
I24: dd change_dir_handler
I25: dd get_cmd_handler
I26: dd get_env_error_handler
I27: dd int_handler_nop
I28: dd int_handler_nop
I29: dd int_handler_nop
I30: dd int_handler_nop
I31: dd int_handler_nop

int_handler_nop:
    jr $ra

reboot_int_handler:
    ## disable interrupt
    mfco $t1, 1
    sll $t1, $t1, 16
    mtco $t1, 1

    addi $1, $0, 0
    addi $2, $0, 0
    addi $3, $0, 0
    addi $4, $0, 0
    addi $5, $0, 0
    addi $6, $0, 0
    addi $7, $0, 0
    addi $8, $0, 0
    addi $9, $0, 0
    addi $10, $0, 0
    addi $11, $0, 0
    addi $12, $0, 0
    addi $13, $0, 0
    addi $14, $0, 0
    addi $15, $0, 0
    addi $16, $0, 0
    addi $17, $0, 0
    addi $18, $0, 0
    addi $19, $0, 0
    addi $20, $0, 0
    addi $21, $0, 0
    addi $22, $0, 0
    addi $23, $0, 0
    addi $24, $0, 0
    addi $25, $0, 0
    addi $26, $0, 0
    addi $27, $0, 0
    addi $28, $0, 0
    addi $29, $0, 0
    addi $30, $0, 0
    addi $31, $0, 0
    jr $0

sleep_int_handler:
    ## TODO
    jr $ra

.global print_str_handler
print_str_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    addi $s0, $a0, 0
    addi $s1, $a1, 0

    addi $sp, $sp, -4
    sw $s1, 0($sp)
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal console_print_str
    addi $sp, $sp, 8

_print_str_handler_end:
    lw $s1, 0($sp)
    addi $sp, $sp, 4
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global get_char_handler
get_char_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    jal getchar

_get_char_handler_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global get_line_handler
get_line_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $a1, 0($sp)
    addi $sp, $sp, -4
    sw $a0, 0($sp)
    jal getline
    addi $sp, $sp, 8

_get_line_handler_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global open_file_handler
open_file_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    addi $sp, $sp, -4
    sw $s1, 0($sp)

    addi $s0, $a0, 0
    addi $at, $zero, 256
    addi $sp, $sp, -4
    sw $at, 0($sp)
    jal malloc
    addi $sp, $sp, 4
    addi $s1, $v0, 0

    jal get_cwd
    addi $sp, $sp, -4
    sw $v0, 0($sp)
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    jal strcpy
    addi $sp, $sp, 8
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    jal resolve_relative_path
    addi $sp, $sp, 8
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    jal fat16_open_file
    addi $sp, $sp, 4

_open_file_handler_end:
    lw $s1, 0($sp)
    addi $sp, $sp, 4
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global create_file_handler
create_file_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    addi $sp, $sp, -4
    sw $s1, 0($sp)

    addi $s0, $a0, 0
    addi $at, $zero, 256
    addi $sp, $sp, -4
    sw $at, 0($sp)
    jal malloc
    addi $sp, $sp, 4
    addi $s1, $v0, 0

    jal get_cwd
    addi $sp, $sp, -4
    sw $v0, 0($sp)
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    jal strcpy
    addi $sp, $sp, 8
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    jal resolve_relative_path
    addi $sp, $sp, 8
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    jal fat16_create_file
    addi $sp, $sp, 4

_create_file_handler_end:
    lw $s1, 0($sp)
    addi $sp, $sp, 4
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global read_file_handler
read_file_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    addi $sp, $sp, -4
    sw $s2, 0($sp)
    addi $sp, $sp, -4
    sw $s3, 0($sp)

    addi $s0, $a0, 0
    addi $s1, $a1, 0
    addi $s2, $a2, 0
    addi $s3, $a3, 0
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    addi $sp, $sp, -4
    sw $s3, 0($sp)
    addi $sp, $sp, -4
    sw $s2, 0($sp)
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal fat16_read_file
    addi $sp, $sp, 16

_read_file_handler_end:
    lw $s3, 0($sp)
    addi $sp, $sp, 4
    lw $s2, 0($sp)
    addi $sp, $sp, 4
    lw $s1, 0($sp)
    addi $sp, $sp, 4
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global write_file_handler
write_file_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    addi $sp, $sp, -4
    sw $s2, 0($sp)
    addi $sp, $sp, -4
    sw $s3, 0($sp)

    addi $s0, $a0, 0
    addi $s1, $a1, 0
    addi $s2, $a2, 0
    addi $s3, $a3, 0
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    addi $sp, $sp, -4
    sw $s3, 0($sp)
    addi $sp, $sp, -4
    sw $s2, 0($sp)
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal fat16_write_file
    addi $sp, $sp, 16

_write_file_handler_end:
    lw $s3, 0($sp)
    addi $sp, $sp, 4
    lw $s2, 0($sp)
    addi $sp, $sp, 4
    lw $s1, 0($sp)
    addi $sp, $sp, 4
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global close_file_handler
close_file_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)

    addi $s0, $a0, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal fat16_close_file
    addi $sp, $sp, 4

_close_file_handler_end:
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


mkdir_handler:
    jr $ra

unlink_handler:
    jr $ra

system_handler:
    jr $ra

.global malloc_handler
malloc_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $a0, 0($sp)
    jal malloc
    addi $sp, $sp, 4

_malloc_handler_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global free_handler
free_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $a0, 0($sp)
    jal free
    addi $sp, $sp, 4

_free_handler_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global get_cwd_handler
get_cwd_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    addi $s0, $a0, 0

    jal get_cwd
    addi $sp, $sp, -4
    sw $v0, 0($sp)
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal strcpy
    addi $sp, $sp, 8

_get_cwd_handler_end:
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global change_dir_handler
change_dir_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    addi $s0, $a0, 0

    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal change_dir
    addi $sp, $sp, 4

_change_dir_handler_end:
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global get_cmd_handler
get_cmd_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    addi $s0, $a0, 0

    jal get_cmd
    addi $sp, $sp, -4
    sw $v0, 0($sp)
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal strcpy
    addi $sp, $sp, 8

_get_cmd_handler_end:
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global get_env_error_handler
get_env_error_handler:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    jal get_env_error

_get_env_error_handler_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra



