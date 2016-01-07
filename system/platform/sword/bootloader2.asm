    beq     $zero, $zero, bootloader2_init  #    dd 0x6d903ceb
    dd 0x2e73666b                           # fat16 infomations
    dd 0x00746166
    dd 0x00010402
    dd 0x00020002
    dd 0x007cf800
    dd 0x00ff003f
    dd 0x0000003f
KERNEL_NAME:
    string  "KERNEL  BIN"
bootloader2_init:
    lui     $gp, 1
    addi    $gp, $gp, 512
    
    ## load FAT to 64K + 1K
    addi    $s0, $gp, 512
    addi    $s1, $zero, 64      # FAT start at sector 1 + 63
    addi    $s7, $zero, 124     # 124 sectors per FAT
    j       _load_fat_cmp
_load_fat_loop:
    addi    $a0, $s1, 0         # read block
    addi    $a1, $zero, 0
    addi    $v0, $zero, 2
    syscall $v0

    addi    $a0, $s0, 0         # move to dst
    lui     $a1, 0x2000
    addi    $a2, $zero, 512
    addi    $v0, $zero, 3
    syscall $v0

    addi    $s0, $s0, 512
    addi    $s1, $s1, 1
    addi    $s7, $s7, -1
_load_fat_cmp:
    bne     $s7, $zero, _load_fat_loop

    ## load root dir to 512
    addi    $s0, $zero, 512
    addi    $s1, $zero, 312     # Root start at sector 249 + 63
    addi    $s7, $zero, 32      # 32 sectors per Root
    j       _load_root_cmp
_load_root_loop:
    addi    $a0, $s1, 0         # read block
    addi    $a1, $zero, 0
    addi    $v0, $zero, 2
    syscall $v0

    addi    $a0, $s0, 0         # move to dst
    lui     $a1, 0x2000
    addi    $a2, $zero, 512
    addi    $v0, $zero, 3
    syscall $v0

    addi    $s0, $s0, 512
    addi    $s1, $s1, 1
    addi    $s7, $s7, -1
_load_root_cmp:
.global _load_root_cmp
    bne     $s7, $zero, _load_root_loop

    ## search in root for kernel
    addi    $a0, $zero, 512
    addi    $a1, $a0, 16384
    addi    $a2, $gp, KERNEL_NAME
    addi    $v0, $zero, 20
    syscall $v0

    lh      $s0, 26($v0)        # cluster !
    ## load kernel into 0 !
    addi    $s1, $s0, -2
    sll     $s1, $s1, 2
    addi    $s1, $s1, 345       # by pass first sector, start of data(=344) + 1
    addi    $s2, $zero, 512     # dst pointer
_load_kernel_loop:
    addi    $a0, $s1, 0         # read block
    addi    $a1, $zero, 0
    addi    $v0, $zero, 2
    syscall $v0
    
    addi    $a0, $s2, 0         # copy to dst
    lui     $a1, 0x2000
    addi    $a2, $zero, 512
    addi    $v0, $zero, 3
    syscall $v0

    addi    $a0, $gp, 512       # calculate next sector
    addi    $a1, $zero, 344
    addi    $a2, $s1, 0
    addi    $v0, $zero, 21
    syscall $v0

    beq     $v0, $zero, _load_kernel_end
    addi    $s1, $v0, 0
    addi    $s2, $s2, 512
    j       _load_kernel_loop
_load_kernel_end:
    ## load first sector
    addi    $s1, $s0, -2
    sll     $s1, $s1, 2
    addi    $a0, $s1, 344
    addi    $a1, $zero, 0
    addi    $v0, $zero, 2
    syscall $v0

    ## copy to 0
    addi    $a0, $zero, 0
    lui     $a1, 0x2000
    addi    $a2, $zero, 512
_copy_first_loop:
    lb      $a3, 0($a1)
    sb      $a3, 0($a0)
    addi    $a0, $a0, 1
    addi    $a1, $a1, 1
    addi    $a2, $a2, -1
_copy_first_cmp:
    bne     $a2, $zero, _copy_first_loop

    jr      $zero

