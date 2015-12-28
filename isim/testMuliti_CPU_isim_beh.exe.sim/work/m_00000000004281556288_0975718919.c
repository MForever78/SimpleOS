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
static const char *ng0 = "D:/project/ISE/project/SimpleOS/src/testMuliti_CPU.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {537001992U, 0U};
static unsigned int ng4[] = {135296U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {4294967295U, 0U};
static int ng7[] = {3, 0};
static unsigned int ng8[] = {537001985U, 0U};
static int ng9[] = {4, 0};
static unsigned int ng10[] = {131084U, 0U};
static int ng11[] = {5, 0};
static unsigned int ng12[] = {1007239168U, 0U};
static int ng13[] = {6, 0};
static unsigned int ng14[] = {2770862080U, 0U};
static int ng15[] = {7, 0};
static unsigned int ng16[] = {556335105U, 0U};
static int ng17[] = {8, 0};
static unsigned int ng18[] = {134217734U, 0U};
static int ng19[] = {9, 0};
static unsigned int ng20[] = {537399295U, 0U};
static int ng21[] = {10, 0};
static unsigned int ng22[] = {1073741848U, 0U};
static int ng23[] = {11, 0};
static unsigned int ng24[] = {0U, 0U};



static void Initial_65_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 4448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);

LAB4:    xsi_set_current_line(66, ng0);

LAB5:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4256);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB6;

LAB1:    return;
LAB6:    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4256);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB4;

LAB8:    goto LAB1;

}

static void Always_73_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 4696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 5264);
    *((int *)t2) = 1;
    t3 = (t0 + 4728);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(74, ng0);

LAB5:    xsi_set_current_line(75, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 2);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 2);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 1073741823U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 1073741823U);

LAB6:    t14 = ((char*)((ng2)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t14, 32);
    if (t15 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t15 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t15 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t15 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t15 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t15 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t15 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng15)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t15 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t15 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng19)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t15 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng21)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t15 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng23)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 32, t2, 32);
    if (t15 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB2;

LAB7:    xsi_set_current_line(76, ng0);
    t16 = ((char*)((ng3)));
    t17 = (t0 + 2728);
    xsi_vlogvar_assign_value(t17, t16, 0, 0, 32);
    goto LAB31;

LAB9:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB31;

LAB11:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB31;

LAB13:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng8)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB31;

LAB15:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng10)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB31;

LAB17:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng12)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB31;

LAB19:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng14)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB31;

LAB21:    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng16)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB31;

LAB23:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng18)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB31;

LAB25:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng20)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB31;

LAB27:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng22)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB31;

LAB29:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 2728);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB31;

}

static void Initial_92_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 4944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);

LAB4:    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 4752);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB1;

}


extern void work_m_00000000004281556288_0975718919_init()
{
	static char *pe[] = {(void *)Initial_65_0,(void *)Always_73_1,(void *)Initial_92_2};
	xsi_register_didat("work_m_00000000004281556288_0975718919", "isim/testMuliti_CPU_isim_beh.exe.sim/work/m_00000000004281556288_0975718919.didat");
	xsi_register_executes(pe);
}
