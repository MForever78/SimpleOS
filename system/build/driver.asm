_driver_ref:

DRIVER_BLOCK_SIZE:
    dd 0
.global DRIVER_BLOCK_SIZE

_driver_sector_start:
    dd 0
.global _driver_sector_start

_driver_sector_count:
    dd 0
.global _driver_sector_count

driver_init:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _driver_init_start
_driver_init_ref_pos:
_driver_init_module_ref:
    dd   _driver_ref

_driver_init_start:
    addi $sp, $sp, -4
## line 10
    lw   $v0, _driver_init_module_ref[_driver_init_ref_pos]($ra)
    addi $v0, $v0, DRIVER_BLOCK_SIZE[_driver_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 512
    sw   $v0, 0($t0)
## line 12
    addi $t0, $fp, -4
    lw   $v0, _driver_init_module_ref[_driver_init_ref_pos]($ra)
    addi $v0, $v0, DRIVER_BLOCK_SIZE[_driver_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  malloc
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 13
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  breakpoint
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 14
    addi $t0, $zero, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  _platform_read_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 16
    lw   $v0, _driver_init_module_ref[_driver_init_ref_pos]($ra)
    addi $v0, $v0, _driver_sector_start[_driver_ref]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 454
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  load_dword_unaligned
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 17
    lw   $v0, _driver_init_module_ref[_driver_init_ref_pos]($ra)
    addi $v0, $v0, _driver_sector_count[_driver_ref]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 458
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  load_dword_unaligned
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 18
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  breakpoint
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 20
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_driver_init_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global driver_init

read_blocks:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _read_blocks_start
_read_blocks_ref_pos:
_read_blocks_module_ref:
    dd   _driver_ref

_read_blocks_start:
## line 26
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  _driver_calc_offset
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 28
_read_blocks_1459913120:
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    beq  $v0, $zero, _read_blocks_1459913340
## line 29
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    lw   $v0, 16($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  _platform_read_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 30
    addi $t0, $fp, 16
    lw   $v0, 16($fp)
    addi $t1, $v0, 0
    lw   $v0, _read_blocks_module_ref[_read_blocks_ref_pos]($ra)
    addi $v0, $v0, DRIVER_BLOCK_SIZE[_driver_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _read_blocks_1459913120
_read_blocks_1459913340:

_read_blocks_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global read_blocks

write_blocks:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _write_blocks_start
_write_blocks_ref_pos:
_write_blocks_module_ref:
    dd   _driver_ref

_write_blocks_start:
## line 37
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  _driver_calc_offset
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 39
_write_blocks_1459913404:
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    beq  $v0, $zero, _write_blocks_1459913624
## line 40
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    lw   $v0, 16($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  _platform_write_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 41
    addi $t0, $fp, 16
    lw   $v0, 16($fp)
    addi $t1, $v0, 0
    lw   $v0, _write_blocks_module_ref[_write_blocks_ref_pos]($ra)
    addi $v0, $v0, DRIVER_BLOCK_SIZE[_driver_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _write_blocks_1459913404
_write_blocks_1459913624:

_write_blocks_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global write_blocks

read_block:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _read_block_start
_read_block_ref_pos:
_read_block_module_ref:
    dd   _driver_ref

_read_block_start:
## line 47
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  read_blocks
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_read_block_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global read_block

write_block:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _write_block_start
_write_block_ref_pos:
_write_block_module_ref:
    dd   _driver_ref

_write_block_start:
## line 51
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  write_blocks
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_write_block_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global write_block

_driver_calc_offset:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  __driver_calc_offset_start
__driver_calc_offset_ref_pos:
__driver_calc_offset_module_ref:
    dd   _driver_ref

__driver_calc_offset_start:
## line 55
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, __driver_calc_offset_module_ref[__driver_calc_offset_ref_pos]($ra)
    addi $v0, $v0, _driver_sector_count[_driver_ref]
    lw   $v0, 0($v0)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t1, $v0, 0
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  mod
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    lw   $v0, __driver_calc_offset_module_ref[__driver_calc_offset_ref_pos]($ra)
    addi $v0, $v0, _driver_sector_start[_driver_ref]
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0

__driver_calc_offset_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global _driver_calc_offset
