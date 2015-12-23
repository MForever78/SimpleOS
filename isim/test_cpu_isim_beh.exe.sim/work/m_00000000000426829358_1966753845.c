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
static const char *ng0 = "D:/project/ISE/project/SimpleOS/test_cpu.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {2903048192U, 0U};
static unsigned int ng4[] = {0U, 0U};



static void Initial_64_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 4288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);

LAB4:    xsi_set_current_line(65, ng0);

LAB5:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;

LAB1:    return;
LAB6:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4096);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB4;

LAB8:    goto LAB1;

}

static void Always_72_1(char *t0)
{
    char t4[8];
    char t7[8];
    char t25[8];
    char *t1;
    char *t2;
    char *t3;
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
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    int t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;

LAB0:    t1 = (t0 + 4536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 5104);
    *((int *)t2) = 1;
    t3 = (t0 + 4568);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);

LAB5:    xsi_set_current_line(73, ng0);
    t5 = (t0 + 1688U);
    t6 = *((char **)t5);
    t5 = (t0 + 1848U);
    t8 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t8 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (~(t9));
    t11 = *((unsigned int *)t8);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t14 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t14) = 1;

LAB9:    t15 = (t7 + 4);
    t16 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t18 = (~(t17));
    *((unsigned int *)t7) = t18;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB11;

LAB10:    t23 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t23 & 1U);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t24 & 1U);
    t26 = *((unsigned int *)t6);
    t27 = *((unsigned int *)t7);
    t28 = (t26 & t27);
    *((unsigned int *)t25) = t28;
    t29 = (t6 + 4);
    t30 = (t7 + 4);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t29);
    t33 = *((unsigned int *)t30);
    t34 = (t32 | t33);
    *((unsigned int *)t31) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 != 0);
    if (t36 == 1)
        goto LAB12;

LAB13:
LAB14:    memset(t4, 0, 8);
    t57 = (t25 + 4);
    t58 = *((unsigned int *)t57);
    t59 = (~(t58));
    t60 = *((unsigned int *)t25);
    t61 = (t60 & t59);
    t62 = (t61 & 1U);
    if (t62 != 0)
        goto LAB18;

LAB16:    if (*((unsigned int *)t57) == 0)
        goto LAB15;

LAB17:    t63 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t63) = 1;

LAB18:    t64 = (t4 + 4);
    t65 = (t25 + 4);
    t66 = *((unsigned int *)t25);
    t67 = (~(t66));
    *((unsigned int *)t4) = t67;
    *((unsigned int *)t64) = 0;
    if (*((unsigned int *)t65) != 0)
        goto LAB20;

LAB19:    t72 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t72 & 1U);
    t73 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t73 & 1U);
    t74 = (t0 + 3048);
    xsi_vlogvar_assign_value(t74, t4, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t7) = 1;
    goto LAB9;

LAB11:    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t16);
    *((unsigned int *)t7) = (t19 | t20);
    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t21 | t22);
    goto LAB10;

LAB12:    t37 = *((unsigned int *)t25);
    t38 = *((unsigned int *)t31);
    *((unsigned int *)t25) = (t37 | t38);
    t39 = (t6 + 4);
    t40 = (t7 + 4);
    t41 = *((unsigned int *)t6);
    t42 = (~(t41));
    t43 = *((unsigned int *)t39);
    t44 = (~(t43));
    t45 = *((unsigned int *)t7);
    t46 = (~(t45));
    t47 = *((unsigned int *)t40);
    t48 = (~(t47));
    t49 = (t42 & t44);
    t50 = (t46 & t48);
    t51 = (~(t49));
    t52 = (~(t50));
    t53 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t53 & t51);
    t54 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t54 & t52);
    t55 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t55 & t51);
    t56 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t56 & t52);
    goto LAB14;

LAB15:    *((unsigned int *)t4) = 1;
    goto LAB18;

LAB20:    t68 = *((unsigned int *)t4);
    t69 = *((unsigned int *)t65);
    *((unsigned int *)t4) = (t68 | t69);
    t70 = *((unsigned int *)t64);
    t71 = *((unsigned int *)t65);
    *((unsigned int *)t64) = (t70 | t71);
    goto LAB19;

}

static void Initial_76_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 4784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);

LAB4:    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 4592);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    goto LAB1;

}


extern void work_m_00000000000426829358_1966753845_init()
{
	static char *pe[] = {(void *)Initial_64_0,(void *)Always_72_1,(void *)Initial_76_2};
	xsi_register_didat("work_m_00000000000426829358_1966753845", "isim/test_cpu_isim_beh.exe.sim/work/m_00000000000426829358_1966753845.didat");
	xsi_register_executes(pe);
}
