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
static const char *ng0 = "D:/project/ISE/project/SimpleOS/src/MdrByteSotre.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};



static void Always_30_0(char *t0)
{
    char t4[8];
    char t16[8];
    char t17[8];
    char t27[8];
    char t38[8];
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
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 3U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 3U);

LAB6:    t14 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t14, 2);
    if (t15 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t15 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t15 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t15 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(33, ng0);
    t18 = (t0 + 1368U);
    t19 = *((char **)t18);
    memset(t17, 0, 8);
    t18 = (t17 + 4);
    t20 = (t19 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (t21 >> 0);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t20);
    t24 = (t23 >> 0);
    *((unsigned int *)t18) = t24;
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 255U);
    t26 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t26 & 255U);
    t28 = (t0 + 1208U);
    t29 = *((char **)t28);
    memset(t27, 0, 8);
    t28 = (t27 + 4);
    t30 = (t29 + 4);
    t31 = *((unsigned int *)t29);
    t32 = (t31 >> 8);
    *((unsigned int *)t27) = t32;
    t33 = *((unsigned int *)t30);
    t34 = (t33 >> 8);
    *((unsigned int *)t28) = t34;
    t35 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t35 & 16777215U);
    t36 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t36 & 16777215U);
    xsi_vlogtype_concat(t16, 32, 32, 2U, t27, 24, t17, 8);
    t37 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t37, t16, 0, 0, 32, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    memset(t17, 0, 8);
    t3 = (t17 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t17) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 0);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t12 & 255U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 255U);
    t7 = (t0 + 1368U);
    t14 = *((char **)t7);
    memset(t27, 0, 8);
    t7 = (t27 + 4);
    t18 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    t22 = (t21 >> 0);
    *((unsigned int *)t27) = t22;
    t23 = *((unsigned int *)t18);
    t24 = (t23 >> 0);
    *((unsigned int *)t7) = t24;
    t25 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t25 & 255U);
    t26 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t26 & 255U);
    t19 = (t0 + 1208U);
    t20 = *((char **)t19);
    memset(t38, 0, 8);
    t19 = (t38 + 4);
    t28 = (t20 + 4);
    t31 = *((unsigned int *)t20);
    t32 = (t31 >> 16);
    *((unsigned int *)t38) = t32;
    t33 = *((unsigned int *)t28);
    t34 = (t33 >> 16);
    *((unsigned int *)t19) = t34;
    t35 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t35 & 65535U);
    t36 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t36 & 65535U);
    xsi_vlogtype_concat(t16, 32, 32, 3U, t38, 16, t27, 8, t17, 8);
    t29 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t29, t16, 0, 0, 32, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    memset(t17, 0, 8);
    t3 = (t17 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t17) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 0);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t12 & 65535U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 65535U);
    t7 = (t0 + 1368U);
    t14 = *((char **)t7);
    memset(t27, 0, 8);
    t7 = (t27 + 4);
    t18 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    t22 = (t21 >> 0);
    *((unsigned int *)t27) = t22;
    t23 = *((unsigned int *)t18);
    t24 = (t23 >> 0);
    *((unsigned int *)t7) = t24;
    t25 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t25 & 255U);
    t26 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t26 & 255U);
    t19 = (t0 + 1208U);
    t20 = *((char **)t19);
    memset(t38, 0, 8);
    t19 = (t38 + 4);
    t28 = (t20 + 4);
    t31 = *((unsigned int *)t20);
    t32 = (t31 >> 24);
    *((unsigned int *)t38) = t32;
    t33 = *((unsigned int *)t28);
    t34 = (t33 >> 24);
    *((unsigned int *)t19) = t34;
    t35 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t35 & 255U);
    t36 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t36 & 255U);
    xsi_vlogtype_concat(t16, 32, 32, 3U, t38, 8, t27, 8, t17, 16);
    t29 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t29, t16, 0, 0, 32, 0LL);
    goto LAB15;

LAB13:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    memset(t17, 0, 8);
    t3 = (t17 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t17) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 0);
    *((unsigned int *)t3) = t11;
    t12 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t12 & 16777215U);
    t13 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t13 & 16777215U);
    t7 = (t0 + 1368U);
    t14 = *((char **)t7);
    memset(t27, 0, 8);
    t7 = (t27 + 4);
    t18 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    t22 = (t21 >> 0);
    *((unsigned int *)t27) = t22;
    t23 = *((unsigned int *)t18);
    t24 = (t23 >> 0);
    *((unsigned int *)t7) = t24;
    t25 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t25 & 255U);
    t26 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t26 & 255U);
    xsi_vlogtype_concat(t16, 32, 32, 2U, t27, 8, t17, 24);
    t19 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t19, t16, 0, 0, 32, 0LL);
    goto LAB15;

}


extern void work_m_00000000003082038458_1118175237_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000003082038458_1118175237", "isim/test_top_isim_beh.exe.sim/work/m_00000000003082038458_1118175237.didat");
	xsi_register_executes(pe);
}
