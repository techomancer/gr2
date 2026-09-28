? ErrorF(void *, s32 *, s16, u16, s32, u32, void **); /* extern */
s64 Xalloc(s32, s16, s32, s16, s32, s16);           /* extern */
? Xfree(void *);                                    /* extern */
s32 Xrealloc(s32, s32);                             /* extern */
s64 calloc(s32, ?, ?, s64);                         /* extern */
? close(s64);                                       /* extern */
s32 *expResetProc(s32 *, s32 *, s64, s32 *, s32, s32); /* extern */
? fclose(s32);                                      /* extern */
s32 fopen(s32 *, s32);                              /* extern */
? fprintf(s32, s32, s64);                           /* extern */
s32 fstat(s64, ? *);                                /* extern */
s32 ioctl(s32, ?, s32 *, s64, s32, void *, ?);      /* extern */
s32 *malloc(?, ? *);                                /* extern */
? memmove(s32, s32, s32);                           /* extern */
s64 mmap(?, s32, ?, ?, s64, ?);                     /* extern */
? munmap(s64, s32);                                 /* extern */
s64 open(s32 *, ?);                                 /* extern */
? rrmSetReservedDID(s64, s32, s32, s32);            /* extern */
? sprintf(s32 *, void *, s32);                      /* extern */
? strcpy(s32 *, s32 *);                             /* extern */
s32 strlen(s32 *);                                  /* extern */
extern s32 expScreenPrivateIndex;
extern ? local_0x5f0a0000;
extern ? local_0x5f0b0000;
extern ? local_0x5f0c0000;
extern ? savedScreenInfo;
extern s32 var_5f0b8adc;
extern s32 var_5f0b93c0;
extern s32 vcScreenPrivateIndex;

void expvc1Init(void *arg0, s16 arg_sp0) {
    s16 temp_a2;
    s16 temp_a2_2;
    s16 temp_s1;
    s16 temp_v0_2;
    s32 *var_s0;
    s32 *var_s1;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2_4;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_s2_2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v1;
    s64 var_ra;
    u16 *temp_sp;
    u16 *var_a0;
    u16 *var_v0_3;
    u16 *var_v1_2;
    u16 temp_a3;
    u16 temp_at;
    u16 var_at;
    u32 temp_a5;
    void **var_a7;
    void *temp_a2_3;
    void *temp_s2;
    void *temp_v0;
    void *var_a1;
    void *var_t1;

    var_ra = saved_reg_ra;
    var_a1 = arg0;
    temp_a2 = arg0->unkA;
    arg_sp0.unk-20 = (s64) saved_reg_s0;
    arg_sp0.unk-28 = (s64) saved_reg_fp;
    var_v1 = temp_a2 * 2;
    temp_sp = sp - ((var_v1 + 0xF) & ~0xF);
    var_a7 = *(arg0->unk1B4 + (expScreenPrivateIndex * 4));
    var_t1 = *var_a7;
    if (temp_sp != NULL) {
        var_v0 = 0;
        if (temp_a2 > 0) {
            var_v1_2 = temp_sp;
            do {
                *var_v1_2 = 0x1400;
                temp_a2_2 = var_a1->unkA;
                var_v0 += 1;
                var_v1_2 += 2;
            } while (var_v0 < temp_a2_2);
            arg_sp0.unk-38 = (s64) saved_reg_s3;
            var_v1 = temp_a2_2 * 2;
        } else {
            arg_sp0.unk-38 = (s64) saved_reg_s3;
        }
        (temp_sp + var_v1)->unk-2 = 0x1404;
        temp_a2_3 = *var_a7;
        temp_v0 = &local_0x5f0b0000 + 0x4810;
        temp_a2_3->unk6C054 = 0x14;
        temp_a2_3->unk6C050 = 0x1400;
        temp_a2_3->unk6C048 = (u16) local_0x5f0b0000.unk4810;
        temp_a2_3->unk6C048 = (u16) temp_v0->unk2;
        temp_a2_3->unk6C048 = (u16) temp_v0->unk4;
        temp_a2_3->unk6C048 = (u16) temp_v0->unk6;
        temp_a3 = temp_v0->unk8;
        temp_a2_3->unk6C048 = temp_a3;
        temp_a2_3->unk6C048 = (u16) temp_v0->unkA;
        temp_a2_3->unk6C048 = (u16) temp_v0->unkC;
        arg_sp0.unk-48 = (s64) saved_reg_s2;
        arg_sp0.unk-40 = (s64) saved_reg_s1;
        temp_a2_3->unk6C048 = (u16) temp_v0->unkE;
        temp_s1 = var_a1->unkA;
        temp_a5 = temp_s1 + 0xB00;
        temp_a4 = temp_a5 > 0x8000U;
        temp_s2 = *var_a7;
        if (temp_a4 != 0) {
            arg_sp0.unk-70 = (s64) var_a7;
            arg_sp0.unk-80 = (s64) var_t1;
            arg_sp0.unk-78 = (s64) var_a1;
            arg_sp0.unk-68 = (s64) saved_reg_ra;
            ErrorF(&local_0x5f0a0000 - 0xA68, (s32 *)0xB00, temp_s1, temp_a3, temp_a4, temp_a5, var_a7);
            var_t1 = (void *) arg_sp0.unk-80;
            var_ra = arg_sp0.unk-68;
            var_a7 = (void **) arg_sp0.unk-70;
            var_a1 = (void *) arg_sp0.unk-78;
        }
        var_v0_2 = temp_s1 & 3;
        temp_s2->unk6C054 = 0xB;
        temp_s2->unk6C050 = 0xB00;
        if (temp_s1 != 0) {
            var_a0 = temp_sp;
            if (var_v0_2 != 0) {
                do {
                    var_a0 += 2;
                    var_v0_2 -= 1;
                    temp_s2->unk6C048 = (u16) var_a0->unk-2;
                } while (var_v0_2 != 0);
            }
            temp_a6 = temp_s1 >> 2;
            var_v0_3 = var_a0;
            if (temp_a6 != 0) {
                if (temp_a6 >= 2) {
                    var_at = var_v0_3->unk0;
                    do {
                        temp_s2->unk6C048 = var_at;
                        temp_s2->unk6C048 = (u16) var_v0_3->unk2;
                        temp_s2->unk6C048 = (u16) var_v0_3->unk4;
                        temp_at = var_v0_3->unk6;
                        var_v0_3 += 8;
                        temp_s2->unk6C048 = temp_at;
                        var_at = var_v0_3->unk0;
                    } while (var_v0_3 != ((temp_sp + (temp_s1 * 2)) - 8));
                    temp_s2->unk6C048 = var_at;
                    temp_s2->unk6C048 = (u16) var_v0_3->unk2;
                    temp_s2->unk6C048 = (u16) var_v0_3->unk4;
                    temp_s2->unk6C048 = (u16) var_v0_3->unk6;
                } else {
                    temp_s2->unk6C048 = (u16) var_v0_3->unk0;
                    temp_s2->unk6C048 = (u16) var_v0_3->unk2;
                    temp_s2->unk6C048 = (u16) var_v0_3->unk4;
                    temp_s2->unk6C048 = (u16) var_v0_3->unk6;
                }
            }
            arg_sp0.unk-30 = (s64) saved_reg_s7;
        }
        arg_sp0.unk-30 = (s64) saved_reg_s7;
        var_t1->unk6C054 = 0;
        var_t1->unk6C050 = 0x40;
        var_t1->unk6C040 = 0xB00;
        var_s0 = saved_reg_gp - 0x5384;
        var_t1->unk6C040 = (s16) ((var_a1->unkA * 2) + 0xB00);
        var_s1 = NULL;
        temp_v0_2 = var_a1->unk8;
        if (temp_v0_2 >= 0x4FF) {
            arg_sp0.unk-60 = (s64) saved_reg_s4;
            arg_sp0.unk-58 = (s64) saved_reg_s6;
            arg_sp0.unk-50 = (s64) saved_reg_s5;
            var_t1->unk6C040 = 0xFF04;
        } else {
            arg_sp0.unk-60 = (s64) saved_reg_s4;
            arg_sp0.unk-58 = (s64) saved_reg_s6;
            arg_sp0.unk-50 = (s64) saved_reg_s5;
            M2C_TRAP_IF(5 == 0);
            var_t1->unk6C040 = (s16) ((temp_v0_2 % 5) | ((temp_v0_2 / 5) << 8));
        }
        arg_sp0.unk-78 = (s64) var_a1;
        arg_sp0.unk-70 = (s64) var_a7;
        arg_sp0.unk-68 = var_ra;
        var_t1->unk6C054 = 0;
        var_t1->unk6C050 = 0x60;
        var_t1->unk6C040 = 0;
        temp_s2_2 = var_a1->unk74->unk64;
        temp_a0 = temp_s2_2;
        do {
            if (ioctl(temp_a0, 0x3AA8, var_s0) == -1) {
                ErrorF(&local_0x5f0a0000 - 0xA30, var_s1);
            }
            temp_a3_2 = var_s0->unk4;
            temp_a2_4 = var_s0->unk8;
            temp_a1 = var_s0->unk0;
            var_s0 += 0xC;
            rrmSetReservedDID(arg_sp0.unk-78, temp_a1, temp_a2_4, temp_a3_2);
            var_s1 += 1;
        } while (var_s1 != (s32 *)0xA);
        arg_sp0.unk-70->unk4 = 0x3C;
        var_t1->unk6C058 = 0x3C;
        var_t1->unk6C054 = 9;
        var_t1->unk6C050 = 0xF4;
        var_t1->unk6C048 = 0x1410;
    }
}

s32 expvc1ComputeDIDTable(void *arg0, s32 arg1, void *arg2, s32 arg4, s16 arg5, s32 arg6, void *arg7, ? arg_sp0) {
    s16 *var_a3_2;
    s16 temp_a1;
    s16 temp_a1_2;
    s16 temp_a3;
    s16 temp_a3_2;
    s16 temp_a6_11;
    s16 temp_a6_16;
    s16 temp_a6_3;
    s16 temp_a6_4;
    s16 temp_a6_5;
    s16 temp_s2;
    s16 temp_t3;
    s16 temp_v0_11;
    s16 temp_v0_13;
    s16 temp_v0_14;
    s16 var_a1_6;
    s16 var_a5;
    s16 var_ra_2;
    s16 var_t2;
    s16 var_t2_2;
    s16 var_t3_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a2_10;
    s32 temp_a2_9;
    s32 temp_a3_5;
    s32 temp_a3_7;
    s32 temp_a6_12;
    s32 temp_a6_13;
    s32 temp_a6_15;
    s32 temp_a6_17;
    s32 temp_a6_6;
    s32 temp_a6_8;
    s32 temp_a6_9;
    s32 temp_s1;
    s32 temp_s1_10;
    s32 temp_s1_11;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s1_5;
    s32 temp_s1_6;
    s32 temp_s1_7;
    s32 temp_s1_8;
    s32 temp_s1_9;
    s32 temp_s2_3;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_t8;
    s32 temp_v0_10;
    s32 temp_v0_12;
    s32 temp_v0_3;
    s32 temp_v0_6;
    s32 temp_v0_9;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3_3;
    s32 var_a4;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_5;
    s32 var_a6_7;
    s32 var_a7_2;
    s32 var_at;
    s32 var_ra;
    s32 var_s6_2;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t3_4;
    s32 var_t8;
    s32 var_t8_2;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_11;
    s32 var_v0_12;
    s32 var_v0_13;
    s32 var_v0_16;
    s32 var_v0_17;
    s32 var_v0_18;
    s32 var_v0_4;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_5;
    s32 var_v1_6;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a2_3;
    s64 temp_a2_4;
    s64 temp_a2_5;
    s64 temp_a2_6;
    s64 temp_a2_7;
    s64 temp_a2_8;
    s64 temp_a4;
    s64 temp_a4_2;
    s64 temp_a4_3;
    s64 temp_a4_4;
    s64 temp_a4_5;
    s64 temp_a4_6;
    s64 temp_a4_7;
    s64 temp_a5;
    s64 temp_a5_6;
    s64 temp_a6;
    s64 temp_a6_14;
    s64 temp_a6_2;
    s64 temp_a6_7;
    s64 temp_at_10;
    s64 temp_at_11;
    s64 temp_at_2;
    s64 temp_at_3;
    s64 temp_at_4;
    s64 temp_at_5;
    s64 temp_at_6;
    s64 temp_at_8;
    s64 temp_at_9;
    s64 temp_s5_2;
    s64 temp_v0_2;
    s64 temp_v0_4;
    s64 temp_v0_7;
    s64 temp_v1;
    s64 temp_v1_2;
    s64 temp_v1_3;
    s64 var_s0;
    s64 var_s0_10;
    s64 var_s0_11;
    s64 var_s0_12;
    s64 var_s0_13;
    s64 var_s0_2;
    s64 var_s0_3;
    s64 var_s0_4;
    s64 var_s0_5;
    s64 var_s0_6;
    s64 var_s0_7;
    s64 var_s0_8;
    s64 var_s0_9;
    s64 var_s1_2;
    s64 var_s6;
    s64 var_v0_3;
    s64 var_v0_5;
    s8 temp_a4_8;
    s8 temp_a4_9;
    s8 temp_a5_2;
    s8 temp_a5_3;
    s8 temp_a5_4;
    s8 temp_a5_5;
    s8 temp_a5_7;
    s8 temp_a6_10;
    s8 temp_at_13;
    s8 temp_at_14;
    s8 temp_s2_2;
    s8 var_s4;
    u16 *temp_s5_3;
    u16 *var_a1;
    u16 *var_a1_10;
    u16 *var_a1_5;
    u16 *var_a1_9;
    u16 *var_a6_3;
    u16 *var_a6_8;
    u16 *var_a7_3;
    u16 *var_s7;
    u16 *var_sp;
    u16 *var_v0_14;
    u16 *var_v0_19;
    u16 *var_v0_20;
    u16 *var_v0_8;
    u16 temp_at;
    u16 temp_at_12;
    u16 temp_at_15;
    u16 temp_at_7;
    u16 var_a1_2;
    u16 var_a6_4;
    u16 var_a6_6;
    u16 var_at_2;
    u16 var_at_3;
    u16 var_at_4;
    u16 var_at_5;
    u16 var_t1_3;
    u16 var_t3_3;
    u16 var_v0_15;
    u16 var_v0_9;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a3_6;
    void *temp_a7;
    void *temp_s5;
    void *temp_s7;
    void *temp_sp;
    void *temp_v0;
    void *temp_v0_5;
    void *temp_v0_8;
    void *var_a3;
    void *var_a7;
    void *var_s1;
    void *var_s2;
    void *var_t0;
    void *var_t1_2;
    void *var_t3;
    void *var_t9;
    void *var_v0_2;

    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    var_v0 = 0;
    arg_sp0.unk-B0 = (s64) saved_reg_s6;
    arg_sp0.unk-70 = (s64) saved_reg_s2;
    arg_sp0.unk-68 = (s64) saved_reg_s7;
    temp_s7 = *(arg0->unk1B4 + (expScreenPrivateIndex * 4));
    arg_sp0.unk-60 = (s64) saved_reg_fp;
    arg_sp0.unk-58 = (s64) saved_reg_s5;
    temp_s5 = temp_s7->unk0;
    temp_s5_2 = temp_s5 + 0x70000;
    temp_s5->unk6C054 = 9;
    temp_s5->unk6C050 = 0xF0;
    arg_sp0.unk-A0 = (s64) temp_s5->unk6C048;
    if (temp_s5->unk6C048 & 0x10) {
        var_s6 = 1;
    } else {
        var_s6 = 0;
    }
    var_a3 = arg2;
    if (arg1 > 0) {
        if (arg1 & 1) {
            var_a7 = var_a3->unk8;
            if (var_a7 != NULL) {
                var_a6 = var_a7->unk4;
            } else {
                var_a6 = 1;
            }
            var_a3 += 0xC;
            var_v0 = var_a6;
        }
        if ((arg1 >> 1) != 0) {
loop_16:
            temp_a7 = var_a3->unk8;
            var_a6_2 = 1;
            if (temp_a7 == NULL) {

            } else {
                var_a6_2 = temp_a7->unk4;
            }
            var_a7 = var_a3->unk14;
            var_a3 += 0x18;
            if (var_a7 != NULL) {
                var_a6 = var_a7->unk4;
            } else {
                var_a6 = 1;
            }
            var_v0 = var_a6 + (var_a6_2 + var_v0);
            if (var_a3 != ((arg1 * 0xC) + arg2)) {
                goto loop_16;
            }
        }
        arg_sp0.unk-B8 = (s64) saved_reg_s3;
    }
    arg_sp0.unk-B8 = (s64) saved_reg_s3;
    temp_sp = sp - (((var_v0 * 8) + 0xF) & ~0xF);
    if (temp_sp != NULL) {
        arg_sp0.unk-40 = (s64) saved_reg_s1;
        var_s1 = temp_sp;
        if (arg1 > 0) {
            var_t2 = 0;
            var_t3 = arg2;
loop_20:
            temp_v0 = var_t3->unk8;
            var_a3 = (void *)1;
            if (temp_v0 != NULL) {
                var_a3 = temp_v0->unk4;
            }
            var_a6 = (s32) var_a3;
            if (temp_v0 != NULL) {
                var_a7 = temp_v0 + 8;
            } else {
                var_a7 = var_t3;
            }
            var_t1 = 0;
            var_v0_2 = var_a7;
            if (var_a3 != NULL) {
                var_t0 = var_s1;
loop_27:
                var_a3 = NULL;
                var_a7 = (void *) var_v0_2->unk2;
                var_t0->unk6 = var_t2;
                var_t0->unk0 = var_v0_2;
                var_t1 += 1;
loop_28:
                var_a3 += 1;
                var_a6 -= 1;
                var_v0_2 += 8;
                if (var_a6 != 0) {
                    var_a5 = var_v0_2->unk2;
                    if (var_a5 == var_a7) {
                        var_a3 += 1;
                        var_a6 -= 1;
                        var_v0_2 += 8;
                        if ((var_a6 != 0) && (var_v0_2->unk2 == var_a7)) {
                            var_a3 += 1;
                            var_a6 -= 1;
                            var_v0_2 += 8;
                            if (var_a6 != 0) {
                                if (var_v0_2->unk2 != var_a7) {

                                } else {
                                    goto loop_28;
                                }
                            }
                        }
                    }
                }
                var_t0 += 8;
                var_t0->unk-4 = (s16) var_a3;
                if (var_a6 != 0) {
                    goto loop_27;
                }
            }
            var_t3 += 0xC;
            var_a4 = var_t1 * 8;
            var_t2 += 1;
            var_s1 += var_a4;
            if (var_t2 != arg1) {
                goto loop_20;
            }
        }
        arg_sp0.unk-A8 = (s64) saved_reg_s4;
        arg_sp0.unk-50 = (s64) saved_reg_ra;
        temp_v0_2 = Xalloc(0x18, (s16) var_a3, var_a4, var_a5, var_a6, (s16) var_a7);
        arg_sp0.unk-90 = temp_v0_2;
        if (temp_v0_2 == 0) {
            return 0;
        }
        temp_a6 = arg_sp0.unk-90;
        temp_a6->unk0 = 0;
        temp_a6->unk14 = 0;
        temp_a6->unk10 = 0;
        temp_a6->unk8 = 0;
        temp_a6->unk6 = 0;
        temp_a6->unk4 = 0x10;
        temp_a6->unk2 = (s16) arg0->unkA;
        temp_v0_3 = Xalloc(0x40);
        arg_sp0.unk-90->unkC = temp_v0_3;
        if (temp_v0_3 != 0) {
            arg_sp0.unk-48 = (s64) saved_reg_s0;
            var_s0 = arg_sp0.unk-90;
            if ((u32) temp_sp < (u32) var_s1) {
                arg_sp0.unk-98 = temp_s5_2;
                arg_sp0.unk-88 = (s64) arg0;
                var_s2 = temp_sp;
                arg_sp0.unk-80 = var_s6;
loop_46:
                temp_a1 = var_s2->unk0->unk2;
                if ((var_s0 == 0) || (temp_a1 < *var_s0)) {
                    var_s0 = arg_sp0.unk-90;
                }
                if (temp_a1 >= var_s0->unk2) {
                    do {
                        var_s0 = (s64) var_s0->unk10;
                    } while (temp_a1 >= var_s0->unk2);
                }
                if (var_s0->unk0 == temp_a1) {
                    goto block_52;
                }
                temp_v0_4 = Xalloc(0x18, temp_a1);
                if (temp_v0_4 == 0) {
                    goto block_71;
                }
                temp_v0_4->unk0 = temp_a1;
                temp_v0_4->unk2 = (s16) var_s0->unk2;
                var_s0->unk2 = temp_a1;
                temp_v0_4->unk4 = (s16) var_s0->unk4;
                temp_v0_4->unk6 = (s16) var_s0->unk6;
                temp_v0_4->unk14 = (s32) var_s0;
                temp_v0_4->unk8 = (s16) var_s0->unk8;
                temp_v0_4->unk10 = (void *) var_s0->unk10;
                temp_v0_5 = var_s0->unk10;
                if (temp_v0_5 != NULL) {
                    temp_v0_5->unk14 = (s32) temp_v0_4;
                }
                var_s0->unk10 = (void *) temp_v0_4;
                temp_v0_6 = Xalloc(temp_v0_4->unk4 * 4);
                temp_v0_4->unkC = temp_v0_6;
                if (temp_v0_6 == 0) {
                    Xfree((void *) temp_v0_4);
                    var_v0_3 = 0;
                } else {
                    memmove(temp_v0_6, var_s0->unkC, temp_v0_4->unk6 * 4);
                    var_v0_3 = temp_v0_4;
                }
                if (var_v0_3 != 0) {
                    var_s0 = (s64) var_s0->unk10;
block_52:
                    if (var_s0 != 0) {
                        if (var_s2->unk0->unk6 >= var_s0->unk2) {
loop_54:
                            temp_a3 = var_s0->unk4;
                            var_v0_4 = var_s0->unkC;
                            if (temp_a3 != var_s0->unk6) {
                                goto block_55;
                            }
                            temp_a5 = (s64) ((temp_a3 + 0x10) << 0x30) >> 0x30;
                            var_s0->unk4 = (s16) temp_a5;
                            var_v0_4 = Xrealloc(var_v0_4, temp_a5 * 4);
                            var_s0->unkC = var_v0_4;
                            if (var_v0_4 == 0) {
                                var_s0_2 = arg_sp0.unk-90;
                                do {
                                    temp_s1 = var_s0_2->unk10;
                                    Xfree(var_s0_2->unkC);
                                    Xfree((void *) var_s0_2);
                                    var_s0_2 = (s64) temp_s1;
                                } while (temp_s1 != 0);
                                return 0;
                            }
block_55:
                            *((var_s0->unk6 * 4) + var_v0_4) = var_s2;
                            var_s0->unk6 = (s16) (var_s0->unk6 + 1);
                            var_s0->unk8 = (s16) (var_s2->unk4 + var_s0->unk8);
                            var_s0 = (s64) var_s0->unk10;
                            if (var_s0 != 0) {
                                if (var_s2->unk0->unk6 < var_s0->unk2) {
                                    goto block_57;
                                }
                                goto loop_54;
                            }
                            goto block_45;
                        }
block_57:
                        if (var_s0 != 0) {
                            temp_a1_2 = var_s2->unk0->unk6;
                            if (var_s0->unk0 != temp_a1_2) {
                                temp_v0_7 = Xalloc(0x18, temp_a1_2);
                                if (temp_v0_7 == 0) {
                                    goto block_61;
                                }
                                temp_v0_7->unk0 = temp_a1_2;
                                temp_v0_7->unk2 = (s16) var_s0->unk2;
                                var_s0->unk2 = temp_a1_2;
                                temp_v0_7->unk4 = (s16) var_s0->unk4;
                                temp_v0_7->unk6 = (s16) var_s0->unk6;
                                temp_v0_7->unk14 = (s32) var_s0;
                                temp_v0_7->unk8 = (s16) var_s0->unk8;
                                temp_v0_7->unk10 = (void *) var_s0->unk10;
                                temp_v0_8 = var_s0->unk10;
                                if (temp_v0_8 != NULL) {
                                    temp_v0_8->unk14 = (s32) temp_v0_7;
                                }
                                var_s0->unk10 = (void *) temp_v0_7;
                                temp_v0_9 = Xalloc(temp_v0_7->unk4 * 4);
                                temp_v0_7->unkC = temp_v0_9;
                                if (temp_v0_9 == 0) {
                                    Xfree((void *) temp_v0_7);
                                    var_v0_5 = 0;
                                } else {
                                    memmove(temp_v0_9, var_s0->unkC, temp_v0_7->unk6 * 4);
                                    var_v0_5 = temp_v0_7;
                                }
                                if (var_v0_5 != 0) {
                                    temp_a3_2 = var_s0->unk4;
                                    var_v0_6 = var_s0->unkC;
                                    if (temp_a3_2 != var_s0->unk6) {
                                        goto block_44;
                                    }
                                    temp_a6_2 = (s64) ((temp_a3_2 + 0x10) << 0x30) >> 0x30;
                                    var_s0->unk4 = (s16) temp_a6_2;
                                    var_v0_6 = Xrealloc(var_v0_6, temp_a6_2 * 4);
                                    var_s0->unkC = var_v0_6;
                                    if (var_v0_6 == 0) {
                                        var_s0_3 = arg_sp0.unk-90;
                                        do {
                                            temp_s1_2 = var_s0_3->unk10;
                                            Xfree(var_s0_3->unkC);
                                            Xfree((void *) var_s0_3);
                                            var_s0_3 = (s64) temp_s1_2;
                                        } while (temp_s1_2 != 0);
                                        return 0;
                                    }
block_44:
                                    *((var_s0->unk6 * 4) + var_v0_6) = var_s2;
                                    var_s0->unk6 = (s16) (var_s0->unk6 + 1);
                                    var_s0->unk8 = (s16) (var_s2->unk4 + var_s0->unk8);
                                    goto block_45;
                                }
block_61:
                                var_s0_4 = arg_sp0.unk-90;
                                do {
                                    temp_s1_3 = var_s0_4->unk10;
                                    Xfree(var_s0_4->unkC);
                                    Xfree((void *) var_s0_4);
                                    var_s0_4 = (s64) temp_s1_3;
                                } while (temp_s1_3 != 0);
                                return 0;
                            }
                        }
                        goto block_45;
                    }
block_45:
                    var_s2 += 8;
                    if ((u32) var_s2 < (u32) var_s1) {
                        goto loop_46;
                    }
                    goto block_87;
                }
block_71:
                var_s0_5 = arg_sp0.unk-90;
                do {
                    temp_s1_4 = var_s0_5->unk10;
                    Xfree(var_s0_5->unkC);
                    Xfree((void *) var_s0_5);
                    var_s0_5 = (s64) temp_s1_4;
                } while (temp_s1_4 != 0);
                return 0;
            }
            arg_sp0.unk-98 = temp_s5_2;
            arg_sp0.unk-88 = (s64) arg0;
            arg_sp0.unk-80 = var_s6;
block_87:
            temp_v0_10 = temp_s7->unk350;
            if (temp_v0_10 & 1) {
                var_s4 = 0x1400;
                var_s6_2 = 0;
                arg_sp0.unk-78 = 0x7FF0;
                temp_s7->unk350 = (s32) (temp_v0_10 & ~1);
            } else {
                var_s4 = 0x8000;
                var_s6_2 = 1;
                arg_sp0.unk-78 = 0x1410;
                temp_s7->unk350 = (s32) (temp_v0_10 | 1);
            }
            var_sp = temp_sp - (((arg_sp0.unk-88->unk8 * 2) + 0x19) & ~0xF);
            temp_s5_3 = var_sp;
            if (var_sp != NULL) {
                var_s7 = NULL;
                var_s1_2 = arg_sp0.unk-90;
                var_t9 = temp_s5_3 + 2;
loop_91:
                var_s0_6 = 0;
                var_t1_2 = var_t9;
                var_ra = 0;
                if (var_s1_2->unk6 > 0) {
                    var_t8 = 0;
loop_94:
                    var_ra += 1;
                    temp_a3_3 = *(var_s1_2->unkC + var_t8);
                    var_a7_2 = 0;
                    var_t8 += 4;
                    temp_s2 = temp_a3_3->unk4;
                    temp_t3 = temp_a3_3->unk6;
                    var_a3_2 = temp_a3_3->unk0;
                    if (temp_s2 > 0) {
                        temp_t2 = temp_s2 - 1 + 1;
                        if (temp_t2 & 1) {
                            temp_a6_3 = *var_a3_2;
                            var_a7_2 = 1;
                            if (temp_a6_3 < arg_sp0.unk-A0) {
                                var_a3_2 += 8;
                                var_t1_2 += 2;
                                var_t1_2->unk-2 = (s16) ((temp_a6_3 << 5) | temp_t3);
                                var_s0_6 = (s64) ((var_s0_6 + 1) << 0x30) >> 0x30;
                            }
                        }
                        if ((temp_t2 >> 1) == 0) {

                        } else {
loop_107:
                            temp_a6_4 = *var_a3_2;
                            var_a7_2 += 2;
                            if (temp_a6_4 < arg_sp0.unk-A0) {
                                var_a3_2 += 8;
                                var_t1_2 += 2;
                                var_t1_2->unk-2 = (s16) ((temp_a6_4 << 5) | temp_t3);
                                var_s0_6 = (s64) ((var_s0_6 + 1) << 0x30) >> 0x30;
                            }
                            temp_a6_5 = *var_a3_2;
                            if (temp_a6_5 < arg_sp0.unk-A0) {
                                var_a3_2 += 8;
                                var_t1_2 += 2;
                                var_t1_2->unk-2 = (s16) ((temp_a6_5 << 5) | temp_t3);
                                var_s0_6 = (s64) ((var_s0_6 + 1) << 0x30) >> 0x30;
                            }
                            if (var_a7_2 != temp_t2) {
                                goto loop_107;
                            }
                        }
                    }
                    var_at = var_s0_6 < 2;
                    if (var_ra < var_s1_2->unk6) {
                        goto loop_94;
                    }
                } else {
                    var_at = 0 < 2;
                }
                if (var_at == 0) {
                    arg_sp0.unk-38 = (s64) var_t9;
                    expvc1Init((void *) arg_sp0.unk-38, (s16) var_s0_6);
                    var_t9 = (void *) arg_sp0.unk-38;
                }
                var_a1 = temp_s5_3;
                var_t2_2 = var_s1_2->unk2;
                temp_v0_11 = arg_sp0.unk-88->unkA;
                var_a3_3 = 0;
                var_a6_3 = temp_s5_3;
                temp_t8 = var_s0_6 + 1;
                if (temp_v0_11 == var_t2_2) {
                    var_t2_2 -= 1;
                    goto block_113;
                }
                if ((arg_sp0.unk-80 != 0) && ((temp_v0_11 - 2) == var_t2_2)) {
                    var_sp -= ((arg_sp0.unk-88->unk8 * 2) + 0x19) & ~0xF;
                    var_s7 = var_sp;
                    if (var_sp != NULL) {
                        var_a7_3 = var_sp;
                        if ((s32) *temp_s5_3 >= 0) {
                            do {
                                *var_a7_3 = *var_a6_3;
                                var_a6_3 += 2;
                                var_a3_3 += 1;
                                var_a7_3 += 2;
                            } while ((s32) *temp_s5_3 >= var_a3_3);
                        }
                        goto block_113;
                    }
                    var_s0_7 = arg_sp0.unk-90;
                    do {
                        temp_s1_5 = var_s0_7->unk10;
                        Xfree(var_s0_7->unkC);
                        Xfree((void *) var_s0_7);
                        var_s0_7 = (s64) temp_s1_5;
                    } while (temp_s1_5 != 0);
                    return 0;
                }
block_113:
                *temp_s5_3 = (u16) var_s0_6;
                temp_v0_12 = temp_t8 * 2;
                if (var_s6_2 != 0) {
                    var_s4 -= temp_v0_12;
                    var_v0_7 = temp_t8 & 3;
                    if (var_s4 >= arg_sp0.unk-78) {
                        temp_a4 = arg_sp0.unk-98;
                        temp_a4->unk-3FAC = (s8) (var_s4 >> 8);
                        temp_a4->unk-3FB0 = var_s4;
                        if (var_s0_6 >= 0) {
                            if (var_v0_7 != 0) {
                                do {
                                    var_a1 += 2;
                                    var_v0_7 -= 1;
                                    arg_sp0.unk-98->unk-3FB8 = (u16) var_a1->unk-2;
                                } while (var_v0_7 != 0);
                            }
                            temp_a2 = arg_sp0.unk-98;
                            temp_a6_6 = temp_t8 >> 2;
                            var_v0_8 = var_a1;
                            if (temp_a6_6 != 0) {
                                temp_a6_7 = arg_sp0.unk-98;
                                if (temp_a6_6 >= 2) {
                                    var_at_2 = var_v0_8->unk0;
                                    do {
                                        temp_a2->unk-3FB8 = var_at_2;
                                        temp_a2->unk-3FB8 = (u16) var_v0_8->unk2;
                                        temp_a2->unk-3FB8 = (u16) var_v0_8->unk4;
                                        temp_at = var_v0_8->unk6;
                                        var_v0_8 += 8;
                                        temp_a2->unk-3FB8 = temp_at;
                                        var_at_2 = var_v0_8->unk0;
                                    } while (var_v0_8 != ((temp_s5_3 + (temp_t8 * 2)) - 8));
                                    temp_a6_7->unk-3FB8 = var_at_2;
                                    temp_a6_7->unk-3FB8 = (u16) var_v0_8->unk2;
                                    temp_a6_7->unk-3FB8 = (u16) var_v0_8->unk4;
                                    temp_a6_7->unk-3FB8 = (u16) var_v0_8->unk6;
                                } else {
                                    temp_at_2 = arg_sp0.unk-98;
                                    temp_at_2->unk-3FB8 = (u16) var_v0_8->unk0;
                                    temp_at_2->unk-3FB8 = (u16) var_v0_8->unk2;
                                    temp_at_2->unk-3FB8 = (u16) var_v0_8->unk4;
                                    temp_at_2->unk-3FB8 = (u16) var_v0_8->unk6;
                                }
                            }
                        }
                        temp_a3_4 = arg_sp0.unk-88->unk74;
                        temp_a1_3 = temp_a3_4->unkDC;
                        temp_at_3 = arg_sp0.unk-98;
                        temp_v0_13 = var_s1_2->unk0;
                        if (temp_a1_3 != 0) {
                            var_t1_3 = temp_a3_4->unkE2;
                            if (temp_a1_3 != 1) {
                                var_t3_2 = temp_v0_13;
                                var_v0_9 = var_t1_3;
                                if ((s32) var_t1_3 < var_t2_2) {

                                } else {
                                    var_v0_9 = (u16) var_t2_2;
                                }
                                var_a6_4 = var_v0_9;
                            } else {
                                var_a1_2 = var_t1_3;
                                if (temp_v0_13 >= (s32) var_t1_3) {
                                    var_a1_2 = (u16) temp_v0_13;
                                }
                                var_a6_4 = (u16) var_t2_2;
                                var_t3_2 = (s16) var_a1_2;
                                var_t1_3 = (u16) -(s32) var_t1_3;
                            }
                            temp_t2_2 = var_a6_4 - var_t3_2;
                            var_a1_3 = temp_t2_2 & 3;
                            if (var_t3_2 < (s32) var_a6_4) {
                                temp_a5_2 = (var_t3_2 * 2) + 0xB00;
                                var_v0_10 = 0;
                                temp_at_3->unk-3FAC = (s8) (temp_a5_2 >> 8);
                                temp_at_3->unk-3FB0 = temp_a5_2;
                                if (var_a1_3 != 0) {
                                    do {
                                        var_v0_10 += 1;
                                        var_a1_3 -= 1;
                                        arg_sp0.unk-98->unk-3FB8 = (u16) var_s4;
                                    } while (var_a1_3 != 0);
                                }
                                temp_a2_2 = arg_sp0.unk-98;
                                temp_a6_8 = temp_t2_2 >> 2;
                                if (temp_a6_8 != 0) {
                                    temp_a4_2 = arg_sp0.unk-98;
                                    if (temp_a6_8 >= 2) {
                                        var_v1 = var_v0_10 + 4;
                                        temp_a2_2->unk-3FB8 = (u16) var_s4;
                                        temp_a2_2->unk-3FB8 = (u16) var_s4;
loop_141:
                                        temp_a2_2->unk-3FB8 = (u16) var_s4;
                                        temp_a2_2->unk-3FB8 = (u16) var_s4;
                                        temp_a2_2->unk-3FB8 = (u16) var_s4;
                                        temp_a2_2->unk-3FB8 = (u16) var_s4;
                                        if (var_v1 != (temp_t2_2 - 4)) {
                                            temp_a2_2->unk-3FB8 = (u16) var_s4;
                                            temp_a2_2->unk-3FB8 = (u16) var_s4;
                                            temp_a2_2->unk-3FB8 = (u16) var_s4;
                                            temp_a2_2->unk-3FB8 = (u16) var_s4;
                                            if (var_v1 != (temp_t2_2 - 8)) {
                                                temp_a2_2->unk-3FB8 = (u16) var_s4;
                                                temp_a2_2->unk-3FB8 = (u16) var_s4;
                                                temp_a2_2->unk-3FB8 = (u16) var_s4;
                                                temp_a2_2->unk-3FB8 = (u16) var_s4;
                                                if (var_v1 != (temp_t2_2 - 0xC)) {
                                                    temp_a2_2->unk-3FB8 = (u16) var_s4;
                                                    temp_a2_2->unk-3FB8 = (u16) var_s4;
                                                    temp_a2_2->unk-3FB8 = (u16) var_s4;
                                                    var_v1 += 0x10;
                                                    temp_a2_2->unk-3FB8 = (u16) var_s4;
                                                    if (var_v1 != temp_t2_2) {
                                                        goto loop_141;
                                                    }
                                                }
                                            }
                                        }
                                        temp_a4_2->unk-3FB8 = (u16) var_s4;
                                        temp_a4_2->unk-3FB8 = (u16) var_s4;
                                    } else {
                                        temp_v1 = arg_sp0.unk-98;
                                        temp_v1->unk-3FB8 = (u16) var_s4;
                                        temp_v1->unk-3FB8 = (u16) var_s4;
                                        temp_v1->unk-3FB8 = (u16) var_s4;
                                        temp_v1->unk-3FB8 = (u16) var_s4;
                                    }
                                }
                                var_v0_11 = 0;
                                var_a6_5 = temp_t2_2 & 3;
                                temp_at_4 = arg_sp0.unk-98;
                                temp_a5_3 = ((var_t1_3 + var_t3_2) * 2) + 0xB00;
                                temp_at_4->unk-3FAC = (s8) (temp_a5_3 >> 8);
                                temp_at_4->unk-3FB0 = temp_a5_3;
                                if (var_a6_5 != 0) {
                                    do {
                                        var_v0_11 += 1;
                                        var_a6_5 -= 1;
                                        arg_sp0.unk-98->unk-3FB8 = (u16) var_s4;
                                    } while (var_a6_5 != 0);
                                }
                                temp_a2_3 = arg_sp0.unk-98;
                                temp_a6_9 = temp_t2_2 >> 2;
                                if (temp_a6_9 != 0) {
                                    if (temp_a6_9 >= 2) {
                                        var_v1_2 = var_v0_11 + 4;
                                        temp_a2_3->unk-3FB8 = (u16) var_s4;
                                        temp_a2_3->unk-3FB8 = (u16) var_s4;
loop_151:
                                        temp_a2_3->unk-3FB8 = (u16) var_s4;
                                        temp_a2_3->unk-3FB8 = (u16) var_s4;
                                        temp_a2_3->unk-3FB8 = (u16) var_s4;
                                        temp_a2_3->unk-3FB8 = (u16) var_s4;
                                        if (var_v1_2 != (temp_t2_2 - 4)) {
                                            temp_a2_3->unk-3FB8 = (u16) var_s4;
                                            temp_a2_3->unk-3FB8 = (u16) var_s4;
                                            temp_a2_3->unk-3FB8 = (u16) var_s4;
                                            temp_a2_3->unk-3FB8 = (u16) var_s4;
                                            if (var_v1_2 != (temp_t2_2 - 8)) {
                                                temp_a2_3->unk-3FB8 = (u16) var_s4;
                                                temp_a2_3->unk-3FB8 = (u16) var_s4;
                                                temp_a2_3->unk-3FB8 = (u16) var_s4;
                                                temp_a2_3->unk-3FB8 = (u16) var_s4;
                                                if (var_v1_2 != (temp_t2_2 - 0xC)) {
                                                    temp_a2_3->unk-3FB8 = (u16) var_s4;
                                                    temp_a2_3->unk-3FB8 = (u16) var_s4;
                                                    temp_a2_3->unk-3FB8 = (u16) var_s4;
                                                    var_v1_2 += 0x10;
                                                    temp_a2_3->unk-3FB8 = (u16) var_s4;
                                                    if (var_v1_2 != temp_t2_2) {
                                                        goto loop_151;
                                                    }
                                                }
                                            }
                                        }
                                        arg_sp0.unk-98->unk-3FB8 = (u16) var_s4;
                                    } else {
                                        temp_a4_3 = arg_sp0.unk-98;
                                        temp_a4_3->unk-3FB8 = (u16) var_s4;
                                        temp_a4_3->unk-3FB8 = (u16) var_s4;
                                        temp_a4_3->unk-3FB8 = (u16) var_s4;
                                    }
                                    ((void *) arg_sp0.unk-98)->unk-3FB8 = (s16) var_s4;
                                }
                            }
                        } else {
                            temp_at_5 = arg_sp0.unk-98;
                            temp_a6_10 = (temp_v0_13 * 2) + 0xB00;
                            temp_at_5->unk-3FAC = (s8) (temp_a6_10 >> 8);
                            temp_at_5->unk-3FB0 = temp_a6_10;
                            temp_a6_11 = var_s1_2->unk0;
                            var_v0_12 = 0;
                            if (temp_a6_11 < var_t2_2) {
                                temp_a3_5 = var_t2_2 - temp_a6_11;
                                var_a1_4 = temp_a3_5 & 3;
                                if (var_a1_4 != 0) {
                                    do {
                                        var_v0_12 += 1;
                                        var_a1_4 -= 1;
                                        arg_sp0.unk-98->unk-3FB8 = (u16) var_s4;
                                    } while (var_a1_4 != 0);
                                }
                                temp_a6_12 = temp_a3_5 >> 2;
                                if (temp_a6_12 != 0) {
                                    temp_a2_4 = arg_sp0.unk-98;
                                    if (temp_a6_12 >= 2) {
                                        var_v1_3 = var_v0_12 + 4;
                                        temp_a4_4 = arg_sp0.unk-98;
                                        temp_a2_4->unk-3FB8 = (u16) var_s4;
                                        temp_a2_4->unk-3FB8 = (u16) var_s4;
loop_222:
                                        temp_a2_4->unk-3FB8 = (u16) var_s4;
                                        temp_a2_4->unk-3FB8 = (u16) var_s4;
                                        temp_a2_4->unk-3FB8 = (u16) var_s4;
                                        temp_a2_4->unk-3FB8 = (u16) var_s4;
                                        if (var_v1_3 != (temp_a3_5 - 4)) {
                                            temp_a2_4->unk-3FB8 = (u16) var_s4;
                                            temp_a2_4->unk-3FB8 = (u16) var_s4;
                                            temp_a2_4->unk-3FB8 = (u16) var_s4;
                                            temp_a2_4->unk-3FB8 = (u16) var_s4;
                                            if (var_v1_3 != (temp_a3_5 - 8)) {
                                                temp_a2_4->unk-3FB8 = (u16) var_s4;
                                                temp_a2_4->unk-3FB8 = (u16) var_s4;
                                                temp_a2_4->unk-3FB8 = (u16) var_s4;
                                                temp_a2_4->unk-3FB8 = (u16) var_s4;
                                                if (var_v1_3 != (temp_a3_5 - 0xC)) {
                                                    temp_a2_4->unk-3FB8 = (u16) var_s4;
                                                    temp_a2_4->unk-3FB8 = (u16) var_s4;
                                                    temp_a2_4->unk-3FB8 = (u16) var_s4;
                                                    var_v1_3 += 0x10;
                                                    temp_a2_4->unk-3FB8 = (u16) var_s4;
                                                    if (var_v1_3 != temp_a3_5) {
                                                        goto loop_222;
                                                    }
                                                }
                                            }
                                        }
                                        temp_a4_4->unk-3FB8 = (u16) var_s4;
                                        temp_a4_4->unk-3FB8 = (u16) var_s4;
                                    } else {
                                        temp_at_6 = arg_sp0.unk-98;
                                        temp_at_6->unk-3FB8 = (u16) var_s4;
                                        temp_at_6->unk-3FB8 = (u16) var_s4;
                                        temp_at_6->unk-3FB8 = (u16) var_s4;
                                        temp_at_6->unk-3FB8 = (u16) var_s4;
                                    }
                                }
                            }
                        }
                        goto block_157;
                    }
                    var_s0_8 = arg_sp0.unk-90;
                    do {
                        temp_s1_6 = var_s0_8->unk10;
                        Xfree(var_s0_8->unkC);
                        Xfree((void *) var_s0_8);
                        var_s0_8 = (s64) temp_s1_6;
                    } while (temp_s1_6 != 0);
                    return 0;
                }
                temp_s2_2 = temp_v0_12 + var_s4;
                var_v0_13 = temp_t8 & 3;
                temp_a4_5 = arg_sp0.unk-98;
                if (arg_sp0.unk-78 >= temp_s2_2) {
                    temp_a4_5->unk-3FAC = (s8) (var_s4 >> 8);
                    temp_a4_5->unk-3FB0 = var_s4;
                    if (var_s0_6 >= 0) {
                        var_a1_5 = temp_s5_3;
                        if (var_v0_13 != 0) {
                            do {
                                var_a1_5 += 2;
                                var_v0_13 -= 1;
                                arg_sp0.unk-98->unk-3FB8 = (u16) var_a1_5->unk-2;
                            } while (var_v0_13 != 0);
                        }
                        temp_a2_5 = arg_sp0.unk-98;
                        temp_a6_13 = temp_t8 >> 2;
                        var_v0_14 = var_a1_5;
                        if (temp_a6_13 != 0) {
                            temp_a6_14 = arg_sp0.unk-98;
                            if (temp_a6_13 >= 2) {
                                var_at_3 = var_v0_14->unk0;
                                do {
                                    temp_a2_5->unk-3FB8 = var_at_3;
                                    temp_a2_5->unk-3FB8 = (u16) var_v0_14->unk2;
                                    temp_a2_5->unk-3FB8 = (u16) var_v0_14->unk4;
                                    temp_at_7 = var_v0_14->unk6;
                                    var_v0_14 += 8;
                                    temp_a2_5->unk-3FB8 = temp_at_7;
                                    var_at_3 = var_v0_14->unk0;
                                } while (var_v0_14 != ((temp_s5_3 + (temp_t8 * 2)) - 8));
                                temp_a6_14->unk-3FB8 = var_at_3;
                                temp_a6_14->unk-3FB8 = (u16) var_v0_14->unk2;
                                temp_a6_14->unk-3FB8 = (u16) var_v0_14->unk4;
                                temp_a6_14->unk-3FB8 = (u16) var_v0_14->unk6;
                            } else {
                                temp_at_8 = arg_sp0.unk-98;
                                temp_at_8->unk-3FB8 = (u16) var_v0_14->unk0;
                                temp_at_8->unk-3FB8 = (u16) var_v0_14->unk2;
                                temp_at_8->unk-3FB8 = (u16) var_v0_14->unk4;
                                temp_at_8->unk-3FB8 = (u16) var_v0_14->unk6;
                            }
                        }
                    }
                    temp_a3_6 = arg_sp0.unk-88->unk74;
                    temp_a1_4 = temp_a3_6->unkDC;
                    temp_v0_14 = var_s1_2->unk0;
                    if (temp_a1_4 != 0) {
                        var_t3_3 = temp_a3_6->unkE2;
                        if (temp_a1_4 != 1) {
                            var_ra_2 = temp_v0_14;
                            var_v0_15 = var_t3_3;
                            if ((s32) var_t3_3 < var_t2_2) {

                            } else {
                                var_v0_15 = (u16) var_t2_2;
                            }
                            var_a6_6 = var_v0_15;
                        } else {
                            var_a1_6 = temp_v0_14;
                            if (temp_v0_14 < (s32) var_t3_3) {
                                var_a1_6 = (s16) var_t3_3;
                            }
                            var_ra_2 = var_a1_6;
                            var_a6_6 = (u16) var_t2_2;
                            var_t3_3 = (u16) -(s32) var_t3_3;
                        }
                        temp_at_9 = arg_sp0.unk-98;
                        temp_t2_3 = var_a6_6 - var_ra_2;
                        var_a1_7 = temp_t2_3 & 3;
                        if (var_ra_2 < (s32) var_a6_6) {
                            var_v0_16 = 0;
                            temp_a5_4 = (var_ra_2 * 2) + 0xB00;
                            temp_at_9->unk-3FAC = (s8) (temp_a5_4 >> 8);
                            temp_at_9->unk-3FB0 = temp_a5_4;
                            if (var_a1_7 != 0) {
                                do {
                                    var_v0_16 += 1;
                                    var_a1_7 -= 1;
                                    arg_sp0.unk-98->unk-3FB8 = (u16) var_s4;
                                } while (var_a1_7 != 0);
                            }
                            temp_a1_5 = temp_t2_3 >> 2;
                            if (temp_a1_5 != 0) {
                                temp_a2_6 = arg_sp0.unk-98;
                                if (temp_a1_5 >= 2) {
                                    var_v1_4 = var_v0_16 + 4;
                                    temp_a4_6 = arg_sp0.unk-98;
                                    temp_a2_6->unk-3FB8 = (u16) var_s4;
                                    temp_a2_6->unk-3FB8 = (u16) var_s4;
loop_199:
                                    temp_a2_6->unk-3FB8 = (u16) var_s4;
                                    temp_a2_6->unk-3FB8 = (u16) var_s4;
                                    temp_a2_6->unk-3FB8 = (u16) var_s4;
                                    temp_a2_6->unk-3FB8 = (u16) var_s4;
                                    if (var_v1_4 != (temp_t2_3 - 4)) {
                                        temp_a2_6->unk-3FB8 = (u16) var_s4;
                                        temp_a2_6->unk-3FB8 = (u16) var_s4;
                                        temp_a2_6->unk-3FB8 = (u16) var_s4;
                                        temp_a2_6->unk-3FB8 = (u16) var_s4;
                                        if (var_v1_4 != (temp_t2_3 - 8)) {
                                            temp_a2_6->unk-3FB8 = (u16) var_s4;
                                            temp_a2_6->unk-3FB8 = (u16) var_s4;
                                            temp_a2_6->unk-3FB8 = (u16) var_s4;
                                            temp_a2_6->unk-3FB8 = (u16) var_s4;
                                            if (var_v1_4 != (temp_t2_3 - 0xC)) {
                                                temp_a2_6->unk-3FB8 = (u16) var_s4;
                                                temp_a2_6->unk-3FB8 = (u16) var_s4;
                                                temp_a2_6->unk-3FB8 = (u16) var_s4;
                                                var_v1_4 += 0x10;
                                                temp_a2_6->unk-3FB8 = (u16) var_s4;
                                                if (var_v1_4 != temp_t2_3) {
                                                    goto loop_199;
                                                }
                                            }
                                        }
                                    }
                                    temp_a4_6->unk-3FB8 = (u16) var_s4;
                                    temp_a4_6->unk-3FB8 = (u16) var_s4;
                                } else {
                                    temp_v1_2 = arg_sp0.unk-98;
                                    temp_v1_2->unk-3FB8 = (u16) var_s4;
                                    temp_v1_2->unk-3FB8 = (u16) var_s4;
                                    temp_v1_2->unk-3FB8 = (u16) var_s4;
                                    temp_v1_2->unk-3FB8 = (u16) var_s4;
                                }
                            }
                            temp_a5_5 = ((var_t3_3 + var_ra_2) * 2) + 0xB00;
                            var_v0_17 = 0;
                            temp_at_10 = arg_sp0.unk-98;
                            var_a6_7 = temp_t2_3 & 3;
                            temp_at_10->unk-3FAC = (s8) (temp_a5_5 >> 8);
                            temp_at_10->unk-3FB0 = temp_a5_5;
                            if (var_a6_7 != 0) {
                                do {
                                    var_v0_17 += 1;
                                    var_a6_7 -= 1;
                                    arg_sp0.unk-98->unk-3FB8 = (u16) var_s4;
                                } while (var_a6_7 != 0);
                            }
                            temp_a2_7 = arg_sp0.unk-98;
                            temp_a6_15 = temp_t2_3 >> 2;
                            if (temp_a6_15 != 0) {
                                if (temp_a6_15 >= 2) {
                                    var_v1_5 = var_v0_17 + 4;
                                    temp_a2_7->unk-3FB8 = (u16) var_s4;
                                    temp_a2_7->unk-3FB8 = (u16) var_s4;
loop_209:
                                    temp_a2_7->unk-3FB8 = (u16) var_s4;
                                    temp_a2_7->unk-3FB8 = (u16) var_s4;
                                    temp_a2_7->unk-3FB8 = (u16) var_s4;
                                    temp_a2_7->unk-3FB8 = (u16) var_s4;
                                    if (var_v1_5 != (temp_t2_3 - 4)) {
                                        temp_a2_7->unk-3FB8 = (u16) var_s4;
                                        temp_a2_7->unk-3FB8 = (u16) var_s4;
                                        temp_a2_7->unk-3FB8 = (u16) var_s4;
                                        temp_a2_7->unk-3FB8 = (u16) var_s4;
                                        if (var_v1_5 != (temp_t2_3 - 8)) {
                                            temp_a2_7->unk-3FB8 = (u16) var_s4;
                                            temp_a2_7->unk-3FB8 = (u16) var_s4;
                                            temp_a2_7->unk-3FB8 = (u16) var_s4;
                                            temp_a2_7->unk-3FB8 = (u16) var_s4;
                                            if (var_v1_5 != (temp_t2_3 - 0xC)) {
                                                temp_a2_7->unk-3FB8 = (u16) var_s4;
                                                temp_a2_7->unk-3FB8 = (u16) var_s4;
                                                temp_a2_7->unk-3FB8 = (u16) var_s4;
                                                var_v1_5 += 0x10;
                                                temp_a2_7->unk-3FB8 = (u16) var_s4;
                                                if (var_v1_5 != temp_t2_3) {
                                                    goto loop_209;
                                                }
                                            }
                                        }
                                    }
                                    arg_sp0.unk-98->unk-3FB8 = (u16) var_s4;
                                } else {
                                    temp_a4_7 = arg_sp0.unk-98;
                                    temp_a4_7->unk-3FB8 = (u16) var_s4;
                                    temp_a4_7->unk-3FB8 = (u16) var_s4;
                                    temp_a4_7->unk-3FB8 = (u16) var_s4;
                                }
                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (s16) var_s4;
                            }
                        }
                    } else {
                        temp_a5_6 = arg_sp0.unk-98;
                        temp_a4_8 = (temp_v0_14 * 2) + 0xB00;
                        temp_a5_6->unk-3FAC = (s8) (temp_a4_8 >> 8);
                        temp_a5_6->unk-3FB0 = temp_a4_8;
                        temp_a6_16 = var_s1_2->unk0;
                        var_v0_18 = 0;
                        if (temp_a6_16 < var_t2_2) {
                            temp_a3_7 = var_t2_2 - temp_a6_16;
                            var_a1_8 = temp_a3_7 & 3;
                            if (var_a1_8 != 0) {
                                do {
                                    var_v0_18 += 1;
                                    var_a1_8 -= 1;
                                    arg_sp0.unk-98->unk-3FB8 = (u16) var_s4;
                                } while (var_a1_8 != 0);
                            }
                            temp_a6_17 = temp_a3_7 >> 2;
                            if (temp_a6_17 != 0) {
                                if (temp_a6_17 >= 2) {
                                    temp_a2_8 = arg_sp0.unk-98;
                                    var_v1_6 = var_v0_18 + 4;
                                    temp_a2_8->unk-3FB8 = (u16) var_s4;
                                    temp_a2_8->unk-3FB8 = (u16) var_s4;
loop_285:
                                    temp_a2_8->unk-3FB8 = (u16) var_s4;
                                    temp_a2_8->unk-3FB8 = (u16) var_s4;
                                    temp_a2_8->unk-3FB8 = (u16) var_s4;
                                    temp_a2_8->unk-3FB8 = (u16) var_s4;
                                    if (var_v1_6 != (temp_a3_7 - 4)) {
                                        temp_a2_8->unk-3FB8 = (u16) var_s4;
                                        temp_a2_8->unk-3FB8 = (u16) var_s4;
                                        temp_a2_8->unk-3FB8 = (u16) var_s4;
                                        temp_a2_8->unk-3FB8 = (u16) var_s4;
                                        if (var_v1_6 != (temp_a3_7 - 8)) {
                                            temp_a2_8->unk-3FB8 = (u16) var_s4;
                                            temp_a2_8->unk-3FB8 = (u16) var_s4;
                                            temp_a2_8->unk-3FB8 = (u16) var_s4;
                                            temp_a2_8->unk-3FB8 = (u16) var_s4;
                                            if (var_v1_6 != (temp_a3_7 - 0xC)) {
                                                temp_a2_8->unk-3FB8 = (u16) var_s4;
                                                temp_a2_8->unk-3FB8 = (u16) var_s4;
                                                temp_a2_8->unk-3FB8 = (u16) var_s4;
                                                var_v1_6 += 0x10;
                                                temp_a2_8->unk-3FB8 = (u16) var_s4;
                                                if (var_v1_6 != temp_a3_7) {
                                                    goto loop_285;
                                                }
                                            }
                                        }
                                    }
                                    temp_v1_3 = arg_sp0.unk-98;
                                    temp_v1_3->unk-3FB8 = (u16) var_s4;
                                    temp_v1_3->unk-3FB8 = (u16) var_s4;
                                } else {
                                    temp_at_11 = arg_sp0.unk-98;
                                    temp_at_11->unk-3FB8 = (u16) var_s4;
                                    temp_at_11->unk-3FB8 = (u16) var_s4;
                                    temp_at_11->unk-3FB8 = (u16) var_s4;
                                    temp_at_11->unk-3FB8 = (u16) var_s4;
                                }
                            }
                        }
                    }
                    var_s4 = temp_s2_2;
block_157:
                    var_s1_2 = (s64) var_s1_2->unk10;
                    if (var_s1_2 == 0) {
                        var_a6_8 = temp_s5_3;
                        *temp_s5_3 += 4;
                        if ((var_s7 != NULL) && (*var_s7 += 4, (var_s7 != NULL))) {
                            var_t3_4 = 2;
                        } else {
                            var_t3_4 = 1;
                        }
                        var_t0_2 = 0;
                        if (var_t3_4 > 0) {
                            arg_sp0.unk-30 = (s64) (temp_t8 * 2);
                            temp_s2_3 = temp_t8 + 4;
                            var_t8_2 = (temp_s2_3 * 2) + var_s4;
loop_239:
                            var_a1_9 = var_a6_8;
                            if (var_s6_2 != 0) {
                                var_s4 -= temp_s2_3 * 2;
                                var_t8_2 -= temp_s2_3 * 2;
                                if (var_s4 >= arg_sp0.unk-78) {
                                    ((void *) arg_sp0.unk-98)->unk-3FAC = (s8) (var_s4 >> 8);
                                    ((void *) arg_sp0.unk-98)->unk-3FB0 = var_s4;
                                    if (temp_t8 > 0) {
                                        var_a2 = temp_t8 & 3;
                                        if (var_a2 != 0) {
                                            do {
                                                var_a1_9 += 2;
                                                var_a2 -= 1;
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_a1_9->unk-2;
                                            } while (var_a2 != 0);
                                        }
                                        temp_a2_9 = temp_t8 >> 2;
                                        var_v0_19 = var_a1_9;
                                        if (temp_a2_9 != 0) {
                                            if (temp_a2_9 >= 2) {
                                                var_at_4 = var_v0_19->unk0;
                                                do {
                                                    ((void *) arg_sp0.unk-98)->unk-3FB8 = var_at_4;
                                                    ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_19->unk2;
                                                    ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_19->unk4;
                                                    temp_at_12 = var_v0_19->unk6;
                                                    var_v0_19 += 8;
                                                    ((void *) arg_sp0.unk-98)->unk-3FB8 = temp_at_12;
                                                    var_at_4 = var_v0_19->unk0;
                                                } while (var_v0_19 != (((temp_t8 * 2) + var_a6_8) - 8));
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = var_at_4;
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_19->unk2;
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_19->unk4;
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_19->unk6;
                                            } else {
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_19->unk0;
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_19->unk2;
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_19->unk4;
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_19->unk6;
                                            }
                                        }
                                    }
                                    ((void *) arg_sp0.unk-98)->unk-3FB8 = 0U;
                                    ((void *) arg_sp0.unk-98)->unk-3FB8 = 0U;
                                    ((void *) arg_sp0.unk-98)->unk-3FB8 = 0U;
                                    ((void *) arg_sp0.unk-98)->unk-3FB8 = 0U;
                                    temp_at_13 = (((((void *) arg_sp0.unk-88)->unkA - var_t0_2) - 1) * 2) + 0xB00;
                                    ((void *) arg_sp0.unk-98)->unk-3FAC = (s8) (temp_at_13 >> 8);
                                    ((void *) arg_sp0.unk-98)->unk-3FB0 = temp_at_13;
                                    ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_s4;
                                    if (arg_sp0.unk-80 != 0) {
                                        if (var_t3_4 == 1) {
                                            temp_at_14 = ((((void *) arg_sp0.unk-88)->unkA - 2) * 2) + 0xB00;
                                            ((void *) arg_sp0.unk-98)->unk-3FAC = (s8) (temp_at_14 >> 8);
                                            ((void *) arg_sp0.unk-98)->unk-3FB0 = temp_at_14;
                                            ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_s4;
                                        }
                                    }
                                    goto block_238;
                                }
                                var_s0_9 = arg_sp0.unk-90;
                                do {
                                    temp_s1_7 = var_s0_9->unk10;
                                    Xfree(var_s0_9->unkC);
                                    Xfree((void *) var_s0_9);
                                    var_s0_9 = (s64) temp_s1_7;
                                } while (temp_s1_7 != 0);
                                return 0;
                            }
                            if (arg_sp0.unk-78 >= var_t8_2) {
                                ((void *) arg_sp0.unk-98)->unk-3FAC = (s8) (var_s4 >> 8);
                                ((void *) arg_sp0.unk-98)->unk-3FB0 = var_s4;
                                if (temp_t8 > 0) {
                                    var_a1_10 = var_a6_8;
                                    var_a2_2 = temp_t8 & 3;
                                    if (var_a2_2 != 0) {
                                        do {
                                            var_a1_10 += 2;
                                            var_a2_2 -= 1;
                                            ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_a1_10->unk-2;
                                        } while (var_a2_2 != 0);
                                    }
                                    temp_a2_10 = temp_t8 >> 2;
                                    var_v0_20 = var_a1_10;
                                    if (temp_a2_10 != 0) {
                                        if (temp_a2_10 >= 2) {
                                            var_at_5 = var_v0_20->unk0;
                                            do {
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = var_at_5;
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_20->unk2;
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_20->unk4;
                                                temp_at_15 = var_v0_20->unk6;
                                                var_v0_20 += 8;
                                                ((void *) arg_sp0.unk-98)->unk-3FB8 = temp_at_15;
                                                var_at_5 = var_v0_20->unk0;
                                            } while (var_v0_20 != ((arg_sp0.unk-30 + var_a6_8) - 8));
                                            ((void *) arg_sp0.unk-98)->unk-3FB8 = var_at_5;
                                            ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_20->unk2;
                                            ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_20->unk4;
                                            ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_20->unk6;
                                        } else {
                                            ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_20->unk0;
                                            ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_20->unk2;
                                            ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_20->unk4;
                                            ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_v0_20->unk6;
                                        }
                                    }
                                }
                                ((void *) arg_sp0.unk-98)->unk-3FB8 = 0U;
                                ((void *) arg_sp0.unk-98)->unk-3FB8 = 0U;
                                ((void *) arg_sp0.unk-98)->unk-3FB8 = 0U;
                                ((void *) arg_sp0.unk-98)->unk-3FB8 = 0U;
                                temp_a4_9 = (((((void *) arg_sp0.unk-88)->unkA - var_t0_2) - 1) * 2) + 0xB00;
                                ((void *) arg_sp0.unk-98)->unk-3FAC = (s8) (temp_a4_9 >> 8);
                                ((void *) arg_sp0.unk-98)->unk-3FB0 = temp_a4_9;
                                ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_s4;
                                if ((arg_sp0.unk-80 != 0) && (var_t3_4 == 1)) {
                                    temp_a5_7 = ((((void *) arg_sp0.unk-88)->unkA - 2) * 2) + 0xB00;
                                    ((void *) arg_sp0.unk-98)->unk-3FAC = (s8) (temp_a5_7 >> 8);
                                    ((void *) arg_sp0.unk-98)->unk-3FB0 = temp_a5_7;
                                    ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_s4;
                                }
block_238:
                                var_t0_2 += 1;
                                var_a6_8 = var_s7;
                                if (var_t3_4 != var_t0_2) {
                                    goto loop_239;
                                }
                                goto block_262;
                            }
                            var_s0_10 = arg_sp0.unk-90;
                            do {
                                temp_s1_8 = var_s0_10->unk10;
                                Xfree(var_s0_10->unkC);
                                Xfree((void *) var_s0_10);
                                var_s0_10 = (s64) temp_s1_8;
                            } while (temp_s1_8 != 0);
                            return 0;
                        }
block_262:
                        if (var_s6_2 != 0) {
                            var_s4 = -var_s4;
                        }
                        var_s0_11 = arg_sp0.unk-90;
                        ((void *) arg_sp0.unk-98)->unk-3FAC = 9;
                        ((void *) arg_sp0.unk-98)->unk-3FB0 = -0xC;
                        ((void *) arg_sp0.unk-98)->unk-3FB8 = (u16) var_s4;
                        do {
                            temp_s1_9 = var_s0_11->unk10;
                            Xfree(var_s0_11->unkC);
                            Xfree((void *) var_s0_11);
                            var_s0_11 = (s64) temp_s1_9;
                        } while (temp_s1_9 != 0);
                        return 1;
                    }
                    goto loop_91;
                }
                var_s0_12 = arg_sp0.unk-90;
                do {
                    temp_s1_10 = var_s0_12->unk10;
                    Xfree(var_s0_12->unkC);
                    Xfree((void *) var_s0_12);
                    var_s0_12 = (s64) temp_s1_10;
                } while (temp_s1_10 != 0);
                return 0;
            }
            var_s0_13 = arg_sp0.unk-90;
            do {
                temp_s1_11 = var_s0_13->unk10;
                Xfree(var_s0_13->unkC);
                Xfree((void *) var_s0_13);
                var_s0_13 = (s64) temp_s1_11;
            } while (temp_s1_11 != 0);
            return 0;
        }
        Xfree((void *) arg_sp0.unk-90);
        return 0;
    }
    return 0;
}

s32 expLoadTimingTable(s64 arg0, s32 arg1) {
    s64 sp308;
    s64 sp300;
    s64 sp2F8;
    s64 sp2F0;
    s64 sp2E8;
    s64 sp2E0;
    s64 sp2D8;
    s64 sp2D0;
    s64 sp2C8;
    s64 sp2C0;
    s64 sp2B8;
    f64 sp2B0;
    s32 sp2AC;
    s32 sp2A8;
    ? sp210;
    s32 sp100;
    s32 *temp_a1;
    s32 *temp_a2;
    s32 *temp_a3;
    s32 *temp_a5;
    s32 *temp_v1;
    s32 *var_s1;
    s32 temp_a0;
    s64 temp_a4;
    s64 temp_v0;
    s64 temp_v0_2;
    void *temp_ra;
    void *temp_s1;

    sp308 = arg0;
    temp_a5 = arg0->unk0;
    temp_ra = arg0->unk74;
    sp2D8 = (s64) temp_ra;
    temp_a4 = expScreenPrivateIndex * 4;
    sp2D0 = (s64) temp_a5;
    temp_a2 = (*(arg0->unk1B4 + temp_a4))->unk8;
    sp2C8 = (s64) temp_ra->unk64;
    sp2C0 = (s64) temp_a2;
    var_s1 = expResetProc(temp_a2, sp, temp_a4, temp_a5);
    expResetProc(sp, &sp100);
    if ((arg1 == 0) && (sp200 != 0x500) && (sp204 != 0x400)) {
        var_s1 = expResetProc((s32 *) sp308, &local_0x5f0a0000 - 0x818, sp2C0, sp);
    }
    if (var_s1 == NULL) {
        return 2;
    }
    temp_v0 = open(var_s1, 0x800);
    sp300 = temp_v0;
    if (temp_v0 >= 0) {
        if (fstat(temp_v0, &sp210) >= 0) {
            temp_v0_2 = mmap(0, sp24C, 1, 1, sp300, 0);
            sp2F8 = temp_v0_2;
            sp2E0 = temp_v0_2;
            close(sp300);
            sp2AC = (s32) sp2F8;
            sp2A8 = (s32) sp248;
            if (ioctl((s32) sp2C8, 0x3A9D, &sp2A8, sp2F8) >= 0) {
                munmap(sp2E0, sp24C);
                expResetProc(sp, &sp100);
                sp2F0 = (s64) sp200;
                sp2E8 = (s64) sp204;
                sp2B0 = (f64) sp208;
                if (arg1 == 0) {

                } else {
                    temp_a0 = (*(sp308->unk1B4 + (vcScreenPrivateIndex * 4)))->unk8;
                    sp2B8 = (s64) temp_a0;
                    strcpy(temp_a0 + 0x14, sp);
                    sp2B8->unk124 = (f32) sp2B0;
                    sp2B8->unk128 = (f32) sp2B0;
                    sp2B8->unk118 = (s32) sp2F0;
                    sp2B8->unk114 = (s32) sp2E8;
                }
                var_5f0b8adc = 1;
                if (arg1 != 0) {
                    expvc1ComputeDIDTable((void *) sp308, sp2D8->unk54 - 3, sp2D8->unk60, 1);
                }
                temp_s1 = (sp2D0 * 4) + (&local_0x5f0c0000 - 0x3998);
                strcpy(temp_s1->unk0, sp);
                temp_a1 = temp_s1->unk0;
                temp_a1->unk108 = (f32) sp2B0;
                temp_a1->unk104 = (s32) sp2E8;
                temp_a1->unk100 = (s32) sp2F0;
                if (arg1 == 0) {
                    strcpy(temp_s1->unk100, temp_a1);
                    temp_a3 = temp_s1->unk0;
                    temp_v1 = temp_s1->unk100;
                    temp_v1->unk100 = (s32) temp_a3->unk100;
                    temp_v1->unk104 = (s32) temp_a3->unk104;
                    temp_v1->unk108 = (f32) temp_a3->unk108;
                }
                return 0;
            }
            munmap(sp2E0, sp24C);
            ErrorF(&local_0x5f0a0000 - 0x7A8);
            return 2;
        }
        ErrorF(&local_0x5f0a0000 - 0x7C8, var_s1);
        return 2;
    }
    ErrorF(&local_0x5f0a0000 - 0x7E8, var_s1);
    return 2;
}

s32 expWriteTimingTable(s64 arg0, s64 arg1) {
    s64 sp208;
    s64 sp200;
    s32 sp100;
    s32 temp_v0;
    s32 temp_v0_2;
    s64 temp_a4;

    sp208 = arg0;
    sp200 = arg1;
    temp_a4 = expScreenPrivateIndex * 4;
    temp_v0 = fopen(expResetProc((*(arg0->unk1B4 + temp_a4))->unk8, sp, temp_a4), saved_reg_gp - 0x7114 + 0x50);
    if (temp_v0 != 0) {
        fclose(temp_v0);
        sprintf(&sp100, &local_0x5f0a0000 - 0x858, *sp208);
        temp_v0_2 = fopen(&sp100, saved_reg_gp - 0x70AC);
        if (temp_v0_2 == 0) {
            ErrorF(&local_0x5f0a0000 - 0x808, &sp100);
            return 0xA;
        }
        fprintf(temp_v0_2, saved_reg_gp - 0x7114 + 0x58, sp200);
        fclose(temp_v0_2);
        var_5f0b8adc = 1;
        return 0;
    }
    return 2;
}

s32 expCheckTimingTable(s32 *arg0, s32 *arg1, s64 arg2, s32 *arg3, s32 arg4) {
    s64 sp128;
    s32 *temp_a0;
    s32 *temp_ra;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v1;
    s32 var_a4;
    s64 var_ra;
    void *temp_s0;

    var_ra = saved_reg_ra;
    var_a4 = arg4;
    temp_s0 = (*arg0 * 4) + (&local_0x5f0c0000 - 0x3998);
    if (temp_s0->unk0 != NULL) {

    } else {
        temp_v0 = malloc(0x10C);
        temp_s0->unk0 = temp_v0;
        sprintf(temp_v0, &local_0x5f0a0000 - 0x818);
        temp_ra = temp_s0->unk0;
        var_a4 = 0x500;
        temp_ra->unk108 = (f32) saved_reg_gp->unk-4B2C;
        temp_ra->unk104 = 0x400;
        temp_ra->unk100 = 0x500;
        var_ra = sp128;
    }
    sp128 = var_ra;
    if (temp_s0->unk100 == NULL) {
        temp_v0_2 = malloc(0x10C, malloc);
        temp_s0->unk100 = temp_v0_2;
        strcpy(temp_v0_2, temp_s0->unk0);
        temp_v1 = temp_s0->unk0;
        temp_v0_3 = temp_s0->unk100;
        temp_v0_3->unk100 = (s32) temp_v1->unk100;
        var_a4 = temp_v1->unk104;
        temp_v0_3->unk104 = var_a4;
        temp_v0_3->unk108 = (f32) temp_v1->unk108;
    }
    if (expResetProc(arg0, arg1, arg2, sp, var_a4) == NULL) {
        return 0;
    }
    expResetProc(sp, arg3);
    if ((arg1 == NULL) && (arg3->unk100 != 0x500) && (arg3->unk104 != 0x400)) {
        expResetProc(arg0, &local_0x5f0a0000 - 0x818, arg2, sp, 0x400);
    }
    expResetProc(sp, arg3);
    if (arg1 != NULL) {
        return 1;
    }
    if (var_5f0b8adc != 0) {
        var_5f0b8adc = 0;
        return 1;
    }
    temp_a0 = temp_s0->unk0;
    if ((temp_a0->unk100 == arg3->unk100) && (temp_a0->unk104 == arg3->unk104)) {
        if (temp_a0->unk108 == arg3->unk108) {
            return 0;
        }
        /* Duplicate return node #20. Try simplifying control flow for better match */
        return 1;
    }
    return 1;
}

s64 expLstVideoFmt(s32 *arg0, s32 arg1, s64 arg2, s32 arg3) {
    s64 sp228;
    s64 sp220;
    s64 sp218;
    s64 sp210;
    s32 sp100;
    s32 **var_s0;
    s32 *temp_a1;
    s32 *temp_a4;
    s32 *temp_a5;
    s32 *temp_at;
    s32 *temp_s3;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 temp_s5;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a2;
    s32 var_s6;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_v0;
    void *temp_a1_2;
    void *temp_s2;
    void *temp_s4;

    sp228 = arg2;
    if (arg1 > 0) {
        return 0;
    }
    temp_v0 = calloc(var_5f0b93c0, 0x138);
    var_s6 = 0;
    sp220 = 0;
    sp218 = temp_v0;
    *sp228 = (s32) temp_v0;
    if (var_5f0b93c0 > 0) {
        temp_s2 = &local_0x5f0c0000 - 0x3998;
        var_s0 = &local_0x5f0b0000 + 0x4820;
        sp210 = (s64) (&local_0x5f0a0000 - 0x818);
loop_8:
        temp_s4 = (arg0->unk0 * 4) + temp_s2;
        temp_s3 = *var_s0;
        temp_s5 = (*(arg0->unk1B4 + (expScreenPrivateIndex * 4)))->unk8;
        if (temp_s4->unk0 == NULL) {
            temp_v0_2 = malloc(0x10C);
            temp_s4->unk0 = temp_v0_2;
            sprintf(temp_v0_2, (void *) sp210);
            temp_at = temp_s4->unk0;
            temp_at->unk108 = (f32) (M2C_ERROR(/* Read from unset register $t9 */) + 0x163408)->unk-4B2C;
            temp_at->unk104 = 0x400;
            temp_at->unk100 = 0x500;
        }
        if (temp_s4->unk100 == NULL) {
            temp_v0_3 = malloc(0x10C);
            temp_s4->unk100 = temp_v0_3;
            strcpy(temp_v0_3, temp_s4->unk0);
            temp_a5 = temp_s4->unk0;
            temp_a4 = temp_s4->unk100;
            temp_a4->unk100 = (s32) temp_a5->unk100;
            temp_a4->unk104 = (s32) temp_a5->unk104;
            temp_a4->unk108 = (f32) temp_a5->unk108;
        }
        var_a1 = 0;
        if (expResetProc(arg0, temp_s3, (s64) temp_s5, sp) != NULL) {
            expResetProc(sp, &sp100);
            if (temp_s3 == NULL) {
                if ((sp200 != 0x500) && (sp204 != 0x400)) {
                    expResetProc(arg0, (s32 *) sp210, (s64) temp_s5, sp, 0x500, sp200);
                }
            }
            expResetProc(sp, &sp100);
            if (temp_s3 != NULL) {
                goto block_19;
            }
            if (var_5f0b8adc == 0) {
                temp_a1 = temp_s4->unk0;
                if ((temp_a1->unk100 == sp200) && (temp_a1->unk104 == sp204) && (temp_a1->unk108 == sp208)) {
                    var_a1 = 0;
                } else {
                    goto block_19;
                }
            } else {
                var_5f0b8adc = 0;
block_19:
                var_a1 = 1;
            }
        }
        var_a2 = 0;
        if (var_a1 != 0) {
            temp_a1_2 = ((arg0->unk0 * 4) + temp_s2)->unk100;
            if ((temp_a1_2->unk100 >= sp200) && (temp_a1_2->unk104 >= sp204)) {
                var_a2 = 1;
                if (arg3 == 1) {
                    goto block_15;
                }
                goto block_5;
            }
            if (arg3 != 1) {
block_5:
                var_a1_2 = 0;
            } else {
block_15:
                var_a1_2 = 0;
                if (var_a2 == 0) {
                    var_a1_2 = 1;
                }
            }
            if (var_a1_2 == 0) {
                if (arg3 != 2) {
                    goto block_21;
                }
                var_a1_3 = 1;
                if (var_a2 != 0) {

                } else {
block_21:
                    var_a1_3 = 0;
                }
                if (var_a1_3 == 0) {
                    var_a1_4 = 0;
                    if (arg3 == 2) {
                        if (sp200 != 0x500) {
                            goto block_49;
                        }
                        if (sp204 == 0x400) {

                        } else {
block_49:
                            var_a1_4 = 1;
                        }
                    }
                    if (var_a1_4 == 0) {
                        var_v0 = 0;
                        if (arg3 == 0) {
                            var_v0 = 0;
                            if (var_a2 == 0) {
                                var_v0 = 1;
                            }
                        }
                        if (var_v0 == 0) {
                            var_v0_2 = 0;
                            if (arg3 == 0) {
                                if (sp200 != 0x500) {
                                    goto block_55;
                                }
                                if (sp204 == 0x400) {
                                    var_v0_2 = 0;
                                } else {
block_55:
                                    var_v0_2 = 1;
                                }
                            }
                            if (var_v0_2 == 0) {
                                sp218->unk12C = 1;
                                sp218->unk130 = calloc(1, 0x24, 1, sp218);
                                strcpy((s32 *) sp218, *var_s0);
                                sp218->unk104 = sp200;
                                sp218->unk100 = sp204;
                                sp218->unk110 = sp208;
                                sp218->unk114 = sp208;
                                if ((*var_s0 + strlen(*var_s0))->unk-1 == 0x73) {
                                    sp218->unk134 = 4;
                                }
                                sp220 += 1;
                                sp218 += 0x138;
                            }
                        }
                    }
                }
            }
        }
        var_s6 += 1;
        var_s0 += 4;
        if (var_s6 < var_5f0b93c0) {
            goto loop_8;
        }
    }
    return sp220;
}

s32 expSetBacklight__EHB(void *arg0, s32 arg1) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_a1_2;
    s32 *temp_a2;
    s32 *temp_a2_2;
    s32 *temp_a2_3;
    s32 *temp_a2_4;
    s32 *temp_a2_5;
    s32 temp_a3_4;
    s32 temp_a4;
    s32 temp_a4_2;
    s64 temp_a1;
    u8 temp_a3;
    void *temp_a0;
    void *temp_a3_2;
    void *temp_a3_3;

    temp_a4 = arg0->unk0;
    switch (arg1) {                                 /* irregular */
    default:
        return 1;
    case 3:
        temp_a2 = &local_0x5f0c0000 - 0x5BA8;
        temp_a0 = (temp_a4 * 4) + temp_a2;
        if (temp_a0->unk10 == 0) {
            temp_a3 = ((temp_a4 * 0x10) + &savedScreenInfo)->unk8;
            sp18 = (s64) temp_a0;
            if (temp_a3 == 2) {
                return 0;
            }
            *temp_a2 = 1;
            ioctl(arg0->unk74->unk64, 0x5213, temp_a2, (s64) temp_a3, temp_a4, arg0, 1);
            sp18->unk10 = 1;
            /* Duplicate return node #8. Try simplifying control flow for better match */
            return 1;
        }
        return 1;
    case 1:
        sp0 = (s64) arg0;
        temp_a1 = temp_a4 * 4;
        sp8 = temp_a1;
        temp_a2_2 = &local_0x5f0c0000 - 0x5BA8;
        temp_a2_2->unk0 = 2;
        temp_a3_2 = &local_0x5f0b0000 + 0x4710;
        temp_a2_2->unk4 = (void *) (temp_a1 + temp_a3_2);
        ioctl(sp0->unk74->unk64, 0x5213, temp_a2_2, (s64) temp_a3_2, temp_a4, (void *)2, 1);
        temp_a2_3 = &local_0x5f0c0000 - 0x5BA8;
        temp_a3_3 = sp8 + temp_a2_3;
        sp18 = (s64) temp_a3_3;
        temp_a3_4 = temp_a3_3->unk10;
        if (temp_a3_4 != 0) {
            *temp_a2_3 = 0;
            ioctl(sp0->unk74->unk64, 0x5213, temp_a2_3, (s64) temp_a3_4);
            sp18->unk10 = 0;
        }
        return 0;
    case 0:
        sp10 = (s64) temp_a4;
        sp0 = (s64) arg0;
        temp_a2_4 = &local_0x5f0c0000 - 0x5BA8;
        *temp_a2_4 = 9;
        ioctl(arg0->unk74->unk64, 0x5213, temp_a2_4, (s64) temp_a4, (s32) arg0);
        temp_a1_2 = (sp10 * 4) + (&local_0x5f0b0000 + 0x4710);
        temp_a2_5 = &local_0x5f0c0000 - 0x5BA8;
        temp_a4_2 = temp_a2_5->unk8;
        temp_a2_5->unk4 = temp_a1_2;
        temp_a2_5->unk0 = 3;
        *temp_a1_2 = temp_a4_2;
        ioctl(sp0->unk74->unk64, 0x5213, temp_a2_5, 3, temp_a4_2);
        return 0;
    }
}

s32 expBlankScreen(s32 arg0, void *arg1) {
    u8 temp_a1;
    u8 temp_v0;
    void *temp_a4;
    void *temp_a5;

    temp_a4 = *(arg1->unk1B4 + (expScreenPrivateIndex * 4));
    temp_a5 = temp_a4->unk0;
    if (*((arg1->unk0 * 4) + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x168030) - 0x5C24)) != 0) {
        return 0;
    }
    if (arg0 != 0) {
        temp_v0 = temp_a5->unk6C058 & ~0x30;
        temp_a5->unk6C058 = temp_v0;
        temp_a4->unk4 = (s32) temp_v0;
        temp_a5->unk6C0A0 = 4;
        temp_a5->unk6C0A8 = 0;
        temp_a5->unk6C0C0 = 4;
        temp_a5->unk6C0C8 = 0;
        temp_a5->unk6C0E0 = 4;
        temp_a5->unk6C0E8 = 0;
    } else {
        temp_a5->unk6C0A0 = 4;
        temp_a5->unk6C0A8 = 0xFF;
        temp_a5->unk6C0C0 = 4;
        temp_a5->unk6C0C8 = 0xFF;
        temp_a5->unk6C0E0 = 4;
        temp_a5->unk6C0E8 = 0xFF;
        temp_a1 = temp_a5->unk6C058 | 0x30;
        temp_a5->unk6C058 = temp_a1;
        temp_a4->unk4 = (s32) temp_a1;
    }
    return 1;
}
