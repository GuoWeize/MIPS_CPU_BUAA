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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "G:/Verilog/P5_5/RGF.v";
static int ng1[] = {0, 0};
static int ng2[] = {32, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {0U, 0U};
static const char *ng6 = "%d@%h: $%d <= %h";



static void Cont_20_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 2364U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 784U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 21);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 21);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 31U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 31U);
    t12 = (t0 + 3356);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 31U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 4);
    t25 = (t0 + 3280);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Cont_21_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 2508U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 784U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 16);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 16);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 31U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 31U);
    t12 = (t0 + 3392);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 31U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 4);
    t25 = (t0 + 3288);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Initial_24_2(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    int t35;

LAB0:    xsi_set_current_line(24, ng0);

LAB2:    xsi_set_current_line(25, ng0);
    xsi_set_current_line(25, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1840);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 1840);
    t2 = (t1 + 36U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 1748);
    t16 = (t0 + 1748);
    t17 = (t16 + 44U);
    t18 = *((char **)t17);
    t19 = (t0 + 1748);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    t22 = (t0 + 1840);
    t23 = (t22 + 36U);
    t24 = *((char **)t23);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 1, t24, 32, 1);
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t15 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1840);
    t2 = (t1 + 36U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 1840);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB6:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, *((unsigned int *)t15), t35, 0LL);
    goto LAB7;

}

static void Cont_30_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t12[8];
    char t27[8];
    char t61[8];
    char t77[8];
    char t128[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
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
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
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
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    int t101;
    int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    char *t127;
    char *t129;
    char *t130;
    char *t131;
    char *t132;
    char *t133;
    char *t134;
    char *t135;
    char *t136;
    char *t137;
    char *t138;
    char *t139;
    char *t140;
    char *t141;

LAB0:    t1 = (t0 + 2796U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 968U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    if (*((unsigned int *)t5) != *((unsigned int *)t2))
        goto LAB6;

LAB4:    t7 = (t5 + 4);
    t8 = (t2 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB6:    t9 = (t0 + 1060U);
    t10 = *((char **)t9);
    t9 = (t0 + 1428U);
    t11 = *((char **)t9);
    memset(t12, 0, 8);
    t9 = (t10 + 4);
    t13 = (t11 + 4);
    t14 = *((unsigned int *)t10);
    t15 = *((unsigned int *)t11);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB10;

LAB7:    if (t23 != 0)
        goto LAB9;

LAB8:    *((unsigned int *)t12) = 1;

LAB10:    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t12);
    t30 = (t28 & t29);
    *((unsigned int *)t27) = t30;
    t31 = (t6 + 4);
    t32 = (t12 + 4);
    t33 = (t27 + 4);
    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB11;

LAB12:
LAB13:    t59 = (t0 + 1060U);
    t60 = *((char **)t59);
    t59 = ((char*)((ng5)));
    memset(t61, 0, 8);
    t62 = (t60 + 4);
    t63 = (t59 + 4);
    t64 = *((unsigned int *)t60);
    t65 = *((unsigned int *)t59);
    t66 = (t64 ^ t65);
    t67 = *((unsigned int *)t62);
    t68 = *((unsigned int *)t63);
    t69 = (t67 ^ t68);
    t70 = (t66 | t69);
    t71 = *((unsigned int *)t62);
    t72 = *((unsigned int *)t63);
    t73 = (t71 | t72);
    t74 = (~(t73));
    t75 = (t70 & t74);
    if (t75 != 0)
        goto LAB15;

LAB14:    if (t73 != 0)
        goto LAB16;

LAB17:    t78 = *((unsigned int *)t27);
    t79 = *((unsigned int *)t61);
    t80 = (t78 & t79);
    *((unsigned int *)t77) = t80;
    t81 = (t27 + 4);
    t82 = (t61 + 4);
    t83 = (t77 + 4);
    t84 = *((unsigned int *)t81);
    t85 = *((unsigned int *)t82);
    t86 = (t84 | t85);
    *((unsigned int *)t83) = t86;
    t87 = *((unsigned int *)t83);
    t88 = (t87 != 0);
    if (t88 == 1)
        goto LAB18;

LAB19:
LAB20:    memset(t4, 0, 8);
    t109 = (t77 + 4);
    t110 = *((unsigned int *)t109);
    t111 = (~(t110));
    t112 = *((unsigned int *)t77);
    t113 = (t112 & t111);
    t114 = (t113 & 1U);
    if (t114 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t109) != 0)
        goto LAB23;

LAB24:    t116 = (t4 + 4);
    t117 = *((unsigned int *)t4);
    t118 = *((unsigned int *)t116);
    t119 = (t117 || t118);
    if (t119 > 0)
        goto LAB25;

LAB26:    t122 = *((unsigned int *)t4);
    t123 = (~(t122));
    t124 = *((unsigned int *)t116);
    t125 = (t123 || t124);
    if (t125 > 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t116) > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t4) > 0)
        goto LAB31;

LAB32:    memcpy(t3, t128, 8);

LAB33:    t135 = (t0 + 3428);
    t137 = (t135 + 32U);
    t138 = *((char **)t137);
    t139 = (t138 + 40U);
    t140 = *((char **)t139);
    memcpy(t140, t3, 8);
    xsi_driver_vfirst_trans(t135, 0, 31);
    t141 = (t0 + 3296);
    *((int *)t141) = 1;

LAB1:    return;
LAB9:    t26 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB10;

LAB11:    t39 = *((unsigned int *)t27);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t27) = (t39 | t40);
    t41 = (t6 + 4);
    t42 = (t12 + 4);
    t43 = *((unsigned int *)t6);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t12);
    t48 = (~(t47));
    t49 = *((unsigned int *)t42);
    t50 = (~(t49));
    t51 = (t44 & t46);
    t52 = (t48 & t50);
    t53 = (~(t51));
    t54 = (~(t52));
    t55 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t55 & t53);
    t56 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t56 & t54);
    t57 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t57 & t53);
    t58 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t58 & t54);
    goto LAB13;

LAB15:    *((unsigned int *)t61) = 1;
    goto LAB17;

LAB16:    t76 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t76) = 1;
    goto LAB17;

LAB18:    t89 = *((unsigned int *)t77);
    t90 = *((unsigned int *)t83);
    *((unsigned int *)t77) = (t89 | t90);
    t91 = (t27 + 4);
    t92 = (t61 + 4);
    t93 = *((unsigned int *)t27);
    t94 = (~(t93));
    t95 = *((unsigned int *)t91);
    t96 = (~(t95));
    t97 = *((unsigned int *)t61);
    t98 = (~(t97));
    t99 = *((unsigned int *)t92);
    t100 = (~(t99));
    t101 = (t94 & t96);
    t102 = (t98 & t100);
    t103 = (~(t101));
    t104 = (~(t102));
    t105 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t105 & t103);
    t106 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t106 & t104);
    t107 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t107 & t103);
    t108 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t108 & t104);
    goto LAB20;

LAB21:    *((unsigned int *)t4) = 1;
    goto LAB24;

LAB23:    t115 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t115) = 1;
    goto LAB24;

LAB25:    t120 = (t0 + 1152U);
    t121 = *((char **)t120);
    goto LAB26;

LAB27:    t120 = (t0 + 1748);
    t126 = (t120 + 36U);
    t127 = *((char **)t126);
    t129 = (t0 + 1748);
    t130 = (t129 + 44U);
    t131 = *((char **)t130);
    t132 = (t0 + 1748);
    t133 = (t132 + 40U);
    t134 = *((char **)t133);
    t135 = (t0 + 1428U);
    t136 = *((char **)t135);
    xsi_vlog_generic_get_array_select_value(t128, 32, t127, t131, t134, 2, 1, t136, 5, 2);
    goto LAB28;

LAB29:    xsi_vlog_unsigned_bit_combine(t3, 32, t121, 32, t128, 32);
    goto LAB33;

LAB31:    memcpy(t3, t121, 8);
    goto LAB33;

}

static void Cont_31_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t12[8];
    char t27[8];
    char t61[8];
    char t77[8];
    char t128[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
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
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
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
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    int t101;
    int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    char *t127;
    char *t129;
    char *t130;
    char *t131;
    char *t132;
    char *t133;
    char *t134;
    char *t135;
    char *t136;
    char *t137;
    char *t138;
    char *t139;
    char *t140;
    char *t141;

LAB0:    t1 = (t0 + 2940U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 968U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    if (*((unsigned int *)t5) != *((unsigned int *)t2))
        goto LAB6;

LAB4:    t7 = (t5 + 4);
    t8 = (t2 + 4);
    if (*((unsigned int *)t7) != *((unsigned int *)t8))
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB6:    t9 = (t0 + 1060U);
    t10 = *((char **)t9);
    t9 = (t0 + 1520U);
    t11 = *((char **)t9);
    memset(t12, 0, 8);
    t9 = (t10 + 4);
    t13 = (t11 + 4);
    t14 = *((unsigned int *)t10);
    t15 = *((unsigned int *)t11);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB10;

LAB7:    if (t23 != 0)
        goto LAB9;

LAB8:    *((unsigned int *)t12) = 1;

LAB10:    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t12);
    t30 = (t28 & t29);
    *((unsigned int *)t27) = t30;
    t31 = (t6 + 4);
    t32 = (t12 + 4);
    t33 = (t27 + 4);
    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB11;

LAB12:
LAB13:    t59 = (t0 + 1060U);
    t60 = *((char **)t59);
    t59 = ((char*)((ng5)));
    memset(t61, 0, 8);
    t62 = (t60 + 4);
    t63 = (t59 + 4);
    t64 = *((unsigned int *)t60);
    t65 = *((unsigned int *)t59);
    t66 = (t64 ^ t65);
    t67 = *((unsigned int *)t62);
    t68 = *((unsigned int *)t63);
    t69 = (t67 ^ t68);
    t70 = (t66 | t69);
    t71 = *((unsigned int *)t62);
    t72 = *((unsigned int *)t63);
    t73 = (t71 | t72);
    t74 = (~(t73));
    t75 = (t70 & t74);
    if (t75 != 0)
        goto LAB15;

LAB14:    if (t73 != 0)
        goto LAB16;

LAB17:    t78 = *((unsigned int *)t27);
    t79 = *((unsigned int *)t61);
    t80 = (t78 & t79);
    *((unsigned int *)t77) = t80;
    t81 = (t27 + 4);
    t82 = (t61 + 4);
    t83 = (t77 + 4);
    t84 = *((unsigned int *)t81);
    t85 = *((unsigned int *)t82);
    t86 = (t84 | t85);
    *((unsigned int *)t83) = t86;
    t87 = *((unsigned int *)t83);
    t88 = (t87 != 0);
    if (t88 == 1)
        goto LAB18;

LAB19:
LAB20:    memset(t4, 0, 8);
    t109 = (t77 + 4);
    t110 = *((unsigned int *)t109);
    t111 = (~(t110));
    t112 = *((unsigned int *)t77);
    t113 = (t112 & t111);
    t114 = (t113 & 1U);
    if (t114 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t109) != 0)
        goto LAB23;

LAB24:    t116 = (t4 + 4);
    t117 = *((unsigned int *)t4);
    t118 = *((unsigned int *)t116);
    t119 = (t117 || t118);
    if (t119 > 0)
        goto LAB25;

LAB26:    t122 = *((unsigned int *)t4);
    t123 = (~(t122));
    t124 = *((unsigned int *)t116);
    t125 = (t123 || t124);
    if (t125 > 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t116) > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t4) > 0)
        goto LAB31;

LAB32:    memcpy(t3, t128, 8);

LAB33:    t135 = (t0 + 3464);
    t137 = (t135 + 32U);
    t138 = *((char **)t137);
    t139 = (t138 + 40U);
    t140 = *((char **)t139);
    memcpy(t140, t3, 8);
    xsi_driver_vfirst_trans(t135, 0, 31);
    t141 = (t0 + 3304);
    *((int *)t141) = 1;

LAB1:    return;
LAB9:    t26 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB10;

LAB11:    t39 = *((unsigned int *)t27);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t27) = (t39 | t40);
    t41 = (t6 + 4);
    t42 = (t12 + 4);
    t43 = *((unsigned int *)t6);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t12);
    t48 = (~(t47));
    t49 = *((unsigned int *)t42);
    t50 = (~(t49));
    t51 = (t44 & t46);
    t52 = (t48 & t50);
    t53 = (~(t51));
    t54 = (~(t52));
    t55 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t55 & t53);
    t56 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t56 & t54);
    t57 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t57 & t53);
    t58 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t58 & t54);
    goto LAB13;

LAB15:    *((unsigned int *)t61) = 1;
    goto LAB17;

LAB16:    t76 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t76) = 1;
    goto LAB17;

LAB18:    t89 = *((unsigned int *)t77);
    t90 = *((unsigned int *)t83);
    *((unsigned int *)t77) = (t89 | t90);
    t91 = (t27 + 4);
    t92 = (t61 + 4);
    t93 = *((unsigned int *)t27);
    t94 = (~(t93));
    t95 = *((unsigned int *)t91);
    t96 = (~(t95));
    t97 = *((unsigned int *)t61);
    t98 = (~(t97));
    t99 = *((unsigned int *)t92);
    t100 = (~(t99));
    t101 = (t94 & t96);
    t102 = (t98 & t100);
    t103 = (~(t101));
    t104 = (~(t102));
    t105 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t105 & t103);
    t106 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t106 & t104);
    t107 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t107 & t103);
    t108 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t108 & t104);
    goto LAB20;

LAB21:    *((unsigned int *)t4) = 1;
    goto LAB24;

LAB23:    t115 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t115) = 1;
    goto LAB24;

LAB25:    t120 = (t0 + 1152U);
    t121 = *((char **)t120);
    goto LAB26;

LAB27:    t120 = (t0 + 1748);
    t126 = (t120 + 36U);
    t127 = *((char **)t126);
    t129 = (t0 + 1748);
    t130 = (t129 + 44U);
    t131 = *((char **)t130);
    t132 = (t0 + 1748);
    t133 = (t132 + 40U);
    t134 = *((char **)t133);
    t135 = (t0 + 1520U);
    t136 = *((char **)t135);
    xsi_vlog_generic_get_array_select_value(t128, 32, t127, t131, t134, 2, 1, t136, 5, 2);
    goto LAB28;

LAB29:    xsi_vlog_unsigned_bit_combine(t3, 32, t121, 32, t128, 32);
    goto LAB33;

LAB31:    memcpy(t3, t121, 8);
    goto LAB33;

}

static void Always_34_5(char *t0)
{
    char t6[8];
    char t30[8];
    char t31[8];
    char t64[8];
    char t78[8];
    char t114[8];
    char t125[8];
    char t126[8];
    char t144[16];
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
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    int t39;
    char *t40;
    int t41;
    int t42;
    int t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    char *t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    char *t127;
    char *t128;
    char *t129;
    char *t130;
    char *t131;
    char *t132;
    char *t133;
    char *t134;
    unsigned int t135;
    char *t136;
    unsigned int t137;
    int t138;
    int t139;
    unsigned int t140;
    unsigned int t141;
    int t142;
    int t143;

LAB0:    t1 = (t0 + 3084U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3312);
    *((int *)t2) = 1;
    t3 = (t0 + 3112);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng4)));
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
LAB12:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t2))
        goto LAB21;

LAB19:    t4 = (t3 + 4);
    t5 = (t2 + 4);
    if (*((unsigned int *)t4) != *((unsigned int *)t5))
        goto LAB21;

LAB20:    *((unsigned int *)t6) = 1;

LAB21:    t7 = (t0 + 1060U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng5)));
    memset(t30, 0, 8);
    t21 = (t8 + 4);
    t22 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t21);
    t13 = *((unsigned int *)t22);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t21);
    t17 = *((unsigned int *)t22);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB23;

LAB22:    if (t18 != 0)
        goto LAB24;

LAB25:    t23 = *((unsigned int *)t6);
    t24 = *((unsigned int *)t30);
    t25 = (t23 & t24);
    *((unsigned int *)t31) = t25;
    t29 = (t6 + 4);
    t32 = (t30 + 4);
    t33 = (t31 + 4);
    t26 = *((unsigned int *)t29);
    t27 = *((unsigned int *)t32);
    t45 = (t26 | t27);
    *((unsigned int *)t33) = t45;
    t46 = *((unsigned int *)t33);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB26;

LAB27:
LAB28:    t36 = (t0 + 692U);
    t37 = *((char **)t36);
    t36 = ((char*)((ng4)));
    memset(t64, 0, 8);
    t38 = (t37 + 4);
    t40 = (t36 + 4);
    t65 = *((unsigned int *)t37);
    t66 = *((unsigned int *)t36);
    t67 = (t65 ^ t66);
    t68 = *((unsigned int *)t38);
    t69 = *((unsigned int *)t40);
    t70 = (t68 ^ t69);
    t71 = (t67 | t70);
    t72 = *((unsigned int *)t38);
    t73 = *((unsigned int *)t40);
    t74 = (t72 | t73);
    t75 = (~(t74));
    t76 = (t71 & t75);
    if (t76 != 0)
        goto LAB30;

LAB29:    if (t74 != 0)
        goto LAB31;

LAB32:    t79 = *((unsigned int *)t31);
    t80 = *((unsigned int *)t64);
    t81 = (t79 & t80);
    *((unsigned int *)t78) = t81;
    t82 = (t31 + 4);
    t83 = (t64 + 4);
    t84 = (t78 + 4);
    t85 = *((unsigned int *)t82);
    t86 = *((unsigned int *)t83);
    t87 = (t85 | t86);
    *((unsigned int *)t84) = t87;
    t88 = *((unsigned int *)t84);
    t89 = (t88 != 0);
    if (t89 == 1)
        goto LAB33;

LAB34:
LAB35:    t108 = (t78 + 4);
    t109 = *((unsigned int *)t108);
    t110 = (~(t109));
    t111 = *((unsigned int *)t78);
    t112 = (t111 & t110);
    t113 = (t112 != 0);
    if (t113 > 0)
        goto LAB36;

LAB37:
LAB38:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(36, ng0);

LAB13:    xsi_set_current_line(37, ng0);
    xsi_set_current_line(37, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1840);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);

LAB14:    t2 = (t0 + 1840);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB15;

LAB16:    goto LAB12;

LAB15:    xsi_set_current_line(38, ng0);
    t8 = ((char*)((ng1)));
    t21 = (t0 + 1748);
    t22 = (t0 + 1748);
    t28 = (t22 + 44U);
    t29 = *((char **)t28);
    t32 = (t0 + 1748);
    t33 = (t32 + 40U);
    t34 = *((char **)t33);
    t35 = (t0 + 1840);
    t36 = (t35 + 36U);
    t37 = *((char **)t36);
    xsi_vlog_generic_convert_array_indices(t30, t31, t29, t34, 2, 1, t37, 32, 1);
    t38 = (t30 + 4);
    t14 = *((unsigned int *)t38);
    t39 = (!(t14));
    t40 = (t31 + 4);
    t15 = *((unsigned int *)t40);
    t41 = (!(t15));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1840);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1840);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB14;

LAB17:    t16 = *((unsigned int *)t30);
    t17 = *((unsigned int *)t31);
    t43 = (t16 - t17);
    t44 = (t43 + 1);
    xsi_vlogvar_wait_assign_value(t21, t8, 0, *((unsigned int *)t31), t44, 0LL);
    goto LAB18;

LAB23:    *((unsigned int *)t30) = 1;
    goto LAB25;

LAB24:    t28 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB25;

LAB26:    t48 = *((unsigned int *)t31);
    t49 = *((unsigned int *)t33);
    *((unsigned int *)t31) = (t48 | t49);
    t34 = (t6 + 4);
    t35 = (t30 + 4);
    t50 = *((unsigned int *)t6);
    t51 = (~(t50));
    t52 = *((unsigned int *)t34);
    t53 = (~(t52));
    t54 = *((unsigned int *)t30);
    t55 = (~(t54));
    t56 = *((unsigned int *)t35);
    t57 = (~(t56));
    t39 = (t51 & t53);
    t41 = (t55 & t57);
    t58 = (~(t39));
    t59 = (~(t41));
    t60 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t60 & t58);
    t61 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t61 & t59);
    t62 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t62 & t58);
    t63 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t63 & t59);
    goto LAB28;

LAB30:    *((unsigned int *)t64) = 1;
    goto LAB32;

LAB31:    t77 = (t64 + 4);
    *((unsigned int *)t64) = 1;
    *((unsigned int *)t77) = 1;
    goto LAB32;

LAB33:    t90 = *((unsigned int *)t78);
    t91 = *((unsigned int *)t84);
    *((unsigned int *)t78) = (t90 | t91);
    t92 = (t31 + 4);
    t93 = (t64 + 4);
    t94 = *((unsigned int *)t31);
    t95 = (~(t94));
    t96 = *((unsigned int *)t92);
    t97 = (~(t96));
    t98 = *((unsigned int *)t64);
    t99 = (~(t98));
    t100 = *((unsigned int *)t93);
    t101 = (~(t100));
    t42 = (t95 & t97);
    t43 = (t99 & t101);
    t102 = (~(t42));
    t103 = (~(t43));
    t104 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t104 & t102);
    t105 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t105 & t103);
    t106 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t106 & t102);
    t107 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t107 & t103);
    goto LAB35;

LAB36:    xsi_set_current_line(41, ng0);

LAB39:    xsi_set_current_line(42, ng0);
    t115 = (t0 + 1152U);
    t116 = *((char **)t115);
    memset(t114, 0, 8);
    t115 = (t114 + 4);
    t117 = (t116 + 4);
    t118 = *((unsigned int *)t116);
    t119 = (t118 >> 0);
    *((unsigned int *)t114) = t119;
    t120 = *((unsigned int *)t117);
    t121 = (t120 >> 0);
    *((unsigned int *)t115) = t121;
    t122 = *((unsigned int *)t114);
    *((unsigned int *)t114) = (t122 & 4294967295U);
    t123 = *((unsigned int *)t115);
    *((unsigned int *)t115) = (t123 & 4294967295U);
    t124 = (t0 + 1748);
    t127 = (t0 + 1748);
    t128 = (t127 + 44U);
    t129 = *((char **)t128);
    t130 = (t0 + 1748);
    t131 = (t130 + 40U);
    t132 = *((char **)t131);
    t133 = (t0 + 1060U);
    t134 = *((char **)t133);
    xsi_vlog_generic_convert_array_indices(t125, t126, t129, t132, 2, 1, t134, 5, 2);
    t133 = (t125 + 4);
    t135 = *((unsigned int *)t133);
    t44 = (!(t135));
    t136 = (t126 + 4);
    t137 = *((unsigned int *)t136);
    t138 = (!(t137));
    t139 = (t44 && t138);
    if (t139 == 1)
        goto LAB40;

LAB41:    xsi_set_current_line(43, ng0);
    t2 = xsi_vlog_time(t144, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 876U);
    t4 = *((char **)t3);
    t3 = (t0 + 1060U);
    t5 = *((char **)t3);
    t3 = (t0 + 1152U);
    t7 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng6, 5, t0, (char)118, t144, 64, (char)118, t4, 32, (char)118, t5, 5, (char)118, t7, 32);
    goto LAB38;

LAB40:    t140 = *((unsigned int *)t125);
    t141 = *((unsigned int *)t126);
    t142 = (t140 - t141);
    t143 = (t142 + 1);
    xsi_vlogvar_wait_assign_value(t124, t114, 0, *((unsigned int *)t126), t143, 0LL);
    goto LAB41;

}


extern void work_m_00000000001764863246_1308195296_init()
{
	static char *pe[] = {(void *)Cont_20_0,(void *)Cont_21_1,(void *)Initial_24_2,(void *)Cont_30_3,(void *)Cont_31_4,(void *)Always_34_5};
	xsi_register_didat("work_m_00000000001764863246_1308195296", "isim/mipstest_isim_beh.exe.sim/work/m_00000000001764863246_1308195296.didat");
	xsi_register_executes(pe);
}
