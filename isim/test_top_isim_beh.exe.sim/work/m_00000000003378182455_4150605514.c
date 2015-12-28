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
static const char *ng0 = "D:/project/ISE/project/SimpleOS/src/ADC32.v";
static unsigned int ng1[] = {0U, 0U};



static void Cont_27_0(char *t0)
{
    char t3[16];
    char t5[16];
    char t9[16];
    char t11[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng1)));
    xsi_vlogtype_concat(t3, 33, 33, 2U, t2, 1, t4, 32);
    t6 = (t0 + 1208U);
    t7 = *((char **)t6);
    t6 = (t0 + 1368U);
    t8 = *((char **)t6);
    xsi_vlogtype_concat(t5, 33, 33, 2U, t8, 1, t7, 32);
    xsi_vlog_unsigned_add(t9, 33, t3, 33, t5, 33);
    t6 = (t0 + 1368U);
    t10 = *((char **)t6);
    xsi_vlog_unsigned_add(t11, 33, t9, 33, t10, 1);
    t6 = (t0 + 3088);
    t12 = (t6 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    xsi_vlog_bit_copy(t15, 0, t11, 0, 33);
    xsi_driver_vfirst_trans(t6, 0, 32);
    t16 = (t0 + 3008);
    *((int *)t16) = 1;

LAB1:    return;
}


extern void work_m_00000000003378182455_4150605514_init()
{
	static char *pe[] = {(void *)Cont_27_0};
	xsi_register_didat("work_m_00000000003378182455_4150605514", "isim/test_top_isim_beh.exe.sim/work/m_00000000003378182455_4150605514.didat");
	xsi_register_executes(pe);
}
