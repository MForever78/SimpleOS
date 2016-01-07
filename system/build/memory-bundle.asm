# 1 "memory.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "memory.asm"
# 1 "macros.asm" 1
# 2 "memory.asm" 2

.global _malloc_memory_pool_start
_malloc_memory_pool_start:
    dd 0x00010000 ## 1MB

.global _malloc_linked_list_start
_malloc_linked_list_start:
    dd 0 ## un-initialized

.global MALLOC_HEADER_FLAGS
MALLOC_HEADER_FLAGS:
    dd 0xF0000000

.global MALLOC_LAST_FLAG
MALLOC_LAST_FLAG:
    dd 0x10000000

.global MALLOC_LAST_FLAG_NEG
MALLOC_LAST_FLAG_NEG:
    dd 0xEFFFFFFF

.global MALLOC_USED_FLAG
MALLOC_USED_FLAG:
    dd 0x20000000

.global MALLOC_USED_FLAG_NEG
MALLOC_USED_FLAG_NEG:
    dd 0xDFFFFFFF

.global MALLOC_LENGTH_MASK
MALLOC_LENGTH_MASK:
    dd 0x0FFFFFFF

.global MALLOC_SIZE_LAST_2
MALLOC_SIZE_LAST_2:
    dd 0x00000003

.global MALLOC_SIZE_LAST_2_NEG
MALLOC_SIZE_LAST_2_NEG:
    dd 0xFFFFFFFC

.global malloc
malloc:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)

    ## make size % 4 == 0
    lw $a0, 8($fp)
    addi $sp, $sp, -4
    sw $a0, 0($sp)
    jal _malloc_normalize_size
    addi $sp, $sp, 4
    sw $v0, 8($fp)
    lw $at, _malloc_linked_list_start($gp)
    addi $s0, $at, 0

_malloc_loop_start:
    ## check if this block is free
    lw $t0, -4($s0)
    lw $at, MALLOC_USED_FLAG($gp)
    and $t1, $t0, $at
    beq $zero, $t1, _malloc_free_found
    lw $at, MALLOC_LENGTH_MASK($gp)
    and $t2, $t0, $at # prevent double calculate in free_found
    j _malloc_continue

_malloc_free_found:
    ## check if size is big enough
    lw $at, MALLOC_LENGTH_MASK($gp)
    and $t2, $t0, $at
    lw $a0, 8($fp)
    slt $t1, $t2, $a0
    beq $zero, $t1, _malloc_block_found

_malloc_not_enough_space_continue:
    ## test if next block is also free
    add $t3, $s0, $t2
    addi $t3, $t3, 4
    lw $t4, -4($t3)
    lw $at, MALLOC_USED_FLAG($gp)
    and $t1, $t4, $at
    ## if so, combine the two block
    beq $zero, $t1, _malloc_combine_block
    addi $s0, $t3, 0
    j _malloc_loop_start

_malloc_continue:
    lw $at, MALLOC_LAST_FLAG($gp)
    and $t1, $t0, $at
    bne $t1, $zero, _malloc_not_found
    add $t3, $s0, $t2
    addi $s0, $t3, 4
    j _malloc_loop_start

_malloc_combine_block:
    lw $at, MALLOC_LENGTH_MASK($gp)
    and $t2, $t0, $at
    add $t4, $t4, $t2
    addi $t4, $t4, 4
    sw $t4, -4($s0)
    j _malloc_loop_start

_malloc_block_found:
    ## test if space enough for next block
    lw $a0, 8($fp)
    sub $t1, $t2, $a0
    slti $t1, $t1, 8
    bne $t1, $zero, _malloc_block_size_fit

    ## if so, split block
    lw $a0, 8($fp)
    add $t3, $s0, $a0
    addi $t3, $t3, 4
    addi $t4, $t0, 0
    lw $a0, 8($fp)
    sub $t4, $t4, $a0
    addi $t4, $t4, -4
    sw $t4, -4($t3)

    ## modify current length & set the header not last
    lw $at, MALLOC_HEADER_FLAGS($gp)
    and $t0, $t0, $at
    lw $at, MALLOC_LAST_FLAG_NEG($gp)
    and $t0, $t0, $at
    lw $a0, 8($fp)
    or $t0, $t0, $a0

_malloc_block_size_fit:
    ## mark the block not free
    lw $at, MALLOC_USED_FLAG($gp)
    or $t0, $t0, $at
    sw $t0, -4($s0)
    addi $v0, $s0, 0
    j _malloc_end
_malloc_not_found:
    addi $t5, $t6, MALLOC_OOM
    addi $sp, $sp, -4
    sw $t5, 0($sp)
    jal console_print_str
    addi $sp, $sp, 4
    addi $v0, $zero, 0
    j _malloc_end

_malloc_end:
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


MALLOC_OOM:
    string "OOM\n"

.global calloc
calloc:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a1, 12($fp)
    addi $sp, $sp, -4
    sw $a1, 0($sp)
    lw $a0, 8($fp)
    addi $sp, $sp, -4
    sw $a0, 0($sp)
    jal mul
    addi $sp, $sp, 8
    addi $sp, $sp, -4
    sw $v0, 0($sp)
    jal malloc
    addi $sp, $sp, 4

_calloc_end:
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
    lw $t0, -4($a0)
    lw $at, MALLOC_USED_FLAG_NEG($gp)
    and $t0, $t0, $at
    lw $a0, 8($fp)
    sw $t0, -4($a0)

_free_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


## no param
.global malloc_init
malloc_init:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    ## initialize linked list
    lw $at, _malloc_memory_pool_start($gp)
    addi $t0, $at, 4
    sw $t0, _malloc_linked_list_start($gp)

    ## initialize first free block
    lui $t1, 0x1007 
 ori $t1, $t1, 0x0000
    sw $t1, -4($t0)

_malloc_init_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global _malloc_normalize_size
_malloc_normalize_size:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    lw $at, MALLOC_SIZE_LAST_2($gp)
    and $t0, $a0, $at
    beq $t0, $zero, __malloc_normalize_size_not_adjusted
    lw $a0, 8($fp)
    lw $at, MALLOC_SIZE_LAST_2_NEG($gp)
    and $t1, $a0, $at
    addi $v0, $t1, 4
    j __malloc_normalize_size_end
__malloc_normalize_size_not_adjusted:
    lw $a0, 8($fp)
    addi $v0, $a0, 0

__malloc_normalize_size_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global load_half_unaligned
load_half_unaligned:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    lb $t0, 0($a0)
    lw $a0, 8($fp)
    lb $t1, 1($a0)
    sll $v0, $t1, 8
    or $v0, $v0, $t0

_load_half_unaligned_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


.global load_dword_unaligned
load_dword_unaligned:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    lw $a0, 8($fp)
    lb $t0, 0($a0)
    lw $a0, 8($fp)
    lb $t1, 1($a0)
    lw $a0, 8($fp)
    lb $t2, 2($a0)
    lw $a0, 8($fp)
    lb $t3, 3($a0)

    sll $t1, $t1, 8
    sll $t2, $t2, 16
    sll $t3, $t3, 24

    addi $v0, $t0, 0
    or $v0, $v0, $t1
    or $v0, $v0, $t2
    or $v0, $v0, $t3

_load_dword_unaligned_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra



