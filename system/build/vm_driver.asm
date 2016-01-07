_vm_driver_ref:

_platform_driver_waiting:
    dd 0
.global _platform_driver_waiting

_platform_read_block:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  __platform_read_block_start
__platform_read_block_ref_pos:
__platform_read_block_module_ref:
    dd   _vm_driver_ref
__platform_read_block_DRIVER_BLOCK_SIZE_ext:
    dd   DRIVER_BLOCK_SIZE

__platform_read_block_start:
## line 6
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 9
    addi $t1, $v0, 0
    addi $t2, $zero, 2048
    sll  $v0, $t2, 16
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, __platform_read_block_DRIVER_BLOCK_SIZE_ext[__platform_read_block_ref_pos]($ra)
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  memcpy
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

__platform_read_block_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global _platform_read_block

_platform_write_block:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  __platform_write_block_start
__platform_write_block_ref_pos:
__platform_write_block_module_ref:
    dd   _vm_driver_ref
__platform_write_block_DRIVER_BLOCK_SIZE_ext:
    dd   DRIVER_BLOCK_SIZE

__platform_write_block_start:
## line 10
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    sll  $v0, $t0, 9
    addi $t0, $v0, 0
    addi $t1, $zero, 2048
    sll  $v0, $t1, 16
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    lw   $v0, __platform_write_block_DRIVER_BLOCK_SIZE_ext[__platform_write_block_ref_pos]($ra)
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  memcpy
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

__platform_write_block_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global _platform_write_block
