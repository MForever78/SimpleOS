/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/project/ISE/project/SimpleOS/tests/top_test.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {15, 0};
static int ng4[] = {14, 0};
static unsigned int ng5[] = {0U, 4294967295U, 0U, 32767U};
static unsigned int ng6[] = {524288U, 0U};



static void Initial_99_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    int t11;

LAB0:    t1 = (t0 + 7328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);

LAB4:    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 7136);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5928);
    t5 = (t0 + 5928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5928);
    t5 = (t0 + 5928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB8;

LAB9:    goto LAB1;

LAB6:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB7;

LAB8:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB9;

}

static void Always_116_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 7576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(116, ng0);

LAB4:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 7384);
    xsi_process_wait(t2, 4000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(117, ng0);
    t4 = (t0 + 5288);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 5288);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

}

static void Cont_124_2(char *t0)
{
    char t3[16];
    char t4[8];
    char t6[8];
    char t38[16];
    char t39[8];
    char t42[8];
    char t60[16];
    char t67[8];
    char t84[16];
    char t91[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    char *t59;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    char *t83;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t92;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    char *t102;
    char *t103;
    char *t104;
    char *t105;
    char *t106;

LAB0:    t1 = (t0 + 7824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 2328U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t34 = *((unsigned int *)t4);
    t35 = (~(t34));
    t36 = *((unsigned int *)t29);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t38, 16);

LAB20:    t101 = (t0 + 8488);
    t102 = (t101 + 56U);
    t103 = *((char **)t102);
    t104 = (t103 + 56U);
    t105 = *((char **)t104);
    xsi_vlog_bit_copy(t105, 0, t3, 0, 48);
    xsi_driver_vfirst_trans(t101, 0, 47);
    t106 = (t0 + 8392);
    *((int *)t106) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = ((char*)((ng5)));
    goto LAB13;

LAB14:    t40 = (t0 + 1848U);
    t41 = *((char **)t40);
    t40 = ((char*)((ng6)));
    memset(t42, 0, 8);
    t43 = (t41 + 4);
    if (*((unsigned int *)t43) != 0)
        goto LAB22;

LAB21:    t44 = (t40 + 4);
    if (*((unsigned int *)t44) != 0)
        goto LAB22;

LAB25:    if (*((unsigned int *)t41) < *((unsigned int *)t40))
        goto LAB23;

LAB24:    memset(t39, 0, 8);
    t46 = (t42 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (~(t47));
    t49 = *((unsigned int *)t42);
    t50 = (t49 & t48);
    t51 = (t50 & 1U);
    if (t51 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t46) != 0)
        goto LAB28;

LAB29:    t53 = (t39 + 4);
    t54 = *((unsigned int *)t39);
    t55 = *((unsigned int *)t53);
    t56 = (t54 || t55);
    if (t56 > 0)
        goto LAB30;

LAB31:    t77 = *((unsigned int *)t39);
    t78 = (~(t77));
    t79 = *((unsigned int *)t53);
    t80 = (t78 || t79);
    if (t80 > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t53) > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t39) > 0)
        goto LAB36;

LAB37:    memcpy(t38, t84, 16);

LAB38:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 48, t33, 48, t38, 48);
    goto LAB20;

LAB18:    memcpy(t3, t33, 16);
    goto LAB20;

LAB22:    t45 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB24;

LAB23:    *((unsigned int *)t42) = 1;
    goto LAB24;

LAB26:    *((unsigned int *)t39) = 1;
    goto LAB29;

LAB28:    t52 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB29;

LAB30:    t57 = (t0 + 6248);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    t61 = (t0 + 6248);
    t62 = (t61 + 72U);
    t63 = *((char **)t62);
    t64 = (t0 + 6248);
    t65 = (t64 + 64U);
    t66 = *((char **)t65);
    t68 = (t0 + 1848U);
    t69 = *((char **)t68);
    memset(t67, 0, 8);
    t68 = (t67 + 4);
    t70 = (t69 + 4);
    t71 = *((unsigned int *)t69);
    t72 = (t71 >> 0);
    *((unsigned int *)t67) = t72;
    t73 = *((unsigned int *)t70);
    t74 = (t73 >> 0);
    *((unsigned int *)t68) = t74;
    t75 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t75 & 255U);
    t76 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t76 & 255U);
    xsi_vlog_generic_get_array_select_value(t60, 48, t59, t63, t66, 2, 1, t67, 8, 2);
    goto LAB31;

LAB32:    t81 = (t0 + 6408);
    t82 = (t81 + 56U);
    t83 = *((char **)t82);
    t85 = (t0 + 6408);
    t86 = (t85 + 72U);
    t87 = *((char **)t86);
    t88 = (t0 + 6408);
    t89 = (t88 + 64U);
    t90 = *((char **)t89);
    t92 = (t0 + 1848U);
    t93 = *((char **)t92);
    memset(t91, 0, 8);
    t92 = (t91 + 4);
    t94 = (t93 + 4);
    t95 = *((unsigned int *)t93);
    t96 = (t95 >> 0);
    *((unsigned int *)t91) = t96;
    t97 = *((unsigned int *)t94);
    t98 = (t97 >> 0);
    *((unsigned int *)t92) = t98;
    t99 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t99 & 255U);
    t100 = *((unsigned int *)t92);
    *((unsigned int *)t92) = (t100 & 255U);
    xsi_vlog_generic_get_array_select_value(t84, 48, t83, t87, t90, 2, 1, t91, 8, 2);
    goto LAB33;

LAB34:    xsi_vlog_unsigned_bit_combine(t38, 48, t60, 48, t84, 48);
    goto LAB38;

LAB36:    memcpy(t38, t60, 16);
    goto LAB38;

}

static void Always_126_3(char *t0)
{
    char t6[8];
    char t30[8];
    char t40[16];
    char t43[8];
    char t44[8];
    char t51[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t41;
    char *t42;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t62;
    int t63;
    char *t64;
    unsigned int t65;
    int t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    int t70;
    int t71;

LAB0:    t1 = (t0 + 8072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 8408);
    *((int *)t2) = 1;
    t3 = (t0 + 8104);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(126, ng0);

LAB5:    xsi_set_current_line(127, ng0);
    t4 = (t0 + 2328U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(127, ng0);

LAB13:    xsi_set_current_line(128, ng0);
    t28 = (t0 + 1848U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng6)));
    memset(t30, 0, 8);
    t31 = (t29 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB15;

LAB14:    t32 = (t28 + 4);
    if (*((unsigned int *)t32) != 0)
        goto LAB15;

LAB18:    if (*((unsigned int *)t29) < *((unsigned int *)t28))
        goto LAB16;

LAB17:    t34 = (t30 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t30);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 4888U);
    t3 = *((char **)t2);
    xsi_vlog_get_part_select_value(t40, 48, t3, 47, 0);
    t2 = (t0 + 6408);
    t4 = (t0 + 6408);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 6408);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = (t0 + 1848U);
    t29 = *((char **)t28);
    memset(t43, 0, 8);
    t28 = (t43 + 4);
    t31 = (t29 + 4);
    t9 = *((unsigned int *)t29);
    t10 = (t9 >> 0);
    *((unsigned int *)t43) = t10;
    t11 = *((unsigned int *)t31);
    t12 = (t11 >> 0);
    *((unsigned int *)t28) = t12;
    t13 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t13 & 127U);
    t14 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t14 & 127U);
    xsi_vlog_generic_convert_array_indices(t6, t30, t7, t22, 2, 1, t43, 7, 2);
    t32 = (t6 + 4);
    t15 = *((unsigned int *)t32);
    t63 = (!(t15));
    t33 = (t30 + 4);
    t16 = *((unsigned int *)t33);
    t66 = (!(t16));
    t67 = (t63 && t66);
    if (t67 == 1)
        goto LAB24;

LAB25:
LAB21:    goto LAB12;

LAB15:    t33 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB17;

LAB16:    *((unsigned int *)t30) = 1;
    goto LAB17;

LAB19:    xsi_set_current_line(128, ng0);
    t41 = (t0 + 4888U);
    t42 = *((char **)t41);
    xsi_vlog_get_part_select_value(t40, 48, t42, 47, 0);
    t41 = (t0 + 6248);
    t45 = (t0 + 6248);
    t46 = (t45 + 72U);
    t47 = *((char **)t46);
    t48 = (t0 + 6248);
    t49 = (t48 + 64U);
    t50 = *((char **)t49);
    t52 = (t0 + 1848U);
    t53 = *((char **)t52);
    memset(t51, 0, 8);
    t52 = (t51 + 4);
    t54 = (t53 + 4);
    t55 = *((unsigned int *)t53);
    t56 = (t55 >> 0);
    *((unsigned int *)t51) = t56;
    t57 = *((unsigned int *)t54);
    t58 = (t57 >> 0);
    *((unsigned int *)t52) = t58;
    t59 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t59 & 127U);
    t60 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t60 & 127U);
    xsi_vlog_generic_convert_array_indices(t43, t44, t47, t50, 2, 1, t51, 7, 2);
    t61 = (t43 + 4);
    t62 = *((unsigned int *)t61);
    t63 = (!(t62));
    t64 = (t44 + 4);
    t65 = *((unsigned int *)t64);
    t66 = (!(t65));
    t67 = (t63 && t66);
    if (t67 == 1)
        goto LAB22;

LAB23:    goto LAB21;

LAB22:    t68 = *((unsigned int *)t43);
    t69 = *((unsigned int *)t44);
    t70 = (t68 - t69);
    t71 = (t70 + 1);
    xsi_vlogvar_assign_value(t41, t40, 0, *((unsigned int *)t44), t71);
    goto LAB23;

LAB24:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t30);
    t70 = (t17 - t18);
    t71 = (t70 + 1);
    xsi_vlogvar_assign_value(t2, t40, 0, *((unsigned int *)t30), t71);
    goto LAB25;

}


extern void work_m_00000000000386179534_3512928209_init()
{
	static char *pe[] = {(void *)Initial_99_0,(void *)Always_116_1,(void *)Cont_124_2,(void *)Always_126_3};
	xsi_register_didat("work_m_00000000000386179534_3512928209", "isim/test_top_isim_beh.exe.sim/work/m_00000000000386179534_3512928209.didat");
	xsi_register_executes(pe);
}
