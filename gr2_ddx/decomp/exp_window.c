? AssignID__LIC(void *, s32, void *, u16, s32, u16, void *, void *); /* extern */
? ErrorF(void *, u8, void *, u8, s32, ?, void *);   /* extern */
? FatalError(void *);                               /* extern */
void *FindWindowWithOptional(void *, s32, ?, s32 *, s32, void *, ?, void *); /* extern */
? FlushClientCaches(void *);                        /* extern */
void *LookupIDByType(s32, ?);                       /* extern */
? StealID(void *);                                  /* extern */
? Xfree(void *);                                    /* extern */
? dbcDelayedSwapBufferDone(void *, ?, ?);           /* extern */
s32 expOpStippledFillRects(void *, s32, s16);       /* extern */
? expvc1ComputeDIDTable(void *, s32, ? *);          /* extern */
s32 ioctl(s32, ?, void *, s32, void *, s32);        /* extern */
void *local_0x5ef40000(s16 *, u16, u16, u8);        /* extern */
? memmove(s32, s32, s32);                           /* extern */
? nfbInitRootWindow(void *);                        /* extern */
? nfbSetDidFlags(void *, void *, void *, void *, void *); /* extern */
? perror(void *);                                   /* extern */
? expValidateReducedGC(void *, void *);             /* static */
void expValidateWindowPriv(s64 arg0, s16 *, s16 *, s64, s16, s16, ?, s16 *); /* static */
extern s32 WindowTable;
extern s32 dbcWindowPrivateIndex;
extern s32 errno;
extern s32 expGCPrivateIndex;
extern s32 expScreenPrivateIndex;
extern u32 globalSerialNumber;
extern ? local_0x5f0a0000;
extern ? local_0x5f0b0000;
extern ? local_0x5f0c0000;
extern s32 nfbGCPrivateIndex;
extern s32 nfbWindowPrivateIndex;
extern s32 rrmScreenPrivateIndex;
extern s32 rrmWindowPrivateIndex;

void expCopyRect(void *arg0, void *arg1, s32 arg2, s32 arg3, void *arg4) {
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 var_a6;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t2;
    s32 var_t2_2;
    s8 *temp_t3;
    u8 temp_a6;
    void *temp_t1;
    void *var_a4;

    temp_a7 = arg0->unk4 - arg0->unk0;
    temp_t2 = arg4->unk84;
    temp_t0 = arg0->unk6 - arg0->unk2;
    temp_t3 = (dbcWindowPrivateIndex * 4) + temp_t2;
    temp_t1 = **(arg4->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    if ((temp_t0 != 0) && (temp_a7 != 0)) {
        temp_a6 = arg4->unk2;
        switch (temp_a6) {                          /* irregular */
        default:
            ErrorF(&local_0x5f0a0000 - 0xCE8, arg4->unk3, (void *)0xFF0000, temp_a6, temp_a7);
            return;
        case 2:
        case 4:
        case 8:
            var_a4 = temp_t1 + 0x40000;
            temp_t8 = (*(temp_t2 + (nfbWindowPrivateIndex * 4)))->unk14;
            var_t1 = 1;
            var_t2 = 0;
            if (temp_t8 != 0xD) {
                var_t2 = 0;
                if (temp_t8 != 0xE) {
                    var_t1 = 1;
                    if (temp_t8 != 0xC) {
                        temp_t1->unk4052C = (s32) (temp_t8 | 0x1000);
                        temp_t1->unk404D4 = 0;
                        var_t2 = arg3;
                        var_t1 = *temp_t3 * 8;
                    } else {
                        temp_t1->unk4052C = 0x1008;
                        temp_t1->unk404D4 = (s32) (arg3 & 0xF);
                    }
                } else {
                    var_t1 = 9;
                    var_t2 = 0;
                    temp_t1->unk4052C = 0x100B;
                    temp_t1->unk404D4 = (s32) (arg3 & 0xC);
                }
            } else {
                temp_t1->unk4052C = 0x100B;
                temp_t1->unk404D4 = (s32) (arg3 & 3);
            }
            var_a6 = (s32) (temp_a7 + 3) >> 2;
            temp_t1->unk40530 = 0;
            temp_t1->unk4077C = (s32) (var_t2 & 0xFFFFFF);
            temp_t1->unk4077C = arg2;
            temp_t1->unk4077C = var_t1;
            temp_t1->unk40544 = 2;
            var_a4->unk77C = 0;
            var_a4->unk550 = var_a6;
            var_a4->unk77C = (s32) (0x1300 / var_a6);
            var_a4->unk77C = (s32) arg1->unk0;
            var_a4->unk77C = (s32) arg1->unk2;
            var_a4->unk77C = temp_a7;
            var_a4->unk77C = temp_t0;
            M2C_TRAP_IF(var_a6 == 0);
            var_a4->unk77C = (s32) arg0->unk0;
            var_a4->unk77C = (s32) arg0->unk2;
            return;
        case 24:
            temp_t8_2 = (*(temp_t2 + (nfbWindowPrivateIndex * 4)))->unk14;
            var_a4 = temp_t1 + 0x40000;
            var_t1_2 = 0;
            if (temp_t8_2 != 0xD) {
                if (temp_t8_2 == 0xE) {
                    var_t1_2 = 9;
                    var_t2_2 = 0;
                    temp_t1->unk4052C = 0x100B;
                    temp_t1->unk404D4 = (s32) (arg3 & 0xC);
                } else if (temp_t8_2 != 0xC) {
                    var_t2_2 = arg3;
                    temp_t1->unk4052C = (s32) (temp_t8_2 | 0x1000);
                    temp_t1->unk404D4 = 0;
                } else {
                    var_t1_2 = 1;
                    var_t2_2 = 0;
                    temp_t1->unk4052C = 0x1008;
                    temp_t1->unk404D4 = (s32) (arg3 & 0xF);
                }
            } else {
                var_t1_2 = 1;
                var_t2_2 = 0;
                temp_t1->unk4052C = 0x100B;
                temp_t1->unk404D4 = (s32) (arg3 & 3);
            }
            var_a6 = temp_a7;
            temp_t1->unk40530 = 0;
            temp_t1->unk4077C = (s32) (var_t2_2 & 0xFFFFFF);
            temp_t1->unk4077C = arg2;
            temp_t1->unk4077C = var_t1_2;
            temp_t1->unk40544 = 0;
            /* Duplicate return node #13. Try simplifying control flow for better match */
            var_a4->unk77C = 0;
            var_a4->unk550 = var_a6;
            var_a4->unk77C = (s32) (0x1300 / var_a6);
            var_a4->unk77C = (s32) arg1->unk0;
            var_a4->unk77C = (s32) arg1->unk2;
            var_a4->unk77C = temp_a7;
            var_a4->unk77C = temp_t0;
            M2C_TRAP_IF(var_a6 == 0);
            var_a4->unk77C = (s32) arg0->unk0;
            var_a4->unk77C = (s32) arg0->unk2;
            return;
        case 12:
            var_a6 = (s32) (temp_a7 + 1) >> 1;
            var_a4 = temp_t1 + 0x40000;
            temp_t1->unk4052C = 0x100A;
            temp_t1->unk404D4 = 0;
            temp_t1->unk40530 = 0;
            temp_t1->unk4077C = (s32) (arg3 & 0xFFFFFF);
            temp_t1->unk4077C = arg2;
            temp_t1->unk4077C = (s32) (*temp_t3 * 8);
            temp_t1->unk40544 = 1;
            /* Duplicate return node #13. Try simplifying control flow for better match */
            var_a4->unk77C = 0;
            var_a4->unk550 = var_a6;
            var_a4->unk77C = (s32) (0x1300 / var_a6);
            var_a4->unk77C = (s32) arg1->unk0;
            var_a4->unk77C = (s32) arg1->unk2;
            var_a4->unk77C = temp_a7;
            var_a4->unk77C = temp_t0;
            M2C_TRAP_IF(var_a6 == 0);
            var_a4->unk77C = (s32) arg0->unk0;
            var_a4->unk77C = (s32) arg0->unk2;
            return;
        }
    }
}

void expCopyWindow(s64 arg0, s64 arg1, s64 arg2, ? arg_sp0) {
    ? var_a6;
    s16 *temp_s6_2;
    s16 *temp_sp;
    s16 *var_a1;
    s16 *var_a1_2;
    s16 *var_a1_3;
    s16 *var_a1_4;
    s16 *var_a3_2;
    s16 *var_a3_3;
    s16 *var_a3_4;
    s16 *var_a7_4;
    s16 *var_s1_3;
    s16 *var_sp;
    s16 *var_t0;
    s16 *var_t1;
    s16 *var_t1_2;
    s16 *var_t1_3;
    s16 *var_t2;
    s16 *var_v0;
    s16 *var_v0_2;
    s16 *var_v0_3;
    s16 *var_v1_10;
    s16 *var_v1_2;
    s16 *var_v1_4;
    s16 *var_v1_6;
    s16 temp_at_2;
    s16 temp_at_3;
    s16 temp_at_4;
    s16 temp_at_5;
    s16 var_a4_2;
    s16 var_a4_3;
    s16 var_a4_4;
    s16 var_a5;
    s16 var_at;
    s16 var_at_2;
    s16 var_at_3;
    s16 var_at_4;
    s32 *temp_s7_2;
    s32 *var_s2_3;
    s32 temp_a3_3;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_s2;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_v0_8;
    s32 temp_v1_2;
    s32 var_a4;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_a7_3;
    s32 var_s0;
    s32 var_s0_3;
    s32 var_v0_4;
    s32 var_v1;
    s32 var_v1_3;
    s32 var_v1_5;
    s32 var_v1_7;
    s32 var_v1_9;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_at;
    s64 temp_s3;
    s64 temp_s4;
    s64 temp_s6;
    s64 temp_s7;
    s64 var_s1_2;
    s64 var_s2;
    s64 var_s3;
    s64 var_s4;
    u32 var_a3;
    u32 var_s2_2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a3_2;
    void *temp_s0;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s1_3;
    void *temp_s3_2;
    void *temp_s4_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v1;
    void *temp_v1_3;
    void *var_a0;
    void *var_a0_2;
    void *var_s0_2;
    void *var_s1;
    void *var_s5;
    void *var_v1_8;

    var_s2 = saved_reg_s2;
    var_s3 = saved_reg_s3;
    var_s4 = saved_reg_s4;
    arg_sp0.unk-90 = (s64) saved_reg_fp;
    arg_sp0.unk-E0 = (s64) saved_reg_s6;
    arg_sp0.unk-F0 = (s64) saved_reg_s7;
    arg_sp0.unk-C8 = arg2;
    arg_sp0.unk-88 = (s64) saved_reg_ra;
    arg_sp0.unk-98 = (s64) saved_reg_s0;
    var_s0 = 0;
    arg_sp0.unk-C0 = arg0;
    arg_sp0.unk-B0 = (s64) saved_reg_s1;
    arg_sp0.unk-18 = (s32) (arg1 >> 0x20);
    arg_sp0.unk-A8 = (s64) saved_reg_gp;
    arg_sp0.unk-A0 = (s64) saved_reg_s5;
    var_s5 = arg0->unk10;
    var_s1 = *(arg0->unk84 + (nfbWindowPrivateIndex * 4));
    var_s5->unk154(&arg_sp0 - 0x38, 0, 1);
    temp_at = arg_sp0.unk-C0;
    var_a4 = var_s1->unk1C;
    temp_s6 = arg_sp0.unk-16 - temp_at->unkA;
    temp_s7 = (s16) arg_sp0.unk-18 - temp_at->unk8;
    if (var_a4 != 0) {
        arg_sp0.unk-108 = (s64) var_s1;
        arg_sp0.unk-F8 = (s64) saved_reg_s3;
        var_a3 = var_s5->unk74->unk28;
        arg_sp0.unk-E8 = (s64) saved_reg_s4;
        arg_sp0.unk-100 = (s64) saved_reg_s2;
        var_s2_2 = 0;
        if (var_a3 != 0) {
            temp_s4 = -temp_s6;
            temp_s3 = -temp_s7;
            var_s1_2 = arg_sp0.unk-C8;
loop_5:
            temp_v1 = var_s1_2->unk8;
            var_s2_2 += 1;
            if (temp_v1 != NULL) {
                var_a4 = var_s2_2 < var_a3;
                if (temp_v1->unk4 != 0) {
                    goto block_3;
                }
            } else {
block_3:
                var_s5->unk178(var_s1_2, temp_s3, temp_s4, var_a3, var_a4);
                var_a3 = var_s5->unk74->unk28;
                var_a4 = var_s2_2 < var_a3;
            }
            var_s1_2 += 0xC;
            if (var_a4 != 0) {
                goto loop_5;
            }
            var_s4 = arg_sp0.unk-E8;
            var_s3 = arg_sp0.unk-F8;
            var_s1 = (void *) arg_sp0.unk-108;
        }
        temp_v1_2 = var_s1->unk18;
        var_s2 = arg_sp0.unk-100;
        if (temp_v1_2 == 3) {
            temp_v0 = arg_sp0.unk-C8->unk14;
            if ((temp_v0 == NULL) || (temp_v0->unk4 != 0)) {
                goto block_12;
            }
            temp_v0_2 = arg_sp0.unk-C8->unk20;
            if (temp_v0_2 != NULL) {
                var_a4 = temp_v0_2->unk4;
                if (var_a4 == 0) {
                    goto block_15;
                }
            }
block_12:
            arg_sp0.unk-E8 = var_s4;
            var_s0 = 1;
        } else {
block_15:
            temp_a3 = arg_sp0.unk-C8;
            var_s5->unk164(&arg_sp0 - 0x38, arg_sp0.unk-C0 + 0x38, (temp_v1_2 * 0xC) + temp_a3, temp_a3, var_a4);
            goto block_16;
        }
    } else {
        var_s5->unk178(arg_sp0.unk-C8, -temp_s7, -temp_s6);
        var_s5->unk164(&arg_sp0 - 0x38, arg_sp0.unk-C0 + 0x38, arg_sp0.unk-C8);
block_16:
        arg_sp0.unk-E8 = var_s4;
    }
    if (var_s0 != 0) {
        temp_v0_3 = arg_sp0.unk-C8->unk14;
        var_a0 = &arg_sp0 - 0x38;
        if ((temp_v0_3 == NULL) || (var_a0 = &arg_sp0 - 0x38, (temp_v0_3->unk4 != 0))) {
            var_s5->unk164(var_a0, var_s1->unk2C + 0xC, arg_sp0.unk-C8 + 0xC);
        } else {
            var_s5->unk164(&arg_sp0 - 0x38, arg_sp0.unk-C0 + 0x38, arg_sp0.unk-C8 + 0x24);
        }
        temp_v0_4 = arg_sp0.unk-30;
        if (temp_v0_4 != NULL) {
            var_t1 = temp_v0_4 + 8;
            if (temp_v0_4 != NULL) {
                goto block_23;
            }
            goto block_105;
        }
        var_t1 = &arg_sp0 - 0x38;
        if (temp_v0_4 == NULL) {
block_105:
            var_v1 = 1;
        } else {
block_23:
            var_v1 = temp_v0_4->unk4;
        }
        var_a7 = var_v1 & 3;
        var_a4_2 = ((var_v1 * 4) + 0xF) & ~0xF;
        temp_sp = sp - var_a4_2;
        if (temp_sp != NULL) {
            var_a3_2 = temp_sp;
            if (var_v1 > 0) {
                var_v0 = var_t1;
                if (var_a7 != 0) {
                    do {
                        var_a4_2 = *var_v0 + temp_s7;
                        *var_a3_2 = var_a4_2;
                        var_v0 += 8;
                        var_a3_2 += 4;
                        var_a7 -= 1;
                        var_a3_2->unk-2 = (s16) (var_v0->unk-6 + temp_s6);
                    } while (var_a7 != 0);
                }
                var_a1 = var_a3_2;
                temp_a7 = var_v1 >> 2;
                var_v1_2 = var_v0;
                if (temp_a7 != 0) {
                    if (temp_a7 >= 2) {
                        var_at = var_v1_2->unk0;
                        do {
                            var_a1 += 0x10;
                            var_a1->unk-10 = (s16) (var_at + temp_s7);
                            var_a1->unk-E = (s16) (var_v1_2->unk2 + temp_s6);
                            var_a1->unk-C = (s16) (var_v1_2->unk8 + temp_s7);
                            var_a1->unk-A = (s16) (var_v1_2->unkA + temp_s6);
                            var_a1->unk-8 = (s16) (var_v1_2->unk10 + temp_s7);
                            var_a1->unk-6 = (s16) (var_v1_2->unk12 + temp_s6);
                            var_a1->unk-4 = (s16) (var_v1_2->unk18 + temp_s7);
                            temp_at_2 = var_v1_2->unk1A;
                            var_v1_2 += 0x20;
                            var_a1->unk-2 = (s16) (temp_at_2 + temp_s6);
                            var_at = var_v1_2->unk0;
                        } while (var_v1_2 != ((var_t1 + (var_v1 * 8)) - 0x20));
                        var_a1->unk0 = var_at + temp_s7;
                        var_a1->unk2 = (s16) (var_v1_2->unk2 + temp_s6);
                        var_a1->unk4 = (s16) (var_v1_2->unk8 + temp_s7);
                        var_a1->unk6 = (s16) (var_v1_2->unkA + temp_s6);
                        var_a1->unk8 = (s16) (var_v1_2->unk10 + temp_s7);
                        var_a1->unkA = (s16) (var_v1_2->unk12 + temp_s6);
                        var_a4_2 = var_v1_2->unk18 + temp_s7;
                        var_a1->unkC = var_a4_2;
                        var_a1->unkE = (s16) (var_v1_2->unk1A + temp_s6);
                    } else {
                        var_a1->unk0 = var_v1_2->unk0 + temp_s7;
                        var_a1->unk2 = (s16) (var_v1_2->unk2 + temp_s6);
                        var_a1->unk4 = (s16) (var_v1_2->unk8 + temp_s7);
                        var_a1->unk6 = (s16) (var_v1_2->unkA + temp_s6);
                        var_a4_2 = var_v1_2->unk10 + temp_s7;
                        var_a1->unk8 = var_a4_2;
                        var_a1->unkA = (s16) (var_v1_2->unk12 + temp_s6);
                        var_a1->unkC = (s16) (var_v1_2->unk18 + temp_s7);
                        var_a1->unkE = (s16) (var_v1_2->unk1A + temp_s6);
                    }
                }
                arg_sp0.unk-F8 = var_s3;
            }
            arg_sp0.unk-F8 = var_s3;
            expValidateWindowPriv(arg_sp0.unk-C0, &arg_sp0 - 0x38, temp_sp, 0xD, var_a4_2);
            temp_v0_5 = arg_sp0.unk-C8->unk20;
            var_a0_2 = &arg_sp0 - 0x38;
            if ((temp_v0_5 == NULL) || (var_a0_2 = &arg_sp0 - 0x38, (temp_v0_5->unk4 != 0))) {
                var_s5->unk164(var_a0_2, var_s1->unk2C + 0x18, arg_sp0.unk-C8 + 0x18);
            } else {
                var_s5->unk164(&arg_sp0 - 0x38, arg_sp0.unk-C0 + 0x38, arg_sp0.unk-C8 + 0x24);
            }
            temp_v0_6 = arg_sp0.unk-30;
            if (temp_v0_6 != NULL) {
                var_t1_2 = temp_v0_6 + 8;
                if (temp_v0_6 != NULL) {
                    goto block_39;
                }
                goto block_112;
            }
            var_t1_2 = &arg_sp0 - 0x38;
            if (temp_v0_6 == NULL) {
block_112:
                var_v1_3 = 1;
            } else {
block_39:
                var_v1_3 = temp_v0_6->unk4;
            }
            var_a4_3 = ((var_v1_3 * 4) + 0xF) & ~0xF;
            var_sp = temp_sp - var_a4_3;
            if (var_sp != NULL) {
                var_v0_2 = var_sp;
                if (var_v1_3 > 0) {
                    var_a3_3 = var_t1_2;
                    var_a7_2 = var_v1_3 & 3;
                    if (var_a7_2 != 0) {
                        do {
                            var_a4_3 = *var_a3_3 + temp_s7;
                            *var_v0_2 = var_a4_3;
                            var_a3_3 += 8;
                            var_v0_2 += 4;
                            var_a7_2 -= 1;
                            var_v0_2->unk-2 = (s16) (var_a3_3->unk-6 + temp_s6);
                        } while (var_a7_2 != 0);
                    }
                    var_a1_2 = var_v0_2;
                    temp_a7_2 = var_v1_3 >> 2;
                    var_v1_4 = var_a3_3;
                    if (temp_a7_2 != 0) {
                        if (temp_a7_2 >= 2) {
                            var_at_2 = var_v1_4->unk0;
                            do {
                                var_a1_2 += 0x10;
                                var_a1_2->unk-10 = (s16) (var_at_2 + temp_s7);
                                var_a1_2->unk-E = (s16) (var_v1_4->unk2 + temp_s6);
                                var_a1_2->unk-C = (s16) (var_v1_4->unk8 + temp_s7);
                                var_a1_2->unk-A = (s16) (var_v1_4->unkA + temp_s6);
                                var_a1_2->unk-8 = (s16) (var_v1_4->unk10 + temp_s7);
                                var_a1_2->unk-6 = (s16) (var_v1_4->unk12 + temp_s6);
                                var_a1_2->unk-4 = (s16) (var_v1_4->unk18 + temp_s7);
                                temp_at_3 = var_v1_4->unk1A;
                                var_v1_4 += 0x20;
                                var_a1_2->unk-2 = (s16) (temp_at_3 + temp_s6);
                                var_at_2 = var_v1_4->unk0;
                            } while (var_v1_4 != ((var_t1_2 + (var_v1_3 * 8)) - 0x20));
                            var_a1_2->unk0 = var_at_2 + temp_s7;
                            var_a1_2->unk2 = (s16) (var_v1_4->unk2 + temp_s6);
                            var_a1_2->unk4 = (s16) (var_v1_4->unk8 + temp_s7);
                            var_a1_2->unk6 = (s16) (var_v1_4->unkA + temp_s6);
                            var_a1_2->unk8 = (s16) (var_v1_4->unk10 + temp_s7);
                            var_a1_2->unkA = (s16) (var_v1_4->unk12 + temp_s6);
                            var_a4_3 = var_v1_4->unk18 + temp_s7;
                            var_a1_2->unkC = var_a4_3;
                            var_a1_2->unkE = (s16) (var_v1_4->unk1A + temp_s6);
                        } else {
                            var_a1_2->unk0 = var_v1_4->unk0 + temp_s7;
                            var_a1_2->unk2 = (s16) (var_v1_4->unk2 + temp_s6);
                            var_a1_2->unk4 = (s16) (var_v1_4->unk8 + temp_s7);
                            var_a1_2->unk6 = (s16) (var_v1_4->unkA + temp_s6);
                            var_a4_3 = var_v1_4->unk10 + temp_s7;
                            var_a1_2->unk8 = var_a4_3;
                            var_a1_2->unkA = (s16) (var_v1_4->unk12 + temp_s6);
                            var_a1_2->unkC = (s16) (var_v1_4->unk18 + temp_s7);
                            var_a1_2->unkE = (s16) (var_v1_4->unk1A + temp_s6);
                        }
                    }
                }
                expValidateWindowPriv(arg_sp0.unk-C0, &arg_sp0 - 0x38, var_sp, 0xE, var_a4_3);
                goto block_50;
            }
            var_s5->unk160(&arg_sp0 - 0x38);
            return;
        }
        var_s5->unk160(&arg_sp0 - 0x38);
        return;
    }
    temp_v0_7 = arg_sp0.unk-30;
    if (temp_v0_7 != NULL) {
        var_t1_3 = temp_v0_7 + 8;
        if (temp_v0_7 != NULL) {
            goto block_120;
        }
        goto block_139;
    }
    var_t1_3 = &arg_sp0 - 0x38;
    if (temp_v0_7 == NULL) {
block_139:
        var_v1_5 = 1;
    } else {
block_120:
        var_v1_5 = temp_v0_7->unk4;
    }
    var_sp = sp - (((var_v1_5 * 4) + 0xF) & ~0xF);
    if (var_sp != NULL) {
        var_a3_4 = var_sp;
        if (var_v1_5 > 0) {
            var_v0_3 = var_t1_3;
            var_a7_3 = var_v1_5 & 3;
            if (var_a7_3 != 0) {
                do {
                    *var_a3_4 = *var_v0_3 + temp_s7;
                    var_v0_3 += 8;
                    var_a3_4 += 4;
                    var_a7_3 -= 1;
                    var_a3_4->unk-2 = (s16) (var_v0_3->unk-6 + temp_s6);
                } while (var_a7_3 != 0);
            }
            var_a1_3 = var_a3_4;
            temp_a7_3 = var_v1_5 >> 2;
            var_v1_6 = var_v0_3;
            if (temp_a7_3 != 0) {
                if (temp_a7_3 >= 2) {
                    var_at_3 = var_v1_6->unk0;
                    do {
                        var_a1_3 += 0x10;
                        var_a1_3->unk-10 = (s16) (var_at_3 + temp_s7);
                        var_a1_3->unk-E = (s16) (var_v1_6->unk2 + temp_s6);
                        var_a1_3->unk-C = (s16) (var_v1_6->unk8 + temp_s7);
                        var_a1_3->unk-A = (s16) (var_v1_6->unkA + temp_s6);
                        var_a1_3->unk-8 = (s16) (var_v1_6->unk10 + temp_s7);
                        var_a1_3->unk-6 = (s16) (var_v1_6->unk12 + temp_s6);
                        var_a1_3->unk-4 = (s16) (var_v1_6->unk18 + temp_s7);
                        temp_at_4 = var_v1_6->unk1A;
                        var_v1_6 += 0x20;
                        var_a1_3->unk-2 = (s16) (temp_at_4 + temp_s6);
                        var_at_3 = var_v1_6->unk0;
                    } while (var_v1_6 != ((var_t1_3 + (var_v1_5 * 8)) - 0x20));
                    var_a1_3->unk0 = var_at_3 + temp_s7;
                    var_a1_3->unk2 = (s16) (var_v1_6->unk2 + temp_s6);
                    var_a1_3->unk4 = (s16) (var_v1_6->unk8 + temp_s7);
                    var_a1_3->unk6 = (s16) (var_v1_6->unkA + temp_s6);
                    var_a1_3->unk8 = (s16) (var_v1_6->unk10 + temp_s7);
                    var_a1_3->unkA = (s16) (var_v1_6->unk12 + temp_s6);
                    var_a1_3->unkC = (s16) (var_v1_6->unk18 + temp_s7);
                    var_a1_3->unkE = (s16) (var_v1_6->unk1A + temp_s6);
                } else {
                    var_a1_3->unk0 = var_v1_6->unk0 + temp_s7;
                    var_a1_3->unk2 = (s16) (var_v1_6->unk2 + temp_s6);
                    var_a1_3->unk4 = (s16) (var_v1_6->unk8 + temp_s7);
                    var_a1_3->unk6 = (s16) (var_v1_6->unkA + temp_s6);
                    var_a1_3->unk8 = (s16) (var_v1_6->unk10 + temp_s7);
                    var_a1_3->unkA = (s16) (var_v1_6->unk12 + temp_s6);
                    var_a1_3->unkC = (s16) (var_v1_6->unk18 + temp_s7);
                    var_a1_3->unkE = (s16) (var_v1_6->unk1A + temp_s6);
                }
            }
            arg_sp0.unk-F8 = var_s3;
        }
        arg_sp0.unk-F8 = var_s3;
        expValidateWindowPriv(arg_sp0.unk-C0, &arg_sp0 - 0x38, var_sp, -1);
block_50:
        var_v1_7 = nfbWindowPrivateIndex * 4;
        temp_a3_2 = *(arg_sp0.unk-C0->unk84 + var_v1_7);
        arg_sp0.unk-118 = temp_s6;
        arg_sp0.unk-110 = temp_s7;
        temp_s7_2 = &arg_sp0 - 0x48;
        arg_sp0.unk-100 = var_s2;
        if (temp_a3_2->unk1C != 0) {
            temp_s6_2 = &arg_sp0 - 0x78;
            arg_sp0.unk-D8 = (s64) var_s5;
            arg_sp0.unk-D0 = 0;
            temp_s2 = temp_a3_2->unk18;
            var_s0_2 = arg_sp0.unk-C0->unk24;
loop_56:
            temp_s1 = *(var_s0_2->unk84 + var_v1_7);
            temp_a4 = arg_sp0.unk-C8;
            temp_a3_3 = temp_s1->unk18;
            temp_s4_2 = var_s0_2 + 0x38;
            if (temp_s2 != temp_a3_3) {
                temp_a7_4 = 1 << temp_a3_3;
                temp_s5 = temp_a3_3 * 0xC;
                temp_s3_2 = temp_s5 + temp_s6_2;
                temp_s5_2 = temp_s5 + temp_a4;
                if (!(temp_a7_4 & arg_sp0.unk-D0)) {
                    arg_sp0.unk-D0 = (s64) (temp_a7_4 | arg_sp0.unk-D0);
                    *((temp_a3_3 * 4) + temp_s7_2) = var_s0_2;
                    arg_sp0.unk-D8->unk154(temp_s3_2, 0, 0, temp_a3_3, temp_a4);
                    arg_sp0.unk-D8->unk164(temp_s3_2, temp_s4_2, temp_s5_2);
                } else {
                    arg_sp0.unk-D8->unk164(&arg_sp0 - 0x38, temp_s4_2, temp_s5_2, temp_a3_3, temp_a4);
                    arg_sp0.unk-D8->unk168(temp_s3_2, temp_s3_2, &arg_sp0 - 0x38);
                }
            }
            var_v1_8 = var_s0_2->unk24;
            if ((var_v1_8 != NULL) && (temp_s1->unk1C != 0)) {
block_55:
                var_s0_2 = var_v1_8;
                var_v1_7 = nfbWindowPrivateIndex * 4;
                goto loop_56;
            }
            var_v1_8 = var_s0_2->unk1C;
            if (var_v1_8 != NULL) {
                goto block_60;
            }
            if (arg_sp0.unk-C0 != var_s0_2) {
loop_63:
                var_s0_2 = var_s0_2->unk18;
                var_v1_8 = var_s0_2->unk1C;
                if (var_v1_8 == NULL) {
                    if (arg_sp0.unk-C0 == var_s0_2) {

                    } else {
                        goto loop_63;
                    }
                } else {
block_60:
                    if (arg_sp0.unk-C0 != var_s0_2) {
                        goto block_55;
                    }
                }
            }
            var_s5 = (void *) arg_sp0.unk-D8;
            if (temp_s2 != 3) {
                var_s5 = (void *) arg_sp0.unk-D8;
                if (arg_sp0.unk-D0 & 8) {
                    switch (temp_s2) {              /* irregular */
                    default:
                        if (arg_sp0.unk-D0 & 6) {
                        case 1:
                        case 2:
                            temp_s0 = temp_s6_2 + 0x24;
                            if (arg_sp0.unk-D0 & 2) {
                                temp_a0 = temp_s6_2 + 0xC;
                                var_s5->unk168(temp_a0, temp_a0, temp_s0);
                            } else if (temp_s2 != 1) {
                                temp_s1_2 = temp_s6_2 + 0xC;
                                arg_sp0.unk-44 = (s32) arg_sp0.unk-3C;
                                arg_sp0.unk-D0 = (s64) (arg_sp0.unk-D0 | 2);
                                var_s5->unk154(temp_s1_2, 0, 0);
                                var_s5->unk158(temp_s1_2, temp_s0);
                            }
                            if (arg_sp0.unk-D0 & 4) {
                                temp_a0_2 = temp_s6_2 + 0x18;
                                var_s5->unk168(temp_a0_2, temp_a0_2, temp_s0);
                            } else if (temp_s2 != 2) {
                                temp_s1_3 = temp_s6_2 + 0x18;
                                arg_sp0.unk-40 = (s32) arg_sp0.unk-3C;
                                arg_sp0.unk-D0 = (s64) (arg_sp0.unk-D0 | 4);
                                var_s5->unk154(temp_s1_3, 0, 0);
                                var_s5->unk158(temp_s1_3, temp_s0);
                            }
                            arg_sp0.unk-D0 = (s64) (arg_sp0.unk-D0 & ~8);
                            var_s5->unk160(temp_s0);
                        }
                        break;
                    }
                }
            } else {
            case 3:
                if (arg_sp0.unk-D0 & 2) {
                    var_s5->unk160(temp_s6_2 + 0xC);
                }
                if (arg_sp0.unk-D0 & 4) {
                    var_s5->unk160(temp_s6_2 + 0x18);
                }
                arg_sp0.unk-D0 = (s64) (arg_sp0.unk-D0 & ~0xE);
            }
            var_s0_3 = 0;
            var_s1_3 = temp_s6_2;
            var_s2_3 = temp_s7_2;
            arg_sp0.unk-B8 = (s64) arg_sp0.unk-7C;
loop_82:
            var_a4_4 = (1 << var_s0_3) & arg_sp0.unk-D0;
            if (var_a4_4 != 0) {
                temp_v1_3 = var_s1_3->unk8;
                var_t2 = temp_v1_3 + 8;
                if (temp_v1_3 != NULL) {
                    var_v0_4 = 1;
                    if (temp_v1_3 != NULL) {
                        goto block_85;
                    }
                } else {
                    var_t2 = var_s1_3;
                    if (temp_v1_3 == NULL) {
                        var_v0_4 = 1;
                    } else {
block_85:
                        var_v0_4 = temp_v1_3->unk4;
                    }
                }
                var_v1_9 = var_v0_4 & 3;
                var_a5 = ((var_v0_4 * 4) + 0xF) & ~0xF;
                var_sp -= var_a5;
                if (var_sp != NULL) {
                    var_a7_4 = var_sp;
                    if (var_v0_4 > 0) {
                        var_t0 = var_t2;
                        if (var_v1_9 != 0) {
                            do {
                                var_a4_4 = *var_t0 + arg_sp0.unk-110;
                                *var_a7_4 = var_a4_4;
                                var_t0 += 8;
                                var_a7_4 += 4;
                                var_v1_9 -= 1;
                                var_a7_4->unk-2 = (s16) (var_t0->unk-6 + arg_sp0.unk-118);
                            } while (var_v1_9 != 0);
                        }
                        var_a1_4 = var_a7_4;
                        temp_v0_8 = var_v0_4 >> 2;
                        var_v1_10 = var_t0;
                        if (temp_v0_8 != 0) {
                            if (temp_v0_8 >= 2) {
                                var_at_4 = var_v1_10->unk0;
                                do {
                                    var_a1_4 += 0x10;
                                    var_a1_4->unk-10 = (s16) (var_at_4 + arg_sp0.unk-110);
                                    var_a1_4->unk-E = (s16) (var_v1_10->unk2 + arg_sp0.unk-118);
                                    var_a1_4->unk-C = (s16) (var_v1_10->unk8 + arg_sp0.unk-110);
                                    var_a1_4->unk-A = (s16) (var_v1_10->unkA + arg_sp0.unk-118);
                                    var_a1_4->unk-8 = (s16) (var_v1_10->unk10 + arg_sp0.unk-110);
                                    var_a1_4->unk-6 = (s16) (var_v1_10->unk12 + arg_sp0.unk-118);
                                    var_a1_4->unk-4 = (s16) (var_v1_10->unk18 + arg_sp0.unk-110);
                                    temp_at_5 = var_v1_10->unk1A;
                                    var_v1_10 += 0x20;
                                    var_a1_4->unk-2 = (s16) (temp_at_5 + arg_sp0.unk-118);
                                    var_at_4 = var_v1_10->unk0;
                                } while (var_v1_10 != ((var_t2 + (var_v0_4 * 8)) - 0x20));
                                var_a7_4 = var_a1_4;
                                var_a7_4->unk0 = var_at_4 + arg_sp0.unk-110;
                                var_a7_4->unk2 = (s16) (var_v1_10->unk2 + arg_sp0.unk-118);
                                var_a7_4->unk4 = (s16) (var_v1_10->unk8 + arg_sp0.unk-110);
                                var_a7_4->unk6 = (s16) (var_v1_10->unkA + arg_sp0.unk-118);
                                var_a7_4->unk8 = (s16) (var_v1_10->unk10 + arg_sp0.unk-110);
                                var_a5 = var_v1_10->unk12 + arg_sp0.unk-118;
                                var_a7_4->unkA = var_a5;
                                var_a4_4 = var_v1_10->unk18 + arg_sp0.unk-110;
                                var_a7_4->unkC = var_a4_4;
                                var_a7_4->unkE = (s16) (var_v1_10->unk1A + arg_sp0.unk-118);
                            } else {
                                var_a1_4->unk0 = var_v1_10->unk0 + arg_sp0.unk-110;
                                var_a1_4->unk2 = (s16) (var_v1_10->unk2 + arg_sp0.unk-118);
                                var_a1_4->unk4 = (s16) (var_v1_10->unk8 + arg_sp0.unk-110);
                                var_a1_4->unk6 = (s16) (var_v1_10->unkA + arg_sp0.unk-118);
                                var_a4_4 = var_v1_10->unk10 + arg_sp0.unk-110;
                                var_a1_4->unk8 = var_a4_4;
                                var_a1_4->unkA = (s16) (var_v1_10->unk12 + arg_sp0.unk-118);
                                var_a1_4->unkC = (s16) (var_v1_10->unk18 + arg_sp0.unk-110);
                                var_a5 = var_v1_10->unk1A + arg_sp0.unk-118;
                                var_a1_4->unkE = var_a5;
                            }
                        }
                    }
                    var_a6 = 1;
                    if ((var_s0_3 != 0) && (var_a5 = 3, (var_s0_3 != 3))) {
                        var_a6 = 0xD;
                        if (var_s0_3 != 1) {
                            if (var_s0_3 == 2) {
                                var_a4_4 = 0xE;
                                arg_sp0.unk-B8 = 0xE;
                            }
                        } else {
                            arg_sp0.unk-B8 = 0xD;
                        }
                    } else {
                        arg_sp0.unk-B8 = -1;
                    }
                    expValidateWindowPriv((s64) *var_s2_3, var_s1_3, var_sp, arg_sp0.unk-B8, var_a4_4, var_a5, var_a6, var_a7_4);
                }
                local_0x5ef40000(var_s1_3);
            }
            var_s1_3 += 0xC;
            var_s0_3 += 1;
            var_s2_3 += 4;
            if (var_s0_3 != 4) {
                goto loop_82;
            }
        }
        var_s5->unk160(&arg_sp0 - 0x38);
        return;
    }
    var_s5->unk160(&arg_sp0 - 0x38);
}

void expClearOverlays(? *arg0, s32 arg1, void *arg2, u8 arg3) {
    ? *var_v0_2;
    s16 temp_at;
    s16 var_at;
    s32 var_a0;
    s32 var_a1;
    s32 var_v0;
    s32 var_v1;
    void *temp_s0;

    temp_s0 = **(arg2->unk1B4 + (expScreenPrivateIndex * 4));
    var_v0 = 0xC;
    temp_s0->unk4052C = 8;
    switch (arg3) {                                 /* switch 1; irregular */
    default:                                        /* switch 1 */
        ErrorF(&local_0x5f0a0000 - 0xD70, arg3, (void *)0x22);
        var_v0 = sp4;
        var_v1 = sp0;
        break;
    case 34:                                        /* switch 1 */
        var_v1 = 0xF;
        break;
    case 32:                                        /* switch 1 */
        var_v1 = 3;
        var_v0 = 0xD;
        break;
    case 33:                                        /* switch 1 */
        var_v1 = 0xC;
        var_v0 = 0xE;
        break;
    }
    var_a1 = 0;
    var_a0 = 0;
    switch (var_v0) {                               /* switch 2; irregular */
    default:                                        /* switch 2 */
        var_a1 = var_v1;
        temp_s0->unk4052C = var_v0;
        temp_s0->unk404D4 = 0;
        break;
    case 13:                                        /* switch 2 */
        var_a0 = 1;
        temp_s0->unk4052C = 0xB;
        temp_s0->unk404D4 = (s32) (var_v1 & 3);
        break;
    case 12:                                        /* switch 2 */
        var_a1 = 0;
        var_a0 = 1;
        temp_s0->unk4052C = 8;
        temp_s0->unk404D4 = (s32) (var_v1 & 0xF);
        break;
    case 14:                                        /* switch 2 */
        var_a1 = 0;
        var_a0 = 9;
        temp_s0->unk4052C = 0xB;
        temp_s0->unk404D4 = (s32) (var_v1 & 0xC);
        break;
    }
    temp_s0->unk40530 = 0;
    temp_s0->unk4077C = (s32) (var_a1 & 0xFFFFFF);
    temp_s0->unk4077C = 3;
    temp_s0->unk4077C = var_a0;
    if (arg1 != 0) {
        var_v0_2 = arg0;
        if (arg1 >= 2) {
            temp_s0->unk404C0 = 0;
            var_at = var_v0_2->unk0;
            do {
                temp_s0->unk4077C = (s32) var_at;
                temp_s0->unk4077C = (s32) var_v0_2->unk2;
                temp_s0->unk4077C = (s32) var_v0_2->unk4;
                temp_at = var_v0_2->unk6;
                var_v0_2 += 8;
                temp_s0->unk4077C = (s32) temp_at;
                temp_s0->unk407A8 = 0;
                temp_s0->unk404C0 = 0;
                var_at = var_v0_2->unk0;
            } while (var_v0_2 != (((arg1 * 8) + arg0) - 8));
            temp_s0->unk4077C = (s32) var_at;
            temp_s0->unk4077C = (s32) var_v0_2->unk2;
            temp_s0->unk4077C = (s32) var_v0_2->unk4;
            temp_s0->unk4077C = (s32) var_v0_2->unk6;
        } else {
            temp_s0->unk404C0 = 0;
            temp_s0->unk4077C = (s32) var_v0_2->unk0;
            temp_s0->unk4077C = (s32) var_v0_2->unk2;
            temp_s0->unk4077C = (s32) var_v0_2->unk4;
            temp_s0->unk4077C = (s32) var_v0_2->unk6;
        }
        temp_s0->unk407A8 = 0;
    }
}

void expInitWindowType(void *arg0) {
    s32 temp_t9;
    void *temp_a3;

    temp_t9 = arg0->unk84;
    temp_a3 = *((rrmWindowPrivateIndex * 4) + temp_t9);
    if ((*((nfbWindowPrivateIndex * 4) + temp_t9))->unk18 != 0) {
        temp_a3->unk2 = 1;
        return;
    }
    temp_a3->unk2 = 0;
}

void expValidateClip(void *arg0, void *arg6, ? arg_sp0) {
    s32 sp0;
    s16 temp_a0_2;
    s16 temp_a1_3;
    s16 temp_a2_2;
    s16 temp_a4_3;
    s16 temp_a5;
    s16 temp_a7;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v1_4;
    s16 var_a3;
    s16 var_a4;
    s16 var_v0;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a2_3;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a1_2;
    s32 var_a5_2;
    s32 var_at_2;
    s32 var_s0;
    s32 var_t2;
    s32 var_t3;
    s32 var_t9;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_at;
    s64 temp_at_2;
    s64 temp_t2;
    s64 temp_v0;
    s64 var_a7;
    s64 var_ra;
    s64 var_t8;
    s64 var_v1_2;
    u16 temp_a3_2;
    u16 var_t9_2;
    u8 temp_v1_7;
    void *temp_a0_3;
    void *temp_a1;
    void *temp_a2;
    void *temp_a3_3;
    void *temp_a4_2;
    void *temp_a4_4;
    void *temp_a6;
    void *temp_s3;
    void *temp_s4;
    void *temp_s5;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_5;
    void *temp_v1_6;
    void *var_a0_3;
    void *var_a1;
    void *var_a1_3;
    void *var_a1_4;
    void *var_a2;
    void *var_a5;
    void *var_a6;
    void *var_at;
    void *var_s1;
    void *var_sp;
    void *var_v1;
    void *var_v1_3;

    var_ra = saved_reg_ra;
    var_a6 = arg6;
    var_t8 = 0;
    var_a7 = 0;
    var_sp = sp;
    arg_sp0.unk-88 = (s64) saved_reg_fp;
    arg_sp0.unk-80 = (s64) saved_reg_s7;
    temp_a1 = arg0->unk10;
    arg_sp0.unk-90 = (s64) saved_reg_gp;
    var_a5 = temp_a1->unk74;
    temp_v1 = arg0->unk84;
    temp_a2 = *((rrmWindowPrivateIndex * 4) + temp_v1);
    if (var_a5->unkDC != 0) {
        var_a6 = *(temp_v1 + (nfbWindowPrivateIndex * 4));
        if (var_a6->unk34 == 0) {
            temp_v1_2 = arg0->unk34;
            if (temp_v1_2 != NULL) {
                var_a0 = temp_v1_2->unk4;
            } else {
                var_a0 = 1;
            }
            if (var_a0 != 0) {
                temp_a0 = var_a6->unk14;
                if (temp_v1_2 != NULL) {
                    var_t2 = temp_v1_2->unk4;
                } else {
                    var_t2 = 1;
                }
                var_t3 = var_t2;
                if (temp_v1_2 != NULL) {
                    var_a1 = temp_v1_2 + 8;
                } else {
                    var_a1 = arg0 + 0x2C;
                }
                var_a6 = var_a1;
                arg_sp0.unk-70 = (s64) (**(temp_a1->unk1B4 + (expScreenPrivateIndex * 4)) + 0x40000);
                if (temp_a0 != 0xD) {
                    arg_sp0.unk-A0 = 0;
                    if (temp_a0 != 0xE) {
                        if (temp_a0 != 0xC) {
                            temp_at = arg_sp0.unk-70;
                            var_a1_2 = 0;
                            var_t9 = 0xFFFFFF;
                            temp_at->unk52C = temp_a0;
                            temp_at->unk4D4 = 0;
                        } else {
                            var_a1_2 = 1;
                            var_t9 = 0;
                            temp_v0 = arg_sp0.unk-70;
                            temp_v0->unk52C = 8;
                            temp_v0->unk4D4 = 0xF;
                        }
                    } else {
                        var_a1_2 = 9;
                        var_t9 = 0;
                        temp_at_2 = arg_sp0.unk-70;
                        temp_at_2->unk52C = 0xB;
                        temp_at_2->unk4D4 = 0xC;
                    }
                } else {
                    var_a1_2 = 1;
                    var_t9 = 0;
                    arg_sp0.unk-A0 = 0;
                    temp_a3 = arg_sp0.unk-70;
                    temp_a3->unk52C = 0xB;
                    temp_a3->unk4D4 = 3;
                }
                temp_a4 = arg_sp0.unk-70;
                var_a0_2 = 1;
                if (var_t2 >= 1) {
                    var_a0_2 = var_t2;
                }
                temp_a4->unk530 = 0;
                temp_a4->unk77C = (s32) (var_t9 & 0xFFFFFF);
                temp_a4->unk77C = 3;
                temp_a4->unk77C = var_a1_2;
                temp_a4->unk4C0 = 0;
                var_t8 = arg_sp0.unk-A0;
                temp_a3_2 = var_a5->unkE2;
                arg_sp0.unk-68 = (s64) temp_a3_2;
                var_t9_2 = temp_a3_2;
                if (var_a0_2 & 1) {
                    temp_t2 = arg_sp0.unk-70;
                    temp_t2->unk77C = (s32) var_a6->unk0;
                    var_t9_2 = (u16) arg_sp0.unk-68;
                    temp_t2->unk77C = (s32) (var_a6->unk2 + var_t9_2);
                    temp_t2->unk77C = (s32) var_a6->unk4;
                    var_t3 -= 1;
                    temp_v0_2 = var_a6->unk6;
                    var_a6 += 8;
                    var_t8 = arg_sp0.unk-A0;
                    temp_t2->unk77C = (s32) (temp_v0_2 + var_t9_2);
                }
                var_a5 = (void *) var_t3;
                temp_a1_2 = var_a0_2 >> 1;
                if (temp_a1_2 != 0) {
                    if (temp_a1_2 >= 2) {
                        arg_sp0.unk-98 = (s64) var_a5;
                        var_v0 = var_a6->unk0;
                        var_a0_3 = var_a6;
                        var_at = var_a5 - 2;
                        do {
                            ((void *) arg_sp0.unk-70)->unk77C = (void *) var_v0;
                            ((void *) arg_sp0.unk-70)->unk77C = (void *) (var_a0_3->unk2 + var_t9_2);
                            ((void *) arg_sp0.unk-70)->unk77C = (void *) var_a0_3->unk4;
                            ((void *) arg_sp0.unk-70)->unk77C = (void *) (var_a0_3->unk6 + var_t9_2);
                            ((void *) arg_sp0.unk-70)->unk77C = (void *) var_a0_3->unk8;
                            ((void *) arg_sp0.unk-70)->unk77C = (void *) (var_a0_3->unkA + var_t9_2);
                            ((void *) arg_sp0.unk-70)->unk77C = (void *) var_a0_3->unkC;
                            temp_v0_3 = var_a0_3->unkE;
                            var_at -= 2;
                            var_a0_3 += 0x10;
                            ((void *) arg_sp0.unk-70)->unk77C = (void *) (temp_v0_3 + var_t9_2);
                            var_v0 = var_a0_3->unk0;
                        } while (var_at != NULL);
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) var_v0;
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) (var_a0_3->unk2 + var_t9_2);
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) var_a0_3->unk4;
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) (var_a0_3->unk6 + var_t9_2);
                        var_a6 = (void *) var_a0_3->unk8;
                        ((void *) arg_sp0.unk-70)->unk77C = var_a6;
                        var_a5 = var_a0_3->unkA + var_t9_2;
                        ((void *) arg_sp0.unk-70)->unk77C = var_a5;
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) var_a0_3->unkC;
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) (var_a0_3->unkE + var_t9_2);
                    } else {
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) var_a6->unk0;
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) (var_a6->unk2 + var_t9_2);
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) var_a6->unk4;
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) (var_a6->unk6 + var_t9_2);
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) var_a6->unk8;
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) (var_a6->unkA + var_t9_2);
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) var_a6->unkC;
                        ((void *) arg_sp0.unk-70)->unk77C = (void *) (var_a6->unkE + var_t9_2);
                    }
                }
                ((void *) arg_sp0.unk-70)->unk7A8 = 0;
            }
        }
    }
    arg_sp0.unk-50 = (s32) temp_a2->unkC;
    arg_sp0.unk-4C = (void *) arg0->unk4;
    arg_sp0.unk-34 = NULL;
    arg_sp0.unk-30 = (s32) temp_a2->unk18;
    arg_sp0.unk-20 = (s32) temp_a2->unk20;
    temp_v1_3 = arg0->unk34;
    var_a1_3 = arg0 + 0x2C;
    arg_sp0.unk-C0 = (s64) saved_reg_s0;
    if (temp_v1_3 != NULL) {
        var_s0 = temp_v1_3->unk4;
        if (temp_v1_3 != NULL) {
            goto block_6;
        }
        goto block_15;
    }
    var_s0 = 1;
    if (temp_v1_3 == NULL) {
block_15:
        arg_sp0.unk-D0 = (s64) saved_reg_s1;
    } else {
block_6:
        var_a1_3 = temp_v1_3 + 8;
        arg_sp0.unk-D0 = (s64) saved_reg_s1;
    }
    arg_sp0.unk-B8 = (s64) saved_reg_s2;
    arg_sp0.unk-38 = var_s0;
    arg_sp0.unk-24 = 1;
    arg_sp0.unk-28 = 1;
    arg_sp0.unk-2C = 1;
    temp_v1_4 = arg0->unk8;
    arg_sp0.unk-48 = (s32) temp_v1_4;
    var_a3 = arg0->unkA;
    arg_sp0.unk-44 = (s32) var_a3;
    arg_sp0.unk-40 = (s32) arg0->unkC;
    arg_sp0.unk-3C = (s32) arg0->unkE;
    var_a4 = temp_a2->unk0 & 2;
    var_s1 = var_a1_3;
    if (var_a4 != 0) {
        arg_sp0.unk-44 = 0;
        arg_sp0.unk-48 = 0;
        arg_sp0.unk-38 = 1;
        arg_sp0.unk-28 = 0;
        arg_sp0.unk-2C = 0;
        arg_sp0.unk-3C = (s32) arg0->unk10->unkA;
        arg_sp0.unk-34 = (void *) sp;
        arg_sp0.unk-40 = (s32) arg0->unk10->unk8;
        sp0 = 0;
        arg_sp0.unk-34->unk4 = (s32) arg_sp0.unk-44;
        arg_sp0.unk-34->unk8 = (s32) arg_sp0.unk-40;
        arg_sp0.unk-E0 = (s64) saved_reg_ra;
        arg_sp0.unk-34->unkC = (s32) arg_sp0.unk-3C;
        goto block_9;
    }
    if (var_s0 == 0) {
        arg_sp0.unk-E0 = (s64) saved_reg_ra;
        arg_sp0.unk-3C = 0;
        arg_sp0.unk-40 = 0;
        arg_sp0.unk-44 = 0;
        arg_sp0.unk-48 = 0;
        arg_sp0.unk-2C = 0;
        goto block_9;
    }
    var_at_2 = (u32) var_s0 < 5U;
    if (var_s0 != 1) {
        goto block_20;
    }
    var_a4 = arg0->unk8;
    temp_a0_2 = var_a1_3->unk0;
    var_at_2 = (u32) var_s0 < 5U;
    if (var_a4 == temp_a0_2) {
        temp_a2_2 = var_a1_3->unk2;
        var_at_2 = (u32) var_s0 < 5U;
        if (arg0->unkA == temp_a2_2) {
            var_a3 = var_a1_3->unk4 - temp_a0_2;
            var_at_2 = (u32) var_s0 < 5U;
            if (arg0->unkC == var_a3) {
                var_a4 = (s16) arg0->unkE;
                var_at_2 = (u32) var_s0 < 5U;
                if (var_a4 == (var_a1_3->unk6 - temp_a2_2)) {
                    arg_sp0.unk-2C = 0;
                    arg_sp0.unk-34 = (void *) sp;
                    sp0 = (s32) temp_v1_4;
                    arg_sp0.unk-34->unk4 = (s32) arg_sp0.unk-44;
                    arg_sp0.unk-34->unk8 = (s32) arg_sp0.unk-40;
                    arg_sp0.unk-E0 = (s64) saved_reg_ra;
                    arg_sp0.unk-34->unkC = (s32) arg_sp0.unk-3C;
                    goto block_10;
                }
            }
        }
    }
block_20:
    if (var_at_2 == 0) {
        arg_sp0.unk-E0 = (s64) saved_reg_ra;
        arg_sp0.unk-38 = 0;
block_9:
        goto block_10;
    }
    if (var_s0 == 1) {
        arg_sp0.unk-2C = 0;
    } else {
        arg_sp0.unk-A8 = 0;
        arg_sp0.unk-78 = 0;
        arg_sp0.unk-D8 = (s64) saved_reg_s3;
        arg_sp0.unk-C8 = (s64) saved_reg_s6;
        temp_s3 = arg0->unk10;
        if (var_s0 == 2) {
            arg_sp0.unk-30 = 1;
            arg_sp0.unk-38 = 2;
            arg_sp0.unk-2C = 0;
            var_sp = sp - (((var_s0 * 0x10) + 0xF) & ~0xF);
            arg_sp0.unk-34 = var_sp;
            if (var_s0 != 0) {
                var_v1 = var_a1_3;
                var_a0_4 = 0;
                var_a5_2 = var_s0;
                if (var_s0 < 0) {
                    var_a5_2 = 0;
                }
                do {
                    *(arg_sp0.unk-34 + var_a0_4) = (s32) var_v1->unk0;
                    (arg_sp0.unk-34 + var_a0_4)->unk4 = (s32) var_v1->unk2;
                    (arg_sp0.unk-34 + var_a0_4)->unk8 = (s32) (var_v1->unk4 - var_v1->unk0);
                    var_v1 += 8;
                    temp_a4_2 = arg_sp0.unk-34 + var_a0_4;
                    var_a0_4 += 0x10;
                    temp_a4_2->unkC = (s32) (var_v1->unk-2 - var_v1->unk-6);
                } while (var_v1 != (var_a1_3 + (var_s0 * 8)));
            } else {
                var_a5_2 = 0;
            }
            var_v1_2 = 1;
            var_s1 = (var_a5_2 * 8) + var_a1_3;
        } else {
            arg_sp0.unk-E0 = (s64) saved_reg_ra;
            arg_sp0.unk-E8 = (s64) saved_reg_s5;
            temp_s5 = &arg_sp0 - 0x60;
            arg_sp0.unk-B0 = (s64) saved_reg_s4;
            temp_s4 = arg0 + 0x2C;
            temp_s3->unk154(temp_s5, temp_s4, 0, var_a3, var_a4, var_a5, var_a6, 0);
            temp_s3->unk16C(temp_s5, temp_s5, temp_s4);
            temp_v1_5 = arg_sp0.unk-58;
            if (temp_v1_5 != NULL) {
                var_a0_5 = temp_v1_5->unk4;
            } else {
                var_a0_5 = 1;
            }
            if (var_a0_5 != 1) {
                temp_s3->unk160(temp_s5);
                var_v1_2 = arg_sp0.unk-A8;
                var_ra = arg_sp0.unk-E0;
            } else {
                arg_sp0.unk-30 = 0;
                arg_sp0.unk-38 = 2;
                arg_sp0.unk-2C = 0;
                var_sp = sp - (((var_s0 * 0x10) + 0xF) & ~0xF);
                arg_sp0.unk-34 = var_sp;
                sp0 = (s32) arg0->unk2C;
                arg_sp0.unk-34->unk4 = (s32) arg0->unk2E;
                arg_sp0.unk-34->unk8 = (s32) (arg0->unk30 - arg0->unk2C);
                arg_sp0.unk-34->unkC = (s32) (arg0->unk32 - arg0->unk2E);
                temp_v1_6 = arg_sp0.unk-58;
                if (temp_v1_6 != NULL) {
                    var_a1_4 = temp_v1_6 + 8;
                } else {
                    var_a1_4 = temp_s5;
                }
                temp_a7 = var_a1_4->unk0;
                arg_sp0.unk-34->unk10 = (s32) temp_a7;
                temp_a5 = var_a1_4->unk2;
                temp_a6 = arg_sp0.unk-34;
                temp_a6->unk14 = (s32) temp_a5;
                temp_a4_3 = var_a1_4->unk0;
                temp_a3_3 = arg_sp0.unk-34;
                temp_a2_3 = var_a1_4->unk4 - temp_a4_3;
                temp_a3_3->unk18 = temp_a2_3;
                temp_a1_3 = var_a1_4->unk2;
                arg_sp0.unk-34->unk1C = (s32) (var_a1_4->unk6 - temp_a1_3);
                temp_s3->unk160(temp_s5, temp_a1_3, temp_a2_3, temp_a3_3, temp_a4_3, temp_a5, temp_a6, temp_a7);
                var_v1_2 = arg_sp0.unk-A8;
                var_ra = arg_sp0.unk-E0;
                arg_sp0.unk-78 = 1;
            }
            var_t8 = arg_sp0.unk-78;
        }
        var_a7 = var_v1_2;
    }
    var_a2 = &arg_sp0 - 0x50;
    if (var_a7 == 0) {
        var_a2 = &arg_sp0 - 0x50;
        if (var_t8 == 0) {
            arg_sp0.unk-34 = (void *) (var_sp - (((var_s0 * 0x10) + 0xF) & ~0xF));
            if (var_s0 != 0) {
                var_a0_6 = 0;
                var_v1_3 = var_s1;
                do {
                    *(arg_sp0.unk-34 + var_a0_6) = (s32) var_v1_3->unk0;
                    (arg_sp0.unk-34 + var_a0_6)->unk4 = (s32) var_v1_3->unk2;
                    (arg_sp0.unk-34 + var_a0_6)->unk8 = (s32) (var_v1_3->unk4 - var_v1_3->unk0);
                    var_v1_3 += 8;
                    temp_a4_4 = arg_sp0.unk-34 + var_a0_6;
                    var_a0_6 += 0x10;
                    temp_a4_4->unkC = (s32) (var_v1_3->unk-2 - var_v1_3->unk-6);
                } while (var_v1_3 != ((var_s0 * 8) + var_s1));
                arg_sp0.unk-E0 = var_ra;
            }
block_10:
            var_a2 = &arg_sp0 - 0x50;
        }
    }
    arg_sp0.unk-E0 = var_ra;
    if (ioctl(arg0->unk10->unk74->unk64, 0x3F3, var_a2) == -1) {
        ErrorF(&local_0x5f0a0000 - 0xCC0, (u8) arg_sp0.unk-50, arg_sp0.unk-4C, (u8) errno);
    }
    temp_a0_3 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    temp_v1_7 = temp_a0_3->unk4;
    if (!(temp_v1_7 & 2)) {
        temp_a0_3->unk4 = (u8) (temp_v1_7 | 2);
        temp_a0_3->unk5 = (u8) (temp_a0_3->unk5 & ~2);
    }
}

void expValidateSwapbuf(void *arg0, void *arg1) {
    s32 sp8;
    void *sp4;
    s32 sp0;
    s32 temp_a3;
    s32 temp_a5;
    u32 var_a0;
    u8 temp_a3_2;
    void *temp_a2;
    void *temp_a4;

    temp_a5 = arg1->unkC;
    sp0 = temp_a5;
    temp_a4 = arg0->unk4;
    sp4 = temp_a4;
    temp_a3 = arg1->unk14;
    sp8 = temp_a3;
    if (ioctl(arg0->unk10->unk74->unk64, 0x3F4, sp, temp_a3, temp_a4, temp_a5) == -1) {
        ErrorF(&local_0x5f0a0000 - 0xC80, (u8) sp0, sp4, (u8) errno);
    }
    FlushClientCaches(arg0->unk4);
    var_a0 = globalSerialNumber + 1;
    if (var_a0 > 0x10000000U) {
        var_a0 = 1;
    }
    globalSerialNumber = var_a0;
    arg0->unk14 = var_a0;
    temp_a2 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    temp_a3_2 = temp_a2->unk4;
    if (!(temp_a3_2 & 8)) {
        temp_a2->unk4 = (u8) (temp_a3_2 | 8);
        temp_a2->unk5 = (u8) (temp_a2->unk5 & ~8);
    }
}

void expValidateMode(void *arg0, void *arg1) {
    s64 sp48;
    s32 sp10;
    s32 spC;
    s32 sp8;
    void *sp4;
    s32 sp0;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_s4;
    s32 temp_v0_5;
    s32 var_a0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_s3;
    s64 var_ra;
    void *temp_a4;
    void *temp_s2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1;
    void *var_a0_2;

    var_ra = saved_reg_ra;
    temp_s2 = arg0->unk10->unk74;
    if (arg1->unk14 >= 0) {
        var_a0 = 0;
        if (arg0->unk1 != 2) {
            temp_v0 = arg0->unk78;
            if (temp_v0 != NULL) {
                var_a1 = temp_v0->unk8;
            } else {
                var_ra = sp48;
                var_a1 = M2C_ERROR(/* Read from unset register $t9 */)(arg0, 2)->unk78->unk8;
            }
            sp48 = var_ra;
            var_a0 = var_a1;
        }
        temp_v0_2 = LookupIDByType(var_a0, 6);
        if (temp_v0_2 != NULL) {
            temp_a1 = *temp_v0_2->unk44;
            if (temp_a1 >= 0) {
                var_a0_2 = temp_s2->unk74 + (temp_a1 * 0x1C);
            } else {
                temp_v0_3 = arg0->unk78;
                if (temp_v0_3 != NULL) {
                    var_a1_2 = temp_v0_3->unk0;
                } else {
                    var_a1_2 = *M2C_ERROR(/* Read from unset register $t9 */)(arg0, temp_a1, temp_a1 * 8)->unk78;
                }
                var_a0_2 = temp_s2->unk74 + (*(temp_s2->unk7C + ((temp_s2->unk58 + ((var_a1_2 - temp_s2->unk50) * 0x14))->unk4 * 0x18))->unk4 * 0x1C);
            }
        } else {
            temp_v0_4 = arg0->unk78;
            if (temp_v0_4 != NULL) {
                var_a1_3 = temp_v0_4->unk0;
            } else {
                var_a1_3 = *M2C_ERROR(/* Read from unset register $t9 */)(arg0)->unk78;
            }
            var_a0_2 = temp_s2->unk74 + (*(temp_s2->unk7C + ((temp_s2->unk58 + ((var_a1_3 - temp_s2->unk50) * 0x14))->unk4 * 0x18))->unk4 * 0x1C);
        }
        temp_v0_5 = arg1->unk20;
        var_s3 = arg1->unk24 | ((var_a0_2->unk18 << 0x1B) | 0x800);
        temp_s4 = arg1->unk14;
        if (!(var_s3 & 0x100)) {
            var_s3 |= 0xF00000;
        }
        if (temp_v0_5 & 2) {
            if (temp_v0_5 & 4) {
                var_s3 |= 0x01000000;
            } else {
                var_s3 &= ~0x01000000;
            }
        }
        temp_a5 = arg1->unkC;
        sp0 = temp_a5;
        temp_a4 = arg0->unk4;
        spC = var_s3;
        sp8 = temp_s4;
        sp4 = temp_a4;
        temp_a3 = arg1->unk20;
        sp10 = temp_a3;
        if (ioctl(temp_s2->unk64, 0x3F9, sp, temp_a3, temp_a4, temp_a5) == -1) {
            ErrorF(&local_0x5f0a0000 - 0xC40, (u8) sp0, sp4, (u8) errno);
        }
        temp_v1 = (temp_s4 * 0xC) + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x16B5DC) - 0x5384);
        temp_v1->unk8 = (s32) arg1->unk20;
        temp_v1->unk0 = (void *) arg0->unk4;
        temp_v1->unk4 = var_s3;
    }
}

/*
Decompilation failure in function expValidateReducedGC:

Unable to determine jump table for jr instruction at exp_window.s line 2451.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void expValidateWindowGC(void *arg0, s32 arg1, void *arg2) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s16 var_t8_2;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_at_7;
    s32 temp_gp;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s6;
    s32 temp_t1_4;
    s32 temp_t2;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_14;
    s32 temp_v0_15;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 var_a0;
    s32 var_a0_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_at_3;
    s32 var_at_5;
    s32 var_at_7;
    s32 var_t3;
    s32 var_t9;
    s32 var_v0_2;
    s32 var_v0_4;
    s32 var_v1;
    s64 var_a1;
    s64 var_a4;
    s64 var_a7;
    s64 var_ra;
    u16 temp_a2;
    u16 temp_at_9;
    u16 temp_t1;
    u16 temp_v0;
    u32 *var_t8;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a1;
    u32 temp_a2_2;
    u32 temp_a2_3;
    u32 temp_a2_4;
    u32 temp_at_10;
    u32 temp_at_12;
    u32 temp_at_2;
    u32 temp_at_3;
    u32 temp_at_4;
    u32 temp_at_5;
    u32 temp_t0;
    u32 temp_v0_10;
    u32 temp_v0_13;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 var_a0_2;
    u32 var_a1_2;
    u32 var_a2;
    u32 var_at_2;
    u32 var_v0;
    u8 *var_a5_2;
    u8 *var_at_6;
    u8 temp_a2_5;
    u8 temp_at_6;
    u8 temp_t1_2;
    u8 temp_t1_3;
    u8 temp_t2_2;
    u8 temp_v0_3;
    u8 temp_v0_4;
    u8 temp_v0_5;
    u8 temp_v0_9;
    u8 temp_v1_3;
    u8 temp_v1_4;
    u8 var_a0_3;
    u8 var_a1_3;
    u8 var_a1_4;
    u8 var_a2_3;
    u8 var_a3_2;
    u8 var_at;
    u8 var_v0_3;
    void *temp_a0_3;
    void *temp_at;
    void *temp_at_11;
    void *temp_at_13;
    void *temp_at_8;
    void *temp_s3;
    void *temp_t0_2;
    void *temp_v0_2;
    void *var_a2_2;
    void *var_a3;
    void *var_a6;
    void *var_at_4;

    var_ra = saved_reg_ra;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x182008;
    temp_s3 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    if (arg1 & 0x10F) {
        expValidateReducedGC(arg0, arg2);
        var_ra = sp68;
    }
    var_t3 = arg1 & 0x10C;
    if (arg1 & 0x800) {
        temp_at = arg0->unk24;
        var_t3 = arg1 & 0x10C;
        if (temp_at != NULL) {
            temp_v0 = temp_at->unkC;
            if (((s32) temp_v0 < 0x21) && !((temp_v0 - 1) & temp_v0)) {
                temp_a2 = temp_at->unkE;
                sp68 = var_ra;
                temp_s6 = temp_at->unk1C * temp_a2;
                temp_v0_2 = local_0x5ef40000(temp_at->unk10, temp_at->unkC, temp_a2, temp_at->unk2);
                if (temp_v0_2 == NULL) {
                    sp10 = 0;
                } else {
                    memmove(temp_v0_2->unk20, temp_at->unk20, temp_s6);
                    sp10 = (s64) temp_v0_2;
                    var_ra = sp68;
                }
                if (sp10 != 0) {
                    var_at = sp10->unk3;
                    temp_lo = sp10->unkC * var_at;
                    if (temp_lo < 0x20) {
                        temp_lo_2 = 0x20 / temp_lo;
                        M2C_TRAP_IF(temp_lo == 0);
                        if ((temp_lo_2 * temp_lo) == 0x20) {
                            var_a1 = 0;
                            if ((s32) sp10->unkE > 0) {
                                var_a4 = temp_lo_2 - 1;
                                var_t8 = sp10->unk20;
                                sp0 = temp_lo_2 >= 2;
                                sp8 = (s64) *((temp_lo * 4) + (temp_gp - 0x6DF4));
loop_134:
                                var_v1 = 0;
                                temp_a2_2 = *var_t8 & sp8;
                                *var_t8 = temp_a2_2;
                                var_v0 = temp_a2_2;
                                var_at_2 = temp_a2_2;
                                if (sp0 != 0) {
                                    var_a0 = var_a4 & 3;
                                    var_a5 = 0;
                                    if (var_a0 != 0) {
                                        do {
                                            var_v1 += 1;
                                            var_a0 -= 1;
                                            var_at_2 = var_at_2 >> temp_lo;
                                            var_v0 |= var_at_2;
                                        } while (var_a0 != 0);
                                        var_a5 = var_v1;
                                    }
                                    if ((var_a4 >> 2) != 0) {
                                        sp50 = var_a1;
                                        sp48 = var_a4;
                                        temp_a2_3 = var_at_2 >> temp_lo;
                                        var_at_3 = var_v0 | temp_a2_3;
                                        var_a2 = temp_a2_3 >> temp_lo;
                                        var_a0_2 = var_a2 >> temp_lo;
                                        var_a1_2 = var_a0_2 >> temp_lo;
loop_140:
                                        temp_at_2 = var_a1_2 >> temp_lo;
                                        temp_a0 = temp_at_2 >> temp_lo;
                                        temp_v1 = temp_a0 >> temp_lo;
                                        temp_a2_4 = temp_v1 >> temp_lo;
                                        var_v0 = var_at_3 | var_a2 | var_a0_2 | var_a1_2;
                                        if (var_a5 != (var_a4 - 4)) {
                                            temp_at_3 = temp_a2_4 >> temp_lo;
                                            temp_a1 = temp_at_3 >> temp_lo;
                                            temp_a0_2 = temp_a1 >> temp_lo;
                                            temp_v1_2 = temp_a0_2 >> temp_lo;
                                            var_v0 = var_v0 | temp_at_2 | temp_a0 | temp_v1 | temp_a2_4;
                                            if (var_a5 != (var_a4 - 8)) {
                                                temp_at_4 = temp_v1_2 >> temp_lo;
                                                var_a2 = temp_at_4 >> temp_lo;
                                                var_a0_2 = var_a2 >> temp_lo;
                                                var_a1_2 = var_a0_2 >> temp_lo;
                                                var_v0 = var_v0 | temp_at_3 | temp_a1 | temp_a0_2 | temp_v1_2;
                                                var_a5 += 0xC;
                                                var_at_3 = var_v0 | temp_at_4;
                                                if (var_a5 == var_a4) {
                                                    var_a4 = sp48;
                                                } else {
                                                    goto loop_140;
                                                }
                                            } else {
                                                var_a4 = sp48;
                                            }
                                        } else {
                                            var_a4 = sp48;
                                        }
                                        var_a1 = sp50;
                                    }
                                    *var_t8 = var_v0;
                                }
                                var_a1 += 1;
                                var_t8 += 4;
                                if (var_a1 < (s32) sp10->unkE) {
                                    goto loop_134;
                                }
                                var_at = sp10->unk3;
                            }
                            M2C_TRAP_IF(var_at == 0);
                            sp10->unkC = (u16) (0x20 / (s32) var_at);
                        }
                    }
                    temp_a0_3 = arg0->unk24;
                    temp_t2 = temp_a0_3->unk18 - 1;
                    temp_a0_3->unk18 = temp_t2;
                    if (temp_t2 == 0) {
                        Xfree(temp_a0_3);
                        var_ra = sp68;
                    }
                    arg0->unk24 = (void *) sp10;
                }
            }
            var_t3 = arg1 & 0x10C;
        }
    }
    if (var_t3 != 0) {
        temp_at_5 = (u32) (arg0->unk10 & 0x03FFFFFF) >> 0x18;
        switch (temp_at_5) {                        /* switch 1; irregular */
        default:                                    /* switch 1 */
            sp68 = var_ra;
            FatalError(&local_0x5f0b0000 + 0x1040);
            break;
        case 3:                                     /* switch 1 */
            if (arg0->unk18 == arg0->unk1C) {
                temp_s3->unk24 = (s32) (temp_gp - 0x5654);
            } else {
                temp_s3->unk24 = (s32) (temp_gp - 0x55DC);
            }
            break;
        case 1:                                     /* switch 1 */
            temp_at_6 = arg0->unk4;
            if ((s32) temp_at_6 < 9) {
                temp_s3->unk24 = (s32) (temp_gp - 0x563C);
            } else if (temp_at_6 != 0xC) {
                temp_s3->unk24 = (s32) (temp_gp - 0x560C);
            } else {
                temp_s3->unk24 = (s32) (temp_gp - 0x5624);
            }
            break;
        case 0:                                     /* switch 1 */
            temp_s3->unk24 = (s32) (temp_gp - 0x5654);
            break;
        case 2:                                     /* switch 1 */
            temp_s3->unk24 = (s32) (temp_gp - 0x55F4);
            break;
        }
    }
    var_t9 = 0;
    if (arg1 & 0x300020) {
        var_t8_2 = 0;
        var_a7 = expGCPrivateIndex * 4;
        var_a6 = *(arg0->unk4C + var_a7);
        if (((u32) arg0->unk10 >> 0x1E) != 1) {
            goto block_16;
        }
        temp_t1 = arg0->unkA;
        sp18 = (s64) temp_t1;
        if ((s32) temp_t1 > 0) {
            temp_a0_4 = temp_t1 - 1 + 1;
            var_at_4 = arg0->unkC;
            var_v0_2 = temp_a0_4 & 3;
            temp_a1_2 = temp_a0_4 + var_at_4;
            if (var_v0_2 != 0) {
                do {
                    var_at_4 += 1;
                    var_v0_2 -= 1;
                    var_t9 += var_at_4->unk-1;
                } while (var_v0_2 != 0);
            }
            temp_a3 = temp_a0_4 >> 2;
            if (temp_a3 != 0) {
                if (temp_a3 >= 2) {
                    var_a0_3 = var_at_4->unk2;
                    var_a2_2 = var_at_4;
                    temp_a5 = temp_a1_2 - 4;
                    var_at_5 = var_at_4->unk0 + var_t9;
                    var_a1_3 = var_at_4->unk1;
loop_62:
                    temp_v1_3 = var_a2_2->unk5;
                    temp_v0_3 = var_a2_2->unk6;
                    var_at_5 = var_a2_2->unk4 + (var_a2_2->unk3 + (var_a0_3 + (var_a1_3 + var_at_5)));
                    if (var_a2_2 != (temp_a5 - 4)) {
                        temp_v1_4 = var_a2_2->unk9;
                        temp_v0_4 = var_a2_2->unkA;
                        var_at_5 = var_a2_2->unk8 + (var_a2_2->unk7 + (temp_v0_3 + (temp_v1_3 + var_at_5)));
                        if (var_a2_2 != (temp_a5 - 8)) {
                            temp_v0_5 = var_a2_2->unkC;
                            var_a1_3 = var_a2_2->unkD;
                            var_a0_3 = var_a2_2->unkE;
                            temp_at_7 = var_a2_2->unkB + (temp_v0_4 + (temp_v1_4 + var_at_5));
                            var_a2_2 += 0xC;
                            var_at_5 = temp_v0_5 + temp_at_7;
                            if (var_a2_2 == temp_a5) {
                                var_a3 = var_a2_2;
                            } else {
                                goto loop_62;
                            }
                        } else {
                            var_a0_3 = temp_v0_4;
                            var_a1_3 = temp_v1_4;
                            var_a3 = var_a2_2 + 8;
                        }
                    } else {
                        var_a0_3 = temp_v0_3;
                        var_a1_3 = temp_v1_3;
                        var_a3 = var_a2_2 + 4;
                    }
                    var_t9 = var_a3->unk3 + (var_a0_3 + (var_a1_3 + var_at_5));
                } else {
                    var_t9 = var_at_4->unk3 + (var_at_4->unk2 + (var_at_4->unk1 + (var_at_4->unk0 + var_t9)));
                }
            }
        }
        if ((var_t9 >= 0x11) || ((var_t9 - 1) & var_t9)) {
block_16:
            var_a6->unk2 = 0;
        } else {
            temp_v0_6 = sp18 - 2;
            temp_t0 = ((s32) (temp_v0_6 ^ 2) >> 0x1F) + temp_v0_6;
            temp_v1_5 = (s32) ((temp_t0 >> 0x1F) + temp_t0) >> 1;
            temp_a0_5 = temp_v1_5 + 1;
            if (temp_v1_5 >= 0) {
                temp_at_8 = arg0->unkC;
                var_at_6 = temp_v0_6 + temp_at_8;
                if (temp_a0_5 & 1) {
                    temp_t1_2 = *var_at_6;
                    var_at_6 -= 2;
                    var_t8_2 = (((1 << temp_t1_2) - 1) | ((0 << var_at_6->unk3) << temp_t1_2)) & 0xFFFF;
                }
                temp_v0_7 = temp_a0_5 >> 1;
                var_a5_2 = var_at_6;
                if (temp_v0_7 != 0) {
                    if (temp_v0_7 >= 2) {
                        sp58 = (s64) var_a6;
                        sp60 = var_a7;
                        temp_t0_2 = (temp_v0_6 - (temp_a0_5 * 2)) + temp_at_8 + 4;
                        var_a1_4 = var_a5_2->unk-2;
                        var_a3_2 = var_a5_2->unk0;
                        var_at_7 = var_t8_2 << var_a5_2->unk1;
                        var_a2_3 = var_a5_2->unk-1;
                        var_a0_4 = (1 << var_a1_4) - 1;
                        var_a4_2 = (1 << var_a3_2) - 1;
loop_113:
                        temp_a4 = var_a0_4 | ((((var_a4_2 | (var_at_7 << var_a3_2)) & 0xFFFF) << var_a2_3) << var_a1_4);
                        var_a3_2 = var_a5_2->unk-4;
                        temp_a2_5 = var_a5_2->unk-5;
                        var_a1_4 = var_a5_2->unk-6;
                        temp_v1_6 = (1 << var_a3_2) - 1;
                        temp_v0_8 = (1 << var_a1_4) - 1;
                        var_at_7 = (temp_a4 & 0xFFFF) << var_a5_2->unk-3;
                        if (var_a5_2 != (temp_t0_2 + 4)) {
                            temp_v1_7 = temp_v0_8 | ((((temp_v1_6 | (var_at_7 << var_a3_2)) & 0xFFFF) << temp_a2_5) << var_a1_4);
                            var_a3_2 = var_a5_2->unk-8;
                            var_a2_3 = var_a5_2->unk-9;
                            var_a1_4 = var_a5_2->unk-A;
                            temp_v0_9 = var_a5_2->unk-7;
                            var_a4_2 = (1 << var_a3_2) - 1;
                            var_a0_4 = (1 << var_a1_4) - 1;
                            var_a5_2 -= 8;
                            var_at_7 = (temp_v1_7 & 0xFFFF) << temp_v0_9;
                            if (var_a5_2 == temp_t0_2) {
                                var_v0_3 = var_a2_3;
                                var_a6 = (void *) sp58;
                                var_a7 = sp60;
                            } else {
                                goto loop_113;
                            }
                        } else {
                            var_a4_2 = temp_v1_6;
                            var_a6 = (void *) sp58;
                            var_a7 = sp60;
                            var_a0_4 = temp_v0_8;
                            var_v0_3 = temp_a2_5;
                        }
                        var_t8_2 = (var_a0_4 | ((((var_a4_2 | (var_at_7 << var_a3_2)) & 0xFFFF) << var_v0_3) << var_a1_4)) & 0xFFFF;
                    } else {
                        temp_t1_3 = var_a5_2->unk-2;
                        temp_t2_2 = var_a5_2->unk0;
                        var_t8_2 = (((1 << temp_t1_3) - 1) | ((((((1 << temp_t2_2) - 1) | ((var_t8_2 << var_a5_2->unk1) << temp_t2_2)) & 0xFFFF) << var_a5_2->unk-1) << temp_t1_3)) & 0xFFFF;
                    }
                }
            }
            if (var_t9 < 0x10) {
                do {
                    temp_t1_4 = var_t8_2 << var_t9;
                    var_t9 *= 2;
                    var_t8_2 = (temp_t1_4 | var_t8_2) & 0xFFFF;
                } while (var_t9 < 0x10);
            }
            temp_at_9 = arg0->unk8;
            if (temp_at_9 != 0) {
                var_t8_2 = ((var_t8_2 << (0x10 - temp_at_9)) | (var_t8_2 >> temp_at_9)) & 0xFFFF;
            }
            var_a6->unk2 = 1;
            var_a6->unk0 = var_t8_2;
        }
        var_a1_5 = 0;
        if (arg0->unk6 == 0) {
            var_a1_5 = 1;
        }
        temp_v0_10 = arg0->unk10;
        if ((temp_v0_10 >> 0x1E) == 0) {
            var_a1_5 |= 2;
        }
        temp_at_10 = (u32) (temp_v0_10 & 0x03FFFFFF) >> 0x18;
        switch (temp_at_10) {                       /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            break;
        case 1:                                     /* switch 2 */
            var_a1_5 |= 4;
            break;
        case 2:                                     /* switch 2 */
            var_a1_5 |= 8;
            break;
        case 3:                                     /* switch 2 */
            var_a1_5 |= 0xC;
            break;
        }
        temp_at_11 = arg0->unk2C;
        if (temp_at_11 != NULL) {
            temp_v0_11 = temp_at_11->unkC;
            if (((u32) (temp_v0_11 & 0x7FFF) >> 0xE) != 0) {
                var_a1_5 |= 0x10;
            } else if (((u32) (temp_v0_11 & 0x3FFF) >> 0xD) != 0) {
                var_a1_5 |= 0x30;
            } else if (((u32) (temp_v0_11 & 0x1FFF) >> 0xC) != 0) {
                var_a1_5 |= 0x20;
            }
            temp_v0_12 = temp_at_11->unk16 - temp_at_11->unk20;
            if (temp_v0_12 < 9) {
                var_a1_5 |= 0x40;
            } else if (temp_v0_12 < 0x11) {
                var_a1_5 |= 0x80;
            } else if (temp_v0_12 < 0x21) {
                var_a1_5 |= 0xC0;
            }
        }
        if ((*(arg0->unk4C + var_a7))->unk2 != 0) {
            var_a1_5 |= 0x100;
        }
        var_v0_4 = *((var_a1_5 * 4) + (&local_0x5f0c0000 - 0x63A8));
        if (var_v0_4 == 0) {
            sp68 = var_ra;
            var_v0_4 = expOpStippledFillRects(arg0, var_a1_5, 1);
        }
        goto block_31;
    }
    if (arg1 & 0x4110) {
        var_a1_6 = 0;
        if (arg0->unk6 == 0) {
            var_a1_6 = 1;
        }
        temp_v0_13 = arg0->unk10;
        if ((temp_v0_13 >> 0x1E) == 0) {
            var_a1_6 |= 2;
        }
        temp_at_12 = (u32) (temp_v0_13 & 0x03FFFFFF) >> 0x18;
        switch (temp_at_12) {                       /* switch 3; irregular */
        case 0:                                     /* switch 3 */
            break;
        case 1:                                     /* switch 3 */
            var_a1_6 |= 4;
            break;
        case 2:                                     /* switch 3 */
            var_a1_6 |= 8;
            break;
        case 3:                                     /* switch 3 */
            var_a1_6 |= 0xC;
            break;
        }
        temp_at_13 = arg0->unk2C;
        if (temp_at_13 != NULL) {
            temp_v0_14 = temp_at_13->unkC;
            if (((u32) (temp_v0_14 & 0x7FFF) >> 0xE) != 0) {
                var_a1_6 |= 0x10;
            } else if (((u32) (temp_v0_14 & 0x3FFF) >> 0xD) != 0) {
                var_a1_6 |= 0x30;
            } else if (((u32) (temp_v0_14 & 0x1FFF) >> 0xC) != 0) {
                var_a1_6 |= 0x20;
            }
            temp_v0_15 = temp_at_13->unk16 - temp_at_13->unk20;
            if (temp_v0_15 < 9) {
                var_a1_6 |= 0x40;
            } else if (temp_v0_15 < 0x11) {
                var_a1_6 |= 0x80;
            } else if (temp_v0_15 < 0x21) {
                var_a1_6 |= 0xC0;
            }
        }
        if ((*(arg0->unk4C + (expGCPrivateIndex * 4)))->unk2 != 0) {
            var_a1_6 |= 0x100;
        }
        var_v0_4 = *((var_a1_6 * 4) + (&local_0x5f0c0000 - 0x63A8));
        if (var_v0_4 == 0) {
            sp68 = var_ra;
            var_v0_4 = expOpStippledFillRects(arg0, var_a1_6, 1);
        }
block_31:
        arg0->unk48 = var_v0_4;
    }
    temp_s3->unk58 = (s16) (arg2->unk8 + arg0->unk28);
    temp_s3->unk5A = (s16) (arg2->unkA + arg0->unk2A);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x138, 0x13c, 0x140, 0x144, 0x148, 0x14c, 0x180, 0x184], gap at: 0x158. */
void expValidateVisual(void *arg0) {
    s64 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    s64 sp1A0;
    s64 sp190;
    s16 sp136;
    s16 sp134;
    s16 sp132;
    s16 sp130;
    ? sp120;
    u16 sp11E;
    s16 sp11C;
    s16 sp11A;
    s16 sp118;
    ? sp108;
    s16 sp106;
    s16 sp104;
    u16 sp102;
    s16 sp100;
    ? spF0;
    u16 spEE;
    s16 spEC;
    s16 spEA;
    s16 spE8;
    ? spD8;
    s16 spD6;
    s16 spD4;
    u16 spD2;
    s16 spD0;
    ? spC0;
    u16 spBE;
    s16 spBC;
    s16 spBA;
    s16 spB8;
    ? spA8;
    s16 spA6;
    s16 spA4;
    u16 spA2;
    s16 spA0;
    ? sp90;
    u16 sp8E;
    s16 sp8C;
    s16 sp8A;
    s16 sp88;
    ? sp78;
    s16 sp76;
    s16 sp74;
    u16 sp72;
    s16 sp70;
    ? sp60;
    u16 sp5E;
    s16 sp5C;
    s16 sp5A;
    s16 sp58;
    ? sp48;
    s16 sp46;
    s16 sp44;
    u16 sp42;
    s16 sp40;
    ? sp30;
    ? sp20;
    ? sp10;
    ? *temp_a0;
    ? *temp_a0_2;
    ? *temp_a0_3;
    ? *temp_a1;
    ? *var_a0;
    ? *var_a0_10;
    ? *var_a0_11;
    ? *var_a0_12;
    ? *var_a0_13;
    ? *var_a0_14;
    ? *var_a0_15;
    ? *var_a0_16;
    ? *var_a0_17;
    ? *var_a0_18;
    ? *var_a0_19;
    ? *var_a0_20;
    ? *var_a0_23;
    ? *var_a0_3;
    ? *var_a0_4;
    ? *var_a0_5;
    ? *var_a0_6;
    ? *var_a0_7;
    ? *var_a0_8;
    ? *var_a0_9;
    ? *var_a1;
    ? *var_a1_20;
    ? *var_s5;
    ? *var_s5_2;
    ? *var_s5_3;
    ? *var_s5_4;
    ? *var_s5_5;
    ? *var_v0;
    ? *var_v0_11;
    ? *var_v0_13;
    ? *var_v0_2;
    ? *var_v0_3;
    ? *var_v0_5;
    ? *var_v0_7;
    ? *var_v0_9;
    ? *var_v1;
    ? *var_v1_3;
    s16 temp_a3_2;
    s16 temp_a3_3;
    s16 temp_a6;
    s16 temp_a6_2;
    s16 temp_at;
    s16 temp_at_2;
    s16 temp_at_4;
    s16 temp_at_5;
    s16 temp_at_6;
    s16 temp_at_7;
    s16 temp_at_8;
    s16 temp_at_9;
    s16 var_a3;
    s16 var_a3_2;
    s16 var_a3_3;
    s16 var_a3_4;
    s16 var_a4;
    s16 var_a4_2;
    s16 var_a5;
    s16 var_a5_2;
    s16 var_a5_3;
    s16 var_at;
    s16 var_at_2;
    s16 var_at_3;
    s16 var_at_4;
    s16 var_at_5;
    s16 var_at_6;
    s16 var_at_7;
    s16 var_at_8;
    s32 temp_a1_4;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 var_a0_21;
    s32 var_a0_22;
    s32 var_a0_2;
    s32 var_a1_10;
    s32 var_a1_11;
    s32 var_a1_12;
    s32 var_a1_13;
    s32 var_a1_14;
    s32 var_a1_15;
    s32 var_a1_16;
    s32 var_a1_17;
    s32 var_a1_18;
    s32 var_a1_19;
    s32 var_a1_21;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_a2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a6;
    s32 var_s2_2;
    s32 var_s2_3;
    s32 var_s3_2;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_s4_4;
    s32 var_s4_5;
    s32 var_s4_6;
    s32 var_s6;
    s32 var_s7;
    s32 var_v0_6;
    s32 var_v0_8;
    s32 var_v1_2;
    s32 var_v1_4;
    s32 var_v1_7;
    s32 var_v1_8;
    s64 var_s2;
    s64 var_s3;
    s64 var_s4;
    s64 var_v0_10;
    s64 var_v0_12;
    s64 var_v0_4;
    s64 var_v1_5;
    s64 var_v1_6;
    u16 temp_a4_2;
    u16 temp_a4_3;
    u16 temp_a5;
    u16 temp_a5_2;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a3_4;
    void *temp_a3_5;
    void *temp_a3_6;
    void *temp_a3_7;
    void *temp_a3_8;
    void *temp_a5_3;
    void *temp_at_3;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;

    var_s2 = saved_reg_s2;
    var_s3 = saved_reg_s3;
    temp_v0 = *(WindowTable + (arg0->unk0 * 4));
    unksp150 = 0;
    temp_s0 = arg0->unk74;
    if (temp_v0 != NULL) {
        var_s4 = (*(temp_v0->unk84 + (nfbWindowPrivateIndex * 4)))->unk18 != 0;
    } else {
        var_s4 = 0;
    }
    arg0->unk154(sp, NULL, 0, 0x15CD60);
    arg0->unk154(&sp10, NULL, 0);
    if (var_s4 != 0) {
        arg0->unk154(&sp20, NULL, 0);
    }
    temp_v0_2 = temp_s0->unk54 - 1;
    if (temp_v0_2 >= 0) {
        var_s2_2 = temp_v0_2 * 0xC;
loop_279:
        arg0->unk194(temp_s0->unk5C + var_s2_2, &sp30);
        temp_a1 = temp_s0->unk5C + var_s2_2;
        temp_v0_3 = temp_a1->unk8;
        if ((temp_v0_3 == NULL) || (temp_v0_3->unk4 != 0)) {
            arg0->unk16C(temp_a1, temp_a1, temp_s0->unk60 + var_s2_2);
            if (var_s2_2 < 0x180) {
                M2C_ERROR(/* Read from unset register $t9 */)(sp, temp_s0->unk5C + var_s2_2);
            }
        }
        if ((var_s4 != 0) && (var_s2_2 < 0x180)) {
            temp_a1_2 = temp_s0->unk60 + var_s2_2;
            temp_v0_4 = temp_a1_2->unk8;
            if (temp_v0_4 != NULL) {
                if (temp_v0_4->unk4 != 0) {
                    goto block_275;
                }
            } else {
block_275:
                arg0->unk190(&sp20, temp_a1_2);
            }
        }
        var_s2_2 -= 0xC;
        if (var_s2_2 != ((temp_v0_2 - (temp_v0_2 + 1)) * 0xC)) {
            goto loop_279;
        }
        var_s3 = sp190;
        var_s2 = sp1A0;
    }
    arg0->unk194(sp, &sp30);
    if ((var_s4 != 0) && ((arg0->unk194(&sp20, &sp30), arg0->unk16C(&sp20, &sp20, temp_s0->unk2C), (sp28 == NULL)) || (sp28->unk4 != 0))) {
        temp_a1_3 = **(arg0->unk1B4 + (expScreenPrivateIndex * 4));
        if (sp28 != NULL) {
            var_v1 = sp28 + 8;
        } else {
            var_v1 = &sp20;
        }
        var_a0 = var_v1;
        if (sp28 != NULL) {
            var_a2 = sp28->unk4;
        } else {
            var_a2 = 1;
        }
        var_a6 = 1;
        if (var_a2 >= 1) {
            var_a6 = var_a2;
        }
        var_v1_2 = var_a2;
        var_a5 = 3;
        var_a4 = var_a6 & 1;
        unksp150 = 1;
        var_a3 = 4;
        temp_a1_3->unk4052C = 4;
        temp_a1_3->unk404D4 = 0;
        temp_a1_3->unk40530 = 0;
        temp_a1_3->unk4077C = 0xFFFFFF;
        temp_a1_3->unk4077C = 3;
        temp_a1_3->unk4077C = 0;
        temp_a1_3->unk404C0 = 0;
        if (var_a4 != 0) {
            var_a4 = var_a0->unk0;
            temp_a1_3->unk4077C = (s32) var_a4;
            var_a3 = var_a0->unk2;
            temp_a1_3->unk4077C = (s32) var_a3;
            temp_a1_3->unk4077C = (s32) var_a0->unk4;
            var_a5 = var_a0->unk6;
            var_v1_2 -= 1;
            var_a0 += 8;
            temp_a1_3->unk4077C = (s32) var_a5;
        }
        temp_a1_4 = var_a6 >> 1;
        var_v0 = var_a0;
        if (temp_a1_4 != 0) {
            if (temp_a1_4 >= 2) {
                var_at = var_v0->unk0;
                var_a0_2 = var_v1_2 - 2;
                do {
                    temp_a1_3->unk4077C = (s32) var_at;
                    temp_a1_3->unk4077C = (s32) var_v0->unk2;
                    temp_a1_3->unk4077C = (s32) var_v0->unk4;
                    temp_a1_3->unk4077C = (s32) var_v0->unk6;
                    temp_a1_3->unk4077C = (s32) var_v0->unk8;
                    temp_a1_3->unk4077C = (s32) var_v0->unkA;
                    temp_a1_3->unk4077C = (s32) var_v0->unkC;
                    temp_at = var_v0->unkE;
                    var_a0_2 -= 2;
                    var_v0 += 0x10;
                    temp_a1_3->unk4077C = (s32) temp_at;
                    var_at = var_v0->unk0;
                } while (var_a0_2 != 0);
                temp_a1_3->unk4077C = (s32) var_at;
                temp_a1_3->unk4077C = (s32) var_v0->unk2;
                temp_a1_3->unk4077C = (s32) var_v0->unk4;
                temp_a1_3->unk4077C = (s32) var_v0->unk6;
                var_a5 = var_v0->unk8;
                temp_a1_3->unk4077C = (s32) var_a5;
                var_a4 = var_v0->unkA;
                temp_a1_3->unk4077C = (s32) var_a4;
                var_a3 = var_v0->unkC;
                temp_a1_3->unk4077C = (s32) var_a3;
                var_a6 = (s32) var_v0->unkE;
                temp_a1_3->unk4077C = var_a6;
            } else {
                temp_a1_3->unk4077C = (s32) var_v0->unk0;
                temp_a1_3->unk4077C = (s32) var_v0->unk2;
                temp_a1_3->unk4077C = (s32) var_v0->unk4;
                temp_a1_3->unk4077C = (s32) var_v0->unk6;
                temp_a1_3->unk4077C = (s32) var_v0->unk8;
                var_a5 = var_v0->unkA;
                temp_a1_3->unk4077C = (s32) var_a5;
                var_a4 = var_v0->unkC;
                temp_a1_3->unk4077C = (s32) var_a4;
                var_a3 = var_v0->unkE;
                temp_a1_3->unk4077C = (s32) var_a3;
            }
        }
        temp_a1_3->unk407A8 = 0;
        arg0->unk168(sp, sp, &sp20, var_a3, var_a4, var_a5, var_a6, temp_a1_3 + 0x40000);
        sp1A0 = var_s2;
    }
    unksp160 = var_s4;
    sp190 = var_s3;
    var_s6 = 0;
    sp1A0 = var_s2;
    var_s2_3 = 0;
    if (temp_s0->unk54 != 0) {
        var_s7 = sp38;
        var_s3_2 = 0;
        unksp160 = var_s4;
        unksp158 = (s64) sp34;
loop_66:
        if (var_s2_3 < 0x20) {
            temp_a0 = temp_s0->unk60 + var_s3_2;
            arg0->unk16C(temp_a0, temp_a0, sp);
            var_a1 = temp_s0->unk5C + var_s3_2;
            temp_v0_5 = var_a1->unk8;
            if ((temp_v0_5 == NULL) || (temp_v0_5->unk4 != 0)) {
                temp_a0_2 = temp_s0->unk60 + var_s3_2;
                arg0->unk168(temp_a0_2, var_a1, temp_a0_2);
                var_a1 = temp_s0->unk5C + var_s3_2;
                unksp150 += 1;
            }
        } else {
            temp_s4 = *(temp_s0->unk30 + var_s6);
            if (*(temp_s0->unk3C + (temp_s4 * 4)) != 0) {
                temp_s5 = temp_s4 * 0xC;
                arg0->unk16C(&sp10, temp_s0->unk60 + var_s3_2, temp_s0->unk2C + temp_s5);
                arg0->unk158(temp_s0->unk60 + var_s3_2, temp_s0->unk2C + temp_s5);
                temp_a3 = temp_s4 < 3;
                if ((temp_a3 != 0) && (temp_a4 = temp_s0->unk3C->unkC, (temp_a4 != 0))) {
                    arg0->unk16C(&sp10, &sp10, temp_s0->unk2C + 0x24, temp_a3, temp_a4);
                } else if (temp_s4 == 3) {
                    if ((sp18 == NULL) || (sp18->unk4 != 0)) {
                        if (temp_s0->unk3C->unk4 != 0) {
                            arg0->unk16C(sp, &sp10, temp_s0->unk2C + 0xC, temp_a3);
                            if ((sp8 == NULL) || (sp8->unk4 != 0)) {
                                temp_v1 = temp_s0->unkDC;
                                if (temp_v1 != 0) {
                                    if (temp_v1 == 1) {
                                        sp40 = 0;
                                        sp44 = arg0->unk8;
                                        sp42 = temp_s0->unkE2;
                                        sp46 = temp_s0->unkE0 + temp_s0->unkE2;
                                        arg0->unk154(&sp48, &sp40, 0);
                                        arg0->unk164(sp, &sp48, sp);
                                        if (sp8 != NULL) {
                                            if (sp8->unk4 != 0) {
                                                if (sp8 != NULL) {
                                                    var_a0_3 = sp8 + 8;
                                                    if (sp8 == NULL) {
                                                        goto block_311;
                                                    }
                                                    goto block_321;
                                                }
                                                goto block_320;
                                                goto block_322;
                                            }
                                        } else {
block_320:
                                            var_a0_3 = sp;
                                            if (sp8 != NULL) {
block_321:
                                                var_a1_2 = sp8->unk4;
                                            } else {
block_311:
                                                var_a1_2 = 1;
                                            }
block_322:
                                            expClearOverlays(var_a0_3, var_a1_2, arg0, 0x20U);
                                            arg0->unk178(sp, 0, -(s32) temp_s0->unkE2);
                                            if (sp8 != NULL) {
                                                var_a0_4 = sp8 + 8;
                                                if (sp8 != NULL) {
                                                    goto block_324;
                                                }
                                                goto block_371;
                                            }
                                            var_a0_4 = sp;
                                            if (sp8 == NULL) {
block_371:
                                                var_a1_3 = 1;
                                            } else {
block_324:
                                                var_a1_3 = sp8->unk4;
                                            }
                                            expClearOverlays(var_a0_4, var_a1_3, arg0, 0x20U);
                                        }
                                    } else {
                                        sp58 = 0;
                                        sp5A = 0;
                                        sp5C = arg0->unk8;
                                        sp5E = temp_s0->unkE0;
                                        arg0->unk154(&sp60, &sp58, 0);
                                        arg0->unk164(sp, &sp60, sp);
                                        if (sp8 != NULL) {
                                            if (sp8->unk4 != 0) {
                                                if (sp8 != NULL) {
                                                    var_a0_5 = sp8 + 8;
                                                    if (sp8 == NULL) {
                                                        goto block_128;
                                                    }
                                                    goto block_177;
                                                }
                                                goto block_176;
                                                goto block_178;
                                            }
                                        } else {
block_176:
                                            var_a0_5 = sp;
                                            if (sp8 != NULL) {
block_177:
                                                var_a1_4 = sp8->unk4;
                                            } else {
block_128:
                                                var_a1_4 = 1;
                                            }
block_178:
                                            expClearOverlays(var_a0_5, var_a1_4, arg0, 0x20U);
                                            arg0->unk178(sp, 0, (s32) temp_s0->unkE2);
                                            if (sp8 != NULL) {
                                                var_a0_6 = sp8 + 8;
                                                if (sp8 != NULL) {
                                                    goto block_180;
                                                }
                                                goto block_294;
                                            }
                                            var_a0_6 = sp;
                                            if (sp8 == NULL) {
block_294:
                                                var_a1_5 = 1;
                                            } else {
block_180:
                                                var_a1_5 = sp8->unk4;
                                            }
                                            expClearOverlays(var_a0_6, var_a1_5, arg0, 0x20U);
                                        }
                                    }
                                } else {
                                    var_a0_7 = sp8 + 8;
                                    if (sp8 != NULL) {
                                        goto block_300;
                                    }
                                    var_a0_7 = sp;
                                    if (sp8 == NULL) {
                                        var_a1_6 = 1;
                                    } else {
block_300:
                                        var_a1_6 = sp8->unk4;
                                    }
                                    expClearOverlays(var_a0_7, var_a1_6, arg0, 0x20U, 1);
                                }
                            }
                        } else if (temp_s0->unkDC != 0) {
                            arg0->unk158(sp, &sp10);
                            temp_v1_2 = temp_s0->unkDC;
                            if (temp_v1_2 != 0) {
                                if (temp_v1_2 == 1) {
                                    sp70 = 0;
                                    temp_a6 = arg0->unk8;
                                    sp74 = temp_a6;
                                    temp_a5 = temp_s0->unkE2;
                                    sp72 = temp_a5;
                                    temp_a4_2 = temp_s0->unkE2;
                                    temp_a3_2 = temp_s0->unkE0 + temp_a4_2;
                                    sp76 = temp_a3_2;
                                    arg0->unk154(&sp78, &sp70, 0, temp_a3_2, temp_a4_2, temp_a5, temp_a6);
                                    arg0->unk164(sp, &sp78, sp);
                                    if (sp8 != NULL) {
                                        if (sp8->unk4 != 0) {
                                            if (sp8 != NULL) {
                                                var_a0_8 = sp8 + 8;
                                                if (sp8 == NULL) {
                                                    goto block_355;
                                                }
                                                goto block_357;
                                            }
                                            goto block_356;
                                            goto block_358;
                                        }
                                    } else {
block_356:
                                        var_a0_8 = sp;
                                        if (sp8 != NULL) {
block_357:
                                            var_a1_7 = sp8->unk4;
                                        } else {
block_355:
                                            var_a1_7 = 1;
                                        }
block_358:
                                        expClearOverlays(var_a0_8, var_a1_7, arg0, 0x20U);
                                        arg0->unk178(sp, 0, -(s32) temp_s0->unkE2);
                                        if (sp8 != NULL) {
                                            var_a0_9 = sp8 + 8;
                                            if (sp8 != NULL) {
                                                goto block_360;
                                            }
                                            goto block_379;
                                        }
                                        var_a0_9 = sp;
                                        if (sp8 == NULL) {
block_379:
                                            var_a1_8 = 1;
                                        } else {
block_360:
                                            var_a1_8 = sp8->unk4;
                                        }
                                        expClearOverlays(var_a0_9, var_a1_8, arg0, 0x20U);
                                    }
                                } else {
                                    sp88 = 0;
                                    sp8A = 0;
                                    sp8C = arg0->unk8;
                                    sp8E = temp_s0->unkE0;
                                    arg0->unk154(&sp90, &sp88, 0);
                                    arg0->unk164(sp, &sp90, sp);
                                    if (sp8 != NULL) {
                                        if (sp8->unk4 != 0) {
                                            if (sp8 != NULL) {
                                                var_a0_10 = sp8 + 8;
                                                if (sp8 == NULL) {
                                                    goto block_205;
                                                }
                                                goto block_269;
                                            }
                                            goto block_268;
                                            goto block_270;
                                        }
                                    } else {
block_268:
                                        var_a0_10 = sp;
                                        if (sp8 != NULL) {
block_269:
                                            var_a1_9 = sp8->unk4;
                                        } else {
block_205:
                                            var_a1_9 = 1;
                                        }
block_270:
                                        expClearOverlays(var_a0_10, var_a1_9, arg0, 0x20U);
                                        arg0->unk178(sp, 0, (s32) temp_s0->unkE2);
                                        if (sp8 != NULL) {
                                            var_a0_11 = sp8 + 8;
                                            if (sp8 != NULL) {
                                                goto block_272;
                                            }
                                            goto block_346;
                                        }
                                        var_a0_11 = sp;
                                        if (sp8 == NULL) {
block_346:
                                            var_a1_10 = 1;
                                        } else {
block_272:
                                            var_a1_10 = sp8->unk4;
                                        }
                                        expClearOverlays(var_a0_11, var_a1_10, arg0, 0x20U);
                                    }
                                }
                            } else {
                                if (sp8 != NULL) {
                                    var_a0_12 = sp8 + 8;
                                    if (sp8 != NULL) {
                                        goto block_349;
                                    }
                                    goto block_377;
                                }
                                var_a0_12 = sp;
                                if (sp8 == NULL) {
block_377:
                                    var_a1_11 = 1;
                                } else {
block_349:
                                    var_a1_11 = sp8->unk4;
                                }
                                expClearOverlays(var_a0_12, var_a1_11, arg0, 0x20U);
                            }
                        } else {
                            var_a0_13 = sp18 + 8;
                            if (sp18 != NULL) {
                                goto block_265;
                            }
                            var_a0_13 = &sp10;
                            if (sp18 == NULL) {
                                var_a1_12 = 1;
                            } else {
block_265:
                                var_a1_12 = sp18->unk4;
                            }
                            expClearOverlays(var_a0_13, var_a1_12, arg0, 0x20U);
                        }
                        if (temp_s0->unk3C->unk8 != 0) {
                            arg0->unk16C(&sp10, &sp10, temp_s0->unk2C + 0x18);
                            if ((sp18 == NULL) || (sp18->unk4 != 0)) {
                                temp_v1_3 = temp_s0->unkDC;
                                if (temp_v1_3 != 0) {
                                    if (temp_v1_3 == 1) {
                                        spA0 = 0;
                                        spA4 = arg0->unk8;
                                        spA2 = temp_s0->unkE2;
                                        spA6 = temp_s0->unkE0 + temp_s0->unkE2;
                                        arg0->unk154(&spA8, &spA0, 0);
                                        arg0->unk164(&sp10, &spA8, &sp10);
                                        if (sp18 != NULL) {
                                            if (sp18->unk4 != 0) {
                                                if (sp18 != NULL) {
                                                    var_a0_14 = sp18 + 8;
                                                    if (sp18 == NULL) {
                                                        goto block_316;
                                                    }
                                                    goto block_327;
                                                }
                                                goto block_326;
                                                goto block_328;
                                            }
                                        } else {
block_326:
                                            var_a0_14 = &sp10;
                                            if (sp18 != NULL) {
block_327:
                                                var_a1_13 = sp18->unk4;
                                            } else {
block_316:
                                                var_a1_13 = 1;
                                            }
block_328:
                                            expClearOverlays(var_a0_14, var_a1_13, arg0, 0x21U);
                                            arg0->unk178(&sp10, 0, -(s32) temp_s0->unkE2);
                                            if (sp18 != NULL) {
                                                var_a0_15 = sp18 + 8;
                                                if (sp18 != NULL) {
                                                    goto block_330;
                                                }
                                                goto block_373;
                                            }
                                            var_a0_15 = &sp10;
                                            if (sp18 == NULL) {
block_373:
                                                var_a1_14 = 1;
                                            } else {
block_330:
                                                var_a1_14 = sp18->unk4;
                                            }
                                            expClearOverlays(var_a0_15, var_a1_14, arg0, 0x21U);
                                        }
                                    } else {
                                        spB8 = 0;
                                        spBA = 0;
                                        spBC = arg0->unk8;
                                        spBE = temp_s0->unkE0;
                                        arg0->unk154(&spC0, &spB8, 0);
                                        arg0->unk164(&sp10, &spC0, &sp10);
                                        if (sp18 != NULL) {
                                            if (sp18->unk4 != 0) {
                                                if (sp18 != NULL) {
                                                    var_a0_16 = sp18 + 8;
                                                    if (sp18 == NULL) {
                                                        goto block_193;
                                                    }
                                                    goto block_219;
                                                }
                                                goto block_218;
                                                goto block_220;
                                            }
                                        } else {
block_218:
                                            var_a0_16 = &sp10;
                                            if (sp18 != NULL) {
block_219:
                                                var_a1_15 = sp18->unk4;
                                            } else {
block_193:
                                                var_a1_15 = 1;
                                            }
block_220:
                                            expClearOverlays(var_a0_16, var_a1_15, arg0, 0x21U);
                                            arg0->unk178(&sp10, 0, (s32) temp_s0->unkE2);
                                            if (sp18 != NULL) {
                                                var_a0_17 = sp18 + 8;
                                                if (sp18 != NULL) {
                                                    goto block_222;
                                                }
                                                goto block_296;
                                            }
                                            var_a0_17 = &sp10;
                                            if (sp18 == NULL) {
block_296:
                                                var_a1_16 = 1;
                                            } else {
block_222:
                                                var_a1_16 = sp18->unk4;
                                            }
                                            expClearOverlays(var_a0_17, var_a1_16, arg0, 0x21U);
                                        }
                                    }
                                } else {
                                    var_a0_18 = sp18 + 8;
                                    if (sp18 != NULL) {
                                        goto block_303;
                                    }
                                    var_a0_18 = &sp10;
                                    if (sp18 == NULL) {
                                        var_a1_17 = 1;
                                    } else {
block_303:
                                        var_a1_17 = sp18->unk4;
                                    }
                                    expClearOverlays(var_a0_18, var_a1_17, arg0, 0x21U, 1);
                                }
                            }
                        } else {
                            temp_v1_4 = temp_s0->unkDC;
                            if (temp_v1_4 != 0) {
                                if (temp_v1_4 == 1) {
                                    spD0 = 0;
                                    temp_a6_2 = arg0->unk8;
                                    spD4 = temp_a6_2;
                                    temp_a5_2 = temp_s0->unkE2;
                                    spD2 = temp_a5_2;
                                    temp_a4_3 = temp_s0->unkE2;
                                    temp_a3_3 = temp_s0->unkE0 + temp_a4_3;
                                    spD6 = temp_a3_3;
                                    arg0->unk154(&spD8, &spD0, 0, temp_a3_3, temp_a4_3, temp_a5_2, temp_a6_2);
                                    arg0->unk164(&sp10, &spD8, &sp10);
                                    if (sp18 != NULL) {
                                        if (sp18->unk4 != 0) {
                                            if (sp18 != NULL) {
                                                var_a0_19 = sp18 + 8;
                                                if (sp18 == NULL) {
                                                    goto block_336;
                                                }
                                                goto block_338;
                                            }
                                            goto block_337;
                                            goto block_339;
                                        }
                                    } else {
block_337:
                                        var_a0_19 = &sp10;
                                        if (sp18 != NULL) {
block_338:
                                            var_a1_18 = sp18->unk4;
                                        } else {
block_336:
                                            var_a1_18 = 1;
                                        }
block_339:
                                        expClearOverlays(var_a0_19, var_a1_18, arg0, 0x21U);
                                        arg0->unk178(&sp10, 0, -(s32) temp_s0->unkE2);
                                        if (sp18 != NULL) {
                                            var_a0_20 = sp18 + 8;
                                            if (sp18 != NULL) {
                                                goto block_341;
                                            }
                                            goto block_375;
                                        }
                                        var_a0_20 = &sp10;
                                        if (sp18 == NULL) {
block_375:
                                            var_a1_19 = 1;
                                        } else {
block_341:
                                            var_a1_19 = sp18->unk4;
                                        }
                                        expClearOverlays(var_a0_20, var_a1_19, arg0, 0x21U);
                                    }
                                } else {
                                    spE8 = 0;
                                    spEA = 0;
                                    spEC = arg0->unk8;
                                    spEE = temp_s0->unkE0;
                                    arg0->unk154(&spF0, &spE8, 0);
                                    arg0->unk164(&sp10, &spF0, &sp10);
                                    if (sp18 != NULL) {
                                        if (sp18->unk4 != 0) {
                                            if (sp18 != NULL) {
                                                var_v1_3 = sp18 + 8;
                                                if (sp18 == NULL) {
                                                    goto block_214;
                                                }
                                                goto block_240;
                                            }
                                            goto block_239;
                                            goto block_241;
                                        }
                                    } else {
block_239:
                                        var_v1_3 = &sp10;
                                        if (sp18 != NULL) {
block_240:
                                            var_a0_21 = sp18->unk4;
                                        } else {
block_214:
                                            var_a0_21 = 1;
                                        }
block_241:
                                        var_v0_2 = var_v1_3;
                                        var_a5_2 = 0xB;
                                        temp_a3_4 = **(arg0->unk1B4 + (expScreenPrivateIndex * 4));
                                        var_a4_2 = 0xC;
                                        temp_a3_4->unk4052C = 8;
                                        temp_a3_4->unk4052C = 0xB;
                                        temp_a3_4->unk404D4 = 0xC;
                                        temp_a3_4->unk40530 = 0;
                                        temp_a3_4->unk4077C = (s32) (0 & 0xFFFFFF);
                                        var_a3_2 = var_a0_21 < 2;
                                        temp_a3_4->unk4077C = 3;
                                        temp_a3_4->unk4077C = 9;
                                        if (var_a0_21 != 0) {
                                            if (var_a3_2 == 0) {
                                                temp_a3_4->unk404C0 = 0;
                                                var_at_2 = var_v0_2->unk0;
                                                do {
                                                    temp_a3_4->unk4077C = (s32) var_at_2;
                                                    temp_a3_4->unk4077C = (s32) var_v0_2->unk2;
                                                    temp_a3_4->unk4077C = (s32) var_v0_2->unk4;
                                                    temp_at_2 = var_v0_2->unk6;
                                                    var_v0_2 += 8;
                                                    temp_a3_4->unk4077C = (s32) temp_at_2;
                                                    temp_a3_4->unk407A8 = 0;
                                                    temp_a3_4->unk404C0 = 0;
                                                    var_at_2 = var_v0_2->unk0;
                                                } while (var_v0_2 != ((var_v1_3 + (var_a0_21 * 8)) - 8));
                                                var_a3_2 = var_at_2;
                                                temp_a3_4->unk4077C = (s32) var_a3_2;
                                                temp_a3_4->unk4077C = (s32) var_v0_2->unk2;
                                                var_a5_2 = var_v0_2->unk4;
                                                temp_a3_4->unk4077C = (s32) var_a5_2;
                                                var_a4_2 = var_v0_2->unk6;
                                                temp_a3_4->unk4077C = (s32) var_a4_2;
                                            } else {
                                                temp_a3_4->unk404C0 = 0;
                                                temp_a3_4->unk4077C = (s32) var_v0_2->unk0;
                                                var_a5_2 = var_v0_2->unk2;
                                                temp_a3_4->unk4077C = (s32) var_a5_2;
                                                var_a4_2 = var_v0_2->unk4;
                                                temp_a3_4->unk4077C = (s32) var_a4_2;
                                                var_a3_2 = var_v0_2->unk6;
                                                temp_a3_4->unk4077C = (s32) var_a3_2;
                                            }
                                            temp_a3_4->unk407A8 = 0;
                                        }
                                        arg0->unk178(&sp10, 0, (s32) temp_s0->unkE2, var_a3_2, var_a4_2, var_a5_2);
                                        var_s7 = 0xE;
                                        if (sp18 != NULL) {
                                            var_a1_20 = sp18 + 8;
                                            if (sp18 != NULL) {
                                                goto block_249;
                                            }
                                            goto block_306;
                                        }
                                        var_a1_20 = &sp10;
                                        if (sp18 == NULL) {
block_306:
                                            var_a0_22 = 1;
                                        } else {
block_249:
                                            var_a0_22 = sp18->unk4;
                                        }
                                        var_v0_3 = var_a1_20;
                                        temp_at_3 = **(arg0->unk1B4 + (expScreenPrivateIndex * 4));
                                        unksp158 = 0xC;
                                        temp_at_3->unk4052C = 8;
                                        temp_at_3->unk4052C = 0xB;
                                        temp_at_3->unk404D4 = 0xC;
                                        temp_at_3->unk40530 = 0;
                                        temp_at_3->unk4077C = (s32) (0 & 0xFFFFFF);
                                        temp_at_3->unk4077C = 3;
                                        temp_at_3->unk4077C = 9;
                                        if (var_a0_22 != 0) {
                                            if (var_a0_22 >= 2) {
                                                temp_at_3->unk404C0 = 0;
                                                var_at_3 = var_v0_3->unk0;
                                                do {
                                                    temp_at_3->unk4077C = (s32) var_at_3;
                                                    temp_at_3->unk4077C = (s32) var_v0_3->unk2;
                                                    temp_at_3->unk4077C = (s32) var_v0_3->unk4;
                                                    temp_at_4 = var_v0_3->unk6;
                                                    var_v0_3 += 8;
                                                    temp_at_3->unk4077C = (s32) temp_at_4;
                                                    temp_at_3->unk407A8 = 0;
                                                    temp_at_3->unk404C0 = 0;
                                                    var_at_3 = var_v0_3->unk0;
                                                } while (var_v0_3 != ((var_a1_20 + (var_a0_22 * 8)) - 8));
                                                temp_at_3->unk4077C = (s32) var_at_3;
                                                temp_at_3->unk4077C = (s32) var_v0_3->unk2;
                                                temp_at_3->unk4077C = (s32) var_v0_3->unk4;
                                                temp_at_3->unk4077C = (s32) var_v0_3->unk6;
                                            } else {
                                                temp_at_3->unk404C0 = 0;
                                                temp_at_3->unk4077C = (s32) var_v0_3->unk0;
                                                temp_at_3->unk4077C = (s32) var_v0_3->unk2;
                                                temp_at_3->unk4077C = (s32) var_v0_3->unk4;
                                                temp_at_3->unk4077C = (s32) var_v0_3->unk6;
                                            }
                                            temp_at_3->unk407A8 = 0;
                                        }
                                    }
                                }
                            } else {
                                var_a0_23 = sp18 + 8;
                                if (sp18 != NULL) {
                                    goto block_318;
                                }
                                var_a0_23 = &sp10;
                                if (sp18 == NULL) {
                                    var_a1_21 = 1;
                                } else {
block_318:
                                    var_a1_21 = sp18->unk4;
                                }
                                expClearOverlays(var_a0_23, var_a1_21, arg0, 0x21U, 1);
                            }
                        }
                    }
                }
                var_s5 = &sp10;
                if (((sp18 == NULL) || (sp18->unk4 != 0)) && (temp_s4 != 3)) {
                    temp_v1_5 = temp_s0->unkDC;
                    var_s4_2 = 1;
                    if (temp_v1_5 != 0) {
                        if (temp_v1_5 == 1) {
                            sp100 = 0;
                            sp104 = arg0->unk8;
                            sp102 = temp_s0->unkE2;
                            sp106 = temp_s0->unkE0 + temp_s0->unkE2;
                            arg0->unk154(&sp108, &sp100, 0);
                            arg0->unk164(&sp10, &sp108, &sp10);
                            if (sp18 != NULL) {
                                if (sp18->unk4 != 0) {
                                    var_s5_2 = sp18 + 8;
                                    if (sp18 != NULL) {
                                        if (sp18 == NULL) {
                                            var_s4_3 = 1;
                                        } else {
                                            goto block_136;
                                        }
                                    } else {
                                        goto block_135;
                                    }
                                    goto block_137;
                                }
                            } else {
block_135:
                                var_s5_2 = &sp10;
                                var_s4_3 = 1;
                                if (sp18 != NULL) {
block_136:
                                    var_s4_3 = sp18->unk4;
                                }
block_137:
                                temp_a3_5 = **(arg0->unk1B4 + (expScreenPrivateIndex * 4));
                                var_a4_3 = 0x20;
                                temp_a3_5->unk4052C = 8;
                                if (var_s2_3 != 0x20) {
                                    if (var_s2_3 != 0x21) {
                                        if (var_s2_3 == 0x22) {
                                            var_s7 = 0xC;
                                            unksp158 = 0xF;
                                        } else {
                                            sp1B0 = temp_a3_5 + 0x40000;
                                            ErrorF(&local_0x5f0a0000 - 0x698, (u8) var_s2_3);
                                        }
                                    } else {
                                        var_s7 = 0xE;
                                        unksp158 = 0xC;
                                    }
                                    var_a4_3 = 0xE;
                                    if (var_s7 != 0xD) {
                                        if (var_s7 != 0xE) {
                                            var_v0_4 = 0;
                                            if (var_s7 != 0xC) {
                                                var_v0_4 = unksp158;
                                                var_v1_4 = 0;
                                                temp_a3_5->unk4052C = var_s7;
                                                temp_a3_5->unk404D4 = 0;
                                            } else {
                                                var_v1_4 = 1;
                                                temp_a3_5->unk4052C = 8;
                                                temp_a3_5->unk404D4 = (s32) (unksp158 & 0xF);
                                            }
                                        } else {
                                            var_v1_4 = 9;
                                            var_v0_4 = 0;
                                            temp_a3_5->unk4052C = 0xB;
                                            var_a4_3 = unksp158 & 0xC;
                                            temp_a3_5->unk404D4 = var_a4_3;
                                        }
                                    } else {
                                        goto block_261;
                                    }
                                } else {
                                    unksp158 = 3;
                                    var_s7 = 0xD;
block_261:
                                    var_v1_4 = 1;
                                    var_v0_4 = 0;
                                    temp_a3_5->unk4052C = 0xB;
                                    temp_a3_5->unk404D4 = (s32) (unksp158 & 3);
                                }
                                var_a3_3 = var_s4_3 < 2;
                                temp_a3_5->unk40530 = 0;
                                temp_a3_5->unk4077C = (s32) (var_v0_4 & 0xFFFFFF);
                                temp_a3_5->unk4077C = 3;
                                temp_a3_5->unk4077C = var_v1_4;
                                if (var_s4_3 != 0) {
                                    var_v0_5 = var_s5_2;
                                    if (var_a3_3 == 0) {
                                        temp_a3_5->unk404C0 = 0;
                                        var_at_4 = var_v0_5->unk0;
                                        do {
                                            temp_a3_5->unk4077C = (s32) var_at_4;
                                            temp_a3_5->unk4077C = (s32) var_v0_5->unk2;
                                            temp_a3_5->unk4077C = (s32) var_v0_5->unk4;
                                            temp_at_5 = var_v0_5->unk6;
                                            var_v0_5 += 8;
                                            temp_a3_5->unk4077C = (s32) temp_at_5;
                                            temp_a3_5->unk407A8 = 0;
                                            temp_a3_5->unk404C0 = 0;
                                            var_at_4 = var_v0_5->unk0;
                                        } while (var_v0_5 != ((var_s5_2 + (var_s4_3 * 8)) - 8));
                                        var_a3_3 = var_at_4;
                                        temp_a3_5->unk4077C = (s32) var_a3_3;
                                        temp_a3_5->unk4077C = (s32) var_v0_5->unk2;
                                        temp_a3_5->unk4077C = (s32) var_v0_5->unk4;
                                        var_a4_3 = (s32) var_v0_5->unk6;
                                        temp_a3_5->unk4077C = var_a4_3;
                                    } else {
                                        temp_a3_5->unk404C0 = 0;
                                        temp_a3_5->unk4077C = (s32) var_v0_5->unk0;
                                        temp_a3_5->unk4077C = (s32) var_v0_5->unk2;
                                        var_a4_3 = (s32) var_v0_5->unk4;
                                        temp_a3_5->unk4077C = var_a4_3;
                                        var_a3_3 = var_v0_5->unk6;
                                        temp_a3_5->unk4077C = (s32) var_a3_3;
                                    }
                                    temp_a3_5->unk407A8 = 0;
                                }
                                arg0->unk178(&sp10, 0, -(s32) temp_s0->unkE2, var_a3_3, (s16) var_a4_3);
                                if (sp18 != NULL) {
                                    var_s5_3 = sp18 + 8;
                                    if (sp18 != NULL) {
                                        goto block_155;
                                    }
                                    goto block_257;
                                }
                                var_s5_3 = &sp10;
                                if (sp18 == NULL) {
block_257:
                                    var_s4_4 = 1;
                                } else {
block_155:
                                    var_s4_4 = sp18->unk4;
                                }
                                temp_a5_3 = **(arg0->unk1B4 + (expScreenPrivateIndex * 4));
                                temp_a5_3->unk4052C = 8;
                                if (var_s2_3 != 0x20) {
                                    if (var_s2_3 != 0x21) {
                                        if (var_s2_3 == 0x22) {
                                            var_s7 = 0xC;
                                            unksp158 = 0xF;
                                        } else {
                                            sp1A8 = temp_a5_3 + 0x40000;
                                            ErrorF(&local_0x5f0a0000 - 0x698, (u8) var_s2_3);
                                        }
                                    } else {
                                        var_s7 = 0xE;
                                        unksp158 = 0xC;
                                    }
                                    if (var_s7 != 0xD) {
                                        if (var_s7 != 0xE) {
                                            var_v1_5 = 0;
                                            if (var_s7 != 0xC) {
                                                var_v1_5 = unksp158;
                                                var_v0_6 = 0;
                                                temp_a5_3->unk4052C = var_s7;
                                                temp_a5_3->unk404D4 = 0;
                                            } else {
                                                var_v0_6 = 1;
                                                temp_a5_3->unk4052C = 8;
                                                temp_a5_3->unk404D4 = (s32) (unksp158 & 0xF);
                                            }
                                        } else {
                                            var_v0_6 = 9;
                                            var_v1_5 = 0;
                                            temp_a5_3->unk4052C = 0xB;
                                            temp_a5_3->unk404D4 = (s32) (unksp158 & 0xC);
                                        }
                                    } else {
                                        goto block_263;
                                    }
                                } else {
                                    var_s7 = 0xD;
                                    unksp158 = 3;
block_263:
                                    var_v0_6 = 1;
                                    var_v1_5 = 0;
                                    temp_a5_3->unk4052C = 0xB;
                                    temp_a5_3->unk404D4 = (s32) (unksp158 & 3);
                                }
                                temp_a5_3->unk40530 = 0;
                                temp_a5_3->unk4077C = (s32) (var_v1_5 & 0xFFFFFF);
                                temp_a5_3->unk4077C = 3;
                                temp_a5_3->unk4077C = var_v0_6;
                                if (var_s4_4 != 0) {
                                    var_v0_7 = var_s5_3;
                                    if (var_s4_4 >= 2) {
                                        temp_a5_3->unk404C0 = 0;
                                        var_at_5 = var_v0_7->unk0;
                                        do {
                                            temp_a5_3->unk4077C = (s32) var_at_5;
                                            temp_a5_3->unk4077C = (s32) var_v0_7->unk2;
                                            temp_a5_3->unk4077C = (s32) var_v0_7->unk4;
                                            temp_at_6 = var_v0_7->unk6;
                                            var_v0_7 += 8;
                                            temp_a5_3->unk4077C = (s32) temp_at_6;
                                            temp_a5_3->unk407A8 = 0;
                                            temp_a5_3->unk404C0 = 0;
                                            var_at_5 = var_v0_7->unk0;
                                        } while (var_v0_7 != ((var_s5_3 + (var_s4_4 * 8)) - 8));
                                        temp_a5_3->unk4077C = (s32) var_at_5;
                                        temp_a5_3->unk4077C = (s32) var_v0_7->unk2;
                                        temp_a5_3->unk4077C = (s32) var_v0_7->unk4;
                                        temp_a5_3->unk4077C = (s32) var_v0_7->unk6;
                                    } else {
                                        temp_a5_3->unk404C0 = 0;
                                        temp_a5_3->unk4077C = (s32) var_v0_7->unk0;
                                        temp_a5_3->unk4077C = (s32) var_v0_7->unk2;
                                        temp_a5_3->unk4077C = (s32) var_v0_7->unk4;
                                        temp_a5_3->unk4077C = (s32) var_v0_7->unk6;
                                    }
                                    temp_a5_3->unk407A8 = 0;
                                }
                            }
                        } else {
                            sp118 = 0;
                            sp11A = 0;
                            sp11C = arg0->unk8;
                            sp11E = temp_s0->unkE0;
                            arg0->unk154(&sp120, &sp118, 0);
                            arg0->unk164(&sp10, &sp120, &sp10);
                            var_s5_4 = &sp10;
                            if (sp18 != NULL) {
                                if (sp18->unk4 != 0) {
                                    if (sp18 != NULL) {
                                        var_s5_4 = sp18 + 8;
                                        if (sp18 == NULL) {
                                            var_s4_5 = 1;
                                        } else {
                                            goto block_28;
                                        }
                                    } else {
                                        goto block_27;
                                    }
                                    goto block_29;
                                }
                            } else {
block_27:
                                var_s4_5 = 1;
                                if (sp18 != NULL) {
block_28:
                                    var_s4_5 = sp18->unk4;
                                }
block_29:
                                temp_a3_6 = **(arg0->unk1B4 + (expScreenPrivateIndex * 4));
                                temp_a3_6->unk4052C = 8;
                                if (var_s2_3 != 0x20) {
                                    if (var_s2_3 != 0x21) {
                                        if (var_s2_3 == 0x22) {
                                            var_s7 = 0xC;
                                            unksp158 = 0xF;
                                        } else {
                                            sp1C0 = temp_a3_6 + 0x40000;
                                            ErrorF(&local_0x5f0a0000 - 0x698, (u8) var_s2_3);
                                        }
                                    } else {
                                        var_s7 = 0xE;
                                        unksp158 = 0xC;
                                    }
                                    var_a4_4 = 0xE;
                                    if (var_s7 != 0xD) {
                                        var_a5_3 = 0xB;
                                        if (var_s7 != 0xE) {
                                            var_a5_3 = 0xC;
                                            var_v1_6 = 0;
                                            if (var_s7 != 0xC) {
                                                var_v1_6 = unksp158;
                                                var_v0_8 = 0;
                                                temp_a3_6->unk4052C = var_s7;
                                                temp_a3_6->unk404D4 = 0;
                                            } else {
                                                var_v0_8 = 1;
                                                temp_a3_6->unk4052C = 8;
                                                temp_a3_6->unk404D4 = (s32) (unksp158 & 0xF);
                                            }
                                        } else {
                                            var_v0_8 = 9;
                                            var_v1_6 = 0;
                                            temp_a3_6->unk4052C = 0xB;
                                            var_a4_4 = unksp158 & 0xC;
                                            temp_a3_6->unk404D4 = var_a4_4;
                                        }
                                    } else {
                                        goto block_97;
                                    }
                                } else {
                                    var_s7 = 0xD;
                                    unksp158 = 3;
block_97:
                                    var_v0_8 = 1;
                                    var_v1_6 = 0;
                                    var_a5_3 = 0xB;
                                    temp_a3_6->unk4052C = 0xB;
                                    var_a4_4 = unksp158 & 3;
                                    temp_a3_6->unk404D4 = var_a4_4;
                                }
                                var_a3_4 = var_s4_5 < 2;
                                temp_a3_6->unk40530 = 0;
                                temp_a3_6->unk4077C = (s32) (var_v1_6 & 0xFFFFFF);
                                temp_a3_6->unk4077C = 3;
                                temp_a3_6->unk4077C = var_v0_8;
                                if (var_s4_5 != 0) {
                                    var_v0_9 = var_s5_4;
                                    if (var_a3_4 == 0) {
                                        temp_a3_6->unk404C0 = 0;
                                        var_at_6 = var_v0_9->unk0;
                                        do {
                                            temp_a3_6->unk4077C = (s32) var_at_6;
                                            temp_a3_6->unk4077C = (s32) var_v0_9->unk2;
                                            temp_a3_6->unk4077C = (s32) var_v0_9->unk4;
                                            temp_at_7 = var_v0_9->unk6;
                                            var_v0_9 += 8;
                                            temp_a3_6->unk4077C = (s32) temp_at_7;
                                            temp_a3_6->unk407A8 = 0;
                                            temp_a3_6->unk404C0 = 0;
                                            var_at_6 = var_v0_9->unk0;
                                        } while (var_v0_9 != ((var_s5_4 + (var_s4_5 * 8)) - 8));
                                        var_a3_4 = var_at_6;
                                        temp_a3_6->unk4077C = (s32) var_a3_4;
                                        temp_a3_6->unk4077C = (s32) var_v0_9->unk2;
                                        var_a5_3 = var_v0_9->unk4;
                                        temp_a3_6->unk4077C = (s32) var_a5_3;
                                        var_a4_4 = (s32) var_v0_9->unk6;
                                        temp_a3_6->unk4077C = var_a4_4;
                                    } else {
                                        temp_a3_6->unk404C0 = 0;
                                        temp_a3_6->unk4077C = (s32) var_v0_9->unk0;
                                        var_a5_3 = var_v0_9->unk2;
                                        temp_a3_6->unk4077C = (s32) var_a5_3;
                                        var_a4_4 = (s32) var_v0_9->unk4;
                                        temp_a3_6->unk4077C = var_a4_4;
                                        var_a3_4 = var_v0_9->unk6;
                                        temp_a3_6->unk4077C = (s32) var_a3_4;
                                    }
                                    temp_a3_6->unk407A8 = 0;
                                }
                                arg0->unk178(&sp10, 0, (s32) temp_s0->unkE2, var_a3_4, (s16) var_a4_4, var_a5_3);
                                if (sp18 != NULL) {
                                    var_s5_5 = sp18 + 8;
                                    if (sp18 != NULL) {
                                        goto block_47;
                                    }
                                    goto block_91;
                                }
                                var_s5_5 = &sp10;
                                if (sp18 == NULL) {
block_91:
                                    var_s4_6 = 1;
                                } else {
block_47:
                                    var_s4_6 = sp18->unk4;
                                }
                                temp_a3_7 = **(arg0->unk1B4 + (expScreenPrivateIndex * 4));
                                temp_a3_7->unk4052C = 8;
                                if (var_s2_3 != 0x20) {
                                    if (var_s2_3 != 0x21) {
                                        if (var_s2_3 == 0x22) {
                                            var_s7 = 0xC;
                                            unksp158 = 0xF;
                                        } else {
                                            sp1C8 = temp_a3_7 + 0x40000;
                                            ErrorF(&local_0x5f0a0000 - 0x698, (u8) var_s2_3);
                                        }
                                    } else {
                                        var_s7 = 0xE;
                                        unksp158 = 0xC;
                                    }
                                    if (var_s7 != 0xD) {
                                        if (var_s7 != 0xE) {
                                            var_v0_10 = 0;
                                            if (var_s7 != 0xC) {
                                                var_v0_10 = unksp158;
                                                var_v1_7 = 0;
                                                temp_a3_7->unk4052C = var_s7;
                                                temp_a3_7->unk404D4 = 0;
                                            } else {
                                                var_v1_7 = 1;
                                                temp_a3_7->unk4052C = 8;
                                                temp_a3_7->unk404D4 = (s32) (unksp158 & 0xF);
                                            }
                                        } else {
                                            var_v1_7 = 9;
                                            var_v0_10 = 0;
                                            temp_a3_7->unk4052C = 0xB;
                                            temp_a3_7->unk404D4 = (s32) (unksp158 & 0xC);
                                        }
                                    } else {
                                        goto block_95;
                                    }
                                } else {
                                    unksp158 = 3;
                                    var_s7 = 0xD;
block_95:
                                    var_v1_7 = 1;
                                    var_v0_10 = 0;
                                    temp_a3_7->unk4052C = 0xB;
                                    temp_a3_7->unk404D4 = (s32) (unksp158 & 3);
                                }
                                temp_a3_7->unk40530 = 0;
                                temp_a3_7->unk4077C = (s32) (var_v0_10 & 0xFFFFFF);
                                temp_a3_7->unk4077C = 3;
                                temp_a3_7->unk4077C = var_v1_7;
                                if (var_s4_6 != 0) {
                                    var_v0_11 = var_s5_5;
                                    if (var_s4_6 >= 2) {
                                        temp_a3_7->unk404C0 = 0;
                                        var_at_7 = var_v0_11->unk0;
                                        do {
                                            temp_a3_7->unk4077C = (s32) var_at_7;
                                            temp_a3_7->unk4077C = (s32) var_v0_11->unk2;
                                            temp_a3_7->unk4077C = (s32) var_v0_11->unk4;
                                            temp_at_8 = var_v0_11->unk6;
                                            var_v0_11 += 8;
                                            temp_a3_7->unk4077C = (s32) temp_at_8;
                                            temp_a3_7->unk407A8 = 0;
                                            temp_a3_7->unk404C0 = 0;
                                            var_at_7 = var_v0_11->unk0;
                                        } while (var_v0_11 != ((var_s5_5 + (var_s4_6 * 8)) - 8));
                                        temp_a3_7->unk4077C = (s32) var_at_7;
                                        temp_a3_7->unk4077C = (s32) var_v0_11->unk2;
                                        temp_a3_7->unk4077C = (s32) var_v0_11->unk4;
                                        temp_a3_7->unk4077C = (s32) var_v0_11->unk6;
                                    } else {
                                        temp_a3_7->unk404C0 = 0;
                                        temp_a3_7->unk4077C = (s32) var_v0_11->unk0;
                                        temp_a3_7->unk4077C = (s32) var_v0_11->unk2;
                                        temp_a3_7->unk4077C = (s32) var_v0_11->unk4;
                                        temp_a3_7->unk4077C = (s32) var_v0_11->unk6;
                                    }
                                    temp_a3_7->unk407A8 = 0;
                                }
                            }
                        }
                    } else {
                        if (sp18 != NULL) {
                            var_s5 = sp18 + 8;
                            if (sp18 != NULL) {
                                goto block_100;
                            }
                        } else if (sp18 == NULL) {

                        } else {
block_100:
                            var_s4_2 = sp18->unk4;
                        }
                        temp_a3_8 = **(arg0->unk1B4 + (expScreenPrivateIndex * 4));
                        temp_a3_8->unk4052C = 8;
                        switch (var_s2_3) {         /* irregular */
                        default:
                            sp1B8 = temp_a3_8 + 0x40000;
                            ErrorF(&local_0x5f0a0000 - 0x698, (u8) var_s2_3);
block_105:
                            if (var_s7 != 0xD) {
                                if (var_s7 != 0xE) {
                                    var_v0_12 = 0;
                                    if (var_s7 != 0xC) {
                                        var_v0_12 = unksp158;
                                        var_v1_8 = 0;
                                        temp_a3_8->unk4052C = var_s7;
                                        temp_a3_8->unk404D4 = 0;
                                    } else {
                                        var_v1_8 = 1;
                                        temp_a3_8->unk4052C = 8;
                                        temp_a3_8->unk404D4 = (s32) (unksp158 & 0xF);
                                    }
                                } else {
                                    var_v1_8 = 9;
                                    var_v0_12 = 0;
                                    temp_a3_8->unk4052C = 0xB;
                                    temp_a3_8->unk404D4 = (s32) (unksp158 & 0xC);
                                }
                            } else {
block_225:
                                var_v1_8 = 1;
                                var_v0_12 = 0;
                                temp_a3_8->unk4052C = 0xB;
                                temp_a3_8->unk404D4 = (s32) (unksp158 & 3);
                            }
                            break;
                        case 34:
                            var_s7 = 0xC;
                            unksp158 = 0xF;
                            goto block_105;
                        case 32:
                            var_s7 = 0xD;
                            unksp158 = 3;
                            goto block_225;
                        case 33:
                            var_s7 = 0xE;
                            unksp158 = 0xC;
                            goto block_105;
                        }
                        temp_a3_8->unk40530 = 0;
                        temp_a3_8->unk4077C = (s32) (var_v0_12 & 0xFFFFFF);
                        temp_a3_8->unk4077C = 3;
                        temp_a3_8->unk4077C = var_v1_8;
                        if (var_s4_2 != 0) {
                            var_v0_13 = var_s5;
                            if (var_s4_2 >= 2) {
                                temp_a3_8->unk404C0 = 0;
                                var_at_8 = var_v0_13->unk0;
                                do {
                                    temp_a3_8->unk4077C = (s32) var_at_8;
                                    temp_a3_8->unk4077C = (s32) var_v0_13->unk2;
                                    temp_a3_8->unk4077C = (s32) var_v0_13->unk4;
                                    temp_at_9 = var_v0_13->unk6;
                                    var_v0_13 += 8;
                                    temp_a3_8->unk4077C = (s32) temp_at_9;
                                    temp_a3_8->unk407A8 = 0;
                                    temp_a3_8->unk404C0 = 0;
                                    var_at_8 = var_v0_13->unk0;
                                } while (var_v0_13 != ((var_s5 + (var_s4_2 * 8)) - 8));
                                temp_a3_8->unk4077C = (s32) var_at_8;
                                temp_a3_8->unk4077C = (s32) var_v0_13->unk2;
                                temp_a3_8->unk4077C = (s32) var_v0_13->unk4;
                                temp_a3_8->unk4077C = (s32) var_v0_13->unk6;
                            } else {
                                temp_a3_8->unk404C0 = 0;
                                temp_a3_8->unk4077C = (s32) var_v0_13->unk0;
                                temp_a3_8->unk4077C = (s32) var_v0_13->unk2;
                                temp_a3_8->unk4077C = (s32) var_v0_13->unk4;
                                temp_a3_8->unk4077C = (s32) var_v0_13->unk6;
                            }
                            temp_a3_8->unk407A8 = 0;
                        }
                    }
                }
            }
            var_a1 = temp_s0->unk5C + var_s3_2;
        }
        var_s2_3 += 1;
        var_s6 += 4;
        arg0->unk188(var_a1, var_a1);
        var_s3_2 += 0xC;
        if ((u32) var_s2_3 < (u32) temp_s0->unk54) {
            goto loop_66;
        }
    }
    if (unksp150 != 0) {
        if (unksp160 != 0) {
            arg0->unk160(&sp20);
            sp130 = 0;
            sp132 = 0;
            sp134 = arg0->unk8;
            sp136 = arg0->unkA;
            arg0->unk154(&sp20, &sp130, 0);
            arg0->unk16C(&sp20, &sp20, temp_s0->unk2C);
            if ((sp28 == NULL) || (sp28->unk4 != 0)) {
                arg0->unk158(sp, temp_s0->unk60);
                temp_a0_3 = temp_s0->unk60;
                arg0->unk168(temp_a0_3, temp_a0_3, &sp20);
            }
        }
        expvc1ComputeDIDTable(arg0, temp_s0->unk54 - 3, temp_s0->unk60);
        if ((unksp160 != 0) && ((sp28 == NULL) || (sp28->unk4 != 0))) {
            arg0->unk158(temp_s0->unk60, sp);
        }
    }
    arg0->unk160(sp);
    arg0->unk160(&sp10);
    if (unksp160 != 0) {
        arg0->unk160(&sp20);
    }
}

void expValidateWindowPriv(void *arg0) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 *temp_a3_2;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_gp;
    s32 var_a7;
    u8 temp_a1;
    void *temp_a5;
    void *temp_a5_2;

    temp_a1 = arg0->unk2;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x17EBAC;
    temp_a4 = *(arg0->unk84 + (nfbWindowPrivateIndex * 4));
    switch (temp_a1) {                              /* irregular */
    default:
        sp18 = (s64) temp_a4;
        ErrorF(&local_0x5f0a0000 - 0xE48, temp_a1, (void *)0x18, temp_a1, temp_a4, 4, arg0);
        ErrorF(&local_0x5f0a0000 - 0xE18);
        /* fallthrough */
    case 0:
    case 2:
        temp_a3 = temp_a4->unk18;
        temp_a4->unk0 = (s32) (temp_gp - 0x5554);
        if (temp_a3 != 1) {
            if (temp_a3 == 2) {
                temp_a4->unk8 = 0xC;
                temp_a4->unk14 = 0xE;
                temp_a4->unk10 = (s32) (temp_a4->unk10 & 3);
                temp_a4->unkC = (s32) (temp_a4->unkC & 3);
            }
        } else {
            temp_a4->unk14 = 0xD;
            temp_a4->unk8 = 3;
            temp_a4->unk10 = (s32) (temp_a4->unk10 & 3);
            temp_a4->unkC = (s32) (temp_a4->unkC & 3);
        }
        break;
    case 4:
        temp_a4->unk8 = 0xF;
        temp_a4->unk0 = (s32) (temp_gp - 0x552C);
        if (temp_a4->unk18 != 0) {
            temp_a4->unk14 = 0xC;
        } else {
            temp_a4->unk14 = 8;
        }
        break;
    case 12:
        temp_a5 = arg0->unk10;
        temp_a3_2 = arg0->unk78;
        temp_a1_2 = temp_a5->unk7C;
        temp_a5_2 = temp_a5->unk74;
        if (temp_a3_2 != NULL) {
            var_a7 = *temp_a3_2;
        } else {
            sp18 = (s64) temp_a4;
            sp10 = (s64) temp_a1_2;
            sp8 = (s64) temp_a5_2;
            var_a7 = *FindWindowWithOptional(arg0, temp_a1_2, 0x18, temp_a3_2, temp_a4, temp_a5_2, 4, arg0)->unk78;
        }
        if ((((var_a7 - temp_a5_2->unk50) * 0x24) + temp_a1_2)->unk4 != 4) {
            temp_a4->unk8 = 0xFFF;
            temp_a4->unk0 = (s32) (temp_gp - 0x5504);
            temp_a4->unk14 = 0xA;
        } else {
            temp_a4->unk14 = 2;
            temp_a4->unk8 = 0xFFF;
            temp_a4->unk0 = (s32) (temp_gp - 0x54DC);
        }
        break;
    case 24:
        temp_a4->unk14 = 4;
        temp_a4->unk8 = 0xFFFFFF;
        temp_a4->unk0 = (s32) (temp_gp - 0x54B4);
        break;
    case 8:
        temp_a4->unk8 = 0xFF;
        temp_a4->unk14 = 9;
        temp_a4->unk0 = (s32) (temp_gp - 0x552C);
        break;
    }
}

s32 expRealizeWindow(void *arg0) {
    s64 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a7;
    s32 *temp_v1;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_v1_3;
    void *temp_a1;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a3;
    void *temp_a4;
    void *temp_at;
    void *temp_s5;
    void *temp_v0;
    void *temp_v1_2;
    void *var_a0;

    temp_a2 = arg0->unk10;
    temp_a3 = temp_a2->unk74;
    temp_a4 = *(temp_a2->unk1B4 + (expScreenPrivateIndex * 4));
    temp_s5 = *(arg0->unk84 + (nfbWindowPrivateIndex * 4));
    if (((u32) (arg0->unk7C & 0x7FF) >> 0xA) != 0) {
        temp_v1 = temp_a3->unk40 + (temp_s5->unk18 * 4);
        *temp_v1 += 1;
    }
    if (temp_s5->unk18 == 3) {
        temp_a0 = temp_a4->unk350;
        if (!(temp_a0 & 2)) {
            temp_a4->unk350 = (s32) (temp_a0 | 2);
            temp_v1_2 = temp_a3->unk40;
            temp_v1_2->unk8 = (s32) (temp_v1_2->unk8 + 1);
        } else {
            goto block_5;
        }
    } else {
block_5:
        if (temp_a3->unk40->unkC == 0) {
            temp_a0_2 = temp_a4->unk350;
            if (temp_a0_2 & 2) {
                temp_a4->unk350 = (s32) (temp_a0_2 & ~2);
                temp_v0 = temp_a3->unk40;
                temp_v0->unk8 = (s32) (temp_v0->unk8 - 1);
            }
        }
    }
    temp_a1 = arg0->unk18;
    sp8 = (s64) temp_a2;
    if (temp_a1 != NULL) {
        nfbSetDidFlags(arg0, temp_a1, temp_a2, temp_a3, temp_a4);
        temp_a2_2 = arg0->unk18;
        temp_v1_3 = nfbWindowPrivateIndex * 4;
        var_a0 = temp_a2_2;
        if ((*(temp_a2_2->unk84 + temp_v1_3))->unk18 != (*(arg0->unk84 + temp_v1_3))->unk18) {
            if (temp_a2_2 != NULL) {
                do {
                    temp_at = *((nfbWindowPrivateIndex * 4) + var_a0->unk84);
                    temp_at->unk1C = (s32) (temp_at->unk1C + 1);
                    var_a0 = var_a0->unk18;
                } while (var_a0 != NULL);
            }
        }
        return 1;
    }
    temp_s5->unk24 = (s32) (temp_s5->unk24 | (1 << temp_s5->unk18));
    sp2 = 0;
    sp0 = 0;
    sp4 = sp8->unk8;
    temp_a7 = sp8->unkA;
    sp6 = temp_a7;
    temp_a6 = temp_a3->unk50;
    temp_a5 = sp8->unk18 - temp_a6;
    temp_a4_2 = temp_a5 * 0x14;
    temp_a3_2 = *(temp_a3->unk58 + temp_a4_2);
    temp_a2_3 = temp_a3_2 * 0xC;
    sp8->unk174(sp8->unk74->unk60 + temp_a2_3, sp, temp_a2_3, temp_a3_2, temp_a4_2, temp_a5, temp_a6, temp_a7);
    temp_a3_3 = temp_s5->unk18;
    temp_a2_4 = temp_a3_3 * 0xC;
    sp8->unk174(sp8->unk74->unk2C + temp_a2_4, sp, temp_a2_4, temp_a3_3);
    nfbInitRootWindow(arg0->unk10);
    return 1;
}

s32 expUnrealizeWindow(void *arg0) {
    s32 temp_a4;
    s32 temp_a5;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a6;
    void *temp_v0;

    temp_a3 = arg0->unk10;
    temp_a6 = *(temp_a3->unk1B4 + (expScreenPrivateIndex * 4));
    temp_a5 = temp_a6->unk350;
    temp_a3_2 = temp_a3->unk74;
    if (temp_a5 & 2) {
        temp_a4 = temp_a3_2->unk40->unkC;
        if (temp_a4 != 0) {
            if (((*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk18 == 3) && (temp_a4 == 1)) {
                goto block_6;
            }
        } else {
block_6:
            temp_a6->unk350 = (s32) (temp_a5 & ~2);
            temp_v0 = temp_a3_2->unk40;
            temp_v0->unk8 = (s32) (temp_v0->unk8 - 1);
        }
    }
    return 1;
}

s32 expInitiateBufferSwap(void **arg0, s32 arg1, ? arg_sp0) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_5;
    s32 temp_a3_2;
    s32 temp_a5_11;
    s32 temp_at;
    s32 temp_t1;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_8;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_6;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a6;
    s32 var_a7;
    s32 var_at;
    s32 var_s3;
    s32 var_v0_10;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s64 temp_a3;
    s64 temp_a4_2;
    s64 temp_a4_3;
    s64 temp_s3;
    s64 temp_v0_5;
    s64 temp_v0_7;
    u16 temp_a0_3;
    u16 temp_a6;
    u16 var_a2_2;
    u16 var_a2_3;
    u16 var_a3;
    u16 var_a5;
    u16 var_a5_3;
    void *temp_a0_6;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_6;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_a4;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a5;
    void *temp_a5_10;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a5_5;
    void *temp_a5_6;
    void *temp_a5_7;
    void *temp_a5_8;
    void *temp_a5_9;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_a6_5;
    void *temp_a6_6;
    void *temp_a6_7;
    void *temp_a6_8;
    void *temp_at_2;
    void *temp_at_3;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s7;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_t0_4;
    void *temp_t2;
    void *temp_t2_2;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_6;
    void *temp_v0_9;
    void *temp_v1;
    void *var_a0_4;
    void *var_a0_5;
    void *var_a2;
    void *var_a5_2;
    void *var_a7_2;
    void *var_a7_3;
    void *var_s1;
    void *var_s2;
    void *var_s4;
    void *var_s5;
    void *var_v0;

    arg_sp0.unk-98 = (s64) saved_reg_s0;
    arg_sp0.unk-68 = 0;
    temp_v0 = arg1 * 4;
    arg_sp0.unk-50 = (s64) saved_reg_fp;
    arg_sp0.unk-58 = (s64) saved_reg_gp;
    temp_a4 = (*arg0)->unk10;
    arg_sp0.unk-40 = (s64) (sp - ((temp_v0 + 0xF) & ~0xF));
    arg_sp0.unk-78 = (s64) temp_a4->unk74;
    arg_sp0.unk-80 = (s64) *(temp_a4->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (arg1 > 0) {
        arg_sp0.unk-A0 = (s64) saved_reg_s1;
        arg_sp0.unk-A8 = (s64) saved_reg_s5;
        arg_sp0.unk-B0 = (s64) saved_reg_s2;
        arg_sp0.unk-B8 = (s64) saved_reg_s6;
        arg_sp0.unk-C0 = (s64) saved_reg_s3;
        arg_sp0.unk-C8 = (s64) saved_reg_s7;
        arg_sp0.unk-D0 = (s64) saved_reg_ra;
        arg_sp0.unk-90 = (s64) saved_reg_s4;
        arg_sp0.unk-88 = (s64) arg0;
        arg_sp0.unk-70 = (s64) (temp_v0 + arg0);
        arg_sp0.unk-60 = (s64) arg_sp0.unk-40;
loop_7:
        temp_s7 = *arg_sp0.unk-88;
        temp_at = temp_s7->unk84;
        temp_v1 = *((rrmWindowPrivateIndex * 4) + temp_at);
        arg_sp0.unk-48 = (s64) temp_v1;
        arg_sp0.unk-38 = 0;
        temp_s1 = (dbcWindowPrivateIndex * 4) + temp_at;
        if (temp_v1->unk4 & 8) {
            arg_sp0.unk-80->unk20(temp_s7, 8, 1);
        }
        if (temp_s7->unk1 != 2) {
            temp_v0_2 = temp_s7->unk78;
            if (temp_v0_2 != NULL) {
                var_a1 = temp_v0_2->unk8;
            } else {
                var_a1 = M2C_ERROR(/* Read from unset register $t9 */)(temp_s7)->unk78->unk8;
            }
            var_a0 = var_a1;
        } else {
            var_a0 = 0;
        }
        temp_v0_3 = LookupIDByType(var_a0, 6);
        if (temp_v0_3 != NULL) {
            temp_a0 = *temp_v0_3->unk44;
            if (temp_a0 >= 0) {
                var_v0 = arg_sp0.unk-78->unk74 + (temp_a0 * 0x1C);
            } else {
                temp_v0_4 = temp_s7->unk78;
                if (temp_v0_4 != NULL) {
                    var_a0_2 = temp_v0_4->unk0;
                } else {
                    var_a0_2 = *M2C_ERROR(/* Read from unset register $t9 */)(temp_s7)->unk78;
                }
                temp_v0_5 = arg_sp0.unk-78;
                var_v0 = temp_v0_5->unk74 + (*(temp_v0_5->unk7C + ((temp_v0_5->unk58 + ((var_a0_2 - temp_v0_5->unk50) * 0x14))->unk4 * 0x18))->unk4 * 0x1C);
            }
        } else {
            temp_v0_6 = temp_s7->unk78;
            if (temp_v0_6 != NULL) {
                var_a0_3 = temp_v0_6->unk0;
            } else {
                var_a0_3 = *M2C_ERROR(/* Read from unset register $t9 */)(temp_s7)->unk78;
            }
            temp_v0_7 = arg_sp0.unk-78;
            var_v0 = temp_v0_7->unk74 + (*(temp_v0_7->unk7C + ((temp_v0_7->unk58 + ((var_a0_3 - temp_v0_7->unk50) * 0x14))->unk4 * 0x18))->unk4 * 0x1C);
        }
        temp_a4_2 = arg_sp0.unk-48;
        temp_a1 = temp_a4_2->unk20;
        temp_a0_2 = (var_v0->unk18 << 0x1B) | 0x800 | temp_a4_2->unk24;
        if (temp_s1->unk2 != 1) {
            var_v0_2 = 0x01F00000 | temp_a0_2;
            arg_sp0.unk-48->unk20 = (s32) (temp_a1 | 4);
        } else {
            var_v0_2 = (0xF00000 | temp_a0_2) & 0xFEFFFFFF;
            arg_sp0.unk-48->unk20 = (s32) (-5 & temp_a1);
        }
        arg_sp0.unk-48->unk24 = var_v0_2;
        if (((u32) (temp_s7->unk7C & 0xFFF) >> 0xB) != 0) {
            var_v0_3 = rrmWindowPrivateIndex * 4;
            temp_t2 = *((rrmScreenPrivateIndex * 4) + temp_s7->unk10->unk1B4);
            temp_t0 = *(temp_s7->unk84 + var_v0_3);
            var_a7 = 0;
            temp_t1 = temp_t2->unk0 - 1;
            if (temp_t1 > 0) {
                var_a1_2 = temp_t1;
                var_a0_4 = (temp_t1 * 0x24) + temp_t2;
loop_29:
                temp_a6 = var_a0_4->unkA8;
                var_a3 = temp_a6 & 1;
                if (temp_a6 & 0x10) {
                    var_a3 = temp_a6 & 1;
                    if (((temp_t0->unk14 * 0x24) + temp_t2) != var_a0_4) {
                        var_a3 = temp_a6 & 1;
                        if ((*(var_a0_4->unk98->unk84 + var_v0_3))->unk24 == temp_t0->unk24) {
                            var_a2 = temp_t2->unk98;
                            if (var_a2 != NULL) {
loop_35:
                                temp_a5 = *(var_v0_3 + var_a2->unk84);
                                if (temp_a5->unk4 & 8) {
                                    var_a7 = var_a1_2;
                                }
                                var_a2 = temp_a5->unk30;
                                if (var_a2 != NULL) {
                                    goto loop_35;
                                }
                            }
                            var_a3 = temp_a6 & 1;
                            if (var_a7 != 0) {
                                goto block_27;
                            }
                            var_a4 = temp_t0->unk14;
                            if (var_a4 >= 0) {
                                temp_a2 = (temp_t0->unk14 * 0x24) + temp_t2;
                                var_a2 = temp_a2 + 0x98;
                                if (temp_t0->unk0 & 8) {
                                    temp_a6_2 = temp_t0->unk2C;
                                    temp_a5_2 = temp_t0->unk30;
                                    if (temp_a6_2 != NULL) {
                                        (*(temp_a6_2->unk84 + var_v0_3))->unk30 = temp_a5_2;
                                    } else {
                                        temp_a2->unk98 = temp_a5_2;
                                    }
                                    temp_a5_3 = temp_t0->unk30;
                                    temp_a6_3 = temp_t0->unk2C;
                                    if (temp_a5_3 != NULL) {
                                        (*(temp_a5_3->unk84 + var_v0_3))->unk2C = temp_a6_3;
                                        temp_t0->unk30 = NULL;
                                    } else {
                                        var_a2->unk4 = temp_a6_3;
                                    }
                                    temp_t0->unk2C = NULL;
                                    var_a4 = var_a2->unk14 - 1;
                                    var_v0_4 = var_a2->unk10 & 0x31 & 0xFFFF;
                                    var_a2->unk14 = var_a4;
                                    if (var_v0_4 & 1) {
                                        var_v0_4 |= 6;
                                    }
                                    temp_a6_4 = temp_a2->unk98;
                                    if (temp_a6_4 != NULL) {
                                        var_a5 = var_v0_4 | 2;
                                        if (var_a2->unk4 != temp_a6_4) {
                                            var_a5 = var_v0_4 | 6;
                                        }
                                    } else {
                                        var_a5 = -0x11 & var_v0_4;
                                    }
                                    var_a2->unk10 = var_a5;
                                    temp_t0->unk0 = (u16) (temp_t0->unk0 & ~8);
                                }
                                var_a3 = -1U;
                                temp_t0->unk14 = -1;
                            }
                            AssignID__LIC(temp_s7, var_a1_2, var_a2, var_a3, var_a4);
                            goto block_65;
                        }
                    }
                }
block_27:
                var_a1_2 -= 1;
                if (var_a3 == 0) {
                    var_a0_4 -= 0x24;
                    if (var_a0_4 != temp_t2) {
                        goto loop_29;
                    }
                }
                goto block_37;
            }
block_37:
            if ((var_a7 != 0) && (temp_t1 > 0)) {
                var_s3 = temp_t1;
                var_s5 = (temp_t1 * 0x24) + temp_t2;
loop_48:
                temp_a0_3 = var_s5->unkA8;
                var_at = temp_a0_3 & 1;
                if ((temp_a0_3 & 0x10) && (var_at = temp_a0_3 & 1, (temp_t0->unk14 != var_s3))) {
                    var_s4 = temp_t2->unk98;
                    if (var_s4 != NULL) {
loop_55:
                        var_a0_5 = *(var_v0_3 + var_s4->unk84);
                        if (var_a0_5->unk4 & 8) {
                            var_s1 = var_s5->unk98;
                            if (var_s1 != NULL) {
                                do {
                                    dbcDelayedSwapBufferDone(var_s1, 0, 1);
                                    var_v0_3 = rrmWindowPrivateIndex * 4;
                                    var_s1 = (*(var_s1->unk84 + var_v0_3))->unk30;
                                } while (var_s1 != NULL);
                                var_a0_5 = *(var_v0_3 + var_s4->unk84);
                            }
                        }
                        var_s4 = var_a0_5->unk30;
                        if (var_s4 != NULL) {
                            goto loop_55;
                        }
                    }
                    temp_a1_2 = temp_t2->unk14;
                    temp_a0_4 = temp_t2->unk10;
                    if (temp_t0->unk2 != var_s5->unkAA) {
                        var_a0_6 = 0;
                    } else {
                        if (((temp_t0->unk20 & temp_a0_4) == (var_s5->unkA0 & temp_a0_4)) && (var_a1_3 = 1, ((temp_t0->unk24 & temp_a1_2) == (var_s5->unkA4 & temp_a1_2)))) {

                        } else {
                            var_a1_3 = 0;
                        }
                        var_a0_6 = var_a1_3;
                    }
                    if (var_a0_6 != 0) {
                        temp_t0_2 = *(temp_s7->unk84 + var_v0_3);
                        if (temp_t0_2->unk14 >= 0) {
                            temp_a1_3 = *(temp_s7->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_t0_2->unk14 * 0x24);
                            temp_a1_4 = temp_a1_3 + 0x98;
                            if (temp_t0_2->unk0 & 8) {
                                temp_a2_2 = temp_t0_2->unk2C;
                                temp_a5_4 = temp_t0_2->unk30;
                                if (temp_a2_2 != NULL) {
                                    (*(temp_a2_2->unk84 + var_v0_3))->unk30 = temp_a5_4;
                                } else {
                                    temp_a1_3->unk98 = temp_a5_4;
                                }
                                temp_a5_5 = temp_t0_2->unk30;
                                temp_a2_3 = temp_t0_2->unk2C;
                                if (temp_a5_5 != NULL) {
                                    (*(temp_a5_5->unk84 + var_v0_3))->unk2C = temp_a2_3;
                                    temp_t0_2->unk30 = NULL;
                                } else {
                                    temp_a1_4->unk4 = temp_a2_3;
                                }
                                temp_t0_2->unk2C = NULL;
                                var_v0_5 = temp_a1_4->unk10 & 0x31 & 0xFFFF;
                                temp_a1_4->unk14 = (s32) (temp_a1_4->unk14 - 1);
                                if (var_v0_5 & 1) {
                                    var_v0_5 |= 6;
                                }
                                temp_a5_6 = temp_a1_3->unk98;
                                if (temp_a5_6 != NULL) {
                                    var_a2_2 = var_v0_5 | 2;
                                    if (temp_a1_4->unk4 != temp_a5_6) {
                                        var_a2_2 = var_v0_5 | 6;
                                    }
                                } else {
                                    var_a2_2 = -0x11 & var_v0_5;
                                }
                                temp_a1_4->unk10 = var_a2_2;
                                temp_t0_2->unk0 = (u16) (temp_t0_2->unk0 & ~8);
                            }
                            temp_t0_2->unk14 = -1;
                        }
                        AssignID__LIC(temp_s7, var_s3);
                        var_v0_6 = 1;
                    } else {
                        var_at = var_s5->unkA8 & 1;
                        goto block_46;
                    }
                } else {
block_46:
                    var_s3 -= 1;
                    if (var_at == 0) {
                        var_s5 -= 0x24;
                        if (var_s5 != temp_t2) {
                            goto loop_48;
                        }
                    }
                    goto block_63;
                }
            } else {
block_63:
                var_v0_6 = 0;
            }
            if (var_v0_6 != 0) {
block_65:
                dbcDelayedSwapBufferDone(temp_s7->unk4);
                arg_sp0.unk-38 = 1;
            } else {
                temp_v0_8 = rrmWindowPrivateIndex * 4;
                temp_t0_3 = *(temp_s7->unk84 + temp_v0_8);
                var_a6 = rrmScreenPrivateIndex * 4;
                var_a2_3 = temp_t0_3->unk2;
                temp_t2_2 = *(var_a6 + temp_s7->unk10->unk1B4);
                var_a5_2 = temp_t2_2;
                if (var_a2_3 != 1) {
                    goto block_67;
                }
                if (var_a5_2->unkC & 1) {
                    var_v0_7 = 1;
                    temp_t0_3->unk14 = (s32) var_a5_2->unk0;
                } else {
block_67:
                    temp_a1_5 = temp_t0_3->unk14;
                    if ((temp_a1_5 < 0) || (((temp_a1_5 * 0x24) + var_a5_2)->unkA8 & 4)) {
                        temp_a0_5 = var_a5_2->unk0;
                        var_a1_4 = 0;
                        if (temp_a0_5 != 0) {
                            var_a7_2 = var_a5_2;
loop_72:
                            if ((var_a7_2->unkAA == var_a2_3) && (var_a3_2 = var_a7_2->unkA8 & 1, (var_a3_2 == 0)) && (var_a4_2 = var_a7_2->unkAC, (var_a4_2 == 0))) {
                                if (temp_t0_3->unk14 >= 0) {
                                    var_a3_2 = temp_t0_3->unk14;
                                    var_a2_3 = (u16) ((var_a3_2 * 0x24) + temp_t2_2 + 0x98);
                                    if (temp_t0_3->unk0 & 8) {
                                        temp_a6_5 = temp_t0_3->unk2C;
                                        temp_a5_7 = temp_t0_3->unk30;
                                        if (temp_a6_5 != NULL) {
                                            (*(temp_a6_5->unk84 + temp_v0_8))->unk30 = temp_a5_7;
                                        } else {
                                            var_a2_3->unk0 = (s32) temp_a5_7;
                                        }
                                        temp_a5_8 = temp_t0_3->unk30;
                                        temp_a6_6 = temp_t0_3->unk2C;
                                        if (temp_a5_8 != NULL) {
                                            (*(temp_a5_8->unk84 + temp_v0_8))->unk2C = temp_a6_6;
                                            temp_t0_3->unk30 = NULL;
                                        } else {
                                            var_a2_3->unk4 = temp_a6_6;
                                        }
                                        temp_t0_3->unk2C = NULL;
                                        var_v0_8 = var_a2_3->unk10 & 0x31 & 0xFFFF;
                                        var_a2_3->unk14 = (s32) (var_a2_3->unk14 - 1);
                                        if (var_v0_8 & 1) {
                                            var_v0_8 |= 6;
                                        }
                                        var_a6 = var_a2_3->unk0;
                                        if (var_a6 != 0) {
                                            var_a5_2 = (void *) (var_v0_8 | 2);
                                            if (var_a2_3->unk4 != var_a6) {
                                                var_a5_2 = (void *) (var_v0_8 | 6);
                                            }
                                        } else {
                                            var_a5_2 = (void *) (-0x11 & var_v0_8);
                                        }
                                        var_a2_3->unk10 = (u16) var_a5_2;
                                        var_a4_2 = -9;
                                        var_a3_2 = temp_t0_3->unk0 & ~8;
                                        temp_t0_3->unk0 = (u16) var_a3_2;
                                    }
                                    temp_t0_3->unk14 = -1;
                                }
                                AssignID__LIC(temp_s7, var_a1_4, (void *) var_a2_3, (u16) var_a3_2, var_a4_2, (u16) var_a5_2, (void *) var_a6, var_a7_2);
                                var_v0_7 = 1;
                            } else {
                                var_a1_4 += 1;
                                var_a7_2 += 0x24;
                                if (var_a1_4 != temp_a0_5) {
                                    goto loop_72;
                                }
                                goto block_89;
                            }
                        } else {
block_89:
                            if ((var_a5_2->unk30 != 0) && (var_a1_5 = 0, (temp_a0_5 != 0))) {
                                var_a7_3 = var_a5_2;
loop_93:
                                if ((var_a7_3->unkAA == var_a2_3) && (var_a5_3 = var_a7_3->unkA8, ((var_a5_3 & 1) != 0)) && !(var_a5_3 & 0x20) && !(var_a5_3 & 2) && (var_a3_3 = var_a7_3->unkAC, (var_a3_3 == 0))) {
                                    var_a7_3->unkA8 = 0U;
                                    temp_t0_4 = *(temp_s7->unk84 + temp_v0_8);
                                    var_a4_3 = temp_t0_4->unk14;
                                    if (var_a4_3 >= 0) {
                                        var_a4_3 = temp_t0_4->unk14;
                                        var_a3_3 = var_a4_3 * 0x24;
                                        temp_a2_4 = *(temp_s7->unk10->unk1B4 + var_a6) + var_a3_3;
                                        var_a2_3 = temp_a2_4 + 0x98;
                                        if (temp_t0_4->unk0 & 8) {
                                            temp_a6_7 = temp_t0_4->unk2C;
                                            temp_a5_9 = temp_t0_4->unk30;
                                            if (temp_a6_7 != NULL) {
                                                (*(temp_a6_7->unk84 + temp_v0_8))->unk30 = temp_a5_9;
                                            } else {
                                                temp_a2_4->unk98 = (s32) temp_a5_9;
                                            }
                                            temp_a5_10 = temp_t0_4->unk30;
                                            temp_a6_8 = temp_t0_4->unk2C;
                                            if (temp_a5_10 != NULL) {
                                                (*(temp_a5_10->unk84 + temp_v0_8))->unk2C = temp_a6_8;
                                                temp_t0_4->unk30 = NULL;
                                            } else {
                                                var_a2_3->unk4 = temp_a6_8;
                                            }
                                            temp_t0_4->unk2C = NULL;
                                            var_v0_9 = var_a2_3->unk10 & 0x31 & 0xFFFF;
                                            var_a2_3->unk14 = (s32) (var_a2_3->unk14 - 1);
                                            if (var_v0_9 & 1) {
                                                var_v0_9 |= 6;
                                            }
                                            var_a6 = temp_a2_4->unk98;
                                            if (var_a6 != 0) {
                                                var_a5_3 = var_v0_9 | 2;
                                                if (var_a2_3->unk4 != var_a6) {
                                                    var_a5_3 = var_v0_9 | 6;
                                                }
                                            } else {
                                                var_a5_3 = -0x11 & var_v0_9;
                                            }
                                            var_a2_3->unk10 = var_a5_3;
                                            var_a4_3 = -9;
                                            var_a3_3 = temp_t0_4->unk0 & ~8;
                                            temp_t0_4->unk0 = (u16) var_a3_3;
                                        }
                                        temp_t0_4->unk14 = -1;
                                    }
                                    AssignID__LIC(temp_s7, var_a1_5, (void *) var_a2_3, (u16) var_a3_3, var_a4_3, var_a5_3, (void *) var_a6, var_a7_3);
                                    var_v0_7 = 1;
                                } else {
                                    var_a1_5 += 1;
                                    var_a7_3 += 0x24;
                                    if (var_a1_5 != temp_a0_5) {
                                        goto loop_93;
                                    }
                                    goto block_2;
                                }
                            } else {
block_2:
                                var_v0_7 = 0;
                            }
                        }
                    } else {
                        var_v0_7 = 1;
                    }
                }
                if (var_v0_7 == 0) {
                    StealID(temp_s7);
                }
                temp_v0_9 = (((void *) arg_sp0.unk-48)->unk14 * 0xC) + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x17D030) - 0x5384);
                temp_v0_9->unk0 = (void *) temp_s7->unk4;
                temp_v0_9->unk4 = (s32) ((void *) arg_sp0.unk-48)->unk24;
                temp_v0_9->unk8 = (s32) ((void *) arg_sp0.unk-48)->unk20;
            }
            if (arg_sp0.unk-38 == 0) {
                temp_a3 = arg_sp0.unk-60;
                *temp_a3 = temp_s7;
                temp_at_2 = (arg_sp0.unk-48->unk14 * 0x24) + arg_sp0.unk-80;
                arg_sp0.unk-60 = (s64) (temp_a3 + 4);
                arg_sp0.unk-68 = (s64) (arg_sp0.unk-68 + 1);
                temp_at_2->unkA8 = (u16) (temp_at_2->unkA8 | 0x10);
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(temp_s7->unk4, temp_a1);
        }
        temp_a4_3 = arg_sp0.unk-88 + 4;
        arg_sp0.unk-88 = temp_a4_3;
        if (temp_a4_3 != arg_sp0.unk-70) {
            goto loop_7;
        }
    } else {
        arg_sp0.unk-A0 = (s64) saved_reg_s1;
        arg_sp0.unk-A8 = (s64) saved_reg_s5;
        arg_sp0.unk-B0 = (s64) saved_reg_s2;
        arg_sp0.unk-B8 = (s64) saved_reg_s6;
        arg_sp0.unk-C0 = (s64) saved_reg_s3;
        arg_sp0.unk-C8 = (s64) saved_reg_s7;
        arg_sp0.unk-D0 = (s64) saved_reg_ra;
        arg_sp0.unk-90 = (s64) saved_reg_s4;
    }
    if (arg_sp0.unk-68 > 0) {
        temp_s3 = arg_sp0.unk-40;
        var_s2 = temp_s3 + (arg_sp0.unk-68 * 4);
loop_163:
        temp_s1_2 = var_s2->unk-4;
        temp_a1_6 = *(temp_s1_2->unk84 + (rrmWindowPrivateIndex * 4));
        temp_a5_11 = temp_a1_6->unkC;
        arg_sp0.unk-30 = temp_a5_11;
        temp_a4_4 = temp_s1_2->unk4;
        arg_sp0.unk-28 = temp_a4_4;
        temp_a3_2 = temp_a1_6->unk14;
        arg_sp0.unk-2C = temp_a3_2;
        arg_sp0.unk-24 = (s32) temp_a1_6->unk24;
        arg_sp0.unk-20 = (s32) temp_a1_6->unk20;
        if (ioctl(temp_s1_2->unk10->unk74->unk64, 0x3FC, &arg_sp0 - 0x30, temp_a3_2, temp_a4_4, temp_a5_11) != -1) {
            temp_a0_6 = *(temp_s1_2->unk84 + (rrmWindowPrivateIndex * 4));
            temp_v0_10 = temp_a0_6->unk14;
            if (temp_v0_10 >= 0) {
                temp_at_3 = *(temp_s1_2->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_v0_10 * 0x24);
                temp_at_3->unkA0 = (s32) temp_a0_6->unk20;
                temp_at_3->unkA4 = (s32) temp_a0_6->unk24;
            }
            var_v0_10 = 0;
        } else {
            perror(&local_0x5f0a0000 - 0xDB0);
            var_v0_10 = 1;
        }
        if (var_v0_10 != 0) {
            dbcDelayedSwapBufferDone(temp_s1_2->unk4);
            temp_a4_5 = ((*(temp_s1_2->unk84 + (rrmWindowPrivateIndex * 4)))->unk14 * 0x24) + arg_sp0.unk-80;
            temp_a4_5->unkA8 = (u16) (temp_a4_5->unkA8 & ~0x10);
        }
        var_s2 -= 4;
        if (temp_s3 != var_s2) {
            goto loop_163;
        }
    }
    return 0;
}

void expDrawCID(void *arg0, void *arg1, s32 arg2) {
    s16 temp_v0;
    s16 var_v0;
    s32 var_a1;
    void *temp_a7;
    void *temp_v1;
    void *var_a6;
    void *var_v1;

    temp_v1 = arg1->unk8;
    if (temp_v1 != NULL) {
        var_a6 = temp_v1 + 8;
        if (temp_v1 != NULL) {
            goto block_2;
        }
        goto block_11;
    }
    var_a6 = arg1;
    if (temp_v1 == NULL) {
block_11:
        var_a1 = 1;
    } else {
block_2:
        var_a1 = temp_v1->unk4;
    }
    temp_a7 = **(arg0->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    temp_a7->unk4052C = 0x100B;
    temp_a7->unk404D4 = 0;
    temp_a7->unk40530 = 0;
    temp_a7->unk4077C = 0;
    temp_a7->unk4077C = 3;
    temp_a7->unk4077C = 1;
    temp_a7->unk40540 = (s32) ((arg2 << 8) | 0xF000);
    if (var_a1 != 0) {
        var_v1 = var_a6;
        if (var_a1 >= 2) {
            temp_a7->unk404C0 = 0;
            var_v0 = var_v1->unk0;
            do {
                temp_a7->unk4077C = (s32) var_v0;
                temp_a7->unk4077C = (s32) var_v1->unk2;
                temp_a7->unk4077C = (s32) var_v1->unk4;
                temp_v0 = var_v1->unk6;
                var_v1 += 8;
                temp_a7->unk4077C = (s32) temp_v0;
                temp_a7->unk407A8 = 0;
                temp_a7->unk404C0 = 0;
                var_v0 = var_v1->unk0;
            } while (var_v1 != ((var_a6 + (var_a1 * 8)) - 8));
            temp_a7->unk4077C = (s32) var_v0;
            temp_a7->unk4077C = (s32) var_v1->unk2;
            temp_a7->unk4077C = (s32) var_v1->unk4;
            temp_a7->unk4077C = (s32) var_v1->unk6;
        } else {
            temp_a7->unk404C0 = 0;
            temp_a7->unk4077C = (s32) var_v1->unk0;
            temp_a7->unk4077C = (s32) var_v1->unk2;
            temp_a7->unk4077C = (s32) var_v1->unk4;
            temp_a7->unk4077C = (s32) var_v1->unk6;
        }
        temp_a7->unk407A8 = 0;
    }
    temp_a7->unk40540 = 0;
}

s32 expNeedCID(void *arg0) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    u32 var_a2;
    void *temp_a1;
    void *temp_a4;

    temp_a4 = arg0->unk34;
    if (temp_a4 != NULL) {
        var_a2 = temp_a4->unk4;
    } else {
        var_a2 = 1;
    }
    if (var_a2 >= 3U) {
        sp20 = (s64) arg0->unk10;
        if (var_a2 >= 5U) {
            return 1;
        }
        temp_a1 = arg0 + 0x2C;
        sp10 = (s64) temp_a1;
        sp20->unk154(sp, temp_a1, 0, temp_a4, arg0);
        sp20->unk16C(sp, sp, sp10);
        if (sp8 != NULL) {
            sp18 = (s64) sp8->unk4;
        } else {
            sp18 = 1;
        }
        sp20->unk160(sp, sp20);
        if (sp18 != 1) {
            return 1;
        }
        return 0;
    }
    return 0;
}
