_cc_ref:

p:
    dd 0
.global p

lp:
    dd 0
.global lp

data:
    dd 0
.global data

buff:
    dd 0
.global buff

file:
    dd 0
.global file

e:
    dd 0
.global e

le:
    dd 0
.global le

id:
    dd 0
.global id

sym:
    dd 0
.global sym

current_func:
    dd 0
.global current_func

tk:
    dd 0
.global tk

ival:
    dd 0
.global ival

ty:
    dd 0
.global ty

loc:
    dd 0
.global loc

line:
    dd 0
.global line

st:
    dd 0
.global st

tl:
    dd 0
.global tl

next:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _next_start
_next_ref_pos:
_next_module_ref:
    dd   _cc_ref

_next_start:
    addi $sp, $sp, -4
## line 49
_next_1459912724:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    sw   $v0, 0($t0)
    beq  $v0, $zero, _next_1459921056
## line 50
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 51
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 10
    bne  $v0, $t0, _next_1459912908
## line 51
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459921044
_next_1459912908:
## line 52
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 35
    bne  $v0, $t0, _next_1459913132
## line 53
_next_1459912964:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459913052
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -10
    addi $t0, $v0, 0
_next_1459913052:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459913120
## line 53
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459912964
_next_1459913120:
    beq  $zero, $zero, _next_1459921040
_next_1459913132:
## line 55
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 97
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459913220
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 122
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459913220:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459913332
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 65
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459913320
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 90
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459913320:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459913332:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459913388
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 95
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459913388:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459914920
## line 56
    addi $t0, $fp, -4
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 57
_next_1459913464:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 97
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459913552
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 122
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459913552:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459913672
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 65
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459913660
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 90
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459913660:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459913672:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459913792
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459913780
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459913780:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459913792:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459913852
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 95
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459913852:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459913992
## line 58
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 147
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  mul
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t2, $v0, 0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    lb   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459913464
_next_1459913992:
## line 59
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    sll  $v0, $t1, 6
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t2, $v0
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 60
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, sym[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 61
_next_1459914132:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    beq  $v0, $zero, _next_1459914600
## line 62
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459914420
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t2, $v0
    addi $t2, $v0, 0
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
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459914420:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459914520
## line 62
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 62
    j    _next_end
_next_1459914520:
## line 63
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 9
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459914132
_next_1459914600:
## line 65
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
## line 66
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 67
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 68
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $zero, 135
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 69
    j    _next_end
    beq  $zero, $zero, _next_1459921036
_next_1459914920:
## line 71
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459915008
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459915008:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459916376
## line 72
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -48
    sw   $v0, 0($t0)
    beq  $v0, $zero, _next_1459915348
## line 72
_next_1459915092:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459915180
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459915180:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459915336
## line 72
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 10
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  mul
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t2, $v0, 0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    lb   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -48
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459915092
_next_1459915336:
    beq  $zero, $zero, _next_1459916320
_next_1459915348:
## line 73
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 120
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459915444
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 88
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459915444:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459916056
## line 74
_next_1459915468:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    lb   $v0, 0($v0)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459915856
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459915620
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459915620:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459915732
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 97
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459915720
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 102
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459915720:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459915732:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459915844
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 65
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459915832
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 70
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459915832:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459915844:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459915856:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459916044
## line 75
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 16
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  mul
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $zero, 65
    slt  $v0, $t2, $v0
    addi $v0, $v0, -1
    beq  $v0, $zero, _next_1459916012
    addi $v0, $zero, 9
    beq  $zero, $zero, _next_1459916024
_next_1459916012:
    addi $v0, $zero, 0
_next_1459916024:
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459915468
_next_1459916044:
    beq  $zero, $zero, _next_1459916316
_next_1459916056:
## line 77
_next_1459916068:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459916156
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 55
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459916156:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459916312
## line 77
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 8
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  mul
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t2, $v0, 0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -1
    lb   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -48
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459916068
_next_1459916312:
_next_1459916316:
_next_1459916320:
## line 78
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    sw   $v0, 0($t0)
## line 79
    j    _next_end
    beq  $zero, $zero, _next_1459921032
_next_1459916376:
## line 81
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 47
    bne  $v0, $t0, _next_1459916752
## line 82
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 47
    bne  $v0, $t0, _next_1459916692
## line 83
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 84
_next_1459916524:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459916612
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -10
    addi $t0, $v0, 0
_next_1459916612:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459916680
## line 84
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459916524
_next_1459916680:
    beq  $zero, $zero, _next_1459916740
_next_1459916692:
## line 87
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 162
    sw   $v0, 0($t0)
## line 88
    j    _next_end
_next_1459916740:
    beq  $zero, $zero, _next_1459921028
_next_1459916752:
## line 91
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 39
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459916840
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459916840:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459917804
## line 92
    addi $t0, $fp, -4
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, data[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 93
_next_1459916900:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459916992
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459916992:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459917608
## line 94
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    lb   $v0, 0($v0)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 92
    bne  $v0, $t0, _next_1459917468
## line 95
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 110
    bne  $v0, $t0, _next_1459917260
## line 95
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 10
    sw   $v0, 0($t0)
## line 95
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459917464
_next_1459917260:
## line 96
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 116
    bne  $v0, $t0, _next_1459917412
## line 96
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    sw   $v0, 0($t0)
## line 96
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459917460
_next_1459917412:
## line 97
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
_next_1459917460:
_next_1459917464:
_next_1459917468:
## line 99
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    bne  $v0, $t0, _next_1459917596
## line 99
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, data[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    lw   $v0, 0($v0)
    sb   $v0, 0($t0)
_next_1459917596:
    beq  $zero, $zero, _next_1459916900
_next_1459917608:
## line 101
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 102
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    bne  $v0, $t0, _next_1459917744
## line 102
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459917780
_next_1459917744:
## line 102
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    sw   $v0, 0($t0)
_next_1459917780:
## line 103
    j    _next_end
    beq  $zero, $zero, _next_1459921024
_next_1459917804:
## line 105
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 61
    bne  $v0, $t0, _next_1459918044
## line 105
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 61
    bne  $v0, $t0, _next_1459917984
## line 105
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 105
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 151
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459918020
_next_1459917984:
## line 105
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 144
    sw   $v0, 0($t0)
_next_1459918020:
## line 105
    j    _next_end
    beq  $zero, $zero, _next_1459921020
_next_1459918044:
## line 106
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 43
    bne  $v0, $t0, _next_1459918284
## line 106
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 43
    bne  $v0, $t0, _next_1459918224
## line 106
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 106
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 164
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459918260
_next_1459918224:
## line 106
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 159
    sw   $v0, 0($t0)
_next_1459918260:
## line 106
    j    _next_end
    beq  $zero, $zero, _next_1459921016
_next_1459918284:
## line 107
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 45
    bne  $v0, $t0, _next_1459918524
## line 107
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 45
    bne  $v0, $t0, _next_1459918464
## line 107
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 107
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 165
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459918500
_next_1459918464:
## line 107
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 160
    sw   $v0, 0($t0)
_next_1459918500:
## line 107
    j    _next_end
    beq  $zero, $zero, _next_1459921012
_next_1459918524:
## line 108
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    bne  $v0, $t0, _next_1459918720
## line 108
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 61
    bne  $v0, $t0, _next_1459918696
## line 108
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 108
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 152
    sw   $v0, 0($t0)
_next_1459918696:
## line 108
    j    _next_end
    beq  $zero, $zero, _next_1459921008
_next_1459918720:
## line 109
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 60
    bne  $v0, $t0, _next_1459919100
## line 109
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 61
    bne  $v0, $t0, _next_1459918900
## line 109
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 109
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 155
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459919076
_next_1459918900:
## line 109
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 60
    bne  $v0, $t0, _next_1459919036
## line 109
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 109
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 157
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459919072
_next_1459919036:
## line 109
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 153
    sw   $v0, 0($t0)
_next_1459919072:
_next_1459919076:
## line 109
    j    _next_end
    beq  $zero, $zero, _next_1459921004
_next_1459919100:
## line 110
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 62
    bne  $v0, $t0, _next_1459919480
## line 110
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 61
    bne  $v0, $t0, _next_1459919280
## line 110
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 110
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 156
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459919456
_next_1459919280:
## line 110
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 62
    bne  $v0, $t0, _next_1459919416
## line 110
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 110
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 158
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459919452
_next_1459919416:
## line 110
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 154
    sw   $v0, 0($t0)
_next_1459919452:
_next_1459919456:
## line 110
    j    _next_end
    beq  $zero, $zero, _next_1459921000
_next_1459919480:
## line 111
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 124
    bne  $v0, $t0, _next_1459919720
## line 111
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 124
    bne  $v0, $t0, _next_1459919660
## line 111
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 111
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 146
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459919696
_next_1459919660:
## line 111
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 148
    sw   $v0, 0($t0)
_next_1459919696:
## line 111
    j    _next_end
    beq  $zero, $zero, _next_1459920996
_next_1459919720:
## line 112
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 38
    bne  $v0, $t0, _next_1459919960
## line 112
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 38
    bne  $v0, $t0, _next_1459919900
## line 112
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 112
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 147
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459919936
_next_1459919900:
## line 112
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 150
    sw   $v0, 0($t0)
_next_1459919936:
## line 112
    j    _next_end
    beq  $zero, $zero, _next_1459920992
_next_1459919960:
## line 113
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 94
    bne  $v0, $t0, _next_1459920060
## line 113
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 149
    sw   $v0, 0($t0)
## line 113
    j    _next_end
    beq  $zero, $zero, _next_1459920988
_next_1459920060:
## line 114
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 37
    bne  $v0, $t0, _next_1459920160
## line 114
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 163
    sw   $v0, 0($t0)
## line 114
    j    _next_end
    beq  $zero, $zero, _next_1459920984
_next_1459920160:
## line 115
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 42
    bne  $v0, $t0, _next_1459920260
## line 115
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 161
    sw   $v0, 0($t0)
## line 115
    j    _next_end
    beq  $zero, $zero, _next_1459920980
_next_1459920260:
## line 116
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 91
    bne  $v0, $t0, _next_1459920360
## line 116
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 166
    sw   $v0, 0($t0)
## line 116
    j    _next_end
    beq  $zero, $zero, _next_1459920976
_next_1459920360:
## line 117
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 63
    bne  $v0, $t0, _next_1459920460
## line 117
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 145
    sw   $v0, 0($t0)
## line 117
    j    _next_end
    beq  $zero, $zero, _next_1459920972
_next_1459920460:
## line 118
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 126
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459920548
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 59
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459920548:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459920604
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 123
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459920604:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459920660
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 125
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459920660:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459920716
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 40
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459920716:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459920772
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 41
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459920772:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459920828
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 93
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459920828:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459920884
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 44
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459920884:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459920940
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 58
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459920940:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459920968
## line 118
    j    _next_end
_next_1459920968:
_next_1459920972:
_next_1459920976:
_next_1459920980:
_next_1459920984:
_next_1459920988:
_next_1459920992:
_next_1459920996:
_next_1459921000:
_next_1459921004:
_next_1459921008:
_next_1459921012:
_next_1459921016:
_next_1459921020:
_next_1459921024:
_next_1459921028:
_next_1459921032:
_next_1459921036:
_next_1459921040:
_next_1459921044:
    beq  $zero, $zero, _next_1459912724
_next_1459921056:

_next_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global next

expr:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _expr_start
_expr_ref_pos:
_expr_module_ref:
    dd   _cc_ref

_expr_start:
    addi $sp, $sp, -8
## line 126
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _expr_1459921192
## line 126
    addi $v0, $ra, s1486131208[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 126
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _expr_1459930296
_expr_1459921192:
## line 127
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    bne  $v0, $t0, _expr_1459921424
## line 127
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 127
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 127
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 127
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459930292
_expr_1459921424:
## line 128
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    bne  $v0, $t0, _expr_1459921820
## line 129
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 129
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 129
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 130
_expr_1459921624:
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    bne  $v0, $t0, _expr_1459921692
## line 130
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _expr_1459921624
_expr_1459921692:
## line 131
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, data[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, data[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    addi $v0, $t2, -4
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 131
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459930288
_expr_1459921820:
## line 133
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 142
    bne  $v0, $t0, _expr_1459922772
## line 134
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 134
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 40
    bne  $v0, $t0, _expr_1459921960
## line 134
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _expr_1459922044
_expr_1459921960:
## line 134
    addi $v0, $ra, s1486131244[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 134
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459922044:
## line 135
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 135
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 140
    bne  $v0, $t0, _expr_1459922152
## line 135
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _expr_1459922256
_expr_1459922152:
## line 135
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 136
    bne  $v0, $t0, _expr_1459922252
## line 135
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 135
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
_expr_1459922252:
_expr_1459922256:
## line 136
_expr_1459922268:
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 161
    bne  $v0, $t0, _expr_1459922388
## line 136
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 136
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 2
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459922268
_expr_1459922388:
## line 137
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 41
    bne  $v0, $t0, _expr_1459922464
## line 137
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _expr_1459922548
_expr_1459922464:
## line 137
    addi $v0, $ra, s1486131280[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 137
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459922548:
## line 138
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 138
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t1, _expr_1459922712
    addi $v0, $zero, 1
    beq  $zero, $zero, _expr_1459922724
_expr_1459922712:
    addi $v0, $zero, 4
_expr_1459922724:
    sw   $v0, 0($t0)
## line 139
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459930284
_expr_1459922772:
## line 141
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 135
    bne  $v0, $t0, _expr_1459925960
## line 142
    addi $t0, $fp, -8
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 142
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 143
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 40
    bne  $v0, $t0, _expr_1459923792
## line 144
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 145
    addi $t0, $fp, -4
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 146
_expr_1459922980:
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -41
    beq  $v0, $zero, _expr_1459923232
## line 146
    addi $t0, $zero, 144
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 146
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 146
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 146
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 44
    bne  $v0, $t0, _expr_1459923220
## line 146
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459923220:
    beq  $zero, $zero, _expr_1459922980
_expr_1459923232:
## line 147
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 148
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 129
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _expr_1459923412
    or   $v0, $t0, $v0
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_expr_1459923412:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _expr_1459923624
## line 148
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 7
    sw   $v0, 0($t0)
## line 148
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
## line 148
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459923708
_expr_1459923624:
## line 149
    addi $v0, $ra, s1486131316[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 149
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459923708:
## line 150
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 4
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459925948
_expr_1459923792:
## line 152
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    bne  $v0, $t0, _expr_1459924076
## line 152
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 152
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 5
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 152
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459925944
_expr_1459924076:
## line 154
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 134
    bne  $v0, $t0, _expr_1459924328
## line 154
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 3
    sw   $v0, 0($t0)
## line 154
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 5
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459925768
_expr_1459924328:
## line 155
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 133
    bne  $v0, $t0, _expr_1459924580
## line 155
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 4
    sw   $v0, 0($t0)
## line 155
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 5
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459925764
_expr_1459924580:
## line 156
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    bne  $v0, $t0, _expr_1459924796
## line 157
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 157
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459925760
_expr_1459924796:
## line 159
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 132
    bne  $v0, $t0, _expr_1459925012
## line 160
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    sw   $v0, 0($t0)
## line 161
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459925756
_expr_1459925012:
## line 165
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    sw   $v0, 0($t0)
## line 166
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
## line 167
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 168
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 132
    sw   $v0, 0($t0)
## line 169
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486131340[_expr_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, -8($fp)
    addi $t5, $v0, 0
    addi $t6, $zero, 1
    sll  $v0, $t6, 2
    add  $v0, $t5, $v0
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    andi $v0, $t5, 63
    addi $t5, $v0, 0
    lw   $v0, -8($fp)
    addi $t6, $v0, 0
    addi $t7, $zero, 2
    sll  $v0, $t7, 2
    add  $v0, $t6, $v0
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    lw   $v0, -8($fp)
    addi $t7, $v0, 0
    addi $t8, $zero, 1
    sll  $v0, $t8, 2
    add  $v0, $t7, $v0
    lw   $v0, 0($v0)
    addi $t7, $v0, 0
    andi $v0, $t7, 63
    addi $t7, $v0, 0
    lw   $v0, -8($fp)
    addi $t8, $v0, 0
    addi $t9, $zero, 2
    sll  $v0, $t9, 2
    add  $v0, $t8, $v0
    lw   $v0, 0($v0)
    addi $t8, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -36
    sw   $t0, 32($sp)
    sw   $t8, 28($sp)
    sw   $t7, 24($sp)
    sw   $t6, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 32($sp)
    addi $sp, $sp, 36
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 176
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_expr_1459925756:
_expr_1459925760:
_expr_1459925764:
_expr_1459925768:
## line 178
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 4
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t1, _expr_1459925924
    addi $v0, $zero, 12
    beq  $zero, $zero, _expr_1459925936
_expr_1459925924:
    addi $v0, $zero, 11
_expr_1459925936:
    sw   $v0, 0($t0)
_expr_1459925944:
_expr_1459925948:
    beq  $zero, $zero, _expr_1459930280
_expr_1459925960:
## line 181
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 40
    bne  $v0, $t0, _expr_1459926816
## line 182
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 183
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 140
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _expr_1459926112
    or   $v0, $t0, $v0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 136
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_expr_1459926112:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _expr_1459926608
## line 184
    addi $t0, $fp, -4
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 140
    bne  $v0, $t1, _expr_1459926200
    addi $v0, $zero, 1
    beq  $zero, $zero, _expr_1459926212
_expr_1459926200:
    addi $v0, $zero, 0
_expr_1459926212:
    sw   $v0, 0($t0)
## line 184
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 185
_expr_1459926248:
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 161
    bne  $v0, $t0, _expr_1459926368
## line 185
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 185
    addi $t0, $fp, -4
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 2
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459926248
_expr_1459926368:
## line 186
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 41
    bne  $v0, $t0, _expr_1459926444
## line 186
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _expr_1459926528
_expr_1459926444:
## line 186
    addi $v0, $ra, s1486131372[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 186
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459926528:
## line 187
    addi $t0, $zero, 164
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 188
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459926804
_expr_1459926608:
## line 191
    addi $t0, $zero, 144
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 192
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 41
    bne  $v0, $t0, _expr_1459926716
## line 192
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _expr_1459926800
_expr_1459926716:
## line 192
    addi $v0, $ra, s1486131388[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 192
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459926800:
_expr_1459926804:
    beq  $zero, $zero, _expr_1459930276
_expr_1459926816:
## line 195
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 161
    bne  $v0, $t0, _expr_1459927236
## line 196
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 196
    addi $t0, $zero, 164
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 197
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    slt  $v0, $v0, $t0
    beq  $v0, $zero, _expr_1459927020
## line 197
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -2
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459927104
_expr_1459927020:
## line 197
    addi $v0, $ra, s1486131416[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 197
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459927104:
## line 198
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t1, _expr_1459927208
    addi $v0, $zero, 12
    beq  $zero, $zero, _expr_1459927220
_expr_1459927208:
    addi $v0, $zero, 11
_expr_1459927220:
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459930272
_expr_1459927236:
## line 200
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 150
    bne  $v0, $t0, _expr_1459927644
## line 201
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 201
    addi $t0, $zero, 164
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 202
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 12
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _expr_1459927428
    or   $v0, $t0, $v0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 11
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_expr_1459927428:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _expr_1459927496
## line 202
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459927580
_expr_1459927496:
## line 202
    addi $v0, $ra, s1486131440[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 202
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459927580:
## line 203
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 2
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459930268
_expr_1459927644:
## line 205
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    bne  $v0, $t0, _expr_1459928024
## line 205
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 205
    addi $t0, $zero, 164
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 205
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 205
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 205
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 205
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 19
    sw   $v0, 0($t0)
## line 205
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459930264
_expr_1459928024:
## line 206
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 126
    bne  $v0, $t0, _expr_1459928404
## line 206
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 206
    addi $t0, $zero, 164
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 206
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 206
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 206
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, -1
    sw   $v0, 0($t0)
## line 206
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    sw   $v0, 0($t0)
## line 206
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459930260
_expr_1459928404:
## line 207
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 159
    bne  $v0, $t0, _expr_1459928544
## line 207
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 207
    addi $t0, $zero, 164
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 207
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459930256
_expr_1459928544:
## line 208
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 160
    bne  $v0, $t0, _expr_1459929084
## line 209
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 209
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 210
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    bne  $v0, $t0, _expr_1459928824
## line 210
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 210
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _expr_1459929040
_expr_1459928824:
## line 210
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 210
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 210
    addi $t0, $zero, 164
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 210
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 28
    sw   $v0, 0($t0)
_expr_1459929040:
## line 211
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459930252
_expr_1459929084:
## line 213
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 164
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _expr_1459929172
    or   $v0, $t0, $v0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 165
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_expr_1459929172:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _expr_1459930164
## line 214
    addi $t0, $fp, -4
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 214
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 214
    addi $t0, $zero, 164
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 215
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 12
    bne  $v0, $t0, _expr_1459929428
## line 215
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 215
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 12
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459929672
_expr_1459929428:
## line 216
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 11
    bne  $v0, $t0, _expr_1459929584
## line 216
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 216
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 11
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459929668
_expr_1459929584:
## line 217
    addi $v0, $ra, s1486131460[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 217
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459929668:
_expr_1459929672:
## line 218
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 219
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 219
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 2
    slt  $v0, $v0, $t1
    beq  $v0, $zero, _expr_1459929896
    addi $v0, $zero, 4
    beq  $zero, $zero, _expr_1459929908
_expr_1459929896:
    addi $v0, $zero, 1
_expr_1459929908:
    sw   $v0, 0($t0)
## line 220
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $v0, $zero, 164
    bne  $v0, $t1, _expr_1459930016
    addi $v0, $zero, 27
    beq  $zero, $zero, _expr_1459930028
_expr_1459930016:
    addi $v0, $zero, 28
_expr_1459930028:
    sw   $v0, 0($t0)
## line 221
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t1, _expr_1459930136
    addi $v0, $zero, 14
    beq  $zero, $zero, _expr_1459930148
_expr_1459930136:
    addi $v0, $zero, 13
_expr_1459930148:
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459930248
_expr_1459930164:
## line 223
    addi $v0, $ra, s1486131496[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 223
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459930248:
_expr_1459930252:
_expr_1459930256:
_expr_1459930260:
_expr_1459930264:
_expr_1459930268:
_expr_1459930272:
_expr_1459930276:
_expr_1459930280:
_expr_1459930284:
_expr_1459930288:
_expr_1459930292:
_expr_1459930296:
## line 225
_expr_1459930308:
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    beq  $v0, $zero, _expr_1459940544
## line 226
    addi $t0, $fp, -4
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 227
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 144
    bne  $v0, $t0, _expr_1459930868
## line 228
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 229
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 12
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _expr_1459930544
    or   $v0, $t0, $v0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 11
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_expr_1459930544:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _expr_1459930604
## line 229
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459930688
_expr_1459930604:
## line 229
    addi $v0, $ra, s1486131516[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 229
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459930688:
## line 230
    addi $t0, $zero, 144
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 230
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t1, _expr_1459930840
    addi $v0, $zero, 14
    beq  $zero, $zero, _expr_1459930852
_expr_1459930840:
    addi $v0, $zero, 13
_expr_1459930852:
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940532
_expr_1459930868:
## line 232
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 145
    bne  $v0, $t0, _expr_1459931620
## line 233
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 234
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 8
    sw   $v0, 0($t0)
## line 234
    addi $t0, $fp, -8
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 235
    addi $t0, $zero, 144
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 236
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 58
    bne  $v0, $t0, _expr_1459931160
## line 236
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _expr_1459931244
_expr_1459931160:
## line 236
    addi $v0, $ra, s1486131548[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 236
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459931244:
## line 237
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 237
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 6
    sw   $v0, 0($t0)
## line 237
    addi $t0, $fp, -8
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 237
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32
    sw   $v0, 0($t0)
## line 238
    addi $t0, $zero, 145
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 239
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940528
_expr_1459931620:
## line 241
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 146
    bne  $v0, $t0, _expr_1459932200
## line 242
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 243
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 244
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    sw   $v0, 0($t0)
## line 245
    addi $t0, $fp, -8
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 246
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 16
    sw   $v0, 0($t0)
## line 247
    addi $t0, $zero, 147
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 248
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 249
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32
    sw   $v0, 0($t0)
## line 250
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 16
    sw   $v0, 0($t0)
## line 251
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940524
_expr_1459932200:
## line 253
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 147
    bne  $v0, $t0, _expr_1459932780
## line 254
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 255
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 256
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 8
    sw   $v0, 0($t0)
## line 257
    addi $t0, $fp, -8
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 258
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 18
    sw   $v0, 0($t0)
## line 259
    addi $t0, $zero, 148
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 260
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 261
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32
    sw   $v0, 0($t0)
## line 262
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 18
    sw   $v0, 0($t0)
## line 263
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940520
_expr_1459932780:
## line 265
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 148
    bne  $v0, $t0, _expr_1459933040
## line 265
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 265
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 265
    addi $t0, $zero, 149
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 265
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 16
    sw   $v0, 0($t0)
## line 265
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940516
_expr_1459933040:
## line 266
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 149
    bne  $v0, $t0, _expr_1459933300
## line 266
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 266
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 266
    addi $t0, $zero, 150
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 266
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    sw   $v0, 0($t0)
## line 266
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940512
_expr_1459933300:
## line 267
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 150
    bne  $v0, $t0, _expr_1459933560
## line 267
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 267
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 267
    addi $t0, $zero, 151
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 267
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 18
    sw   $v0, 0($t0)
## line 267
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940508
_expr_1459933560:
## line 268
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 151
    bne  $v0, $t0, _expr_1459933820
## line 268
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 268
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 268
    addi $t0, $zero, 153
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 268
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 19
    sw   $v0, 0($t0)
## line 268
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940504
_expr_1459933820:
## line 269
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 152
    bne  $v0, $t0, _expr_1459934080
## line 269
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 269
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 269
    addi $t0, $zero, 153
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 269
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 20
    sw   $v0, 0($t0)
## line 269
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940500
_expr_1459934080:
## line 270
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 153
    bne  $v0, $t0, _expr_1459934340
## line 270
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 270
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 270
    addi $t0, $zero, 157
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 270
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 21
    sw   $v0, 0($t0)
## line 270
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940496
_expr_1459934340:
## line 271
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 154
    bne  $v0, $t0, _expr_1459934600
## line 271
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 271
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 271
    addi $t0, $zero, 157
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 271
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 22
    sw   $v0, 0($t0)
## line 271
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940492
_expr_1459934600:
## line 272
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 155
    bne  $v0, $t0, _expr_1459934860
## line 272
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 272
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 272
    addi $t0, $zero, 157
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 272
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 23
    sw   $v0, 0($t0)
## line 272
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940488
_expr_1459934860:
## line 273
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 156
    bne  $v0, $t0, _expr_1459935120
## line 273
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 273
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 273
    addi $t0, $zero, 157
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 273
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 24
    sw   $v0, 0($t0)
## line 273
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940484
_expr_1459935120:
## line 274
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 157
    bne  $v0, $t0, _expr_1459935380
## line 274
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 274
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 274
    addi $t0, $zero, 159
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 274
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 25
    sw   $v0, 0($t0)
## line 274
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940480
_expr_1459935380:
## line 275
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 158
    bne  $v0, $t0, _expr_1459935640
## line 275
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 275
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 275
    addi $t0, $zero, 159
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 275
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 26
    sw   $v0, 0($t0)
## line 275
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940476
_expr_1459935640:
## line 276
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 159
    bne  $v0, $t0, _expr_1459936172
## line 277
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 277
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 277
    addi $t0, $zero, 161
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 278
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    slt  $v0, $v0, $t0
    beq  $v0, $zero, _expr_1459936100
## line 278
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 278
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 278
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    sw   $v0, 0($t0)
## line 278
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 25
    sw   $v0, 0($t0)
_expr_1459936100:
## line 279
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 27
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940472
_expr_1459936172:
## line 281
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 160
    bne  $v0, $t0, _expr_1459937228
## line 282
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 282
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 282
    addi $t0, $zero, 161
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 283
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    slt  $v0, $v0, $t0
    addi $t0, $v0, 0
    beq  $v0, $zero, _expr_1459936420
    and  $v0, $t0, $v0
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_expr_1459936420:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _expr_1459936776
## line 283
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 28
    sw   $v0, 0($t0)
## line 283
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 283
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 283
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 4
    sw   $v0, 0($t0)
## line 283
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 30
    sw   $v0, 0($t0)
## line 283
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459937216
_expr_1459936776:
## line 284
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    slt  $v0, $v0, $t0
    beq  $v0, $zero, _expr_1459937148
## line 284
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 284
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 284
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    sw   $v0, 0($t0)
## line 284
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 25
    sw   $v0, 0($t0)
## line 284
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 28
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459937212
_expr_1459937148:
## line 285
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 28
    sw   $v0, 0($t0)
_expr_1459937212:
_expr_1459937216:
    beq  $zero, $zero, _expr_1459940468
_expr_1459937228:
## line 287
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 161
    bne  $v0, $t0, _expr_1459937488
## line 287
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 287
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 287
    addi $t0, $zero, 164
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 287
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 29
    sw   $v0, 0($t0)
## line 287
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940464
_expr_1459937488:
## line 288
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 162
    bne  $v0, $t0, _expr_1459937748
## line 288
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 288
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 288
    addi $t0, $zero, 164
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 288
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 30
    sw   $v0, 0($t0)
## line 288
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940460
_expr_1459937748:
## line 289
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 163
    bne  $v0, $t0, _expr_1459938008
## line 289
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 289
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 289
    addi $t0, $zero, 164
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 289
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 31
    sw   $v0, 0($t0)
## line 289
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940456
_expr_1459938008:
## line 290
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 164
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _expr_1459938096
    or   $v0, $t0, $v0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 165
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_expr_1459938096:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _expr_1459939380
## line 291
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 12
    bne  $v0, $t0, _expr_1459938264
## line 291
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 291
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 12
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459938508
_expr_1459938264:
## line 292
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 11
    bne  $v0, $t0, _expr_1459938420
## line 292
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 292
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 11
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459938504
_expr_1459938420:
## line 293
    addi $v0, $ra, s1486131580[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 293
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459938504:
_expr_1459938508:
## line 294
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 294
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 294
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 2
    slt  $v0, $v0, $t1
    beq  $v0, $zero, _expr_1459938732
    addi $v0, $zero, 4
    beq  $zero, $zero, _expr_1459938744
_expr_1459938732:
    addi $v0, $zero, 1
_expr_1459938744:
    sw   $v0, 0($t0)
## line 295
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 164
    bne  $v0, $t1, _expr_1459938852
    addi $v0, $zero, 27
    beq  $zero, $zero, _expr_1459938864
_expr_1459938852:
    addi $v0, $zero, 28
_expr_1459938864:
    sw   $v0, 0($t0)
## line 296
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t1, _expr_1459938972
    addi $v0, $zero, 14
    beq  $zero, $zero, _expr_1459938984
_expr_1459938972:
    addi $v0, $zero, 13
_expr_1459938984:
    sw   $v0, 0($t0)
## line 297
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 297
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 297
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 2
    slt  $v0, $v0, $t1
    beq  $v0, $zero, _expr_1459939212
    addi $v0, $zero, 4
    beq  $zero, $zero, _expr_1459939224
_expr_1459939212:
    addi $v0, $zero, 1
_expr_1459939224:
    sw   $v0, 0($t0)
## line 298
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 164
    bne  $v0, $t1, _expr_1459939332
    addi $v0, $zero, 28
    beq  $zero, $zero, _expr_1459939344
_expr_1459939332:
    addi $v0, $zero, 27
_expr_1459939344:
    sw   $v0, 0($t0)
## line 299
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _expr_1459940452
_expr_1459939380:
## line 301
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 166
    bne  $v0, $t0, _expr_1459940348
## line 302
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 302
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 302
    addi $t0, $zero, 144
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 303
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 93
    bne  $v0, $t0, _expr_1459939612
## line 303
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _expr_1459939696
_expr_1459939612:
## line 303
    addi $v0, $ra, s1486131616[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 303
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459939696:
## line 304
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    slt  $v0, $v0, $t0
    beq  $v0, $zero, _expr_1459939992
## line 304
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    sw   $v0, 0($t0)
## line 304
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    sw   $v0, 0($t0)
## line 304
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    sw   $v0, 0($t0)
## line 304
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 25
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940124
_expr_1459939992:
## line 305
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _expr_1459940120
## line 305
    addi $v0, $ra, s1486131644[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 305
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459940120:
_expr_1459940124:
## line 306
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 27
    sw   $v0, 0($t0)
## line 307
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, ty[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    addi $t2, $v0, 0
    addi $v0, $t2, -2
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t1, _expr_1459940320
    addi $v0, $zero, 12
    beq  $zero, $zero, _expr_1459940332
_expr_1459940320:
    addi $v0, $zero, 11
_expr_1459940332:
    sw   $v0, 0($t0)
    beq  $zero, $zero, _expr_1459940448
_expr_1459940348:
## line 309
    addi $v0, $ra, s1486131672[_expr_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _expr_module_ref[_expr_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 309
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_expr_1459940448:
_expr_1459940452:
_expr_1459940456:
_expr_1459940460:
_expr_1459940464:
_expr_1459940468:
_expr_1459940472:
_expr_1459940476:
_expr_1459940480:
_expr_1459940484:
_expr_1459940488:
_expr_1459940492:
_expr_1459940496:
_expr_1459940500:
_expr_1459940504:
_expr_1459940508:
_expr_1459940512:
_expr_1459940516:
_expr_1459940520:
_expr_1459940524:
_expr_1459940528:
_expr_1459940532:
    beq  $zero, $zero, _expr_1459930308
_expr_1459940544:

_expr_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global expr
s1486131208:
    string "%d: unexpected eof in expression\n"

s1486131244:
    string "%d: open paren expected in sizeof\n"

s1486131280:
    string "%d: close paren expected in sizeof\n"

s1486131316:
    string "%d: bad function call\n"

s1486131340:
    string "_%.*s_%.*s_ext:\n    dd   %.*s\n"

s1486131372:
    string "%d: bad cast\n"

s1486131388:
    string "%d: close paren expected\n"

s1486131416:
    string "%d: bad dereference\n"

s1486131440:
    string "%d: bad address-of\n"

s1486131460:
    string "%d: bad lvalue in pre-increment\n"

s1486131496:
    string "%d: bad expression\n"

s1486131516:
    string "%d: bad lvalue in assignment\n"

s1486131548:
    string "%d: conditional missing colon\n"

s1486131580:
    string "%d: bad lvalue in post-increment\n"

s1486131616:
    string "%d: close bracket expected\n"

s1486131644:
    string "%d: pointer type expected\n"

s1486131672:
    string "%d: compiler error tk=%d\n"


codegen:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _codegen_start
_codegen_ref_pos:
_codegen_module_ref:
    dd   _cc_ref

_codegen_start:
    addi $sp, $sp, -8
## line 318
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, -1
    sw   $v0, 0($t0)
## line 319
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 320
_codegen_1459940620:
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    sub  $v0, $t0, $v0
    beq  $v0, $zero, _codegen_1459962636
## line 321
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _codegen_1459941036
## line 322
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486131700[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $t3, $fp, 8
    lw   $v0, 0($t3)
    addi $t4, $v0, 0
    addi $v0, $t4, 4
    sw   $v0, 0($t3)
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 1
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    andi $v0, $t4, 63
    addi $t4, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $zero, 2
    sll  $v0, $t6, 2
    add  $v0, $t5, $v0
    lw   $v0, 0($v0)
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
    jal  sprintf
    lw   $t0, 20($sp)
    addi $sp, $sp, 24
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 324
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 324
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962580
_codegen_1459941036:
## line 326
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    bne  $v0, $t0, _codegen_1459941860
## line 327
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 328
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 329
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486131740[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $zero, 1
    sll  $v0, $t6, 2
    add  $v0, $t5, $v0
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    andi $v0, $t5, 63
    addi $t5, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $t7, $zero, 2
    sll  $v0, $t7, 2
    add  $v0, $t6, $v0
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -28
    sw   $t0, 24($sp)
    sw   $t6, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 24($sp)
    addi $sp, $sp, 28
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 334
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 335
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486131792[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, file[_cc_ref]
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $zero, 46
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -28
    sw   $t0, 24($sp)
    sw   $t1, 20($sp)
    sw   $t2, 16($sp)
    sw   $t3, 12($sp)
    sw   $t4, 8($sp)
    sw   $t6, 4($sp)
    sw   $t5, 0($sp)
    jal  strchr
    lw   $t0, 24($sp)
    lw   $t1, 20($sp)
    lw   $t2, 16($sp)
    lw   $t3, 12($sp)
    lw   $t4, 8($sp)
    addi $sp, $sp, 28
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t5, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, file[_cc_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t5, $v0
    addi $t5, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, file[_cc_ref]
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -28
    sw   $t0, 24($sp)
    sw   $t6, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 24($sp)
    addi $sp, $sp, 28
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 340
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962576
_codegen_1459941860:
## line 342
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    bne  $v0, $t0, _codegen_1459942452
## line 343
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 344
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486131828[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $zero, 1
    sll  $v0, $t6, 2
    add  $v0, $t5, $v0
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    andi $v0, $t5, 63
    addi $t5, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $t7, $zero, 2
    sll  $v0, $t7, 2
    add  $v0, $t6, $v0
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t7, $v0, 0
    addi $t8, $zero, 1
    sll  $v0, $t8, 2
    add  $v0, $t7, $v0
    lw   $v0, 0($v0)
    addi $t7, $v0, 0
    andi $v0, $t7, 63
    addi $t7, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t8, $v0, 0
    addi $t9, $zero, 2
    sll  $v0, $t9, 2
    add  $v0, $t8, $v0
    lw   $v0, 0($v0)
    addi $t8, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -36
    sw   $t0, 32($sp)
    sw   $t8, 28($sp)
    sw   $t7, 24($sp)
    sw   $t6, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 32($sp)
    addi $sp, $sp, 36
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 349
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962572
_codegen_1459942452:
## line 351
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 3
    bne  $v0, $t0, _codegen_1459943820
## line 352
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 353
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 11
    bne  $v0, $t0, _codegen_1459942864
## line 354
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486131880[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $t3, $fp, 8
    lw   $v0, 0($t3)
    addi $t4, $v0, 0
    addi $v0, $t4, 4
    sw   $v0, 0($t3)
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 355
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 355
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459943808
_codegen_1459942864:
## line 357
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 12
    bne  $v0, $t0, _codegen_1459943196
## line 358
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486131904[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $t3, $fp, 8
    lw   $v0, 0($t3)
    addi $t4, $v0, 0
    addi $v0, $t4, 4
    sw   $v0, 0($t3)
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 359
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 359
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459943804
_codegen_1459943196:
## line 361
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    bne  $v0, $t0, _codegen_1459943600
## line 362
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486131928[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, 1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $t4, $fp, 8
    lw   $v0, 0($t4)
    addi $t5, $v0, 0
    addi $v0, $t5, 4
    sw   $v0, 0($t4)
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, 1
    addi $t4, $v0, 0
    sll  $v0, $t4, 2
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 363
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 363
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 363
    addi $t0, $fp, -8
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459943800
_codegen_1459943600:
## line 366
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486131956[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $t3, $fp, 8
    lw   $v0, 0($t3)
    addi $t4, $v0, 0
    addi $v0, $t4, 4
    sw   $v0, 0($t3)
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  printf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 367
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_codegen_1459943800:
_codegen_1459943804:
_codegen_1459943808:
    beq  $zero, $zero, _codegen_1459962568
_codegen_1459943820:
## line 370
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 4
    bne  $v0, $t0, _codegen_1459945188
## line 371
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 372
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 11
    bne  $v0, $t0, _codegen_1459944232
## line 372
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486131980[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $t3, $fp, 8
    lw   $v0, 0($t3)
    addi $t4, $v0, 0
    addi $v0, $t4, 4
    sw   $v0, 0($t3)
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 2
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 372
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 372
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459945176
_codegen_1459944232:
## line 373
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 12
    bne  $v0, $t0, _codegen_1459944564
## line 373
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132004[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $t3, $fp, 8
    lw   $v0, 0($t3)
    addi $t4, $v0, 0
    addi $v0, $t4, 4
    sw   $v0, 0($t3)
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 2
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 373
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 373
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459945172
_codegen_1459944564:
## line 374
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    bne  $v0, $t0, _codegen_1459944968
## line 375
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132028[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, 1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $t4, $fp, 8
    lw   $v0, 0($t4)
    addi $t5, $v0, 0
    addi $v0, $t5, 4
    sw   $v0, 0($t4)
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, 2
    addi $t4, $v0, 0
    sll  $v0, $t4, 2
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 376
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 376
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 376
    addi $t0, $fp, -8
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459945168
_codegen_1459944968:
## line 378
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132052[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $t3, $fp, 8
    lw   $v0, 0($t3)
    addi $t4, $v0, 0
    addi $v0, $t4, 4
    sw   $v0, 0($t3)
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 2
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 378
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_codegen_1459945168:
_codegen_1459945172:
_codegen_1459945176:
    beq  $zero, $zero, _codegen_1459962564
_codegen_1459945188:
## line 380
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 5
    bne  $v0, $t0, _codegen_1459949224
## line 381
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 382
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32767
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _codegen_1459945376
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, -32768
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_codegen_1459945376:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _codegen_1459949124
## line 383
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 384
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 11
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _codegen_1459945580
    or   $v0, $t0, $v0
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 12
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_codegen_1459945580:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _codegen_1459945896
## line 385
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132076[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, 8($fp)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $zero, 11
    bne  $v0, $t3, _codegen_1459945732
    addi $v0, $ra, s1486132100[_codegen_ref_pos]
    beq  $zero, $zero, _codegen_1459945744
_codegen_1459945732:
    addi $v0, $ra, s1486132104[_codegen_ref_pos]
_codegen_1459945744:
    addi $t3, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 386
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 386
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459949112
_codegen_1459945896:
## line 388
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    bne  $v0, $t0, _codegen_1459946244
## line 389
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132108[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, 1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 390
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 390
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 390
    addi $t0, $fp, -8
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459949108
_codegen_1459946244:
## line 392
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 16
    bne  $v0, $t0, _codegen_1459946576
## line 392
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132136[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 392
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 392
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459949104
_codegen_1459946576:
## line 393
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    bne  $v0, $t0, _codegen_1459946908
## line 393
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132160[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 393
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 393
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459949100
_codegen_1459946908:
## line 394
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 18
    bne  $v0, $t0, _codegen_1459947240
## line 394
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132184[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 394
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 394
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459949096
_codegen_1459947240:
## line 395
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 20
    bne  $v0, $t0, _codegen_1459947588
## line 395
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132208[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $t4, $zero, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    sub  $v0, $t4, $v0
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 395
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 395
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459949092
_codegen_1459947588:
## line 396
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 25
    bne  $v0, $t0, _codegen_1459947920
## line 396
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132232[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 396
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 396
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459949088
_codegen_1459947920:
## line 397
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 26
    bne  $v0, $t0, _codegen_1459948252
## line 397
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132256[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 397
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 397
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459949084
_codegen_1459948252:
## line 398
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 27
    bne  $v0, $t0, _codegen_1459948584
## line 398
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132280[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 398
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 398
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459949080
_codegen_1459948584:
## line 399
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 28
    bne  $v0, $t0, _codegen_1459948932
## line 399
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132304[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $t4, $zero, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    sub  $v0, $t4, $v0
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 399
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 399
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459949076
_codegen_1459948932:
## line 400
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132328[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 400
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_codegen_1459949076:
_codegen_1459949080:
_codegen_1459949084:
_codegen_1459949088:
_codegen_1459949092:
_codegen_1459949096:
_codegen_1459949100:
_codegen_1459949104:
_codegen_1459949108:
_codegen_1459949112:
    beq  $zero, $zero, _codegen_1459949212
_codegen_1459949124:
## line 402
    addi $v0, $ra, s1486132356[_codegen_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 402
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_codegen_1459949212:
    beq  $zero, $zero, _codegen_1459962560
_codegen_1459949224:
## line 404
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 6
    bne  $v0, $t0, _codegen_1459949568
## line 406
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132376[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $fp, 8
    lw   $v0, 0($t5)
    addi $t6, $v0, 0
    addi $v0, $t6, 4
    sw   $v0, 0($t5)
    lw   $v0, 0($v0)
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
    jal  sprintf
    lw   $t0, 20($sp)
    addi $sp, $sp, 24
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 407
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962556
_codegen_1459949568:
## line 409
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 7
    bne  $v0, $t0, _codegen_1459951776
## line 410
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 410
    addi $t0, $fp, -4
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 410
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 411
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132412[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 411
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 412
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132456[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 412
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 413
_codegen_1459950024:
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _codegen_1459950332
## line 414
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132480[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, -4($fp)
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t4, $v0
    addi $t4, $v0, 0
    sll  $v0, $t4, 2
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 415
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 415
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459950024
_codegen_1459950332:
## line 417
_codegen_1459950344:
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _codegen_1459950708
## line 418
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132504[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    sub  $v0, $t3, $v0
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t4, $v0
    add  $v0, $t3, $v0
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t4, $v0
    addi $t4, $v0, 0
    sll  $v0, $t4, 2
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 418
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 418
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459950344
_codegen_1459950708:
## line 421
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132528[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, 8($fp)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, 8($fp)
    addi $t4, $v0, 0
    addi $t5, $zero, 1
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 422
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 424
    addi $t0, $fp, -4
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 425
_codegen_1459951064:
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _codegen_1459951372
## line 425
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132544[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, -4($fp)
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t4, $v0
    addi $t4, $v0, 0
    sll  $v0, $t4, 2
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 425
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 425
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459951064
_codegen_1459951372:
## line 426
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132568[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 426
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 427
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132592[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 427
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 428
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 430
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962552
_codegen_1459951776:
## line 432
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 8
    bne  $v0, $t0, _codegen_1459952464
## line 433
    lw   $v0, -8($fp)
    beq  $v0, $zero, _codegen_1459952164
## line 434
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132636[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 1
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    andi $v0, $t4, 63
    addi $t4, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $zero, 2
    sll  $v0, $t6, 2
    add  $v0, $t5, $v0
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $fp, 8
    lw   $v0, 0($t6)
    addi $t7, $v0, 0
    addi $v0, $t7, 4
    sw   $v0, 0($t6)
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -28
    sw   $t0, 24($sp)
    sw   $t6, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 24($sp)
    addi $sp, $sp, 28
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 436
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459952452
_codegen_1459952164:
## line 439
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132668[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $fp, 8
    lw   $v0, 0($t5)
    addi $t6, $v0, 0
    addi $v0, $t6, 4
    sw   $v0, 0($t5)
    lw   $v0, 0($v0)
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
    jal  sprintf
    lw   $t0, 20($sp)
    addi $sp, $sp, 24
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 440
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_codegen_1459952452:
    beq  $zero, $zero, _codegen_1459962548
_codegen_1459952464:
## line 443
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    bne  $v0, $t0, _codegen_1459953152
## line 444
    lw   $v0, -8($fp)
    beq  $v0, $zero, _codegen_1459952852
## line 445
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132700[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 1
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    andi $v0, $t4, 63
    addi $t4, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $zero, 2
    sll  $v0, $t6, 2
    add  $v0, $t5, $v0
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $fp, 8
    lw   $v0, 0($t6)
    addi $t7, $v0, 0
    addi $v0, $t7, 4
    sw   $v0, 0($t6)
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -28
    sw   $t0, 24($sp)
    sw   $t6, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 24($sp)
    addi $sp, $sp, 28
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 447
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459953140
_codegen_1459952852:
## line 450
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132732[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $fp, 8
    lw   $v0, 0($t5)
    addi $t6, $v0, 0
    addi $v0, $t6, 4
    sw   $v0, 0($t5)
    lw   $v0, 0($v0)
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
    jal  sprintf
    lw   $t0, 20($sp)
    addi $sp, $sp, 24
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 452
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_codegen_1459953140:
    beq  $zero, $zero, _codegen_1459962544
_codegen_1459953152:
## line 455
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 10
    bne  $v0, $t0, _codegen_1459953536
## line 456
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
    sub  $v0, $t0, $v0
    beq  $v0, $zero, _codegen_1459953524
## line 457
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132764[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 457
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_codegen_1459953524:
    beq  $zero, $zero, _codegen_1459962540
_codegen_1459953536:
## line 460
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 11
    bne  $v0, $t0, _codegen_1459953928
## line 461
    lw   $v0, -8($fp)
    beq  $v0, $zero, _codegen_1459953760
## line 461
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132784[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 461
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459953884
_codegen_1459953760:
## line 462
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132808[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 462
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_codegen_1459953884:
## line 463
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962536
_codegen_1459953928:
## line 465
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 12
    bne  $v0, $t0, _codegen_1459954320
## line 466
    lw   $v0, -8($fp)
    beq  $v0, $zero, _codegen_1459954152
## line 466
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132832[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 466
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459954276
_codegen_1459954152:
## line 467
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132856[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 467
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_codegen_1459954276:
## line 468
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962532
_codegen_1459954320:
## line 470
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 13
    bne  $v0, $t0, _codegen_1459954588
## line 470
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 470
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132880[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 470
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962528
_codegen_1459954588:
## line 471
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 14
    bne  $v0, $t0, _codegen_1459954856
## line 471
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 471
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132904[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 471
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962524
_codegen_1459954856:
## line 472
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 15
    bne  $v0, $t0, _codegen_1459955076
## line 472
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132928[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, 1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 472
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962520
_codegen_1459955076:
## line 473
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 16
    bne  $v0, $t0, _codegen_1459955344
## line 473
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 473
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132952[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 473
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962516
_codegen_1459955344:
## line 474
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    bne  $v0, $t0, _codegen_1459955612
## line 474
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 474
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486132980[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 474
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962512
_codegen_1459955612:
## line 475
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 18
    bne  $v0, $t0, _codegen_1459955880
## line 475
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 475
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133008[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 475
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962508
_codegen_1459955880:
## line 476
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 19
    bne  $v0, $t0, _codegen_1459957108
## line 477
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 478
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 9
    bne  $v0, $t0, _codegen_1459956436
## line 479
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 480
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133036[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 1
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    andi $v0, $t4, 63
    addi $t4, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $zero, 2
    sll  $v0, $t6, 2
    add  $v0, $t5, $v0
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -28
    sw   $t0, 24($sp)
    sw   $t6, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 24($sp)
    addi $sp, $sp, 28
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 482
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459957096
_codegen_1459956436:
## line 484
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 8
    bne  $v0, $t0, _codegen_1459956912
## line 485
    addi $t0, $fp, 8
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 486
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133068[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 1
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    andi $v0, $t4, 63
    addi $t4, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $zero, 2
    sll  $v0, $t6, 2
    add  $v0, $t5, $v0
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -28
    sw   $t0, 24($sp)
    sw   $t6, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 24($sp)
    addi $sp, $sp, 28
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 488
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459957092
_codegen_1459956912:
## line 491
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133100[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 497
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_codegen_1459957092:
_codegen_1459957096:
    beq  $zero, $zero, _codegen_1459962504
_codegen_1459957108:
## line 500
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 20
    bne  $v0, $t0, _codegen_1459957344
## line 500
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133196[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 500
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962500
_codegen_1459957344:
## line 501
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 21
    bne  $v0, $t0, _codegen_1459957580
## line 501
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133224[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 501
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962496
_codegen_1459957580:
## line 502
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 23
    bne  $v0, $t0, _codegen_1459957816
## line 502
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133252[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 502
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962492
_codegen_1459957816:
## line 503
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 22
    bne  $v0, $t0, _codegen_1459958052
## line 503
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133300[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 503
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962488
_codegen_1459958052:
## line 504
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 24
    bne  $v0, $t0, _codegen_1459958288
## line 504
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133328[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 504
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962484
_codegen_1459958288:
## line 505
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 25
    bne  $v0, $t0, _codegen_1459958524
## line 505
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133376[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 505
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962480
_codegen_1459958524:
## line 506
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 26
    bne  $v0, $t0, _codegen_1459958760
## line 506
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133404[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 506
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962476
_codegen_1459958760:
## line 507
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 27
    bne  $v0, $t0, _codegen_1459958996
## line 507
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133432[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 507
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962472
_codegen_1459958996:
## line 508
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 28
    bne  $v0, $t0, _codegen_1459959232
## line 508
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133460[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, -1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 508
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962468
_codegen_1459959232:
## line 509
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 29
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _codegen_1459959328
    or   $v0, $t0, $v0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 30
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_codegen_1459959328:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _codegen_1459959388
    or   $v0, $t0, $v0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 31
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_codegen_1459959388:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _codegen_1459961828
## line 510
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133488[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 510
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 511
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _codegen_1459959728
## line 511
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133532[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t3, $v0, 0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $v0, $t4, 1
    sw   $v0, 0($t3)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 511
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_codegen_1459959728:
## line 512
    addi $t0, $fp, -4
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 513
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133556[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 513
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 514
_codegen_1459959940:
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -2
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _codegen_1459960240
## line 515
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133580[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, -4($fp)
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t4, $v0
    addi $t4, $v0, 0
    sll  $v0, $t4, 2
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 516
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 516
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459959940
_codegen_1459960240:
## line 518
_codegen_1459960252:
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _codegen_1459960592
## line 519
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133604[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t3, $v0
    addi $t3, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t3, $v0
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t4, $v0
    addi $t4, $v0, 0
    sll  $v0, $t4, 2
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 520
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 520
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459960252
_codegen_1459960592:
## line 522
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 29
    bne  $v0, $t0, _codegen_1459960772
## line 522
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133628[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 522
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459961132
_codegen_1459960772:
## line 523
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 30
    bne  $v0, $t0, _codegen_1459960952
## line 523
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133644[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 523
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459961128
_codegen_1459960952:
## line 524
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 31
    bne  $v0, $t0, _codegen_1459961124
## line 524
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133660[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 524
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_codegen_1459961124:
_codegen_1459961128:
_codegen_1459961132:
## line 525
    addi $t0, $fp, -4
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 526
_codegen_1459961176:
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -2
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _codegen_1459961476
## line 526
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133676[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, -4($fp)
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t4, $v0
    addi $t4, $v0, 0
    sll  $v0, $t4, 2
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 526
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 526
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459961176
_codegen_1459961476:
## line 527
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133700[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $v0, $t3, 1
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 527
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 528
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, st[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -2
    sw   $v0, 0($t0)
## line 529
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133724[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 529
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962464
_codegen_1459961828:
## line 531
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32
    bne  $v0, $t0, _codegen_1459962144
## line 532
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133768[_codegen_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, 8($fp)
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
    jal  sprintf
    lw   $t0, 20($sp)
    addi $sp, $sp, 24
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 533
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962460
_codegen_1459962144:
## line 535
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    bne  $v0, $t0, _codegen_1459962368
## line 535
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486133780[_codegen_ref_pos]
    addi $t2, $v0, 0
    addi $t3, $fp, 8
    lw   $v0, 0($t3)
    addi $t4, $v0, 0
    addi $v0, $t4, 4
    sw   $v0, 0($t3)
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 535
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _codegen_module_ref[_codegen_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459962456
_codegen_1459962368:
## line 536
    addi $v0, $ra, s1486133792[_codegen_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 536
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_codegen_1459962456:
_codegen_1459962460:
_codegen_1459962464:
_codegen_1459962468:
_codegen_1459962472:
_codegen_1459962476:
_codegen_1459962480:
_codegen_1459962484:
_codegen_1459962488:
_codegen_1459962492:
_codegen_1459962496:
_codegen_1459962500:
_codegen_1459962504:
_codegen_1459962508:
_codegen_1459962512:
_codegen_1459962516:
_codegen_1459962520:
_codegen_1459962524:
_codegen_1459962528:
_codegen_1459962532:
_codegen_1459962536:
_codegen_1459962540:
_codegen_1459962544:
_codegen_1459962548:
_codegen_1459962552:
_codegen_1459962556:
_codegen_1459962560:
_codegen_1459962564:
_codegen_1459962568:
_codegen_1459962572:
_codegen_1459962576:
_codegen_1459962580:
## line 537
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _codegen_1459940620
_codegen_1459962636:

_codegen_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global codegen
s1486131700:
    string "    addi $v0, $ra, s%x[_%.*s_ref_pos]\n"

s1486131740:
    string "    lw   $v0, _%.*s_module_ref[_%.*s_ref_pos]($ra)\n"

s1486131792:
    string "    addi $v0, $v0, %.*s[_%.*s_ref]\n"

s1486131828:
    string "    lw   $v0, _%.*s_%.*s_ext[_%.*s_ref_pos]($ra)\n"

s1486131880:
    string "    lw   $v0, -%d($fp)\n"

s1486131904:
    string "    lb   $v0, -%d($fp)\n"

s1486131928:
    string "    addi $t%d, $fp, -%d\n"

s1486131956:
    string "    addi $v0, $fp, -%d\n"

s1486131980:
    string "    lw   $v0, %d($fp)\n"

s1486132004:
    string "    lb   $v0, %d($fp)\n"

s1486132028:
    string "    addi $t%d, $fp, %d\n"

s1486132052:
    string "    addi $v0, $fp, %d\n"

s1486132076:
    string "    %s   $v0, %d($gp)\n"

s1486132100:
    string "lw"

s1486132104:
    string "lb"

s1486132108:
    string "    addi $t%d, $zero, %d\n"

s1486132136:
    string "    ori  $v0, $t%d, %d\n"

s1486132160:
    string "    xori $v0, $t%d, %d\n"

s1486132184:
    string "    andi $v0, $t%d, %d\n"

s1486132208:
    string "    addi $v0, $t%d, %d\n"

s1486132232:
    string "    sll  $v0, $t%d, %d\n"

s1486132256:
    string "    srl  $v0, $t%d, %d\n"

s1486132280:
    string "    addi $v0, $t%d, %d\n"

s1486132304:
    string "    addi $v0, $t%d, %d\n"

s1486132328:
    string "    addi $v0, $zero, %d\n"

s1486132356:
    string "Imm too large: %d\n"

s1486132376:
    string "    beq  $zero, $zero, _%.*s_%x\n"

s1486132412:
    string "    addi $sp, $sp, -4\n    sw   $ra, 0($sp)\n"

s1486132456:
    string "    addi $sp, $sp, -%d\n"

s1486132480:
    string "    sw   $t%d, %d($sp)\n"

s1486132504:
    string "    sw   $t%d, %d($sp)\n"

s1486132528:
    string "    jal  %.*s\n"

s1486132544:
    string "    lw   $t%d, %d($sp)\n"

s1486132568:
    string "    addi $sp, $sp, %d\n"

s1486132592:
    string "    lw   $ra, 0($sp)\n    addi $sp, $sp, 4\n"

s1486132636:
    string "    beq  $t%d, $zero, _%.*s_%x\n"

s1486132668:
    string "    beq  $v0, $zero, _%.*s_%x\n"

s1486132700:
    string "    bne  $t%d, $zero, _%.*s_%x\n"

s1486132732:
    string "    bne  $v0, $zero, _%.*s_%x\n"

s1486132764:
    string "    j    _%.*s_end\n"

s1486132784:
    string "    lw   $v0, 0($t%d)\n"

s1486132808:
    string "    lw   $v0, 0($v0)\n"

s1486132832:
    string "    lb   $v0, 0($t%d)\n"

s1486132856:
    string "    lb   $v0, 0($v0)\n"

s1486132880:
    string "    sw   $v0, 0($t%d)\n"

s1486132904:
    string "    sb   $v0, 0($t%d)\n"

s1486132928:
    string "    addi $t%d, $v0, 0\n"

s1486132952:
    string "    or   $v0, $t%d, $v0\n"

s1486132980:
    string "    xor  $v0, $t%d, $v0\n"

s1486133008:
    string "    and  $v0, $t%d, $v0\n"

s1486133036:
    string "    beq  $v0, $t%d, _%.*s_%x\n"

s1486133068:
    string "    bne  $v0, $t%d, _%.*s_%x\n"

s1486133100:
    string "    beq  $v0, $t%d, 2\n    addi $v0, $zero, 0\n    beq  $zero, $zero, 1\n    addi $v0, $zero, 1\n"

s1486133196:
    string "    sub  $v0, $t%d, $v0\n"

s1486133224:
    string "    slt  $v0, $t%d, $v0\n"

s1486133252:
    string "    slt  $v0, $v0, $t%d\n    addi $v0, $v0, -1\n"

s1486133300:
    string "    slt  $v0, $v0, $t%d\n"

s1486133328:
    string "    slt  $v0, $t%d, $v0\n    addi $v0, $v0, -1\n"

s1486133376:
    string "    sllv $v0, $t%d, $v0\n"

s1486133404:
    string "    srlv $v0, $t%d, $v0\n"

s1486133432:
    string "    add  $v0, $t%d, $v0\n"

s1486133460:
    string "    sub  $v0, $t%d, $v0\n"

s1486133488:
    string "    addi $sp, $sp, -4\n    sw   $ra, 0($sp)\n"

s1486133532:
    string "    addi $t%d, $v0, 0\n"

s1486133556:
    string "    addi $sp, $sp, -%d\n"

s1486133580:
    string "    sw   $t%d, %d($sp)\n"

s1486133604:
    string "    sw   $t%d, %d($sp)\n"

s1486133628:
    string "    jal  mul\n"

s1486133644:
    string "    jal  div\n"

s1486133660:
    string "    jal  mod\n"

s1486133676:
    string "    lw   $t%d, %d($sp)\n"

s1486133700:
    string "    addi $sp, $sp, %d\n"

s1486133724:
    string "    lw   $ra, 0($sp)\n    addi $sp, $sp, 4\n"

s1486133768:
    string "_%.*s_%x:\n"

s1486133780:
    string "## line %d\n"

s1486133792:
    string "Unknown inst: %d\n"


stmt:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _stmt_start
_stmt_ref_pos:
_stmt_module_ref:
    dd   _cc_ref

_stmt_start:
    addi $sp, $sp, -8
## line 545
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 139
    bne  $v0, $t0, _stmt_1459963764
## line 546
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    sw   $v0, 0($t0)
## line 546
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 547
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 548
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 40
    bne  $v0, $t0, _stmt_1459962900
## line 548
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _stmt_1459962984
_stmt_1459962900:
## line 548
    addi $v0, $ra, s1486133812[_stmt_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 548
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_stmt_1459962984:
## line 549
    addi $t0, $zero, 144
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 550
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 41
    bne  $v0, $t0, _stmt_1459963092
## line 550
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _stmt_1459963192
_stmt_1459963092:
## line 550
    addi $v0, $ra, s1486133840[_stmt_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 550
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_stmt_1459963192:
## line 551
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 8
    sw   $v0, 0($t0)
## line 551
    addi $t0, $fp, -8
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 552
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  stmt
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 553
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 137
    bne  $v0, $t0, _stmt_1459963672
## line 554
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 554
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 6
    sw   $v0, 0($t0)
## line 554
    addi $t0, $fp, -8
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 554
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32
    sw   $v0, 0($t0)
## line 555
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 556
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  stmt
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_stmt_1459963672:
## line 558
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32
    sw   $v0, 0($t0)
    beq  $zero, $zero, _stmt_1459965824
_stmt_1459963764:
## line 560
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 143
    bne  $v0, $t0, _stmt_1459964736
## line 561
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    sw   $v0, 0($t0)
## line 561
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 562
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 563
    addi $t0, $fp, -4
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32
    sw   $v0, 0($t0)
## line 564
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 40
    bne  $v0, $t0, _stmt_1459964104
## line 564
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _stmt_1459964188
_stmt_1459964104:
## line 564
    addi $v0, $ra, s1486133872[_stmt_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 564
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_stmt_1459964188:
## line 565
    addi $t0, $zero, 144
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 566
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 41
    bne  $v0, $t0, _stmt_1459964296
## line 566
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _stmt_1459964380
_stmt_1459964296:
## line 566
    addi $v0, $ra, s1486133900[_stmt_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 566
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_stmt_1459964380:
## line 567
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 8
    sw   $v0, 0($t0)
## line 567
    addi $t0, $fp, -8
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 568
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  stmt
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 569
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 6
    sw   $v0, 0($t0)
## line 569
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
## line 570
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32
    sw   $v0, 0($t0)
    beq  $zero, $zero, _stmt_1459965820
_stmt_1459964736:
## line 572
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 141
    bne  $v0, $t0, _stmt_1459965236
## line 573
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    sw   $v0, 0($t0)
## line 573
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 574
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 575
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -59
    beq  $v0, $zero, _stmt_1459965004
## line 575
    addi $t0, $zero, 144
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_stmt_1459965004:
## line 576
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 10
    sw   $v0, 0($t0)
## line 577
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 59
    bne  $v0, $t0, _stmt_1459965140
## line 577
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _stmt_1459965224
_stmt_1459965140:
## line 577
    addi $v0, $ra, s1486133928[_stmt_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 577
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_stmt_1459965224:
    beq  $zero, $zero, _stmt_1459965816
_stmt_1459965236:
## line 579
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 123
    bne  $v0, $t0, _stmt_1459965412
## line 580
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 581
_stmt_1459965312:
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -125
    beq  $v0, $zero, _stmt_1459965380
## line 581
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  stmt
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _stmt_1459965312
_stmt_1459965380:
## line 582
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _stmt_1459965812
_stmt_1459965412:
## line 584
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 59
    bne  $v0, $t0, _stmt_1459965488
## line 585
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _stmt_1459965808
_stmt_1459965488:
## line 588
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    sw   $v0, 0($t0)
## line 588
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 589
    addi $t0, $zero, 144
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  expr
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 590
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 59
    bne  $v0, $t0, _stmt_1459965720
## line 590
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _stmt_1459965804
_stmt_1459965720:
## line 590
    addi $v0, $ra, s1486133952[_stmt_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _stmt_module_ref[_stmt_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 590
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_stmt_1459965804:
_stmt_1459965808:
_stmt_1459965812:
_stmt_1459965816:
_stmt_1459965820:
_stmt_1459965824:

_stmt_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global stmt
s1486133812:
    string "%d: open paren expected\n"

s1486133840:
    string "%d: close paren expected\n %s"

s1486133872:
    string "%d: open paren expected\n"

s1486133900:
    string "%d: close paren expected\n"

s1486133928:
    string "%d: semicolon expected\n"

s1486133952:
    string "%d: semicolon expected\n"


main:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _main_start
_main_ref_pos:
_main_module_ref:
    dd   _cc_ref

_main_start:
    addi $sp, $sp, -48
## line 604
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 604
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 605
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459966012
## line 605
    addi $v0, $ra, s1486133976[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 605
    addi $v0, $zero, -1
    j    _main_end
_main_1459966012:
## line 607
_main_1459966024:
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459966096
    and  $v0, $t0, $v0
    lw   $v0, 12($fp)
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 45
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459966096:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459966480
## line 608
    lw   $v0, 12($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 111
    bne  $v0, $t0, _main_1459966380
## line 609
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459966312
## line 609
    addi $v0, $ra, s1486134008[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 609
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459966312:
## line 610
    addi $t0, $fp, -48
    addi $t1, $fp, 12
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
_main_1459966380:
## line 612
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 612
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459966024
_main_1459966480:
## line 615
    addi $t0, $fp, -16
    addi $t1, $zero, 128
    addi $v0, $zero, 1024
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $t2, $v0, 0
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  mul
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 616
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, sym[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, -16($fp)
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
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459966676
## line 616
    addi $v0, $ra, s1486134024[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 616
    addi $v0, $zero, -1
    j    _main_end
_main_1459966676:
## line 617
    addi $t0, $fp, -32
    addi $t1, $fp, -28
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    addi $t2, $v0, 0
    lw   $v0, -16($fp)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t1, 8($sp)
    sw   $t2, 4($sp)
    sw   $t3, 0($sp)
    jal  malloc
    lw   $t0, 12($sp)
    lw   $t1, 8($sp)
    lw   $t2, 4($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t2)
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459966856
## line 617
    addi $v0, $ra, s1486134060[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 617
    addi $v0, $zero, -1
    j    _main_end
_main_1459966856:
## line 618
    addi $t0, $fp, -40
    addi $t1, $fp, -36
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, data[_cc_ref]
    addi $t2, $v0, 0
    lw   $v0, -16($fp)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t1, 8($sp)
    sw   $t2, 4($sp)
    sw   $t3, 0($sp)
    jal  malloc
    lw   $t0, 12($sp)
    lw   $t1, 8($sp)
    lw   $t2, 4($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t2)
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459967036
## line 618
    addi $v0, $ra, s1486134092[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 618
    addi $v0, $zero, -1
    j    _main_end
_main_1459967036:
## line 619
    addi $t0, $fp, -44
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
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
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459967200
## line 619
    addi $v0, $ra, s1486134124[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 619
    addi $v0, $zero, -1
    j    _main_end
_main_1459967200:
## line 621
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, sym[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, -16($fp)
    addi $t2, $v0, 0
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
## line 622
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, -16($fp)
    addi $t2, $v0, 0
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
## line 623
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, data[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, -16($fp)
    addi $t2, $v0, 0
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
## line 624
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, -16($fp)
    addi $t2, $v0, 0
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
## line 626
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $ra, s1486134160[_main_ref_pos]
    sw   $v0, 0($t0)
## line 627
    addi $t0, $fp, -24
    addi $v0, $zero, 136
    sw   $v0, 0($t0)
## line 627
_main_1459967532:
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 143
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _main_1459967712
## line 627
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 627
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $t1, $fp, -24
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459967532
_main_1459967712:
## line 628
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 628
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 136
    sw   $v0, 0($t0)
## line 630
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, lp[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t1, $v0, 0
    lw   $v0, -16($fp)
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
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459967964
## line 630
    addi $v0, $ra, s1486134208[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -16($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 630
    addi $v0, $zero, -1
    j    _main_end
_main_1459967964:
## line 632
_main_1459967976:
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    beq  $v0, $zero, _main_1459979656
## line 633
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, lp[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 634
    addi $t0, $fp, -4
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_cc_ref]
    addi $t1, $v0, 0
    addi $t2, $fp, 12
    lw   $v0, 0($t2)
    addi $t3, $v0, 0
    addi $v0, $t3, 4
    sw   $v0, 0($t2)
    addi $t2, $v0, 0
    addi $v0, $t2, -4
    lw   $v0, 0($v0)
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  open
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _main_1459968280
## line 634
    addi $v0, $ra, s1486134244[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 634
    addi $v0, $zero, -1
    j    _main_end
_main_1459968280:
## line 635
    addi $t0, $fp, -20
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  file_size
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 636
    addi $t0, $fp, -24
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    lw   $v0, -20($fp)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  read
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _main_1459968524
## line 636
    addi $v0, $ra, s1486134264[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -24($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 636
    addi $v0, $zero, -1
    j    _main_end
_main_1459968524:
## line 637
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, p[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -24($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 638
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  close
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 640
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134284[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 46
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t1, 12($sp)
    sw   $t2, 8($sp)
    sw   $t4, 4($sp)
    sw   $t3, 0($sp)
    jal  strchr
    lw   $t0, 16($sp)
    lw   $t1, 12($sp)
    lw   $t2, 8($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t3, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_cc_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t3, $v0
    addi $t3, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 640
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 643
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 644
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 645
_main_1459968880:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    beq  $v0, $zero, _main_1459979644
## line 646
    addi $t0, $fp, -8
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 647
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 140
    bne  $v0, $t0, _main_1459969008
## line 647
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459970148
_main_1459969008:
## line 648
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 136
    bne  $v0, $t0, _main_1459969116
## line 648
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 648
    addi $t0, $fp, -8
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459970144
_main_1459969116:
## line 649
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 138
    bne  $v0, $t0, _main_1459970140
## line 650
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 651
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -123
    beq  $v0, $zero, _main_1459969248
## line 651
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459969248:
## line 652
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 123
    bne  $v0, $t0, _main_1459970136
## line 653
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 654
    addi $t0, $fp, -24
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 655
_main_1459969356:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -125
    beq  $v0, $zero, _main_1459970112
## line 656
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -135
    beq  $v0, $zero, _main_1459969524
## line 656
    addi $v0, $ra, s1486134296[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 656
    addi $v0, $zero, -1
    j    _main_end
_main_1459969524:
## line 657
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 658
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 144
    bne  $v0, $t0, _main_1459969784
## line 659
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 660
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -128
    beq  $v0, $zero, _main_1459969724
## line 660
    addi $v0, $ra, s1486134324[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 660
    addi $v0, $zero, -1
    j    _main_end
_main_1459969724:
## line 661
    addi $t0, $fp, -24
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 662
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459969784:
## line 664
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    sw   $v0, 0($t0)
## line 664
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 664
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 5
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $t1, $fp, -24
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 665
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 44
    bne  $v0, $t0, _main_1459970100
## line 665
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459970100:
    beq  $zero, $zero, _main_1459969356
_main_1459970112:
## line 667
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459970136:
_main_1459970140:
_main_1459970144:
_main_1459970148:
## line 670
_main_1459970160:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -59
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459970240
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -125
    addi $t0, $v0, 0
_main_1459970240:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459979612
## line 671
    addi $t0, $fp, -12
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
## line 672
_main_1459970300:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 161
    bne  $v0, $t0, _main_1459970420
## line 672
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 672
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 2
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459970300
_main_1459970420:
## line 673
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -135
    beq  $v0, $zero, _main_1459970536
## line 673
    addi $v0, $ra, s1486134352[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 673
    addi $v0, $zero, -1
    j    _main_end
_main_1459970536:
## line 674
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    beq  $v0, $zero, _main_1459970792
## line 675
    addi $v0, $ra, s1486134380[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 2
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 676
    addi $v0, $zero, -1
    j    _main_end
_main_1459970792:
## line 678
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 679
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    sw   $v0, 0($t0)
## line 680
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 40
    bne  $v0, $t0, _main_1459979028
## line 681
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 129
    sw   $v0, 0($t0)
## line 682
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 5
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 683
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 684
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 684
    addi $t0, $fp, -24
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 685
_main_1459971200:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -41
    beq  $v0, $zero, _main_1459972616
## line 686
    addi $t0, $fp, -12
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 687
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 140
    bne  $v0, $t0, _main_1459971344
## line 687
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459971448
_main_1459971344:
## line 688
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 136
    bne  $v0, $t0, _main_1459971444
## line 688
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 688
    addi $t0, $fp, -12
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
_main_1459971444:
_main_1459971448:
## line 689
_main_1459971460:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 161
    bne  $v0, $t0, _main_1459971580
## line 689
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 689
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 2
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459971460
_main_1459971580:
## line 690
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -135
    beq  $v0, $zero, _main_1459971696
## line 690
    addi $v0, $ra, s1486134420[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 690
    addi $v0, $zero, -1
    j    _main_end
_main_1459971696:
## line 691
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 134
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459971856
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 133
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459971856:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459971940
## line 691
    addi $v0, $ra, s1486134452[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 691
    addi $v0, $zero, -1
    j    _main_end
_main_1459971940:
## line 692
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 6
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 692
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 133
    sw   $v0, 0($t0)
## line 693
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 7
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 4
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 693
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    sw   $v0, 0($t0)
## line 694
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 8
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 5
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 694
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 5
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $t1, $fp, -24
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 695
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 696
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 44
    bne  $v0, $t0, _main_1459972604
## line 696
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459972604:
    beq  $zero, $zero, _main_1459971200
_main_1459972616:
## line 698
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 699
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 123
    bne  $v0, $t0, _main_1459976364
## line 700
    addi $t0, $fp, -24
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 701
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 702
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134488[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $zero, 1
    sll  $v0, $t6, 2
    add  $v0, $t5, $v0
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    andi $v0, $t5, 63
    addi $t5, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $t7, $zero, 2
    sll  $v0, $t7, 2
    add  $v0, $t6, $v0
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t7, $v0, 0
    addi $t8, $zero, 1
    sll  $v0, $t8, 2
    add  $v0, $t7, $v0
    lw   $v0, 0($v0)
    addi $t7, $v0, 0
    andi $v0, $t7, 63
    addi $t7, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t8, $v0, 0
    addi $t9, $zero, 2
    sll  $v0, $t9, 2
    add  $v0, $t8, $v0
    lw   $v0, 0($v0)
    addi $t8, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -36
    sw   $t0, 32($sp)
    sw   $t8, 28($sp)
    sw   $t7, 24($sp)
    sw   $t6, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 32($sp)
    addi $sp, $sp, 36
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 716
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 717
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134640[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_cc_ref]
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $zero, 46
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -28
    sw   $t0, 24($sp)
    sw   $t1, 20($sp)
    sw   $t2, 16($sp)
    sw   $t3, 12($sp)
    sw   $t4, 8($sp)
    sw   $t6, 4($sp)
    sw   $t5, 0($sp)
    jal  strchr
    lw   $t0, 24($sp)
    lw   $t1, 20($sp)
    lw   $t2, 16($sp)
    lw   $t3, 12($sp)
    lw   $t4, 8($sp)
    addi $sp, $sp, 28
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t5, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_cc_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t5, $v0
    addi $t5, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_cc_ref]
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -28
    sw   $t0, 24($sp)
    sw   $t6, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 24($sp)
    addi $sp, $sp, 28
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 724
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 725
_main_1459973544:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 140
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459973624
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 136
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459973624:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459975032
## line 726
    addi $t0, $fp, -8
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 140
    bne  $v0, $t1, _main_1459973712
    addi $v0, $zero, 1
    beq  $zero, $zero, _main_1459973724
_main_1459973712:
    addi $v0, $zero, 0
_main_1459973724:
    sw   $v0, 0($t0)
## line 727
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 728
_main_1459973760:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -59
    beq  $v0, $zero, _main_1459975000
## line 729
    addi $t0, $fp, -12
    lw   $v0, -8($fp)
    sw   $v0, 0($t0)
## line 730
_main_1459973844:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 161
    bne  $v0, $t0, _main_1459973964
## line 730
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 730
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 2
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459973844
_main_1459973964:
## line 731
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -135
    beq  $v0, $zero, _main_1459974080
## line 731
    addi $v0, $ra, s1486134680[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 731
    addi $v0, $zero, -1
    j    _main_end
_main_1459974080:
## line 732
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 134
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459974240
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 133
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459974240:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459974324
## line 732
    addi $v0, $ra, s1486134708[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 732
    addi $v0, $zero, -1
    j    _main_end
_main_1459974324:
## line 733
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 6
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 733
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 134
    sw   $v0, 0($t0)
## line 734
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 7
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 4
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 734
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    sw   $v0, 0($t0)
## line 735
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 8
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 5
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 735
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 5
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $t1, $fp, -24
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 736
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 737
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 44
    bne  $v0, $t0, _main_1459974988
## line 737
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459974988:
    beq  $zero, $zero, _main_1459973760
_main_1459975000:
## line 739
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459973544
_main_1459975032:
## line 741
    addi $t0, $fp, -28
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 742
_main_1459975080:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -125
    beq  $v0, $zero, _main_1459975148
## line 742
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  stmt
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459975080
_main_1459975148:
## line 743
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134740[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 748
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 749
    lw   $v0, -24($fp)
    beq  $v0, $zero, _main_1459975572
## line 750
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134756[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, -24($fp)
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 751
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459975572:
## line 753
    lw   $v0, -28($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  codegen
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 754
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134780[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 760
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 761
    lw   $v0, -24($fp)
    beq  $v0, $zero, _main_1459976112
## line 762
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134796[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, -24($fp)
    addi $t3, $v0, 0
    sll  $v0, $t3, 2
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 763
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459976112:
## line 765
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134820[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 775
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459976748
_main_1459976364:
## line 777
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -59
    beq  $v0, $zero, _main_1459976500
## line 777
    addi $v0, $ra, s1486134932[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 777
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459976744
_main_1459976500:
## line 779
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134956[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, current_func[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t0, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 16($sp)
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 780
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459976744:
_main_1459976748:
## line 782
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, sym[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 783
_main_1459976796:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    beq  $v0, $zero, _main_1459977524
## line 784
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 134
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459977012
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 133
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459977012:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459977104
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 132
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459977104:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459977444
## line 785
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 6
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 786
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 7
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 787
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 5
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 8
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
_main_1459977444:
## line 789
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 9
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459976796
_main_1459977524:
## line 793
_main_1459977536:
    lw   $v0, -40($fp)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, data[_cc_ref]
    lw   $v0, 0($v0)
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459979016
## line 794
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134972[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, -40($fp)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 794
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 795
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134980[_main_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 795
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 796
_main_1459977844:
    lw   $v0, -40($fp)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _main_1459978800
## line 797
    lw   $v0, -40($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 10
    bne  $v0, $t0, _main_1459978048
## line 797
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486134996[_main_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 797
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459978744
_main_1459978048:
## line 798
    lw   $v0, -40($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    bne  $v0, $t0, _main_1459978228
## line 798
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486135000[_main_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 798
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459978740
_main_1459978228:
## line 799
    lw   $v0, -40($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 39
    bne  $v0, $t0, _main_1459978408
## line 799
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486135004[_main_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 799
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459978736
_main_1459978408:
## line 800
    lw   $v0, -40($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 92
    bne  $v0, $t0, _main_1459978588
## line 800
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486135008[_main_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 800
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459978732
_main_1459978588:
## line 801
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486135012[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, -40($fp)
    lb   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t0, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 12($sp)
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 801
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459978732:
_main_1459978736:
_main_1459978740:
_main_1459978744:
## line 802
    addi $t0, $fp, -40
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459977844
_main_1459978800:
## line 804
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486135016[_main_ref_pos]
    addi $t2, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 804
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 805
    addi $t0, $fp, -40
    lw   $v0, -40($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    addi $v0, $t2, -4
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459977536
_main_1459979016:
    beq  $zero, $zero, _main_1459979532
_main_1459979028:
## line 809
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    sw   $v0, 0($t0)
## line 810
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 5
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, data[_cc_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 811
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $ra, s1486135020[_main_ref_pos]
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    addi $t4, $zero, 1
    sll  $v0, $t4, 2
    add  $v0, $t3, $v0
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    andi $v0, $t3, 63
    addi $t3, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $t5, $zero, 2
    sll  $v0, $t5, 2
    add  $v0, $t4, $v0
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    addi $t6, $zero, 1
    sll  $v0, $t6, 2
    add  $v0, $t5, $v0
    lw   $v0, 0($v0)
    addi $t5, $v0, 0
    andi $v0, $t5, 63
    addi $t5, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_cc_ref]
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $t7, $zero, 2
    sll  $v0, $t7, 2
    add  $v0, $t6, $v0
    lw   $v0, 0($v0)
    addi $t6, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -28
    sw   $t0, 24($sp)
    sw   $t6, 20($sp)
    sw   $t5, 16($sp)
    sw   $t4, 12($sp)
    sw   $t3, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  sprintf
    lw   $t0, 24($sp)
    addi $sp, $sp, 28
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 812
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tl[_cc_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459979532:
## line 814
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 44
    bne  $v0, $t0, _main_1459979600
## line 814
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459979600:
    beq  $zero, $zero, _main_1459970160
_main_1459979612:
## line 816
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459968880
_main_1459979644:
    beq  $zero, $zero, _main_1459967976
_main_1459979656:
## line 820
    addi $t0, $fp, -4
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  create
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459979816
## line 820
    addi $v0, $ra, s1486135052[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 820
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459979816:
## line 821
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, -44($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buff[_cc_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    lw   $v0, -44($fp)
    sub  $v0, $t3, $v0
    addi $t3, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -16
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  write
    addi $sp, $sp, 16
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 822
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  close
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 824
    lw   $v0, -44($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 825
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, sym[_cc_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 826
    lw   $v0, -32($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 827
    lw   $v0, -36($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  free
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 829
    addi $v0, $zero, 0

_main_end:
    addi $sp, $sp, 48
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global main
s1486133976:
    string "usage: c5 -o output file ...\n"

s1486134008:
    string "no output file\n"

s1486134024:
    string "could not malloc(%d) symbol area\n"

s1486134060:
    string "could not malloc(%d) text area\n"

s1486134092:
    string "could not malloc(%d) data area\n"

s1486134124:
    string "could not malloc(%d) buffer area\n"

s1486134160:
    string "char else enum if int return sizeof while void "

s1486134208:
    string "could not malloc(%d) source area\n"

s1486134244:
    string "could not open(%s)\n"

s1486134264:
    string "read() returned %d\n"

s1486134284:
    string "_%.*s_ref:\n"

s1486134296:
    string "%d: bad enum identifier %d\n"

s1486134324:
    string "%d: bad enum initializer\n"

s1486134352:
    string "%d: bad global declaration\n"

s1486134380:
    string "%d: duplicate global definition: %.*s\n"

s1486134420:
    string "%d: bad parameter declaration\n"

s1486134452:
    string "%d: duplicate parameter definition\n"

s1486134488:
    string "\n%.*s:\n    addi $sp, $sp, -4\n    sw   $fp, 0($sp)\n    addi $sp, $sp, -4\n    sw   $ra, 0($sp)\n    addi $fp, $sp, 0\n    jal  _%.*s_start\n_%.*s_ref_pos:\n"

s1486134640:
    string "_%.*s_module_ref:\n    dd   _%.*s_ref\n"

s1486134680:
    string "%d: bad local declaration\n"

s1486134708:
    string "%d: duplicate local definition\n"

s1486134740:
    string "\n_%.*s_start:\n"

s1486134756:
    string "    addi $sp, $sp, -%d\n"

s1486134780:
    string "\n_%.*s_end:\n"

s1486134796:
    string "    addi $sp, $sp, %d\n"

s1486134820:
    string "    lw   $ra, 0($sp)\n    addi $sp, $sp, 4\n    lw   $fp, 0($sp)\n    addi $sp, $sp, 4\n    jr   $ra\n\n.global %.*s\n"

s1486134932:
    string "%d: bad function decl\n"

s1486134956:
    string "\n.extern %.*s\n"

s1486134972:
    string "s%x:\n"

s1486134980:
    string "    string \""

s1486134996:
    string "\\n"

s1486135000:
    string "\\\""

s1486135004:
    string "\\\'"

s1486135008:
    string "\\\\"

s1486135012:
    string "%c"

s1486135016:
    string "\"\n\n"

s1486135020:
    string "\n%.*s:\n    dd 0\n.global %.*s\n"

s1486135052:
    string "open returned %d\n"

