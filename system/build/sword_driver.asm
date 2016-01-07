_sword_driver_ref:

_platform_read_block:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  __platform_read_block_start
__platform_read_block_ref_pos:
__platform_read_block_module_ref:
    dd   _sword_driver_ref
__platform_read_block_DRIVER_BLOCK_SIZE_ext:
    dd   DRIVER_BLOCK_SIZE

__platform_read_block_start:
    addi $sp, $sp, -4
## line 7
    addi $t0, $fp, -4
    addi $t1, $zero, 8192
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    addi $v0, $t1, 512
    sw   $v0, 0($t0)
## line 9
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    sw   $v0, 0($t0)
## line 10
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 8192
    sll  $v0, $t1, 16
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
    addi $sp, $sp, 4
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
    dd   _sword_driver_ref
__platform_write_block_DRIVER_BLOCK_SIZE_ext:
    dd   DRIVER_BLOCK_SIZE

__platform_write_block_start:
    addi $sp, $sp, -4
## line 18
    addi $t0, $fp, -4
    addi $t1, $zero, 8192
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    addi $v0, $t1, 512
    sw   $v0, 0($t0)
## line 20
    addi $t0, $zero, 8192
    sll  $v0, $t0, 16
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
## line 22
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 31
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 23
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    sw   $v0, 0($t0)

__platform_write_block_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global _platform_write_block
