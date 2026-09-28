? ErrorF(void *, s32, void *, s16, u16, s32, s32 *); /* extern */
s32 FindFreeID(void *, void *, s32, u16, void *, void *, void *, void *); /* extern */
? StealID(void *, ?, ?);                            /* extern */
? expStippledSpans(s32);                            /* extern */
s32 ioctl(s32, ?, void *, s32, void *);             /* extern */
s32 nfbCreateHWColormap();                          /* extern */
extern ? ddxActiveScreens;
extern void *errno;
extern s32 expScreenPrivateIndex;
extern u8 gl_blue_map__BIB;
extern u8 gl_green_map__AIB;
extern ? gl_red_map__PHB;
extern ? local_0x5f0a0000;
extern s32 rrmScreenPrivateIndex;
extern s32 rrmWindowPrivateIndex;
extern s32 vcScreenPrivateIndex;

void expInstallNormalMap(void *arg0, ? arg_sp0) {
    s16 *temp_sp;
    s16 *var_a0;
    s16 *var_a2_3;
    s16 *var_a3;
    s16 *var_a3_2;
    s16 temp_a3;
    s16 temp_t3;
    s16 var_a4_2;
    s16 var_a6;
    s16 var_a7_2;
    s32 *temp_a1_2;
    s32 *temp_a1_3;
    s32 *temp_a7;
    s32 temp_a1;
    s32 temp_t1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0_2;
    s32 var_a3_3;
    s32 var_a4;
    s32 var_a4_3;
    s32 var_a7;
    s64 temp_t1_2;
    u16 temp_a5;
    u16 var_a5;
    void *temp_a2;
    void *temp_a7_2;
    void *temp_at;
    void *var_a2;
    void *var_a2_2;

    var_a6 = 0;
    temp_a2 = arg0->unk0;
    temp_a3 = temp_a2->unk4;
    arg_sp0.unk-30 = (s64) saved_reg_fp;
    arg_sp0.unk-28 = (s64) saved_reg_gp;
    if (temp_a3 != 4) {
        var_a5 = temp_a2->unk8;
        temp_t1 = (temp_a3 & 1) == 0;
        temp_a7 = arg0->unk44;
        temp_a1 = *temp_a7;
        temp_sp = sp - (((var_a5 * 6) + 0x11) & ~0xF);
        temp_t3 = (arg0->unkC->unk74->unk74 + (temp_a1 * 0x1C))->unk18 << 8;
        if (temp_sp != NULL) {
            if ((temp_a7 == NULL) || (var_a4 = 0, (temp_t1 != 0))) {
                var_a7 = 0;
                if ((s32) var_a5 > 0) {
                    var_a4_2 = temp_t3;
                    var_a3 = temp_sp;
                    var_a2 = arg0->unk38;
loop_9:
                    var_a7 += 1;
                    if (var_a2->unkC != 0) {
                        goto block_10;
                    }
                    if (temp_t1 != 0) {
block_10:
                        var_a3->unk2 = var_a4_2;
                        var_a6 += 1;
                        if (var_a2->unk10 == 0) {
                            var_a3->unk4 = (s8) ((s32) (u16) var_a2->unk0 >> 8);
                            var_a3->unk5 = (s8) ((s32) var_a2->unk2 >> 8);
                            var_a3->unk6 = (s8) ((s32) (u16) var_a2->unk4 >> 8);
                        } else {
                            var_a3->unk4 = (s8) ((s32) *var_a2->unk0 >> 8);
                            var_a3->unk5 = (s8) ((s32) *var_a2->unk4 >> 8);
                            var_a3->unk6 = (s8) ((s32) *var_a2->unk8 >> 8);
                        }
                        var_a3 += 6;
                        var_a5 = arg0->unk0->unk8;
                    }
                    var_a2 += 0x14;
                    var_a4_2 += 1;
                    if (var_a7 < (s32) var_a5) {
                        goto loop_9;
                    }
                }
            } else if ((s32) var_a5 > 0) {
                var_a3_2 = temp_sp;
                var_a7_2 = temp_t3;
                var_a2_2 = arg0->unk38;
loop_38:
                if ((var_a2_2->unkC != 0) && (*(((var_a4 >> 5) * 4) + (temp_a7 + 4)) & (1 << var_a4))) {
                    var_a3_2->unk2 = var_a7_2;
                    var_a6 += 1;
                    if (var_a2_2->unk10 == 0) {
                        var_a3_2->unk4 = (s8) ((s32) (u16) var_a2_2->unk0 >> 8);
                        var_a3_2->unk5 = (s8) ((s32) var_a2_2->unk2 >> 8);
                        var_a3_2->unk6 = (s8) ((s32) (u16) var_a2_2->unk4 >> 8);
                    } else {
                        var_a3_2->unk4 = (s8) ((s32) *var_a2_2->unk0 >> 8);
                        var_a3_2->unk5 = (s8) ((s32) *var_a2_2->unk4 >> 8);
                        var_a3_2->unk6 = (s8) ((s32) *var_a2_2->unk8 >> 8);
                    }
                    var_a3_2 += 6;
                    var_a5 = arg0->unk0->unk8;
                }
                var_a2_2 += 0x14;
                var_a4 += 1;
                var_a7_2 += 1;
                if (var_a4 < (s32) var_a5) {
                    goto loop_38;
                }
            }
            if (var_a6 != 0) {
                *temp_sp = var_a6;
                temp_a7_2 = *(arg0->unkC->unk1B4 + (expScreenPrivateIndex * 4));
                temp_at = temp_a7_2->unk0;
                temp_at->unk40554 = 0;
                var_a0 = temp_sp;
                if (!(temp_at->unk6A040 & 1)) {
                    do {
                        arg_sp0.unk-1C = 0;
                        arg_sp0.unk-1C = 1;
                        arg_sp0.unk-1C = 2;
                        arg_sp0.unk-1C = 3;
                        arg_sp0.unk-1C = 4;
                        arg_sp0.unk-1C = 5;
                        arg_sp0.unk-1C = 6;
                        arg_sp0.unk-1C = 7;
                        arg_sp0.unk-1C = 8;
                        arg_sp0.unk-1C = 9;
                    } while (!(temp_at->unk6A040 & 1));
                    var_a0 = temp_sp;
                }
                temp_at->unk6B000 = 0;
                temp_t1_2 = (s64) ((s64) var_a6 << 0x30) >> 0x30;
                if (temp_t1_2 > 0) {
                    var_a4_3 = 1;
loop_24:
                    temp_v0 = var_a4_3 < temp_t1_2;
                    var_a4_3 += 1;
                    if (!(temp_at->unk6C11C & 2)) {
                        do {

                        } while (!(temp_at->unk6C11C & 2));
                    }
                    temp_a5 = var_a0->unk2;
                    temp_at->unk6C1B0 = (s8) temp_a5;
                    temp_at->unk6C1B4 = (s8) ((s32) temp_a5 >> 8);
                    var_a3_3 = (var_a0->unk4 << 0x18) | (var_a0->unk5 << 0x10) | (var_a0->unk6 << 8);
                    if ((temp_v0 != 0) && (var_a0->unk8 == (temp_a5 + 1))) {
                        var_a3_3 |= var_a0->unkA;
                    } else if (temp_a5 != 0x1FFF) {
                        var_a3_3 |= (temp_a7_2->unk358 + (temp_a5 * 4))->unk4 & 0xFF;
                    }
                    var_a0 += 6;
                    temp_at->unk6C1A8 = var_a3_3;
                    if (var_a0 != (temp_sp + (temp_t1_2 * 6))) {
                        goto loop_24;
                    }
                }
                var_a0_2 = 0;
                if (*temp_sp > 0) {
                    var_a2_3 = temp_sp;
                    do {
                        temp_v0_2 = var_a2_3->unk2 * 4;
                        *(temp_a7_2->unk358 + temp_v0_2) = var_a2_3->unk4 & 0xFF;
                        temp_a1_2 = temp_a7_2->unk358 + temp_v0_2;
                        *temp_a1_2 |= (var_a2_3->unk5 & 0xFF) << 8;
                        temp_a1_3 = temp_a7_2->unk358 + temp_v0_2;
                        *temp_a1_3 |= (var_a2_3->unk6 & 0xFF) << 0x10;
                        var_a0_2 += 1;
                        var_a2_3 += 6;
                    } while (var_a0_2 < *temp_sp);
                }
            }
            return;
        }
        arg_sp0.unk-38 = (s64) saved_reg_ra;
        ErrorF(&local_0x5f0a0000 - 0xEA8, temp_a1, temp_a2, temp_a3, var_a5, 0, temp_a7);
    }
}

void expInstallPupMap(void *arg0) {
    s32 sp68;
    s16 sp0;
    s16 var_ra;
    s16 var_s0;
    s16 var_t1;
    s16 var_t8;
    s16 var_t9;
    s32 *temp_a0;
    s32 *temp_a0_2;
    s32 *temp_a1_3;
    s32 *temp_a4_2;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_3;
    s32 temp_a6;
    s32 temp_s5;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_s1;
    s32 var_t0;
    s32 var_t3;
    s64 temp_t0;
    u16 temp_a7;
    u16 var_a2;
    u16 var_a6;
    u16 var_v0;
    void *temp_a1;
    void *temp_a3;
    void *temp_s3;
    void *temp_t2;
    void *var_a2_2;
    void *var_a5;
    void *var_a5_2;
    void *var_t2;

    var_t1 = 0;
    var_t8 = 0x1C4D;
    var_t2 = sp;
    temp_s3 = arg0->unk0;
    var_a2 = temp_s3->unk8;
    temp_s5 = expScreenPrivateIndex * 4;
    if ((s32) var_a2 >= 2) {
        var_t9 = 0x1C45;
        var_a5 = arg0->unk38 + 0x14;
        var_t3 = 0;
        var_s1 = 1;
        var_s0 = 0x1C49;
        var_ra = 0x1C41;
loop_8:
        temp_a3 = var_t3 + *(arg0->unkC->unk1B4 + temp_s5);
        var_s1 += 1;
        if (var_a5->unkC != 0) {
            goto block_9;
        }
        if (!(temp_s3->unk4 & 1)) {
block_9:
            if (var_a5->unk10 == 0) {
                var_a6 = var_a5->unk0;
                var_t0 = (s32) var_a5->unk4 >> 8;
                var_a7 = (s32) var_a5->unk2 >> 8;
            } else {
                var_a6 = *(u16 *) var_a5->unk0;
                var_t0 = (s32) *var_a5->unk8 >> 8;
                var_a7 = (s32) *(u16 *) var_a5->unk4 >> 8;
            }
            temp_a6 = (s32) var_a6 >> 8;
            temp_a2 = (var_t0 << 0x10) | ((var_a7 << 8) | temp_a6);
            if (temp_a3->unk14 != temp_a2) {
                var_t2 += 6;
                var_t1 += 1;
                temp_a3->unk14 = temp_a2;
                var_t2->unk0 = (s8) var_t0;
                var_t2->unk-1 = (s8) var_a7;
                var_t2->unk-2 = (s8) temp_a6;
                var_t2->unk-4 = var_ra;
            }
            if (temp_a3->unk24 != temp_a2) {
                var_t2 += 6;
                var_t1 += 1;
                temp_a3->unk24 = temp_a2;
                var_t2->unk0 = (s8) var_t0;
                var_t2->unk-1 = (s8) var_a7;
                var_t2->unk-2 = (s8) temp_a6;
                var_t2->unk-4 = var_t9;
            }
            if (temp_a3->unk34 != temp_a2) {
                var_t2 += 6;
                var_t1 += 1;
                temp_a3->unk34 = temp_a2;
                var_t2->unk0 = (s8) var_t0;
                var_t2->unk-1 = (s8) var_a7;
                var_t2->unk-2 = (s8) temp_a6;
                var_t2->unk-4 = var_s0;
            }
            if (temp_a3->unk44 != temp_a2) {
                var_t2 += 6;
                var_t1 += 1;
                temp_a3->unk44 = temp_a2;
                var_t2->unk0 = (s8) var_t0;
                var_t2->unk-1 = (s8) var_a7;
                var_t2->unk-2 = (s8) temp_a6;
                var_t2->unk-4 = var_t8;
            }
            var_a2 = arg0->unk0->unk8;
        }
        var_a5 += 0x14;
        var_t3 += 4;
        var_ra += 1;
        var_t9 += 1;
        var_s0 += 1;
        var_t8 += 1;
        if (var_s1 < (s32) var_a2) {
            goto loop_8;
        }
    }
    if (var_t1 != 0) {
        sp0 = var_t1;
        temp_t2 = *(arg0->unkC->unk1B4 + temp_s5);
        temp_a1 = temp_t2->unk0;
        temp_a1->unk40554 = 0;
        if (!(temp_a1->unk6A040 & 1)) {
            do {
                sp68 = 0;
                sp68 = 1;
                sp68 = 2;
                sp68 = 3;
                sp68 = 4;
                sp68 = 5;
                sp68 = 6;
                sp68 = 7;
                sp68 = 8;
                sp68 = 9;
            } while (!(temp_a1->unk6A040 & 1));
        }
        var_a5_2 = sp;
        temp_a1->unk6B000 = 0;
        temp_t0 = (s64) ((s64) var_t1 << 0x30) >> 0x30;
        if (temp_t0 > 0) {
            var_a6_2 = 1;
loop_30:
            if (!(temp_a1->unk6C11C & 2)) {
                do {

                } while (!(temp_a1->unk6C11C & 2));
            }
            temp_a7 = var_a5_2->unk2;
            temp_a4 = var_a6_2 < temp_t0;
            var_a6_2 += 1;
            temp_a1->unk6C1B0 = (s8) temp_a7;
            temp_a1->unk6C1B4 = (s8) ((s32) temp_a7 >> 8);
            var_a0 = (var_a5_2->unk4 << 0x18) | (var_a5_2->unk5 << 0x10) | (var_a5_2->unk6 << 8);
            if ((temp_a4 != 0) && (var_a5_2->unk8 == (temp_a7 + 1))) {
                var_a0 |= var_a5_2->unkA;
            } else if (temp_a7 != 0x1FFF) {
                var_a0 |= (temp_t2->unk358 + (temp_a7 * 4))->unk4 & 0xFF;
            }
            var_a5_2 += 6;
            temp_a1->unk6C1A8 = var_a0;
            if (var_a5_2 != ((temp_t0 * 6) + sp)) {
                goto loop_30;
            }
        }
        var_a2_2 = sp;
        if (sp0 > 0) {
            if (sp0 >= 2) {
                var_v0 = sp->unk2;
                do {
                    temp_a1_2 = var_v0 * 4;
                    *(temp_t2->unk358 + temp_a1_2) = var_a2_2->unk4 & 0xFF;
                    temp_a0 = temp_t2->unk358 + temp_a1_2;
                    *temp_a0 |= (var_a2_2->unk5 & 0xFF) << 8;
                    var_a2_2 += 6;
                    temp_a0_2 = temp_t2->unk358 + temp_a1_2;
                    *temp_a0_2 |= (var_a2_2->unk0 & 0xFF) << 0x10;
                    var_v0 = var_a2_2->unk2;
                } while (var_a2_2 != ((((sp0 - 1 + 1) * 6) + sp) - 6));
                temp_v0 = var_v0 * 4;
                *(temp_t2->unk358 + temp_v0) = var_a2_2->unk4 & 0xFF;
                temp_a1_3 = temp_t2->unk358 + temp_v0;
                *temp_a1_3 |= (var_a2_2->unk5 & 0xFF) << 8;
                temp_a4_2 = temp_t2->unk358 + temp_v0;
                *temp_a4_2 |= (var_a2_2->unk6 & 0xFF) << 0x10;
            } else {
                temp_a4_3 = sp->unk2 * 4;
                *(temp_t2->unk358 + temp_a4_3) = sp->unk4 & 0xFF;
                temp_v1 = temp_t2->unk358 + temp_a4_3;
                *temp_v1 |= (sp->unk5 & 0xFF) << 8;
                temp_v1_2 = temp_t2->unk358 + temp_a4_3;
                *temp_v1_2 |= (sp->unk6 & 0xFF) << 0x10;
            }
        }
    }
}

void expInstallOverlayMap(void *arg0) {
    s32 sp68;
    s16 sp0;
    s16 var_ra;
    s32 *temp_a0;
    s32 *temp_a0_2;
    s32 *temp_a1_3;
    s32 *temp_a4;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 temp_a1_2;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_s2;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7;
    s64 temp_t0_2;
    u16 temp_a7;
    u16 var_a5;
    u16 var_t0;
    u16 var_v0;
    void *temp_a1;
    void *temp_t0;
    void *temp_t2_2;
    void *temp_t3;
    void *var_a0;
    void *var_a2;
    void *var_a2_2;
    void *var_t9;

    var_a3 = 0;
    var_ra = 0;
    var_t9 = sp;
    temp_t0 = arg0->unk0;
    var_t0 = temp_t0->unk8;
    temp_s2 = expScreenPrivateIndex * 4;
    if ((s32) var_t0 > 0) {
        var_a2 = arg0->unk38;
loop_4:
        temp_t1 = var_a3 * 4;
        if (var_a2->unkC != 0) {
            goto block_5;
        }
        if (!(temp_t0->unk4 & 1)) {
block_5:
            temp_t3 = (temp_t1 * 4) + *(arg0->unkC->unk1B4 + temp_s2);
            if (var_a2->unk10 != 0) {
                var_a5 = *var_a2->unk0;
                var_a7 = (s32) *var_a2->unk8 >> 8;
                var_a6 = (s32) *var_a2->unk4 >> 8;
            } else {
                var_a5 = (u16) var_a2->unk0;
                var_a7 = (s32) (u16) var_a2->unk4 >> 8;
                var_a6 = (s32) var_a2->unk2 >> 8;
            }
            temp_a5 = (s32) var_a5 >> 8;
            temp_t2 = (var_a7 << 0x10) | ((var_a6 << 8) | temp_a5);
            if (temp_t3->unk10 != temp_t2) {
                var_t9 += 6;
                var_ra += 1;
                temp_t3->unk10 = temp_t2;
                var_t9->unk0 = (s8) var_a7;
                var_t9->unk-1 = (s8) var_a6;
                var_t9->unk-2 = (s8) temp_a5;
                var_t9->unk-4 = (s16) (temp_t1 + 0x1C40);
                var_t0 = arg0->unk0->unk8;
            }
        }
        var_a3 += 1;
        var_a2 += 0x14;
        if (var_a3 < (s32) var_t0) {
            goto loop_4;
        }
    }
    if (var_ra != 0) {
        sp0 = var_ra;
        temp_t2_2 = *(arg0->unkC->unk1B4 + temp_s2);
        temp_a1 = temp_t2_2->unk0;
        temp_a1->unk40554 = 0;
        var_a0 = sp;
        if (!(temp_a1->unk6A040 & 1)) {
            do {
                sp68 = 0;
                sp68 = 1;
                sp68 = 2;
                sp68 = 3;
                sp68 = 4;
                sp68 = 5;
                sp68 = 6;
                sp68 = 7;
                sp68 = 8;
                sp68 = 9;
            } while (!(temp_a1->unk6A040 & 1));
            var_a0 = sp;
        }
        temp_a1->unk6B000 = 0;
        temp_t0_2 = (s64) ((s64) var_ra << 0x30) >> 0x30;
        if (temp_t0_2 > 0) {
            var_a6_2 = 1;
loop_20:
            temp_v1 = var_a6_2 < temp_t0_2;
            var_a6_2 += 1;
            if (!(temp_a1->unk6C11C & 2)) {
                do {

                } while (!(temp_a1->unk6C11C & 2));
            }
            temp_a7 = var_a0->unk2;
            temp_a1->unk6C1B0 = (s8) temp_a7;
            temp_a1->unk6C1B4 = (s8) ((s32) temp_a7 >> 8);
            var_a5_2 = (var_a0->unk4 << 0x18) | (var_a0->unk5 << 0x10) | (var_a0->unk6 << 8);
            if ((temp_v1 != 0) && (var_a0->unk8 == (temp_a7 + 1))) {
                var_a5_2 |= var_a0->unkA;
            } else if (temp_a7 != 0x1FFF) {
                var_a5_2 |= (temp_t2_2->unk358 + (temp_a7 * 4))->unk4 & 0xFF;
            }
            var_a0 += 6;
            temp_a1->unk6C1A8 = var_a5_2;
            if (var_a0 != ((temp_t0_2 * 6) + sp)) {
                goto loop_20;
            }
        }
        var_a2_2 = sp;
        if (sp0 > 0) {
            if (sp0 >= 2) {
                var_v0 = sp->unk2;
                do {
                    temp_a1_2 = var_v0 * 4;
                    *(temp_t2_2->unk358 + temp_a1_2) = var_a2_2->unk4 & 0xFF;
                    temp_a0 = temp_t2_2->unk358 + temp_a1_2;
                    *temp_a0 |= (var_a2_2->unk5 & 0xFF) << 8;
                    var_a2_2 += 6;
                    temp_a0_2 = temp_t2_2->unk358 + temp_a1_2;
                    *temp_a0_2 |= (var_a2_2->unk0 & 0xFF) << 0x10;
                    var_v0 = var_a2_2->unk2;
                } while (var_a2_2 != ((((sp0 - 1 + 1) * 6) + sp) - 6));
                temp_v0 = var_v0 * 4;
                *(temp_t2_2->unk358 + temp_v0) = var_a2_2->unk4 & 0xFF;
                temp_a1_3 = temp_t2_2->unk358 + temp_v0;
                *temp_a1_3 |= (var_a2_2->unk5 & 0xFF) << 8;
                temp_a4 = temp_t2_2->unk358 + temp_v0;
                *temp_a4 |= (var_a2_2->unk6 & 0xFF) << 0x10;
            } else {
                temp_a4_2 = sp->unk2 * 4;
                *(temp_t2_2->unk358 + temp_a4_2) = sp->unk4 & 0xFF;
                temp_v1_2 = temp_t2_2->unk358 + temp_a4_2;
                *temp_v1_2 |= (sp->unk5 & 0xFF) << 8;
                temp_v1_3 = temp_t2_2->unk358 + temp_a4_2;
                *temp_v1_3 |= (sp->unk6 & 0xFF) << 0x10;
            }
        }
    }
}

void expInstallOverlay4Map(void *arg0) {
    s32 sp68;
    s16 sp0;
    s16 var_a5;
    s16 var_s0;
    s32 *temp_a0;
    s32 *temp_a0_2;
    s32 *temp_a1_3;
    s32 *temp_a4;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 temp_a1_2;
    s32 temp_a4_2;
    s32 temp_s2;
    s32 temp_t0;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_t1;
    s64 temp_t0_2;
    u16 temp_a7;
    u16 var_t0;
    u16 var_t2;
    u16 var_v0;
    void *temp_a1;
    void *temp_t2;
    void *temp_t2_2;
    void *temp_t3;
    void *var_a0;
    void *var_a2;
    void *var_a2_2;
    void *var_t9;

    var_t1 = 0;
    var_a5 = 0x1C40;
    var_s0 = 0;
    var_t9 = sp;
    temp_t2 = arg0->unk0;
    var_t2 = temp_t2->unk8;
    temp_s2 = expScreenPrivateIndex * 4;
    if ((s32) var_t2 > 0) {
        var_a2 = arg0->unk38;
        var_a3 = 0;
loop_4:
        temp_t3 = var_a3 + *(arg0->unkC->unk1B4 + temp_s2);
        var_t1 += 1;
        if (var_a2->unkC != 0) {
            goto block_5;
        }
        if (!(temp_t2->unk4 & 1)) {
block_5:
            if (var_a2->unk10 == 0) {
                var_t0 = var_a2->unk0;
                var_a7 = (s32) var_a2->unk4 >> 8;
                var_a6 = (s32) var_a2->unk2 >> 8;
            } else {
                var_t0 = *(u16 *) var_a2->unk0;
                var_a7 = (s32) *var_a2->unk8 >> 8;
                var_a6 = (s32) *(u16 *) var_a2->unk4 >> 8;
            }
            temp_t0 = (s32) var_t0 >> 8;
            temp_t8 = (var_a7 << 0x10) | ((var_a6 << 8) | temp_t0);
            if (temp_t3->unk10 != temp_t8) {
                var_t9 += 6;
                var_s0 += 1;
                temp_t3->unk10 = temp_t8;
                var_t9->unk0 = (s8) var_a7;
                var_t9->unk-1 = (s8) var_a6;
                var_t9->unk-2 = (s8) temp_t0;
                var_t9->unk-4 = var_a5;
                var_t2 = arg0->unk0->unk8;
            }
        }
        var_a2 += 0x14;
        var_a3 += 4;
        var_a5 += 1;
        if (var_t1 < (s32) var_t2) {
            goto loop_4;
        }
    }
    if (var_s0 != 0) {
        sp0 = var_s0;
        temp_t2_2 = *(arg0->unkC->unk1B4 + temp_s2);
        temp_a1 = temp_t2_2->unk0;
        temp_a1->unk40554 = 0;
        var_a0 = sp;
        if (!(temp_a1->unk6A040 & 1)) {
            do {
                sp68 = 0;
                sp68 = 1;
                sp68 = 2;
                sp68 = 3;
                sp68 = 4;
                sp68 = 5;
                sp68 = 6;
                sp68 = 7;
                sp68 = 8;
                sp68 = 9;
            } while (!(temp_a1->unk6A040 & 1));
            var_a0 = sp;
        }
        temp_a1->unk6B000 = 0;
        temp_t0_2 = (s64) ((s64) var_s0 << 0x30) >> 0x30;
        if (temp_t0_2 > 0) {
            var_a6_2 = 1;
loop_22:
            temp_v1 = var_a6_2 < temp_t0_2;
            var_a6_2 += 1;
            if (!(temp_a1->unk6C11C & 2)) {
                do {

                } while (!(temp_a1->unk6C11C & 2));
            }
            temp_a7 = var_a0->unk2;
            temp_a1->unk6C1B0 = (s8) temp_a7;
            temp_a1->unk6C1B4 = (s8) ((s32) temp_a7 >> 8);
            var_a5_2 = (var_a0->unk4 << 0x18) | (var_a0->unk5 << 0x10) | (var_a0->unk6 << 8);
            if ((temp_v1 != 0) && (var_a0->unk8 == (temp_a7 + 1))) {
                var_a5_2 |= var_a0->unkA;
            } else if (temp_a7 != 0x1FFF) {
                var_a5_2 |= (temp_t2_2->unk358 + (temp_a7 * 4))->unk4 & 0xFF;
            }
            var_a0 += 6;
            temp_a1->unk6C1A8 = var_a5_2;
            if (var_a0 != ((temp_t0_2 * 6) + sp)) {
                goto loop_22;
            }
        }
        var_a2_2 = sp;
        if (sp0 > 0) {
            if (sp0 >= 2) {
                var_v0 = sp->unk2;
                do {
                    temp_a1_2 = var_v0 * 4;
                    *(temp_t2_2->unk358 + temp_a1_2) = var_a2_2->unk4 & 0xFF;
                    temp_a0 = temp_t2_2->unk358 + temp_a1_2;
                    *temp_a0 |= (var_a2_2->unk5 & 0xFF) << 8;
                    var_a2_2 += 6;
                    temp_a0_2 = temp_t2_2->unk358 + temp_a1_2;
                    *temp_a0_2 |= (var_a2_2->unk0 & 0xFF) << 0x10;
                    var_v0 = var_a2_2->unk2;
                } while (var_a2_2 != ((((sp0 - 1 + 1) * 6) + sp) - 6));
                temp_v0 = var_v0 * 4;
                *(temp_t2_2->unk358 + temp_v0) = var_a2_2->unk4 & 0xFF;
                temp_a1_3 = temp_t2_2->unk358 + temp_v0;
                *temp_a1_3 |= (var_a2_2->unk5 & 0xFF) << 8;
                temp_a4 = temp_t2_2->unk358 + temp_v0;
                *temp_a4 |= (var_a2_2->unk6 & 0xFF) << 0x10;
            } else {
                temp_a4_2 = sp->unk2 * 4;
                *(temp_t2_2->unk358 + temp_a4_2) = sp->unk4 & 0xFF;
                temp_v1_2 = temp_t2_2->unk358 + temp_a4_2;
                *temp_v1_2 |= (sp->unk5 & 0xFF) << 8;
                temp_v1_3 = temp_t2_2->unk358 + temp_a4_2;
                *temp_v1_3 |= (sp->unk6 & 0xFF) << 0x10;
            }
        }
    }
}

void expInstall24Map(void *arg0) {
    s64 sp18;
    s16 var_a2;
    s32 temp_a3;
    s32 var_a3;
    s32 var_at;
    s64 var_ra;
    u8 temp_at;
    u8 temp_at_2;
    u8 temp_at_3;
    u8 temp_t2;
    u8 temp_t3;
    u8 temp_t8;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a4;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t1;
    void *var_a2_2;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_a3 = 0;
    var_a2 = arg0->unk4;
    if (var_a2 == 5) {
        temp_t1 = arg0->unkC;
        temp_t0 = *(temp_t1->unk1B4 + (expScreenPrivateIndex * 4));
        var_at = arg0->unk38;
        temp_t0_2 = temp_t0 + 0x50;
        var_a2_2 = temp_t0_2;
        var_v0 = temp_t0->unk358 + 0x83FC;
        do {
            temp_at = (var_at + var_a3)->unk13ED;
            var_a2_2 -= 1;
            var_a2_2->unk100 = temp_at;
            temp_at_2 = (arg0->unk3C + var_a3)->unk13EF;
            var_a2_2->unk200 = temp_at_2;
            temp_at_3 = (arg0->unk40 + var_a3)->unk13F1;
            var_v0 -= 4;
            var_a3 -= 0x14;
            var_a2_2->unk300 = temp_at_3;
            var_v0->unk4 = (s32) ((temp_at & 0xFF) | ((temp_at_2 & 0xFF) << 8) | ((temp_at_3 & 0xFF) << 0x10));
            var_at = arg0->unk38;
        } while (var_a3 != -0x13EC);
        temp_t2 = (var_at + var_a3)->unk13ED;
        var_a2_2->unkFF = temp_t2;
        temp_t8 = (arg0->unk3C + var_a3)->unk13EF;
        var_a2_2->unk1FF = temp_t8;
        temp_t3 = (arg0->unk40 + var_a3)->unk13F1;
        var_a2_2->unk2FF = temp_t3;
        var_v0->unk0 = (s32) ((temp_t2 & 0xFF) | ((temp_t8 & 0xFF) << 8) | ((temp_t3 & 0xFF) << 0x10));
        var_ra = sp18;
        if (ioctl(temp_t1->unk74->unk64, 0x3A9E, temp_t0_2, var_a3, (void *)-0x13EC) != -1) {

        } else {
            ErrorF(&local_0x5f0a0000 - 0xF38);
            var_ra = sp18;
        }
        var_a2 = arg0->unk4;
    }
    if (var_a2 == 4) {
        temp_a4 = arg0->unkC;
        temp_a0 = temp_a4->unk74;
        temp_a0_2 = *(temp_a0->unk74 + (*(temp_a0->unk7C + ((temp_a0->unk58 + ((*arg0->unk0 - temp_a0->unk50) * 0x14))->unk4 * 0x18))->unk4 * 0x1C));
        if ((temp_a0_2 != NULL) && (temp_a0_2->unk4 == 5)) {
            temp_a3 = vcScreenPrivateIndex * 4;
            sp18 = var_ra;
            if (ioctl(temp_a4->unk74->unk64, 0x3A9E, (*(temp_a4->unk1B4 + temp_a3))->unk24->unkC, temp_a3, temp_a4) == -1) {
                ErrorF(&local_0x5f0a0000 - 0xF10);
            }
        }
    }
}

void expUninstall24Map(void *arg0) {
    s32 temp_a3;
    void *temp_a0;

    if (arg0->unk4 == 5) {
        temp_a0 = arg0->unkC;
        temp_a3 = vcScreenPrivateIndex * 4;
        if (ioctl(temp_a0->unk74->unk64, 0x3A9E, (*(temp_a0->unk1B4 + temp_a3))->unk24->unkC, temp_a3, arg0) == -1) {
            ErrorF(&local_0x5f0a0000 - 0xF10);
        }
    }
}

void expStoreNormalColors(void *arg0, s16 arg1, void *arg2, ? arg_sp0) {
    s32 *temp_at_3;
    s32 *temp_at_4;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_t2;
    s32 temp_v0;
    s32 var_a0_2;
    s32 var_a1_2;
    s32 var_at;
    s32 var_v0_2;
    s64 temp_t0;
    s8 *temp_sp;
    s8 *var_a0;
    s8 *var_v1;
    s8 *var_v1_2;
    s8 *var_v1_3;
    u16 temp_a2_2;
    u16 temp_at;
    u16 temp_at_2;
    u8 var_at_2;
    void *temp_a4;
    void *temp_a6;
    void *var_a1;
    void *var_v0;

    arg_sp0.unk-40 = (s64) saved_reg_gp;
    arg_sp0.unk-38 = (s64) saved_reg_fp;
    if (arg0->unk0->unk4 != 4) {
        temp_v0 = *arg0->unk44;
        if ((temp_v0 >= 0) && (arg1 != 0)) {
            temp_a3 = ((arg1 * 6) + 0x11) & ~0xF;
            temp_sp = sp - temp_a3;
            if (temp_sp != NULL) {
                var_v1 = temp_sp;
                temp_t2 = (arg0->unkC->unk74->unk74 + (temp_v0 * 0x1C))->unk18 << 8;
                if (arg1 > 0) {
                    var_a1 = arg2;
                    if (arg1 & 1) {
                        var_v1->unk2 = (s16) (var_a1->unk0 + temp_t2);
                        var_v1->unk4 = (s8) ((s32) var_a1->unk4 >> 8);
                        var_v1->unk5 = (s8) ((s32) var_a1->unk6 >> 8);
                        temp_at = var_a1->unk8;
                        var_a1 += 0xC;
                        var_v1 += 6;
                        *var_v1 = (s8) ((s32) temp_at >> 8);
                    }
                    var_a0 = var_v1;
                    temp_a2 = arg1 >> 1;
                    var_v0 = var_a1;
                    if (temp_a2 != 0) {
                        if (temp_a2 >= 2) {
                            var_at = var_v0->unk0;
                            do {
                                var_a0 += 0xC;
                                var_a0->unk-A = (s16) (var_at + temp_t2);
                                var_a0->unk-8 = (s8) ((s32) var_v0->unk4 >> 8);
                                var_a0->unk-7 = (s8) ((s32) var_v0->unk6 >> 8);
                                var_a0->unk-6 = (s8) ((s32) var_v0->unk8 >> 8);
                                var_a0->unk-4 = (s16) (var_v0->unkC + temp_t2);
                                var_a0->unk-2 = (s8) ((s32) var_v0->unk10 >> 8);
                                var_a0->unk-1 = (s8) ((s32) var_v0->unk12 >> 8);
                                temp_at_2 = var_v0->unk14;
                                var_v0 += 0x18;
                                var_a0->unk0 = (s8) ((s32) temp_at_2 >> 8);
                                var_at = var_v0->unk0;
                            } while (var_v0 != (((arg1 * 0xC) + arg2) - 0x18));
                            var_a0->unk2 = (s16) (var_at + temp_t2);
                            var_a0->unk4 = (s8) ((s32) var_v0->unk4 >> 8);
                            var_a0->unk5 = (s8) ((s32) var_v0->unk6 >> 8);
                            var_a0->unk6 = (s8) ((s32) var_v0->unk8 >> 8);
                            var_a0->unk8 = (s16) (var_v0->unkC + temp_t2);
                            var_a0->unkA = (s8) ((s32) var_v0->unk10 >> 8);
                            var_a0->unkB = (s8) ((s32) var_v0->unk12 >> 8);
                            var_a0->unkC = (s8) ((s32) var_v0->unk14 >> 8);
                        } else {
                            var_a0->unk2 = (s16) (var_v0->unk0 + temp_t2);
                            var_a0->unk4 = (s8) ((s32) var_v0->unk4 >> 8);
                            var_a0->unk5 = (s8) ((s32) var_v0->unk6 >> 8);
                            var_a0->unk6 = (s8) ((s32) var_v0->unk8 >> 8);
                            var_a0->unk8 = (s16) (var_v0->unkC + temp_t2);
                            var_a0->unkA = (s8) ((s32) var_v0->unk10 >> 8);
                            var_a0->unkB = (s8) ((s32) var_v0->unk12 >> 8);
                            var_a0->unkC = (s8) ((s32) var_v0->unk14 >> 8);
                        }
                    }
                }
                temp_sp->unk0 = arg1;
                temp_a6 = *(arg0->unkC->unk1B4 + (expScreenPrivateIndex * 4));
                temp_a4 = temp_a6->unk0;
                temp_a4->unk40554 = 0;
                var_a1_2 = 1;
                if (!(temp_a4->unk6A040 & 1)) {
                    do {
                        arg_sp0.unk-2C = 0;
                        arg_sp0.unk-2C = 1;
                        arg_sp0.unk-2C = 2;
                        arg_sp0.unk-2C = 3;
                        arg_sp0.unk-2C = 4;
                        arg_sp0.unk-2C = 5;
                        arg_sp0.unk-2C = 6;
                        arg_sp0.unk-2C = 7;
                        arg_sp0.unk-2C = 8;
                        arg_sp0.unk-2C = 9;
                    } while (!(temp_a4->unk6A040 & 1));
                    var_a1_2 = 1;
                }
                temp_t0 = (s64) ((s64) arg1 << 0x30) >> 0x30;
                temp_a4->unk6B000 = 0;
                if (temp_t0 > 0) {
                    var_v1_2 = temp_sp;
loop_22:
                    if (!(temp_a4->unk6C11C & 2)) {
                        do {

                        } while (!(temp_a4->unk6C11C & 2));
                    }
                    temp_a2_2 = var_v1_2->unk2;
                    temp_a4_2 = var_a1_2 < temp_t0;
                    temp_a4->unk6C1B0 = (s8) temp_a2_2;
                    temp_a4->unk6C1B4 = (s8) ((s32) temp_a2_2 >> 8);
                    var_a1_2 += 1;
                    var_a0_2 = (var_v1_2->unk4 << 0x18) | (var_v1_2->unk5 << 0x10) | (var_v1_2->unk6 << 8);
                    if ((temp_a4_2 != 0) && (var_v1_2->unk8 == (temp_a2_2 + 1))) {
                        var_at_2 = var_v1_2->unkA;
                        goto block_20;
                    }
                    if (temp_a2_2 != 0x1FFF) {
                        var_at_2 = (temp_a6->unk358 + (temp_a2_2 * 4))->unk4 & 0xFF;
block_20:
                        var_a0_2 |= var_at_2;
                    }
                    var_v1_2 += 6;
                    temp_a4->unk6C1A8 = var_a0_2;
                    if (var_v1_2 != (temp_sp + (temp_t0 * 6))) {
                        goto loop_22;
                    }
                }
                var_v1_3 = temp_sp;
                var_v0_2 = 0;
                if (temp_sp->unk0 > 0) {
                    do {
                        temp_a4_3 = var_v1_3->unk2 * 4;
                        *(temp_a6->unk358 + temp_a4_3) = var_v1_3->unk4 & 0xFF;
                        temp_at_3 = temp_a6->unk358 + temp_a4_3;
                        *temp_at_3 |= (var_v1_3->unk5 & 0xFF) << 8;
                        temp_at_4 = temp_a6->unk358 + temp_a4_3;
                        *temp_at_4 |= (var_v1_3->unk6 & 0xFF) << 0x10;
                        var_v0_2 += 1;
                        var_v1_3 += 6;
                    } while (var_v0_2 < temp_sp->unk0);
                }
                return;
            }
            arg_sp0.unk-48 = (s64) saved_reg_ra;
            ErrorF(&local_0x5f0a0000 - 0xED8, temp_a3, (void *)-0x10, arg1, (u16) temp_sp);
        }
    }
}

void expStorePupColors(void *arg0, s32 arg1, void *arg2) {
    s32 sp68;
    s16 sp0;
    s16 var_a7;
    s32 *temp_a0;
    s32 *temp_a0_2;
    s32 *temp_a4_2;
    s32 *temp_a4_3;
    s32 *temp_a6_2;
    s32 *temp_v0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_s2;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_a6;
    s64 temp_t0;
    u16 temp_a7;
    u16 var_v0;
    void *temp_a3;
    void *temp_t2_2;
    void *temp_v1;
    void *var_a0;
    void *var_a2_2;
    void *var_t0;
    void *var_t1;

    var_a7 = 0;
    var_t0 = sp;
    temp_s2 = expScreenPrivateIndex * 4;
    if ((*arg0->unk44 >= 0) && (arg1 != 0)) {
        if (arg1 > 0) {
            var_t1 = arg2;
loop_11:
            temp_t2 = (s32) var_t1->unk4 >> 8;
            temp_t8 = (s32) var_t1->unk8 >> 8;
            temp_t3 = (s32) var_t1->unk6 >> 8;
            temp_a6 = var_t1->unk0;
            temp_a3 = (temp_a6 * 4) + *(arg0->unkC->unk1B4 + temp_s2);
            temp_a2 = (temp_t8 << 0x10) | ((temp_t3 << 8) | temp_t2);
            if (temp_a3->unk10 != temp_a2) {
                var_t0 += 6;
                var_a7 += 1;
                temp_a3->unk10 = temp_a2;
                var_t0->unk0 = (s8) temp_t8;
                var_t0->unk-1 = (s8) temp_t3;
                var_t0->unk-2 = (s8) temp_t2;
                var_t0->unk-4 = (s16) (temp_a6 + 0x1C40);
            }
            if (temp_a3->unk20 != temp_a2) {
                var_t0 += 6;
                var_a7 += 1;
                temp_a3->unk20 = temp_a2;
                var_t0->unk0 = (s8) temp_t8;
                var_t0->unk-1 = (s8) temp_t3;
                var_t0->unk-2 = (s8) temp_t2;
                var_t0->unk-4 = (s16) (temp_a6 + 0x1C44);
            }
            if (temp_a3->unk30 != temp_a2) {
                var_t0 += 6;
                var_a7 += 1;
                temp_a3->unk30 = temp_a2;
                var_t0->unk0 = (s8) temp_t8;
                var_t0->unk-1 = (s8) temp_t3;
                var_t0->unk-2 = (s8) temp_t2;
                var_t0->unk-4 = (s16) (temp_a6 + 0x1C48);
            }
            var_t1 += 0xC;
            if (temp_a3->unk40 != temp_a2) {
                var_t0 += 6;
                var_a7 += 1;
                temp_a3->unk40 = temp_a2;
                var_t0->unk0 = (s8) temp_t8;
                var_t0->unk-1 = (s8) temp_t3;
                var_t0->unk-2 = (s8) temp_t2;
                var_t0->unk-4 = (s16) (temp_a6 + 0x1C4C);
            }
            if ((temp_a6 + 1) < arg1) {
                goto loop_11;
            }
        }
        if (var_a7 != 0) {
            sp0 = var_a7;
            temp_t2_2 = *(arg0->unkC->unk1B4 + temp_s2);
            temp_v1 = temp_t2_2->unk0;
            temp_v1->unk40554 = 0;
            var_a0 = sp;
            if (!(temp_v1->unk6A040 & 1)) {
                do {
                    sp68 = 0;
                    sp68 = 1;
                    sp68 = 2;
                    sp68 = 3;
                    sp68 = 4;
                    sp68 = 5;
                    sp68 = 6;
                    sp68 = 7;
                    sp68 = 8;
                    sp68 = 9;
                } while (!(temp_v1->unk6A040 & 1));
                var_a0 = sp;
            }
            temp_v1->unk6B000 = 0;
            temp_t0 = (s64) ((s64) var_a7 << 0x30) >> 0x30;
            if (temp_t0 > 0) {
                var_a6 = 1;
loop_24:
                if (!(temp_v1->unk6C11C & 2)) {
                    do {

                    } while (!(temp_v1->unk6C11C & 2));
                }
                temp_a7 = var_a0->unk2;
                temp_a5 = var_a6 < temp_t0;
                var_a6 += 1;
                temp_v1->unk6C1B0 = (s8) temp_a7;
                temp_v1->unk6C1B4 = (s8) ((s32) temp_a7 >> 8);
                var_a2 = (var_a0->unk4 << 0x18) | (var_a0->unk5 << 0x10) | (var_a0->unk6 << 8);
                if ((temp_a5 != 0) && (var_a0->unk8 == (temp_a7 + 1))) {
                    var_a2 |= var_a0->unkA;
                } else if (temp_a7 != 0x1FFF) {
                    var_a2 |= (temp_t2_2->unk358 + (temp_a7 * 4))->unk4 & 0xFF;
                }
                var_a0 += 6;
                temp_v1->unk6C1A8 = var_a2;
                if (var_a0 != ((temp_t0 * 6) + sp)) {
                    goto loop_24;
                }
            }
            var_a2_2 = sp;
            if (sp0 > 0) {
                if (sp0 >= 2) {
                    var_v0 = sp->unk2;
                    do {
                        temp_a1 = var_v0 * 4;
                        *(temp_t2_2->unk358 + temp_a1) = var_a2_2->unk4 & 0xFF;
                        temp_a0 = temp_t2_2->unk358 + temp_a1;
                        *temp_a0 |= (var_a2_2->unk5 & 0xFF) << 8;
                        var_a2_2 += 6;
                        temp_a0_2 = temp_t2_2->unk358 + temp_a1;
                        *temp_a0_2 |= (var_a2_2->unk0 & 0xFF) << 0x10;
                        var_v0 = var_a2_2->unk2;
                    } while (var_a2_2 != ((((sp0 - 1 + 1) * 6) + sp) - 6));
                    temp_a4 = var_v0 * 4;
                    *(temp_t2_2->unk358 + temp_a4) = var_a2_2->unk4 & 0xFF;
                    temp_a6_2 = temp_t2_2->unk358 + temp_a4;
                    *temp_a6_2 |= (var_a2_2->unk5 & 0xFF) << 8;
                    temp_v0 = temp_t2_2->unk358 + temp_a4;
                    *temp_v0 |= (var_a2_2->unk6 & 0xFF) << 0x10;
                } else {
                    temp_v0_2 = sp->unk2 * 4;
                    *(temp_t2_2->unk358 + temp_v0_2) = sp->unk4 & 0xFF;
                    temp_a4_2 = temp_t2_2->unk358 + temp_v0_2;
                    *temp_a4_2 |= (sp->unk5 & 0xFF) << 8;
                    temp_a4_3 = temp_t2_2->unk358 + temp_v0_2;
                    *temp_a4_3 |= (sp->unk6 & 0xFF) << 0x10;
                }
            }
        }
    }
}

void expStoreOverlayColors(void *arg0, s32 arg1, void *arg2) {
    s32 sp68;
    s16 sp0;
    s16 var_ra;
    s32 *temp_a0;
    s32 *temp_a0_2;
    s32 *temp_a4_2;
    s32 *temp_a4_3;
    s32 *temp_a6_2;
    s32 *temp_v0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a7_2;
    s32 temp_s1;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_a6;
    s64 temp_t0_2;
    u16 temp_a7;
    u16 temp_a7_3;
    u16 var_v0;
    void *temp_a5;
    void *temp_t2_2;
    void *temp_t3;
    void *var_a0;
    void *var_a2_2;
    void *var_a3;
    void *var_t9;

    var_ra = 0;
    var_t9 = sp;
    temp_s1 = expScreenPrivateIndex * 4;
    if ((*arg0->unk44 >= 0) && (arg1 != 0)) {
        if (arg1 > 0) {
            var_a3 = arg2;
loop_5:
            temp_a7 = var_a3->unk4;
            var_a3 += 0xC;
            temp_a7_2 = (s32) temp_a7 >> 8;
            temp_t2 = (s32) var_a3->unk-4 >> 8;
            temp_t1 = (s32) var_a3->unk-6 >> 8;
            temp_a2 = var_a3->unk-C;
            temp_a6 = temp_a2 * 4;
            temp_t3 = (temp_a6 * 4) + *(arg0->unkC->unk1B4 + temp_s1);
            temp_t0 = (temp_t2 << 0x10) | ((temp_t1 << 8) | temp_a7_2);
            if (temp_t3->unk10 != temp_t0) {
                var_t9 += 6;
                var_ra += 1;
                temp_t3->unk10 = temp_t0;
                var_t9->unk0 = (s8) temp_t2;
                var_t9->unk-1 = (s8) temp_t1;
                var_t9->unk-2 = (s8) temp_a7_2;
                var_t9->unk-4 = (s16) (temp_a6 + 0x1C40);
            }
            if ((temp_a2 + 1) < arg1) {
                goto loop_5;
            }
        }
        if (var_ra != 0) {
            sp0 = var_ra;
            temp_t2_2 = *(arg0->unkC->unk1B4 + temp_s1);
            temp_a5 = temp_t2_2->unk0;
            temp_a5->unk40554 = 0;
            var_a0 = sp;
            if (!(temp_a5->unk6A040 & 1)) {
                do {
                    sp68 = 0;
                    sp68 = 1;
                    sp68 = 2;
                    sp68 = 3;
                    sp68 = 4;
                    sp68 = 5;
                    sp68 = 6;
                    sp68 = 7;
                    sp68 = 8;
                    sp68 = 9;
                } while (!(temp_a5->unk6A040 & 1));
                var_a0 = sp;
            }
            temp_a5->unk6B000 = 0;
            temp_t0_2 = (s64) ((s64) var_ra << 0x30) >> 0x30;
            if (temp_t0_2 > 0) {
                var_a6 = 1;
loop_17:
                if (!(temp_a5->unk6C11C & 2)) {
                    do {

                    } while (!(temp_a5->unk6C11C & 2));
                }
                temp_a7_3 = var_a0->unk2;
                temp_a5_2 = var_a6 < temp_t0_2;
                var_a6 += 1;
                temp_a5->unk6C1B0 = (s8) temp_a7_3;
                temp_a5->unk6C1B4 = (s8) ((s32) temp_a7_3 >> 8);
                var_a2 = (var_a0->unk4 << 0x18) | (var_a0->unk5 << 0x10) | (var_a0->unk6 << 8);
                if ((temp_a5_2 != 0) && (var_a0->unk8 == (temp_a7_3 + 1))) {
                    var_a2 |= var_a0->unkA;
                } else if (temp_a7_3 != 0x1FFF) {
                    var_a2 |= (temp_t2_2->unk358 + (temp_a7_3 * 4))->unk4 & 0xFF;
                }
                var_a0 += 6;
                temp_a5->unk6C1A8 = var_a2;
                if (var_a0 != ((temp_t0_2 * 6) + sp)) {
                    goto loop_17;
                }
            }
            var_a2_2 = sp;
            if (sp0 > 0) {
                if (sp0 >= 2) {
                    var_v0 = sp->unk2;
                    do {
                        temp_a1 = var_v0 * 4;
                        *(temp_t2_2->unk358 + temp_a1) = var_a2_2->unk4 & 0xFF;
                        temp_a0 = temp_t2_2->unk358 + temp_a1;
                        *temp_a0 |= (var_a2_2->unk5 & 0xFF) << 8;
                        var_a2_2 += 6;
                        temp_a0_2 = temp_t2_2->unk358 + temp_a1;
                        *temp_a0_2 |= (var_a2_2->unk0 & 0xFF) << 0x10;
                        var_v0 = var_a2_2->unk2;
                    } while (var_a2_2 != ((((sp0 - 1 + 1) * 6) + sp) - 6));
                    temp_a4 = var_v0 * 4;
                    *(temp_t2_2->unk358 + temp_a4) = var_a2_2->unk4 & 0xFF;
                    temp_a6_2 = temp_t2_2->unk358 + temp_a4;
                    *temp_a6_2 |= (var_a2_2->unk5 & 0xFF) << 8;
                    temp_v0 = temp_t2_2->unk358 + temp_a4;
                    *temp_v0 |= (var_a2_2->unk6 & 0xFF) << 0x10;
                } else {
                    temp_v0_2 = sp->unk2 * 4;
                    *(temp_t2_2->unk358 + temp_v0_2) = sp->unk4 & 0xFF;
                    temp_a4_2 = temp_t2_2->unk358 + temp_v0_2;
                    *temp_a4_2 |= (sp->unk5 & 0xFF) << 8;
                    temp_a4_3 = temp_t2_2->unk358 + temp_v0_2;
                    *temp_a4_3 |= (sp->unk6 & 0xFF) << 0x10;
                }
            }
        }
    }
}

void expStoreOverlay4Colors(void *arg0, s32 arg1, void *arg2) {
    s32 sp68;
    s16 sp0;
    s16 var_t8;
    s32 *temp_a0;
    s32 *temp_a0_2;
    s32 *temp_a4_2;
    s32 *temp_a4_3;
    s32 *temp_a6_2;
    s32 *temp_v0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_s2;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_a6;
    s64 temp_t0_2;
    u16 temp_a7_2;
    u16 var_v0;
    void *temp_a5;
    void *temp_t1;
    void *temp_t2_2;
    void *var_a0;
    void *var_a2_2;
    void *var_a3;
    void *var_t9;

    var_t8 = 0;
    var_t9 = sp;
    temp_s2 = expScreenPrivateIndex * 4;
    if ((*arg0->unk44 >= 0) && (arg1 != 0)) {
        if (arg1 > 0) {
            var_a3 = arg2;
loop_5:
            temp_t0 = (s32) var_a3->unk4 >> 8;
            temp_a6 = (s32) var_a3->unk8 >> 8;
            temp_a7 = (s32) var_a3->unk6 >> 8;
            temp_a2 = var_a3->unk0;
            temp_t1 = (temp_a2 * 4) + *(arg0->unkC->unk1B4 + temp_s2);
            temp_t2 = (temp_a6 << 0x10) | ((temp_a7 << 8) | temp_t0);
            var_a3 += 0xC;
            if (temp_t1->unk10 != temp_t2) {
                var_t9 += 6;
                var_t8 += 1;
                temp_t1->unk10 = temp_t2;
                var_t9->unk0 = (s8) temp_a6;
                var_t9->unk-1 = (s8) temp_a7;
                var_t9->unk-2 = (s8) temp_t0;
                var_t9->unk-4 = (s16) (temp_a2 + 0x1C40);
            }
            if ((temp_a2 + 1) < arg1) {
                goto loop_5;
            }
        }
        if (var_t8 != 0) {
            sp0 = var_t8;
            temp_t2_2 = *(arg0->unkC->unk1B4 + temp_s2);
            temp_a5 = temp_t2_2->unk0;
            temp_a5->unk40554 = 0;
            var_a0 = sp;
            if (!(temp_a5->unk6A040 & 1)) {
                do {
                    sp68 = 0;
                    sp68 = 1;
                    sp68 = 2;
                    sp68 = 3;
                    sp68 = 4;
                    sp68 = 5;
                    sp68 = 6;
                    sp68 = 7;
                    sp68 = 8;
                    sp68 = 9;
                } while (!(temp_a5->unk6A040 & 1));
                var_a0 = sp;
            }
            temp_a5->unk6B000 = 0;
            temp_t0_2 = (s64) ((s64) var_t8 << 0x30) >> 0x30;
            if (temp_t0_2 > 0) {
                var_a6 = 1;
loop_17:
                if (!(temp_a5->unk6C11C & 2)) {
                    do {

                    } while (!(temp_a5->unk6C11C & 2));
                }
                temp_a7_2 = var_a0->unk2;
                temp_a5_2 = var_a6 < temp_t0_2;
                var_a6 += 1;
                temp_a5->unk6C1B0 = (s8) temp_a7_2;
                temp_a5->unk6C1B4 = (s8) ((s32) temp_a7_2 >> 8);
                var_a2 = (var_a0->unk4 << 0x18) | (var_a0->unk5 << 0x10) | (var_a0->unk6 << 8);
                if ((temp_a5_2 != 0) && (var_a0->unk8 == (temp_a7_2 + 1))) {
                    var_a2 |= var_a0->unkA;
                } else if (temp_a7_2 != 0x1FFF) {
                    var_a2 |= (temp_t2_2->unk358 + (temp_a7_2 * 4))->unk4 & 0xFF;
                }
                var_a0 += 6;
                temp_a5->unk6C1A8 = var_a2;
                if (var_a0 != ((temp_t0_2 * 6) + sp)) {
                    goto loop_17;
                }
            }
            var_a2_2 = sp;
            if (sp0 > 0) {
                if (sp0 >= 2) {
                    var_v0 = sp->unk2;
                    do {
                        temp_a1 = var_v0 * 4;
                        *(temp_t2_2->unk358 + temp_a1) = var_a2_2->unk4 & 0xFF;
                        temp_a0 = temp_t2_2->unk358 + temp_a1;
                        *temp_a0 |= (var_a2_2->unk5 & 0xFF) << 8;
                        var_a2_2 += 6;
                        temp_a0_2 = temp_t2_2->unk358 + temp_a1;
                        *temp_a0_2 |= (var_a2_2->unk0 & 0xFF) << 0x10;
                        var_v0 = var_a2_2->unk2;
                    } while (var_a2_2 != ((((sp0 - 1 + 1) * 6) + sp) - 6));
                    temp_a4 = var_v0 * 4;
                    *(temp_t2_2->unk358 + temp_a4) = var_a2_2->unk4 & 0xFF;
                    temp_a6_2 = temp_t2_2->unk358 + temp_a4;
                    *temp_a6_2 |= (var_a2_2->unk5 & 0xFF) << 8;
                    temp_v0 = temp_t2_2->unk358 + temp_a4;
                    *temp_v0 |= (var_a2_2->unk6 & 0xFF) << 0x10;
                } else {
                    temp_v0_2 = sp->unk2 * 4;
                    *(temp_t2_2->unk358 + temp_v0_2) = sp->unk4 & 0xFF;
                    temp_a4_2 = temp_t2_2->unk358 + temp_v0_2;
                    *temp_a4_2 |= (sp->unk5 & 0xFF) << 8;
                    temp_a4_3 = temp_t2_2->unk358 + temp_v0_2;
                    *temp_a4_3 |= (sp->unk6 & 0xFF) << 0x10;
                }
            }
        }
    }
}

void expStore24Colors(void *arg0) {
    s32 temp_a3_2;
    void *temp_a3;

    if (arg0->unk4 != 5) {
        return;
    }
    temp_a3 = arg0->unkC->unk74;
    temp_a3_2 = *(temp_a3->unk74 + (*(temp_a3->unk7C + ((temp_a3->unk58 + ((*arg0->unk0 - temp_a3->unk50) * 0x14))->unk4 * 0x18))->unk4 * 0x1C));
    if (temp_a3_2 != arg0) {
        return;
    }
    expStippledSpans(temp_a3_2);
}

void expChangeDIDCmap(void *arg0, void *arg1) {
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a4;
    s32 temp_s3;
    s32 temp_s5;
    s32 temp_s7;
    s32 var_a2;
    s32 var_a3_2;
    s32 var_a5;
    s32 var_s2;
    void *temp_a1;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a4_2;
    void *temp_a6;
    void *temp_a7;
    void *temp_s1;
    void *temp_s1_2;
    void *var_a3;
    void *var_a6;

    var_a3 = arg0->unk10;
    var_a5 = rrmWindowPrivateIndex * 4;
    var_a6 = *(arg0->unk84 + var_a5);
    temp_a4 = var_a6->unk14;
    temp_a7 = *((rrmScreenPrivateIndex * 4) + var_a3->unk1B4);
    temp_s1 = var_a6;
    if (temp_a4 >= 0) {
        temp_s3 = (var_a3->unk74->unk74 + (*arg1->unk44 * 0x1C))->unk18 << 0x1B;
        if (((temp_a4 * 0x24) + temp_a7)->unkA8 & 1) {
            if ((temp_s1->unk24 & 0xF8000000) != temp_s3) {
                temp_a1 = var_a6;
                var_a2 = var_a6->unk0 & 8;
                temp_a4_2 = (var_a6->unk14 * 0x24) + temp_a7 + 0x98;
                if (var_a2 != 0) {
                    temp_a6 = temp_a1->unk2C;
                    temp_a3 = temp_a1->unk30;
                    if (temp_a6 != NULL) {
                        (*(temp_a6->unk84 + var_a5))->unk30 = temp_a3;
                    } else {
                        temp_a4_2->unk0 = (s32) temp_a3;
                    }
                    temp_a3_2 = temp_a1->unk30;
                    var_a6 = temp_a1->unk2C;
                    if (temp_a3_2 != NULL) {
                        (*(temp_a3_2->unk84 + var_a5))->unk2C = var_a6;
                        temp_a1->unk30 = 0;
                    } else {
                        temp_a4_2->unk4 = (s32) var_a6;
                    }
                    temp_a1->unk2C = 0;
                    var_a5 = temp_a4_2->unk0;
                    var_a3_2 = temp_a4_2->unk10 & 0x31 & 0xFFFF;
                    var_a2 = var_a3_2 & 1;
                    temp_a4_2->unk14 = (s32) (temp_a4_2->unk14 - 1);
                    if (var_a2 != 0) {
                        var_a3_2 |= 6;
                    }
                    if (var_a5 != 0) {
                        var_a2 = temp_a4_2->unk4;
                        var_a3 = (void *) (var_a3_2 | 2);
                        if (var_a2 != var_a5) {
                            var_a3 = (void *) ((s32) var_a3 | 4);
                        }
                    } else {
                        var_a3 = (void *) (var_a3_2 & ~0x10);
                    }
                    temp_a4_2->unk10 = (u16) var_a3;
                    temp_a1->unk0 = (u16) (temp_a1->unk0 & ~8);
                }
                temp_a1->unk14 = -1;
                temp_s1->unk24 = (s32) (temp_s3 | (temp_s1->unk24 & 0x07FFFFFF));
                if (FindFreeID(arg0, temp_a1, var_a2, (u16) var_a3, temp_a4_2, (void *) var_a5, var_a6, temp_a7) == 0) {
                    M2C_ERROR(/* Read from unset register $t9 */)(arg0);
                }
            }
        }
        StealID(arg0, 8, 1);
        temp_s5 = temp_s1->unk20;
        temp_s7 = temp_s1->unk14;
        var_s2 = (temp_s1->unk24 & 0x07FFFFFF) | (temp_s3 | 0x800);
        if (!(var_s2 & 0x100)) {
            var_s2 |= 0xF00000;
        }
        if (temp_s5 & 2) {
            if (temp_s5 & 4) {
                var_s2 |= 0x01000000;
            } else {
                var_s2 &= ~0x01000000;
            }
        }
        sp0 = temp_s1->unkC;
        sp10 = temp_s5;
        spC = var_s2;
        sp8 = temp_s7;
        sp4 = arg0->unk4;
        if (ioctl(arg0->unk10->unk74->unk64, 0x3F9, sp) == -1) {
            ErrorF(&local_0x5f0a0000 - 0xBF0, sp4, errno, -1);
        }
        temp_s1_2 = (temp_s7 * 0xC) + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x16B2F8) - 0x5384);
        temp_s1_2->unk0 = (s32) arg0->unk4;
        temp_s1_2->unk8 = temp_s5;
        temp_s1_2->unk4 = var_s2;
    }
}

void expSetColor(void) {
    ErrorF(&local_0x5f0a0000 - 0xEE8, 0x187EE4);
}

s32 expInitializeColormap(void *arg0) {
    u64 sp30;
    u64 sp28;
    u64 sp20;
    u64 sp18;
    u64 sp10;
    u64 sp8;
    u64 sp0;
    s16 temp_at;
    s16 temp_t8_3;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_9;
    s16 temp_v1_2;
    s16 var_v1_3;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_6;
    s32 temp_a6_3;
    s32 temp_a6_7;
    s32 temp_t0_2;
    s32 temp_t0_4;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t8;
    s32 temp_t8_4;
    s32 temp_v0_8;
    s32 var_a7_2;
    s32 var_ra;
    s32 var_ra_2;
    s32 var_v0;
    s32 var_v0_3;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_4;
    s32 var_v1_5;
    u16 *temp_a6_9;
    u16 *temp_at_2;
    u16 *temp_at_5;
    u16 *temp_at_6;
    u16 *temp_at_7;
    u16 *temp_t0_3;
    u16 *temp_t8_6;
    u16 *temp_v0_11;
    u16 *temp_v0_13;
    u16 *temp_v0_5;
    u16 *temp_v0_7;
    u16 *var_a2;
    u16 *var_a2_2;
    u16 *var_at;
    u16 *var_at_2;
    u16 *var_at_3;
    u16 *var_at_4;
    u16 *var_at_5;
    u16 temp_at_3;
    u16 temp_at_4;
    u16 temp_at_8;
    u16 temp_at_9;
    u32 temp_a3;
    u32 temp_a4;
    u32 temp_a4_2;
    u32 temp_a5;
    u32 temp_a5_5;
    u32 temp_a6;
    u32 temp_a6_5;
    u32 temp_a7;
    u32 temp_a7_2;
    u32 temp_a7_3;
    u32 temp_lo;
    u32 temp_lo_2;
    u32 temp_lo_3;
    u32 temp_lo_4;
    u32 temp_s1;
    u32 temp_t2;
    u32 temp_t2_2;
    u32 temp_t2_3;
    u32 temp_t2_4;
    u32 var_a6;
    u32 var_a6_2;
    u32 var_a7;
    u32 var_a7_3;
    u32 var_t3;
    u32 var_t3_2;
    u32 var_t8;
    u32 var_t8_2;
    u32 var_t9;
    u32 var_t9_2;
    u32 var_v0_2;
    u32 var_v0_4;
    u64 temp_t3;
    u8 *var_a1;
    u8 *var_a3;
    void *temp_a6_2;
    void *temp_a6_4;
    void *temp_a6_6;
    void *temp_a6_8;
    void *temp_t0;
    void *temp_t8_2;
    void *temp_t8_5;
    void *temp_v0_10;
    void *temp_v0_12;
    void *temp_v0_4;
    void *temp_v0_6;
    void *temp_v1;
    void *var_a4;

    if (nfbCreateHWColormap() != 0) {
        temp_v1 = arg0->unk0;
        temp_v0 = temp_v1->unk4;
        if (temp_v0 & 1) {
            if (temp_v0 == 3) {
                temp_v0_2 = temp_v1->unkA;
                if (temp_v0_2 < 5) {
                    if (temp_v0_2 == 4) {
                        temp_t0 = arg0->unkC->unk74;
                        if ((u32) (temp_t0->unk58 + ((temp_v1->unk0 - temp_t0->unk50) * 0x14))->unk8 < 0xCU) {
                            return 1;
                        }
                        goto block_7;
                    }
block_7:
                    if (arg0->unk10 & 2) {
                        return 0;
                    }
                    arg0->unk38->unkC = -1;
                    arg0->unk38->unk10 = 0;
                    arg0->unk14 = (s32) (arg0->unk14 - 1);
                    goto block_10;
                }
block_10:
                /* Duplicate return node #11. Try simplifying control flow for better match */
                return 1;
            }
            return 1;
        }
        if ((*((arg0->unkC->unk0 * 4) + &ddxActiveScreens))->unk44->unk11 != 0x20) {
            var_ra = 0;
            temp_at = temp_v1->unk6;
            temp_v0_3 = temp_v1->unk4;
            temp_t2 = temp_v1->unk8 - 1;
            temp_a1 = 0x10 - temp_at;
            temp_s1 = (1 << temp_at) - 1;
            if (temp_v0_3 == 4) {
                sp20 = (u64) ((u32) temp_v1->unk10 >> temp_v1->unk1C);
                sp18 = (u64) ((u32) temp_v1->unkC >> temp_v1->unk18);
                temp_t8 = temp_t2 + 1;
                sp28 = (u64) ((u32) temp_v1->unk14 >> temp_v1->unk20);
                if (temp_t8 >= 2) {
                    var_t9 = (u32) (((u32) (0U / sp18) >> temp_a1) * 0xFFFF) / temp_s1;
                    var_t3 = (u32) (((u32) (0U / sp20) >> temp_a1) * 0xFFFF) / temp_s1;
                    temp_t0_2 = (temp_t8 * 0xFFFF) - 0xFFFF;
                    var_at = arg0->unk38;
                    var_t8 = 0xFFFF;
                    var_a7 = (u32) (((u32) (0U / sp28) >> temp_a1) * 0xFFFF) / temp_s1;
loop_16:
                    *var_at = (s16) var_t9;
                    var_t9 = (u32) (((u32) (var_t8 / sp18) >> temp_a1) * 0xFFFF) / temp_s1;
                    temp_t2_2 = (u32) (((u32) (var_t8 / sp20) >> temp_a1) * 0xFFFF) / temp_s1;
                    M2C_TRAP_IF(sp18 == 0);
                    M2C_TRAP_IF(temp_s1 == 0);
                    temp_a6 = var_t8 + 0xFFFF;
                    M2C_TRAP_IF(sp20 == 0);
                    (arg0->unk3C + var_ra)->unk2 = (s16) var_t3;
                    M2C_TRAP_IF(temp_s1 == 0);
                    temp_t1 = var_ra + 0x14;
                    M2C_TRAP_IF(sp28 == 0);
                    (arg0->unk40 + var_ra)->unk4 = (s16) var_a7;
                    M2C_TRAP_IF(temp_s1 == 0);
                    var_a7 = (u32) (((u32) (var_t8 / sp28) >> temp_a1) * 0xFFFF) / temp_s1;
                    temp_at_2 = arg0->unk38 + temp_t1;
                    if (var_t8 != temp_t0_2) {
                        *temp_at_2 = (s16) var_t9;
                        var_t9 = (u32) (((u32) (temp_a6 / sp18) >> temp_a1) * 0xFFFF) / temp_s1;
                        var_t3 = (u32) (((u32) (temp_a6 / sp20) >> temp_a1) * 0xFFFF) / temp_s1;
                        M2C_TRAP_IF(sp18 == 0);
                        M2C_TRAP_IF(temp_s1 == 0);
                        var_t8 = temp_a6 + 0xFFFF;
                        M2C_TRAP_IF(sp20 == 0);
                        (arg0->unk3C + temp_t1)->unk2 = (s16) temp_t2_2;
                        M2C_TRAP_IF(temp_s1 == 0);
                        var_ra = temp_t1 + 0x14;
                        M2C_TRAP_IF(sp28 == 0);
                        (arg0->unk40 + temp_t1)->unk4 = (s16) var_a7;
                        M2C_TRAP_IF(temp_s1 == 0);
                        var_a7 = (u32) (((u32) (temp_a6 / sp28) >> temp_a1) * 0xFFFF) / temp_s1;
                        var_at = arg0->unk38 + var_ra;
                        if (temp_a6 == temp_t0_2) {
                            var_a2 = var_at;
                        } else {
                            goto loop_16;
                        }
                    } else {
                        var_ra = temp_t1;
                        var_t3 = temp_t2_2;
                        var_a2 = temp_at_2;
                    }
                    M2C_TRAP_IF(temp_s1 == 0);
                    M2C_TRAP_IF(sp28 == 0);
                    *var_a2 = (s16) var_t9;
                    M2C_TRAP_IF(temp_s1 == 0);
                    M2C_TRAP_IF(sp20 == 0);
                    (arg0->unk3C + var_ra)->unk2 = (s16) var_t3;
                    M2C_TRAP_IF(temp_s1 == 0);
                    M2C_TRAP_IF(sp18 == 0);
                    (arg0->unk40 + var_ra)->unk4 = (s16) var_a7;
                } else {
                    M2C_TRAP_IF(temp_s1 == 0);
                    M2C_TRAP_IF(temp_s1 == 0);
                    arg0->unk38->unk0 = (u16) ((u32) (((u32) (0U / sp18) >> temp_a1) * 0xFFFF) / temp_s1);
                    M2C_TRAP_IF(temp_s1 == 0);
                    M2C_TRAP_IF(sp20 == 0);
                    M2C_TRAP_IF(sp18 == 0);
                    arg0->unk3C->unk2 = (s16) ((u32) (((u32) (0U / sp20) >> temp_a1) * 0xFFFF) / temp_s1);
                    M2C_TRAP_IF(sp28 == 0);
                    arg0->unk40->unk4 = (s16) ((u32) (((u32) (0U / sp28) >> temp_a1) * 0xFFFF) / temp_s1);
                }
            } else {
                var_v1 = 0;
                if (temp_v0_3 == 2) {
                    var_v0 = 0;
                    var_v1_2 = 0;
                    temp_a7 = (u32) temp_v1->unk14 >> temp_v1->unk20;
                    temp_a5 = (u32) temp_v1->unk10 >> temp_v1->unk1C;
                    temp_a4 = (u32) temp_v1->unkC >> temp_v1->unk18;
                    do {
                        *(arg0->unk38 + var_v1_2) = (s16) ((u32) (((u32) ((u32) (((u32) (temp_v1->unkC & var_v0) >> temp_v1->unk18) * 0xFFFF) / temp_a4) >> temp_a1) * 0xFFFF) / temp_s1);
                        (arg0->unk38 + var_v1_2)->unk2 = (s16) ((u32) (((u32) ((u32) (((u32) (temp_v1->unk10 & var_v0) >> temp_v1->unk1C) * 0xFFFF) / temp_a5) >> temp_a1) * 0xFFFF) / temp_s1);
                        temp_lo = (u32) (((u32) ((u32) (((u32) (temp_v1->unk14 & var_v0) >> temp_v1->unk20) * 0xFFFF) / temp_a7) >> temp_a1) * 0xFFFF) / temp_s1;
                        M2C_TRAP_IF(temp_s1 == 0);
                        M2C_TRAP_IF(temp_a7 == 0);
                        M2C_TRAP_IF(temp_s1 == 0);
                        M2C_TRAP_IF(temp_a5 == 0);
                        M2C_TRAP_IF(temp_s1 == 0);
                        M2C_TRAP_IF(temp_a4 == 0);
                        temp_a6_2 = arg0->unk38 + var_v1_2;
                        var_v1_2 += 0x14;
                        var_v0 += 1;
                        temp_a6_2->unk4 = (s16) temp_lo;
                    } while (var_v0 != (temp_t2 + 1));
                } else {
                    temp_a6_3 = temp_t2 + 1;
                    if (temp_v0_3 == 0) {
                        if (temp_a6_3 >= 2) {
                            temp_a5_2 = (temp_a6_3 * 0xFFFF) - 0xFFFF;
                            var_at_2 = arg0->unk38;
                            var_a6 = 0xFFFF;
                            var_v0_2 = (u32) (((u32) (0U / temp_t2) >> temp_a1) * 0xFFFF) / temp_s1;
loop_28:
                            *var_at_2 = (u16) var_v0_2;
                            temp_v0_4 = arg0->unk38 + var_v1;
                            temp_v0_4->unk2 = (u16) temp_v0_4->unk0;
                            temp_a7_2 = var_a6 + 0xFFFF;
                            temp_v0_5 = arg0->unk38 + var_v1;
                            temp_at_3 = temp_v0_5->unk0;
                            var_v1 += 0x14;
                            M2C_TRAP_IF(temp_t2 == 0);
                            temp_v0_5->unk4 = temp_at_3;
                            M2C_TRAP_IF(temp_s1 == 0);
                            var_v0_2 = (u32) (((u32) (var_a6 / temp_t2) >> temp_a1) * 0xFFFF) / temp_s1;
                            var_at_2 = arg0->unk38 + var_v1;
                            if (var_a6 != temp_a5_2) {
                                *var_at_2 = (u16) var_v0_2;
                                temp_lo_2 = (u32) (((u32) (temp_a7_2 / temp_t2) >> temp_a1) * 0xFFFF) / temp_s1;
                                temp_v0_6 = arg0->unk38 + var_v1;
                                temp_v0_6->unk2 = (u16) temp_v0_6->unk0;
                                var_a6 = temp_a7_2 + 0xFFFF;
                                temp_v0_7 = arg0->unk38 + var_v1;
                                temp_at_4 = temp_v0_7->unk0;
                                var_v1 += 0x14;
                                M2C_TRAP_IF(temp_t2 == 0);
                                temp_v0_7->unk4 = temp_at_4;
                                M2C_TRAP_IF(temp_s1 == 0);
                                var_v0_2 = temp_lo_2;
                                var_at_2 = arg0->unk38 + var_v1;
                                if (temp_a7_2 != temp_a5_2) {
                                    goto loop_28;
                                }
                            }
                            *var_at_2 = (u16) var_v0_2;
                            temp_a6_4 = arg0->unk38 + var_v1;
                            temp_a6_4->unk2 = (u16) temp_a6_4->unk0;
                            M2C_TRAP_IF(temp_s1 == 0);
                            temp_t8_2 = arg0->unk38 + var_v1;
                            M2C_TRAP_IF(temp_t2 == 0);
                            temp_t8_2->unk4 = (u16) temp_t8_2->unk0;
                        } else {
                            arg0->unk38->unk0 = (u16) ((u32) (((u32) (0U / temp_t2) >> temp_a1) * 0xFFFF) / temp_s1);
                            temp_t0_3 = arg0->unk38;
                            temp_t0_3->unk2 = (u16) temp_t0_3->unk0;
                            M2C_TRAP_IF(temp_s1 == 0);
                            temp_at_5 = arg0->unk38;
                            M2C_TRAP_IF(temp_t2 == 0);
                            temp_at_5->unk4 = (u16) temp_at_5->unk0;
                        }
                    }
                }
            }
            return 1;
        }
        if (temp_v1->unk4 != 2) {
            goto block_37;
        }
        if (temp_v1->unk8 == 0x100) {
            var_a7_2 = 0x14;
            var_a1 = &gl_green_map__AIB - 1;
            arg0->unk38->unk0 = gl_red_map__PHB.unk0 << 8;
            var_a3 = &gl_blue_map__BIB - 1;
            arg0->unk38->unk2 = (u16) (gl_green_map__AIB << 8);
            var_a4 = &gl_red_map__PHB - 1;
            arg0->unk38->unk4 = (u16) (gl_blue_map__BIB << 8);
            var_at_3 = arg0->unk38;
            var_v1_3 = gl_red_map__PHB.unk1 << 8;
loop_61:
            temp_a5_3 = var_a7_2 + 0x14;
            temp_a0 = temp_a5_3 + 0x14;
            *(var_at_3 + var_a7_2) = var_v1_3;
            var_a3 += 4;
            (arg0->unk38 + var_a7_2)->unk2 = (s16) (var_a1->unk2 << 8);
            var_a4 += 4;
            (arg0->unk38 + var_a7_2)->unk4 = (s16) (var_a3->unk-2 << 8);
            var_a1 += 4;
            *(arg0->unk38 + temp_a5_3) = var_a4->unk-1 << 8;
            (arg0->unk38 + temp_a5_3)->unk2 = (s16) (var_a1->unk-1 << 8);
            temp_v1_2 = var_a4->unk0 << 8;
            (arg0->unk38 + temp_a5_3)->unk4 = (s16) (var_a3->unk-1 << 8);
            temp_at_6 = arg0->unk38;
            if (var_a4 != (&gl_red_map__PHB + 0xFF)) {
                temp_a5_4 = temp_a0 + 0x14;
                var_a7_2 = temp_a5_4 + 0x14;
                *(temp_at_6 + temp_a0) = temp_v1_2;
                (arg0->unk38 + temp_a0)->unk2 = (s16) (var_a1->unk0 << 8);
                (arg0->unk38 + temp_a0)->unk4 = (s16) (var_a3->unk0 << 8);
                *(arg0->unk38 + temp_a5_4) = var_a4->unk1 << 8;
                (arg0->unk38 + temp_a5_4)->unk2 = (s16) (var_a1->unk1 << 8);
                var_v1_3 = var_a4->unk2 << 8;
                (arg0->unk38 + temp_a5_4)->unk4 = (s16) (var_a3->unk1 << 8);
                var_at_3 = arg0->unk38;
                goto loop_61;
            }
            *(temp_at_6 + temp_a0) = temp_v1_2;
            (arg0->unk38 + temp_a0)->unk2 = (s16) (var_a1->unk0 << 8);
            (arg0->unk38 + temp_a0)->unk4 = (s16) (var_a3->unk0 << 8);
            temp_v0_8 = temp_a0 + 0x14;
            *(arg0->unk38 + temp_v0_8) = var_a4->unk1 << 8;
            (arg0->unk38 + temp_v0_8)->unk2 = (s16) (var_a1->unk1 << 8);
            (arg0->unk38 + temp_v0_8)->unk4 = (s16) (var_a3->unk1 << 8);
        } else {
block_37:
            temp_t8_3 = temp_v1->unk6;
            temp_v0_9 = temp_v1->unk4;
            temp_t2_3 = temp_v1->unk8 - 1;
            temp_a1_2 = 0x10 - temp_t8_3;
            temp_t3 = (1 << temp_t8_3) - 1;
            if (temp_v0_9 == 4) {
                var_ra_2 = 0;
                sp8 = (u64) ((u32) temp_v1->unk10 >> temp_v1->unk1C);
                sp0 = (u64) ((u32) temp_v1->unkC >> temp_v1->unk18);
                temp_t8_4 = temp_t2_3 + 1;
                sp10 = (u64) ((u32) temp_v1->unk14 >> temp_v1->unk20);
                if (temp_t8_4 >= 2) {
                    var_t9_2 = (u32) (((u32) (0U / sp0) >> temp_a1_2) * 0xFFFF) / temp_t3;
                    sp30 = temp_t3;
                    temp_t0_4 = (temp_t8_4 * 0xFFFF) - 0xFFFF;
                    var_t8_2 = 0xFFFF;
                    var_at_4 = arg0->unk38;
                    var_t3_2 = (u32) (((u32) (0U / sp8) >> temp_a1_2) * 0xFFFF) / temp_t3;
                    var_a7_3 = (u32) (((u32) (0U / sp10) >> temp_a1_2) * 0xFFFF) / temp_t3;
loop_40:
                    *var_at_4 = (u16) var_t9_2;
                    var_t9_2 = (u32) (((u32) (var_t8_2 / sp0) >> temp_a1_2) * 0xFFFF) / temp_t3;
                    temp_t2_4 = (u32) (((u32) (var_t8_2 / sp8) >> temp_a1_2) * 0xFFFF) / temp_t3;
                    M2C_TRAP_IF(sp0 == 0);
                    M2C_TRAP_IF(temp_t3 == 0);
                    temp_a6_5 = var_t8_2 + 0xFFFF;
                    M2C_TRAP_IF(sp8 == 0);
                    (arg0->unk3C + var_ra_2)->unk2 = (s16) var_t3_2;
                    M2C_TRAP_IF(temp_t3 == 0);
                    temp_t1_2 = var_ra_2 + 0x14;
                    M2C_TRAP_IF(sp10 == 0);
                    (arg0->unk40 + var_ra_2)->unk4 = (s16) var_a7_3;
                    M2C_TRAP_IF(temp_t3 == 0);
                    var_a7_3 = (u32) (((u32) (var_t8_2 / sp10) >> temp_a1_2) * 0xFFFF) / temp_t3;
                    temp_at_7 = arg0->unk38 + temp_t1_2;
                    if (var_t8_2 != temp_t0_4) {
                        *temp_at_7 = (u16) var_t9_2;
                        var_t9_2 = (u32) (((u32) (temp_a6_5 / sp0) >> temp_a1_2) * 0xFFFF) / temp_t3;
                        var_t3_2 = (u32) (((u32) (temp_a6_5 / sp8) >> temp_a1_2) * 0xFFFF) / temp_t3;
                        M2C_TRAP_IF(sp0 == 0);
                        M2C_TRAP_IF(temp_t3 == 0);
                        var_t8_2 = temp_a6_5 + 0xFFFF;
                        M2C_TRAP_IF(sp8 == 0);
                        (arg0->unk3C + temp_t1_2)->unk2 = (s16) temp_t2_4;
                        M2C_TRAP_IF(temp_t3 == 0);
                        var_ra_2 = temp_t1_2 + 0x14;
                        M2C_TRAP_IF(sp10 == 0);
                        (arg0->unk40 + temp_t1_2)->unk4 = (s16) var_a7_3;
                        M2C_TRAP_IF(temp_t3 == 0);
                        var_a7_3 = (u32) (((u32) (temp_a6_5 / sp10) >> temp_a1_2) * 0xFFFF) / temp_t3;
                        var_at_4 = arg0->unk38 + var_ra_2;
                        if (temp_a6_5 == temp_t0_4) {
                            var_a2_2 = var_at_4;
                        } else {
                            goto loop_40;
                        }
                    } else {
                        var_ra_2 = temp_t1_2;
                        var_t3_2 = temp_t2_4;
                        var_a2_2 = temp_at_7;
                    }
                    M2C_TRAP_IF(sp10 == 0);
                    M2C_TRAP_IF(sp8 == 0);
                    M2C_TRAP_IF(sp0 == 0);
                    *var_a2_2 = (u16) var_t9_2;
                    M2C_TRAP_IF(sp30 == 0);
                    (arg0->unk3C + var_ra_2)->unk2 = (s16) var_t3_2;
                    M2C_TRAP_IF(sp30 == 0);
                    M2C_TRAP_IF(sp30 == 0);
                    (arg0->unk40 + var_ra_2)->unk4 = (s16) var_a7_3;
                } else {
                    M2C_TRAP_IF(temp_t3 == 0);
                    M2C_TRAP_IF(temp_t3 == 0);
                    arg0->unk38->unk0 = (u16) ((u32) (((u32) (0U / sp0) >> temp_a1_2) * 0xFFFF) / temp_t3);
                    M2C_TRAP_IF(temp_t3 == 0);
                    M2C_TRAP_IF(sp8 == 0);
                    M2C_TRAP_IF(sp0 == 0);
                    arg0->unk3C->unk2 = (s16) ((u32) (((u32) (0U / sp8) >> temp_a1_2) * 0xFFFF) / temp_t3);
                    M2C_TRAP_IF(sp10 == 0);
                    arg0->unk40->unk4 = (s16) ((u32) (((u32) (0U / sp10) >> temp_a1_2) * 0xFFFF) / temp_t3);
                }
            } else if (temp_v0_9 == 2) {
                var_v1_4 = 0;
                var_v0_3 = 0;
                temp_a4_2 = (u32) temp_v1->unk14 >> temp_v1->unk20;
                temp_a5_5 = (u32) temp_v1->unk10 >> temp_v1->unk1C;
                temp_a3 = (u32) temp_v1->unkC >> temp_v1->unk18;
                do {
                    *(arg0->unk38 + var_v0_3) = (s16) ((u32) (((u32) ((u32) (((u32) (temp_v1->unkC & var_v1_4) >> temp_v1->unk18) * 0xFFFF) / temp_a3) >> temp_a1_2) * 0xFFFF) / temp_t3);
                    (arg0->unk38 + var_v0_3)->unk2 = (s16) ((u32) (((u32) ((u32) (((u32) (temp_v1->unk10 & var_v1_4) >> temp_v1->unk1C) * 0xFFFF) / temp_a5_5) >> temp_a1_2) * 0xFFFF) / temp_t3);
                    temp_lo_3 = (u32) (((u32) ((u32) (((u32) (temp_v1->unk14 & var_v1_4) >> temp_v1->unk20) * 0xFFFF) / temp_a4_2) >> temp_a1_2) * 0xFFFF) / temp_t3;
                    M2C_TRAP_IF(temp_t3 == 0);
                    M2C_TRAP_IF(temp_a4_2 == 0);
                    M2C_TRAP_IF(temp_t3 == 0);
                    M2C_TRAP_IF(temp_a5_5 == 0);
                    M2C_TRAP_IF(temp_t3 == 0);
                    M2C_TRAP_IF(temp_a3 == 0);
                    temp_a6_6 = arg0->unk38 + var_v0_3;
                    var_v0_3 += 0x14;
                    var_v1_4 += 1;
                    temp_a6_6->unk4 = (s16) temp_lo_3;
                } while (var_v1_4 != (temp_t2_3 + 1));
            } else if (temp_v0_9 == 0) {
                var_v1_5 = 0;
                temp_a6_7 = temp_t2_3 + 1;
                if (temp_a6_7 >= 2) {
                    temp_a5_6 = (temp_a6_7 * 0xFFFF) - 0xFFFF;
                    var_at_5 = arg0->unk38;
                    var_a6_2 = 0xFFFF;
                    var_v0_4 = (u32) (((u32) (0U / temp_t2_3) >> temp_a1_2) * 0xFFFF) / temp_t3;
loop_54:
                    *var_at_5 = (u16) var_v0_4;
                    temp_v0_10 = arg0->unk38 + var_v1_5;
                    temp_v0_10->unk2 = (u16) temp_v0_10->unk0;
                    temp_a7_3 = var_a6_2 + 0xFFFF;
                    temp_v0_11 = arg0->unk38 + var_v1_5;
                    temp_at_8 = temp_v0_11->unk0;
                    var_v1_5 += 0x14;
                    M2C_TRAP_IF(temp_t2_3 == 0);
                    temp_v0_11->unk4 = temp_at_8;
                    M2C_TRAP_IF(temp_t3 == 0);
                    var_v0_4 = (u32) (((u32) (var_a6_2 / temp_t2_3) >> temp_a1_2) * 0xFFFF) / temp_t3;
                    var_at_5 = arg0->unk38 + var_v1_5;
                    if (var_a6_2 != temp_a5_6) {
                        *var_at_5 = (u16) var_v0_4;
                        temp_lo_4 = (u32) (((u32) (temp_a7_3 / temp_t2_3) >> temp_a1_2) * 0xFFFF) / temp_t3;
                        temp_v0_12 = arg0->unk38 + var_v1_5;
                        temp_v0_12->unk2 = (u16) temp_v0_12->unk0;
                        var_a6_2 = temp_a7_3 + 0xFFFF;
                        temp_v0_13 = arg0->unk38 + var_v1_5;
                        temp_at_9 = temp_v0_13->unk0;
                        var_v1_5 += 0x14;
                        M2C_TRAP_IF(temp_t2_3 == 0);
                        temp_v0_13->unk4 = temp_at_9;
                        M2C_TRAP_IF(temp_t3 == 0);
                        var_v0_4 = temp_lo_4;
                        var_at_5 = arg0->unk38 + var_v1_5;
                        if (temp_a7_3 != temp_a5_6) {
                            goto loop_54;
                        }
                    }
                    *var_at_5 = (u16) var_v0_4;
                    temp_a6_8 = arg0->unk38 + var_v1_5;
                    temp_a6_8->unk2 = (u16) temp_a6_8->unk0;
                    M2C_TRAP_IF(temp_t3 == 0);
                    temp_t8_5 = arg0->unk38 + var_v1_5;
                    M2C_TRAP_IF(temp_t2_3 == 0);
                    temp_t8_5->unk4 = (u16) temp_t8_5->unk0;
                } else {
                    arg0->unk38->unk0 = (u16) ((u32) (((u32) (0U / temp_t2_3) >> temp_a1_2) * 0xFFFF) / temp_t3);
                    temp_t8_6 = arg0->unk38;
                    temp_t8_6->unk2 = (u16) temp_t8_6->unk0;
                    M2C_TRAP_IF(temp_t3 == 0);
                    temp_a6_9 = arg0->unk38;
                    M2C_TRAP_IF(temp_t2_3 == 0);
                    temp_a6_9->unk4 = (u16) temp_a6_9->unk0;
                }
            }
        }
        return 1;
    }
    return 0;
}
