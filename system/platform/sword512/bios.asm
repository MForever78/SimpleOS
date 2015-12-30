## bios syscall table:
##  8: disk_syscall(block, we)
##  9: memcpy_syscall(dst, src, len)
##  10: strlen(str) -> len
##  11: strncmp(sa, sb, n) -> res
##  12: draw_bitmap(start, bitmap, color)
##  13: load_dword_unaligned(addr)

bios_init:
    lui     $gp, 4              # base address 0x00010000

    addi    $t0, $gp, interrupt_handler
    sw      $t0, 4($zero)
    
    ## setup interrupt table
    addi    $t0, $gp, disk_syscall_handler
    sw      $t0, 32($zero)
    addi    $t0, $gp, memcpy_syscall_handler
    sw      $t0, 36($zero)
    addi    $t0, $gp, strlen_syscall_handler
    sw      $t0, 40($zero)
    addi    $t0, $gp, strncmp_syscall_handler
    sw      $t0, 44($zero)
    addi    $t0, $gp, draw_bitmap_syscall_handler
    sw      $t0, 48($zero)
    addi    $t0, $gp, load_dword_unaligned_syscall_handler
    sw      $t0, 52($zero)

    ## load bootloader into hardware buffer
    addi    $a0, $zero, 0
    addi    $a1, $zero, 0
    addi    $v0, $zero, 8
    syscall $v0

    ## copy bootloader to 1M
    addi    $a0, $gp, 512
    lui     $a1, 0x2000
    addi    $a2, $zero, 512             ## one block
    addi    $v0, $zero, 9
    syscall $v0

    ## jump to bootloader
    addi    $t0, $gp, 512
    jr      $t0

## disk(block, we)
disk_syscall_handler:
    sll     $a1, $a1, 31
    or      $a0, $a0, $a1
    lui     $a2, 0x2000
    addi    $v0, $zero, 0
    sw      $a0, 0x0200($a2)
    eret
.global disk_syscall_handler

## memcpy(dst, src, len)
memcpy_syscall_handler:
    j       _memcpy_cmp
_memcpy_begin:
    lb      $a3, 0($a1)
    sb      $a3, 0($a0)
    addi    $a0, $a0, 1
    addi    $a1, $a1, 1
    addi    $a2, $a2, -1
_memcpy_cmp:
    bne     $a2, $zero, _memcpy_begin
    eret
.global memcpy_syscall_handler

## strlen(str) -> len
strlen_syscall_handler:
    addi    $v0, $v0, 0
    j       _strlen_cmp
_strlen_loop:
    addi    $v0, $v0, 1
    addi    $a0, $a0, 1
_strlen_cmp:
    lb      $a3, 0($a0)
    bne     $a3, $zero, _strlen_loop
    eret
.global strlen_syscall_handler

## strncmp(sa, sb, n) -> res
strncmp_syscall_handler:
    addi    $v0, $v0, 0
    j       _strncmp_cmp
_strncmp_loop:
    lb      $v1, 0($a0)
    lb      $a3, 0($a1)
    sub     $v0, $v1, $a3
    bne     $v0, $zero, _strncmp_end
    beq     $v1, $zero, _strncmp_end
    addi    $a0, $a0, 1
    addi    $a1, $a1, 1
    addi    $a2, $a2, -1
_strncmp_cmp:
    bne     $a2, $zero, _strncmp_loop
_strncmp_end:
    eret
.global strncmp_syscall_handler

## draw_bitmap(start, bitmap, color)
## always draw 8
draw_bitmap_syscall_handler:
    addi    $a3, $zero, 8
    j       _draw_bitmap_cmp
_draw_bitmap_loop:
    andi    $v1, $a1, 1
    beq     $v1, $zero, _draw_bitmap_black
    sh      $a2, 0($a0)
    j       _draw_bitmap_cmp
_draw_bitmap_black:
    sh      $zero, 0($a0)
_draw_bitmap_cmp:
    addi    $a0, $a0, 2
    bne     $a3, $zero, _draw_bitmap_loop
    eret
.global draw_bitmap_syscall_handler

## load_dword_unaligned(addr)    -> word
load_dword_unaligned_syscall_handler:
    lb      $v0, 3($a0)
    lb      $a1, 2($a0)
    sll     $v0, $v0, 8
    add     $v0, $v0, $a1
    lb      $a1, 1($a0)
    sll     $v0, $v0, 8
    add     $v0, $v0, $a1
    lb      $a1, 0($a0)
    sll     $v0, $v0, 8
    add     $v0, $v0, $a1
    eret
.global load_dword_unaligned_syscall_handler

interrupt_handler:
    mfco    $v0, 2
    sll     $v0, $v0, 2
    lw      $v0, 0($v0)
    jr      $v0
.global interrupt_handler
