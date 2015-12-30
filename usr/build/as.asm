_as_ref:

p:
    dd 0
.global p

buf:
    dd 0
.global buf

file:
    dd 0
.global file

output:
    dd 0
.global output

sym:
    dd 0
.global sym

id:
    dd 0
.global id

e:
    dd 0
.global e

tk:
    dd 0
.global tk

ival:
    dd 0
.global ival

line:
    dd 0
.global line

merl:
    dd 0
.global merl

next:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _next_start
_next_ref_pos:
_next_module_ref:
    dd   _as_ref

_next_start:
    addi $sp, $sp, -8
## line 42
_next_1459912724:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    sw   $v0, 0($t0)
    beq  $v0, $zero, _next_1459922396
## line 43
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 44
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 10
    bne  $v0, $t0, _next_1459912908
## line 44
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459922384
_next_1459912908:
## line 45
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 35
    bne  $v0, $t0, _next_1459913132
## line 46
_next_1459912964:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459913052
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -10
    addi $t0, $v0, 0
_next_1459913052:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459913120
## line 46
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459912964
_next_1459913120:
    beq  $zero, $zero, _next_1459922380
_next_1459913132:
## line 48
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 36
    bne  $v0, $t0, _next_1459915240
## line 49
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459913272
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459913272:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459913628
## line 50
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 51
_next_1459913328:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459913416
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459913416:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459913572
## line 51
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
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
    addi $v0, $v0, p[_as_ref]
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
    beq  $zero, $zero, _next_1459913328
_next_1459913572:
## line 52
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 129
    sw   $v0, 0($t0)
## line 53
    j    _next_end
    beq  $zero, $zero, _next_1459915228
_next_1459913628:
## line 56
    addi $t0, $fp, -4
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 56
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 57
_next_1459913708:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 97
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459913796
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 122
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459913796:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459913916
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 65
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459913904
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 90
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459913904:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459913916:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459914036
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459914024
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459914024:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459914036:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459914096
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 95
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459914096:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459914236
## line 58
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
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
    addi $v0, $v0, p[_as_ref]
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
    beq  $zero, $zero, _next_1459913708
_next_1459914236:
## line 59
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    sll  $v0, $t1, 6
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t2, $v0
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 60
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, sym[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 61
_next_1459914376:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    beq  $v0, $zero, _next_1459915076
## line 62
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
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
    beq  $v0, $zero, _next_1459914664
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
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
    addi $v0, $v0, p[_as_ref]
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
_next_1459914664:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459914756
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 300
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459914756:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459914848
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 331
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459914848:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459914996
## line 63
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 129
    sw   $v0, 0($t0)
## line 64
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -300
    sw   $v0, 0($t0)
## line 65
    j    _next_end
_next_1459914996:
## line 67
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 4
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459914376
_next_1459915076:
## line 69
    addi $v0, $ra, s1486131208[_next_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t3, $v0
    addi $t3, $v0, 0
    lw   $v0, -4($fp)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t4, 16($sp)
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 70
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_next_1459915228:
    beq  $zero, $zero, _next_1459922376
_next_1459915240:
## line 73
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 46
    bne  $v0, $t0, _next_1459916876
## line 74
    addi $t0, $fp, -4
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 74
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 75
_next_1459915364:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 97
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459915452
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 122
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459915452:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459915572
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 65
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459915560
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 90
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459915560:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459915572:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459915692
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459915680
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459915680:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459915692:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459915752
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 95
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459915752:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459915892
## line 76
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
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
    addi $v0, $v0, p[_as_ref]
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
    beq  $zero, $zero, _next_1459915364
_next_1459915892:
## line 77
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    sll  $v0, $t1, 6
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t2, $v0
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 78
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, sym[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 79
_next_1459916032:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    beq  $v0, $zero, _next_1459916716
## line 80
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
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
    beq  $v0, $zero, _next_1459916320
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
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
    addi $v0, $v0, p[_as_ref]
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
_next_1459916320:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459916412
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 332
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459916412:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459916504
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 333
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459916504:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459916636
## line 81
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 132
    sw   $v0, 0($t0)
## line 82
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 83
    j    _next_end
_next_1459916636:
## line 85
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 4
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459916032
_next_1459916716:
## line 87
    addi $v0, $ra, s1486131236[_next_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t3, $v0
    addi $t3, $v0, 0
    lw   $v0, -4($fp)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t4, 16($sp)
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 88
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _next_1459922372
_next_1459916876:
## line 90
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 97
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459916964
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 122
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459916964:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459917076
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 65
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459917064
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 90
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459917064:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459917076:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459917132
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 95
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459917132:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459919008
## line 91
    addi $t0, $fp, -4
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 92
_next_1459917208:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 97
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459917296
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 122
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459917296:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459917416
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 65
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459917404
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 90
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459917404:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459917416:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459917536
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459917524
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459917524:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459917536:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459917596
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 95
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459917596:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459917736
## line 93
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
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
    addi $v0, $v0, p[_as_ref]
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
    beq  $zero, $zero, _next_1459917208
_next_1459917736:
## line 94
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    sll  $v0, $t1, 6
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -4($fp)
    sub  $v0, $t2, $v0
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 95
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, sym[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 96
_next_1459917876:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    beq  $v0, $zero, _next_1459918656
## line 97
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
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
    beq  $v0, $zero, _next_1459918164
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
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
    addi $v0, $v0, p[_as_ref]
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
_next_1459918164:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459918576
## line 98
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    sw   $v0, 0($t0)
## line 99
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    xori $v0, $t2, -1
    bne  $v0, $t1, _next_1459918352
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    beq  $zero, $zero, _next_1459918556
_next_1459918352:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $t1, $v0
    beq  $v0, $zero, _next_1459918500
    addi $t1, $zero, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 3
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    beq  $zero, $zero, _next_1459918552
_next_1459918500:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
_next_1459918552:
_next_1459918556:
    sw   $v0, 0($t0)
## line 100
    j    _next_end
_next_1459918576:
## line 102
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 4
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459917876
_next_1459918656:
## line 104
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
## line 105
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 1
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 106
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $zero, 128
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 107
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 3
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    xori $v0, $t2, -1
    sw   $v0, 0($t1)
    sw   $v0, 0($t0)
## line 108
    j    _next_end
    beq  $zero, $zero, _next_1459922368
_next_1459919008:
## line 110
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 45
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459919152
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459919140
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459919140:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459919152:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459920748
## line 111
    addi $t0, $fp, -8
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 45
    beq  $v0, $t1, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $v0, $zero, _next_1459919308
## line 111
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    lb   $v0, 0($v0)
    sw   $v0, 0($t0)
_next_1459919308:
## line 112
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, -48
    sw   $v0, 0($t0)
    beq  $v0, $zero, _next_1459919636
## line 112
_next_1459919380:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459919468
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459919468:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459919624
## line 112
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
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
    addi $v0, $v0, p[_as_ref]
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
    beq  $zero, $zero, _next_1459919380
_next_1459919624:
    beq  $zero, $zero, _next_1459920608
_next_1459919636:
## line 113
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 120
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459919732
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 88
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459919732:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459920344
## line 114
_next_1459919756:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    addi $t1, $v0, 0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    lb   $v0, 0($v0)
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459920144
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459919908
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 57
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459919908:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459920020
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 97
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459920008
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 102
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459920008:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459920020:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459920132
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 65
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459920120
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 70
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459920120:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459920132:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459920144:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459920332
## line 115
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
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
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 15
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $v0, $zero, 65
    slt  $v0, $t2, $v0
    addi $v0, $v0, -1
    beq  $v0, $zero, _next_1459920300
    addi $v0, $zero, 9
    beq  $zero, $zero, _next_1459920312
_next_1459920300:
    addi $v0, $zero, 0
_next_1459920312:
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459919756
_next_1459920332:
    beq  $zero, $zero, _next_1459920604
_next_1459920344:
## line 117
_next_1459920356:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 48
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459920444
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 55
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_next_1459920444:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459920600
## line 117
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
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
    addi $v0, $v0, p[_as_ref]
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
    beq  $zero, $zero, _next_1459920356
_next_1459920600:
_next_1459920604:
_next_1459920608:
## line 118
    lw   $v0, -8($fp)
    beq  $v0, $zero, _next_1459920692
## line 118
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
_next_1459920692:
## line 119
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 130
    sw   $v0, 0($t0)
## line 120
    j    _next_end
    beq  $zero, $zero, _next_1459922364
_next_1459920748:
## line 122
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 39
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459920836
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459920836:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459921604
## line 123
    addi $t0, $fp, -4
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, buf[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 124
_next_1459920896:
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459920988
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t0, $v0
    addi $t0, $v0, 0
_next_1459920988:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459921388
## line 125
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
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
    bne  $v0, $t0, _next_1459921248
## line 126
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
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
    addi $v0, $zero, 110
    bne  $v0, $t0, _next_1459921244
## line 126
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 10
    sw   $v0, 0($t0)
_next_1459921244:
_next_1459921248:
## line 128
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    bne  $v0, $t0, _next_1459921376
## line 128
    addi $t0, $fp, -4
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -1
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    sb   $v0, 0($t0)
_next_1459921376:
    beq  $zero, $zero, _next_1459920896
_next_1459921388:
## line 130
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
## line 131
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    bne  $v0, $t0, _next_1459921544
## line 131
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, buf[_as_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _next_1459921580
_next_1459921544:
## line 131
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 130
    sw   $v0, 0($t0)
_next_1459921580:
## line 132
    j    _next_end
    beq  $zero, $zero, _next_1459922360
_next_1459921604:
## line 134
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 44
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459921692
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 40
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459921692:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459921748
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 41
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459921748:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459921804
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 58
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459921804:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459921860
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 91
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459921860:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _next_1459921916
    or   $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 93
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_next_1459921916:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _next_1459921952
## line 134
    j    _next_end
    beq  $zero, $zero, _next_1459922356
_next_1459921952:
## line 135
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -32
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459922040
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -10
    addi $t0, $v0, 0
_next_1459922040:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459922096
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -9
    addi $t0, $v0, 0
_next_1459922096:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459922152
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -114
    addi $t0, $v0, 0
_next_1459922152:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _next_1459922208
    and  $v0, $t0, $v0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -98
    addi $t0, $v0, 0
_next_1459922208:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _next_1459922352
## line 136
    addi $v0, $ra, s1486131268[_next_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t3, $v0, 0
    lw   $v0, _next_module_ref[_next_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t4, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -20
    sw   $t4, 16($sp)
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 20
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
_next_1459922352:
_next_1459922356:
_next_1459922360:
_next_1459922364:
_next_1459922368:
_next_1459922372:
_next_1459922376:
_next_1459922380:
_next_1459922384:
    beq  $zero, $zero, _next_1459912724
_next_1459922396:

_next_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global next
s1486131208:
    string "%s:%d: bad register `%.*s\'\n"

s1486131236:
    string "%s:%d: bad directive `%.*s\'\n"

s1486131268:
    string "%s:%d: bad token \'%c\'(%d)\n"


main:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _main_start
_main_ref_pos:
_main_module_ref:
    dd   _as_ref

_main_start:
    addi $sp, $sp, -48
## line 150
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, merl[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 152
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 152
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 154
_main_1459922528:
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459922600
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
_main_1459922600:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459923196
## line 155
    lw   $v0, 12($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 111
    bne  $v0, $t0, _main_1459922892
## line 156
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459922816
## line 156
    addi $v0, $ra, s1486131296[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 156
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459922816:
## line 157
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, output[_as_ref]
    addi $t0, $v0, 0
    addi $t1, $fp, 12
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 4
    sw   $v0, 0($t1)
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459923096
_main_1459922892:
## line 159
    lw   $v0, 12($fp)
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 109
    bne  $v0, $t0, _main_1459923004
## line 160
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, merl[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459923092
_main_1459923004:
## line 162
    addi $v0, $ra, s1486131312[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
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
## line 162
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459923092:
_main_1459923096:
## line 163
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
## line 163
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459922528
_main_1459923196:
## line 166
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, output[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459923308
## line 166
    addi $v0, $ra, s1486131336[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 166
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459923308:
## line 167
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _main_1459923420
## line 167
    addi $v0, $ra, s1486131352[_main_ref_pos]
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 167
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459923420:
## line 169
    addi $t0, $fp, -8
    addi $t1, $zero, 256
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
## line 171
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, sym[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
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
    bne  $v0, $t0, _main_1459923628
## line 171
    addi $v0, $ra, s1486131384[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
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
## line 171
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459923628:
## line 172
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
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
    bne  $v0, $t0, _main_1459923788
## line 172
    addi $v0, $ra, s1486131420[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
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
## line 172
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459923788:
## line 173
    addi $t0, $fp, -20
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
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
    bne  $v0, $t0, _main_1459923964
## line 173
    addi $v0, $ra, s1486131456[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
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
## line 173
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459923964:
## line 175
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, sym[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, -8($fp)
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
## line 176
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, -8($fp)
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
## line 177
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, -8($fp)
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
## line 179
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $ra, s1486131488[_main_ref_pos]
    sw   $v0, 0($t0)
## line 186
    addi $t0, $fp, -12
    addi $v0, $zero, 256
    sw   $v0, 0($t0)
## line 187
_main_1459924232:
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 333
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _main_1459924412
## line 187
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 187
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $t1, $fp, -12
    lw   $v0, 0($t1)
    addi $t2, $v0, 0
    addi $v0, $t2, 1
    sw   $v0, 0($t1)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459924232
_main_1459924412:
## line 189
    addi $t0, $fp, -44
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
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
    bne  $v0, $t0, _main_1459924588
## line 189
    addi $v0, $ra, s1486131792[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
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
## line 189
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459924588:
## line 191
    addi $t0, $fp, -48
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, merl[_as_ref]
    lw   $v0, 0($v0)
    beq  $v0, $zero, _main_1459924648
    addi $v0, $zero, 12
    beq  $zero, $zero, _main_1459924660
_main_1459924648:
    addi $v0, $zero, 0
_main_1459924660:
    sw   $v0, 0($t0)
## line 192
    addi $t0, $fp, -16
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, sym[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 193
_main_1459924712:
    addi $t0, $fp, 8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    beq  $v0, $zero, _main_1459936832
## line 194
    addi $t0, $fp, -4
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    addi $t1, $v0, 0
    lw   $v0, 12($fp)
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
    beq  $v0, $zero, _main_1459924956
## line 194
    addi $v0, $ra, s1486131828[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, 12($fp)
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
## line 194
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459924956:
## line 195
    addi $t0, $fp, -40
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
## line 196
    addi $t0, $fp, -12
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 0
    lw   $v0, -40($fp)
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
    beq  $v0, $zero, _main_1459925212
## line 196
    addi $v0, $ra, s1486131848[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
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
## line 196
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459925212:
## line 198
    addi $v0, $ra, s1486131868[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -40($fp)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
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
## line 200
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
## line 202
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 203
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 204
_main_1459925380:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    beq  $v0, $zero, _main_1459936776
## line 205
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    bne  $v0, $t0, _main_1459935368
## line 206
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 256
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459925604
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 265
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459925604:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459925788
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 269
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459925776
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 271
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459925776:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459925788:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459926704
## line 207
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 207
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459925964
## line 207
    addi $v0, $ra, s1486131892[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 207
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459925964:
## line 208
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 208
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -44
    beq  $v0, $zero, _main_1459926128
## line 208
    addi $v0, $ra, s1486131916[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 208
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459926128:
## line 209
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 209
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459926292
## line 209
    addi $v0, $ra, s1486131936[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 209
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459926292:
## line 210
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 210
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -44
    beq  $v0, $zero, _main_1459926456
## line 210
    addi $v0, $ra, s1486131960[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 210
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459926456:
## line 211
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 211
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459926620
## line 211
    addi $v0, $ra, s1486131980[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 211
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459926620:
## line 212
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 213
    addi $t0, $fp, -48
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459935356
_main_1459926704:
## line 215
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 266
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459926864
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 268
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459926864:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459927048
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 278
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459927036
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 282
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459927036:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459927048:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459927232
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 290
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459927220
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 291
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459927220:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459927232:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459927416
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 292
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459927404
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 293
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459927404:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459927416:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459928784
## line 221
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 221
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459927592
## line 221
    addi $v0, $ra, s1486132004[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 221
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459927592:
## line 222
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 222
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -44
    beq  $v0, $zero, _main_1459927756
## line 222
    addi $v0, $ra, s1486132028[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 222
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459927756:
## line 223
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 223
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459927920
## line 223
    addi $v0, $ra, s1486132048[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
_main_1459927920:
## line 224
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 224
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -44
    beq  $v0, $zero, _main_1459928084
## line 224
    addi $v0, $ra, s1486132072[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 224
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459928084:
## line 225
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 225
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -128
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459928192
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -130
    addi $t0, $v0, 0
_main_1459928192:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459928304
## line 225
    addi $v0, $ra, s1486132092[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 225
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459928304:
## line 226
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 226
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 91
    bne  $v0, $t0, _main_1459928720
## line 227
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 227
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -128
    beq  $v0, $zero, _main_1459928532
## line 227
    addi $v0, $ra, s1486132112[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 227
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459928532:
## line 228
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 228
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -93
    beq  $v0, $zero, _main_1459928696
## line 228
    addi $v0, $ra, s1486132132[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 228
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459928696:
## line 229
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459928720:
## line 231
    addi $t0, $fp, -48
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459935352
_main_1459928784:
## line 233
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 272
    bne  $v0, $t0, _main_1459929112
## line 234
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 234
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459929028
## line 234
    addi $v0, $ra, s1486132152[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 234
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459929028:
## line 235
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 236
    addi $t0, $fp, -48
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459935348
_main_1459929112:
## line 238
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 273
    bne  $v0, $t0, _main_1459929768
## line 239
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 239
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459929356
## line 239
    addi $v0, $ra, s1486132176[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 239
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459929356:
## line 240
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 240
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -44
    beq  $v0, $zero, _main_1459929520
## line 240
    addi $v0, $ra, s1486132200[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 240
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459929520:
## line 241
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 241
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459929684
## line 241
    addi $v0, $ra, s1486132220[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 241
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459929684:
## line 242
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 243
    addi $t0, $fp, -48
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459935344
_main_1459929768:
## line 245
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 274
    bne  $v0, $t0, _main_1459930096
## line 246
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 246
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459930012
## line 246
    addi $v0, $ra, s1486132244[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 246
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459930012:
## line 247
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 248
    addi $t0, $fp, -48
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459935340
_main_1459930096:
## line 250
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 275
    bne  $v0, $t0, _main_1459930260
## line 251
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 252
    addi $t0, $fp, -48
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459935336
_main_1459930260:
## line 254
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 276
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459930420
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 277
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459930420:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459930512
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 283
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459930512:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459931100
## line 255
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 255
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459930688
## line 255
    addi $v0, $ra, s1486132268[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 255
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459930688:
## line 256
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 256
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -44
    beq  $v0, $zero, _main_1459930852
## line 256
    addi $v0, $ra, s1486132292[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 256
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459930852:
## line 257
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 257
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -130
    beq  $v0, $zero, _main_1459931016
## line 257
    addi $v0, $ra, s1486132312[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 257
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459931016:
## line 258
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 259
    addi $t0, $fp, -48
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459935332
_main_1459931100:
## line 261
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 284
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459931260
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 289
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459931260:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459932792
## line 262
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 262
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459931436
## line 262
    addi $v0, $ra, s1486132332[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 262
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459931436:
## line 263
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 263
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -44
    beq  $v0, $zero, _main_1459931600
## line 263
    addi $v0, $ra, s1486132356[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 263
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459931600:
## line 264
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 264
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -128
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459931708
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -130
    addi $t0, $v0, 0
_main_1459931708:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459931820
## line 264
    addi $v0, $ra, s1486132376[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 264
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459931820:
## line 265
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 266
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 91
    bne  $v0, $t0, _main_1459932236
## line 267
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 267
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -128
    beq  $v0, $zero, _main_1459932048
## line 267
    addi $v0, $ra, s1486132400[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 267
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459932048:
## line 268
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 268
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -93
    beq  $v0, $zero, _main_1459932212
## line 268
    addi $v0, $ra, s1486132420[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 268
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459932212:
## line 269
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459932236:
## line 271
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -40
    beq  $v0, $zero, _main_1459932380
## line 271
    addi $v0, $ra, s1486132440[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 271
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459932380:
## line 272
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 272
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -129
    beq  $v0, $zero, _main_1459932544
## line 272
    addi $v0, $ra, s1486132460[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 272
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459932544:
## line 273
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 273
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -41
    beq  $v0, $zero, _main_1459932708
## line 273
    addi $v0, $ra, s1486132484[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 273
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459932708:
## line 274
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 275
    addi $t0, $fp, -48
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459935328
_main_1459932792:
## line 277
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 294
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459932952
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 295
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459932952:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459933268
## line 278
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 278
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -128
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459933072
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -130
    addi $t0, $v0, 0
_main_1459933072:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459933184
## line 278
    addi $v0, $ra, s1486132504[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 278
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459933184:
## line 279
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 280
    addi $t0, $fp, -48
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459935324
_main_1459933268:
## line 282
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 296
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459933428
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 297
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459933428:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459933520
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 298
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459933520:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459934232
## line 283
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 283
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -128
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459933640
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -130
    addi $t0, $v0, 0
_main_1459933640:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459933752
## line 283
    addi $v0, $ra, s1486132528[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 283
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459933752:
## line 284
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 284
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 91
    bne  $v0, $t0, _main_1459934168
## line 285
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 285
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -128
    beq  $v0, $zero, _main_1459933980
## line 285
    addi $v0, $ra, s1486132548[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 285
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459933980:
## line 286
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 286
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -93
    beq  $v0, $zero, _main_1459934144
## line 286
    addi $v0, $ra, s1486132568[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 286
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459934144:
## line 287
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459934168:
## line 289
    addi $t0, $fp, -48
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459935320
_main_1459934232:
## line 291
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 299
    bne  $v0, $t0, _main_1459934612
## line 292
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 292
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -34
    beq  $v0, $zero, _main_1459934476
## line 292
    addi $v0, $ra, s1486132588[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 292
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459934476:
## line 293
    addi $t0, $fp, -48
    lw   $v0, -48($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    addi $v0, $t2, -4
    and  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
## line 294
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459935316
_main_1459934612:
## line 297
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459934788
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    sub  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459934788:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459934988
## line 297
    addi $v0, $ra, s1486132612[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
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
    addi $v0, $v0, id[_as_ref]
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
    sw   $t4, 16($sp)
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459934988:
## line 298
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    sw   $v0, 0($t0)
## line 299
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -48($fp)
    sw   $v0, 0($t0)
## line 300
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 301
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -58
    beq  $v0, $zero, _main_1459935292
## line 301
    addi $v0, $ra, s1486132644[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 301
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459935292:
## line 302
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459935316:
_main_1459935320:
_main_1459935324:
_main_1459935328:
_main_1459935332:
_main_1459935336:
_main_1459935340:
_main_1459935344:
_main_1459935348:
_main_1459935352:
_main_1459935356:
    beq  $zero, $zero, _main_1459936764
_main_1459935368:
## line 305
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 132
    bne  $v0, $t0, _main_1459936660
## line 306
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 332
    bne  $v0, $t0, _main_1459935772
## line 307
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 308
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -128
    beq  $v0, $zero, _main_1459935740
## line 308
    addi $v0, $ra, s1486132664[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
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
    addi $v0, $v0, id[_as_ref]
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
    sw   $t4, 16($sp)
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 308
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459935740:
## line 309
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459936648
_main_1459935772:
## line 311
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 333
    bne  $v0, $t0, _main_1459936424
## line 312
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 313
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -128
    beq  $v0, $zero, _main_1459936100
## line 313
    addi $v0, $ra, s1486132700[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
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
    addi $v0, $v0, id[_as_ref]
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
    sw   $t4, 16($sp)
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 313
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459936100:
## line 314
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459936224
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -131
    addi $t0, $v0, 0
_main_1459936224:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459936392
## line 316
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    sw   $v0, 0($t0)
## line 317
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    sw   $v0, 0($t0)
_main_1459936392:
## line 319
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459936644
_main_1459936424:
## line 322
    addi $v0, $ra, s1486132736[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
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
    addi $v0, $v0, id[_as_ref]
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
    sw   $t4, 16($sp)
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 20
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 323
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459936644:
_main_1459936648:
    beq  $zero, $zero, _main_1459936760
_main_1459936660:
## line 326
    addi $v0, $ra, s1486132772[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 326
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459936760:
_main_1459936764:
    beq  $zero, $zero, _main_1459925380
_main_1459936776:
## line 329
    addi $t0, $fp, 12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459924712
_main_1459936832:
## line 332
    addi $t0, $fp, -24
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -48($fp)
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 334
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, merl[_as_ref]
    lw   $v0, 0($v0)
    beq  $v0, $zero, _main_1459937168
## line 335
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $t1, $zero, 4
    sll  $v0, $t1, 26
    addi $t1, $v0, 0
    ori  $v0, $t1, 2
    sw   $v0, 0($t0)
## line 336
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -48($fp)
    sw   $v0, 0($t0)
## line 337
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
_main_1459937168:
## line 356
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, p[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, -44($fp)
    sw   $v0, 0($t0)
## line 357
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    sw   $v0, 0($t0)
## line 358
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 359
_main_1459937268:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    beq  $v0, $zero, _main_1459958916
## line 360
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459937412
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -299
    addi $t0, $v0, 0
_main_1459937412:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459937504
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -131
    addi $t0, $v0, 0
_main_1459937504:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459957696
## line 361
    addi $t0, $fp, -12
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 362
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 256
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459937708
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 265
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459937708:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459937892
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 269
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459937880
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 271
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459937880:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459937892:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459940212
## line 366
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 256
    bne  $v0, $t0, _main_1459938048
## line 366
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 32
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939816
_main_1459938048:
## line 367
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 257
    bne  $v0, $t0, _main_1459938192
## line 367
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 33
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939812
_main_1459938192:
## line 368
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 258
    bne  $v0, $t0, _main_1459938336
## line 368
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 34
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939808
_main_1459938336:
## line 369
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 259
    bne  $v0, $t0, _main_1459938480
## line 369
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 35
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939804
_main_1459938480:
## line 370
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 260
    bne  $v0, $t0, _main_1459938624
## line 370
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 36
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939800
_main_1459938624:
## line 371
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 261
    bne  $v0, $t0, _main_1459938768
## line 371
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 37
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939796
_main_1459938768:
## line 372
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 262
    bne  $v0, $t0, _main_1459938912
## line 372
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 38
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939792
_main_1459938912:
## line 373
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 263
    bne  $v0, $t0, _main_1459939056
## line 373
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 39
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939788
_main_1459939056:
## line 374
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 264
    bne  $v0, $t0, _main_1459939200
## line 374
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 42
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939784
_main_1459939200:
## line 375
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 265
    bne  $v0, $t0, _main_1459939344
## line 375
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 43
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939780
_main_1459939344:
## line 376
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 269
    bne  $v0, $t0, _main_1459939488
## line 376
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 4
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939776
_main_1459939488:
## line 377
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 270
    bne  $v0, $t0, _main_1459939632
## line 377
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 6
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459939772
_main_1459939632:
## line 378
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 271
    bne  $v0, $t0, _main_1459939768
## line 378
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 7
    sw   $v0, 0($t0)
_main_1459939768:
_main_1459939772:
_main_1459939776:
_main_1459939780:
_main_1459939784:
_main_1459939788:
_main_1459939792:
_main_1459939796:
_main_1459939800:
_main_1459939804:
_main_1459939808:
_main_1459939812:
_main_1459939816:
## line 379
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 379
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 11
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 379
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 380
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 380
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 21
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 380
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 381
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 381
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 16
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 381
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459957604
_main_1459940212:
## line 383
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 266
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459940372
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 268
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459940372:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459941212
## line 386
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 266
    bne  $v0, $t0, _main_1459940528
## line 386
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459940816
_main_1459940528:
## line 387
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 267
    bne  $v0, $t0, _main_1459940672
## line 387
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 2
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459940812
_main_1459940672:
## line 388
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 268
    bne  $v0, $t0, _main_1459940808
## line 388
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 3
    sw   $v0, 0($t0)
_main_1459940808:
_main_1459940812:
_main_1459940816:
## line 389
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 389
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 11
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 389
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 390
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 390
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 16
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 390
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 391
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 391
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 6
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 391
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459957600
_main_1459941212:
## line 393
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 272
    bne  $v0, $t0, _main_1459941484
## line 396
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 8
    sw   $v0, 0($t0)
## line 397
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 397
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 21
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 397
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459957596
_main_1459941484:
## line 399
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 273
    bne  $v0, $t0, _main_1459941884
## line 402
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 9
    sw   $v0, 0($t0)
## line 403
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 403
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 21
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 403
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 404
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 404
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 11
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 404
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459957592
_main_1459941884:
## line 406
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 274
    bne  $v0, $t0, _main_1459942156
## line 409
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 409
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 16
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 409
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 410
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 12
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459957588
_main_1459942156:
## line 412
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 275
    bne  $v0, $t0, _main_1459942332
## line 415
    addi $t0, $fp, -12
    addi $t1, $zero, 16
    sll  $v0, $t1, 26
    addi $t1, $v0, 0
    ori  $v0, $t1, 24
    sw   $v0, 0($t0)
## line 416
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459957584
_main_1459942332:
## line 418
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 276
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459942492
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 277
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459942492:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459942976
## line 421
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 277
    bne  $v0, $t0, _main_1459942640
## line 421
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    ori  $v0, $t1, 4
    sw   $v0, 0($t0)
_main_1459942640:
## line 422
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 422
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 16
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 422
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 423
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 423
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 11
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 423
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 424
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 16
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459957580
_main_1459942976:
## line 426
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 278
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459943136
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 282
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459943136:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459943320
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 290
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459943308
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 291
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459943308:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459943320:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459947000
## line 430
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 278
    bne  $v0, $t0, _main_1459943492
## line 430
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 8
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459944468
_main_1459943492:
## line 431
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 279
    bne  $v0, $t0, _main_1459943652
## line 431
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 9
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459944464
_main_1459943652:
## line 432
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 280
    bne  $v0, $t0, _main_1459943812
## line 432
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 12
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459944460
_main_1459943812:
## line 433
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 281
    bne  $v0, $t0, _main_1459943972
## line 433
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 13
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459944456
_main_1459943972:
## line 434
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 282
    bne  $v0, $t0, _main_1459944132
## line 434
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 14
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459944452
_main_1459944132:
## line 435
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 290
    bne  $v0, $t0, _main_1459944292
## line 435
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 10
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459944448
_main_1459944292:
## line 436
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 291
    bne  $v0, $t0, _main_1459944444
## line 436
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 11
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459944444:
_main_1459944448:
_main_1459944452:
_main_1459944456:
_main_1459944460:
_main_1459944464:
_main_1459944468:
## line 437
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 437
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 16
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 437
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 438
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 438
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 21
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 438
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 439
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 439
    addi $t0, $fp, -28
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 439
    addi $t0, $fp, -32
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 439
    addi $t0, $fp, -36
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 439
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 441
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 91
    bne  $v0, $t0, _main_1459945204
## line 442
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 443
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    bne  $v0, $t0, _main_1459945096
## line 443
    addi $v0, $ra, s1486132788[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 443
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459945096:
## line 444
    addi $t0, $fp, -28
    lw   $v0, -28($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 445
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 445
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459946668
_main_1459945204:
## line 448
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, merl[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459945276
    and  $v0, $t0, $v0
    lw   $v0, -36($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459945276:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459945460
    and  $v0, $t0, $v0
    lw   $v0, -32($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459945448
    or   $v0, $t0, $v0
    lw   $v0, -32($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459945448:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459945460:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459946356
## line 449
    lw   $v0, -28($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    bne  $v0, $t0, _main_1459946164
## line 450
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 18
    sw   $v0, 0($t0)
## line 451
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 452
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -32($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    sw   $v0, 0($t0)
## line 453
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    lw   $v0, -32($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -32($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
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
## line 454
    addi $t0, $fp, -24
    lw   $v0, -24($fp)
    addi $t1, $v0, 0
    lw   $v0, -32($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
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
    beq  $zero, $zero, _main_1459946344
_main_1459946164:
## line 457
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    sw   $v0, 0($t0)
## line 458
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459946344:
    beq  $zero, $zero, _main_1459946664
_main_1459946356:
## line 461
    lw   $v0, -36($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459946460
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459946460:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459946660
## line 462
    addi $v0, $ra, s1486132824[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -32($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    addi $t1, $v0, 0
    lw   $v0, -32($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
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
## line 463
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459946660:
_main_1459946664:
_main_1459946668:
## line 466
    lw   $v0, -28($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 32767
    slt  $v0, $v0, $t0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459946756
    or   $v0, $t0, $v0
    lw   $v0, -28($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, -32768
    slt  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459946756:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459946884
## line 466
    addi $v0, $ra, s1486132852[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -28($fp)
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
## line 466
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459946884:
## line 467
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, -28($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 16
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459957576
_main_1459947000:
## line 469
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 283
    bne  $v0, $t0, _main_1459947436
## line 472
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 472
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 16
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 472
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 473
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 473
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -12($fp)
    addi $t3, $v0, 0
    sll  $v0, $t3, 16
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 473
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 474
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 15
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459957572
_main_1459947436:
## line 476
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 284
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459947596
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 289
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459947596:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459951132
## line 479
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 284
    bne  $v0, $t0, _main_1459947768
## line 479
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 35
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459948580
_main_1459947768:
## line 480
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 285
    bne  $v0, $t0, _main_1459947928
## line 480
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 33
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459948576
_main_1459947928:
## line 481
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 286
    bne  $v0, $t0, _main_1459948088
## line 481
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 32
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459948572
_main_1459948088:
## line 482
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 287
    bne  $v0, $t0, _main_1459948248
## line 482
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 43
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459948568
_main_1459948248:
## line 483
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 288
    bne  $v0, $t0, _main_1459948408
## line 483
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 41
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459948564
_main_1459948408:
## line 484
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 289
    bne  $v0, $t0, _main_1459948560
## line 484
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 40
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459948560:
_main_1459948564:
_main_1459948568:
_main_1459948572:
_main_1459948576:
_main_1459948580:
## line 485
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 485
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 16
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 485
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 486
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 486
    addi $t0, $fp, -28
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 486
    addi $t0, $fp, -32
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 486
    addi $t0, $fp, -36
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 486
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 487
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 91
    bne  $v0, $t0, _main_1459949188
## line 488
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 489
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    bne  $v0, $t0, _main_1459949080
## line 489
    addi $v0, $ra, s1486132884[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
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
## line 489
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459949080:
## line 490
    addi $t0, $fp, -28
    lw   $v0, -28($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 491
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 491
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459950652
_main_1459949188:
## line 494
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, merl[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459949260
    and  $v0, $t0, $v0
    lw   $v0, -36($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459949260:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459949444
    and  $v0, $t0, $v0
    lw   $v0, -32($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459949432
    or   $v0, $t0, $v0
    lw   $v0, -32($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459949432:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459949444:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459950340
## line 495
    lw   $v0, -28($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    bne  $v0, $t0, _main_1459950148
## line 497
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 18
    sw   $v0, 0($t0)
## line 498
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 499
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -32($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    sw   $v0, 0($t0)
## line 500
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    lw   $v0, -32($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -32($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
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
## line 501
    addi $t0, $fp, -24
    lw   $v0, -24($fp)
    addi $t1, $v0, 0
    lw   $v0, -32($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
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
    beq  $zero, $zero, _main_1459950328
_main_1459950148:
## line 504
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 17
    sw   $v0, 0($t0)
## line 505
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459950328:
    beq  $zero, $zero, _main_1459950648
_main_1459950340:
## line 508
    lw   $v0, -36($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459950444
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459950444:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459950644
## line 509
    addi $v0, $ra, s1486132920[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, -32($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    addi $t1, $v0, 0
    lw   $v0, -32($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
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
## line 510
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459950644:
_main_1459950648:
_main_1459950652:
## line 513
    lw   $v0, -28($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 32767
    slt  $v0, $v0, $t0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459950740
    or   $v0, $t0, $v0
    lw   $v0, -28($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, -32768
    slt  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459950740:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459950868
## line 513
    addi $v0, $ra, s1486132948[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -28($fp)
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
## line 513
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459950868:
## line 514
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, -28($fp)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 16
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 515
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 515
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 21
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 515
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 515
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459957568
_main_1459951132:
## line 517
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 292
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459951292
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 293
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459951292:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459953720
## line 520
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 292
    bne  $v0, $t0, _main_1459951464
## line 520
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 4
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459951620
_main_1459951464:
## line 521
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 293
    bne  $v0, $t0, _main_1459951616
## line 521
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 5
    sll  $v0, $t2, 26
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459951616:
_main_1459951620:
## line 522
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 522
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 16
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 522
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 523
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 523
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 31
    addi $t2, $v0, 0
    sll  $v0, $t2, 21
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 523
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 524
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 525
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, merl[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459951968
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459951968:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459952152
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459952140
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459952140:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459952152:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459952224
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459952224:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459952868
## line 527
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 2
    sw   $v0, 0($t0)
## line 528
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 529
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    sw   $v0, 0($t0)
## line 530
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
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
## line 531
    addi $t0, $fp, -24
    lw   $v0, -24($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
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
    beq  $zero, $zero, _main_1459953176
_main_1459952868:
## line 533
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459952972
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459952972:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459953172
## line 534
    addi $v0, $ra, s1486132980[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
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
## line 535
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459953172:
_main_1459953176:
## line 537
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    bne  $v0, $t0, _main_1459953368
## line 537
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -20($fp)
    sub  $v0, $t2, $v0
    sub  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, -4
    addi $t1, $v0, 0
    srl  $v0, $t1, 2
    sw   $v0, 0($t0)
_main_1459953368:
## line 538
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 32767
    slt  $v0, $v0, $t0
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459953456
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, -32768
    slt  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459953456:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459953584
## line 538
    addi $v0, $ra, s1486133008[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, -28($fp)
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
## line 538
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459953584:
## line 539
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 16
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 540
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459957564
_main_1459953720:
## line 542
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 294
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459953880
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 295
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459953880:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459955844
## line 545
    addi $t0, $fp, -12
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $zero, 294
    bne  $v0, $t1, _main_1459954004
    addi $v0, $zero, 2
    beq  $zero, $zero, _main_1459954016
_main_1459954004:
    addi $v0, $zero, 3
_main_1459954016:
    addi $t1, $v0, 0
    sll  $v0, $t1, 26
    sw   $v0, 0($t0)
## line 546
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 547
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459954180
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 130
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459954180:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459954248
## line 547
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    srl  $v0, $t1, 2
    sw   $v0, 0($t0)
_main_1459954248:
## line 548
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, merl[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459954320
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459954320:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459954504
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459954492
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459954492:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459954504:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459955400
## line 549
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    bne  $v0, $t0, _main_1459955208
## line 551
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 34
    sw   $v0, 0($t0)
## line 552
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 553
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    sw   $v0, 0($t0)
## line 554
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
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
## line 555
    addi $t0, $fp, -24
    lw   $v0, -24($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
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
    beq  $zero, $zero, _main_1459955388
_main_1459955208:
## line 558
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 33
    sw   $v0, 0($t0)
## line 559
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459955388:
    beq  $zero, $zero, _main_1459955708
_main_1459955400:
## line 562
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459955504
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459955504:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459955704
## line 563
    addi $v0, $ra, s1486133040[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
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
_main_1459955704:
_main_1459955708:
## line 566
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 26
    addi $t3, $v0, 0
    addi $v0, $t3, -1
    and  $v0, $t2, $v0
    or   $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 567
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459957560
_main_1459955844:
## line 569
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 296
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459956004
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 298
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    addi $t0, $v0, 0
_main_1459956004:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459957556
## line 572
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 573
    addi $t0, $fp, -12
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 574
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, merl[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459956144
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459956144:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459956328
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459956316
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459956316:
    or   $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459956328:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459957224
## line 575
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    bne  $v0, $t0, _main_1459957032
## line 577
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 50
    sw   $v0, 0($t0)
## line 578
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 579
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    sw   $v0, 0($t0)
## line 580
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
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
## line 581
    addi $t0, $fp, -24
    lw   $v0, -24($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
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
    beq  $zero, $zero, _main_1459957212
_main_1459957032:
## line 584
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 49
    sw   $v0, 0($t0)
## line 585
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459957212:
    beq  $zero, $zero, _main_1459957532
_main_1459957224:
## line 588
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459957328
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459957328:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459957528
## line 589
    addi $v0, $ra, s1486133068[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 2
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
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
_main_1459957528:
_main_1459957532:
## line 592
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459957556:
_main_1459957560:
_main_1459957564:
_main_1459957568:
_main_1459957572:
_main_1459957576:
_main_1459957580:
_main_1459957584:
_main_1459957588:
_main_1459957592:
_main_1459957596:
_main_1459957600:
_main_1459957604:
## line 594
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459958904
_main_1459957696:
## line 596
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459957820
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 299
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459957820:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459958056
## line 597
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 598
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
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
## line 599
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, e[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    add  $v0, $t1, $v0
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    addi $v0, $t2, -4
    and  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 600
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459958900
_main_1459958056:
## line 602
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 128
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459958180
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_main_1459958180:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459958244
## line 603
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 604
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    beq  $zero, $zero, _main_1459958896
_main_1459958244:
## line 606
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 132
    bne  $v0, $t0, _main_1459958892
## line 607
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, ival[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 332
    bne  $v0, $t0, _main_1459958844
## line 608
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 609
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, tk[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -128
    addi $t0, $v0, 0
    bne  $v0, $zero, _main_1459958476
    or   $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -131
    addi $t0, $v0, 0
_main_1459958476:
    or   $v0, $t0, $v0
    beq  $v0, $zero, _main_1459958708
## line 609
    addi $v0, $ra, s1486133096[_main_ref_pos]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, file[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, line[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
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
    addi $v0, $v0, id[_as_ref]
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
    sw   $t4, 16($sp)
    sw   $t3, 12($sp)
    sw   $t2, 8($sp)
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  printf
    addi $sp, $sp, 20
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
_main_1459958708:
## line 610
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 3
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459958868
_main_1459958844:
## line 613
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459958868:
## line 615
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -0
    jal  next
    addi $sp, $sp, 0
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459958892:
_main_1459958896:
_main_1459958900:
_main_1459958904:
    beq  $zero, $zero, _main_1459937268
_main_1459958916:
## line 619
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, merl[_as_ref]
    lw   $v0, 0($v0)
    beq  $v0, $zero, _main_1459960160
## line 620
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, sym[_as_ref]
    lw   $v0, 0($v0)
    sw   $v0, 0($t0)
## line 622
_main_1459958992:
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    beq  $v0, $zero, _main_1459960064
## line 623
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 131
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459959224
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    xori $v0, $t1, -1
    sub  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459959224:
    and  $v0, $t0, $v0
    addi $t0, $v0, 0
    beq  $v0, $zero, _main_1459959316
    and  $v0, $t0, $v0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $t1, $zero, 3
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    slt  $v0, $t0, $v0
    addi $t0, $v0, 0
_main_1459959316:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _main_1459959984
## line 624
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 625
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    addi $t1, $zero, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 3
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 626
    addi $t0, $fp, -24
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $t0, -4
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 1
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    andi $v0, $t1, 63
    sw   $v0, 0($t0)
## line 627
    lw   $v0, -24($fp)
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 2
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
    sll  $v0, $t3, 2
    add  $v0, $t2, $v0
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    andi $v0, $t2, 63
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
## line 628
    addi $t0, $fp, -24
    lw   $v0, -24($fp)
    addi $t1, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t2, $v0, 0
    addi $t3, $zero, 1
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
_main_1459959984:
## line 630
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    addi $t0, $v0, 0
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, id[_as_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $t2, $zero, 4
    sll  $v0, $t2, 2
    add  $v0, $t1, $v0
    sw   $v0, 0($t0)
    beq  $zero, $zero, _main_1459958992
_main_1459960064:
## line 632
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    addi $t1, $zero, 2
    sll  $v0, $t1, 2
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -24($fp)
    addi $t1, $v0, 0
    lw   $v0, -20($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
_main_1459960160:
## line 635
    addi $t0, $fp, -4
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, output[_as_ref]
    lw   $v0, 0($v0)
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
    slt  $v0, $v0, $t0
    addi $v0, $v0, -1
    beq  $v0, $zero, _main_1459960320
## line 635
    addi $v0, $ra, s1486133132[_main_ref_pos]
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
## line 635
    addi $t0, $zero, -1
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  exit
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_main_1459960320:
## line 636
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 0
    lw   $v0, -24($fp)
    addi $t3, $v0, 0
    lw   $v0, -20($fp)
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
## line 637
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
## line 639
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, sym[_as_ref]
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
## line 640
    lw   $v0, _main_module_ref[_main_ref_pos]($ra)
    addi $v0, $v0, buf[_as_ref]
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
## line 641
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
## line 643
    addi $v0, $zero, 0

_main_end:
    addi $sp, $sp, 48
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global main
s1486131296:
    string "no output file\n"

s1486131312:
    string "unknown argument `%s\'\n"

s1486131336:
    string "no output file\n"

s1486131352:
    string "usage: as -o output file ...\n"

s1486131384:
    string "could not malloc(%d) symbol area\n"

s1486131420:
    string "could not malloc(%d) buffer area\n"

s1486131456:
    string "could not malloc(%d) exec area\n"

s1486131488:
    string "add addu sub subu and or xor nor slt sltu sll srl sra sllv srlv srav jr jalr syscall eret mfco mtco addi addiu andi ori xori lui lw lh lb sw sh sb slti sltiu beq bne j jal db dw dd string zero at v0 v1 a0 a1 a2 a3 t0 t1 t2 t3 t4 t5 t6 t7 s0 s1 s2 s3 s4 s5 s6 s7 t8 t9 k0 k1 gp sp fp ra global extern "

s1486131792:
    string "could not malloc(%d) source area\n"

s1486131828:
    string "could not open(%s)\n"

s1486131848:
    string "read() returned %d\n"

s1486131868:
    string "size: %d, cluster: %d\n"

s1486131892:
    string "%s:%d expect register\n"

s1486131916:
    string "%s:%d expect `,\'"

s1486131936:
    string "%s:%d expect register\n"

s1486131960:
    string "%s:%d expect `,\'"

s1486131980:
    string "%s:%d expect register\n"

s1486132004:
    string "%s:%d expect register\n"

s1486132028:
    string "%s:%d expect `,\'"

s1486132048:
    string "%s:%d expect register\n"

s1486132072:
    string "%s:%d expect `,\'"

s1486132092:
    string "%s:%d expect imm\n"

s1486132112:
    string "%s:%d expect label\n"

s1486132132:
    string "%s:%d expect `]\'\n"

s1486132152:
    string "%s:%d expect register\n"

s1486132176:
    string "%s:%d expect register\n"

s1486132200:
    string "%s:%d expect `,\'"

s1486132220:
    string "%s:%d expect register\n"

s1486132244:
    string "%s:%d expect register\n"

s1486132268:
    string "%s:%d expect register\n"

s1486132292:
    string "%s:%d expect `,\'"

s1486132312:
    string "%s:%d expect imm\n"

s1486132332:
    string "%s:%d expect register\n"

s1486132356:
    string "%s:%d expect `,\'"

s1486132376:
    string "%s:%d expect offset\n"

s1486132400:
    string "%s:%d expect label\n"

s1486132420:
    string "%s:%d expect `]\'\n"

s1486132440:
    string "%s:%d expect `(\'\n"

s1486132460:
    string "%s:%d expect register\n"

s1486132484:
    string "%s:%d expect `)\'\n"

s1486132504:
    string "%s:%d expect address\n"

s1486132528:
    string "%s:%d expect imm\n"

s1486132548:
    string "%s:%d expect label\n"

s1486132568:
    string "%s:%d expect `]\'\n"

s1486132588:
    string "%s:%d expect string\n"

s1486132612:
    string "%s:%id iduplicate label `%.*s\'\n"

s1486132644:
    string "%s:%d bad label\n"

s1486132664:
    string "%s:%d bad global directive `%.*s\'\n"

s1486132700:
    string "%s:%d bad extern directive `%.*s\'\n"

s1486132736:
    string "%s:%d unsupported directive `%.*s\'\n"

s1486132772:
    string "%s:%d bad inst\n"

s1486132788:
    string "%s:%d refer to unresolved symbol\n"

s1486132824:
    string "unresolved label: `%.*s\'\n"

s1486132852:
    string "%s:%d imm/label too large (%d)\n"

s1486132884:
    string "%s:%d refer to unresolved symbol\n"

s1486132920:
    string "unresolved label: `%.*s\'\n"

s1486132948:
    string "%s:%d imm/label too large (%d)\n"

s1486132980:
    string "unresolved label: `%.*s\'\n"

s1486133008:
    string "%s:%d imm/label too large (%d)\n"

s1486133040:
    string "unresolved label: `%.*s\'\n"

s1486133068:
    string "unresolved label: `%.*s\'\n"

s1486133096:
    string "%s:%d bad global directive `%.*s\'\n"

s1486133132:
    string "open returned %d\n"

