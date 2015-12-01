#include "macros.asm"

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
