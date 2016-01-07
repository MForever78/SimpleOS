_fat16_ref:

fat_root_block:
    dd 0
.global fat_root_block

fat_table:
    dd 0
.global fat_table

fat_sector_per_cluster:
    dd 0
.global fat_sector_per_cluster

fat_cluster_size:
    dd 0
.global fat_cluster_size

fat_max_root_entries:
    dd 0
.global fat_max_root_entries

fat_start_of_data:
    dd 0
.global fat_start_of_data

fat_root_sector:
    dd 0
.global fat_root_sector

fat_sector_per_fat:
    dd 0
.global fat_sector_per_fat

fat_start_of_fat:
    dd 0
.global fat_start_of_fat

fat16_init:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_init_start
_fat16_init_ref_pos:
_fat16_init_module_ref:
    dd   _fat16_ref
_fat16_init_DRIVER_BLOCK_SIZE_ext:
    dd   DRIVER_BLOCK_SIZE

_fat16_init_start:
    addi $sp, $sp, -4
## line 42
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_root_block[_fat16_ref]
    addi $t0, $v0, 0
    lw   $v0, _fat16_init_DRIVER_BLOCK_SIZE_ext[_fat16_init_ref_pos]($ra)
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
## line 43
    addi $t0, $zero, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_root_block[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  read_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 45
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_cluster[_fat16_ref]
    addi $t0, $v0, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_root_block[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 13
    lb   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 46
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_cluster_size[_fat16_ref]
    addi $t0, $v0, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_cluster[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    sll  $v0, $t1, 9
    sw   $v0, 0($t0)
## line 47
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_max_root_entries[_fat16_ref]
    addi $t0, $v0, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_root_block[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 16
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    srl  $v0, $t1, 8
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 16
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 50
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_fat[_fat16_ref]
    addi $t0, $v0, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_root_block[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 20
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    srl  $v0, $t1, 16
    sw   $v0, 0($t0)
## line 51
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    addi $t0, $v0, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_fat[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    sll  $v0, $t1, 9
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
## line 52
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_fat[_fat16_ref]
    addi $t0, $v0, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_root_block[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 12
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    srl  $v0, $t1, 16
    sw   $v0, 0($t0)
## line 53
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_fat[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_fat[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    lw   $v0, 0($v0)
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
## line 55
    addi $t0, $fp, -4
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_root_block[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 20
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    srl  $v0, $t1, 16
    sw   $v0, 0($t0)
## line 56
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_data[_fat16_ref]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 1
    addi $t1, $v0, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_max_root_entries[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    srl  $v0, $t2, 4
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_fat[_fat16_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 58
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_root_sector[_fat16_ref]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 1
    addi $t1, $v0, 0
    lw   $v0, _fat16_init_module_ref[_fat16_init_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_fat[_fat16_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)

_fat16_init_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_init

fat16_fd_new:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_fd_new_start
_fat16_fd_new_ref_pos:
_fat16_fd_new_module_ref:
    dd   _fat16_ref

_fat16_fd_new_start:
    addi $sp, $sp, -4
## line 66
    addi $t0, $fp, -4
    addi $t1, $zero, 5
    sll  $v0, $t1, 2
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
## line 67
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    sw   $v0, 0($t0)
## line 68
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    sw   $v0, 0($t0)
## line 69
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 16($fp)
    sw   $v0, 0($t0)
## line 70
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 20($fp)
    sw   $v0, 0($t0)
## line 71
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 24($fp)
    sw   $v0, 0($t0)
## line 73
    lw   $v0, -4($fp)

_fat16_fd_new_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_fd_new

fat16_get_root_fd:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_get_root_fd_start
_fat16_get_root_fd_ref_pos:
_fat16_get_root_fd_module_ref:
    dd   _fat16_ref

_fat16_get_root_fd_start:
## line 78
    addi $t0, $zero, 0
    addi $t1, $zero, 0
    addi $t2, $zero, 0
    lw   $v0, _fat16_get_root_fd_module_ref[_fat16_get_root_fd_ref_pos]($ra)
    addi $v0, $v0, fat_max_root_entries[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    sll  $v0, $t3, 5
    addi $t3, $v0, 0
    addi $t4, $zero, 16
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t4, 16($sp)
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  fat16_fd_new
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_fat16_get_root_fd_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_get_root_fd

fat16_normalize_filename:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_normalize_filename_start
_fat16_normalize_filename_ref_pos:
_fat16_normalize_filename_module_ref:
    dd   _fat16_ref

_fat16_normalize_filename_start:
    addi $sp, $sp, -4
## line 85
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 32
    addi $t2, $zero, 11
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  memset
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 86
    addi $t0, $fp, -4
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 87
_fat16_normalize_filename_1459914228:
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    addi $v0, $zero, 8
    slt  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_normalize_filename_1459914336
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
_fat16_normalize_filename_1459914336:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_normalize_filename_1459914396
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -46
    addi $t0, $v0, 0
_fat16_normalize_filename_1459914396:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_normalize_filename_1459914456
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    addi $t0, $v0, 0
_fat16_normalize_filename_1459914456:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_normalize_filename_1459914772
## line 88
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 97
    slt  $v0, $t1, $v0
    addi $v0, $v0, -1
    addi $t1, $v0, 0
    beq  $v0, $zero, _fat16_normalize_filename_1459914620
    and  $v0, $t1, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 122
    slt  $v0, $v0, $t1
    addi $v0, $v0, -1
    addi $t1, $v0, 0
_fat16_normalize_filename_1459914620:
    and  $v0, $t1, $v0
    beq  $v0, $zero, _fat16_normalize_filename_1459914676
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -32
    beq  $zero, $zero, _fat16_normalize_filename_1459914696
_fat16_normalize_filename_1459914676:
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
_fat16_normalize_filename_1459914696:
    sb   $v0, 0($t0)
## line 89
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    beq  $zero, $zero, _fat16_normalize_filename_1459914228
_fat16_normalize_filename_1459914772:
## line 91
_fat16_normalize_filename_1459914784:
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_normalize_filename_1459914856
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -46
    addi $t0, $v0, 0
_fat16_normalize_filename_1459914856:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_normalize_filename_1459914916
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    addi $t0, $v0, 0
_fat16_normalize_filename_1459914916:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_normalize_filename_1459914984
## line 91
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_normalize_filename_1459914784
_fat16_normalize_filename_1459914984:
## line 92
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -46
    beq  $v0, $zero, _fat16_normalize_filename_1459915060
## line 92
    lw   $v0, 8($fp)
    j    _fat16_normalize_filename_end
_fat16_normalize_filename_1459915060:
## line 94
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 9
    lw   $v0, -4($fp)
    sub  $v0, $t2, $v0
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 95
    addi $t0, $fp, -4
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 95
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 96
_fat16_normalize_filename_1459915220:
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    addi $v0, $zero, 3
    slt  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_normalize_filename_1459915328
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
_fat16_normalize_filename_1459915328:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_normalize_filename_1459915388
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    addi $t0, $v0, 0
_fat16_normalize_filename_1459915388:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_normalize_filename_1459915704
## line 97
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 97
    slt  $v0, $t1, $v0
    addi $v0, $v0, -1
    addi $t1, $v0, 0
    beq  $v0, $zero, _fat16_normalize_filename_1459915552
    and  $v0, $t1, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 122
    slt  $v0, $v0, $t1
    addi $v0, $v0, -1
    addi $t1, $v0, 0
_fat16_normalize_filename_1459915552:
    and  $v0, $t1, $v0
    beq  $v0, $zero, _fat16_normalize_filename_1459915608
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -32
    beq  $zero, $zero, _fat16_normalize_filename_1459915628
_fat16_normalize_filename_1459915608:
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
_fat16_normalize_filename_1459915628:
    sb   $v0, 0($t0)
## line 98
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    beq  $zero, $zero, _fat16_normalize_filename_1459915220
_fat16_normalize_filename_1459915704:
## line 100
_fat16_normalize_filename_1459915716:
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_normalize_filename_1459915788
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    addi $t0, $v0, 0
_fat16_normalize_filename_1459915788:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_normalize_filename_1459915856
## line 100
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_normalize_filename_1459915716
_fat16_normalize_filename_1459915856:
## line 102
    lw   $v0, 8($fp)

_fat16_normalize_filename_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_normalize_filename

fat16_file_size:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_file_size_start
_fat16_file_size_ref_pos:
_fat16_file_size_module_ref:
    dd   _fat16_ref

_fat16_file_size_start:
## line 107
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)

_fat16_file_size_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_file_size

fat16_file_attr:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_file_attr_start
_fat16_file_attr_ref_pos:
_fat16_file_attr_module_ref:
    dd   _fat16_ref

_fat16_file_attr_start:
## line 111
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)

_fat16_file_attr_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_file_attr

fat16_file_is_readonly:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_file_is_readonly_start
_fat16_file_is_readonly_ref_pos:
_fat16_file_is_readonly_module_ref:
    dd   _fat16_ref

_fat16_file_is_readonly_start:
## line 115
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_attr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    andi $v0, $t0, 1

_fat16_file_is_readonly_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_file_is_readonly

fat16_file_is_hidden:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_file_is_hidden_start
_fat16_file_is_hidden_ref_pos:
_fat16_file_is_hidden_module_ref:
    dd   _fat16_ref

_fat16_file_is_hidden_start:
## line 119
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_attr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    andi $v0, $t0, 2

_fat16_file_is_hidden_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_file_is_hidden

fat16_file_is_system:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_file_is_system_start
_fat16_file_is_system_ref_pos:
_fat16_file_is_system_module_ref:
    dd   _fat16_ref

_fat16_file_is_system_start:
## line 123
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_attr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    andi $v0, $t0, 4

_fat16_file_is_system_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_file_is_system

fat16_file_is_volume:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_file_is_volume_start
_fat16_file_is_volume_ref_pos:
_fat16_file_is_volume_module_ref:
    dd   _fat16_ref

_fat16_file_is_volume_start:
## line 127
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_attr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    andi $v0, $t0, 8

_fat16_file_is_volume_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_file_is_volume

fat16_file_is_dir:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_file_is_dir_start
_fat16_file_is_dir_ref_pos:
_fat16_file_is_dir_module_ref:
    dd   _fat16_ref

_fat16_file_is_dir_start:
## line 131
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_attr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    andi $v0, $t0, 16

_fat16_file_is_dir_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_file_is_dir

fat16_file_is_archive:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_file_is_archive_start
_fat16_file_is_archive_ref_pos:
_fat16_file_is_archive_module_ref:
    dd   _fat16_ref

_fat16_file_is_archive_start:
## line 135
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_attr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    andi $v0, $t0, 32

_fat16_file_is_archive_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_file_is_archive

fat16_next_cluster:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_next_cluster_start
_fat16_next_cluster_ref_pos:
_fat16_next_cluster_module_ref:
    dd   _fat16_ref

_fat16_next_cluster_start:
## line 140
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_next_cluster_1459916404
## line 140
    addi $v0, $zero, 0
    j    _fat16_next_cluster_end
_fat16_next_cluster_1459916404:
## line 141
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    andi $v0, $t0, 1
    beq  $v0, $zero, _fat16_next_cluster_1459916548
## line 141
    lw   $v0, _fat16_next_cluster_module_ref[_fat16_next_cluster_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 1
    addi $t1, $v0, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    srl  $v0, $t0, 16
    j    _fat16_next_cluster_end
_fat16_next_cluster_1459916548:
## line 142
    lw   $v0, _fat16_next_cluster_module_ref[_fat16_next_cluster_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 1
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    and  $v0, $t0, $v0

_fat16_next_cluster_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_next_cluster

fat16_set_fat:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_set_fat_start
_fat16_set_fat_ref_pos:
_fat16_set_fat_module_ref:
    dd   _fat16_ref

_fat16_set_fat_start:
    addi $sp, $sp, -8
## line 151
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_set_fat_1459916728
## line 151
    addi $v0, $zero, 0
    j    _fat16_set_fat_end
_fat16_set_fat_1459916728:
## line 152
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    andi $v0, $t0, 1
    beq  $v0, $zero, _fat16_set_fat_1459917052
## line 153
    addi $t0, $fp, -4
    lw   $v0, _fat16_set_fat_module_ref[_fat16_set_fat_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    addi $t2, $v0, 0
    srl  $v0, $t2, 1
    addi $t2, $v0, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 16
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 154
    lw   $v0, _fat16_set_fat_module_ref[_fat16_set_fat_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 1
    addi $t1, $v0, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_set_fat_1459917260
_fat16_set_fat_1459917052:
## line 157
    addi $t0, $fp, -4
    lw   $v0, _fat16_set_fat_module_ref[_fat16_set_fat_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    addi $t2, $v0, 0
    sll  $v0, $t2, 1
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    srl  $v0, $t1, 16
    sw   $v0, 0($t0)
## line 158
    lw   $v0, _fat16_set_fat_module_ref[_fat16_set_fat_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 1
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    lw   $v0, 12($fp)
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
_fat16_set_fat_1459917260:
## line 161
    addi $t0, $fp, -8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    srl  $v0, $t1, 8
    sw   $v0, 0($t0)
## line 162
    lw   $v0, _fat16_set_fat_module_ref[_fat16_set_fat_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_fat[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _fat16_set_fat_module_ref[_fat16_set_fat_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    addi $t2, $v0, 0
    sll  $v0, $t2, 9
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  write_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 163
    lw   $v0, _fat16_set_fat_module_ref[_fat16_set_fat_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_fat[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _fat16_set_fat_module_ref[_fat16_set_fat_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_fat[_fat16_ref]
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _fat16_set_fat_module_ref[_fat16_set_fat_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    addi $t2, $v0, 0
    sll  $v0, $t2, 9
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  write_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_fat16_set_fat_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_set_fat

fat16_sector_by_first_cluster:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_sector_by_first_cluster_start
_fat16_sector_by_first_cluster_ref_pos:
_fat16_sector_by_first_cluster_module_ref:
    dd   _fat16_ref

_fat16_sector_by_first_cluster_start:
## line 169
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_sector_by_first_cluster_1459917640
## line 169
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    lw   $v0, _fat16_sector_by_first_cluster_module_ref[_fat16_sector_by_first_cluster_ref_pos]($ra)
    addi $v0, $v0, fat_root_sector[_fat16_ref]
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    j    _fat16_sector_by_first_cluster_end
_fat16_sector_by_first_cluster_1459917640:
## line 170
_fat16_sector_by_first_cluster_1459917652:
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    lw   $v0, _fat16_sector_by_first_cluster_module_ref[_fat16_sector_by_first_cluster_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_cluster[_fat16_ref]
    lw   $v0, 0($v0)
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    beq  $v0, $zero, _fat16_sector_by_first_cluster_1459917960
## line 171
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 255
    sll  $v0, $t1, 8
    addi $t1, $v0, 0
    ori  $v0, $t1, 128
    addi $t1, $v0, 0
    addi $t2, $zero, 255
    sll  $v0, $t2, 8
    addi $t2, $v0, 0
    ori  $v0, $t2, 128
    beq  $v0, $t1, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    and  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_sector_by_first_cluster_1459917840
## line 171
    addi $v0, $zero, 0
    j    _fat16_sector_by_first_cluster_end
_fat16_sector_by_first_cluster_1459917840:
## line 172
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_next_cluster
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 173
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    lw   $v0, _fat16_sector_by_first_cluster_module_ref[_fat16_sector_by_first_cluster_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_cluster[_fat16_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_sector_by_first_cluster_1459917652
_fat16_sector_by_first_cluster_1459917960:
## line 175
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, -2
    addi $t0, $v0, 0
    lw   $v0, _fat16_sector_by_first_cluster_module_ref[_fat16_sector_by_first_cluster_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_cluster[_fat16_ref]
    lw   $v0, 0($v0)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t1, $v0, 0
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  mul
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _fat16_sector_by_first_cluster_module_ref[_fat16_sector_by_first_cluster_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_data[_fat16_ref]
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0

_fat16_sector_by_first_cluster_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_sector_by_first_cluster

fat16_sector_of_file:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_sector_of_file_start
_fat16_sector_of_file_ref_pos:
_fat16_sector_of_file_module_ref:
    dd   _fat16_ref

_fat16_sector_of_file_start:
## line 181
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_sector_of_file_1459918128
## line 181
    addi $v0, $zero, 0
    j    _fat16_sector_of_file_end
_fat16_sector_of_file_1459918128:
## line 182
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_sector_of_file_1459918256
## line 182
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    lw   $v0, _fat16_sector_of_file_module_ref[_fat16_sector_of_file_ref_pos]($ra)
    addi $v0, $v0, fat_root_sector[_fat16_ref]
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    j    _fat16_sector_of_file_end
_fat16_sector_of_file_1459918256:
## line 183
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  fat16_sector_by_first_cluster
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_fat16_sector_of_file_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_sector_of_file

fat16_find_in_dir_entry:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_find_in_dir_entry_start
_fat16_find_in_dir_entry_ref_pos:
_fat16_find_in_dir_entry_module_ref:
    dd   _fat16_ref

_fat16_find_in_dir_entry_start:
## line 189
_fat16_find_in_dir_entry_1459918360:
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    slt  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_find_in_dir_entry_1459918432
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
_fat16_find_in_dir_entry_1459918432:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_find_in_dir_entry_1459918624
## line 190
    lw   $v0, 16($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 11
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strncmp
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_find_in_dir_entry_1459918560
## line 191
    lw   $v0, 8($fp)
    j    _fat16_find_in_dir_entry_end
_fat16_find_in_dir_entry_1459918560:
## line 193
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 32
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_find_in_dir_entry_1459918360
_fat16_find_in_dir_entry_1459918624:
## line 196
    addi $v0, $zero, 0

_fat16_find_in_dir_entry_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_find_in_dir_entry

fat16_find_in_dir:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_find_in_dir_start
_fat16_find_in_dir_ref_pos:
_fat16_find_in_dir_module_ref:
    dd   _fat16_ref

_fat16_find_in_dir_start:
    addi $sp, $sp, -20
## line 205
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_is_dir
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_find_in_dir_1459918728
## line 205
    addi $v0, $zero, 0
    j    _fat16_find_in_dir_end
_fat16_find_in_dir_1459918728:
## line 207
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_file_size
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 208
    addi $t0, $fp, -16
    lw   $v0, -4($fp)
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
## line 209
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    lw   $v0, -16($fp)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  fat16_read_file
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 210
    addi $t0, $fp, -20
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    addi $t2, $v0, 0
    lw   $v0, -4($fp)
    add  $v0, $t2, $v0
    addi $t2, $v0, 0
    lw   $v0, 12($fp)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_find_in_dir_entry
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 211
    lw   $v0, -20($fp)
    beq  $v0, $zero, _fat16_find_in_dir_1459919520
## line 212
    addi $t0, $fp, -8
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 24
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    srl  $v0, $t1, 16
    sw   $v0, 0($t0)
## line 213
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_find_in_dir_1459919228
## line 213
    addi $t0, $fp, -8
    addi $t1, $zero, 1
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
_fat16_find_in_dir_1459919228:
## line 214
    addi $t0, $fp, -12
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -20($fp)
    addi $t3, $v0, 0
    lw   $v0, -16($fp)
    sub  $v0, $t3, $v0
    addi $t3, $v0, 0
    lw   $v0, -20($fp)
    addi $t4, $v0, 0
    addi $v0, $t4, 28
    lw   $v0, 0($v0)
    beq  $v0, $zero, _fat16_find_in_dir_1459919436
    lw   $v0, -20($fp)
    addi $t4, $v0, 0
    addi $v0, $t4, 28
    lw   $v0, 0($v0)
    beq  $zero, $zero, _fat16_find_in_dir_1459919452
_fat16_find_in_dir_1459919436:
    lw   $v0, _fat16_find_in_dir_module_ref[_fat16_find_in_dir_ref_pos]($ra)
    addi $v0, $v0, fat_cluster_size[_fat16_ref]
    lw   $v0, 0($v0)
_fat16_find_in_dir_1459919452:
    addi $t4, $v0, 0
    lw   $v0, -20($fp)
    addi $t5, $v0, 0
    addi $v0, $t5, 11
    lb   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -24
    sw   $t0, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_fd_new
    lw   $t0, 20($sp)
    addi $sp, $sp, 24
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_find_in_dir_1459919556
_fat16_find_in_dir_1459919520:
## line 222
    addi $t0, $fp, -12
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
_fat16_find_in_dir_1459919556:
## line 223
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 224
    lw   $v0, -12($fp)

_fat16_find_in_dir_end:
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_find_in_dir

fat16_open_file:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_open_file_start
_fat16_open_file_ref_pos:
_fat16_open_file_module_ref:
    dd   _fat16_ref

_fat16_open_file_start:
    addi $sp, $sp, -12
## line 233
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    beq  $v0, $zero, _fat16_open_file_1459919688
## line 233
    addi $v0, $zero, 0
    j    _fat16_open_file_end
_fat16_open_file_1459919688:
## line 234
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_open_file_1459919780
## line 234
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  fat16_get_root_fd
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    j    _fat16_open_file_end
_fat16_open_file_1459919780:
## line 236
    addi $t0, $fp, -4
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_get_root_fd
    lw   $t0, 0($sp)
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 237
    addi $t0, $fp, -12
    addi $t1, $zero, 11
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
## line 239
_fat16_open_file_1459919876:
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    lb   $v0, 0($v0)
    beq  $v0, $zero, _fat16_open_file_1459920300
## line 240
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_normalize_filename
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 241
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_find_in_dir
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 242
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_open_file_1459920216
## line 243
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
## line 244
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 245
    addi $v0, $zero, 0
    j    _fat16_open_file_end
_fat16_open_file_1459920216:
## line 247
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
## line 248
    addi $t0, $fp, -4
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_open_file_1459919876
_fat16_open_file_1459920300:
## line 250
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 251
    lw   $v0, -4($fp)

_fat16_open_file_end:
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_open_file

fat16_next_sector:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_next_sector_start
_fat16_next_sector_ref_pos:
_fat16_next_sector_module_ref:
    dd   _fat16_ref

_fat16_next_sector_start:
    addi $sp, $sp, -4
## line 259
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    lw   $v0, _fat16_next_sector_module_ref[_fat16_next_sector_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_data[_fat16_ref]
    lw   $v0, 0($v0)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_next_sector_1459920452
## line 259
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    j    _fat16_next_sector_end
_fat16_next_sector_1459920452:
## line 260
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    lw   $v0, _fat16_next_sector_module_ref[_fat16_next_sector_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_data[_fat16_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    lw   $v0, _fat16_next_sector_module_ref[_fat16_next_sector_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_cluster[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    and  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_next_sector_1459920596
## line 260
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    j    _fat16_next_sector_end
_fat16_next_sector_1459920596:
## line 262
    addi $t0, $fp, -4
    lw   $v0, _fat16_next_sector_module_ref[_fat16_next_sector_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_cluster[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 4
    bne  $v0, $t1, _fat16_next_sector_1459920712
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    lw   $v0, _fat16_next_sector_module_ref[_fat16_next_sector_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_data[_fat16_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    addi $t1, $v0, 0
    srl  $v0, $t1, 2
    beq  $zero, $zero, _fat16_next_sector_1459920768
_fat16_next_sector_1459920712:
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    lw   $v0, _fat16_next_sector_module_ref[_fat16_next_sector_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_data[_fat16_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, _fat16_next_sector_module_ref[_fat16_next_sector_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_cluster[_fat16_ref]
    lw   $v0, 0($v0)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  div
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_fat16_next_sector_1459920768:
    sw   $v0, 0($t0)
## line 266
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 2
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_next_cluster
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 267
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_next_sector_1459920912
## line 267
    lw   $v0, -4($fp)
    j    _fat16_next_sector_end
_fat16_next_sector_1459920912:
## line 268
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, -2
    addi $t0, $v0, 0
    lw   $v0, _fat16_next_sector_module_ref[_fat16_next_sector_ref_pos]($ra)
    addi $v0, $v0, fat_sector_per_cluster[_fat16_ref]
    lw   $v0, 0($v0)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t1, $v0, 0
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  mul
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    lw   $v0, _fat16_next_sector_module_ref[_fat16_next_sector_ref_pos]($ra)
    addi $v0, $v0, fat_start_of_data[_fat16_ref]
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0

_fat16_next_sector_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_next_sector

fat16_read_file:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_read_file_start
_fat16_read_file_ref_pos:
_fat16_read_file_module_ref:
    dd   _fat16_ref

_fat16_read_file_start:
    addi $sp, $sp, -20
## line 280
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_read_file_1459921060
## line 280
    addi $v0, $zero, 0
    j    _fat16_read_file_end
_fat16_read_file_1459921060:
## line 281
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _fat16_read_file_1459921168
## line 281
    addi $v0, $zero, 0
    j    _fat16_read_file_end
_fat16_read_file_1459921168:
## line 282
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    lw   $v0, 16($fp)
    add  $v0, $t1, $v0
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _fat16_read_file_1459921348
## line 282
    addi $t0, $fp, 16
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
_fat16_read_file_1459921348:
## line 284
    addi $t0, $fp, -20
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 511
    addi $t1, $v0, 0
    bne  $v0, $zero, _fat16_read_file_1459921448
    or   $v0, $t1, $v0
    lw   $v0, 16($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 511
    addi $t1, $v0, 0
_fat16_read_file_1459921448:
    or   $v0, $t1, $v0
    beq  $v0, $zero, _fat16_read_file_1459921496
    addi $t1, $zero, 512
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
    beq  $zero, $zero, _fat16_read_file_1459921508
_fat16_read_file_1459921496:
    addi $v0, $zero, 0
_fat16_read_file_1459921508:
    sw   $v0, 0($t0)
## line 286
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    srl  $v0, $t2, 9
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_sector_of_file
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 287
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 289
_fat16_read_file_1459921640:
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, 16($fp)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_read_file_1459922480
## line 290
    addi $t0, $fp, -12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 511
    sw   $v0, 0($t0)
## line 291
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_read_file_1459921840
    and  $v0, $t0, $v0
    lw   $v0, 16($fp)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    sub  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 512
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_fat16_read_file_1459921840:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_read_file_1459922040
## line 292
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, 20($fp)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  read_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 293
    addi $t0, $fp, -8
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 512
    sw   $v0, 0($t0)
## line 294
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 512
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_read_file_1459922400
_fat16_read_file_1459922040:
## line 297
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  read_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 298
    addi $t0, $fp, -16
    addi $t1, $zero, 512
    lw   $v0, -12($fp)
    sub  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, 16($fp)
    addi $t2, $v0, 0
    lw   $v0, -8($fp)
    sub  $v0, $t2, $v0
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  min
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 299
    lw   $v0, 20($fp)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
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
## line 300
    addi $t0, $fp, -8
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 301
    addi $t0, $fp, 12
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    lw   $v0, 12($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_fat16_read_file_1459922400:
## line 303
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_next_sector
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_read_file_1459921640
_fat16_read_file_1459922480:
## line 306
    lw   $v0, -20($fp)
    beq  $v0, $zero, _fat16_read_file_1459922548
## line 306
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_fat16_read_file_1459922548:
## line 307
    lw   $v0, 16($fp)

_fat16_read_file_end:
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_read_file

fat16_alloc_fat:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_alloc_fat_start
_fat16_alloc_fat_ref_pos:
_fat16_alloc_fat_module_ref:
    dd   _fat16_ref

_fat16_alloc_fat_start:
    addi $sp, $sp, -4
## line 315
    addi $t0, $fp, -4
    lw   $v0, _fat16_alloc_fat_module_ref[_fat16_alloc_fat_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 316
_fat16_alloc_fat_1459922652:
    lw   $v0, -4($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_alloc_fat_1459922772
    and  $v0, $t0, $v0
    lw   $v0, -4($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    srl  $v0, $t0, 16
    addi $t0, $v0, 0
_fat16_alloc_fat_1459922772:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_alloc_fat_1459922840
## line 316
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_alloc_fat_1459922652
_fat16_alloc_fat_1459922840:
## line 317
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, _fat16_alloc_fat_module_ref[_fat16_alloc_fat_ref_pos]($ra)
    addi $v0, $v0, fat_table[_fat16_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t0, $v0
    addi $t0, $v0, 0
    srl  $v0, $t0, 1
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    srl  $v0, $t1, 16
    beq  $v0, $zero, _fat16_alloc_fat_1459922960
    addi $v0, $zero, 0
    beq  $zero, $zero, _fat16_alloc_fat_1459922972
_fat16_alloc_fat_1459922960:
    addi $v0, $zero, 1
_fat16_alloc_fat_1459922972:
    add  $v0, $t0, $v0

_fat16_alloc_fat_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_alloc_fat

fat16_last_cluster:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_last_cluster_start
_fat16_last_cluster_ref_pos:
_fat16_last_cluster_module_ref:
    dd   _fat16_ref

_fat16_last_cluster_start:
    addi $sp, $sp, -8
## line 326
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_last_cluster_1459923048
## line 326
    addi $v0, $zero, 0
    j    _fat16_last_cluster_end
_fat16_last_cluster_1459923048:
## line 327
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_last_cluster_1459923152
## line 327
    addi $v0, $zero, 0
    j    _fat16_last_cluster_end
_fat16_last_cluster_1459923152:
## line 329
    addi $t0, $fp, -4
    addi $t1, $fp, -8
    lw   $v0, 8($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 330
_fat16_last_cluster_1459923252:
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 255
    sll  $v0, $t1, 8
    addi $t1, $v0, 0
    ori  $v0, $t1, 128
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $t1, $zero, 255
    sll  $v0, $t1, 8
    addi $t1, $v0, 0
    ori  $v0, $t1, 128
    sub  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_last_cluster_1459923468
## line 331
    addi $t0, $fp, -4
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
## line 332
    addi $t0, $fp, -8
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_next_cluster
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_last_cluster_1459923252
_fat16_last_cluster_1459923468:
## line 334
    lw   $v0, -4($fp)

_fat16_last_cluster_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_last_cluster

fat16_resize_file:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_resize_file_start
_fat16_resize_file_ref_pos:
_fat16_resize_file_module_ref:
    dd   _fat16_ref

_fat16_resize_file_start:
    addi $sp, $sp, -32
## line 349
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_resize_file_1459923588
## line 349
    j    _fat16_resize_file_end
_fat16_resize_file_1459923588:
## line 350
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_is_dir
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $v0, $zero, _fat16_resize_file_1459923648
## line 350
    j    _fat16_resize_file_end
_fat16_resize_file_1459923648:
## line 352
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 353
    addi $t0, $fp, -20
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    lw   $v0, _fat16_resize_file_module_ref[_fat16_resize_file_ref_pos]($ra)
    addi $v0, $v0, fat_cluster_size[_fat16_ref]
    lw   $v0, 0($v0)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  div
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 354
    addi $t0, $fp, -12
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, _fat16_resize_file_module_ref[_fat16_resize_file_ref_pos]($ra)
    addi $v0, $v0, fat_cluster_size[_fat16_ref]
    lw   $v0, 0($v0)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  div
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 355
    addi $t0, $fp, -8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_last_cluster
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 357
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    bne  $v0, $t0, _fat16_resize_file_1459924136
## line 358
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $t1, $fp, -16
    addi $t2, $fp, -8
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t1, 4($sp)
    sw   $t2, 0($sp)
    jal  fat16_alloc_fat
    lw   $t0, 8($sp)
    lw   $t1, 4($sp)
    lw   $t2, 0($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t2)
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 359
    addi $t0, $fp, -12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    beq  $zero, $zero, _fat16_resize_file_1459924212
_fat16_resize_file_1459924136:
## line 362
    addi $t0, $fp, -16
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
_fat16_resize_file_1459924212:
## line 365
_fat16_resize_file_1459924224:
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    lw   $v0, -20($fp)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_resize_file_1459924440
## line 366
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_alloc_fat
    lw   $t0, 0($sp)
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  fat16_set_fat
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 367
    addi $t0, $fp, -8
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_next_cluster
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 368
    addi $t0, $fp, -12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    beq  $zero, $zero, _fat16_resize_file_1459924224
_fat16_resize_file_1459924440:
## line 370
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  fat16_set_fat
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 372
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    sw   $v0, 0($t0)
## line 375
    addi $t0, $fp, -28
    addi $t1, $zero, 512
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
## line 376
    addi $t0, $fp, -24
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    srl  $v0, $t2, 9
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_sector_by_first_cluster
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 377
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    lw   $v0, -28($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  read_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 378
    addi $t0, $fp, -32
    lw   $v0, -28($fp)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 511
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 380
    lw   $v0, -32($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 28
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    sw   $v0, 0($t0)
## line 381
    lw   $v0, -32($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 24
    addi $t0, $v0, 0
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    lw   $v0, -32($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, 24
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 16
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 383
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    lw   $v0, -28($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  write_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 384
    lw   $v0, -28($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_fat16_resize_file_end:
    addi $sp, $sp, 32
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_resize_file

fat16_write_file:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_write_file_start
_fat16_write_file_ref_pos:
_fat16_write_file_module_ref:
    dd   _fat16_ref

_fat16_write_file_start:
    addi $sp, $sp, -20
## line 396
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_write_file_1459925328
## line 396
    addi $v0, $zero, 0
    j    _fat16_write_file_end
_fat16_write_file_1459925328:
## line 397
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    lw   $v0, 16($fp)
    add  $v0, $t1, $v0
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _fat16_write_file_1459925508
## line 397
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    lw   $v0, 16($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  fat16_resize_file
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_fat16_write_file_1459925508:
## line 399
    addi $t0, $fp, -20
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 511
    addi $t1, $v0, 0
    bne  $v0, $zero, _fat16_write_file_1459925608
    or   $v0, $t1, $v0
    lw   $v0, 16($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 511
    addi $t1, $v0, 0
_fat16_write_file_1459925608:
    or   $v0, $t1, $v0
    beq  $v0, $zero, _fat16_write_file_1459925656
    addi $t1, $zero, 512
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
    beq  $zero, $zero, _fat16_write_file_1459925668
_fat16_write_file_1459925656:
    addi $v0, $zero, 0
_fat16_write_file_1459925668:
    sw   $v0, 0($t0)
## line 401
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    srl  $v0, $t2, 9
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_sector_of_file
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 402
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 404
_fat16_write_file_1459925800:
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, 16($fp)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_write_file_1459926712
## line 405
    addi $t0, $fp, -12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    andi $v0, $t1, 511
    sw   $v0, 0($t0)
## line 406
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_write_file_1459926000
    and  $v0, $t0, $v0
    lw   $v0, 16($fp)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    sub  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 512
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_fat16_write_file_1459926000:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_write_file_1459926200
## line 407
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, 20($fp)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  write_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 408
    addi $t0, $fp, -8
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 512
    sw   $v0, 0($t0)
## line 409
    addi $t0, $fp, 12
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 512
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_write_file_1459926632
_fat16_write_file_1459926200:
## line 412
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  read_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 413
    addi $t0, $fp, -16
    addi $t1, $zero, 512
    lw   $v0, -12($fp)
    sub  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, 16($fp)
    addi $t2, $v0, 0
    lw   $v0, -8($fp)
    sub  $v0, $t2, $v0
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  min
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 414
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 20($fp)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
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
## line 415
    addi $t0, $fp, -8
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 416
    addi $t0, $fp, 12
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    lw   $v0, 12($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 417
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  write_block
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_fat16_write_file_1459926632:
## line 419
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_next_sector
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_write_file_1459925800
_fat16_write_file_1459926712:
## line 422
    lw   $v0, -20($fp)
    beq  $v0, $zero, _fat16_write_file_1459926780
## line 422
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_fat16_write_file_1459926780:
## line 423
    lw   $v0, 16($fp)

_fat16_write_file_end:
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_write_file

fat16_create_file_in_dir:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_create_file_in_dir_start
_fat16_create_file_in_dir_ref_pos:
_fat16_create_file_in_dir_module_ref:
    dd   _fat16_ref

_fat16_create_file_in_dir_start:
    addi $sp, $sp, -16
## line 432
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_file_size
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 433
    addi $t0, $fp, -16
    addi $t1, $fp, -12
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t1, 4($sp)
    sw   $t2, 0($sp)
    jal  malloc
    lw   $t0, 8($sp)
    lw   $t1, 4($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 434
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    lw   $v0, -12($fp)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  fat16_read_file
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 436
_fat16_create_file_in_dir_1459927016:
    lw   $v0, -16($fp)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _fat16_create_file_in_dir_1459927104
## line 436
    addi $t0, $fp, -16
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 32
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_create_file_in_dir_1459927016
_fat16_create_file_in_dir_1459927104:
## line 437
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    addi $t2, $zero, 32
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  memset
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 439
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 11
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
## line 440
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 24
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 16
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    addi $t1, $v0, 0
    sll  $v0, $t1, 16
    sw   $v0, 0($t0)
## line 442
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    lw   $v0, -12($fp)
    sub  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $t2, $zero, 32
    lw   $v0, -16($fp)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  fat16_write_file
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 444
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 446
    addi $t0, $zero, 1
    sll  $v0, $t0, 16
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
    addi $t2, $v0, 0
    lw   $v0, -12($fp)
    sub  $v0, $t2, $v0
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    addi $t4, $zero, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t4, 16($sp)
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  fat16_fd_new
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_fat16_create_file_in_dir_end:
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_create_file_in_dir

fat16_create_file:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_create_file_start
_fat16_create_file_ref_pos:
_fat16_create_file_module_ref:
    dd   _fat16_ref

_fat16_create_file_start:
    addi $sp, $sp, -12
## line 461
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    beq  $v0, $zero, _fat16_create_file_1459927716
## line 461
    addi $v0, $zero, 0
    j    _fat16_create_file_end
_fat16_create_file_1459927716:
## line 463
    addi $t0, $fp, -4
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_get_root_fd
    lw   $t0, 0($sp)
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 464
    addi $t0, $fp, -12
    addi $t1, $zero, 11
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
## line 466
_fat16_create_file_1459927812:
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    lb   $v0, 0($v0)
    beq  $v0, $zero, _fat16_create_file_1459928520
## line 467
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_normalize_filename
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 468
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_find_in_dir
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 469
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _fat16_create_file_1459928104
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_fat16_create_file_1459928104:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _fat16_create_file_1459928292
## line 470
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_create_file_in_dir
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 471
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
## line 472
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 473
    lw   $v0, -8($fp)
    j    _fat16_create_file_end
    beq  $zero, $zero, _fat16_create_file_1459928436
_fat16_create_file_1459928292:
## line 475
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_create_file_1459928432
## line 476
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
## line 477
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 478
    addi $v0, $zero, 0
    j    _fat16_create_file_end
_fat16_create_file_1459928432:
_fat16_create_file_1459928436:
## line 480
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
## line 481
    addi $t0, $fp, -4
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_create_file_1459927812
_fat16_create_file_1459928520:
## line 483
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 484
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_size
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $v0, $zero, _fat16_create_file_1459928652
## line 484
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  fat16_resize_file
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_fat16_create_file_1459928652:
## line 485
    lw   $v0, -4($fp)

_fat16_create_file_end:
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_create_file

fat16_create_dir_in_dir:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_create_dir_in_dir_start
_fat16_create_dir_in_dir_ref_pos:
_fat16_create_dir_in_dir_module_ref:
    dd   _fat16_ref

_fat16_create_dir_in_dir_start:

_fat16_create_dir_in_dir_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_create_dir_in_dir

fat16_create_dir:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_create_dir_start
_fat16_create_dir_ref_pos:
_fat16_create_dir_module_ref:
    dd   _fat16_ref

_fat16_create_dir_start:
    addi $sp, $sp, -12
## line 500
    lw   $v0, 8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    beq  $v0, $zero, _fat16_create_dir_1459928748
## line 500
    addi $v0, $zero, 0
    j    _fat16_create_dir_end
_fat16_create_dir_1459928748:
## line 502
    addi $t0, $fp, -4
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_get_root_fd
    lw   $t0, 0($sp)
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 503
    addi $t0, $fp, -12
    addi $t1, $zero, 11
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
## line 505
_fat16_create_dir_1459928844:
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    lb   $v0, 0($v0)
    beq  $v0, $zero, _fat16_create_dir_1459929244
## line 506
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_normalize_filename
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 507
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_find_in_dir
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 508
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_create_dir_1459929160
## line 509
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_create_dir_in_dir
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
_fat16_create_dir_1459929160:
## line 511
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
## line 512
    addi $t0, $fp, -4
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _fat16_create_dir_1459928844
_fat16_create_dir_1459929244:
## line 514
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 515
    lw   $v0, -4($fp)

_fat16_create_dir_end:
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_create_dir

fat16_close_file:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_close_file_start
_fat16_close_file_ref_pos:
_fat16_close_file_module_ref:
    dd   _fat16_ref

_fat16_close_file_start:
## line 520
    lw   $v0, 8($fp)
    beq  $v0, $zero, _fat16_close_file_1459929372
## line 520
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_fat16_close_file_1459929372:

_fat16_close_file_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_close_file

fat16_read:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _fat16_read_start
_fat16_read_ref_pos:
_fat16_read_module_ref:
    dd   _fat16_ref

_fat16_read_start:
    addi $sp, $sp, -12
## line 529
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_open_file
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 530
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_read_1459929492
## line 530
    addi $v0, $zero, 0
    j    _fat16_read_end
_fat16_read_1459929492:
## line 531
    addi $t0, $fp, -12
    addi $t1, $fp, -8
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t1, 4($sp)
    sw   $t2, 0($sp)
    jal  fat16_file_size
    lw   $t0, 8($sp)
    lw   $t1, 4($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t1)
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
## line 532
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _fat16_read_1459929680
## line 532
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_close_file
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 532
    addi $v0, $zero, 0
    j    _fat16_read_end
_fat16_read_1459929680:
## line 533
    addi $t0, $fp, -8
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    lw   $v0, -8($fp)
    addi $t4, $v0, 0
    lw   $v0, -12($fp)
    addi $t5, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -24
    sw   $t0, 20($sp)
    sw   $t1, 16($sp)
    sw   $t5, 12($sp)
    sw   $t4, 8($sp)
    sw   $t3, 4($sp)
    sw   $t2, 0($sp)
    jal  fat16_read_file
    lw   $t0, 20($sp)
    lw   $t1, 16($sp)
    addi $sp, $sp, 24
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 534
    lw   $v0, -8($fp)
    beq  $v0, $zero, _fat16_read_1459929920
## line 534
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_close_file
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 534
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 534
    addi $v0, $zero, 0
    j    _fat16_read_end
_fat16_read_1459929920:
## line 535
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_close_file
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 536
    lw   $v0, -12($fp)

_fat16_read_end:
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global fat16_read
