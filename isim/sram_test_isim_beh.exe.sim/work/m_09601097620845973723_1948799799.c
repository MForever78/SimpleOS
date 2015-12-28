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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/mforever78/Share/Xilinx/SimpleOS/src/RAM_B.v";
static const char *ng1 = "src/hex/test_uart.hex";
static unsigned int ng2[] = {0U, 4294967295U, 0U, 65535U};
static unsigned int ng3[] = {127U, 0U};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {0U, 0U, 0U, 0U};



static void Initial_31_0(char *t0)
{
    char *t1;

LAB0:    xsi_set_current_line(31, ng0);

LAB2:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 2088);
    xsi_vlogfile_readmemh(ng1, 0, t1, 0, 0, 0, 0);

LAB1:    return;
}

static void Always_35_1(char *t0)
{
    char t13[8];
    char t14[8];
    char t25[16];
    char t29[16];
    char t30[8];
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
    char *t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    int t21;
    int t22;
    int t23;
    int t24;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 3248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3568);
    *((int *)t2) = 1;
    t3 = (t0 + 3280);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(39, ng0);

LAB12:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t14, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB14;

LAB13:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB14;

LAB17:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB16;

LAB15:    *((unsigned int *)t14) = 1;

LAB16:    memset(t13, 0, 8);
    t12 = (t14 + 4);
    t6 = *((unsigned int *)t12);
    t7 = (~(t6));
    t8 = *((unsigned int *)t14);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t12) != 0)
        goto LAB20;

LAB21:    t16 = (t13 + 4);
    t26 = *((unsigned int *)t13);
    t27 = *((unsigned int *)t16);
    t28 = (t26 || t27);
    if (t28 > 0)
        goto LAB22;

LAB23:    t39 = *((unsigned int *)t13);
    t40 = (~(t39));
    t41 = *((unsigned int *)t16);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t16) > 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t13) > 0)
        goto LAB28;

LAB29:    memcpy(t25, t43, 16);

LAB30:    t44 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t44, t25, 0, 0, 48, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(36, ng0);

LAB9:    xsi_set_current_line(37, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 48, 0LL);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2088);
    t4 = (t0 + 2088);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = (t0 + 2088);
    t15 = (t12 + 64U);
    t16 = *((char **)t15);
    t17 = (t0 + 1048U);
    t18 = *((char **)t17);
    xsi_vlog_generic_convert_array_indices(t13, t14, t11, t16, 2, 1, t18, 20, 2);
    t17 = (t13 + 4);
    t6 = *((unsigned int *)t17);
    t19 = (!(t6));
    t20 = (t14 + 4);
    t7 = *((unsigned int *)t20);
    t21 = (!(t7));
    t22 = (t19 && t21);
    if (t22 == 1)
        goto LAB10;

LAB11:    goto LAB8;

LAB10:    t8 = *((unsigned int *)t13);
    t9 = *((unsigned int *)t14);
    t23 = (t8 - t9);
    t24 = (t23 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t14), t24, 0LL);
    goto LAB11;

LAB14:    t11 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB16;

LAB18:    *((unsigned int *)t13) = 1;
    goto LAB21;

LAB20:    t15 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB21;

LAB22:    t17 = (t0 + 2088);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    t31 = (t0 + 2088);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 2088);
    t35 = (t34 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 1048U);
    t38 = *((char **)t37);
    xsi_vlog_generic_get_array_select_value(t30, 32, t20, t33, t36, 2, 1, t38, 20, 2);
    t37 = ((char*)((ng4)));
    xsi_vlogtype_concat(t29, 48, 48, 2U, t37, 16, t30, 32);
    goto LAB23;

LAB24:    t43 = ((char*)((ng5)));
    goto LAB25;

LAB26:    xsi_vlog_unsigned_bit_combine(t25, 48, t29, 48, t43, 48);
    goto LAB30;

LAB28:    memcpy(t25, t29, 16);
    goto LAB30;

}


extern void work_m_09601097620845973723_1948799799_init()
{
	static char *pe[] = {(void *)Initial_31_0,(void *)Always_35_1};
	xsi_register_didat("work_m_09601097620845973723_1948799799", "isim/sram_test_isim_beh.exe.sim/work/m_09601097620845973723_1948799799.didat");
	xsi_register_executes(pe);
}
