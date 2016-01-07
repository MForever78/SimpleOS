_exec_ref:

reloc:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _reloc_start
_reloc_ref_pos:
_reloc_module_ref:
    dd   _exec_ref

_reloc_start:
    addi $sp, $sp, -12
## line 7
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 26
    addi $t1, $v0, 0
    ori  $v0, $t1, 2
    sub  $v0, $t0, $v0
    beq  $v0, $zero, _reloc_1459912832
## line 7
    addi $t0, $zero, -1
    addi $v0, $t0, -1024
    j    _reloc_end
_reloc_1459912832:
## line 9
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 10
    addi $t0, $fp, -8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 12
_reloc_1459913028:
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    sub  $v0, $t0, $v0
    beq  $v0, $zero, _reloc_1459914340
## line 13
    lw   $v0, -4($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    andi $v0, $t0, 15
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    bne  $v0, $t0, _reloc_1459913172
## line 13
    addi $t0, $zero, -2
    addi $v0, $t0, -1024
    j    _reloc_end
_reloc_1459913172:
## line 14
    lw   $v0, -4($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    bne  $v0, $t0, _reloc_1459913300
## line 16
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _reloc_1459914328
_reloc_1459913300:
## line 18
    lw   $v0, -4($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    bne  $v0, $t0, _reloc_1459913788
## line 20
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 21
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, 12($fp)
    addi $t2, $v0, 0
    srl  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 26
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    and  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, -12($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 6
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    addi $t3, $v0, 0
    sll  $v0, $t3, 26
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 23
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _reloc_1459914324
_reloc_1459913788:
## line 25
    lw   $v0, -4($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 49
    bne  $v0, $t0, _reloc_1459914092
## line 27
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, 12($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 28
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _reloc_1459914320
_reloc_1459914092:
## line 30
    lw   $v0, -4($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _reloc_1459914316
## line 32
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 12
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    addi $v0, $t2, -4
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
_reloc_1459914316:
_reloc_1459914320:
_reloc_1459914324:
_reloc_1459914328:
    beq  $zero, $zero, _reloc_1459913028
_reloc_1459914340:
## line 36
    addi $v0, $zero, 0

_reloc_end:
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global reloc

exec:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _exec_start
_exec_ref_pos:
_exec_module_ref:
    dd   _exec_ref

_exec_start:
    addi $sp, $sp, -8
## line 44
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_read
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 45
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _exec_1459914480
## line 45
    addi $v0, $zero, -1024
    j    _exec_end
_exec_1459914480:
## line 47
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  reloc
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 48
    lw   $v0, -8($fp)
    beq  $v0, $zero, _exec_1459914640
## line 48
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
## line 48
    lw   $v0, -8($fp)
    j    _exec_end
_exec_1459914640:
## line 50
    addi $v0, $ra, s1486131208[_exec_ref_pos]
    addi $t0, $v0, 0
    addi $t1, $zero, 32767
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  console_print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 51
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  _print_number
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 52
    addi $v0, $ra, s1486131220[_exec_ref_pos]
    addi $t0, $v0, 0
    addi $t1, $zero, 32767
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  console_print_str
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 54
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  _actual_exec
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 55
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
## line 56
    lw   $v0, -8($fp)

_exec_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global exec
s1486131208:
    string "Loaded at: "

s1486131220:
    string "\n"

