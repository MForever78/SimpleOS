_initc_ref:

initc:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _initc_start
_initc_ref_pos:
_initc_module_ref:
    dd   _initc_ref

_initc_start:
    addi $sp, $sp, -20
## line 9
    addi $t0, $fp, -4
    addi $t1, $zero, 256
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
## line 10
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  get_cmd
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 12
    addi $t0, $fp, -12
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 13
    addi $t0, $fp, -20
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
## line 15
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    addi $t1, $fp, -12
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    addi $t1, $v0, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
## line 17
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
## line 18
_initc_1459913040:
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    lb   $v0, 0($v0)
    beq  $v0, $zero, _initc_1459913412
## line 19
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _initc_1459913216
    and  $v0, $t0, $v0
    lw   $v0, -8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -32
    addi $t0, $v0, 0
_initc_1459913216:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _initc_1459913400
## line 20
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    addi $t1, $fp, -12
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    addi $t1, $v0, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
## line 21
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
_initc_1459913400:
    beq  $zero, $zero, _initc_1459913040
_initc_1459913412:
## line 25
    addi $t0, $fp, -16
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  main
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 26
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
## line 27
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
## line 29
    lw   $v0, -16($fp)

_initc_end:
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global initc
