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
static const char *ng0 = "D:/project/ISE/project/SimpleOS/function.vh";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static const char *ng3 = "D:/project/ISE/project/SimpleOS/src/uart.v";
static int ng4[] = {7, 0};
static unsigned int ng5[] = {0U, 0U};



static int sp_GET_WIDTH(char *t1, char *t2)
{
    char t7[8];
    char t18[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;

LAB0:    t0 = 1;
    xsi_set_current_line(3, ng0);

LAB2:    xsi_set_current_line(4, ng0);
    xsi_set_current_line(4, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t1 + 8312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);

LAB3:    t3 = (t1 + 8472);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_greater(t7, 32, t5, 32, t6, 32);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB4;

LAB5:    t0 = 0;

LAB1:    return t0;
LAB4:    xsi_set_current_line(5, ng0);
    t14 = (t1 + 8472);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng2)));
    memset(t18, 0, 8);
    xsi_vlog_signed_rshift(t18, 32, t16, 32, t17, 32);
    t19 = (t1 + 8472);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 32);
    xsi_set_current_line(4, ng0);
    t3 = (t1 + 8312);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng2)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = (t1 + 8312);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB3;

}

static void Always_40_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 9392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng3);
    t2 = (t0 + 13184);
    *((int *)t2) = 1;
    t3 = (t0 + 9424);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng3);

LAB5:    xsi_set_current_line(41, ng3);
    t4 = (t0 + 3432U);
    t5 = *((char **)t4);
    t4 = (t0 + 6072);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(42, ng3);
    t2 = (t0 + 6072);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6232);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Always_46_1(char *t0)
{
    char t13[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 9640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng3);
    t2 = (t0 + 13200);
    *((int *)t2) = 1;
    t3 = (t0 + 9672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng3);

LAB5:    xsi_set_current_line(47, ng3);
    t4 = (t0 + 3272U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(49, ng3);

LAB10:    xsi_set_current_line(50, ng3);
    t2 = (t0 + 5752);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 744);
    t11 = *((char **)t5);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_minus(t13, 32, t11, 32, t5, 32);
    memset(t14, 0, 8);
    t12 = (t4 + 4);
    t15 = (t13 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t13);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t12);
    t10 = *((unsigned int *)t15);
    t16 = (t9 ^ t10);
    t17 = (t8 | t16);
    t18 = *((unsigned int *)t12);
    t19 = *((unsigned int *)t15);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB14;

LAB11:    if (t20 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t14) = 1;

LAB14:    t24 = (t14 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t14);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(52, ng3);

LAB19:    xsi_set_current_line(53, ng3);
    t2 = (t0 + 5752);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 7, t5, 32);
    t11 = (t0 + 5752);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 7, 0LL);

LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(47, ng3);

LAB9:    xsi_set_current_line(48, ng3);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 5752);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 7, 0LL);
    goto LAB8;

LAB13:    t23 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(50, ng3);

LAB18:    xsi_set_current_line(51, ng3);
    t30 = ((char*)((ng1)));
    t31 = (t0 + 5752);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 7, 0LL);
    goto LAB17;

}

static void NetDecl_58_2(char *t0)
{
    char t7[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t9;
    char *t10;
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
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;

LAB0:    t1 = (t0 + 9888U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng3);
    t2 = (t0 + 5752);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 744);
    t6 = *((char **)t5);
    t5 = ((char*)((ng2)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_minus(t7, 32, t6, 32, t5, 32);
    memset(t8, 0, 8);
    t9 = (t4 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB7;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB7:    t24 = (t0 + 13488);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memset(t28, 0, 8);
    t29 = 1U;
    t30 = t29;
    t31 = (t8 + 4);
    t32 = *((unsigned int *)t8);
    t29 = (t29 & t32);
    t33 = *((unsigned int *)t31);
    t30 = (t30 & t33);
    t34 = (t28 + 4);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t35 | t29);
    t36 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t36 | t30);
    xsi_driver_vfirst_trans(t24, 0, 0U);
    t37 = (t0 + 13216);
    *((int *)t37) = 1;

LAB1:    return;
LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

}

static void Always_62_3(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
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
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 10136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng3);
    t2 = (t0 + 13232);
    *((int *)t2) = 1;
    t3 = (t0 + 10168);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(62, ng3);

LAB5:    xsi_set_current_line(63, ng3);
    t4 = (t0 + 6712);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 1016);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    t7 = (t6 + 4);
    t10 = (t8 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t7);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t9) = 1;

LAB9:    t24 = (t9 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t9);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(65, ng3);

LAB13:    xsi_set_current_line(66, ng3);
    t2 = (t0 + 4072U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB14;

LAB15:
LAB16:
LAB12:    goto LAB2;

LAB8:    t23 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(64, ng3);
    t30 = ((char*)((ng4)));
    t31 = (t0 + 6392);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 4, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(67, ng3);
    t4 = (t0 + 6392);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t6, 4, t7, 32);
    t8 = (t0 + 6392);
    xsi_vlogvar_wait_assign_value(t8, t9, 0, 0, 4, 0LL);
    goto LAB16;

}

static void NetDecl_71_4(char *t0)
{
    char t6[8];
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
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 10384U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng3);
    t2 = (t0 + 6392);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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

LAB7:    t22 = (t0 + 13552);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 1U;
    t28 = t27;
    t29 = (t6 + 4);
    t30 = *((unsigned int *)t6);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t22, 0, 0U);
    t35 = (t0 + 13248);
    *((int *)t35) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

}

static void Always_79_5(char *t0)
{
    char t11[8];
    char t27[8];
    char t41[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    int t72;
    int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;

LAB0:    t1 = (t0 + 10632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng3);
    t2 = (t0 + 13264);
    *((int *)t2) = 1;
    t3 = (t0 + 10664);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(79, ng3);

LAB5:    xsi_set_current_line(80, ng3);
    t4 = (t0 + 6712);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 6872);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 2);
    xsi_set_current_line(81, ng3);
    t2 = (t0 + 7032);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7192);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(82, ng3);
    t2 = (t0 + 6712);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB6:    t5 = (t0 + 1016);
    t6 = *((char **)t5);
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t6, 32);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 1152);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = (t0 + 1288);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 1424);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(83, ng3);

LAB16:    xsi_set_current_line(84, ng3);
    t5 = (t0 + 6232);
    t7 = (t5 + 56U);
    t9 = *((char **)t7);
    t10 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t12 = (t9 + 4);
    t13 = (t10 + 4);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB20;

LAB17:    if (t23 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t11) = 1;

LAB20:    memset(t27, 0, 8);
    t28 = (t11 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (~(t29));
    t31 = *((unsigned int *)t11);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t28) != 0)
        goto LAB23;

LAB24:    t35 = (t27 + 4);
    t36 = *((unsigned int *)t27);
    t37 = *((unsigned int *)t35);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB25;

LAB26:    memcpy(t48, t27, 8);

LAB27:    t80 = (t48 + 4);
    t81 = *((unsigned int *)t80);
    t82 = (~(t81));
    t83 = *((unsigned int *)t48);
    t84 = (t83 & t82);
    t85 = (t84 != 0);
    if (t85 > 0)
        goto LAB35;

LAB36:
LAB37:    goto LAB15;

LAB9:    xsi_set_current_line(87, ng3);

LAB38:    xsi_set_current_line(88, ng3);
    t2 = (t0 + 6232);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t10);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB42;

LAB39:    if (t23 != 0)
        goto LAB41;

LAB40:    *((unsigned int *)t11) = 1;

LAB42:    t13 = (t11 + 4);
    t29 = *((unsigned int *)t13);
    t30 = (~(t29));
    t31 = *((unsigned int *)t11);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB43;

LAB44:    xsi_set_current_line(91, ng3);
    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t2 = (t0 + 6872);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 2);

LAB45:    goto LAB15;

LAB11:    xsi_set_current_line(93, ng3);

LAB46:    xsi_set_current_line(94, ng3);
    t2 = (t0 + 7032);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t10);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB50;

LAB47:    if (t23 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t11) = 1;

LAB50:    t13 = (t11 + 4);
    t29 = *((unsigned int *)t13);
    t30 = (~(t29));
    t31 = *((unsigned int *)t11);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(98, ng3);
    t2 = (t0 + 7032);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t5, 3, t6, 32);
    t7 = (t0 + 7192);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 3);

LAB53:    goto LAB15;

LAB13:    xsi_set_current_line(100, ng3);

LAB55:    xsi_set_current_line(101, ng3);
    t2 = (t0 + 1016);
    t5 = *((char **)t2);
    t2 = (t0 + 6872);
    xsi_vlogvar_assign_value(t2, t5, 0, 0, 2);
    goto LAB15;

LAB19:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t27) = 1;
    goto LAB24;

LAB23:    t34 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB24;

LAB25:    t39 = (t0 + 3752U);
    t40 = *((char **)t39);
    memset(t41, 0, 8);
    t39 = (t40 + 4);
    t42 = *((unsigned int *)t39);
    t43 = (~(t42));
    t44 = *((unsigned int *)t40);
    t45 = (t44 & t43);
    t46 = (t45 & 1U);
    if (t46 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t39) != 0)
        goto LAB30;

LAB31:    t49 = *((unsigned int *)t27);
    t50 = *((unsigned int *)t41);
    t51 = (t49 & t50);
    *((unsigned int *)t48) = t51;
    t52 = (t27 + 4);
    t53 = (t41 + 4);
    t54 = (t48 + 4);
    t55 = *((unsigned int *)t52);
    t56 = *((unsigned int *)t53);
    t57 = (t55 | t56);
    *((unsigned int *)t54) = t57;
    t58 = *((unsigned int *)t54);
    t59 = (t58 != 0);
    if (t59 == 1)
        goto LAB32;

LAB33:
LAB34:    goto LAB27;

LAB28:    *((unsigned int *)t41) = 1;
    goto LAB31;

LAB30:    t47 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB31;

LAB32:    t60 = *((unsigned int *)t48);
    t61 = *((unsigned int *)t54);
    *((unsigned int *)t48) = (t60 | t61);
    t62 = (t27 + 4);
    t63 = (t41 + 4);
    t64 = *((unsigned int *)t27);
    t65 = (~(t64));
    t66 = *((unsigned int *)t62);
    t67 = (~(t66));
    t68 = *((unsigned int *)t41);
    t69 = (~(t68));
    t70 = *((unsigned int *)t63);
    t71 = (~(t70));
    t72 = (t65 & t67);
    t73 = (t69 & t71);
    t74 = (~(t72));
    t75 = (~(t73));
    t76 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t76 & t74);
    t77 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t77 & t75);
    t78 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t78 & t74);
    t79 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t79 & t75);
    goto LAB34;

LAB35:    xsi_set_current_line(85, ng3);
    t86 = (t0 + 1152);
    t87 = *((char **)t86);
    t86 = (t0 + 6872);
    xsi_vlogvar_assign_value(t86, t87, 0, 0, 2);
    goto LAB37;

LAB41:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB42;

LAB43:    xsi_set_current_line(89, ng3);
    t26 = (t0 + 1288);
    t28 = *((char **)t26);
    t26 = (t0 + 6872);
    xsi_vlogvar_assign_value(t26, t28, 0, 0, 2);
    goto LAB45;

LAB49:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB50;

LAB51:    xsi_set_current_line(94, ng3);

LAB54:    xsi_set_current_line(95, ng3);
    t26 = ((char*)((ng1)));
    t28 = (t0 + 7192);
    xsi_vlogvar_assign_value(t28, t26, 0, 0, 3);
    xsi_set_current_line(96, ng3);
    t2 = (t0 + 1424);
    t3 = *((char **)t2);
    t2 = (t0 + 6872);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 2);
    goto LAB53;

}

static void Always_107_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 10880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(107, ng3);
    t2 = (t0 + 13280);
    *((int *)t2) = 1;
    t3 = (t0 + 10912);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(107, ng3);

LAB5:    xsi_set_current_line(108, ng3);
    t4 = (t0 + 3272U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(111, ng3);

LAB10:    xsi_set_current_line(112, ng3);
    t2 = (t0 + 4072U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:
LAB13:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(108, ng3);

LAB9:    xsi_set_current_line(109, ng3);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    xsi_set_current_line(110, ng3);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7032);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(113, ng3);
    t4 = (t0 + 6712);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);

LAB14:    t12 = (t0 + 1016);
    t13 = *((char **)t12);
    t14 = xsi_vlog_unsigned_case_compare(t11, 2, t13, 32);
    if (t14 == 1)
        goto LAB15;

LAB16:    t2 = (t0 + 1152);
    t3 = *((char **)t2);
    t14 = xsi_vlog_unsigned_case_compare(t11, 2, t3, 32);
    if (t14 == 1)
        goto LAB17;

LAB18:    t2 = (t0 + 1288);
    t3 = *((char **)t2);
    t14 = xsi_vlog_unsigned_case_compare(t11, 2, t3, 32);
    if (t14 == 1)
        goto LAB19;

LAB20:    t2 = (t0 + 1424);
    t3 = *((char **)t2);
    t14 = xsi_vlog_unsigned_case_compare(t11, 2, t3, 32);
    if (t14 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB13;

LAB15:    xsi_set_current_line(114, ng3);
    t12 = (t0 + 6872);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t17, t16, 0, 0, 2, 0LL);
    goto LAB23;

LAB17:    xsi_set_current_line(115, ng3);

LAB24:    xsi_set_current_line(116, ng3);
    t2 = (t0 + 4232U);
    t4 = *((char **)t2);
    t2 = (t4 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB25;

LAB26:
LAB27:    goto LAB23;

LAB19:    xsi_set_current_line(119, ng3);

LAB28:    xsi_set_current_line(120, ng3);
    t2 = (t0 + 4232U);
    t4 = *((char **)t2);
    t2 = (t4 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB29;

LAB30:
LAB31:    goto LAB23;

LAB21:    xsi_set_current_line(125, ng3);

LAB33:    xsi_set_current_line(126, ng3);
    t2 = (t0 + 4232U);
    t4 = *((char **)t2);
    t2 = (t4 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB34;

LAB35:
LAB36:    goto LAB23;

LAB25:    xsi_set_current_line(117, ng3);
    t5 = (t0 + 6872);
    t12 = (t5 + 56U);
    t13 = *((char **)t12);
    t15 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t15, t13, 0, 0, 2, 0LL);
    goto LAB27;

LAB29:    xsi_set_current_line(120, ng3);

LAB32:    xsi_set_current_line(121, ng3);
    t5 = (t0 + 6872);
    t12 = (t5 + 56U);
    t13 = *((char **)t12);
    t15 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t15, t13, 0, 0, 2, 0LL);
    xsi_set_current_line(122, ng3);
    t2 = (t0 + 7192);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7032);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    goto LAB31;

LAB34:    xsi_set_current_line(126, ng3);

LAB37:    xsi_set_current_line(127, ng3);
    t5 = (t0 + 6872);
    t12 = (t5 + 56U);
    t13 = *((char **)t12);
    t15 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t15, t13, 0, 0, 2, 0LL);
    goto LAB36;

}

static void Always_135_7(char *t0)
{
    char t15[8];
    char t47[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;

LAB0:    t1 = (t0 + 11128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(135, ng3);
    t2 = (t0 + 13296);
    *((int *)t2) = 1;
    t3 = (t0 + 11160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(135, ng3);

LAB5:    xsi_set_current_line(136, ng3);
    t4 = (t0 + 3272U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(139, ng3);

LAB10:    xsi_set_current_line(140, ng3);
    t2 = (t0 + 6712);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB11:    t5 = (t0 + 1288);
    t11 = *((char **)t5);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t11, 32);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = (t0 + 1424);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t13 == 1)
        goto LAB14;

LAB15:
LAB17:
LAB16:    xsi_set_current_line(150, ng3);

LAB31:    xsi_set_current_line(151, ng3);
    t2 = (t0 + 5592);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = (t0 + 5592);
    xsi_vlogvar_wait_assign_value(t11, t5, 0, 0, 8, 0LL);

LAB18:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(136, ng3);

LAB9:    xsi_set_current_line(137, ng3);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 5592);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    xsi_set_current_line(138, ng3);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(141, ng3);

LAB19:    xsi_set_current_line(142, ng3);
    t5 = (t0 + 4232U);
    t12 = *((char **)t5);
    t5 = (t0 + 4072U);
    t14 = *((char **)t5);
    t6 = *((unsigned int *)t12);
    t7 = *((unsigned int *)t14);
    t8 = (t6 & t7);
    *((unsigned int *)t15) = t8;
    t5 = (t12 + 4);
    t16 = (t14 + 4);
    t17 = (t15 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t16);
    t18 = (t9 | t10);
    *((unsigned int *)t17) = t18;
    t19 = *((unsigned int *)t17);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB20;

LAB21:
LAB22:    t41 = (t15 + 4);
    t42 = *((unsigned int *)t41);
    t43 = (~(t42));
    t44 = *((unsigned int *)t15);
    t45 = (t44 & t43);
    t46 = (t45 != 0);
    if (t46 > 0)
        goto LAB23;

LAB24:
LAB25:    goto LAB18;

LAB14:    xsi_set_current_line(145, ng3);

LAB26:    xsi_set_current_line(146, ng3);
    t2 = (t0 + 4232U);
    t5 = *((char **)t2);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB27;

LAB28:
LAB29:    goto LAB18;

LAB20:    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t17);
    *((unsigned int *)t15) = (t21 | t22);
    t23 = (t12 + 4);
    t24 = (t14 + 4);
    t25 = *((unsigned int *)t12);
    t26 = (~(t25));
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t14);
    t30 = (~(t29));
    t31 = *((unsigned int *)t24);
    t32 = (~(t31));
    t33 = (t26 & t28);
    t34 = (t30 & t32);
    t35 = (~(t33));
    t36 = (~(t34));
    t37 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t37 & t35);
    t38 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t38 & t36);
    t39 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t39 & t35);
    t40 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t40 & t36);
    goto LAB22;

LAB23:    xsi_set_current_line(143, ng3);
    t49 = (t0 + 6552);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    memset(t48, 0, 8);
    t52 = (t48 + 4);
    t53 = (t51 + 4);
    t54 = *((unsigned int *)t51);
    t55 = (t54 >> 1);
    *((unsigned int *)t48) = t55;
    t56 = *((unsigned int *)t53);
    t57 = (t56 >> 1);
    *((unsigned int *)t52) = t57;
    t58 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t58 & 127U);
    t59 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t59 & 127U);
    t60 = (t0 + 3432U);
    t61 = *((char **)t60);
    xsi_vlogtype_concat(t47, 8, 8, 2U, t61, 1, t48, 7);
    t60 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t60, t47, 0, 0, 8, 0LL);
    goto LAB25;

LAB27:    xsi_set_current_line(146, ng3);

LAB30:    xsi_set_current_line(147, ng3);
    t11 = (t0 + 6552);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t16 = (t0 + 5592);
    xsi_vlogvar_wait_assign_value(t16, t14, 0, 0, 8, 0LL);
    goto LAB29;

}

static void Always_158_8(char *t0)
{
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t15;
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
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;

LAB0:    t1 = (t0 + 11376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(158, ng3);
    t2 = (t0 + 13312);
    *((int *)t2) = 1;
    t3 = (t0 + 11408);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(158, ng3);

LAB5:    xsi_set_current_line(159, ng3);
    t4 = (t0 + 3272U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(162, ng3);

LAB10:    xsi_set_current_line(163, ng3);
    t2 = (t0 + 6712);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB11:    t5 = (t0 + 1016);
    t11 = *((char **)t5);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t11, 32);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = (t0 + 1424);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t13 == 1)
        goto LAB14;

LAB15:
LAB17:
LAB16:    xsi_set_current_line(174, ng3);

LAB27:    xsi_set_current_line(175, ng3);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4952);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(176, ng3);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5272);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB18:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(159, ng3);

LAB9:    xsi_set_current_line(160, ng3);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4952);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(161, ng3);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5272);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(164, ng3);

LAB19:    xsi_set_current_line(165, ng3);
    t5 = ((char*)((ng1)));
    t12 = (t0 + 4952);
    xsi_vlogvar_wait_assign_value(t12, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(166, ng3);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5272);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB18;

LAB14:    xsi_set_current_line(168, ng3);

LAB20:    xsi_set_current_line(169, ng3);
    t2 = (t0 + 4232U);
    t5 = *((char **)t2);
    t2 = (t0 + 4072U);
    t11 = *((char **)t2);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t11);
    t8 = (t6 & t7);
    *((unsigned int *)t14) = t8;
    t2 = (t5 + 4);
    t12 = (t11 + 4);
    t15 = (t14 + 4);
    t9 = *((unsigned int *)t2);
    t10 = *((unsigned int *)t12);
    t16 = (t9 | t10);
    *((unsigned int *)t15) = t16;
    t17 = *((unsigned int *)t15);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB21;

LAB22:
LAB23:    t39 = (t14 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t14);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(172, ng3);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5272);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB26:    goto LAB18;

LAB21:    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t11 + 4);
    t23 = *((unsigned int *)t5);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t35 & t33);
    t36 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t36 & t34);
    t37 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t37 & t33);
    t38 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t38 & t34);
    goto LAB23;

LAB24:    xsi_set_current_line(170, ng3);
    t45 = ((char*)((ng2)));
    t46 = (t0 + 5272);
    xsi_vlogvar_wait_assign_value(t46, t45, 0, 0, 1, 0LL);
    goto LAB26;

}

static void Always_184_9(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
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
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 11624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(184, ng3);
    t2 = (t0 + 13328);
    *((int *)t2) = 1;
    t3 = (t0 + 11656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(184, ng3);

LAB5:    xsi_set_current_line(185, ng3);
    t4 = (t0 + 7512);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 1560);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    t7 = (t6 + 4);
    t10 = (t8 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t7);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t9) = 1;

LAB9:    t24 = (t9 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t9);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(187, ng3);

LAB13:    xsi_set_current_line(188, ng3);
    t2 = (t0 + 4072U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB14;

LAB15:
LAB16:
LAB12:    goto LAB2;

LAB8:    t23 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(186, ng3);
    t30 = ((char*)((ng4)));
    t31 = (t0 + 7352);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 4, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(189, ng3);
    t4 = (t0 + 7352);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t6, 4, t7, 32);
    t8 = (t0 + 7352);
    xsi_vlogvar_wait_assign_value(t8, t9, 0, 0, 4, 0LL);
    goto LAB16;

}

static void NetDecl_193_10(char *t0)
{
    char t6[8];
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
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 11872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(193, ng3);
    t2 = (t0 + 7352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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

LAB7:    t22 = (t0 + 13616);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 1U;
    t28 = t27;
    t29 = (t6 + 4);
    t30 = *((unsigned int *)t6);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t22, 0, 0U);
    t35 = (t0 + 13344);
    *((int *)t35) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

}

static void Always_198_11(char *t0)
{
    char t10[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;

LAB0:    t1 = (t0 + 12120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(198, ng3);
    t2 = (t0 + 13360);
    *((int *)t2) = 1;
    t3 = (t0 + 12152);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(198, ng3);

LAB5:    xsi_set_current_line(199, ng3);
    t4 = (t0 + 7512);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 7672);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 3);
    xsi_set_current_line(200, ng3);
    t2 = (t0 + 7832);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7992);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    xsi_set_current_line(201, ng3);
    t2 = (t0 + 7512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB6:    t5 = (t0 + 1560);
    t6 = *((char **)t5);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t6, 32);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 1696);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = (t0 + 1832);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(202, ng3);

LAB16:    xsi_set_current_line(203, ng3);
    t5 = (t0 + 3592U);
    t7 = *((char **)t5);
    t5 = (t0 + 3752U);
    t9 = *((char **)t5);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t9);
    t13 = (t11 & t12);
    *((unsigned int *)t10) = t13;
    t5 = (t7 + 4);
    t14 = (t9 + 4);
    t15 = (t10 + 4);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t14);
    t18 = (t16 | t17);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t15);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB17;

LAB18:
LAB19:    t41 = (t10 + 4);
    t42 = *((unsigned int *)t41);
    t43 = (~(t42));
    t44 = *((unsigned int *)t10);
    t45 = (t44 & t43);
    t46 = (t45 != 0);
    if (t46 > 0)
        goto LAB20;

LAB21:
LAB22:    goto LAB15;

LAB9:    xsi_set_current_line(206, ng3);

LAB23:    xsi_set_current_line(207, ng3);
    t2 = (t0 + 1832);
    t5 = *((char **)t2);
    t2 = (t0 + 7672);
    xsi_vlogvar_assign_value(t2, t5, 0, 0, 3);
    goto LAB15;

LAB11:    xsi_set_current_line(209, ng3);

LAB24:    xsi_set_current_line(210, ng3);
    t2 = (t0 + 7832);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng4)));
    memset(t10, 0, 8);
    t9 = (t6 + 4);
    t14 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t16 = *((unsigned int *)t9);
    t17 = *((unsigned int *)t14);
    t18 = (t16 ^ t17);
    t19 = (t13 | t18);
    t20 = *((unsigned int *)t9);
    t21 = *((unsigned int *)t14);
    t22 = (t20 | t21);
    t25 = (~(t22));
    t26 = (t19 & t25);
    if (t26 != 0)
        goto LAB28;

LAB25:    if (t22 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t10) = 1;

LAB28:    t23 = (t10 + 4);
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t10);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(214, ng3);
    t2 = (t0 + 7832);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t5, 4, t6, 32);
    t7 = (t0 + 7992);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 4);

LAB31:    goto LAB15;

LAB13:    xsi_set_current_line(216, ng3);

LAB33:    xsi_set_current_line(217, ng3);
    t2 = (t0 + 1560);
    t5 = *((char **)t2);
    t2 = (t0 + 7672);
    xsi_vlogvar_assign_value(t2, t5, 0, 0, 3);
    goto LAB15;

LAB17:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t10) = (t21 | t22);
    t23 = (t7 + 4);
    t24 = (t9 + 4);
    t25 = *((unsigned int *)t7);
    t26 = (~(t25));
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (~(t29));
    t31 = *((unsigned int *)t24);
    t32 = (~(t31));
    t33 = (t26 & t28);
    t34 = (t30 & t32);
    t35 = (~(t33));
    t36 = (~(t34));
    t37 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t37 & t35);
    t38 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t38 & t36);
    t39 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t39 & t35);
    t40 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t40 & t36);
    goto LAB19;

LAB20:    xsi_set_current_line(204, ng3);
    t47 = (t0 + 1696);
    t48 = *((char **)t47);
    t47 = (t0 + 7672);
    xsi_vlogvar_assign_value(t47, t48, 0, 0, 3);
    goto LAB22;

LAB27:    t15 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(210, ng3);

LAB32:    xsi_set_current_line(211, ng3);
    t24 = ((char*)((ng1)));
    t41 = (t0 + 7992);
    xsi_vlogvar_assign_value(t41, t24, 0, 0, 4);
    xsi_set_current_line(212, ng3);
    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t2 = (t0 + 7672);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 3);
    goto LAB31;

}

static void Always_223_12(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 12368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(223, ng3);
    t2 = (t0 + 13376);
    *((int *)t2) = 1;
    t3 = (t0 + 12400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(223, ng3);

LAB5:    xsi_set_current_line(224, ng3);
    t4 = (t0 + 3272U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(227, ng3);

LAB10:    xsi_set_current_line(228, ng3);
    t2 = (t0 + 4072U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:
LAB13:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(224, ng3);

LAB9:    xsi_set_current_line(225, ng3);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 7512);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    xsi_set_current_line(226, ng3);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7832);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(229, ng3);
    t4 = (t0 + 7512);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);

LAB14:    t12 = (t0 + 1560);
    t13 = *((char **)t12);
    t14 = xsi_vlog_unsigned_case_compare(t11, 3, t13, 32);
    if (t14 == 1)
        goto LAB15;

LAB16:    t2 = (t0 + 1696);
    t3 = *((char **)t2);
    t14 = xsi_vlog_unsigned_case_compare(t11, 3, t3, 32);
    if (t14 == 1)
        goto LAB17;

LAB18:    t2 = (t0 + 1832);
    t3 = *((char **)t2);
    t14 = xsi_vlog_unsigned_case_compare(t11, 3, t3, 32);
    if (t14 == 1)
        goto LAB19;

LAB20:    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t14 = xsi_vlog_unsigned_case_compare(t11, 3, t3, 32);
    if (t14 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB13;

LAB15:    xsi_set_current_line(230, ng3);
    t12 = (t0 + 7672);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t0 + 7512);
    xsi_vlogvar_wait_assign_value(t17, t16, 0, 0, 3, 0LL);
    goto LAB23;

LAB17:    xsi_set_current_line(231, ng3);

LAB24:    xsi_set_current_line(232, ng3);
    t2 = (t0 + 4392U);
    t4 = *((char **)t2);
    t2 = (t4 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB25;

LAB26:
LAB27:    goto LAB23;

LAB19:    xsi_set_current_line(235, ng3);

LAB28:    xsi_set_current_line(236, ng3);
    t2 = (t0 + 4392U);
    t4 = *((char **)t2);
    t2 = (t4 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB29;

LAB30:
LAB31:    goto LAB23;

LAB21:    xsi_set_current_line(241, ng3);

LAB33:    xsi_set_current_line(242, ng3);
    t2 = (t0 + 4392U);
    t4 = *((char **)t2);
    t2 = (t4 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB34;

LAB35:
LAB36:    goto LAB23;

LAB25:    xsi_set_current_line(233, ng3);
    t5 = (t0 + 7672);
    t12 = (t5 + 56U);
    t13 = *((char **)t12);
    t15 = (t0 + 7512);
    xsi_vlogvar_wait_assign_value(t15, t13, 0, 0, 3, 0LL);
    goto LAB27;

LAB29:    xsi_set_current_line(236, ng3);

LAB32:    xsi_set_current_line(237, ng3);
    t5 = (t0 + 7672);
    t12 = (t5 + 56U);
    t13 = *((char **)t12);
    t15 = (t0 + 7512);
    xsi_vlogvar_wait_assign_value(t15, t13, 0, 0, 3, 0LL);
    xsi_set_current_line(238, ng3);
    t2 = (t0 + 7992);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7832);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    goto LAB31;

LAB34:    xsi_set_current_line(242, ng3);

LAB37:    xsi_set_current_line(243, ng3);
    t5 = (t0 + 7672);
    t12 = (t5 + 56U);
    t13 = *((char **)t12);
    t15 = (t0 + 7512);
    xsi_vlogvar_wait_assign_value(t15, t13, 0, 0, 3, 0LL);
    goto LAB36;

}

static void Always_252_13(char *t0)
{
    char t14[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t15;
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
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;

LAB0:    t1 = (t0 + 12616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(252, ng3);
    t2 = (t0 + 13392);
    *((int *)t2) = 1;
    t3 = (t0 + 12648);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(252, ng3);

LAB5:    xsi_set_current_line(253, ng3);
    t4 = (t0 + 3272U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(256, ng3);

LAB10:    xsi_set_current_line(257, ng3);
    t2 = (t0 + 7512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB11:    t5 = (t0 + 1560);
    t11 = *((char **)t5);
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t11, 32);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = (t0 + 1696);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = (t0 + 1832);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t13 == 1)
        goto LAB16;

LAB17:    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t13 == 1)
        goto LAB18;

LAB19:
LAB20:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(253, ng3);

LAB9:    xsi_set_current_line(254, ng3);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 8152);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    xsi_set_current_line(255, ng3);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(258, ng3);

LAB21:    xsi_set_current_line(259, ng3);
    t5 = (t0 + 3912U);
    t12 = *((char **)t5);
    t5 = (t0 + 8152);
    xsi_vlogvar_wait_assign_value(t5, t12, 0, 0, 8, 0LL);
    xsi_set_current_line(260, ng3);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB20;

LAB14:    xsi_set_current_line(262, ng3);

LAB22:    xsi_set_current_line(263, ng3);
    t2 = (t0 + 4392U);
    t5 = *((char **)t2);
    t2 = (t0 + 4072U);
    t11 = *((char **)t2);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t11);
    t8 = (t6 & t7);
    *((unsigned int *)t14) = t8;
    t2 = (t5 + 4);
    t12 = (t11 + 4);
    t15 = (t14 + 4);
    t9 = *((unsigned int *)t2);
    t10 = *((unsigned int *)t12);
    t16 = (t9 | t10);
    *((unsigned int *)t15) = t16;
    t17 = *((unsigned int *)t15);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB23;

LAB24:
LAB25:    t39 = (t14 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t14);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB26;

LAB27:
LAB28:    goto LAB20;

LAB16:    xsi_set_current_line(266, ng3);

LAB29:    xsi_set_current_line(267, ng3);
    t2 = (t0 + 4392U);
    t5 = *((char **)t2);
    t2 = (t0 + 4072U);
    t11 = *((char **)t2);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t11);
    t8 = (t6 & t7);
    *((unsigned int *)t14) = t8;
    t2 = (t5 + 4);
    t12 = (t11 + 4);
    t15 = (t14 + 4);
    t9 = *((unsigned int *)t2);
    t10 = *((unsigned int *)t12);
    t16 = (t9 | t10);
    *((unsigned int *)t15) = t16;
    t17 = *((unsigned int *)t15);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB30;

LAB31:
LAB32:    t39 = (t14 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t14);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB33;

LAB34:
LAB35:    goto LAB20;

LAB18:    xsi_set_current_line(272, ng3);

LAB37:    xsi_set_current_line(273, ng3);
    t2 = (t0 + 4392U);
    t5 = *((char **)t2);
    t2 = (t0 + 4072U);
    t11 = *((char **)t2);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t11);
    t8 = (t6 & t7);
    *((unsigned int *)t14) = t8;
    t2 = (t5 + 4);
    t12 = (t11 + 4);
    t15 = (t14 + 4);
    t9 = *((unsigned int *)t2);
    t10 = *((unsigned int *)t12);
    t16 = (t9 | t10);
    *((unsigned int *)t15) = t16;
    t17 = *((unsigned int *)t15);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB38;

LAB39:
LAB40:    t39 = (t14 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t14);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB41;

LAB42:
LAB43:    goto LAB20;

LAB23:    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t11 + 4);
    t23 = *((unsigned int *)t5);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t35 & t33);
    t36 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t36 & t34);
    t37 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t37 & t33);
    t38 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t38 & t34);
    goto LAB25;

LAB26:    xsi_set_current_line(264, ng3);
    t45 = ((char*)((ng1)));
    t46 = (t0 + 4792);
    xsi_vlogvar_wait_assign_value(t46, t45, 0, 0, 1, 0LL);
    goto LAB28;

LAB30:    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t11 + 4);
    t23 = *((unsigned int *)t5);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t35 & t33);
    t36 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t36 & t34);
    t37 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t37 & t33);
    t38 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t38 & t34);
    goto LAB32;

LAB33:    xsi_set_current_line(267, ng3);

LAB36:    xsi_set_current_line(268, ng3);
    t45 = (t0 + 8152);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    memset(t48, 0, 8);
    t49 = (t48 + 4);
    t50 = (t47 + 4);
    t51 = *((unsigned int *)t47);
    t52 = (t51 >> 0);
    t53 = (t52 & 1);
    *((unsigned int *)t48) = t53;
    t54 = *((unsigned int *)t50);
    t55 = (t54 >> 0);
    t56 = (t55 & 1);
    *((unsigned int *)t49) = t56;
    t57 = (t0 + 4792);
    xsi_vlogvar_wait_assign_value(t57, t48, 0, 0, 1, 0LL);
    xsi_set_current_line(269, ng3);
    t2 = (t0 + 8152);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t48, 0, 8);
    t11 = (t48 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 1);
    *((unsigned int *)t48) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 1);
    *((unsigned int *)t11) = t9;
    t10 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t10 & 127U);
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 127U);
    t15 = ((char*)((ng5)));
    xsi_vlogtype_concat(t14, 8, 8, 2U, t15, 1, t48, 7);
    t21 = (t0 + 8152);
    xsi_vlogvar_wait_assign_value(t21, t14, 0, 0, 8, 0LL);
    goto LAB35;

LAB38:    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t11 + 4);
    t23 = *((unsigned int *)t5);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t35 & t33);
    t36 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t36 & t34);
    t37 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t37 & t33);
    t38 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t38 & t34);
    goto LAB40;

LAB41:    xsi_set_current_line(274, ng3);
    t45 = ((char*)((ng2)));
    t46 = (t0 + 4792);
    xsi_vlogvar_wait_assign_value(t46, t45, 0, 0, 1, 0LL);
    goto LAB43;

}

static void Always_281_14(char *t0)
{
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t15;
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
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;

LAB0:    t1 = (t0 + 12864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(281, ng3);
    t2 = (t0 + 13408);
    *((int *)t2) = 1;
    t3 = (t0 + 12896);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(281, ng3);

LAB5:    xsi_set_current_line(282, ng3);
    t4 = (t0 + 3272U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(285, ng3);

LAB10:    xsi_set_current_line(286, ng3);
    t2 = (t0 + 7512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB11:    t5 = (t0 + 1560);
    t11 = *((char **)t5);
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t11, 32);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t13 == 1)
        goto LAB14;

LAB15:
LAB17:
LAB16:    xsi_set_current_line(297, ng3);

LAB27:    xsi_set_current_line(298, ng3);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5112);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(299, ng3);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5432);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB18:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(282, ng3);

LAB9:    xsi_set_current_line(283, ng3);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 5112);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(284, ng3);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5432);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(287, ng3);

LAB19:    xsi_set_current_line(288, ng3);
    t5 = ((char*)((ng1)));
    t12 = (t0 + 5432);
    xsi_vlogvar_wait_assign_value(t12, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(289, ng3);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5112);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB18;

LAB14:    xsi_set_current_line(291, ng3);

LAB20:    xsi_set_current_line(292, ng3);
    t2 = (t0 + 4392U);
    t5 = *((char **)t2);
    t2 = (t0 + 4072U);
    t11 = *((char **)t2);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t11);
    t8 = (t6 & t7);
    *((unsigned int *)t14) = t8;
    t2 = (t5 + 4);
    t12 = (t11 + 4);
    t15 = (t14 + 4);
    t9 = *((unsigned int *)t2);
    t10 = *((unsigned int *)t12);
    t16 = (t9 | t10);
    *((unsigned int *)t15) = t16;
    t17 = *((unsigned int *)t15);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB21;

LAB22:
LAB23:    t39 = (t14 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t14);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(295, ng3);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5432);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB26:    goto LAB18;

LAB21:    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t11 + 4);
    t23 = *((unsigned int *)t5);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t35 & t33);
    t36 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t36 & t34);
    t37 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t37 & t33);
    t38 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t38 & t34);
    goto LAB23;

LAB24:    xsi_set_current_line(293, ng3);
    t45 = ((char*)((ng2)));
    t46 = (t0 + 5432);
    xsi_vlogvar_wait_assign_value(t46, t45, 0, 0, 1, 0LL);
    goto LAB26;

}


extern void work_m_00000000000340631119_2239630122_init()
{
	static char *pe[] = {(void *)Always_40_0,(void *)Always_46_1,(void *)NetDecl_58_2,(void *)Always_62_3,(void *)NetDecl_71_4,(void *)Always_79_5,(void *)Always_107_6,(void *)Always_135_7,(void *)Always_158_8,(void *)Always_184_9,(void *)NetDecl_193_10,(void *)Always_198_11,(void *)Always_223_12,(void *)Always_252_13,(void *)Always_281_14};
	static char *se[] = {(void *)sp_GET_WIDTH};
	xsi_register_didat("work_m_00000000000340631119_2239630122", "isim/test_top_isim_beh.exe.sim/work/m_00000000000340631119_2239630122.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
