_env_ref:

_cwd:
    dd 0
.global _cwd

_path:
    dd 0
.global _path

_last_cmd:
    dd 0
.global _last_cmd

_env_error:
    dd 0
.global _env_error

env_init:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _env_init_start
_env_init_ref_pos:
_env_init_module_ref:
    dd   _env_ref

_env_init_start:
## line 10
    lw   $v0, _env_init_module_ref[_env_init_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    addi $t0, $v0, 0
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
## line 11
    lw   $v0, _env_init_module_ref[_env_init_ref_pos]($ra)
    addi $v0, $v0, _path[_env_ref]
    addi $t0, $v0, 0
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
## line 12
    lw   $v0, _env_init_module_ref[_env_init_ref_pos]($ra)
    addi $v0, $v0, _last_cmd[_env_ref]
    addi $t0, $v0, 0
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
## line 13
    lw   $v0, _env_init_module_ref[_env_init_ref_pos]($ra)
    addi $v0, $v0, _env_error[_env_ref]
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sw   $v0, 0($t0)
## line 15
    lw   $v0, _env_init_module_ref[_env_init_ref_pos]($ra)
    addi $v0, $v0, _last_cmd[_env_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 16
    lw   $v0, _env_init_module_ref[_env_init_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $ra, s1486131208[_env_init_ref_pos]
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 17
    lw   $v0, _env_init_module_ref[_env_init_ref_pos]($ra)
    addi $v0, $v0, _path[_env_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $ra, s1486131212[_env_init_ref_pos]
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

_env_init_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global env_init
s1486131208:
    string "/"

s1486131212:
    string "/sys/"


get_env_error:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _get_env_error_start
_get_env_error_ref_pos:
_get_env_error_module_ref:
    dd   _env_ref

_get_env_error_start:
## line 22
    lw   $v0, _get_env_error_module_ref[_get_env_error_ref_pos]($ra)
    addi $v0, $v0, _env_error[_env_ref]
    lw   $v0, 0($v0)

_get_env_error_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global get_env_error

get_path:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _get_path_start
_get_path_ref_pos:
_get_path_module_ref:
    dd   _env_ref

_get_path_start:
## line 26
    lw   $v0, _get_path_module_ref[_get_path_ref_pos]($ra)
    addi $v0, $v0, _path[_env_ref]
    lw   $v0, 0($v0)

_get_path_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global get_path

get_cwd:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _get_cwd_start
_get_cwd_ref_pos:
_get_cwd_module_ref:
    dd   _env_ref

_get_cwd_start:
## line 30
    lw   $v0, _get_cwd_module_ref[_get_cwd_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    lw   $v0, 0($v0)

_get_cwd_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global get_cwd

get_cmd:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _get_cmd_start
_get_cmd_ref_pos:
_get_cmd_module_ref:
    dd   _env_ref

_get_cmd_start:
## line 34
    lw   $v0, _get_cmd_module_ref[_get_cmd_ref_pos]($ra)
    addi $v0, $v0, _last_cmd[_env_ref]
    lw   $v0, 0($v0)

_get_cmd_end:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global get_cmd

cwd_verify:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _cwd_verify_start
_cwd_verify_ref_pos:
_cwd_verify_module_ref:
    dd   _env_ref

_cwd_verify_start:
    addi $sp, $sp, -4
## line 41
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  strlen
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    addi $v0, $zero, 256
    slt  $v0, $t0, $v0
    addi $v0, $v0, -1
    beq  $v0, $zero, _cwd_verify_1459913216
## line 41
    addi $v0, $zero, -1
    j    _cwd_verify_end
_cwd_verify_1459913216:
## line 42
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_open_file
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 43
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _cwd_verify_1459913336
## line 44
    addi $v0, $zero, -2
    j    _cwd_verify_end
_cwd_verify_1459913336:
## line 46
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_is_dir
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _cwd_verify_1459913456
## line 47
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_close_file
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 48
    addi $v0, $zero, -3
    j    _cwd_verify_end
_cwd_verify_1459913456:
## line 50
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_close_file
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 51
    addi $v0, $zero, 0

_cwd_verify_end:
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global cwd_verify

resolve_relative_path:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _resolve_relative_path_start
_resolve_relative_path_ref_pos:
_resolve_relative_path_module_ref:
    dd   _env_ref

_resolve_relative_path_start:
    addi $sp, $sp, -12
## line 61
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _resolve_relative_path_1459913592
## line 61
    j    _resolve_relative_path_end
_resolve_relative_path_1459913592:
## line 62
    lw   $v0, 12($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $zero, 47
    bne  $v0, $t0, _resolve_relative_path_1459913764
## line 63
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    addi $t0, $v0, 0
    addi $v0, $zero, 47
    sb   $v0, 0($t0)
## line 64
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 1
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
_resolve_relative_path_1459913764:
## line 67
    addi $t0, $fp, -4
    lw   $v0, 12($fp)
    sw   $v0, 0($t0)
## line 68
_resolve_relative_path_1459913812:
    lw   $v0, -4($fp)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _resolve_relative_path_1459915272
## line 69
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  strlen
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 70
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    add  $v0, $t0, $v0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    beq  $v0, $zero, _resolve_relative_path_1459914104
## line 71
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 47
    sb   $v0, 0($t0)
## line 72
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
_resolve_relative_path_1459914104:
## line 75
    addi $t0, $fp, -8
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
## line 76
_resolve_relative_path_1459914152:
    lw   $v0, -8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    beq  $v0, $zero, _resolve_relative_path_1459914224
    and  $v0, $t0, $v0
    lw   $v0, -8($fp)
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    addi $t0, $v0, 0
_resolve_relative_path_1459914224:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _resolve_relative_path_1459914292
## line 76
    addi $t0, $fp, -8
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _resolve_relative_path_1459914152
_resolve_relative_path_1459914292:
## line 77
    lw   $v0, -8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    bne  $v0, $t0, _resolve_relative_path_1459914352
    beq  $zero, $zero, _resolve_relative_path_1459915156
_resolve_relative_path_1459914352:
## line 78
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $ra, s1486131220[_resolve_relative_path_ref_pos]
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
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
    bne  $v0, $t0, _resolve_relative_path_1459914472
    beq  $zero, $zero, _resolve_relative_path_1459915152
_resolve_relative_path_1459914472:
## line 79
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    addi $v0, $ra, s1486131224[_resolve_relative_path_ref_pos]
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
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
    bne  $v0, $t0, _resolve_relative_path_1459914984
## line 80
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  strlen
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 81
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    addi $v0, $zero, 1
    slt  $v0, $v0, $t0
    beq  $v0, $zero, _resolve_relative_path_1459914972
## line 82
    addi $t0, $fp, -12
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, -2
    sw   $v0, 0($t0)
## line 83
_resolve_relative_path_1459914740:
    lw   $v0, -12($fp)
    addi $t0, $v0, 0
    beq  $v0, $zero, _resolve_relative_path_1459914828
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    add  $v0, $t0, $v0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    addi $t0, $v0, 0
_resolve_relative_path_1459914828:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _resolve_relative_path_1459914896
## line 83
    addi $t0, $fp, -12
    lw   $v0, 0($t0)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    sw   $v0, 0($t0)
    beq  $zero, $zero, _resolve_relative_path_1459914740
_resolve_relative_path_1459914896:
## line 84
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
_resolve_relative_path_1459914972:
    beq  $zero, $zero, _resolve_relative_path_1459915148
_resolve_relative_path_1459914984:
## line 88
    addi $t0, $fp, -12
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  strlen
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 89
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    lw   $v0, -8($fp)
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
    jal  strncpy
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
_resolve_relative_path_1459915148:
_resolve_relative_path_1459915152:
_resolve_relative_path_1459915156:
## line 91
    addi $t0, $fp, -4
    lw   $v0, -8($fp)
    lb   $v0, 0($v0)
    beq  $v0, $zero, _resolve_relative_path_1459915240
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    beq  $zero, $zero, _resolve_relative_path_1459915256
_resolve_relative_path_1459915240:
    lw   $v0, -8($fp)
_resolve_relative_path_1459915256:
    sw   $v0, 0($t0)
    beq  $zero, $zero, _resolve_relative_path_1459913812
_resolve_relative_path_1459915272:

_resolve_relative_path_end:
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global resolve_relative_path
s1486131220:
    string "."

s1486131224:
    string ".."


change_dir:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _change_dir_start
_change_dir_ref_pos:
_change_dir_module_ref:
    dd   _env_ref

_change_dir_start:
    addi $sp, $sp, -8
## line 101
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
## line 102
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, _change_dir_module_ref[_change_dir_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 103
    lw   $v0, -4($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  resolve_relative_path
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 105
    lw   $v0, _change_dir_module_ref[_change_dir_ref_pos]($ra)
    addi $v0, $v0, _env_error[_env_ref]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  cwd_verify
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    bne  $v0, $t0, _change_dir_1459915852
## line 106
    lw   $v0, _change_dir_module_ref[_change_dir_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
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
## line 107
    lw   $v0, _change_dir_module_ref[_change_dir_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    sw   $v0, 0($t0)
## line 108
    addi $t0, $fp, -8
    lw   $v0, _change_dir_module_ref[_change_dir_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  strlen
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 109
    lw   $v0, _change_dir_module_ref[_change_dir_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, -1
    add  $v0, $t0, $v0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    beq  $v0, $zero, _change_dir_1459915840
## line 110
    lw   $v0, _change_dir_module_ref[_change_dir_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 47
    sb   $v0, 0($t0)
## line 111
    lw   $v0, _change_dir_module_ref[_change_dir_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, -8($fp)
    addi $t1, $v0, 0
    addi $v0, $t1, 1
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
_change_dir_1459915840:
    beq  $zero, $zero, _change_dir_1459915892
_change_dir_1459915852:
## line 115
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
_change_dir_1459915892:
## line 117
    lw   $v0, _change_dir_module_ref[_change_dir_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    lw   $v0, 0($v0)

_change_dir_end:
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global change_dir

system:
    addi $sp, $sp, -4
    sw   $fp, 0($sp)
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $fp, $sp, 0
    jal  _system_start
_system_ref_pos:
_system_module_ref:
    dd   _env_ref

_system_start:
    addi $sp, $sp, -24
## line 130
    lw   $v0, _system_module_ref[_system_ref_pos]($ra)
    addi $v0, $v0, _last_cmd[_env_ref]
    lw   $v0, 0($v0)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 131
    addi $t0, $fp, -20
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
## line 132
    addi $t0, $fp, -4
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $t2, $zero, 32
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -12
    sw   $t0, 8($sp)
    sw   $t2, 4($sp)
    sw   $t1, 0($sp)
    jal  strchr
    lw   $t0, 8($sp)
    addi $sp, $sp, 12
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t1, $v0, 0
    lw   $v0, 8($fp)
    sub  $v0, $t1, $v0
    sw   $v0, 0($t0)
## line 133
    addi $t0, $fp, -24
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    lw   $v0, -4($fp)
    add  $v0, $t1, $v0
    lb   $v0, 0($v0)
    sb   $v0, 0($t0)
## line 134
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    sb   $v0, 0($t0)
## line 137
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    lw   $v0, _system_module_ref[_system_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 138
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  resolve_relative_path
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 140
    addi $t0, $fp, -16
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_open_file
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 141
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    beq  $v0, $zero, _system_1459916460
    and  $v0, $t0, $v0
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_is_dir
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_system_1459916460:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _system_1459916684
## line 142
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lb   $v0, -24($fp)
    sb   $v0, 0($t0)
## line 143
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_close_file
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 144
    addi $t0, $fp, -8
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  exec
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 145
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
## line 146
    lw   $v0, -8($fp)
    j    _system_end
_system_1459916684:
## line 150
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    lw   $v0, _system_module_ref[_system_ref_pos]($ra)
    addi $v0, $v0, _cwd[_env_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 151
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  resolve_relative_path
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 152
    addi $t0, $fp, -12
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  strlen
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 153
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $ra, s1486131228[_system_ref_pos]
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 155
    addi $t0, $fp, -16
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_open_file
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 156
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    beq  $v0, $zero, _system_1459917048
    and  $v0, $t0, $v0
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_is_dir
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_system_1459917048:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _system_1459917272
## line 157
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lb   $v0, -24($fp)
    sb   $v0, 0($t0)
## line 158
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_close_file
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 159
    addi $t0, $fp, -8
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  exec
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 160
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
## line 161
    lw   $v0, -8($fp)
    j    _system_end
_system_1459917272:
## line 164
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -46
    addi $t0, $v0, 0
    beq  $v0, $zero, _system_1459917400
    and  $v0, $t0, $v0
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    addi $v0, $t0, 0
    lb   $v0, 0($v0)
    addi $t0, $v0, 0
    addi $v0, $t0, -47
    addi $t0, $v0, 0
_system_1459917400:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _system_1459918472
## line 166
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    lw   $v0, _system_module_ref[_system_ref_pos]($ra)
    addi $v0, $v0, _path[_env_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 167
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  resolve_relative_path
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 169
    addi $t0, $fp, -16
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_open_file
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 170
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    beq  $v0, $zero, _system_1459917656
    and  $v0, $t0, $v0
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_is_dir
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_system_1459917656:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _system_1459917880
## line 171
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lb   $v0, -24($fp)
    sb   $v0, 0($t0)
## line 172
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_close_file
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 173
    addi $t0, $fp, -8
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  exec
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 174
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
## line 175
    lw   $v0, -8($fp)
    j    _system_end
_system_1459917880:
## line 179
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    lw   $v0, _system_module_ref[_system_ref_pos]($ra)
    addi $v0, $v0, _path[_env_ref]
    lw   $v0, 0($v0)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 180
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    lw   $v0, 8($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  resolve_relative_path
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 181
    addi $t0, $fp, -12
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  strlen
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 182
    lw   $v0, -20($fp)
    addi $t0, $v0, 0
    lw   $v0, -12($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    addi $v0, $ra, s1486131236[_system_ref_pos]
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t1, 4($sp)
    sw   $t0, 0($sp)
    jal  strcpy
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 184
    addi $t0, $fp, -16
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  fat16_open_file
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 185
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    beq  $v0, $zero, _system_1459918244
    and  $v0, $t0, $v0
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_file_is_dir
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    addi $t0, $v0, 0
    addi $v0, $zero, 0
    beq  $v0, $t0, 2
    addi $v0, $zero, 0
    beq  $zero, $zero, 1
    addi $v0, $zero, 1
    addi $t0, $v0, 0
_system_1459918244:
    and  $v0, $t0, $v0
    beq  $v0, $zero, _system_1459918468
## line 186
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lb   $v0, -24($fp)
    sb   $v0, 0($t0)
## line 187
    lw   $v0, -16($fp)
    addi $t0, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -4
    sw   $t0, 0($sp)
    jal  fat16_close_file
    addi $sp, $sp, 4
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
## line 188
    addi $t0, $fp, -8
    lw   $v0, -20($fp)
    addi $t1, $v0, 0
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    addi $sp, $sp, -8
    sw   $t0, 4($sp)
    sw   $t1, 0($sp)
    jal  exec
    lw   $t0, 4($sp)
    addi $sp, $sp, 8
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    sw   $v0, 0($t0)
## line 189
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
## line 190
    lw   $v0, -8($fp)
    j    _system_end
_system_1459918468:
_system_1459918472:
## line 194
    lw   $v0, 8($fp)
    addi $t0, $v0, 0
    lw   $v0, -4($fp)
    add  $v0, $t0, $v0
    addi $t0, $v0, 0
    lb   $v0, -24($fp)
    sb   $v0, 0($t0)
## line 195
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
## line 196
    addi $v0, $zero, -1024

_system_end:
    addi $sp, $sp, 24
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    lw   $fp, 0($sp)
    addi $sp, $sp, 4
    jr   $ra

.global system
s1486131228:
    string ".mrl"

s1486131236:
    string ".mrl"

