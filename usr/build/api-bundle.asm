# 1 "api.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "api.asm"
# 1 "../../system/basic_level/macros.asm" 1
# 2 "api.asm" 2

.global print_str
print_str:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    lw $a1, 12($fp)
    addi $a1, $a1, 0
    addi $v0, $zero, 10

    syscall $v0

_print_str_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global get_char
get_char:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $v0, $zero, 11
    syscall $v0

_get_char_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global get_line
get_line:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    lw $a1, 12($fp)
    addi $a1, $a1, 0
    addi $v0, $zero, 12
    syscall $v0

_get_line_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global malloc
malloc:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    addi $v0, $zero, 21
    syscall $v0

_malloc_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global free
free:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    addi $v0, $zero, 22
    syscall $v0

_free_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global get_cwd
get_cwd:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    addi $v0, $zero, 23
    syscall $v0

_get_cwd_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global change_dir
change_dir:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    addi $v0, $zero, 24
    syscall $v0

_change_dir_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global get_cmd
get_cmd:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    addi $v0, $zero, 25
    syscall $v0

_get_cmd_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global get_env_error
get_env_error:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $v0, $zero, 26
    syscall $v0

_get_env_error_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global open
open:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    addi $v0, $zero, 13
    syscall $v0

_open_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global create
create:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    addi $v0, $zero, 14
    syscall $v0

_create_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global read
read:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    lw $a1, 12($fp)
    addi $a1, $a1, 0
    lw $a2, 16($fp)
    addi $a2, $a2, 0
    lw $a3, 20($fp)
    addi $a3, $a3, 0
    addi $v0, $zero, 15
    syscall $v0

_read_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global write
write:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    lw $a1, 12($fp)
    addi $a1, $a1, 0
    lw $a2, 16($fp)
    addi $a2, $a2, 0
    lw $a3, 20($fp)
    addi $a3, $a3, 0
    addi $v0, $zero, 16
    syscall $v0

_write_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global close
close:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $a0, $a0, 0
    addi $v0, $zero, 17
    syscall $v0

_close_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra



