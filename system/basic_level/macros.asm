#define move(dest, src)         \
    addi dest, src, 0

#define li(dest, imm)           \
    addi dest, $zero, imm

#define lli(dest, upper, lower) \
    lui dest, upper             __CR__\
    ori dest, dest, lower

#define push_reg(reg)           \
    addi    $sp,    $sp,    -4  __CR__\
    sw      reg,    0($sp)

#define pop_reg(reg)            \
    lw      reg,    0($sp)      __CR__\
    addi    $sp,    $sp,    4

#define la(dest, label)         \
    addi    dest,   $gp,    label

