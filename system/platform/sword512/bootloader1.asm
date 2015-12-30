## bootloader1 sycall table:
## 20: fat16_find_in_dir(entry, entry_limit, name)      -> entry
## 21: fat16_next_sector(fat, start_of_data. sector)    -> sector
bootloader1_init:
    lui     $gp, 4
    addi    $gp, $gp, 512

    addi    $t0, $gp, fat16_find_in_dir_syscall_handler
    sw      $t0, 80($zero)
    addi    $t0, $gp, fat16_next_sector_syscall_handler
    sw      $t0, 84($zero)

    addi    $a0, $gp, 454   ## load start of primary partition #0
    addi    $v0, $zero, 13
    syscall $v0

    addi    $a0, $v0, 0     ## load bootloader2
    addi    $a1, $zero, 0
    addi    $v0, $zero, 8
    syscall $v0

    addi    $a0, $gp, 512
    lui     $a1, 0x2000
    addi    $a2, $zero, 512
    addi    $v0, $zero, 9
    syscall $v0

    addi    $t0, $gp, 512   ## jump to bootloader2
    jr      $t0

## fat16_find_in_dir(entry, entry_limit, name)  -> entry
## modified t0, t1, t2, ra
fat16_find_in_dir_syscall_handler:
    mfco    $ra, 3         ## save ra

    addi    $t0, $a0, 0
    addi    $t1, $a1, 0
    addi    $t2, $a2, 0

    j       _fat16_find_in_dir_cmp
_fat16_find_in_dir_loop:
    addi    $a0, $t0, 0         ## strncmp
    addi    $a1, $t2, 0
    addi    $a2, $zero, 11
    addi    $v0, $zero, 11
    syscall $v0

    beq     $v0, $zero, _fat16_find_in_dir_found
    addi    $t0, $t0, 32
_fat16_find_in_dir_cmp:
    bne     $t0, $t1, _fat16_find_in_dir_loop

_fat16_find_in_dir_not_found:
    addi    $v0, $zero, 0
    j       _fat16_find_in_dir_end
_fat16_find_in_dir_found:
    addi    $v0, $t0, 0
_fat16_find_in_dir_end:
    mtco    $ra, 3
    eret
.global fat16_find_in_dir_syscall_handler

## fat16_next_sector(fat, start_of_data, sector)    -> sector
fat16_next_sector_syscall_handler:
    sub     $v0, $a2, $a1
    addi    $v0, $v0, 1
    andi    $a3, $v0, 3
    bne     $a3, $zero, _fat16_next_sector_end

    srl     $v0, $v0, 2     ## assume sector per cluster = 4
    addi    $v0, $v0, 1     ## this is cluster, NOTE: add 2, after sub 1
    sll     $v0, $v0, 1
    add     $v0, $v0, $a0
    lh      $v0, 0($v0)
    addi    $v1, $zero, 0x7FFF
    addi    $v1, $v1, 1
    and     $v1, $v0, $v1
    bne     $v1, $zero, _fat16_next_sector_return_zero
    addi    $v0, $v0, -2    ## -2
    sll     $v0, $v0, 2
_fat16_next_sector_end:
    add     $v0, $v0, $a1
    eret
_fat16_next_sector_return_zero:
    addi    $v0, $zero, 0
    eret
.global fat16_next_sector_syscall_handler
