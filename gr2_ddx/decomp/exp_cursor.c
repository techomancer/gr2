? ErrorF(void *, s32);                              /* extern */
u32 *Xalloc(?);                                     /* extern */
? Xfree(u32 *);                                     /* extern */
s32 ioctl(s32, ?, void *, s32, ?, void *, u16, s16, s16); /* extern */
? memset(u32 *, ?, ?);                              /* extern */
extern s32 errno;
extern s32 expScreenPrivateIndex;
extern ? local_0x5f0a0000;

void expCursorInit(void *arg0) {
    s32 temp_a0;
    s32 temp_v0;
    s32 var_at;
    void *temp_s0;
    void *temp_s3;

    var_at = 4;
    temp_s3 = *(arg0->unk1B4 + (expScreenPrivateIndex * 4));
    temp_s0 = temp_s3->unk0;
    temp_a0 = temp_s3->unk4 & 0xCF;
    temp_s3->unk4 = temp_a0;
    temp_s0->unk6C058 = (s8) temp_a0;
    temp_s0->unk6C054 = 0xA;
    temp_s0->unk6C050 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
loop_2:
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    if (var_at != 0x74) {
        temp_s0->unk6C048 = 0;
        temp_s0->unk6C048 = 0;
        temp_s0->unk6C048 = 0;
        var_at += 0x10;
        temp_s0->unk6C048 = 0;
        goto loop_2;
    }
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C048 = 0;
    temp_s0->unk6C054 = 0;
    temp_s0->unk6C050 = 0x20;
    temp_s0->unk6C040 = 0xA00;
    temp_s0->unk6C054 = 0;
    temp_s0->unk6C050 = 0x26;
    temp_s0->unk6C040 = 0;
    if (ioctl(arg0->unk74->unk64, 0x3A9B, sp, 0xA00, 0x20, arg0, 0U, 0) == -1) {
        ErrorF(&local_0x5f0a0000 - 0x750, errno);
    }
    temp_v0 = temp_s3->unk4 | 0x30;
    temp_s3->unk4 = temp_v0;
    temp_s0->unk6C058 = (s8) temp_v0;
}

s32 expDisplayCursor(void *arg0, void *arg1, u32 *arg4, u32 *arg5, s32 arg6, ? arg_sp0) {
    s8 spC;
    s8 spB;
    s8 spA;
    s8 sp6;
    s8 sp5;
    s8 sp4;
    s32 *temp_t0;
    s32 *temp_t0_2;
    s32 *var_a0_2;
    s32 temp_a3;
    s32 temp_at_5;
    s32 temp_at_6;
    s32 temp_t2;
    s32 temp_t2_3;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_a0_4;
    s32 var_a3;
    s32 var_a6;
    s32 var_at;
    s32 var_at_3;
    s32 var_t3;
    s32 var_t8;
    s32 var_t9;
    s64 temp_a2;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a0_3;
    u16 temp_a0_4;
    u16 temp_a2_3;
    u16 var_a1;
    u16 var_a3_2;
    u16 var_v0;
    u16 var_v1;
    u32 *temp_a1;
    u32 *temp_a2_2;
    u32 *temp_at_8;
    u32 *var_a0_3;
    u32 *var_a4;
    u32 *var_a5;
    u32 *var_v1_2;
    u32 var_a7;
    u32 var_at_2;
    u8 temp_a5;
    void *temp_a1_2;
    void *temp_at;
    void *temp_at_10;
    void *temp_at_2;
    void *temp_at_3;
    void *temp_at_4;
    void *temp_at_7;
    void *temp_at_9;
    void *temp_t2_2;
    void *temp_v0;
    void *var_a0;
    void *var_v0_2;
    void *var_v0_3;

    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    arg_sp0.unk-30 = (s64) saved_reg_s0;
    arg_sp0.unk-38 = (s64) saved_reg_gp;
    temp_at = *(arg0->unk1B4 + (expScreenPrivateIndex * 4));
    arg_sp0.unk-40 = (s64) saved_reg_fp;
    arg_sp0.unk-48 = (s64) saved_reg_s1;
    temp_at_2 = temp_at->unk0;
    if (temp_at->unk354 != arg1) {
        var_a0 = ((arg0->unk0 * 4) + arg1)->unk14;
        var_t8 = 0;
        if (var_a0 != NULL) {
            if ((s32) arg1->unk0->unk8 < 0x11) {
                var_t8 = 0x10;
            }
            var_a7 = 1;
            if (var_a0->unkC == 0) {
                temp_at_3 = var_a0->unk4;
                var_a0->unkC = 1;
                if ((temp_at_3 != NULL) && (temp_at_3->unk6 != 0)) {
                    temp_at_4 = arg1->unk0;
                    temp_a0 = temp_at_4->unkA;
                    temp_a1 = var_a0->unk8;
                    if ((s32) temp_a0 < 0x20) {
                        var_v1 = temp_a0;
                    } else {
                        var_v1 = 0x20;
                    }
                    temp_a0_2 = temp_at_4->unk8;
                    var_v0 = 0x20;
                    if ((s32) temp_a0_2 < 0x20) {
                        var_v0 = temp_a0_2;
                    }
                    if (var_v0 != 0x20) {
                        var_a7 = 0x20 - var_v0;
                        var_t9 = -1 << var_a7;
                    } else {
                        var_t9 = -1;
                    }
                    var_a6 = temp_at_4->unk4;
                    if ((s32) var_v1 > 0) {
                        var_a3 = var_a6;
                        var_a0_2 = temp_at_4->unk0;
                        var_a5 = temp_a1;
                        temp_a2 = ((s32) (var_v0 + 0x1F) >> 5) * 4;
                        if ((s32) var_v1 >= 2) {
                            arg_sp0.unk-50 = temp_a2;
                            var_a5 -= 4;
                            var_a6 = var_t9;
                            temp_v1 = ((var_v1 * 4) + temp_a1) - 4;
                            var_at = *var_a0_2;
loop_42:
                            var_a5->unk4 = (u32) ((u32) (var_at & var_a6) >> var_t8);
                            var_a4 = temp_a2 + var_a3;
                            temp_at_5 = *var_a0_2;
                            var_a5 += 8;
                            var_a0_2 += temp_a2;
                            var_a5->unk7C = (u32) ((u32) ((temp_at_5 ^ *var_a3) & var_a6) >> var_t8);
                            var_at = *var_a0_2;
                            if (var_a5 != temp_v1) {
                                var_a5->unk0 = (u32) (var_at & var_a6) >> var_t8;
                                var_a3 = temp_a2 + var_a4;
                                temp_at_6 = *var_a0_2;
                                var_a0_2 += temp_a2;
                                var_a5->unk80 = (u32) ((u32) ((temp_at_6 ^ *var_a4) & var_a6) >> var_t8);
                                var_at = *var_a0_2;
                                if (var_a5 != (temp_v1 - 4)) {
                                    goto loop_42;
                                }
                            } else {
                                var_a3 = (s32) var_a4;
                                var_a5 -= 4;
                            }
                            var_a7 = (u32) (var_at & var_t9) >> var_t8;
                            var_a5->unk4 = var_a7;
                            var_a5->unk84 = (u32) ((u32) ((*var_a0_2 ^ *var_a3) & var_t9) >> var_t8);
                        } else {
                            var_a5->unk0 = (u32) (*var_a0_2 & var_t9) >> var_t8;
                            var_a7 = (u32) ((*var_a0_2 ^ *var_a3) & var_t9) >> var_t8;
                            var_a5->unk80 = var_a7;
                        }
                    }
                } else {
                    temp_at_7 = arg1->unk0;
                    temp_a0_3 = temp_at_7->unkA;
                    temp_a2_2 = var_a0->unk8;
                    if ((s32) temp_a0_3 < 0x20) {
                        var_a3_2 = temp_a0_3;
                    } else {
                        var_a3_2 = 0x20;
                    }
                    temp_a0_4 = temp_at_7->unk8;
                    var_a7 = (s32) temp_a0_4 < 0x20;
                    var_a1 = 0x20;
                    if (var_a7 != 0) {
                        var_a1 = temp_a0_4;
                    }
                    if (var_a1 != 0x20) {
                        var_a7 = 0x20 - var_a1;
                        var_t3 = -1 << var_a7;
                    } else {
                        var_t3 = -1;
                    }
                    var_a5 = (u32 *) temp_at_7->unk4;
                    var_a6 = (s32) temp_at_7->unk0;
                    if ((s32) var_a3_2 > 0) {
                        var_a4 = (u32 *) var_a6;
                        var_v1_2 = var_a5;
                        var_a0_3 = temp_a2_2;
                        temp_t9 = ((s32) (var_a1 + 0x1F) >> 5) * 4;
                        if ((s32) var_a3_2 >= 2) {
                            var_a6 = (s32) (((var_a3_2 * 4) + temp_a2_2) - 4);
                            var_at_2 = *var_v1_2;
                            do {
                                var_a5 = *var_a4;
                                temp_a3 = var_at_2 & var_t3;
                                *var_a0_3 = (u32) ((s32) var_a5 & temp_a3) >> var_t8;
                                var_a0_3 += 4;
                                temp_at_8 = *var_a4;
                                var_v1_2 += temp_t9;
                                var_a4 += temp_t9;
                                var_a0_3->unk7C = (u32) ((u32) (~temp_at_8 & temp_a3) >> var_t8);
                                var_at_2 = *var_v1_2;
                            } while (var_a0_3 != var_a6);
                            temp_t2 = var_at_2 & var_t3;
                            var_a7 = (u32) (*var_a4 & temp_t2) >> var_t8;
                            var_a0_3->unk0 = var_a7;
                            var_a0_3->unk80 = (u32) ((u32) (~*var_a4 & temp_t2) >> var_t8);
                        } else {
                            var_a7 = *var_v1_2 & var_t3;
                            var_a0_3->unk0 = (u32) (*var_a4 & var_a7) >> var_t8;
                            var_a0_3->unk80 = (u32) ((u32) (~*var_a4 & var_a7) >> var_t8);
                        }
                    }
                }
                arg_sp0.unk-58 = (s64) saved_reg_ra;
                var_a0 = ((arg0->unk0 * 4) + arg1)->unk14;
            }
            arg_sp0.unk-60 = (s64) saved_reg_s2;
            arg_sp0.unk-58 = (s64) saved_reg_ra;
            arg0->unk74->unk8C(var_a0, arg1->unk0->unkC + var_t8, arg1->unk0->unkE, arg0, var_a4, var_a5, var_a6, var_a7);
            goto block_6;
        }
        return 1;
    }
    arg_sp0.unk-1E = 0;
    arg_sp0.unk-20 = 0;
    arg_sp0.unk-60 = (s64) saved_reg_s2;
    temp_a5 = temp_at_2->unk6C058 & 0xCF;
    temp_at_2->unk6C058 = temp_a5;
    temp_at_2->unk6C054 = 0;
    temp_at_2->unk6C050 = 0x26;
    temp_at_2->unk6C040 = 0x300;
    arg_sp0.unk-58 = (s64) saved_reg_ra;
    temp_at_2->unk6C058 = (u8) (temp_at_2->unk6C058 | 0x30);
    if (ioctl(arg0->unk74->unk64, 0x3A9B, &arg_sp0 - 0x20, temp_at_2 + 0x70000, 0x26, (void *) temp_a5, 0x15D468U) == -1) {
        ErrorF(&local_0x5f0a0000 - 0x6D8, errno);
block_6:
    }
    temp_at_9 = ((arg0->unk0 * 4) + arg1)->unk14;
    sp4 = (s8) ((s32) arg1->unk4 >> 8);
    spA = (s8) ((s32) arg1->unkA >> 8);
    sp5 = (s8) ((s32) arg1->unk6 >> 8);
    spB = (s8) ((s32) arg1->unkC >> 8);
    sp6 = (s8) ((s32) arg1->unk8 >> 8);
    spC = (s8) ((s32) arg1->unkE >> 8);
    if ((temp_at_9 != NULL) && (temp_v0 = temp_at_9->unk4, (temp_v0 != NULL))) {
        sp->unk10 = (s8) ((s32) temp_v0->unk0 >> 8);
        sp->unk11 = (s8) ((s32) temp_at_9->unk4->unk2 >> 8);
        sp->unk12 = (s8) ((s32) temp_at_9->unk4->unk4 >> 8);
    } else {
        sp->unk12 = 0;
        sp->unk11 = 0;
        sp->unk10 = 0;
    }
    sp->unkE = 0x1C03;
    sp->unk8 = 0x1C02;
    sp->unk2 = 0x1C01;
    sp->unk0 = 3;
    temp_a1_2 = *(arg0->unk1B4 + (expScreenPrivateIndex * 4));
    temp_t2_2 = temp_a1_2->unk0;
    temp_at_10 = 0x70000 + temp_t2_2;
    temp_t2_2->unk40554 = 0;
    if (!(temp_at_10->unk-5FC0 & 1)) {
        do {
            arg_sp0.unk-24 = 0;
            arg_sp0.unk-24 = 1;
            arg_sp0.unk-24 = 2;
            arg_sp0.unk-24 = 3;
            arg_sp0.unk-24 = 4;
            arg_sp0.unk-24 = 5;
            arg_sp0.unk-24 = 6;
            arg_sp0.unk-24 = 7;
            arg_sp0.unk-24 = 8;
            arg_sp0.unk-24 = 9;
        } while (!(temp_at_10->unk-5FC0 & 1));
    }
    var_v0_2 = sp;
    temp_at_10->unk-5000 = 0;
    do {
        if (!(temp_at_10->unk-3EE4 & 2)) {
            do {

            } while (!(temp_at_10->unk-3EE4 & 2));
        }
        temp_a2_3 = var_v0_2->unk2;
        temp_at_10->unk-3E50 = (s8) temp_a2_3;
        temp_at_10->unk-3E4C = (s8) ((s32) temp_a2_3 >> 8);
        var_a0_4 = (var_v0_2->unk4 << 0x18) | (var_v0_2->unk5 << 0x10) | (var_v0_2->unk6 << 8);
        if (((u32) var_v0_2 < (u32) (sp + 0xC)) && (var_v0_2->unk8 == (temp_a2_3 + 1))) {
            var_a0_4 |= var_v0_2->unkA;
        } else if (temp_a2_3 != 0x1FFF) {
            var_a0_4 |= (temp_a1_2->unk358 + (temp_a2_3 * 4))->unk4 & 0xFF;
        }
        var_v0_2 += 6;
        temp_at_10->unk-3E58 = var_a0_4;
    } while (var_v0_2 != (sp + 0x12));
    var_at_3 = 0;
    if (sp->unk0 > 0) {
        var_v0_3 = sp;
        do {
            temp_t2_3 = var_v0_3->unk2 * 4;
            *(temp_a1_2->unk358 + temp_t2_3) = var_v0_3->unk4 & 0xFF;
            temp_t0 = temp_a1_2->unk358 + temp_t2_3;
            *temp_t0 |= (var_v0_3->unk5 & 0xFF) << 8;
            temp_t0_2 = temp_a1_2->unk358 + temp_t2_3;
            *temp_t0_2 |= (var_v0_3->unk6 & 0xFF) << 0x10;
            var_at_3 += 1;
            var_v0_3 += 6;
        } while (var_at_3 < sp->unk0);
    }
    return 1;
}

void expInstallCursor(void *arg0, s16 arg1, s16 arg2, void *arg3) {
    s32 temp_a0;
    u16 *var_v0;
    u16 temp_a6;
    u16 temp_a7;
    u16 temp_at;
    u16 var_at;
    void *temp_t0;

    var_v0 = arg0->unk8;
    temp_a0 = var_v0 + 0xF8;
    temp_t0 = **(arg3->unk1B4 + (expScreenPrivateIndex * 4));
    temp_t0->unk6C054 = 0xA;
    temp_t0->unk6C050 = 0;
    var_at = *var_v0;
    do {
        temp_t0->unk6C048 = var_at;
        temp_t0->unk6C048 = (u16) var_v0->unk2;
        temp_t0->unk6C048 = (u16) var_v0->unk4;
        temp_at = var_v0->unk6;
        var_v0 += 8;
        temp_t0->unk6C048 = temp_at;
        var_at = var_v0->unk0;
    } while (var_v0 != temp_a0);
    temp_t0->unk6C048 = var_at;
    temp_t0->unk6C048 = (u16) var_v0->unk2;
    temp_a7 = var_v0->unk4;
    temp_t0->unk6C048 = temp_a7;
    temp_a6 = var_v0->unk6;
    temp_t0->unk6C048 = temp_a6;
    temp_t0->unk6C054 = 0;
    temp_t0->unk6C050 = 0x26;
    temp_t0->unk6C040 = 0;
    temp_t0->unk6C054 = 0;
    temp_t0->unk6C050 = 0x20;
    temp_t0->unk6C040 = 0xA00;
    if (ioctl(arg3->unk74->unk64, 0x3A9B, sp, 0x20, 0x26, (void *) temp_a6, temp_a7, arg1, arg2) == -1) {
        ErrorF(&local_0x5f0a0000 - 0x750, errno);
    }
}

s32 expRealizeCursor(s32 *arg0, void **arg1) {
    s32 *var_a4;
    s32 *var_v1_2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_t3;
    s32 var_at;
    s32 var_s2;
    s32 var_t1;
    u16 temp_a0;
    u16 temp_v1;
    u16 var_a1;
    u16 var_v1;
    u32 *temp_v0;
    u32 *temp_v0_2;
    u32 *var_a0;
    void *temp_v0_3;

    var_s2 = 0;
    temp_v0 = Xalloc(0x10);
    ((*arg0 * 4) + arg1)->unk14 = temp_v0;
    if (temp_v0 != NULL) {
        temp_v0_2 = Xalloc(0x100);
        temp_v0->unk8 = temp_v0_2;
        if (temp_v0_2 != NULL) {
            memset(temp_v0_2, 0, 0x100);
            temp_v0->unk0 = 0;
            temp_v0->unk4 = 0;
            temp_v0->unkC = 1;
            temp_v0_3 = *arg1;
            temp_v1 = temp_v0_3->unkA;
            var_a1 = 0x20;
            if ((s32) temp_v1 < 0x20) {
                var_a1 = temp_v1;
            }
            temp_a0 = temp_v0_3->unk8;
            if ((s32) temp_a0 < 0x20) {
                var_v1 = temp_a0;
            } else {
                var_v1 = 0x20;
            }
            if ((s32) var_v1 < 0x11) {
                var_s2 = 0x10;
            }
            if (var_v1 != 0x20) {
                var_t1 = -1 << (0x20 - var_v1);
            } else {
                var_t1 = -1;
            }
            var_a0 = temp_v0_2;
            if ((s32) var_a1 > 0) {
                temp_t3 = ((s32) (temp_a0 + 0x1F) >> 5) * 4;
                var_v1_2 = temp_v0_3->unk4;
                var_a4 = temp_v0_3->unk0;
                if ((s32) var_a1 >= 2) {
                    var_at = *var_v1_2;
                    do {
                        temp_a3 = var_at & var_t1;
                        *var_a0 = (u32) (*var_a4 & temp_a3) >> var_s2;
                        var_a0 += 4;
                        temp_at = *var_a4;
                        var_v1_2 += temp_t3;
                        var_a4 += temp_t3;
                        var_a0->unk7C = (u32) ((u32) (~temp_at & temp_a3) >> var_s2);
                        var_at = *var_v1_2;
                    } while (var_a0 != ((temp_v0_2 + (var_a1 * 4)) - 4));
                    temp_a6 = var_at & var_t1;
                    var_a0->unk0 = (u32) (*var_a4 & temp_a6) >> var_s2;
                    var_a0->unk80 = (u32) ((u32) (~*var_a4 & temp_a6) >> var_s2);
                } else {
                    temp_a5 = *var_v1_2 & var_t1;
                    var_a0->unk0 = (u32) (*var_a4 & temp_a5) >> var_s2;
                    var_a0->unk80 = (u32) ((u32) (~*var_a4 & temp_a5) >> var_s2);
                }
            }
            return 1;
        }
        Xfree(temp_v0);
        ErrorF(&local_0x5f0a0000 - 0x780);
        return 0;
    }
    ErrorF(&local_0x5f0a0000 - 0x780);
    return 0;
}

void expCursorOn(s32 arg0, void *arg1) {
    u8 temp_a4;
    u8 var_a4;
    void *temp_a5;
    void *temp_a6;

    temp_a6 = *(arg1->unk1B4 + (expScreenPrivateIndex * 4));
    temp_a5 = temp_a6->unk0;
    temp_a4 = temp_a5->unk6C058;
    if (arg0 != 0) {
        var_a4 = temp_a4 | 0x30;
    } else {
        var_a4 = temp_a4 & 0xCF;
    }
    temp_a5->unk6C058 = var_a4;
    temp_a6->unk4 = (s32) var_a4;
}

void expDummySetCursorColor(void) {
    ErrorF(&local_0x5f0a0000 - 0x710, 0x15D5EC);
}
