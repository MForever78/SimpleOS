
VADDR:
    dd 0x40000000

COLOR:
    dd 0xFFFF

init:
    lw $t0, VADDR($gp)
    lw $t1, COLOR($gp)
    sw $t1, 0($t0)

    jr $ra
