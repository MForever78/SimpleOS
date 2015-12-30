_io_ref:

file_size:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _file_size_start
_file_size_ref_pos:
_file_size_module_ref:
    dd   _io_ref

_file_size_start:
## line 29
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)

_file_size_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global file_size

file_is_readonly:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _file_is_readonly_start
_file_is_readonly_ref_pos:
_file_is_readonly_module_ref:
    dd   _io_ref

_file_is_readonly_start:
## line 33
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 1

_file_is_readonly_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global file_is_readonly

file_is_hidden:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _file_is_hidden_start
_file_is_hidden_ref_pos:
_file_is_hidden_module_ref:
    dd   _io_ref

_file_is_hidden_start:
## line 37
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 2

_file_is_hidden_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global file_is_hidden

file_is_dir:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _file_is_dir_start
_file_is_dir_ref_pos:
_file_is_dir_module_ref:
    dd   _io_ref

_file_is_dir_start:
## line 41
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 16

_file_is_dir_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global file_is_dir
