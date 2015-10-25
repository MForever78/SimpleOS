# 1 "main/sys.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "main/sys.asm"
# 1 "main/../etc/macros.asm" 1
# 2 "main/sys.asm" 2

# 1 "main/../etc/const.asm" 1
# 4 "main/sys.asm" 2

# 1 "main/../etc/interrupt.asm" 1
int_reboot:
int0:
    j _init

int_clock:
int0:
    dd 0

int_keyboard:
int1:
    dd 0

int_res_0:
int2:
    dd 0

int_res_2:
int3:
    dd 0

int_res_3:
int4:
    dd 0

int_res_4:
int5:
    dd 0

int_res_5:
int6:
    dd 0

int_res_6:
int7:
    dd 0
# 6 "main/sys.asm" 2
# 1 "main/../etc/init.asm" 1
_init:
    addi $sp, $zero, 4096 # init the stack

    jal main
__forever:
    j __forever

main:
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

    addi $s0, $zero, 10
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal malloc
    addi $sp, $sp, 4

    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal malloc
    addi $sp, $sp, 4
    addi $s1, $v0, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal malloc
    addi $sp, $sp, 4
    addi $s2, $v0, 0
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal malloc
    addi $sp, $sp, 4
    addi $sp, $sp, -4
    sw $s1, 0($sp)
    jal free
    addi $sp, $sp, 4
    addi $sp, $sp, -4
    sw $s2, 0($sp)
    jal free
    addi $sp, $sp, 4

    addi $s0, $zero, 20
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    jal malloc
    addi $sp, $sp, 4

_main_end:
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

# 7 "main/sys.asm" 2
# 1 "main/../fs/fat16.asm" 1

BLOCK_SIZE:
    dd 512

BOOT_RECORD:
    dd 0

fat16_init:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0
    lw $at, BLOCK_SIZE($gp)
    addi $sp, $sp, -4
    sw $at, 0($sp)
    jal malloc
    addi $sp, $sp, 4
    sw $v0, BOOT_RECORD($gp)
    addi $sp, $sp, -4
    sw $zero, 0($sp)
    jal fat16_read_block
    addi $sp, $sp, 4

_fat16_init_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


DISK_MEMORY_OFFSET:
    dd 0x08000000 # 128MB

fat16_read_block:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    ## now on the simulator
    lw $a0, 8($fp)
    sll $t0, $a0, 9 # mul index by 512
    lw $at, DISK_MEMORY_OFFSET($gp)
    add $t0, $t0, $at
    lw $at, BLOCK_SIZE($gp)
    addi $sp, $sp, -4
    sw $at, 0($sp)
    addi $sp, $sp, -4
    sw $t0, 0($sp)
    lw $a1, 12($fp)
    addi $sp, $sp, -4
    sw $a1, 0($sp)
    jal memcpy
    addi $sp, $sp, 12

_fat16_read_block_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


fat16_write_block:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    sll $t0, $a0, 9 # mul index by 512
    lw $at, DISK_MEMORY_OFFSET($gp)
    add $t0, $t0, $at
    lw $at, BLOCK_SIZE($gp)
    addi $sp, $sp, -4
    sw $at, 0($sp)
    lw $a1, 12($fp)
    addi $sp, $sp, -4
    sw $a1, 0($sp)
    addi $sp, $sp, -4
    sw $t0, 0($sp)
    jal memcpy
    addi $sp, $sp, 12

_fat16_write_block_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra

# 8 "main/sys.asm" 2

# 1 "main/shell.asm" 1
# 10 "main/sys.asm" 2

# 1 "main/../stdlib/stdlib.asm" 1

# 1 "main/../stdlib/math.asm" 1

mul:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    slt $t1, $t0, $a1
    beq $t1, $zero, _mul_after_swap
    lw $a1, 12($fp)
    sw $a1, 8($fp)
    sw $t0, 12($fp)
_mul_after_swap:
    addi $v0, $zero, 0
    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    addi $t2, $a1, 0
_mul_loop_start:
    beq $t2, $zero, _mul_end
    add $v0, $v0, $t0
    addi $t2, $t2, -1
    j _mul_loop_start

_mul_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra

# 3 "main/../stdlib/stdlib.asm" 2
# 1 "main/../stdlib/memory.asm" 1

_malloc_memory_pool_start:
    dd 0x00100000 ## 1MB

_malloc_linked_list_start:
    dd 0 ## un-initialized

MALLOC_HEADER_FLAGS:
    dd 0xF0000000

MALLOC_LAST_FLAG:
    dd 0x10000000

MALLOC_LAST_FLAG_NEG:
    dd 0xEFFFFFFF

MALLOC_USED_FLAG:
    dd 0x20000000

MALLOC_USED_FLAG_NEG:
    dd 0xDFFFFFFF

MALLOC_LENGTH_MASK:
    dd 0x0FFFFFFF

MALLOC_SIZE_LAST_2:
    dd 0x00000003

MALLOC_SIZE_LAST_2_NEG:
    dd 0xFFFFFFFC

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

    ## initialize linked list if havent
    lw $at, _malloc_linked_list_start($gp)
    bne $zero, $at, _malloc_initialized
    jal malloc_init

    ## loop started
_malloc_initialized:
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

_malloc_end:
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


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
    lui $t1, 0x10A0 
 ori $t1, $t1, 0x0000
    sw $t1, -4($t0)

_malloc_init_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


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

# 4 "main/../stdlib/stdlib.asm" 2
# 1 "main/../stdlib/string.asm" 1
memset:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    addi $t1, $a1, 0
    lw $a2, 16($fp)
    addi $t2, $a2, 0

_memset_loop_begin:
    beq $t2, $zero, _memset_end
    sb $t1, 0($t0)
    addi $t0, $t0, 1
    addi $t2, $t2, -1
    j _memset_loop_begin


_memset_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


memcpy:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    addi $t1, $a1, 0
    lw $a2, 16($fp)
    addi $t2, $a2, 0
_memcpy_loop_begin:
    beq $t2, $zero, _memcpy_end
    lb $t3, 0($t1)
    sb $t3, 0($t0)
    addi $t1, $t1, 1
    addi $t0, $t0, 1
    addi $t2, $t2, -1
    j _memcpy_loop_begin


_memcpy_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


strcmp:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $t0, $a0, 0
    lw $a1, 12($fp)
    addi $t1, $a1, 0
_strcmp_loop_begin:
    lb $t2, 0($t0)
    lb $t3, 0($t1)
    or $v0, $t2, $t3
    beq $v0, $zero, _strcmp_end

_strcmp_loop_not_both_end:
    sub $v0, $t2, $t3
    bne $v0, $zero, _strcmp_end

    addi $t0, $t0, 1
    addi $t1, $t1, 1

    j _strcmp_loop_begin

_strcmp_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra


strlen:
    addi $sp, $sp, -4
    sw $fp, 0($sp)
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    addi $fp, $sp, 0

    lw $a0, 8($fp)
    addi $t0, $a0, 0
    addi $v0, $zero, 0
_strlen_loop_begin:
    lb $t1, 0($t0)
    beq $t1, $zero, _strlen_end

    addi $v0, $v0, 1
    addi $t0, $t0, 1
    j _strlen_loop_begin

_strlen_end:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    lw $fp, 0($sp)
    addi $sp, $sp, 4
    jr $ra

# 5 "main/../stdlib/stdlib.asm" 2
# 11 "main/sys.asm" 2


