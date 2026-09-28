? ErrorF(void *);                                   /* extern */
s64 Xalloc(s32, s32, s64);                          /* extern */
? Xfree(void *);                                    /* extern */
s64 _clone_1_miPolyArc(s64, s64, s64);              /* extern */
s32 miFillConvexPoly(s64, s64, s32, void *);        /* extern */
s32 miFillPolygon(void *, s32, void *, s32, s32);   /* extern */
? miStepDash(u16, s32 *, u8 *, u16, s32 *, void *, s64, s16); /* extern */
s64 miZeroArcSetup(s64, void *, ?);                 /* extern */
s32 miZeroClipLine(s16, s16, s32, s32, s32 *, s32 *, s32 *, s32 *); /* extern */
? nfbPolyPoint(s32, s64, s32, s32);                 /* extern */
extern s32 dbcWindowPrivateIndex;
extern s32 expGCPrivateIndex;
extern s32 expScreenPrivateIndex;
extern ? local_0x5f0a0000;
extern ? local_0x5f0b0000;
extern s32 nfbGCPrivateIndex;
extern s32 nfbWindowPrivateIndex;

void expDrawSolidRects(void *arg0, u32 arg1, s32 arg2, s32 arg3, s32 arg4, void *arg5) {
    s16 temp_v0;
    s16 temp_v0_2;
    s16 var_v0;
    s32 temp_a2;
    s32 temp_t8;
    s32 temp_t9;
    s32 var_a1_2;
    s32 var_a4;
    s32 var_t2;
    s32 var_v1;
    s8 temp_v1;
    u32 var_a1;
    u32 var_a4_2;
    void *temp_t1;
    void *temp_t3;
    void *var_a0;
    void *var_v1_2;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a4 = arg4;
    temp_t9 = arg5->unk84;
    temp_t1 = (dbcWindowPrivateIndex * 4) + temp_t9;
    temp_t3 = **(arg5->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    if (var_a1 != 0) {
        temp_v1 = temp_t1->unk1;
        if (temp_v1 == -3) {
            var_a4 <<= arg5->unk2;
        } else if (temp_v1 == -1) {
            var_a4 |= var_a4 << arg5->unk2;
        }
        temp_t8 = (*((nfbWindowPrivateIndex * 4) + temp_t9))->unk14;
        switch (temp_t8) {                          /* irregular */
        default:
            var_t2 = var_a4;
            temp_t3->unk4052C = temp_t8;
            temp_t3->unk404D4 = 0;
            var_v1 = temp_t1->unk1 * 8;
            break;
        case 13:
            var_t2 = 0;
            var_v1 = 1;
            temp_t3->unk4052C = 0xB;
            temp_t3->unk404D4 = (s32) (var_a4 & 3);
            break;
        case 12:
            var_t2 = 0;
            var_v1 = 1;
            temp_t3->unk4052C = 8;
            temp_t3->unk404D4 = (s32) (var_a4 & 0xF);
            break;
        case 14:
            var_t2 = 0;
            var_v1 = 9;
            temp_t3->unk4052C = 0xB;
            temp_t3->unk404D4 = (s32) (var_a4 & 0xC);
            break;
        }
        var_a4_2 = 1;
        if (var_a1 >= 1U) {
            var_a4_2 = var_a1;
        }
        temp_t3->unk40530 = arg2;
        temp_t3->unk4077C = (s32) (var_t2 & 0xFFFFFF);
        temp_t3->unk4077C = arg3;
        temp_t3->unk4077C = var_v1;
        temp_t3->unk404C0 = 0;
        if (var_a4_2 & 1) {
            temp_t3->unk4077C = (s32) var_a0->unk0;
            temp_t3->unk4077C = (s32) var_a0->unk2;
            temp_t3->unk4077C = (s32) var_a0->unk4;
            temp_v0 = var_a0->unk6;
            var_a1 -= 1;
            var_a0 += 8;
            temp_t3->unk4077C = (s32) temp_v0;
        }
        temp_a2 = (s32) var_a4_2 >> 1;
        var_v1_2 = var_a0;
        if (temp_a2 != 0) {
            if (temp_a2 >= 2) {
                var_a1_2 = var_a1 - 2;
                var_v0 = var_v1_2->unk0;
                do {
                    temp_t3->unk4077C = (s32) var_v0;
                    temp_t3->unk4077C = (s32) var_v1_2->unk2;
                    temp_t3->unk4077C = (s32) var_v1_2->unk4;
                    temp_t3->unk4077C = (s32) var_v1_2->unk6;
                    temp_t3->unk4077C = (s32) var_v1_2->unk8;
                    temp_t3->unk4077C = (s32) var_v1_2->unkA;
                    temp_t3->unk4077C = (s32) var_v1_2->unkC;
                    temp_v0_2 = var_v1_2->unkE;
                    var_a1_2 -= 2;
                    var_v1_2 += 0x10;
                    temp_t3->unk4077C = (s32) temp_v0_2;
                    var_v0 = var_v1_2->unk0;
                } while (var_a1_2 != 0);
                temp_t3->unk4077C = (s32) var_v0;
                temp_t3->unk4077C = (s32) var_v1_2->unk2;
                temp_t3->unk4077C = (s32) var_v1_2->unk4;
                temp_t3->unk4077C = (s32) var_v1_2->unk6;
                temp_t3->unk4077C = (s32) var_v1_2->unk8;
                temp_t3->unk4077C = (s32) var_v1_2->unkA;
                temp_t3->unk4077C = (s32) var_v1_2->unkC;
                temp_t3->unk4077C = (s32) var_v1_2->unkE;
            } else {
                temp_t3->unk4077C = (s32) var_v1_2->unk0;
                temp_t3->unk4077C = (s32) var_v1_2->unk2;
                temp_t3->unk4077C = (s32) var_v1_2->unk4;
                temp_t3->unk4077C = (s32) var_v1_2->unk6;
                temp_t3->unk4077C = (s32) var_v1_2->unk8;
                temp_t3->unk4077C = (s32) var_v1_2->unkA;
                temp_t3->unk4077C = (s32) var_v1_2->unkC;
                temp_t3->unk4077C = (s32) var_v1_2->unkE;
            }
        }
        temp_t3->unk407A8 = 0;
    }
}

void expTileRects(s64 arg0, s64 arg1, s64 arg2, u32 arg3, u32 arg4, u64 arg5, s64 arg6, u32 arg7, s32 arg_sp4, void *arg_spC) {
    s64 spD8;
    s64 spD0;
    u64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s16 sp16;
    s16 sp14;                                       /* compiler-managed */
    s16 sp12;
    s16 sp10;
    s32 spC;
    u8 sp8;
    s32 sp4;
    ? (*temp_s6)(s16 *, s64, u32, u32, s32, void *);
    s16 temp_a0_7;
    s16 temp_a1_3;
    s16 temp_v0_14;
    s16 temp_v0_15;
    s16 temp_v0_16;
    s16 temp_v0_17;
    s16 temp_v0_18;
    s16 temp_v0_19;
    s16 temp_v0_20;
    s16 temp_v1_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_at_2;
    s32 temp_s0_2;
    s32 temp_t0;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t8_4;
    s32 temp_t9;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_13;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_12;
    s32 var_a0_4;
    s32 var_a0_6;
    s32 var_a0_8;
    s32 var_a2_10;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a2_8;
    s32 var_a2_9;
    s32 var_a4;
    s32 var_a5_2;
    s32 var_at_10;
    s32 var_at_11;
    s32 var_at_12;
    s32 var_at_13;
    s32 var_at_14;
    s32 var_at_3;
    s32 var_at_4;
    s32 var_at_5;
    s32 var_at_6;
    s32 var_at_7;
    s32 var_at_8;
    s32 var_at_9;
    s32 var_hi;
    s32 var_hi_2;
    s32 var_hi_3;
    s32 var_hi_4;
    s32 var_hi_5;
    s32 var_ra_2;
    s32 var_ra_3;
    s32 var_ra_4;
    s32 var_ra_5;
    s32 var_t9;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_5;
    s32 var_v1_6;
    s32 var_v1_8;
    s32 var_v1_9;
    s64 temp_a1_4;
    s64 temp_a2_3;
    s64 temp_lo;
    s64 temp_t2_3;
    s64 temp_t2_4;
    s64 temp_t2_5;
    s64 temp_v0_2;
    s64 var_a0_13;
    s64 var_a0_2;
    s64 var_at;
    s64 var_at_2;
    s64 var_ra;
    s64 var_s0;
    s64 var_v1;
    s8 temp_at;
    u16 *var_a2;
    u16 *var_a2_2;
    u16 temp_a0_8;
    u16 temp_t1;
    u16 temp_t2;
    u16 temp_t2_2;
    u16 var_at_16;
    u32 *temp_at_3;
    u32 *temp_at_4;
    u32 *temp_at_5;
    u32 *temp_at_6;
    u32 *temp_v0_12;
    u32 *temp_v0_3;
    u32 *temp_v0_6;
    u32 *temp_v0_9;
    u32 *temp_v1;
    u32 *var_a4_10;
    u32 *var_a4_12;
    u32 *var_a4_13;
    u32 *var_a4_14;
    u32 *var_a4_3;
    u32 *var_a4_4;
    u32 *var_a4_6;
    u32 *var_a4_7;
    u32 *var_a4_9;
    u32 temp_a0_5;
    u32 temp_a0_6;
    u32 var_a0;
    u32 var_a0_3;
    u32 var_a0_5;
    u32 var_a0_7;
    u32 var_a0_9;
    u32 var_a5;
    u32 var_a6;
    u32 var_a7;
    u32 var_at_15;
    u32 var_s8;
    u32 var_t1;
    u32 var_v1_10;
    u32 var_v1_2;
    u32 var_v1_7;
    u8 temp_v0;
    void *temp_s0;
    void *temp_s8;
    void *temp_t0_2;
    void *var_a4_11;
    void *var_a4_2;
    void *var_a4_5;
    void *var_a4_8;

    var_ra = saved_reg_ra;
    sp98 = arg6;
    spC8 = arg5;
    sp88 = arg1;
    temp_t9 = arg_spC->unk84;
    temp_v0 = arg_spC->unk3;
    sp28 = arg0;
    spB0 = (s64) ((s32) temp_v0 >> 4);
    temp_a1 = expScreenPrivateIndex * 4;
    temp_s8 = *((nfbWindowPrivateIndex * 4) + temp_t9);
    temp_s0 = (dbcWindowPrivateIndex * 4) + temp_t9;
    sp20 = (s64) **(arg_spC->unk10->unk1B4 + temp_a1);
    switch (arg7) {                                 /* switch 1; irregular */
    default:                                        /* switch 1 */
        temp_at = temp_s0->unk1;
        if (temp_at != -3) {
            if (temp_at == -1) {
                arg_sp4 |= arg_sp4 << arg_spC->unk2;
            }
        } else {
            arg_sp4 <<= arg_spC->unk2;
        }
        sp18 = 0;
        switch (temp_v0) {                          /* switch 2; irregular */
        default:                                    /* switch 2 */
            var_a5 = sp0;
            break;
        case 24:                                    /* switch 2 */
        case 32:                                    /* switch 2 */
            var_a5 = arg4;
            sp8 = 0;
            spC = 0x141;
            sp4 = 0x100;
            break;
        case 16:                                    /* switch 2 */
            if (temp_s8->unk14 != 2) {
                var_a5 = (u32) (arg4 + 1) >> 1;
                sp8 = 1;
                sp4 = 0x80;
                if (arg4 & 1) {
                    spC = 0x142;
                } else {
                    spC = 0x141;
                }
            } else {
                var_a5 = arg4;
                sp8 = 0;
                sp18 = 1;
                spC = 0x141;
                sp4 = 0x100;
            }
            break;
        case 8:                                     /* switch 2 */
            var_a5 = (u32) (arg4 + 3) >> 2;
            sp8 = 2;
            sp4 = 0x40;
            if (arg4 & 3) {
                spC = 0x142;
            } else {
                spC = 0x141;
            }
            break;
        }
        temp_lo = var_a5 * spC8;
        spD8 = (s64) var_a5;
        sp90 = temp_lo;
        if (temp_lo < 0x1301) {
            if (sp18 != 0) {
                temp_v0_2 = Xalloc(temp_lo * 4, temp_a1, (s64) var_a5);
                if (temp_v0_2 != 0) {
                    var_v1 = temp_v0_2;
                    if (spC8 != 0) {
                        var_a0 = arg4;
                        if ((s32) arg4 < 0) {
                            var_a0 = 0;
                        }
                        var_a5_2 = 0;
                        var_a4 = 0;
loop_88:
                        var_at = var_v1;
                        var_a6 = var_a0;
                        if (arg4 != 0) {
                            var_a2 = var_a4 + arg2;
                            if (arg4 & 1) {
                                temp_t2 = *var_a2;
                                var_at += 4;
                                var_a2 += 2;
                                var_at->unk-4 = (s32) (((temp_t2 & 0xF0) << 8) | ((temp_t2 & 0xF00) << 0xC) | ((temp_t2 & 0xF) * 0x10));
                            }
                            if (((s32) arg4 >> 1) != 0) {
                                var_at_2 = var_at;
                                var_a2_2 = var_a2;
                                do {
                                    temp_t2_2 = var_a2_2->unk0;
                                    *var_at_2 = (s32) (((temp_t2_2 & 0xF0) << 8) | ((temp_t2_2 & 0xF00) << 0xC) | ((temp_t2_2 & 0xF) * 0x10));
                                    temp_t1 = var_a2_2->unk2;
                                    var_a2_2 += 4;
                                    var_at_2 += 8;
                                    var_at_2->unk-4 = (s32) (((temp_t1 & 0xF0) << 8) | ((temp_t1 & 0xF00) << 0xC) | ((temp_t1 & 0xF) * 0x10));
                                } while (var_at_2 != ((arg4 * 4) + var_v1));
                            }
                        } else {
                            var_a6 = 0;
                        }
                        var_a5_2 += 1;
                        var_a4 += (arg3 >> 1) * 2;
                        var_v1 += var_a6 * 4;
                        if (var_a5_2 != spC8) {
                            goto loop_88;
                        }
                    }
                    var_a0_2 = temp_v0_2;
                    var_t9 = 0;
                    var_ra = unksp30;
                    goto block_93;
                }
                ErrorF(&local_0x5f0a0000 - 0xE78);
                return;
            }
            var_a0_2 = arg2;
            var_t9 = (arg3 >> 2) - spD8;
            if (var_t9 < 0) {
                var_t9 = 0;
            }
block_93:
            spD0 = var_a0_2;
            temp_at_2 = temp_s8->unk14;
            switch (temp_at_2) {                    /* switch 3; irregular */
            default:                                /* switch 3 */
                sp20->unk4052C = (s32) (temp_at_2 | 0x1000);
                sp20->unk404D4 = 0;
                var_v0 = arg_sp4;
                var_v1_2 = temp_s0->unk1 * 8;
                break;
            case 13:                                /* switch 3 */
                var_v1_2 = 1;
                var_v0 = 0;
                sp20->unk4052C = 0x100B;
                sp20->unk404D4 = (s32) (arg_sp4 & 3);
                break;
            case 12:                                /* switch 3 */
                var_v1_2 = 1;
                var_v0 = 0;
                sp20->unk4052C = 0x1008;
                sp20->unk404D4 = (s32) (arg_sp4 & 0xF);
                break;
            case 14:                                /* switch 3 */
                var_v1_2 = 9;
                var_v0 = 0;
                sp20->unk4052C = 0x100B;
                sp20->unk404D4 = (s32) (arg_sp4 & 0xC);
                break;
            }
            unksp30 = var_ra;
            var_at_3 = 0;
            temp_s0_2 = (s32) (((u32) (temp_lo >> 5) >> 0x1A) + temp_lo) >> 6;
            sp20->unk40530 = 0;
            sp20->unk4077C = (u32) (var_v0 & 0xFFFFFF);
            sp20->unk4077C = arg7;
            sp20->unk4077C = var_v1_2;
            sp20->unk404E8 = sp4;
            sp20->unk4077C = arg4;
            sp20->unk4077C = (u32) spC8;
            sp20->unk4077C = (u32) sp8;
            sp20->unk4077C = 0xD022U;
            if (temp_s0_2 != 0) {
                unksp30 = var_ra;
                sp90 = temp_lo - (temp_s0_2 << 6);
                if (temp_s0_2 > 0) {
                    var_ra_2 = 0;
                    var_a4_2 = (void *) spD0;
                    temp_t8 = var_t9 * 4;
loop_116:
                    var_at_4 = var_at_3 + 1;
                    M2C_TRAP_IF(spD8 == 0);
                    var_a4_3 = var_a4_2 + 4;
                    var_v1_3 = 0;
                    sp20->unk404EC = (s32) var_a4_3->unk-4;
                    if ((var_at_4 % spD8) == 0) {
                        var_at_4 += var_t9;
                        var_a4_3 += temp_t8;
                    }
                    var_a2_3 = var_at_4 + 1;
                    var_at_5 = (var_a2_3 % spD8) != 0;
                    if (var_at_5 == 0) {
                        var_a2_3 += var_t9;
                    }
                    var_a0_3 = *var_a4_3;
                    var_a2_4 = var_a2_3 + 1;
                    var_hi = var_a2_4 % spD8;
                    do {
                        sp20->unk4077C = var_a0_3;
                        M2C_TRAP_IF(spD8 == 0);
                        temp_v0_3 = var_a4_3 + 4;
                        var_a4_4 = temp_t8 + temp_v0_3;
                        if (var_at_5 != 0) {
                            var_a4_4 = temp_v0_3;
                        }
                        var_a0_4 = var_t9 + var_a2_4;
                        temp_v0_4 = var_hi != 0;
                        if (temp_v0_4 != 0) {
                            var_a0_4 = var_a2_4;
                        }
                        temp_a0 = var_a0_4 + 1;
                        var_v1_3 += 2;
                        sp20->unk4077C = (u32) *var_a4_4;
                        M2C_TRAP_IF(spD8 == 0);
                        temp_at_3 = var_a4_4 + 4;
                        var_a4_3 = temp_t8 + temp_at_3;
                        if (temp_v0_4 != 0) {
                            var_a4_3 = temp_at_3;
                        }
                        var_v0_2 = var_t9 + temp_a0;
                        var_at_5 = (temp_a0 % spD8) != 0;
                        if (var_at_5 != 0) {
                            var_v0_2 = temp_a0;
                        }
                        var_a2_4 = var_v0_2 + 1;
                        var_hi = var_a2_4 % spD8;
                        var_a0_3 = *var_a4_3;
                    } while (var_v1_3 != 0x3E);
                    var_ra_2 += 1;
                    var_a4_2 = var_a4_3 + 4;
                    if (var_at_5 == 0) {
                        var_a4_2 += temp_t8;
                    }
                    M2C_TRAP_IF(spD8 == 0);
                    sp20->unk4077C = var_a0_3;
                    var_at_3 = var_v0_2;
                    if (var_ra_2 != temp_s0_2) {
                        goto loop_116;
                    }
                }
            }
            if (sp90 > 0) {
                temp_v0_5 = (s32) (((u32) (sp90 >> 4) >> 0x1B) + sp90) >> 5;
                if (temp_v0_5 != 0) {
                    sp90 -= temp_v0_5 << 5;
                    if (temp_v0_5 > 0) {
                        var_ra_3 = 0;
                        temp_t8_2 = var_t9 * 4;
                        var_a4_5 = (var_at_3 * 4) + (void *) spD0;
loop_138:
                        var_at_6 = var_at_3 + 1;
                        M2C_TRAP_IF(spD8 == 0);
                        var_a4_6 = var_a4_5 + 4;
                        var_v1_4 = 0;
                        sp20->unk404F0 = (s32) var_a4_6->unk-4;
                        if ((var_at_6 % spD8) == 0) {
                            var_at_6 += var_t9;
                            var_a4_6 += temp_t8_2;
                        }
                        var_a2_5 = var_at_6 + 1;
                        var_at_7 = (var_a2_5 % spD8) != 0;
                        if (var_at_7 == 0) {
                            var_a2_5 += var_t9;
                        }
                        var_a0_5 = *var_a4_6;
                        var_a2_6 = var_a2_5 + 1;
                        var_hi_2 = var_a2_6 % spD8;
                        do {
                            sp20->unk4077C = var_a0_5;
                            M2C_TRAP_IF(spD8 == 0);
                            temp_v0_6 = var_a4_6 + 4;
                            var_a4_7 = temp_t8_2 + temp_v0_6;
                            if (var_at_7 != 0) {
                                var_a4_7 = temp_v0_6;
                            }
                            var_a0_6 = var_t9 + var_a2_6;
                            temp_v0_7 = var_hi_2 != 0;
                            if (temp_v0_7 != 0) {
                                var_a0_6 = var_a2_6;
                            }
                            temp_a0_2 = var_a0_6 + 1;
                            var_v1_4 += 2;
                            sp20->unk4077C = (u32) *var_a4_7;
                            M2C_TRAP_IF(spD8 == 0);
                            temp_at_4 = var_a4_7 + 4;
                            var_a4_6 = temp_t8_2 + temp_at_4;
                            if (temp_v0_7 != 0) {
                                var_a4_6 = temp_at_4;
                            }
                            var_v0_3 = var_t9 + temp_a0_2;
                            var_at_7 = (temp_a0_2 % spD8) != 0;
                            if (var_at_7 != 0) {
                                var_v0_3 = temp_a0_2;
                            }
                            var_a2_6 = var_v0_3 + 1;
                            var_hi_2 = var_a2_6 % spD8;
                            var_a0_5 = *var_a4_6;
                        } while (var_v1_4 != 0x1E);
                        var_ra_3 += 1;
                        var_a4_5 = var_a4_6 + 4;
                        if (var_at_7 == 0) {
                            var_a4_5 += temp_t8_2;
                        }
                        M2C_TRAP_IF(spD8 == 0);
                        sp20->unk4077C = var_a0_5;
                        var_at_3 = var_v0_3;
                        if (var_ra_3 != temp_v0_5) {
                            goto loop_138;
                        }
                    }
                }
                if (sp90 > 0) {
                    temp_v0_8 = (s32) (((u32) (sp90 >> 3) >> 0x1C) + sp90) >> 4;
                    if (temp_v0_8 != 0) {
                        sp90 -= temp_v0_8 * 0x10;
                        if (temp_v0_8 > 0) {
                            var_ra_4 = 0;
                            temp_t8_3 = var_t9 * 4;
                            var_a4_8 = (var_at_3 * 4) + (void *) spD0;
loop_160:
                            var_at_8 = var_at_3 + 1;
                            M2C_TRAP_IF(spD8 == 0);
                            var_a4_9 = var_a4_8 + 4;
                            var_v1_5 = 0;
                            sp20->unk404F4 = (s32) var_a4_9->unk-4;
                            if ((var_at_8 % spD8) == 0) {
                                var_at_8 += var_t9;
                                var_a4_9 += temp_t8_3;
                            }
                            var_a2_7 = var_at_8 + 1;
                            var_at_9 = (var_a2_7 % spD8) != 0;
                            if (var_at_9 == 0) {
                                var_a2_7 += var_t9;
                            }
                            var_a0_7 = *var_a4_9;
                            var_a2_8 = var_a2_7 + 1;
                            var_hi_3 = var_a2_8 % spD8;
                            do {
                                sp20->unk4077C = var_a0_7;
                                M2C_TRAP_IF(spD8 == 0);
                                temp_v0_9 = var_a4_9 + 4;
                                var_a4_10 = temp_t8_3 + temp_v0_9;
                                if (var_at_9 != 0) {
                                    var_a4_10 = temp_v0_9;
                                }
                                var_a0_8 = var_t9 + var_a2_8;
                                temp_v0_10 = var_hi_3 != 0;
                                if (temp_v0_10 != 0) {
                                    var_a0_8 = var_a2_8;
                                }
                                temp_a0_3 = var_a0_8 + 1;
                                var_v1_5 += 2;
                                sp20->unk4077C = (u32) *var_a4_10;
                                M2C_TRAP_IF(spD8 == 0);
                                temp_at_5 = var_a4_10 + 4;
                                var_a4_9 = temp_t8_3 + temp_at_5;
                                if (temp_v0_10 != 0) {
                                    var_a4_9 = temp_at_5;
                                }
                                var_v0_4 = var_t9 + temp_a0_3;
                                var_at_9 = (temp_a0_3 % spD8) != 0;
                                if (var_at_9 != 0) {
                                    var_v0_4 = temp_a0_3;
                                }
                                var_a2_8 = var_v0_4 + 1;
                                var_hi_3 = var_a2_8 % spD8;
                                var_a0_7 = *var_a4_9;
                            } while (var_v1_5 != 0xE);
                            var_ra_4 += 1;
                            var_a4_8 = var_a4_9 + 4;
                            if (var_at_9 == 0) {
                                var_a4_8 += temp_t8_3;
                            }
                            M2C_TRAP_IF(spD8 == 0);
                            sp20->unk4077C = var_a0_7;
                            var_at_3 = var_v0_4;
                            if (var_ra_4 != temp_v0_8) {
                                goto loop_160;
                            }
                        }
                    }
                    if (sp90 > 0) {
                        temp_v0_11 = (s32) (((u32) (sp90 >> 2) >> 0x1D) + sp90) >> 3;
                        if (temp_v0_11 != 0) {
                            sp90 -= temp_v0_11 * 8;
                            if (temp_v0_11 > 0) {
                                var_ra_5 = 0;
                                temp_t8_4 = var_t9 * 4;
                                var_a4_11 = (var_at_3 * 4) + (void *) spD0;
loop_182:
                                var_at_10 = var_at_3 + 1;
                                M2C_TRAP_IF(spD8 == 0);
                                var_a4_12 = var_a4_11 + 4;
                                var_v1_6 = 0;
                                sp20->unk404F8 = (s32) var_a4_12->unk-4;
                                if ((var_at_10 % spD8) == 0) {
                                    var_at_10 += var_t9;
                                    var_a4_12 += temp_t8_4;
                                }
                                var_a2_9 = var_at_10 + 1;
                                var_at_11 = (var_a2_9 % spD8) != 0;
                                if (var_at_11 == 0) {
                                    var_a2_9 += var_t9;
                                }
                                var_a0_9 = *var_a4_12;
                                var_a2_10 = var_a2_9 + 1;
                                var_hi_4 = var_a2_10 % spD8;
                                do {
                                    sp20->unk4077C = var_a0_9;
                                    M2C_TRAP_IF(spD8 == 0);
                                    temp_v0_12 = var_a4_12 + 4;
                                    var_a4_13 = temp_t8_4 + temp_v0_12;
                                    if (var_at_11 != 0) {
                                        var_a4_13 = temp_v0_12;
                                    }
                                    var_a0_10 = var_t9 + var_a2_10;
                                    temp_v0_13 = var_hi_4 != 0;
                                    if (temp_v0_13 != 0) {
                                        var_a0_10 = var_a2_10;
                                    }
                                    temp_a0_4 = var_a0_10 + 1;
                                    var_v1_6 += 2;
                                    sp20->unk4077C = (u32) *var_a4_13;
                                    M2C_TRAP_IF(spD8 == 0);
                                    temp_at_6 = var_a4_13 + 4;
                                    var_a4_12 = temp_t8_4 + temp_at_6;
                                    if (temp_v0_13 != 0) {
                                        var_a4_12 = temp_at_6;
                                    }
                                    var_v0_5 = var_t9 + temp_a0_4;
                                    var_at_11 = (temp_a0_4 % spD8) != 0;
                                    if (var_at_11 != 0) {
                                        var_v0_5 = temp_a0_4;
                                    }
                                    var_a2_10 = var_v0_5 + 1;
                                    var_hi_4 = var_a2_10 % spD8;
                                    var_a0_9 = *var_a4_12;
                                } while (var_v1_6 != 6);
                                var_ra_5 += 1;
                                var_a4_11 = var_a4_12 + 4;
                                if (var_at_11 == 0) {
                                    var_a4_11 += temp_t8_4;
                                }
                                M2C_TRAP_IF(spD8 == 0);
                                sp20->unk4077C = var_a0_9;
                                var_at_3 = var_v0_5;
                                if (var_ra_5 != temp_v0_11) {
                                    goto loop_182;
                                }
                            }
                        }
                        if (sp90 > 0) {
                            var_at_12 = var_at_3 + 1;
                            M2C_TRAP_IF(spD8 == 0);
                            sp20->unk404F8 = (s32) *((var_at_3 * 4) + (void *) spD0);
                            if ((var_at_12 % spD8) == 0) {
                                var_at_12 += var_t9;
                            }
                            if (sp90 >= 2) {
                                temp_a2 = sp90 - 1;
                                var_a4_14 = (var_at_12 * 4) + (void *) spD0;
                                if (temp_a2 >= 2) {
                                    var_a0_11 = var_at_12 + 1;
                                    temp_t0 = (var_a0_11 % spD8) != 0;
                                    if (temp_t0 == 0) {
                                        var_a0_11 += var_t9;
                                    }
                                    var_v1_7 = *var_a4_14;
                                    var_at_13 = 1;
                                    var_v0_6 = temp_t0;
                                    var_a0_12 = var_a0_11 + 1;
                                    var_hi_5 = var_a0_12 % spD8;
                                    do {
                                        sp20->unk4077C = var_v1_7;
                                        M2C_TRAP_IF(spD8 == 0);
                                        temp_v1 = var_a4_14 + 4;
                                        var_a4_14 = (var_t9 * 4) + temp_v1;
                                        if (var_v0_6 != 0) {
                                            var_a4_14 = temp_v1;
                                        }
                                        var_v1_8 = var_t9 + var_a0_12;
                                        var_v0_6 = var_hi_5 != 0;
                                        if (var_v0_6 != 0) {
                                            var_v1_8 = var_a0_12;
                                        }
                                        var_a0_12 = var_v1_8 + 1;
                                        var_hi_5 = var_a0_12 % spD8;
                                        var_at_13 += 1;
                                        var_v1_7 = *var_a4_14;
                                    } while (var_at_13 != temp_a2);
                                    M2C_TRAP_IF(spD8 == 0);
                                    var_t1 = var_v1_7;
                                } else {
                                    M2C_TRAP_IF(spD8 == 0);
                                    var_t1 = *var_a4_14;
                                }
                                sp20->unk4077C = var_t1;
                            }
                            if (sp90 < 8) {
                                var_at_14 = 0;
                                temp_a1_2 = 8 - sp90;
                                var_v0_7 = temp_a1_2 & 3;
                                if (var_v0_7 != 0) {
                                    do {
                                        var_at_14 += 1;
                                        var_v0_7 -= 1;
                                        sp20->unk4077C = 0U;
                                    } while (var_v0_7 != 0);
                                }
                                temp_a2_2 = temp_a1_2 >> 2;
                                if (temp_a2_2 != 0) {
                                    if (temp_a2_2 >= 2) {
                                        var_v1_9 = var_at_14 + 4;
                                        sp20->unk4077C = 0U;
                                        sp20->unk4077C = 0U;
loop_70:
                                        sp20->unk4077C = 0U;
                                        sp20->unk4077C = 0U;
                                        sp20->unk4077C = 0U;
                                        sp20->unk4077C = 0U;
                                        if (var_v1_9 != (temp_a1_2 - 4)) {
                                            sp20->unk4077C = 0U;
                                            sp20->unk4077C = 0U;
                                            sp20->unk4077C = 0U;
                                            sp20->unk4077C = 0U;
                                            if (var_v1_9 != (temp_a1_2 - 8)) {
                                                sp20->unk4077C = 0U;
                                                sp20->unk4077C = 0U;
                                                sp20->unk4077C = 0U;
                                                sp20->unk4077C = 0U;
                                                if (var_v1_9 != (temp_a1_2 - 0xC)) {
                                                    sp20->unk4077C = 0U;
                                                    sp20->unk4077C = 0U;
                                                    sp20->unk4077C = 0U;
                                                    var_v1_9 += 0x10;
                                                    sp20->unk4077C = 0U;
                                                    if (var_v1_9 != temp_a1_2) {
                                                        goto loop_70;
                                                    }
                                                }
                                            }
                                        }
                                        sp20->unk4077C = 0U;
                                    } else {
                                        sp20->unk4077C = 0U;
                                        sp20->unk4077C = 0U;
                                        sp20->unk4077C = 0U;
                                    }
                                    sp20->unk4077C = 0U;
                                }
                            }
                        }
                    }
                }
            }
            if (sp18 != 0) {
                Xfree((void *) spD0);
            }
            if (sp88 != 0) {
                var_a0_13 = sp28;
                temp_t0_2 = (spC * 4) + sp20;
                if (sp88 >= 2) {
                    temp_t0_2->unk40000 = 0;
                    do {
                        sp20->unk4077C = (u32) sp98->unk0;
                        sp20->unk4077C = (u32) var_a0_13->unk0;
                        sp20->unk4077C = (u32) sp98->unk2;
                        sp20->unk4077C = (u32) var_a0_13->unk2;
                        sp20->unk4077C = (u32) var_a0_13->unk4;
                        temp_v0_14 = var_a0_13->unk6;
                        var_a0_13 += 8;
                        sp20->unk4077C = (u32) temp_v0_14;
                        temp_t0_2->unk40000 = 0;
                    } while (var_a0_13 != (((sp88 * 8) + sp28) - 8));
                    sp20->unk4077C = (u32) sp98->unk0;
                    sp20->unk4077C = (u32) var_a0_13->unk0;
                    sp20->unk4077C = (u32) sp98->unk2;
                    sp20->unk4077C = (u32) var_a0_13->unk2;
                    sp20->unk4077C = (u32) var_a0_13->unk4;
                    sp20->unk4077C = (u32) var_a0_13->unk6;
                } else {
                    temp_t0_2->unk40000 = 0;
                    sp20->unk4077C = (u32) sp98->unk0;
                    sp20->unk4077C = (u32) var_a0_13->unk0;
                    sp20->unk4077C = (u32) sp98->unk2;
                    sp20->unk4077C = (u32) var_a0_13->unk2;
                    sp20->unk4077C = (u32) var_a0_13->unk4;
                    sp20->unk4077C = (u32) var_a0_13->unk6;
                }
            }
        } else {
            temp_s6 = temp_s8->unk0->unk8;
            if (sp88 != 0) {
                var_s0 = sp28;
                spB8 = (sp88 * 8) + sp28;
loop_23:
                temp_v1_2 = var_s0->unk0;
                sp10 = temp_v1_2;
                temp_a1_3 = var_s0->unk2;
                sp12 = temp_a1_3;
                var_s8 = (u32) (temp_v1_2 - sp98->unk0) % arg4;
                M2C_TRAP_IF(arg4 == 0);
                if ((s32) var_s8 < 0) {
                    var_s8 += arg4;
                }
                var_at_15 = (u32) (temp_a1_3 - sp98->unk2) % spC8;
                M2C_TRAP_IF(spC8 == 0);
                if ((s32) var_at_15 < 0) {
                    var_at_15 += spC8;
                }
                temp_v0_15 = var_s0->unk4;
                temp_a0_5 = (temp_v1_2 + arg4) - var_s8;
                var_v1_10 = temp_a0_5;
                if (temp_a0_5 >= (u32) temp_v0_15) {
                    var_v1_10 = (u32) temp_v0_15;
                }
                sp14 = (s16) var_v1_10;
                temp_v0_16 = var_s0->unk6;
                temp_a0_6 = (temp_a1_3 + spC8) - var_at_15;
                var_a7 = temp_a0_6;
                if (temp_a0_6 >= (u32) temp_v0_16) {
                    var_a7 = (u32) temp_v0_16;
                }
                sp16 = (s16) var_a7;
                MULTU_HI(var_at_15, arg3);
                temp_a1_4 = var_s8 << spB0;
                spA8 = temp_a1_4;
                temp_a2_3 = (var_at_15 * arg3) + arg2;
                spC0 = temp_a2_3;
                temp_s6(&sp10, temp_a1_4 + temp_a2_3, arg3, arg7, arg_sp4, arg_spC);
                if (sp14 < var_s0->unk4) {
loop_33:
                    sp10 = sp14;
                    temp_t2_3 = (s64) ((sp14 + arg4) << 0x30) >> 0x30;
                    sp14 = (s16) temp_t2_3;
                    temp_v0_17 = var_s0->unk4;
                    if (temp_v0_17 < temp_t2_3) {
                        sp14 = temp_v0_17;
                    }
                    temp_s6(&sp10, spC0, arg3, arg7, arg_sp4, arg_spC);
                    if (sp14 < var_s0->unk4) {
                        goto loop_33;
                    }
                }
                if (sp16 < var_s0->unk6) {
                    spA0 = spA8 + arg2;
loop_38:
                    sp12 = sp16;
                    temp_t2_4 = (s64) ((sp16 + spC8) << 0x30) >> 0x30;
                    sp16 = (s16) temp_t2_4;
                    temp_v0_18 = var_s0->unk6;
                    if (temp_v0_18 < temp_t2_4) {
                        sp16 = temp_v0_18;
                    }
                    temp_a0_7 = var_s0->unk0;
                    sp10 = temp_a0_7;
                    temp_v0_19 = var_s0->unk4;
                    temp_a0_8 = (temp_a0_7 + arg4) - var_s8;
                    var_at_16 = temp_a0_8;
                    if (temp_a0_8 >= (u32) temp_v0_19) {
                        var_at_16 = (u16) temp_v0_19;
                    }
                    sp14 = var_at_16;
                    temp_s6(&sp10, spA0, arg3, arg7, arg_sp4, arg_spC);
                    if ((s16) sp14 < var_s0->unk4) {
loop_46:
                        sp10 = (s16) sp14;
                        temp_t2_5 = (s64) (((s16) sp14 + arg4) << 0x30) >> 0x30;
                        sp14 = (s16) temp_t2_5;
                        temp_v0_20 = var_s0->unk4;
                        if (temp_v0_20 < temp_t2_5) {
                            sp14 = temp_v0_20;
                        }
                        temp_s6(&sp10, arg2, arg3, arg7, arg_sp4, arg_spC);
                        if (sp14 < var_s0->unk4) {
                            goto loop_46;
                        }
                    }
                    if (sp16 < var_s0->unk6) {
                        goto loop_38;
                    }
                }
                var_s0 += 8;
                if (var_s0 != spB8) {
                    goto loop_23;
                }
            }
        case 5:                                     /* switch 1 */
            return;
        }
        break;
    case 0:                                         /* switch 1 */
        temp_s8->unk0->unk4(sp28, sp88, 0, 3, arg_sp4, arg_spC);
        break;
    case 15:                                        /* switch 1 */
        temp_s8->unk0->unk4(sp28, sp88, arg_sp4, 3, arg_sp4, arg_spC);
        break;
    case 10:                                        /* switch 1 */
        temp_s8->unk0->unk4(sp28, sp88, arg_sp4, 0xA, arg_sp4, arg_spC);
        break;
    }
}

void expStippledFillRects(void *arg0, void *arg1, void *arg2, s32 arg3) {
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp8;
    s16 sp6;
    s16 sp4;
    ? (*temp_s3)(void *, s32 *, s32, s32, s64, s64, s64, void *);
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_a0_4;
    s16 temp_a0_5;
    s16 temp_a0_6;
    s16 temp_a1_2;
    s16 temp_a1_3;
    s16 temp_a1_4;
    s16 temp_at_7;
    s16 temp_v0;
    s16 temp_v1_2;
    s16 var_v0_2;
    s16 var_v1;
    s16 var_v1_2;
    s16 var_v1_3;
    s16 var_v1_4;
    s32 *temp_ra;
    s32 *temp_s4;
    s32 *temp_s7;
    s32 *var_a1;
    s32 *var_a1_2;
    s32 *var_a1_3;
    s32 *var_a5;
    s32 *var_a5_2;
    s32 *var_a6_3;
    s32 *var_v0_11;
    s32 *var_v0_13;
    s32 *var_v0_15;
    s32 *var_v0_3;
    s32 *var_v0_5;
    s32 *var_v0_7;
    s32 *var_v1_13;
    s32 *var_v1_7;
    s32 temp_a0_10;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a0_9;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_at_5;
    s32 temp_at_6;
    s32 temp_s2_2;
    s32 temp_t9;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_at_4;
    s32 var_at_5;
    s32 var_at_6;
    s32 var_s4;
    s32 var_s5;
    s32 var_v0;
    s32 var_v0_12;
    s32 var_v0_14;
    s32 var_v0_16;
    s32 var_v0_4;
    s32 var_v0_6;
    s32 var_v0_8;
    s32 var_v1_10;
    s32 var_v1_11;
    s32 var_v1_12;
    s32 var_v1_14;
    s32 var_v1_15;
    s32 var_v1_16;
    s32 var_v1_5;
    s32 var_v1_6;
    s32 var_v1_8;
    s32 var_v1_9;
    s64 var_a6;
    s64 var_t8;
    s64 var_v0_17;
    s64 var_v0_9;
    u16 temp_s1;
    u16 temp_s6;
    void *temp_a1;
    void *temp_s2;
    void *temp_v1;
    void *var_a1_4;
    void *var_a2;
    void *var_s0;
    void *var_s7;
    void *var_v0_10;
    void *var_v1_17;

    var_a2 = arg2;
    var_a7 = 1;
    temp_s2 = arg0->unk24;
    temp_ra = temp_s2->unk20;
    var_s7 = arg1;
    temp_s1 = temp_s2->unkE;
    temp_a1 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    temp_s6 = temp_s2->unkC;
    sp80 = (s64) temp_a1->unk48;
    sp68 = (s64) temp_a1;
    sp70 = (s64) temp_a1->unk4C;
    sp78 = (s64) temp_a1->unk40;
    temp_v1 = **(arg0->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    if (temp_s6 != 0x20) {
        if (!((temp_s6 - 1) & temp_s6)) {
            var_a7 = 0;
        }
        var_v0 = ((s32) temp_s2->unk1C >> 2) * temp_s1;
    } else {
        var_v0 = (s32) temp_s1;
    }
    temp_t9 = var_v0 & 7;
    if (var_v0 >= 0x1301) {
        temp_s3 = (**(var_s7->unk84 + (nfbWindowPrivateIndex * 4)))->unkC;
        if (arg3 != 0) {
            var_s0 = var_a2;
loop_7:
            temp_v0 = var_s0->unk0;
            temp_v1_2 = var_s0->unk2;
            var_s4 = (s32) (temp_v0 - sp68->unk58) % (s32) temp_s6;
            M2C_TRAP_IF(temp_s6 == 0);
            if (var_s4 < 0) {
                var_s4 += temp_s6;
            }
            var_s5 = (s32) (temp_v1_2 - sp68->unk5A) % (s32) temp_s1;
            M2C_TRAP_IF(temp_s1 == 0);
            if (var_s5 < 0) {
                var_s5 += temp_s1;
            }
            temp_a0 = var_s0->unk4;
            temp_a1_2 = (temp_s6 + temp_v0) - var_s4;
            var_v0_2 = temp_a1_2;
            if (temp_a1_2 >= temp_a0) {
                var_v0_2 = temp_a0;
            }
            sp4 = var_v0_2;
            temp_a0_2 = var_s0->unk6;
            temp_a1_3 = (temp_s1 + temp_v1_2) - var_s5;
            var_v1 = temp_a1_3;
            if (temp_a1_3 >= temp_a0_2) {
                var_v1 = temp_a0_2;
            }
            sp6 = var_v1;
            temp_a3 = temp_s2->unk1C;
            sp88 = (s64) var_s7;
            temp_s3(sp, temp_s2->unk20 + (temp_a3 * var_s5), var_s4, temp_a3, sp78, sp80, sp70, var_s7);
            var_v1_2 = var_v1;
            temp_s7 = temp_s2->unk20;
            if (var_v1_2 < var_s0->unk6) {
loop_17:
                temp_a0_3 = var_s0->unk6;
                if (temp_a0_3 < (temp_s1 + var_v1_2)) {
                    sp6 = temp_a0_3;
                } else {
                    sp6 = temp_s1 + var_v1_2;
                }
                temp_s3(sp, temp_s7, var_s4, temp_s2->unk1C, sp78, sp80, sp70, (void *) sp88);
                var_v1_2 = sp6;
                if (var_v1_2 < var_s0->unk6) {
                    goto loop_17;
                }
            }
            var_s7 = (void *) sp88;
            if (sp4 < var_s0->unk4) {
loop_22:
                temp_a0_4 = var_s0->unk4;
                if (temp_a0_4 < (temp_s6 + sp4)) {
                    sp4 = temp_a0_4;
                } else {
                    sp4 += temp_s6;
                }
                temp_a0_5 = var_s0->unk6;
                temp_a1_4 = (temp_s1 + var_s0->unk2) - var_s5;
                var_v1_3 = temp_a1_4;
                if (temp_a1_4 >= temp_a0_5) {
                    var_v1_3 = temp_a0_5;
                }
                sp6 = var_v1_3;
                temp_a3_2 = temp_s2->unk1C;
                temp_s3(sp, temp_s2->unk20 + (temp_a3_2 * var_s5), 0, temp_a3_2, sp78, sp80, sp70, var_s7);
                var_v1_4 = var_v1_3;
                temp_s4 = temp_s2->unk20;
                if (var_v1_4 < var_s0->unk6) {
loop_31:
                    temp_a0_6 = var_s0->unk6;
                    if (temp_a0_6 < (temp_s1 + var_v1_4)) {
                        sp6 = temp_a0_6;
                    } else {
                        sp6 = temp_s1 + var_v1_4;
                    }
                    temp_s3(sp, temp_s4, 0, temp_s2->unk1C, sp78, sp80, sp70, var_s7);
                    var_v1_4 = sp6;
                    if (var_v1_4 < var_s0->unk6) {
                        goto loop_31;
                    }
                }
                if (sp4 < var_s0->unk4) {
                    goto loop_22;
                }
            }
            var_s0 += 8;
            if (var_s0 != ((arg3 * 8) + var_a2)) {
                goto loop_7;
            }
        }
        return;
    }
    var_a6 = var_v0 & 8;
    var_t8 = var_v0 & 0x10;
    temp_s2_2 = var_v0 >> 6;
    sp8 = var_v0 & 0x20;
    temp_v1->unk404E8 = 8;
    temp_v1->unk4077C = (s32) temp_s6;
    temp_v1->unk4077C = (s32) temp_s1;
    temp_v1->unk4077C = 3;
    temp_v1->unk4077C = 0xD022;
    if (temp_s6 != 0x20) {
        var_a1 = temp_ra;
        if (temp_s2_2 != 0) {
            if (temp_s2_2 > 0) {
                spA0 = var_a6;
                var_a6_2 = temp_ra + 0xFC;
                var_a5 = temp_ra;
                var_a1_2 = temp_ra;
                sp98 = var_t8;
                var_v1_5 = 3;
                do {
                    var_v0_3 = var_a5;
                    var_a5 += 0x100;
                    temp_v1->unk404EC = (s32) *var_a1_2;
loop_41:
                    var_v0_3 += 4;
                    var_v1_5 -= 1;
                    temp_v1->unk4077C = (s32) var_v0_3->unk0;
                    if (var_v1_5 != 0) {
                        goto loop_41;
                    }
                    var_at = var_v0_3->unk4;
loop_43:
                    temp_v1->unk4077C = var_at;
                    temp_v1->unk4077C = (s32) var_v0_3->unk8;
                    temp_v1->unk4077C = (s32) var_v0_3->unkC;
                    temp_at = var_v0_3->unk10;
                    var_v0_3 += 0x10;
                    temp_v1->unk4077C = temp_at;
                    var_at = var_v0_3->unk4;
                    if (var_v0_3 != (var_a6_2 - 0x10)) {
                        goto loop_43;
                    }
                    var_a6_2 += 0x100;
                    temp_v1->unk4077C = var_at;
                    temp_v1->unk4077C = (s32) var_v0_3->unk8;
                    temp_v1->unk4077C = (s32) var_v0_3->unkC;
                    var_a1_2 += 0x100;
                    temp_v1->unk4077C = (s32) var_v0_3->unk10;
                    var_v1_5 = 3;
                } while (var_a1_2 != ((temp_s2_2 << 8) + temp_ra));
                var_v0_4 = temp_s2_2;
                var_a6 = spA0;
                var_t8 = sp98;
            } else {
                var_v0_4 = 0;
            }
            var_a1 = (var_v0_4 << 8) + temp_ra;
        }
        var_v1_6 = 3;
        if (sp8 != 0) {
            var_v0_5 = var_a1;
            temp_v1->unk404F0 = (s32) *var_a1;
            do {
                var_v0_5 += 4;
                var_v1_6 -= 1;
                temp_v1->unk4077C = (s32) var_v0_5->unk0;
            } while (var_v1_6 != 0);
            var_at_2 = var_v0_5->unk4;
            do {
                temp_v1->unk4077C = var_at_2;
                temp_v1->unk4077C = (s32) var_v0_5->unk8;
                temp_v1->unk4077C = (s32) var_v0_5->unkC;
                temp_at_2 = var_v0_5->unk10;
                var_v0_5 += 0x10;
                temp_v1->unk4077C = temp_at_2;
                var_at_2 = var_v0_5->unk4;
            } while (var_v0_5 != ((var_a1 + 0x7C) - 0x10));
            temp_v1->unk4077C = var_at_2;
            temp_v1->unk4077C = (s32) var_v0_5->unk8;
            temp_v1->unk4077C = (s32) var_v0_5->unkC;
            var_a1 += 0x80;
            temp_v1->unk4077C = (s32) var_v0_5->unk10;
        }
        if (var_t8 != 0) {
            temp_v1->unk404F4 = (s32) var_a1->unk0;
            temp_v1->unk4077C = (s32) var_a1->unk4;
            temp_v1->unk4077C = (s32) var_a1->unk8;
            temp_v1->unk4077C = (s32) var_a1->unkC;
            temp_v1->unk4077C = (s32) var_a1->unk10;
            temp_v1->unk4077C = (s32) var_a1->unk14;
            temp_v1->unk4077C = (s32) var_a1->unk18;
            temp_v1->unk4077C = (s32) var_a1->unk1C;
            temp_v1->unk4077C = (s32) var_a1->unk20;
            temp_v1->unk4077C = (s32) var_a1->unk24;
            temp_v1->unk4077C = (s32) var_a1->unk28;
            temp_v1->unk4077C = (s32) var_a1->unk2C;
            temp_v1->unk4077C = (s32) var_a1->unk30;
            temp_v1->unk4077C = (s32) var_a1->unk34;
            temp_v1->unk4077C = (s32) var_a1->unk38;
            temp_v1->unk4077C = (s32) var_a1->unk3C;
            var_a1 += 0x40;
        }
        if (var_a6 != 0) {
            temp_v1->unk404F8 = (s32) var_a1->unk0;
            temp_v1->unk4077C = (s32) var_a1->unk4;
            temp_v1->unk4077C = (s32) var_a1->unk8;
            temp_v1->unk4077C = (s32) var_a1->unkC;
            temp_v1->unk4077C = (s32) var_a1->unk10;
            temp_v1->unk4077C = (s32) var_a1->unk14;
            temp_v1->unk4077C = (s32) var_a1->unk18;
            temp_v1->unk4077C = (s32) var_a1->unk1C;
            var_a1 += 0x20;
        }
        if (temp_t9 != 0) {
            temp_v1->unk404F8 = (s32) *var_a1;
            if (temp_t9 >= 2) {
                var_v1_7 = var_a1;
                temp_a5 = temp_t9 - 1;
                var_v0_6 = temp_a5 & 3;
                if (var_v0_6 != 0) {
                    do {
                        var_v1_7 += 4;
                        var_v0_6 -= 1;
                        temp_v1->unk4077C = (s32) *var_v1_7;
                    } while (var_v0_6 != 0);
                }
                temp_a1_5 = temp_a5 >> 2;
                var_v0_7 = var_v1_7;
                if (temp_a1_5 != 0) {
                    if (temp_a1_5 >= 2) {
                        var_at_3 = var_v0_7->unk4;
                        do {
                            temp_v1->unk4077C = var_at_3;
                            temp_v1->unk4077C = (s32) var_v0_7->unk8;
                            temp_v1->unk4077C = (s32) var_v0_7->unkC;
                            temp_at_3 = var_v0_7->unk10;
                            var_v0_7 += 0x10;
                            temp_v1->unk4077C = temp_at_3;
                            var_at_3 = var_v0_7->unk4;
                        } while (var_v0_7 != (((temp_a5 * 4) + var_a1) - 0x10));
                        temp_v1->unk4077C = var_at_3;
                        temp_v1->unk4077C = (s32) var_v0_7->unk8;
                        temp_v1->unk4077C = (s32) var_v0_7->unkC;
                        temp_v1->unk4077C = (s32) var_v0_7->unk10;
                    } else {
                        temp_v1->unk4077C = (s32) var_v0_7->unk4;
                        temp_v1->unk4077C = (s32) var_v0_7->unk8;
                        temp_v1->unk4077C = (s32) var_v0_7->unkC;
                        temp_v1->unk4077C = (s32) var_v0_7->unk10;
                    }
                }
            }
            var_v0_8 = 0;
            if (temp_t9 < 8) {
                temp_a0_7 = 8 - temp_t9;
                var_v1_8 = temp_a0_7 & 3;
                if (var_v1_8 != 0) {
                    do {
                        var_v0_8 += 1;
                        var_v1_8 -= 1;
                        temp_v1->unk4077C = 0;
                    } while (var_v1_8 != 0);
                }
                temp_v1_3 = temp_a0_7 >> 2;
                if (temp_v1_3 != 0) {
                    var_v1_9 = var_v0_8 + 4;
                    if (temp_v1_3 >= 2) {
                        sp90 = (s64) var_a2;
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
loop_72:
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
                        if (var_v1_9 != (temp_a0_7 - 4)) {
                            temp_v1->unk4077C = 0;
                            temp_v1->unk4077C = 0;
                            temp_v1->unk4077C = 0;
                            temp_v1->unk4077C = 0;
                            if (var_v1_9 != (temp_a0_7 - 8)) {
                                temp_v1->unk4077C = 0;
                                temp_v1->unk4077C = 0;
                                temp_v1->unk4077C = 0;
                                temp_v1->unk4077C = 0;
                                if (var_v1_9 != (temp_a0_7 - 0xC)) {
                                    temp_v1->unk4077C = 0;
                                    temp_v1->unk4077C = 0;
                                    temp_v1->unk4077C = 0;
                                    var_v1_9 += 0x10;
                                    temp_v1->unk4077C = 0;
                                    if (var_v1_9 != temp_a0_7) {
                                        goto loop_72;
                                    }
                                }
                            }
                        }
                        var_a2 = (void *) sp90;
                        temp_v1->unk4077C = 0;
                    } else {
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
                    }
                    temp_v1->unk4077C = 0;
                }
            }
        }
        temp_a0_8 = (*(var_s7->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
        switch (temp_a0_8) {                        /* switch 1; irregular */
        default:                                    /* switch 1 */
            temp_v1->unk4052C = (s32) (temp_a0_8 | 0x1000);
            temp_v1->unk404D4 = 0;
            var_v0_9 = sp70;
            var_v1_10 = sp68->unk15 * 8;
            break;
        case 13:                                    /* switch 1 */
            var_v1_10 = 1;
            var_v0_9 = 0;
            temp_v1->unk4052C = 0x100B;
            temp_v1->unk404D4 = (s32) (sp70 & 3);
            break;
        case 12:                                    /* switch 1 */
            var_v1_10 = 1;
            var_v0_9 = 0;
            temp_v1->unk4052C = 0x1008;
            temp_v1->unk404D4 = (s32) (sp70 & 0xF);
            break;
        case 14:                                    /* switch 1 */
            var_v1_10 = 9;
            var_v0_9 = 0;
            temp_v1->unk4052C = 0x100B;
            temp_v1->unk404D4 = (s32) (sp70 & 0xC);
            break;
        }
        temp_v1->unk40530 = (s32) sp78;
        temp_v1->unk4077C = (s32) (var_v0_9 & 0xFFFFFF);
        temp_v1->unk4077C = (s32) sp80;
        temp_v1->unk4077C = var_v1_10;
        temp_v1->unk404E0 = (s32) sp78;
        if (arg3 != 0) {
            var_v0_10 = var_a2;
            if (arg3 & 1) {
                if (var_a7 != 0) {
                    temp_v1->unk40500 = 0;
                    temp_v1->unk4077C = (s32) sp68->unk58;
                    temp_v1->unk4077C = (s32) var_v0_10->unk0;
                    temp_v1->unk4077C = (s32) sp68->unk5A;
                    temp_v1->unk4077C = (s32) var_v0_10->unk2;
                    temp_v1->unk4077C = (s32) var_v0_10->unk4;
                    temp_v1->unk4077C = (s32) var_v0_10->unk6;
                } else {
                    temp_v1->unk404FC = 0;
                    temp_v1->unk4077C = (s32) sp68->unk58;
                    temp_v1->unk4077C = (s32) var_v0_10->unk0;
                    temp_v1->unk4077C = (s32) sp68->unk5A;
                    temp_v1->unk4077C = (s32) var_v0_10->unk2;
                    temp_v1->unk4077C = (s32) var_v0_10->unk4;
                    temp_v1->unk4077C = (s32) var_v0_10->unk6;
                }
                var_v0_10 += 8;
            }
            if ((arg3 >> 1) != 0) {
loop_93:
                if (var_a7 != 0) {
                    temp_v1->unk40500 = 0;
                    temp_v1->unk4077C = (s32) sp68->unk58;
                    temp_v1->unk4077C = (s32) var_v0_10->unk0;
                    temp_v1->unk4077C = (s32) sp68->unk5A;
                    temp_v1->unk4077C = (s32) var_v0_10->unk2;
                    temp_v1->unk4077C = (s32) var_v0_10->unk4;
                    temp_v1->unk4077C = (s32) var_v0_10->unk6;
                    if (var_a7 == 0) {
                        goto block_95;
                    }
                    goto block_91;
                }
                temp_v1->unk404FC = 0;
                temp_v1->unk4077C = (s32) sp68->unk58;
                temp_v1->unk4077C = (s32) var_v0_10->unk0;
                temp_v1->unk4077C = (s32) sp68->unk5A;
                temp_v1->unk4077C = (s32) var_v0_10->unk2;
                temp_v1->unk4077C = (s32) var_v0_10->unk4;
                temp_v1->unk4077C = (s32) var_v0_10->unk6;
                if (var_a7 != 0) {
block_91:
                    temp_v1->unk40500 = 0;
                    temp_v1->unk4077C = (s32) sp68->unk58;
                    temp_v1->unk4077C = (s32) var_v0_10->unk8;
                    temp_v1->unk4077C = (s32) sp68->unk5A;
                    temp_v1->unk4077C = (s32) var_v0_10->unkA;
                    temp_v1->unk4077C = (s32) var_v0_10->unkC;
                } else {
block_95:
                    temp_v1->unk404FC = 0;
                    temp_v1->unk4077C = (s32) sp68->unk58;
                    temp_v1->unk4077C = (s32) var_v0_10->unk8;
                    temp_v1->unk4077C = (s32) sp68->unk5A;
                    temp_v1->unk4077C = (s32) var_v0_10->unkA;
                    temp_v1->unk4077C = (s32) var_v0_10->unkC;
                }
                temp_v1->unk4077C = (s32) var_v0_10->unkE;
                var_v0_10 += 0x10;
                if (var_v0_10 != ((arg3 * 8) + var_a2)) {
                    goto loop_93;
                }
            }
        }
    } else {
        var_a1_3 = temp_ra;
        if (temp_s2_2 != 0) {
            var_a1_4 = temp_ra + 0xFC;
            if (temp_s2_2 > 0) {
                spA0 = var_a6;
                var_a6_3 = temp_ra;
                var_a5_2 = temp_ra;
                var_v1_11 = 3;
                do {
                    var_v0_11 = var_a6_3;
                    var_a6_3 += 0x100;
                    temp_v1->unk404EC = (s32) *var_a5_2;
loop_102:
                    var_v0_11 += 4;
                    var_v1_11 -= 1;
                    temp_v1->unk4077C = (s32) var_v0_11->unk0;
                    if (var_v1_11 != 0) {
                        goto loop_102;
                    }
                    var_at_4 = var_v0_11->unk4;
loop_104:
                    temp_v1->unk4077C = var_at_4;
                    temp_v1->unk4077C = (s32) var_v0_11->unk8;
                    temp_v1->unk4077C = (s32) var_v0_11->unkC;
                    temp_at_4 = var_v0_11->unk10;
                    var_v0_11 += 0x10;
                    temp_v1->unk4077C = temp_at_4;
                    var_at_4 = var_v0_11->unk4;
                    if (var_v0_11 != (var_a1_4 - 0x10)) {
                        goto loop_104;
                    }
                    var_a1_4 += 0x100;
                    temp_v1->unk4077C = var_at_4;
                    temp_v1->unk4077C = (s32) var_v0_11->unk8;
                    temp_v1->unk4077C = (s32) var_v0_11->unkC;
                    var_a5_2 += 0x100;
                    temp_v1->unk4077C = (s32) var_v0_11->unk10;
                    var_v1_11 = 3;
                } while (var_a5_2 != ((temp_s2_2 << 8) + temp_ra));
                var_v0_12 = temp_s2_2;
                var_a6 = spA0;
            } else {
                var_v0_12 = 0;
            }
            var_a1_3 = (var_v0_12 << 8) + temp_ra;
        }
        var_v1_12 = 3;
        if (sp8 != 0) {
            var_v0_13 = var_a1_3;
            temp_v1->unk404F0 = (s32) *var_a1_3;
            do {
                var_v0_13 += 4;
                var_v1_12 -= 1;
                temp_v1->unk4077C = (s32) var_v0_13->unk0;
            } while (var_v1_12 != 0);
            var_at_5 = var_v0_13->unk4;
            do {
                temp_v1->unk4077C = var_at_5;
                temp_v1->unk4077C = (s32) var_v0_13->unk8;
                temp_v1->unk4077C = (s32) var_v0_13->unkC;
                temp_at_5 = var_v0_13->unk10;
                var_v0_13 += 0x10;
                temp_v1->unk4077C = temp_at_5;
                var_at_5 = var_v0_13->unk4;
            } while (var_v0_13 != ((var_a1_3 + 0x7C) - 0x10));
            temp_v1->unk4077C = var_at_5;
            temp_v1->unk4077C = (s32) var_v0_13->unk8;
            temp_v1->unk4077C = (s32) var_v0_13->unkC;
            var_a1_3 += 0x80;
            temp_v1->unk4077C = (s32) var_v0_13->unk10;
        }
        if (var_t8 != 0) {
            temp_v1->unk404F4 = (s32) var_a1_3->unk0;
            temp_v1->unk4077C = (s32) var_a1_3->unk4;
            temp_v1->unk4077C = (s32) var_a1_3->unk8;
            temp_v1->unk4077C = (s32) var_a1_3->unkC;
            temp_v1->unk4077C = (s32) var_a1_3->unk10;
            temp_v1->unk4077C = (s32) var_a1_3->unk14;
            temp_v1->unk4077C = (s32) var_a1_3->unk18;
            temp_v1->unk4077C = (s32) var_a1_3->unk1C;
            temp_v1->unk4077C = (s32) var_a1_3->unk20;
            temp_v1->unk4077C = (s32) var_a1_3->unk24;
            temp_v1->unk4077C = (s32) var_a1_3->unk28;
            temp_v1->unk4077C = (s32) var_a1_3->unk2C;
            temp_v1->unk4077C = (s32) var_a1_3->unk30;
            temp_v1->unk4077C = (s32) var_a1_3->unk34;
            temp_v1->unk4077C = (s32) var_a1_3->unk38;
            temp_v1->unk4077C = (s32) var_a1_3->unk3C;
            var_a1_3 += 0x40;
        }
        if (var_a6 != 0) {
            temp_v1->unk404F8 = (s32) var_a1_3->unk0;
            temp_v1->unk4077C = (s32) var_a1_3->unk4;
            temp_v1->unk4077C = (s32) var_a1_3->unk8;
            temp_v1->unk4077C = (s32) var_a1_3->unkC;
            temp_v1->unk4077C = (s32) var_a1_3->unk10;
            temp_v1->unk4077C = (s32) var_a1_3->unk14;
            temp_v1->unk4077C = (s32) var_a1_3->unk18;
            temp_v1->unk4077C = (s32) var_a1_3->unk1C;
            var_a1_3 += 0x20;
        }
        if (temp_t9 != 0) {
            temp_v1->unk404F8 = (s32) *var_a1_3;
            if (temp_t9 >= 2) {
                var_v1_13 = var_a1_3;
                temp_a5_2 = temp_t9 - 1;
                var_v0_14 = temp_a5_2 & 3;
                if (var_v0_14 != 0) {
                    do {
                        var_v1_13 += 4;
                        var_v0_14 -= 1;
                        temp_v1->unk4077C = (s32) *var_v1_13;
                    } while (var_v0_14 != 0);
                }
                temp_a1_6 = temp_a5_2 >> 2;
                var_v0_15 = var_v1_13;
                if (temp_a1_6 != 0) {
                    if (temp_a1_6 >= 2) {
                        var_at_6 = var_v0_15->unk4;
                        do {
                            temp_v1->unk4077C = var_at_6;
                            temp_v1->unk4077C = (s32) var_v0_15->unk8;
                            temp_v1->unk4077C = (s32) var_v0_15->unkC;
                            temp_at_6 = var_v0_15->unk10;
                            var_v0_15 += 0x10;
                            temp_v1->unk4077C = temp_at_6;
                            var_at_6 = var_v0_15->unk4;
                        } while (var_v0_15 != (((temp_a5_2 * 4) + var_a1_3) - 0x10));
                        temp_v1->unk4077C = var_at_6;
                        temp_v1->unk4077C = (s32) var_v0_15->unk8;
                        temp_v1->unk4077C = (s32) var_v0_15->unkC;
                        temp_v1->unk4077C = (s32) var_v0_15->unk10;
                    } else {
                        temp_v1->unk4077C = (s32) var_v0_15->unk4;
                        temp_v1->unk4077C = (s32) var_v0_15->unk8;
                        temp_v1->unk4077C = (s32) var_v0_15->unkC;
                        temp_v1->unk4077C = (s32) var_v0_15->unk10;
                    }
                }
            }
            var_v0_16 = 0;
            if (temp_t9 < 8) {
                temp_a0_9 = 8 - temp_t9;
                var_v1_14 = temp_a0_9 & 3;
                if (var_v1_14 != 0) {
                    do {
                        var_v0_16 += 1;
                        var_v1_14 -= 1;
                        temp_v1->unk4077C = 0;
                    } while (var_v1_14 != 0);
                }
                temp_v1_4 = temp_a0_9 >> 2;
                if (temp_v1_4 != 0) {
                    var_v1_15 = var_v0_16 + 4;
                    if (temp_v1_4 >= 2) {
                        sp90 = (s64) var_a2;
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
loop_133:
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
                        if (var_v1_15 != (temp_a0_9 - 4)) {
                            temp_v1->unk4077C = 0;
                            temp_v1->unk4077C = 0;
                            temp_v1->unk4077C = 0;
                            temp_v1->unk4077C = 0;
                            if (var_v1_15 != (temp_a0_9 - 8)) {
                                temp_v1->unk4077C = 0;
                                temp_v1->unk4077C = 0;
                                temp_v1->unk4077C = 0;
                                temp_v1->unk4077C = 0;
                                if (var_v1_15 != (temp_a0_9 - 0xC)) {
                                    temp_v1->unk4077C = 0;
                                    temp_v1->unk4077C = 0;
                                    temp_v1->unk4077C = 0;
                                    var_v1_15 += 0x10;
                                    temp_v1->unk4077C = 0;
                                    if (var_v1_15 != temp_a0_9) {
                                        goto loop_133;
                                    }
                                }
                            }
                        }
                        var_a2 = (void *) sp90;
                        temp_v1->unk4077C = 0;
                    } else {
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
                        temp_v1->unk4077C = 0;
                    }
                    temp_v1->unk4077C = 0;
                }
            }
        }
        temp_a0_10 = (*(var_s7->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
        switch (temp_a0_10) {                       /* switch 2; irregular */
        default:                                    /* switch 2 */
            temp_v1->unk4052C = (s32) (temp_a0_10 | 0x1000);
            temp_v1->unk404D4 = 0;
            var_v0_17 = sp70;
            var_v1_16 = sp68->unk15 * 8;
            break;
        case 13:                                    /* switch 2 */
            var_v1_16 = 1;
            var_v0_17 = 0;
            temp_v1->unk4052C = 0x100B;
            temp_v1->unk404D4 = (s32) (sp70 & 3);
            break;
        case 12:                                    /* switch 2 */
            var_v1_16 = 1;
            var_v0_17 = 0;
            temp_v1->unk4052C = 0x1008;
            temp_v1->unk404D4 = (s32) (sp70 & 0xF);
            break;
        case 14:                                    /* switch 2 */
            var_v1_16 = 9;
            var_v0_17 = 0;
            temp_v1->unk4052C = 0x100B;
            temp_v1->unk404D4 = (s32) (sp70 & 0xC);
            break;
        }
        temp_v1->unk40530 = (s32) sp78;
        temp_v1->unk4077C = (s32) (var_v0_17 & 0xFFFFFF);
        temp_v1->unk4077C = (s32) sp80;
        temp_v1->unk4077C = var_v1_16;
        temp_v1->unk404E0 = (s32) sp78;
        if (arg3 != 0) {
            var_v1_17 = var_a2;
            if (arg3 >= 2) {
                temp_v1->unk40570 = 0;
                do {
                    temp_v1->unk4077C = (s32) sp68->unk58;
                    temp_v1->unk4077C = (s32) var_v1_17->unk0;
                    temp_v1->unk4077C = (s32) sp68->unk5A;
                    temp_v1->unk4077C = (s32) var_v1_17->unk2;
                    temp_v1->unk4077C = (s32) var_v1_17->unk4;
                    temp_at_7 = var_v1_17->unk6;
                    var_v1_17 += 8;
                    temp_v1->unk4077C = (s32) temp_at_7;
                    temp_v1->unk40570 = 0;
                } while (var_v1_17 != (((arg3 * 8) + var_a2) - 8));
                temp_v1->unk4077C = (s32) sp68->unk58;
                temp_v1->unk4077C = (s32) var_v1_17->unk0;
                temp_v1->unk4077C = (s32) sp68->unk5A;
                temp_v1->unk4077C = (s32) var_v1_17->unk2;
                temp_v1->unk4077C = (s32) var_v1_17->unk4;
                temp_v1->unk4077C = (s32) var_v1_17->unk6;
            } else {
                temp_v1->unk40570 = 0;
                temp_v1->unk4077C = (s32) sp68->unk58;
                temp_v1->unk4077C = (s32) var_v1_17->unk0;
                temp_v1->unk4077C = (s32) sp68->unk5A;
                temp_v1->unk4077C = (s32) var_v1_17->unk2;
                temp_v1->unk4077C = (s32) var_v1_17->unk4;
                temp_v1->unk4077C = (s32) var_v1_17->unk6;
            }
        }
    }
}

void expOpStippledFillRects(void *arg0, void *arg1) {
    void *temp_a4;
    void *temp_a6;
    void *temp_a7;
    void *temp_s0;

    temp_s0 = **(arg0->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    temp_a6 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    temp_s0->unk404E4 = 1;
    temp_a7 = (*(arg1->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
    switch (temp_a7) {                              /* irregular */
    default:
        temp_s0->unk4052C = temp_a7;
        break;
    case 13:
    case 14:
        temp_s0->unk4052C = (void *)0xB;
        break;
    case 12:
        temp_s0->unk4052C = (void *)8;
        break;
    }
    temp_a4 = temp_a6->unk44;
    temp_s0->unk404DC = temp_a4;
    expStippledFillRects(temp_a4, temp_a7, (s64) temp_a6, (s32) temp_a7);
    temp_s0->unk404E4 = 0;
}

void expSolidSpans(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    s16 temp_a6;
    s16 var_v0;
    s32 temp_a2;
    s32 temp_t3;
    s32 var_a0;
    s32 var_a5;
    s32 var_t8;
    s32 var_v1;
    void *temp_t0;
    void *temp_t2;
    void *var_a0_2;
    void *var_a1;
    void *var_t0;
    void *var_v1_2;

    temp_t2 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    temp_t0 = **(arg0->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    if (arg4 > 0) {
        var_a1 = arg3;
        var_t8 = 0;
        temp_t3 = (*(arg1->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
        var_t0 = arg2;
        switch (temp_t3) {                          /* irregular */
        default:
            temp_t0->unk4052C = (s32) (temp_t3 | 0x1000);
            temp_t0->unk404D4 = 0;
            var_t8 = temp_t2->unk4C;
            var_a0 = temp_t2->unk15 * 8;
            break;
        case 13:
            temp_t0->unk4052C = 0x100B;
            var_a0 = 1;
            temp_t0->unk404D4 = (s32) (temp_t2->unk4C & 3);
            break;
        case 12:
            var_a0 = 1;
            temp_t0->unk4052C = 0x1008;
            var_t8 = 0;
            temp_t0->unk404D4 = (s32) (temp_t2->unk4C & 0xF);
            break;
        case 14:
            var_t8 = 0;
            temp_t0->unk4052C = 0x100B;
            var_a0 = 9;
            temp_t0->unk404D4 = (s32) (temp_t2->unk4C & 0xC);
            break;
        }
        temp_t0->unk40530 = (s32) temp_t2->unk40;
        temp_t0->unk4077C = (s32) (var_t8 & 0xFFFFFF);
        var_v1 = arg4 & 3;
        temp_t0->unk4077C = (s32) temp_t2->unk48;
        temp_t0->unk4077C = var_a0;
        temp_t0->unk404C4 = 0;
        if (var_v1 != 0) {
            do {
                temp_t0->unk4077C = (s32) var_t0->unk0;
                temp_a6 = var_t0->unk2;
                var_t0 += 4;
                temp_t0->unk4077C = (s32) temp_a6;
                var_a1 += 4;
                var_v1 -= 1;
                temp_t0->unk4077C = (s32) var_a1->unk-4;
            } while (var_v1 != 0);
        }
        var_v1_2 = var_a1;
        temp_a2 = arg4 >> 2;
        var_a0_2 = var_t0;
        if (temp_a2 != 0) {
            if (temp_a2 >= 2) {
                var_v0 = var_a0_2->unk0;
                do {
                    temp_t0->unk4077C = (s32) var_v0;
                    temp_t0->unk4077C = (s32) var_a0_2->unk2;
                    var_v1_2 += 0x10;
                    temp_t0->unk4077C = (s32) var_v1_2->unk-10;
                    temp_t0->unk4077C = (s32) var_a0_2->unk4;
                    temp_t0->unk4077C = (s32) var_a0_2->unk6;
                    temp_t0->unk4077C = (s32) var_v1_2->unk-C;
                    temp_t0->unk4077C = (s32) var_a0_2->unk8;
                    temp_t0->unk4077C = (s32) var_a0_2->unkA;
                    temp_t0->unk4077C = (s32) var_v1_2->unk-8;
                    temp_t0->unk4077C = (s32) var_a0_2->unkC;
                    temp_t0->unk4077C = (s32) var_a0_2->unkE;
                    var_a0_2 += 0x10;
                    temp_t0->unk4077C = (s32) var_v1_2->unk-4;
                    var_v0 = var_a0_2->unk0;
                } while (var_a0_2 != (((arg4 * 4) + arg2) - 0x10));
                temp_t0->unk4077C = (s32) var_v0;
                temp_t0->unk4077C = (s32) var_a0_2->unk2;
                temp_t0->unk4077C = (s32) var_v1_2->unk0;
                temp_t0->unk4077C = (s32) var_a0_2->unk4;
                temp_t0->unk4077C = (s32) var_a0_2->unk6;
                temp_t0->unk4077C = (s32) var_v1_2->unk4;
                temp_t0->unk4077C = (s32) var_a0_2->unk8;
                temp_t0->unk4077C = (s32) var_a0_2->unkA;
                temp_t0->unk4077C = (s32) var_v1_2->unk8;
                temp_t0->unk4077C = (s32) var_a0_2->unkC;
                temp_t0->unk4077C = (s32) var_a0_2->unkE;
                var_a5 = var_v1_2->unkC;
            } else {
                temp_t0->unk4077C = (s32) var_a0_2->unk0;
                temp_t0->unk4077C = (s32) var_a0_2->unk2;
                temp_t0->unk4077C = (s32) var_v1_2->unk0;
                temp_t0->unk4077C = (s32) var_a0_2->unk4;
                temp_t0->unk4077C = (s32) var_a0_2->unk6;
                temp_t0->unk4077C = (s32) var_v1_2->unk4;
                temp_t0->unk4077C = (s32) var_a0_2->unk8;
                temp_t0->unk4077C = (s32) var_a0_2->unkA;
                temp_t0->unk4077C = (s32) var_v1_2->unk8;
                temp_t0->unk4077C = (s32) var_a0_2->unkC;
                temp_t0->unk4077C = (s32) var_a0_2->unkE;
                var_a5 = var_v1_2->unkC;
            }
            temp_t0->unk4077C = var_a5;
        }
        temp_t0->unk407A8 = -1;
    }
}

void expTiledSpans(void *arg0, s64 arg1, void *arg2, s32 *arg3, s32 arg4, ? arg_sp0) {
    ? sp10;
    s32 spC;
    s32 sp4;
    ? *var_a4_2;
    ? *var_a6;
    s16 temp_v1;
    s32 *var_a4;
    s32 *var_a6_2;
    u8 temp_a7;
    void *temp_t8;
    void *var_t0;
    void *var_t0_2;
    void *var_t2;

    temp_t8 = arg0->unk20;
    var_a4 = arg3;
    arg_sp0.unk-58 = (s64) saved_reg_fp;
    arg_sp0.unk-48 = arg1;
    arg_sp0.unk-60 = (s64) saved_reg_gp;
    var_t2 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    temp_a7 = var_t2->unk48;
    arg_sp0.unk-40 = (s64) var_t2->unk4C;
    arg_sp0.unk-50 = (s64) (**(arg1->unk84 + (nfbWindowPrivateIndex * 4)))->unk1C;
    if (&sp10 != NULL) {
        var_t0 = arg2;
        if (arg4 > 0) {
            var_a6 = &sp10;
            if (arg4 & 1) {
                var_a6->unk0 = (s16) var_t0->unk0;
                var_a6->unk4 = (s16) (var_t0->unk0 + *var_a4);
                var_a6->unk2 = (s16) var_t0->unk2;
                var_t0 += 4;
                var_a4 += 4;
                var_a6 += 8;
                var_a6->unk-2 = (s16) (var_t0->unk-2 + 1);
            }
            var_a4_2 = var_a6;
            if ((arg4 >> 1) != 0) {
                var_a6_2 = var_a4;
                var_t0_2 = var_t0;
                do {
                    var_a4_2->unk0 = (s16) var_t0_2->unk0;
                    var_a4_2->unk4 = (s16) (var_t0_2->unk0 + var_a6_2->unk0);
                    var_a4_2->unk2 = (s16) var_t0_2->unk2;
                    var_a4_2->unk6 = (s16) (var_t0_2->unk2 + 1);
                    var_a4_2->unk8 = (s16) var_t0_2->unk4;
                    var_a4_2->unkC = (s16) (var_t0_2->unk4 + var_a6_2->unk4);
                    var_a4_2->unkA = (s16) var_t0_2->unk6;
                    var_a6_2 += 8;
                    temp_v1 = var_t0_2->unk6;
                    var_a4_2 += 0x10;
                    var_t0_2 += 8;
                    var_a4_2->unk-2 = (s16) (temp_v1 + 1);
                } while (var_t0_2 != ((arg4 * 4) + arg2));
            }
            arg_sp0.unk-68 = (s64) saved_reg_ra;
            var_t2 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
        }
        arg_sp0.unk-68 = (s64) saved_reg_ra;
        spC = (s32) arg_sp0.unk-48;
        sp4 = (s32) arg_sp0.unk-40;
        ((? (*)(? *, s32, s32, s32, u16, u16, void *, u8)) arg_sp0.unk-50)(&sp10, arg4, temp_t8->unk20, temp_t8->unk1C, temp_t8->unkC, temp_t8->unkE, var_t2 + 0x58, temp_a7);
    }
}

void expStippledSpans(void *arg0, void *arg1, void *arg2, s32 *arg3, s32 arg4) {
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    ? *temp_a7_3;
    ? *temp_t1;
    ? *var_v0;
    ? *var_v0_3;
    ? *var_v0_7;
    ? *var_v0_9;
    s16 temp_a0_6;
    s16 temp_a3;
    s16 temp_a4_2;
    s16 temp_a4_3;
    s16 temp_a7_2;
    s16 temp_a7_4;
    s16 temp_t3_2;
    s16 var_a3_3;
    s16 var_a4_2;
    s16 var_a4_4;
    s16 var_s0_3;
    s16 var_s4;
    s16 var_t0_2;
    s32 *var_a6_5;
    s32 *var_ra;
    s32 *var_t0_4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3_3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a7_5;
    s32 temp_hi;
    s32 temp_lo;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_s7_2;
    s32 temp_t0_3;
    s32 temp_t1_2;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v1;
    s32 temp_v1_10;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a2_8;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a4_3;
    s32 var_a5;
    s32 var_a6;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_a7;
    s32 var_ra_2;
    s32 var_s3;
    s32 var_s8;
    s32 var_t0;
    s32 var_t1_2;
    s32 var_t1_3;
    s32 var_t9;
    s32 var_t9_2;
    s32 var_t9_3;
    s32 var_t9_4;
    s32 var_v0_10;
    s32 var_v0_11;
    s32 var_v0_2;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_8;
    s64 temp_s7;
    s64 temp_t0_2;
    s64 var_a3;
    s64 var_a3_2;
    s64 var_a4;
    s64 var_a5_2;
    s64 var_a5_3;
    s64 var_a6_2;
    s64 var_s0_2;
    s64 var_t0_3;
    s64 var_t1;
    s64 var_t2;
    u16 temp_s2;
    u16 var_a2_3;
    u32 temp_a1_3;
    u32 temp_v1_9;
    void *temp_a3_2;
    void *temp_a7;
    void *temp_t0;
    void *temp_t0_4;
    void *temp_t2;
    void *temp_v0;
    void *var_a5_4;
    void *var_a7_2;
    void *var_gp;
    void *var_s0;
    void *var_t8;

    temp_t0 = arg0->unk24;
    temp_s2 = temp_t0->unkC;
    var_s0 = arg0;
    sp40 = (s64) temp_t0->unk1C;
    temp_a7 = *(var_s0->unk4C + (nfbGCPrivateIndex * 4));
    temp_t2 = **(arg1->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    if (arg4 != 0) {
        temp_t3 = (*(arg1->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
        switch (temp_t3) {                          /* irregular */
        default:
            temp_t2->unk4052C = (s32) (temp_t3 | 0x1000);
            temp_t2->unk404D4 = 0;
            var_a5 = temp_a7->unk4C;
            var_a6 = temp_a7->unk15 * 8;
            break;
        case 13:
            temp_t2->unk4052C = 0x100B;
            var_a6 = 1;
            var_a5 = 0;
            temp_t2->unk404D4 = (s32) (temp_a7->unk4C & 3);
            break;
        case 12:
            temp_t2->unk4052C = 0x1008;
            var_a6 = 1;
            var_a5 = 0;
            temp_t2->unk404D4 = (s32) (temp_a7->unk4C & 0xF);
            break;
        case 14:
            temp_t2->unk4052C = 0x100B;
            var_a6 = 9;
            var_a5 = 0;
            temp_t2->unk404D4 = (s32) (temp_a7->unk4C & 0xC);
            break;
        }
        temp_t2->unk40530 = (s32) temp_a7->unk40;
        temp_t2->unk4077C = (s32) (var_a5 & 0xFFFFFF);
        temp_t2->unk4077C = (s32) temp_a7->unk48;
        temp_t2->unk4077C = var_a6;
        temp_t2->unk404E0 = (s32) temp_a7->unk40;
        if (((u32) (var_s0->unk10 & 0x03FFFFFF) >> 0x18) == 3) {
            temp_t2->unk404E4 = 1;
            temp_t2->unk404DC = (s32) temp_a7->unk44;
        }
        sp58 = (s64) temp_t0->unk20;
        temp_v0 = *(var_s0->unk4C + (nfbGCPrivateIndex * 4));
        sp68 = (s64) temp_t0->unkE;
        sp48 = (s64) temp_v0->unk5A;
        sp60 = (s64) temp_v0->unk58;
        if (sp40 != 4) {
            spB8 = (s64) var_s0;
            temp_t2->unk40568 = 0;
            if (arg4 > 0) {
                spB8 = (s64) var_s0;
                var_gp = arg2;
                var_ra = arg3;
                var_t2 = (s32) temp_s2 >= 0x20;
                sp38 = (arg4 * 4) + arg3;
loop_35:
                temp_a3 = var_gp->unk0;
                M2C_TRAP_IF(temp_s2 == 0);
                var_s4 = temp_a3;
                var_s8 = (s32) (temp_a3 - sp60) % (s32) temp_s2;
                var_s3 = *var_ra;
                if (var_s8 < 0) {
                    var_s8 += temp_s2;
                }
                temp_a7_2 = var_gp->unk2;
                var_a5_2 = var_s8 & 0x1F;
                M2C_TRAP_IF(sp68 == 0);
                var_a6_2 = temp_s2 - var_s8;
                var_t1 = (var_s8 >> 5) * 4;
                var_a2 = (s32) (temp_a7_2 - sp48) % sp68;
                if (var_a2 < 0) {
                    var_a2 += sp68;
                }
                var_s0_2 = var_a5_2;
                temp_s7 = (sp40 * var_a2) + sp58;
                temp_t0_2 = var_t1 + temp_s7;
                var_a4 = temp_t0_2;
                if (var_a6_2 < var_s3) {
                    var_s0_3 = var_s4;
                    if (var_a6_2 >= 0x20) {
                        var_t9 = 0;
                        sp50 = 0x20 - var_a5_2;
                        var_a3 = temp_t0_2;
                        var_t0 = var_a6_2 - 0x20;
                        if ((var_a6_2 - 0x20) >= 0x20) {
                            spD8 = (s64) var_ra;
                            spC8 = var_a6_2;
                            spC0 = var_t1;
                            spD0 = var_a5_2;
                            spE8 = var_t2;
                            var_a2_2 = *var_a3;
loop_41:
                            temp_t0_3 = var_t0 - 0x20;
                            temp_a7_3 = var_a3 + 4;
                            temp_ra = var_s0_3 + 0x20;
                            temp_v1 = var_a5_2 != 0;
                            var_v0 = &unksp-4;
                            if (temp_v1 != 0) {
                                var_v0 = (? *) var_a3;
                            }
                            temp_t2->unk4077C = (s32) var_s0_3;
                            temp_t2->unk4077C = (s32) temp_a7_2;
                            var_v0_2 = (var_a2_2 << var_s8) | ((u32) var_v0->unk4 >> sp50);
                            if (temp_v1 == 0) {
                                var_v0_2 = var_a2_2;
                            }
                            temp_t2->unk4077C = 0x20;
                            temp_t2->unk4077C = var_v0_2;
                            var_a2_2 = var_a3->unk4;
                            if (temp_t0_3 >= 0x20) {
                                var_t0 = temp_t0_3 - 0x20;
                                var_a3 = temp_a7_3 + 4;
                                var_s0_3 = temp_ra + 0x20;
                                temp_v1_2 = var_a5_2 != 0;
                                var_v0_3 = &unksp-4;
                                if (temp_v1_2 != 0) {
                                    var_v0_3 = temp_a7_3;
                                }
                                temp_t2->unk4077C = temp_ra;
                                temp_t2->unk4077C = (s32) temp_a7_2;
                                var_v0_4 = (var_a2_2 << var_s8) | ((u32) var_v0_3->unk4 >> sp50);
                                if (temp_v1_2 == 0) {
                                    var_v0_4 = var_a2_2;
                                }
                                temp_t2->unk4077C = 0x20;
                                temp_t2->unk4077C = var_v0_4;
                                var_t9 += 2;
                                var_a2_2 = *var_a3;
                                if (var_t0 < 0x20) {
                                    var_t1 = spC0;
                                    var_a6_2 = spC8;
                                    var_a5_2 = spD0;
                                    var_ra = (s32 *) spD8;
                                } else {
                                    goto loop_41;
                                }
                            } else {
                                var_a3 = (s64) temp_a7_3;
                                var_t9 += 1;
                                var_t1 = spC0;
                                var_a6_2 = spC8;
                                var_a5_2 = spD0;
                                var_s0_3 = (s16) temp_ra;
                                var_ra = (s32 *) spD8;
                            }
                            var_t2 = spE8;
                            temp_v1_3 = var_a5_2 != 0;
                            if (temp_v1_3 == 0) {
                                var_a3 = (s64) &unksp-4;
                            }
                            var_v0_5 = (var_a2_2 << var_s8) | ((u32) var_a3->unk4 >> sp50);
                            if (temp_v1_3 == 0) {
                                var_v0_5 = var_a2_2;
                            }
                            var_t9_2 = var_t9 + 1;
                            temp_t2->unk4077C = (s32) var_s0_3;
                            temp_t2->unk4077C = (s32) temp_a7_2;
                            temp_t2->unk4077C = 0x20;
                        } else {
                            temp_a0 = *var_a3;
                            temp_v1_4 = var_a5_2 != 0;
                            if (temp_v1_4 == 0) {
                                var_a3 = (s64) &unksp-4;
                            }
                            var_v0_5 = (temp_a0 << var_s8) | ((u32) var_a3->unk4 >> sp50);
                            if (temp_v1_4 == 0) {
                                var_v0_5 = temp_a0;
                            }
                            var_t9_2 = 1;
                            temp_t2->unk4077C = (s32) var_s0_3;
                            temp_t2->unk4077C = (s32) temp_a7_2;
                            temp_t2->unk4077C = 0x20;
                        }
                        temp_t2->unk4077C = var_v0_5;
                    } else {
                        var_t9_2 = 0;
                    }
                    temp_a1 = var_t9_2 << 5;
                    var_s3 -= temp_a1;
                    temp_a2 = var_a6_2 - temp_a1;
                    var_s4 += temp_a1;
                    if (temp_a2 != 0) {
                        var_s3 -= temp_a2;
                        temp_a3_2 = temp_s7 + (var_t1 + (var_t9_2 * 4));
                        temp_a4 = temp_a3_2->unk0;
                        if (var_a5_2 != 0) {
                            var_a6_3 = (temp_a4 << var_s8) | ((u32) temp_a3_2->unk4 >> (0x20 - var_a5_2));
                        } else {
                            var_a6_3 = temp_a4;
                        }
                        temp_t2->unk4077C = (s32) var_s4;
                        var_s4 += temp_a2;
                        temp_t2->unk4077C = (s32) temp_a7_2;
                        temp_t2->unk4077C = temp_a2;
                        temp_t2->unk4077C = var_a6_3;
                    }
                    var_s0_2 = 0;
                    var_a4 = temp_s7;
                    if (var_s3 >= (s32) temp_s2) {
                        var_a2_3 = temp_s2;
loop_70:
                        var_a4_2 = var_s4;
                        var_a5_3 = temp_s7;
                        if (var_t2 != 0) {
                            temp_t8 = (s32) (((u32) ((s32) temp_s2 >> 4) >> 0x1B) + temp_s2) >> 5;
                            var_a6_4 = 0;
                            if (temp_t8 & 1) {
                                var_a5_3 += 4;
                                temp_t2->unk4077C = (s32) var_a4_2;
                                var_a4_2 += 0x20;
                                var_a2_3 -= 0x20;
                                var_a6_4 = 1;
                                temp_t2->unk4077C = (s32) temp_a7_2;
                                temp_t2->unk4077C = 0x20;
                                temp_t2->unk4077C = (s32) var_a5_3->unk-4;
                            }
                            var_t1_2 = var_a6_4;
                            var_t0_2 = var_a4_2;
                            var_a3_2 = var_a5_3;
                            if ((temp_t8 >> 1) != 0) {
                                if ((var_a2_3 - 0x40) >= 0x20) {
                                    var_a2_4 = var_a2_3 - 0x40;
                                    var_v0_6 = var_a3_2->unk0;
loop_76:
                                    temp_a2_2 = var_a2_4 - 0x40;
                                    temp_a0_2 = var_t0_2 + 0x20;
                                    temp_a7_4 = temp_a0_2 + 0x20;
                                    temp_t2->unk4077C = (s32) var_t0_2;
                                    temp_t2->unk4077C = (s32) temp_a7_2;
                                    temp_t2->unk4077C = 0x20;
                                    temp_t2->unk4077C = var_v0_6;
                                    temp_t2->unk4077C = temp_a0_2;
                                    temp_t2->unk4077C = (s32) temp_a7_2;
                                    temp_t2->unk4077C = 0x20;
                                    temp_t2->unk4077C = (s32) var_a3_2->unk4;
                                    temp_v0_2 = var_a3_2->unk8;
                                    if (temp_a2_2 >= 0x20) {
                                        temp_a2_3 = temp_a2_2 - 0x40;
                                        temp_a0_3 = temp_a7_4 + 0x20;
                                        temp_a1_2 = temp_a0_3 + 0x20;
                                        temp_t2->unk4077C = (s32) temp_a7_4;
                                        temp_t2->unk4077C = (s32) temp_a7_2;
                                        temp_t2->unk4077C = 0x20;
                                        temp_t2->unk4077C = temp_v0_2;
                                        temp_t2->unk4077C = temp_a0_3;
                                        temp_t2->unk4077C = (s32) temp_a7_2;
                                        temp_t2->unk4077C = 0x20;
                                        temp_t2->unk4077C = (s32) var_a3_2->unkC;
                                        temp_v0_3 = var_a3_2->unk10;
                                        if (temp_a2_3 >= 0x20) {
                                            var_a2_4 = temp_a2_3 - 0x40;
                                            temp_a0_4 = temp_a1_2 + 0x20;
                                            var_t0_2 = temp_a0_4 + 0x20;
                                            temp_t2->unk4077C = temp_a1_2;
                                            temp_t2->unk4077C = (s32) temp_a7_2;
                                            temp_t2->unk4077C = 0x20;
                                            temp_t2->unk4077C = temp_v0_3;
                                            temp_t2->unk4077C = temp_a0_4;
                                            temp_t2->unk4077C = (s32) temp_a7_2;
                                            temp_t2->unk4077C = 0x20;
                                            temp_t2->unk4077C = (s32) var_a3_2->unk14;
                                            var_t1_2 += 6;
                                            var_a3_2 += 0x18;
                                            var_v0_6 = *var_a3_2;
                                            if (var_a2_4 < 0x20) {
                                                var_t8 = (void *) var_a3_2;
                                                var_a7 = var_t1_2;
                                                var_t1_3 = var_v0_6;
                                            } else {
                                                goto loop_76;
                                            }
                                        } else {
                                            var_t0_2 = (s16) temp_a1_2;
                                            var_t1_3 = temp_v0_3;
                                            var_a7 = var_t1_2 + 4;
                                            var_t8 = var_a3_2 + 0x10;
                                        }
                                    } else {
                                        var_t1_3 = temp_v0_2;
                                        var_t0_2 = temp_a7_4;
                                        var_a7 = var_t1_2 + 2;
                                        var_t8 = var_a3_2 + 8;
                                    }
                                    var_a6_4 = var_a7 + 2;
                                    temp_t2->unk4077C = (s32) var_t0_2;
                                    temp_t2->unk4077C = (s32) temp_a7_2;
                                    temp_t2->unk4077C = 0x20;
                                    temp_t2->unk4077C = var_t1_3;
                                    temp_t2->unk4077C = (s32) (var_t0_2 + 0x20);
                                    temp_t2->unk4077C = (s32) temp_a7_2;
                                    temp_t2->unk4077C = 0x20;
                                    temp_t2->unk4077C = (s32) var_t8->unk4;
                                } else {
                                    temp_t2->unk4077C = (s32) var_t0_2;
                                    temp_t2->unk4077C = (s32) temp_a7_2;
                                    temp_t2->unk4077C = 0x20;
                                    temp_t2->unk4077C = (s32) var_a3_2->unk0;
                                    temp_t2->unk4077C = (s32) (var_t0_2 + 0x20);
                                    temp_t2->unk4077C = (s32) temp_a7_2;
                                    temp_t2->unk4077C = 0x20;
                                    temp_t2->unk4077C = (s32) var_a3_2->unk4;
                                    var_a6_4 = var_t1_2 + 2;
                                }
                            }
                        } else {
                            var_a6_4 = 0;
                        }
                        temp_v0_4 = var_a6_4 << 5;
                        var_s3 -= temp_v0_4;
                        temp_a2_4 = temp_s2 - temp_v0_4;
                        var_s4 += temp_v0_4;
                        if (temp_a2_4 != 0) {
                            var_s3 -= temp_a2_4;
                            temp_t2->unk4077C = (s32) var_s4;
                            var_s4 += temp_a2_4;
                            temp_t2->unk4077C = (s32) temp_a7_2;
                            temp_t2->unk4077C = temp_a2_4;
                            temp_t2->unk4077C = (s32) *((var_a6_4 * 4) + temp_s7);
                        }
                        var_a2_3 = temp_s2;
                        if (var_s3 >= (s32) temp_s2) {
                            goto loop_70;
                        }
                        var_a4 = temp_s7;
                    }
                }
                var_t9_3 = 0;
                var_t0_3 = var_a4;
                temp_s7_2 = 0x20 - var_s0_2;
                if (var_s3 >= 0x20) {
                    var_a3_3 = var_s4;
                    if ((var_s3 - 0x20) >= 0x20) {
                        spE0 = var_a4;
                        spE8 = var_t2;
                        spD8 = (s64) var_ra;
                        var_ra_2 = var_s3 - 0x20;
                        var_a2_5 = *var_t0_3;
loop_13:
                        temp_ra_2 = var_ra_2 - 0x20;
                        temp_t1 = var_t0_3 + 4;
                        temp_a7_5 = var_a3_3 + 0x20;
                        temp_v1_5 = var_s0_2 != 0;
                        var_v0_7 = &unksp-4;
                        if (temp_v1_5 != 0) {
                            var_v0_7 = (? *) var_t0_3;
                        }
                        temp_t2->unk4077C = (s32) var_a3_3;
                        temp_t2->unk4077C = (s32) temp_a7_2;
                        var_v0_8 = (var_a2_5 << var_s0_2) | ((u32) var_v0_7->unk4 >> temp_s7_2);
                        if (temp_v1_5 == 0) {
                            var_v0_8 = var_a2_5;
                        }
                        temp_t2->unk4077C = 0x20;
                        temp_t2->unk4077C = var_v0_8;
                        var_a2_5 = var_t0_3->unk4;
                        if (temp_ra_2 >= 0x20) {
                            var_ra_2 = temp_ra_2 - 0x20;
                            var_t0_3 = temp_t1 + 4;
                            var_a3_3 = temp_a7_5 + 0x20;
                            temp_v1_6 = var_s0_2 != 0;
                            var_v0_9 = &unksp-4;
                            if (temp_v1_6 != 0) {
                                var_v0_9 = temp_t1;
                            }
                            temp_t2->unk4077C = temp_a7_5;
                            temp_t2->unk4077C = (s32) temp_a7_2;
                            var_v0_10 = (var_a2_5 << var_s0_2) | ((u32) var_v0_9->unk4 >> temp_s7_2);
                            if (temp_v1_6 == 0) {
                                var_v0_10 = var_a2_5;
                            }
                            temp_t2->unk4077C = 0x20;
                            temp_t2->unk4077C = var_v0_10;
                            var_t9_3 += 2;
                            var_a2_5 = *var_t0_3;
                            if (var_ra_2 < 0x20) {
                                var_ra = (s32 *) spD8;
                                var_a4 = spE0;
                            } else {
                                goto loop_13;
                            }
                        } else {
                            var_t0_3 = (s64) temp_t1;
                            var_a3_3 = (s16) temp_a7_5;
                            var_t9_3 += 1;
                            var_ra = (s32 *) spD8;
                            var_a4 = spE0;
                        }
                        var_t2 = spE8;
                        temp_v1_7 = var_s0_2 != 0;
                        if (temp_v1_7 == 0) {
                            var_t0_3 = (s64) &unksp-4;
                        }
                        var_v0_11 = (var_a2_5 << var_s0_2) | ((u32) var_t0_3->unk4 >> temp_s7_2);
                        if (temp_v1_7 == 0) {
                            var_v0_11 = var_a2_5;
                        }
                        var_t9_4 = var_t9_3 + 1;
                        temp_t2->unk4077C = (s32) var_a3_3;
                        temp_t2->unk4077C = (s32) temp_a7_2;
                        temp_t2->unk4077C = 0x20;
                    } else {
                        temp_v1_8 = var_s0_2 != 0;
                        temp_a0_5 = *var_t0_3;
                        if (temp_v1_8 == 0) {
                            var_t0_3 = (s64) &unksp-4;
                        }
                        var_v0_11 = (temp_a0_5 << var_s0_2) | ((u32) var_t0_3->unk4 >> temp_s7_2);
                        if (temp_v1_8 == 0) {
                            var_v0_11 = temp_a0_5;
                        }
                        var_t9_4 = 1;
                        temp_t2->unk4077C = (s32) var_a3_3;
                        temp_t2->unk4077C = (s32) temp_a7_2;
                        temp_t2->unk4077C = 0x20;
                    }
                    temp_t2->unk4077C = var_v0_11;
                } else {
                    var_t9_4 = 0;
                }
                var_ra += 4;
                temp_a3_3 = var_t9_4 << 5;
                temp_a2_5 = var_s3 - temp_a3_3;
                if (temp_a2_5 != 0) {
                    temp_t0_4 = var_a4 + (var_t9_4 * 4);
                    temp_a5 = temp_t0_4->unk0;
                    if (var_s0_2 != 0) {
                        var_a4_3 = (temp_a5 << var_s0_2) | ((u32) temp_t0_4->unk4 >> (0x20 - var_s0_2));
                    } else {
                        var_a4_3 = temp_a5;
                    }
                    temp_t2->unk4077C = (s32) (temp_a3_3 + var_s4);
                    temp_t2->unk4077C = (s32) temp_a7_2;
                    temp_t2->unk4077C = temp_a2_5;
                    temp_t2->unk4077C = var_a4_3;
                }
                var_gp += 4;
                if (var_ra != sp38) {
                    goto loop_35;
                }
            }
            var_s0 = (void *) spB8;
            temp_t2->unk407A8 = -1;
        } else {
            if (temp_s2 != 0x20) {
                temp_t2->unk40568 = 0;
                if (arg4 > 0) {
                    var_t0_4 = arg3;
                    var_a7_2 = arg2;
loop_100:
                    temp_a4_2 = var_a7_2->unk0;
                    M2C_TRAP_IF(temp_s2 == 0);
                    var_a2_6 = (s32) (temp_a4_2 - sp60) % (s32) temp_s2;
                    if (var_a2_6 < 0) {
                        var_a2_6 += temp_s2;
                    }
                    temp_t3_2 = var_a7_2->unk2;
                    temp_hi = (s32) (temp_t3_2 - sp48) % sp68;
                    var_a7_2 += 4;
                    var_a3_4 = temp_hi;
                    M2C_TRAP_IF(sp68 == 0);
                    if (var_a3_4 < 0) {
                        var_a3_4 += sp68;
                    }
                    var_a4_4 = temp_a4_2;
                    temp_t1_2 = *var_t0_4;
                    temp_v1_9 = *((var_a3_4 * 4) + sp58);
                    temp_a5_2 = (((((1 << temp_s2) - 1) << (0x20 - temp_s2)) & temp_v1_9) << var_a2_6) | (temp_v1_9 >> (temp_s2 - var_a2_6));
                    if (temp_t1_2 < (s32) temp_s2) {
                        var_a3_5 = 0;
                    } else {
                        var_a2_7 = temp_t1_2;
                        var_a3_5 = 0;
                        do {
                            temp_t2->unk4077C = (s32) var_a4_4;
                            var_a4_4 += temp_s2;
                            var_a3_5 += 1;
                            var_a2_7 -= temp_s2;
                            temp_t2->unk4077C = (s32) temp_t3_2;
                            temp_t2->unk4077C = (s32) temp_s2;
                            temp_t2->unk4077C = temp_a5_2;
                        } while (var_a2_7 >= (s32) temp_s2);
                    }
                    temp_lo = var_a3_5 * temp_s2;
                    var_t0_4 += 4;
                    temp_a2_6 = temp_t1_2 - temp_lo;
                    if (temp_a2_6 != 0) {
                        temp_t2->unk4077C = (s32) (temp_lo + temp_a4_2);
                        temp_t2->unk4077C = (s32) temp_t3_2;
                        temp_t2->unk4077C = temp_a2_6;
                        temp_t2->unk4077C = temp_a5_2;
                    }
                    if (var_a7_2 != ((arg4 * 4) + arg2)) {
                        goto loop_100;
                    }
                }
            } else {
                temp_t2->unk4056C = 0;
                if (arg4 > 0) {
                    var_a5_4 = arg2;
                    var_a6_5 = arg3;
loop_118:
                    temp_a4_3 = var_a5_4->unk0;
                    temp_v0_5 = temp_a4_3 - sp60;
                    temp_v1_10 = temp_v0_5 >> 0x1F;
                    temp_v0_6 = temp_v0_5 >> 0x1F;
                    var_a2_8 = ((((temp_v0_5 ^ temp_v1_10) - temp_v1_10) & 0x1F) ^ temp_v0_6) - temp_v0_6;
                    if (var_a2_8 < 0) {
                        var_a2_8 += 0x20;
                    }
                    var_a3_6 = (s32) (var_a5_4->unk2 - sp48) % sp68;
                    M2C_TRAP_IF(sp68 == 0);
                    if (var_a3_6 < 0) {
                        var_a3_6 += sp68;
                    }
                    var_a6_5 += 4;
                    temp_a1_3 = *((var_a3_6 * 4) + sp58);
                    temp_t2->unk4077C = (s32) temp_a4_3;
                    temp_a0_6 = var_a5_4->unk2;
                    var_a5_4 += 4;
                    temp_t2->unk4077C = (s32) temp_a0_6;
                    temp_t2->unk4077C = (s32) var_a6_5->unk-4;
                    temp_t2->unk4077C = (s32) ((temp_a1_3 << var_a2_8) | (temp_a1_3 >> (0x20 - var_a2_8)));
                    if (var_a5_4 != ((arg4 * 4) + arg2)) {
                        goto loop_118;
                    }
                }
            }
            temp_t2->unk407A8 = -1;
        }
        if (((u32) (var_s0->unk10 & 0x03FFFFFF) >> 0x18) == 3) {
            temp_t2->unk404E4 = 0;
        }
    }
}

s32 expFillTriangle(void *arg0, void *arg1, void *arg3) {
    s64 sp88;
    s64 sp48;
    s64 sp40;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a4_2;
    s16 temp_a7;
    s16 temp_at;
    s16 temp_s3;
    s16 temp_t0;
    s16 temp_t1;
    s16 temp_v0;
    s16 temp_v1_3;
    s16 var_a0;
    s16 var_a0_4;
    s16 var_a2_2;
    s16 var_a3_4;
    s16 var_a3_5;
    s16 var_a3_6;
    s16 var_a7_2;
    s16 var_a7_3;
    s16 var_s1;
    s16 var_s1_2;
    s16 var_s2;
    s16 var_s2_2;
    s16 var_s3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a4;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7_2;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_at_5;
    s32 temp_at_6;
    s32 temp_lo;
    s32 temp_lo_10;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_lo_5;
    s32 temp_lo_6;
    s32 temp_lo_7;
    s32 temp_lo_8;
    s32 temp_lo_9;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s6;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_4;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a3_10;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_a3_9;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a4_5;
    s32 var_a4_6;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a7;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6;
    s32 var_t2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s64 temp_a0_3;
    s64 temp_v0_5;
    void *temp_a5;
    void *temp_a6;
    void *temp_t2;

    temp_a7 = arg3->unk4;
    temp_t1 = arg3->unk0;
    temp_v0 = arg3->unk8;
    temp_t0 = arg0->unk8;
    temp_at = arg0->unkA;
    var_a2 = nfbGCPrivateIndex;
    temp_a6 = arg1->unk0;
    var_s5 = arg3->unkA + temp_at;
    temp_a5 = *(arg1->unk4C + (var_a2 * 4));
    var_s6 = arg3->unk6 + temp_at;
    var_s4 = arg3->unk2 + temp_at;
    temp_t2 = **(temp_a6->unk1B4 + (expScreenPrivateIndex * 4));
    if (var_s4 < var_s6) {
        if (var_s5 >= var_s4) {
            var_a2 = var_s5 < var_s6;
            if (var_a2 != 0) {
                var_s3 = temp_a7;
                temp_s2 = var_s6;
                var_s6 = var_s5;
                var_s5 = temp_s2;
                var_s2 = temp_v0;
            } else {
                var_s2 = temp_a7;
                var_s3 = temp_v0;
            }
            var_s1 = temp_t1;
        } else {
            var_s1 = temp_v0;
            var_s2 = temp_t1;
            var_s3 = temp_a7;
            temp_v1 = var_s4;
            var_s4 = var_s5;
            var_s5 = var_s6;
            var_s6 = temp_v1;
        }
    } else if (var_s5 >= var_s6) {
        if (var_s5 < var_s4) {
            var_s2 = temp_v0;
            var_s3 = temp_t1;
            temp_v1_2 = var_s4;
            var_s4 = var_s6;
            var_s6 = var_s5;
            var_s5 = temp_v1_2;
        } else {
            var_s3 = temp_v0;
            temp_s2_2 = var_s4;
            var_s4 = var_s6;
            var_s6 = temp_s2_2;
            var_s2 = temp_t1;
        }
        var_s1 = temp_a7;
    } else {
        var_s1 = temp_v0;
        var_s2 = temp_a7;
        var_s3 = temp_t1;
        var_a2 = var_s4;
        var_s4 = var_s5;
        var_s5 = var_a2;
    }
    temp_s3 = temp_t0 + var_s3;
    var_s1_2 = temp_t0 + var_s1;
    var_s2_2 = temp_t0 + var_s2;
    temp_a4 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
    switch (temp_a4) {                              /* irregular */
    default:
        temp_t2->unk4052C = (s32) (temp_a4 | 0x1000);
        temp_t2->unk404D4 = 0;
        var_a7 = temp_a5->unk4C;
        var_a3 = temp_a5->unk15 * 8;
        break;
    case 13:
        temp_t2->unk4052C = 0x100B;
        var_a3 = 1;
        var_a7 = 0;
        temp_t2->unk404D4 = (s32) (temp_a5->unk4C & 3);
        break;
    case 12:
        temp_t2->unk4052C = 0x1008;
        var_a3 = 1;
        var_a7 = 0;
        var_a2 = temp_a5->unk4C & 0xF;
        temp_t2->unk404D4 = var_a2;
        break;
    case 14:
        temp_t2->unk4052C = 0x100B;
        var_a3 = 9;
        var_a7 = 0;
        temp_t2->unk404D4 = (s32) (temp_a5->unk4C & 0xC);
        break;
    }
    temp_a0 = var_s2_2 < var_s1_2;
    temp_t2->unk40530 = (s32) temp_a5->unk40;
    temp_t2->unk4077C = (s32) (var_a7 & 0xFFFFFF);
    temp_a4_2 = var_s5 + 1;
    temp_t2->unk4077C = (s32) temp_a5->unk48;
    temp_t2->unk4077C = var_a3;
    if (var_s4 == var_s6) {
        temp_v1_3 = var_s1_2;
        if (temp_a0 != 0) {
            var_s1_2 = var_s2_2;
            var_s2_2 = temp_v1_3;
        }
        if (temp_s3 < var_s1_2) {
            sp0 = temp_s3;
            var_a2_2 = var_s2_2 + 1;
        } else {
            sp0 = var_s1_2;
            if (var_s2_2 < temp_s3) {
                var_a0 = temp_s3;
            } else {
                var_a0 = var_s2_2;
            }
            var_a2_2 = var_a0 + 1;
        }
        sp4 = var_a2_2;
        sp6 = temp_a4_2;
        sp2 = (s16) var_s4;
        temp_v0_2 = temp_a6->unk17C(temp_a5->unk8, sp, var_a2_2, var_a3, temp_a4_2, temp_a5, temp_a6, var_a7);
        if (temp_v0_2 != 1) {
            if (temp_v0_2 != 0) {
                return 0;
            }
            return 1;
        }
        temp_s6 = var_s5 - var_s4;
        temp_a6_2 = temp_s3 - var_s1_2;
        if (temp_s6 != 0) {
            temp_lo = temp_a6_2 / temp_s6;
            temp_a3 = temp_s6 * 2;
            temp_lo_2 = temp_a3 * temp_lo;
            M2C_TRAP_IF(temp_s6 == 0);
            sp8 = (s32) var_s1_2;
            spC = temp_lo;
            if (temp_a6_2 >= 0) {
                sp10 = temp_lo + 1;
                temp_v1_4 = (temp_a6_2 * 2) - temp_lo_2;
                sp14 = temp_v1_4;
                sp1C = temp_v1_4 - 1;
                sp18 = temp_v1_4 - temp_a3;
            } else {
                sp10 = temp_lo - 1;
                temp_a1 = ((var_s1_2 - temp_s3) * 2) + temp_lo_2;
                sp14 = temp_a1;
                temp_a1_2 = temp_a1 - temp_a3;
                sp1C = temp_a1_2;
                sp18 = temp_a1_2;
            }
            temp_a0_2 = temp_s3 - var_s2_2;
            if (temp_s6 != 0) {
                temp_lo_3 = temp_a0_2 / temp_s6;
                temp_a3_2 = temp_s6 * 2;
                temp_lo_4 = temp_a3_2 * temp_lo_3;
                M2C_TRAP_IF(temp_s6 == 0);
                sp20 = (s32) var_s2_2;
                sp24 = temp_lo_3;
                if (temp_a0_2 >= 0) {
                    sp28 = temp_lo_3 + 1;
                    temp_a2 = (temp_a0_2 * 2) - temp_lo_4;
                    sp2C = temp_a2;
                    sp34 = temp_a2 - 1;
                    sp30 = temp_a2 - temp_a3_2;
                } else {
                    sp28 = temp_lo_3 - 1;
                    temp_a1_3 = ((var_s2_2 - temp_s3) * 2) + temp_lo_4;
                    sp2C = temp_a1_3;
                    temp_a1_4 = temp_a1_3 - temp_a3_2;
                    sp34 = temp_a1_4;
                    sp30 = temp_a1_4;
                }
            }
        }
        temp_t2->unk404C4 = 0;
        if (temp_s6 > 0) {
            var_a5 = var_s4;
            var_a0_2 = sp8;
            var_a3_2 = sp1C;
            var_v0 = sp20;
            var_a4 = sp34;
            if (temp_s6 & 1) {
                if (var_v0 != var_a0_2) {
                    temp_t2->unk4077C = var_a0_2;
                    temp_t2->unk4077C = var_a5;
                    temp_t2->unk4077C = (s32) (var_v0 - var_a0_2);
                }
                if (var_a3_2 < 0) {
                    var_a3_2 += sp14;
                    var_a0_2 += spC;
                    if (var_a4 < 0) {
                        goto block_171;
                    }
                    goto block_105;
                }
                var_a3_2 += sp18;
                var_a0_2 += sp10;
                if (var_a4 >= 0) {
block_105:
                    var_a4 += sp30;
                    var_v0 += sp28;
                } else {
block_171:
                    var_a4 += sp2C;
                    var_v0 += sp24;
                }
                var_a5 += 1;
            }
            if ((temp_s6 >> 1) != 0) {
loop_121:
                if (var_v0 != var_a0_2) {
                    temp_t2->unk4077C = var_a0_2;
                    temp_t2->unk4077C = var_a5;
                    temp_t2->unk4077C = (s32) (var_v0 - var_a0_2);
                    if (var_a3_2 < 0) {
                        goto block_123;
                    }
                    goto block_111;
                }
                if (var_a3_2 >= 0) {
block_111:
                    var_a3_3 = var_a3_2 + sp18;
                    var_a0_3 = sp10 + var_a0_2;
                    if (var_a4 >= 0) {
                        goto block_112;
                    }
                    goto block_124;
                }
block_123:
                var_a3_3 = var_a3_2 + sp14;
                var_a0_3 = spC + var_a0_2;
                if (var_a4 < 0) {
block_124:
                    var_a4_2 = var_a4 + sp2C;
                    var_v0_2 = sp24 + var_v0;
                } else {
block_112:
                    var_a4_2 = var_a4 + sp30;
                    var_v0_2 = sp28 + var_v0;
                }
                temp_a5_2 = var_a5 + 1;
                if (var_v0_2 != var_a0_3) {
                    temp_t2->unk4077C = var_a0_3;
                    temp_t2->unk4077C = temp_a5_2;
                    temp_t2->unk4077C = (s32) (var_v0_2 - var_a0_3);
                }
                if (var_a3_3 < 0) {
                    var_a3_2 = var_a3_3 + sp14;
                    var_a0_2 = spC + var_a0_3;
                    if (var_a4_2 < 0) {
                        goto block_126;
                    }
                    goto block_119;
                }
                var_a3_2 = var_a3_3 + sp18;
                var_a0_2 = sp10 + var_a0_3;
                if (var_a4_2 >= 0) {
block_119:
                    var_a4 = var_a4_2 + sp30;
                    var_v0 = sp28 + var_v0_2;
                } else {
block_126:
                    var_a4 = var_a4_2 + sp2C;
                    var_v0 = sp24 + var_v0_2;
                }
                var_a5 = temp_a5_2 + 1;
                if (var_a5 != (temp_s6 + var_s4)) {
                    goto loop_121;
                }
            }
        }
        /* Duplicate return node #90. Try simplifying control flow for better match */
        temp_t2->unk4077C = 0x500;
        temp_t2->unk4077C = 0x400;
        temp_t2->unk4077C = 1;
        temp_t2->unk407A8 = -1;
        return 1;
    }
    temp_a7_2 = var_s1_2 < var_s2_2;
    var_a3_4 = var_s1_2;
    if (temp_a7_2 == 0) {
        var_a3_4 = var_s2_2;
    }
    var_a3_5 = temp_s3;
    if (var_a3_4 < temp_s3) {
        var_a7_2 = var_s1_2;
        if (temp_a7_2 == 0) {
            var_a7_2 = var_s2_2;
        }
        var_a3_5 = var_a7_2;
    }
    sp0 = var_a3_5;
    if (temp_a0 != 0) {
        var_a3_6 = var_s1_2;
    } else {
        var_a3_6 = var_s2_2;
    }
    if (temp_s3 >= var_a3_6) {
        var_a7_3 = temp_s3;
    } else {
        var_a0_4 = var_s1_2;
        if (temp_a0 == 0) {
            var_a0_4 = var_s2_2;
        }
        var_a7_3 = var_a0_4;
    }
    sp6 = temp_a4_2;
    sp2 = (s16) var_s4;
    sp4 = var_a7_3 + 1;
    temp_v0_3 = temp_a6->unk17C(temp_a5->unk8, sp, (s16) var_a2, (s32) var_a3_6, temp_a4_2, temp_a5, temp_a6, (s32) var_a7_3);
    if (temp_v0_3 != 1) {
        if (temp_v0_3 != 0) {
            return 0;
        }
        return 1;
    }
    temp_a0_3 = var_s6 - var_s4;
    temp_a5_3 = var_s2_2 - var_s1_2;
    if (temp_a0_3 != 0) {
        temp_lo_5 = temp_a5_3 / temp_a0_3;
        temp_a3_3 = temp_a0_3 * 2;
        temp_lo_6 = temp_a3_3 * temp_lo_5;
        M2C_TRAP_IF(temp_a0_3 == 0);
        sp20 = (s32) var_s1_2;
        sp24 = temp_lo_5;
        if (temp_a5_3 >= 0) {
            sp28 = temp_lo_5 + 1;
            temp_a1_5 = (temp_a5_3 * 2) - temp_lo_6;
            sp2C = temp_a1_5;
            sp34 = temp_a1_5 - 1;
            sp30 = temp_a1_5 - temp_a3_3;
        } else {
            sp28 = temp_lo_5 - 1;
            temp_at_2 = ((var_s1_2 - var_s2_2) * 2) + temp_lo_6;
            sp2C = temp_at_2;
            temp_at_3 = temp_at_2 - temp_a3_3;
            sp34 = temp_at_3;
            sp30 = temp_at_3;
        }
    }
    temp_v0_4 = var_s5 - var_s4;
    temp_a6_3 = temp_s3 - var_s1_2;
    if (temp_v0_4 != 0) {
        temp_lo_7 = temp_a6_3 / temp_v0_4;
        temp_a3_4 = temp_v0_4 * 2;
        temp_lo_8 = temp_a3_4 * temp_lo_7;
        M2C_TRAP_IF(temp_v0_4 == 0);
        sp8 = (s32) var_s1_2;
        spC = temp_lo_7;
        if (temp_a6_3 >= 0) {
            sp10 = temp_lo_7 + 1;
            temp_at_4 = (temp_a6_3 * 2) - temp_lo_8;
            sp14 = temp_at_4;
            sp1C = temp_at_4 - 1;
            sp18 = temp_at_4 - temp_a3_4;
        } else {
            sp10 = temp_lo_7 - 1;
            temp_a1_6 = ((var_s1_2 - temp_s3) * 2) + temp_lo_8;
            sp14 = temp_a1_6;
            temp_a1_7 = temp_a1_6 - temp_a3_4;
            sp1C = temp_a1_7;
            sp18 = temp_a1_7;
        }
    }
    sp40 = temp_a0_3;
    temp_t2->unk404C4 = 0;
    if (temp_a0_3 > 0) {
        var_t2 = 0;
        var_a5_2 = var_s4;
        var_a0_5 = sp8;
        var_a3_7 = sp1C;
        var_v0_3 = sp20;
        var_a4_3 = sp34;
        sp48 = sp40;
        if (sp40 & 1) {
            if (var_a0_5 < var_v0_3) {
                temp_t2->unk4077C = var_a0_5;
                temp_t2->unk4077C = var_a5_2;
                temp_t2->unk4077C = (s32) (var_v0_3 - var_a0_5);
                if (var_a3_7 < 0) {
                    goto block_62;
                }
                goto block_67;
            }
            if (var_v0_3 != var_a0_5) {
                temp_t2->unk4077C = var_v0_3;
                temp_t2->unk4077C = var_a5_2;
                temp_t2->unk4077C = (s32) (var_a0_5 - var_v0_3);
            }
            if (var_a3_7 >= 0) {
block_67:
                var_a3_7 += sp18;
                var_a0_5 += sp10;
                if (var_a4_3 >= 0) {
                    goto block_68;
                }
                goto block_63;
            }
block_62:
            var_a3_7 += sp14;
            var_a0_5 += spC;
            if (var_a4_3 < 0) {
block_63:
                var_a4_3 += sp2C;
                var_v0_3 += sp24;
            } else {
block_68:
                var_a4_3 += sp30;
                var_v0_3 += sp28;
            }
            var_a5_2 += 1;
            var_t2 = 1;
        }
        var_a1 = var_v0_3 - var_a0_5;
        if ((sp48 >> 1) != 0) {
loop_153:
            if (var_a0_5 < var_v0_3) {
                temp_t2->unk4077C = var_a0_5;
                temp_t2->unk4077C = var_a5_2;
                temp_t2->unk4077C = var_a1;
                if (var_a3_7 < 0) {
                    goto block_155;
                }
                goto block_160;
            }
            if (var_v0_3 != var_a0_5) {
                temp_t2->unk4077C = var_v0_3;
                temp_t2->unk4077C = var_a5_2;
                temp_t2->unk4077C = (s32) (var_a0_5 - var_v0_3);
            }
            if (var_a3_7 >= 0) {
block_160:
                var_a3_8 = var_a3_7 + sp18;
                var_a0_6 = sp10 + var_a0_5;
                if (var_a4_3 >= 0) {
                    goto block_161;
                }
                goto block_156;
            }
block_155:
            var_a3_8 = var_a3_7 + sp14;
            var_a0_6 = spC + var_a0_5;
            if (var_a4_3 < 0) {
block_156:
                var_a4_4 = var_a4_3 + sp2C;
                var_v0_4 = sp24 + var_v0_3;
            } else {
block_161:
                var_a4_4 = var_a4_3 + sp30;
                var_v0_4 = sp28 + var_v0_3;
            }
            temp_a5_4 = var_a5_2 + 1;
            if (var_a0_6 < var_v0_4) {
                temp_t2->unk4077C = var_a0_6;
                temp_t2->unk4077C = temp_a5_4;
                temp_t2->unk4077C = (s32) (var_v0_4 - var_a0_6);
                if (var_a3_8 < 0) {
                    goto block_164;
                }
                goto block_149;
            }
            if (var_v0_4 != var_a0_6) {
                temp_t2->unk4077C = var_v0_4;
                temp_t2->unk4077C = temp_a5_4;
                temp_t2->unk4077C = (s32) (var_a0_6 - var_v0_4);
            }
            if (var_a3_8 >= 0) {
block_149:
                var_a3_7 = var_a3_8 + sp18;
                var_a0_5 = sp10 + var_a0_6;
                if (var_a4_4 >= 0) {
                    goto block_150;
                }
                goto block_165;
            }
block_164:
            var_a3_7 = var_a3_8 + sp14;
            var_a0_5 = spC + var_a0_6;
            if (var_a4_4 < 0) {
block_165:
                var_a4_3 = var_a4_4 + sp2C;
                var_v0_3 = sp24 + var_v0_4;
            } else {
block_150:
                var_a4_3 = var_a4_4 + sp30;
                var_v0_3 = sp28 + var_v0_4;
            }
            var_a5_2 = temp_a5_4 + 1;
            var_t2 = var_t2 + 1 + 1;
            if (var_a5_2 != (sp40 + var_s4)) {
                var_a1 = var_v0_3 - var_a0_5;
                goto loop_153;
            }
        }
        sp8 = var_a0_5;
        sp1C = var_a3_7;
        sp20 = var_v0_3;
        sp34 = var_a4_3;
    } else {
        var_t2 = 0;
    }
    temp_v0_5 = var_s5 - var_s6;
    temp_a0_4 = temp_s3 - var_s2_2;
    if (temp_v0_5 != 0) {
        temp_lo_9 = temp_a0_4 / temp_v0_5;
        temp_a5_5 = temp_v0_5 * 2;
        temp_lo_10 = temp_a5_5 * temp_lo_9;
        M2C_TRAP_IF(temp_v0_5 == 0);
        sp20 = (s32) var_s2_2;
        sp24 = temp_lo_9;
        if (temp_a0_4 >= 0) {
            sp28 = temp_lo_9 + 1;
            temp_a2_2 = (temp_a0_4 * 2) - temp_lo_10;
            sp2C = temp_a2_2;
            sp34 = temp_a2_2 - 1;
            sp30 = temp_a2_2 - temp_a5_5;
        } else {
            sp28 = temp_lo_9 - 1;
            temp_at_5 = ((var_s2_2 - temp_s3) * 2) + temp_lo_10;
            sp2C = temp_at_5;
            temp_at_6 = temp_at_5 - temp_a5_5;
            sp34 = temp_at_6;
            sp30 = temp_at_6;
        }
    }
    sp88 = temp_v0_5;
    if (temp_v0_5 > 0) {
        var_a0_7 = sp8;
        var_a3_9 = sp1C;
        var_v0_5 = sp20;
        var_a4_5 = sp34;
        var_a5_3 = var_t2 + var_s4;
        temp_s1 = var_a5_3 + sp88;
        if (sp88 & 1) {
            if (var_a0_7 < var_v0_5) {
                temp_t2->unk4077C = var_a0_7;
                temp_t2->unk4077C = var_a5_3;
                temp_t2->unk4077C = (s32) (var_v0_5 - var_a0_7);
                if (var_a3_9 < 0) {
                    goto block_79;
                }
                goto block_84;
            }
            if (var_v0_5 != var_a0_7) {
                temp_t2->unk4077C = var_v0_5;
                temp_t2->unk4077C = var_a5_3;
                temp_t2->unk4077C = (s32) (var_a0_7 - var_v0_5);
            }
            if (var_a3_9 >= 0) {
block_84:
                var_a3_9 += sp18;
                var_a0_7 += sp10;
                if (var_a4_5 >= 0) {
                    goto block_85;
                }
                goto block_80;
            }
block_79:
            var_a3_9 += sp14;
            var_a0_7 += spC;
            if (var_a4_5 < 0) {
block_80:
                var_a4_5 += sp2C;
                var_v0_5 += sp24;
            } else {
block_85:
                var_a4_5 += sp30;
                var_v0_5 += sp28;
            }
            var_a5_3 += 1;
        }
        if ((sp88 >> 1) != 0) {
loop_133:
            if (var_a0_7 < var_v0_5) {
                temp_t2->unk4077C = var_a0_7;
                temp_t2->unk4077C = var_a5_3;
                temp_t2->unk4077C = (s32) (var_v0_5 - var_a0_7);
                if (var_a3_9 < 0) {
                    goto block_135;
                }
                goto block_140;
            }
            if (var_v0_5 != var_a0_7) {
                temp_t2->unk4077C = var_v0_5;
                temp_t2->unk4077C = var_a5_3;
                temp_t2->unk4077C = (s32) (var_a0_7 - var_v0_5);
            }
            if (var_a3_9 >= 0) {
block_140:
                var_a3_10 = var_a3_9 + sp18;
                var_a0_8 = sp10 + var_a0_7;
                if (var_a4_5 >= 0) {
                    goto block_141;
                }
                goto block_136;
            }
block_135:
            var_a3_10 = var_a3_9 + sp14;
            var_a0_8 = spC + var_a0_7;
            if (var_a4_5 < 0) {
block_136:
                var_a4_6 = var_a4_5 + sp2C;
                var_v0_6 = sp24 + var_v0_5;
            } else {
block_141:
                var_a4_6 = var_a4_5 + sp30;
                var_v0_6 = sp28 + var_v0_5;
            }
            temp_a5_6 = var_a5_3 + 1;
            if (var_a0_8 < var_v0_6) {
                temp_t2->unk4077C = var_a0_8;
                temp_t2->unk4077C = temp_a5_6;
                temp_t2->unk4077C = (s32) (var_v0_6 - var_a0_8);
                if (var_a3_10 < 0) {
                    goto block_144;
                }
                goto block_130;
            }
            if (var_v0_6 != var_a0_8) {
                temp_t2->unk4077C = var_v0_6;
                temp_t2->unk4077C = temp_a5_6;
                temp_t2->unk4077C = (s32) (var_a0_8 - var_v0_6);
            }
            if (var_a3_10 >= 0) {
block_130:
                var_a3_9 = var_a3_10 + sp18;
                var_a0_7 = sp10 + var_a0_8;
                if (var_a4_6 >= 0) {
                    goto block_131;
                }
                goto block_145;
            }
block_144:
            var_a3_9 = var_a3_10 + sp14;
            var_a0_7 = spC + var_a0_8;
            if (var_a4_6 < 0) {
block_145:
                var_a4_5 = var_a4_6 + sp2C;
                var_v0_5 = sp24 + var_v0_6;
            } else {
block_131:
                var_a4_5 = var_a4_6 + sp30;
                var_v0_5 = sp28 + var_v0_6;
            }
            var_a5_3 = temp_a5_6 + 1;
            if (var_a5_3 != temp_s1) {
                goto loop_133;
            }
        }
    }
    temp_t2->unk4077C = 0x500;
    temp_t2->unk4077C = 0x400;
    temp_t2->unk4077C = 1;
    temp_t2->unk407A8 = -1;
    return 1;
}

s32 expFillPolygon(void *arg0, void *arg1, s32 arg2, s64 arg3, s32 arg4, void *arg5) {
    s64 spE0;
    s64 spC8;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    u64 sp60;
    u64 sp58;
    u64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a2_2;
    s16 temp_a3_5;
    s16 temp_a7;
    s16 temp_t2;
    s16 temp_t3;
    s16 var_a0_2;
    s16 var_a3_2;
    s16 var_a3_3;
    s16 var_s1;
    s16 var_s7_2;
    s16 var_v0;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3_4;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_t3_2;
    s32 temp_t9;
    s32 temp_v0;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a4_2;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_at;
    s32 var_at_2;
    s32 var_ra;
    s32 var_s7_3;
    s32 var_t0_2;
    s32 var_t1_3;
    s32 var_t3;
    s32 var_t8;
    s32 var_t9;
    s32 var_v0_2;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a0_5;
    s64 temp_a3_3;
    s64 temp_a6_2;
    s64 temp_a6_3;
    s64 temp_a7_2;
    s64 temp_a7_3;
    s64 temp_a7_4;
    s64 temp_at_2;
    s64 temp_at_3;
    s64 temp_at_4;
    s64 temp_t0;
    s64 temp_t0_2;
    s64 temp_t0_3;
    s64 temp_t0_4;
    s64 temp_t1;
    s64 temp_v0_2;
    s64 var_a2;
    s64 var_a3;
    s64 var_a4;
    s64 var_a5;
    s64 var_s5;
    s64 var_t0;
    s64 var_t1;
    u64 temp_a3;
    u64 temp_a3_2;
    u64 temp_a6;
    u64 temp_at;
    void *temp_a0_2;
    void *temp_a5_2;
    void *var_a0;
    void *var_s7;
    void *var_t1_2;

    var_a6 = 0x161498;
    temp_a5 = nfbGCPrivateIndex * 4;
    temp_a4 = expScreenPrivateIndex * 4;
    sp20 = (s64) *(arg1->unk4C + temp_a5);
    sp28 = (s64) **(arg1->unk0->unk1B4 + temp_a4);
    if (arg4 != 3) {
        var_a7 = arg4 < 3;
        if (var_a7 == 0) {
            if (arg2 == 2) {
                var_s7 = arg5;
                temp_t2 = arg0->unkA;
                temp_t3 = arg0->unk8;
                temp_a0 = arg4 >= 2;
                var_a5 = (s64) ((arg5->unk0 + temp_t3) << 0x30) >> 0x30;
                if (arg3 != 0) {
                    var_a3 = var_a5;
                    var_a4 = var_a5;
                    var_t0 = var_a5;
                    arg5->unk0 = (s16) var_a5;
                    temp_t3_2 = arg4 - 1;
                    var_t1 = (s64) ((arg5->unk2 + temp_t2) << 0x30) >> 0x30;
                    arg5->unk2 = (s16) var_t1;
                    var_s5 = var_t1;
                    var_a2 = var_t1;
                    if (temp_a0 != 0) {
                        var_a5 = (s64) arg5;
                        var_a0 = arg5 + 4;
                        if (temp_t3_2 & 1) {
                            var_t0 = (s64) ((var_a5->unk4 + var_t0) << 0x30) >> 0x30;
                            var_t1 = (s64) ((var_a5->unk6 + var_t1) << 0x30) >> 0x30;
                            var_a5->unk6 = (s16) var_t1;
                            var_a6 = var_t0 < var_a3;
                            var_a5->unk4 = (s16) var_t0;
                            if (var_t1 < var_a2) {
                                var_s7 = var_a0;
                                var_a2 = var_t1;
                            } else if (var_s5 < var_t1) {
                                var_s5 = var_t1;
                            }
                            var_a5 += 4;
                            if (var_a6 != 0) {
                                var_a3 = var_t0;
                            } else {
                                var_a6 = var_a4 < var_t0;
                                if (var_a6 != 0) {
                                    var_a4 = var_t0;
                                }
                            }
                            var_a0 += 4;
                        }
                        var_a7 = temp_t3_2 >> 1;
                        if (var_a7 != 0) {
loop_29:
                            temp_t0 = (s64) ((var_a5->unk4 + var_t0) << 0x30) >> 0x30;
                            temp_t1 = (s64) ((var_a5->unk6 + var_t1) << 0x30) >> 0x30;
                            var_a5->unk6 = (s16) temp_t1;
                            var_a5->unk4 = (s16) temp_t0;
                            if (temp_t1 < var_a2) {
                                var_s7 = var_a0;
                                var_a2 = temp_t1;
                                goto block_21;
                            }
                            var_a6_2 = temp_t0 < var_a3;
                            if (var_s5 < temp_t1) {
                                var_s5 = temp_t1;
block_21:
                                var_a6_2 = temp_t0 < var_a3;
                            }
                            if (var_a6_2 != 0) {
                                var_a3 = temp_t0;
                            } else if (var_a4 < temp_t0) {
                                var_a4 = temp_t0;
                            }
                            temp_a0_2 = var_a0 + 4;
                            var_t0 = (s64) ((var_a5->unk8 + temp_t0) << 0x30) >> 0x30;
                            var_t1 = (s64) ((var_a5->unkA + temp_t1) << 0x30) >> 0x30;
                            var_a5->unkA = (s16) var_t1;
                            var_a7 = var_t1 < var_a2;
                            var_a5->unk8 = (s16) var_t0;
                            if (var_a7 != 0) {
                                var_s7 = temp_a0_2;
                                var_a2 = var_t1;
                            } else {
                                var_a7 = var_s5 < var_t1;
                                if (var_a7 != 0) {
                                    var_s5 = var_t1;
                                }
                            }
                            var_a5 += 8;
                            var_a6 = var_t0 < var_a3;
                            var_a0 = temp_a0_2 + 4;
                            if (var_a6 != 0) {
                                var_a3 = var_t0;
                            } else if (var_a4 < var_t0) {
                                var_a4 = var_t0;
                            }
                            if (var_a0 != ((temp_t3_2 * 4) + arg5 + 4)) {
                                goto loop_29;
                            }
                        }
                    }
                } else {
                    var_a3 = var_a5;
                    var_a4 = var_a5;
                    arg5->unk0 = (s16) var_a5;
                    var_s5 = (s64) ((arg5->unk2 + temp_t2) << 0x30) >> 0x30;
                    arg5->unk2 = (s16) var_s5;
                    var_a2 = var_s5;
                    if (temp_a0 != 0) {
                        var_t1_2 = arg5;
                        var_a5 = (s64) (arg5 + 4);
                        temp_t9 = arg4 - 1;
                        if (temp_t9 & 1) {
                            temp_t0_2 = (s64) ((var_t1_2->unk6 + temp_t2) << 0x30) >> 0x30;
                            var_t1_2->unk6 = (s16) temp_t0_2;
                            temp_a0_3 = (s64) ((var_t1_2->unk4 + temp_t3) << 0x30) >> 0x30;
                            var_t1_2->unk4 = (s16) temp_a0_3;
                            if (temp_t0_2 < var_a2) {
                                var_s7 = (void *) var_a5;
                                var_a2 = temp_t0_2;
                                goto block_48;
                            }
                            var_at = temp_a0_3 < var_a3;
                            if (var_s5 < temp_t0_2) {
                                var_s5 = temp_t0_2;
block_48:
                                var_at = temp_a0_3 < var_a3;
                            }
                            if (var_at != 0) {
                                var_a3 = temp_a0_3;
                            } else if (var_a4 < temp_a0_3) {
                                var_a4 = temp_a0_3;
                            }
                            var_a5 += 4;
                            var_t1_2 += 4;
                        }
                        if ((temp_t9 >> 1) != 0) {
loop_57:
                            temp_a0_4 = (s64) ((var_t1_2->unk4 + temp_t3) << 0x30) >> 0x30;
                            temp_t0_3 = (s64) ((var_t1_2->unk6 + temp_t2) << 0x30) >> 0x30;
                            var_t1_2->unk6 = (s16) temp_t0_3;
                            var_a7 = temp_t0_3 < var_a2;
                            var_t1_2->unk4 = (s16) temp_a0_4;
                            if (var_a7 != 0) {
                                var_s7 = (void *) var_a5;
                                var_a2 = temp_t0_3;
                                goto block_59;
                            }
                            var_at_2 = temp_a0_4 < var_a3;
                            if (var_s5 < temp_t0_3) {
                                var_s5 = temp_t0_3;
block_59:
                                var_at_2 = temp_a0_4 < var_a3;
                            }
                            var_a6 = var_a4 < temp_a0_4;
                            if (var_at_2 != 0) {
                                var_a3 = temp_a0_4;
                            } else if (var_a6 != 0) {
                                var_a4 = temp_a0_4;
                            }
                            temp_a5_2 = var_a5 + 4;
                            temp_a0_5 = (s64) ((var_t1_2->unk8 + temp_t3) << 0x30) >> 0x30;
                            temp_t0_4 = (s64) ((var_t1_2->unkA + temp_t2) << 0x30) >> 0x30;
                            var_t1_2->unkA = (s16) temp_t0_4;
                            var_t1_2->unk8 = (s16) temp_a0_5;
                            if (temp_t0_4 < var_a2) {
                                var_s7 = temp_a5_2;
                                var_a2 = temp_t0_4;
                            } else {
                                var_a7 = var_s5 < temp_t0_4;
                                if (var_a7 != 0) {
                                    var_s5 = temp_t0_4;
                                }
                            }
                            var_t1_2 += 8;
                            var_a5 = (s64) (temp_a5_2 + 4);
                            if (temp_a0_5 < var_a3) {
                                var_a3 = temp_a0_5;
                            } else {
                                var_a6 = var_a4 < temp_a0_5;
                                if (var_a6 != 0) {
                                    var_a4 = temp_a0_5;
                                }
                            }
                            if (var_a5 != ((temp_t9 * 4) + arg5 + 4)) {
                                goto loop_57;
                            }
                        }
                    }
                }
                sp90 = (s64) arg0;
                sp80 = (s64) arg1;
                if ((var_s5 - var_a2) != 0) {
                    sp2 = (s16) var_a2;
                    sp0 = (s16) var_a3;
                    sp6 = var_s5 + 1;
                    sp4 = var_a4 + 1;
                    temp_v0 = (*sp80)->unk17C(sp20->unk8, sp, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
                    if (temp_v0 != 1) {
                        if (temp_v0 == 0) {
                            return 1;
                        }
                        return miFillConvexPoly(sp90, sp80, arg4, arg5);
                    }
                    temp_a2 = (*(sp90->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                    switch (temp_a2) {              /* irregular */
                    default:
                        sp28->unk4052C = (s32) (temp_a2 | 0x1000);
                        sp28->unk404D4 = 0;
                        sp18 = (s64) sp20->unk4C;
                        sp8 = sp20->unk15 * 8;
                        break;
                    case 13:
                        sp28->unk4052C = 0x100B;
                        sp18 = 0;
                        sp8 = 1;
                        sp28->unk404D4 = (s32) (sp20->unk4C & 3);
                        break;
                    case 12:
                        sp28->unk4052C = 0x1008;
                        sp18 = 0;
                        sp8 = 1;
                        sp28->unk404D4 = (s32) (sp20->unk4C & 0xF);
                        break;
                    case 14:
                        sp28->unk4052C = 0x100B;
                        sp18 = 0;
                        sp8 = 9;
                        sp28->unk404D4 = (s32) (sp20->unk4C & 0xC);
                        break;
                    }
                    var_ra = 0;
                    var_a4_2 = 0;
                    var_t1_3 = 0;
                    var_t8 = 0;
                    var_a0_2 = 0;
                    var_a1 = 0;
                    var_t9 = 0;
                    var_a5_2 = 0;
                    var_t3 = 0;
                    var_v0 = 0;
                    sp50 = (u64) var_s7;
                    sp58 = (u64) var_s7;
                    sp28->unk40530 = (s32) sp20->unk40;
                    sp28->unk4077C = (s32) (sp18 & 0xFFFFFF);
                    sp10 = arg4 * 4;
                    var_t0_2 = 0;
                    sp28->unk4077C = (s32) sp20->unk48;
                    sp28->unk4077C = (s32) sp8;
                    temp_a7 = var_s7->unk2;
                    var_a2_2 = 0;
                    sp28->unk404C4 = 0;
                    spE0 = (s64) temp_a7;
                    var_s1 = temp_a7;
loop_85:
                    var_s7_2 = sp58->unk2;
                    if (var_s7_2 == var_s1) {
                        temp_a3 = sp58;
                        temp_at = sp58 + 4;
                        sp58 = temp_at;
                        if (temp_at >= (u32) (sp10 + arg5)) {
                            sp58 = (u64) arg5;
                        }
                        var_s7_2 = sp58->unk2;
                        temp_a7_2 = var_s7_2 - temp_a3->unk2;
                        sp68 = temp_a7_2;
                        if (temp_a7_2 != 0) {
                            var_v0 = temp_a3->unk0;
                            temp_at_2 = sp58->unk0 - var_v0;
                            sp30 = sp68 * 2;
                            M2C_TRAP_IF(sp68 == 0);
                            var_t3 = temp_at_2 / sp68;
                            sp48 = temp_at_2;
                            if (temp_at_2 >= 0) {
                                var_t0_2 = var_t3 + 1;
                                var_t9 = (sp48 * 2) - (var_t3 * sp30);
                                var_a2_2 = var_t9 - 1;
                                var_a5_2 = var_t9 - sp30;
                            } else {
                                var_t0_2 = var_t3 - 1;
                                var_t9 = (sp48 * -2) + (var_t3 * sp30);
                                var_a5_2 = var_t9 - sp30;
                                var_a2_2 = var_a5_2;
                            }
                        }
                    }
                    var_a3_2 = sp50->unk2;
                    if (var_a3_2 == var_s1) {
                        temp_a3_2 = sp50;
                        temp_a6 = sp50 - 4;
                        sp50 = temp_a6;
                        if (temp_a6 < (u32) arg5) {
                            sp60 = temp_a3_2;
                            sp50 = (u64) ((sp10 + arg5) - 4);
                        }
                        sp60 = temp_a3_2;
                        var_a3_2 = sp50->unk2;
                        temp_at_3 = var_a3_2 - sp60->unk2;
                        sp70 = temp_at_3;
                        if (temp_at_3 != 0) {
                            var_a0_2 = sp60->unk0;
                            temp_a6_2 = sp50->unk0 - var_a0_2;
                            sp40 = sp70 * 2;
                            M2C_TRAP_IF(sp70 == 0);
                            var_t8 = temp_a6_2 / sp70;
                            sp38 = temp_a6_2;
                            if (temp_a6_2 >= 0) {
                                var_t1_3 = var_t8 + 1;
                                var_ra = (sp38 * 2) - (var_t8 * sp40);
                                var_a1 = var_ra - 1;
                                var_a4_2 = var_ra - sp40;
                            } else {
                                var_t1_3 = var_t8 - 1;
                                var_ra = (sp38 * -2) + (var_t8 * sp40);
                                var_a4_2 = var_ra - sp40;
                                var_a1 = var_a4_2;
                            }
                        }
                    }
                    if (var_s7_2 >= var_a3_2) {
                        var_s7_2 = var_a3_2;
                    } else {
                        spC8 = (s64) var_s7_2;
                    }
                    temp_a3_3 = var_s7_2 - var_s1;
                    if (temp_a3_3 >= 0) {
                        sp88 = temp_a3_3;
                        if (temp_a3_3 > 0) {
                            var_s7_3 = 0;
                            var_a3_3 = var_s1;
                            sp78 = sp88;
                            unkspB0 = sp88 + var_s1;
                            if (sp88 & 1) {
                                if (var_v0 < var_a0_2) {
                                    sp28->unk4077C = (s32) var_v0;
                                    sp28->unk4077C = (s32) var_a3_3;
                                    sp28->unk4077C = (s32) (var_a0_2 - var_v0);
                                    if (var_a2_2 < 0) {
                                        goto block_106;
                                    }
                                    goto block_80;
                                }
                                if (var_v0 != var_a0_2) {
                                    sp28->unk4077C = (s32) var_a0_2;
                                    sp28->unk4077C = (s32) var_a3_3;
                                    sp28->unk4077C = (s32) (var_v0 - var_a0_2);
                                }
                                if (var_a2_2 >= 0) {
block_80:
                                    var_a2_2 += var_a5_2;
                                    var_v0 += var_t0_2;
                                    if (var_a1 >= 0) {
                                        goto block_81;
                                    }
                                    goto block_107;
                                }
block_106:
                                var_a2_2 += var_t9;
                                var_v0 += var_t3;
                                if (var_a1 < 0) {
block_107:
                                    var_a1 += var_ra;
                                    var_a0_2 += var_t8;
                                } else {
block_81:
                                    var_a1 += var_a4_2;
                                    var_a0_2 += var_t1_3;
                                }
                                var_s7_3 = 1;
                                var_a3_3 += 1;
                            }
                            var_a7_2 = var_a0_2 - var_v0;
                            if ((sp78 >> 1) != 0) {
loop_115:
                                if (var_v0 < var_a0_2) {
                                    sp28->unk4077C = (s32) var_v0;
                                    sp28->unk4077C = (s32) var_a3_3;
                                    sp28->unk4077C = var_a7_2;
                                    if (var_a2_2 < 0) {
                                        goto block_117;
                                    }
                                    goto block_122;
                                }
                                if (var_v0 != var_a0_2) {
                                    sp28->unk4077C = (s32) var_a0_2;
                                    sp28->unk4077C = (s32) var_a3_3;
                                    sp28->unk4077C = (s32) (var_v0 - var_a0_2);
                                }
                                if (var_a2_2 >= 0) {
block_122:
                                    var_a2_3 = var_a2_2 + var_a5_2;
                                    var_v0_2 = var_v0 + var_t0_2;
                                    if (var_a1 >= 0) {
                                        goto block_123;
                                    }
                                    goto block_118;
                                }
block_117:
                                var_a2_3 = var_a2_2 + var_t9;
                                var_v0_2 = var_v0 + var_t3;
                                if (var_a1 < 0) {
block_118:
                                    var_a1_2 = var_a1 + var_ra;
                                    var_a0_3 = var_a0_2 + var_t8;
                                } else {
block_123:
                                    var_a1_2 = var_a1 + var_a4_2;
                                    var_a0_3 = var_a0_2 + var_t1_3;
                                }
                                temp_a3_4 = var_a3_3 + 1;
                                if (var_v0_2 < var_a0_3) {
                                    sp28->unk4077C = var_v0_2;
                                    sp28->unk4077C = temp_a3_4;
                                    sp28->unk4077C = (s32) (var_a0_3 - var_v0_2);
                                    if (var_a2_3 < 0) {
                                        goto block_126;
                                    }
                                    goto block_111;
                                }
                                if (var_v0_2 != var_a0_3) {
                                    sp28->unk4077C = var_a0_3;
                                    sp28->unk4077C = temp_a3_4;
                                    sp28->unk4077C = (s32) (var_v0_2 - var_a0_3);
                                }
                                if (var_a2_3 >= 0) {
block_111:
                                    var_a2_2 = var_a2_3 + var_a5_2;
                                    var_v0 = var_v0_2 + var_t0_2;
                                    if (var_a1_2 >= 0) {
                                        goto block_112;
                                    }
                                    goto block_127;
                                }
block_126:
                                var_a2_2 = var_a2_3 + var_t9;
                                var_v0 = var_v0_2 + var_t3;
                                if (var_a1_2 < 0) {
block_127:
                                    var_a1 = var_a1_2 + var_ra;
                                    var_a0_2 = var_a0_3 + var_t8;
                                } else {
block_112:
                                    var_a1 = var_a1_2 + var_a4_2;
                                    var_a0_2 = var_a0_3 + var_t1_3;
                                }
                                var_a3_3 = temp_a3_4 + 1;
                                var_s7_3 = var_s7_3 + 1 + 1;
                                if (var_a3_3 != unkspB0) {
                                    var_a7_2 = var_a0_2 - var_v0;
                                    goto loop_115;
                                }
                            }
                        } else {
                            var_s7_3 = 0;
                        }
                        var_s1 += var_s7_3;
                        spE0 = (s64) var_s1;
                        if (var_s5 != var_s1) {
                            goto loop_85;
                        }
                        sp28->unk4077C = 0x500;
                        sp28->unk4077C = 0x400;
                        sp28->unk4077C = 1;
                        sp28->unk407A8 = -1;
                    } else {
                        sp28->unk4077C = 0x500;
                        sp28->unk4077C = 0x400;
                        sp28->unk4077C = 1;
                        sp28->unk407A8 = -1;
                    }
                    return 1;
                }
                return 1;
            }
            return miFillPolygon(arg0, arg4, arg5, 0x161498, var_a7);
        }
        return 1;
    }
    sp90 = (s64) arg0;
    sp80 = (s64) arg1;
    sp98 = arg3;
    if (expFillTriangle(arg0, (void *) arg3, arg5, temp_a4, temp_a5, 0x161498) != 0) {
        return 1;
    }
    temp_a3_5 = sp90->unk8;
    temp_a2_2 = sp90->unkA;
    temp_v0_2 = arg5->unk0 + temp_a3_5;
    if (sp98 != 0) {
        temp_a7_3 = (s64) (temp_v0_2 << 0x30) >> 0x30;
        arg5->unk0 = (s16) temp_a7_3;
        temp_a6_3 = (s64) ((arg5->unk4 + temp_a7_3) << 0x30) >> 0x30;
        arg5->unk4 = (s16) temp_a6_3;
        temp_at_4 = (s64) ((arg5->unk2 + temp_a2_2) << 0x30) >> 0x30;
        arg5->unk2 = (s16) temp_at_4;
        arg5->unk8 = (s16) (arg5->unk8 + temp_a6_3);
        temp_a7_4 = (s64) ((arg5->unk6 + temp_at_4) << 0x30) >> 0x30;
        arg5->unk6 = (s16) temp_a7_4;
        arg5->unkA = (s16) (arg5->unkA + temp_a7_4);
    } else {
        arg5->unk0 = (s16) temp_v0_2;
        arg5->unkA = (s16) (arg5->unkA + temp_a2_2);
        arg5->unk8 = (s16) (arg5->unk8 + temp_a3_5);
        arg5->unk6 = (s16) (arg5->unk6 + temp_a2_2);
        arg5->unk4 = (s16) (arg5->unk4 + temp_a3_5);
        arg5->unk2 = (s16) (arg5->unk2 + temp_a2_2);
    }
    return miFillConvexPoly(sp90, sp80, arg4, arg5);
}

void expLineSS(void *arg0, void *arg1, s64 arg2, s32 arg3, s16 *arg4) {
    s64 sp2F8;
    s64 sp2F0;
    s64 sp2A8;
    s64 sp2A0;
    s64 sp298;
    s64 sp290;
    s64 sp288;
    s64 sp280;
    u64 sp278;
    s64 sp270;
    s64 sp268;
    s64 sp260;
    s64 sp258;
    u64 sp250;
    s64 sp248;
    s64 sp240;
    s64 sp238;
    s64 sp230;
    s64 sp228;
    s64 sp220;
    s64 sp218;
    s64 sp210;
    s64 sp208;
    s64 sp200;
    s64 sp1F8;
    s64 sp1F0;
    s64 sp1E8;
    s64 sp1E0;
    s64 sp1D8;
    s64 sp1D0;
    s64 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    s64 sp1A0;
    s64 sp198;
    s64 sp190;
    s64 sp188;
    s64 sp178;
    s64 sp170;
    s64 sp168;
    s64 sp160;
    u64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    u64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s16 *temp_a5_15;
    s16 *var_a4;
    s16 *var_t0_2;
    s16 temp_a2;
    s16 temp_a5_8;
    s16 temp_a6_11;
    s16 temp_a6_8;
    s16 temp_a7_2;
    s16 temp_a7_4;
    s16 temp_gp;
    s16 temp_ra;
    s16 temp_s0;
    s16 temp_s7;
    s16 temp_t0_5;
    s16 temp_t0_6;
    s16 temp_t8;
    s16 temp_t8_2;
    s16 temp_v0_5;
    s16 temp_v1_5;
    s16 var_a2_5;
    s16 var_a2_6;
    s16 var_a3_3;
    s16 var_a3_4;
    s16 var_s4_2;
    s16 var_t0_3;
    s16 var_t1_2;
    s16 var_t2_3;
    s16 var_t8_2;
    s16 var_t9;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a6_2;
    s32 temp_a6_5;
    s32 temp_a6_7;
    s32 temp_a6_9;
    s32 temp_a7_5;
    s32 temp_a7_6;
    s32 temp_a7_7;
    s32 temp_a7_8;
    s32 temp_s2_2;
    s32 temp_s4;
    s32 temp_s8_4;
    s32 temp_t0_2;
    s32 temp_t0_4;
    s32 temp_t0_7;
    s32 temp_t0_8;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t2;
    s32 temp_t3_2;
    s32 temp_t8_3;
    s32 temp_v0_8;
    s32 temp_v1;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_7;
    s32 var_a2_8;
    s32 var_a3_10;
    s32 var_a3_11;
    s32 var_a3_12;
    s32 var_a3_13;
    s32 var_a3_14;
    s32 var_a3_15;
    s32 var_a3_17;
    s32 var_a3_18;
    s32 var_a3_2;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_a3_9;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_a7_3;
    s32 var_a7_4;
    s32 var_a7_5;
    s32 var_a7_6;
    s32 var_gp;
    s32 var_ra;
    s32 var_s1;
    s32 var_s2;
    s32 var_s2_12;
    s32 var_s2_13;
    s32 var_s3;
    s32 var_s5;
    s32 var_s5_3;
    s32 var_s5_4;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_s7;
    s32 var_t0_4;
    s32 var_t0_5;
    s32 var_t1;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_t8;
    s32 var_t9_2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v1;
    s32 var_v1_2;
    s64 temp_a3;
    s64 temp_a5;
    s64 temp_a5_10;
    s64 temp_a5_11;
    s64 temp_a5_12;
    s64 temp_a5_13;
    s64 temp_a5_14;
    s64 temp_a5_2;
    s64 temp_a5_3;
    s64 temp_a5_4;
    s64 temp_a5_5;
    s64 temp_a5_6;
    s64 temp_a5_7;
    s64 temp_a5_9;
    s64 temp_a6;
    s64 temp_a6_10;
    s64 temp_a6_3;
    s64 temp_a6_4;
    s64 temp_a6_6;
    s64 temp_s2;
    s64 temp_s6;
    s64 temp_s8;
    s64 temp_s8_2;
    s64 temp_s8_3;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_6;
    s64 temp_v0_7;
    s64 temp_v0_9;
    s64 temp_v1_2;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a0_3;
    s64 var_a3;
    s64 var_a4_2;
    s64 var_s0;
    s64 var_s2_10;
    s64 var_s2_11;
    s64 var_s2_2;
    s64 var_s2_3;
    s64 var_s2_4;
    s64 var_s2_5;
    s64 var_s2_6;
    s64 var_s2_7;
    s64 var_s2_8;
    s64 var_s2_9;
    s64 var_s5_2;
    s64 var_s8;
    s64 var_s8_2;
    s64 var_s8_3;
    s64 var_t0;
    s64 var_t2_2;
    s64 var_v0_3;
    u32 var_a3_16;
    u32 var_s2_14;
    u32 var_s2_15;
    u32 var_s4;
    void *temp_a7;
    void *temp_a7_3;
    void *temp_at;
    void *temp_t0;
    void *temp_t0_3;
    void *temp_t1;
    void *temp_t2_2;
    void *temp_t3;
    void *var_a1;
    void *var_t2;

    var_a1 = arg1;
    var_a4 = arg4;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0x15A164;
    temp_a7 = *(var_a1->unk4C + (nfbGCPrivateIndex * 4));
    temp_t1 = temp_a7->unk8;
    temp_t0 = temp_t1->unk8;
    sp260 = arg2;
    if (temp_t0 != NULL) {
        var_t2 = temp_t0 + 8;
        if (temp_t0 != NULL) {
            goto block_2;
        }
        goto block_243;
    }
    var_t2 = temp_t1;
    if (temp_t0 == NULL) {
block_243:
        var_a2 = 1;
    } else {
block_2:
        var_a2 = temp_t0->unk4;
    }
    if (var_a2 == 1) {
        temp_t0_2 = expScreenPrivateIndex * 4;
        temp_t1_2 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
        temp_t3 = **(var_a1->unk0->unk1B4 + temp_t0_2);
        switch (temp_t1_2) {                        /* switch 2; irregular */
        default:                                    /* switch 2 */
            temp_t3->unk4052C = (s32) (temp_t1_2 | 0x1000);
            temp_t3->unk404D4 = 0;
            var_t8 = temp_a7->unk4C;
            var_a7 = temp_a7->unk15 * 8;
            break;
        case 13:                                    /* switch 2 */
            temp_t3->unk4052C = 0x100B;
            var_a7 = 1;
            var_t8 = 0;
            temp_t3->unk404D4 = (s32) (temp_a7->unk4C & 3);
            break;
        case 12:                                    /* switch 2 */
            temp_t3->unk4052C = 0x1008;
            var_a7 = 1;
            var_t8 = 0;
            temp_t3->unk404D4 = (s32) (temp_a7->unk4C & 0xF);
            break;
        case 14:                                    /* switch 2 */
            temp_t3->unk4052C = 0x100B;
            var_a7 = 9;
            var_t8 = 0;
            temp_t3->unk404D4 = (s32) (temp_a7->unk4C & 0xC);
            break;
        }
        temp_t3->unk40530 = (s32) temp_a7->unk40;
        temp_t3->unk4077C = (s32) (var_t8 & 0xFFFFFF);
        temp_t3->unk4077C = (s32) temp_a7->unk48;
        temp_t3->unk4077C = var_a7;
        temp_t3->unk40520 = 0xA;
        temp_t3->unk40528 = (s32) var_t2->unk0;
        temp_t3->unk4077C = (s32) (var_t2->unk4 - 1);
        temp_t3->unk4077C = (s32) var_t2->unk2;
        temp_t3->unk4077C = (s32) (var_t2->unk6 - 1);
        var_t0 = 0x165;
        if ((s32) (*(var_a1->unk0->unk1B4 + temp_t0_2))->unk8->unk36 < 5) {
            var_t0 = 0x12E;
        }
        var_t9 = arg0->unk8;
        var_t8_2 = arg0->unkA;
        var_a7_2 = var_a4->unk2 + var_t8_2;
        var_a2_2 = var_a4->unk0 + var_t9;
        if ((var_a2_2 | var_a7_2) & ~0x7FF) {
            var_a0 = 0;
            if (var_a2_2 < temp_at->unk-51D4) {
                var_a0 = 8;
            } else if (var_a2_2 >= temp_at->unk-51D0) {
                var_a0 = 4;
            }
            if (var_a7_2 < temp_at->unk-51D2) {
                var_a0 |= 2;
                goto block_263;
            }
            var_v0 = arg3 < 2;
            if (var_a7_2 >= temp_at->unk-51CE) {
                var_a0 |= 1;
                goto block_263;
            }
        } else {
            var_a0 = 0;
            ((var_t0 * 4) + temp_t3)->unk40000 = 0;
            temp_t3->unk4077C = var_a2_2;
            temp_t3->unk4077C = var_a7_2;
block_263:
            var_v0 = arg3 < 2;
        }
        sp30 = var_t0;
        if (var_v0 == 0) {
            spB8 = (s64) var_t2;
            sp58 = (s64) temp_t3;
            var_t1 = 0;
            temp_ra = temp_at->unk-51D4;
            temp_s0 = temp_at->unk-51D2;
            var_s4 = sp18;
            var_t0_2 = var_a4;
            sp110 = (s64) sp14;
            sp118 = (s64) sp1C;
            sp90 = (s64) sp10;
            temp_gp = temp_at->unk-51CE;
            sp50 = sp30 * 4;
            temp_s7 = temp_at->unk-51D0;
            sp38 = temp_gp - 1;
            sp40 = temp_s7 - 1;
loop_277:
            temp_t2 = var_a2_2;
            temp_t3_2 = var_a7_2;
            temp_a3 = var_a0;
            if (sp260 == 1) {
                var_t9 = (s16) var_a2_2;
                var_t8_2 = (s16) var_a7_2;
            }
            temp_a7_2 = var_t0_2->unk6;
            var_t0_2 += 4;
            var_a7_2 = temp_a7_2 + var_t8_2;
            var_a2_2 = *var_t0_2 + var_t9;
            if (var_a0 != 0) {
                var_s5 = var_a2_2 < temp_ra;
                goto block_280;
            }
            var_s5 = var_a2_2 < temp_ra;
            if (!((var_a2_2 | var_a7_2) & ~0x7FF)) {
                var_a0 = 0;
                temp_t3->unk4077C = var_a2_2;
                temp_t3->unk4077C = var_a7_2;
            } else {
block_280:
                var_a0 = 0;
                if (var_s5 != 0) {
                    var_a0 = 8;
                    goto block_282;
                }
                var_s2 = var_a7_2 < temp_s0;
                if (var_a2_2 >= temp_s7) {
                    var_a0 = 4;
block_282:
                    var_s2 = var_a7_2 < temp_s0;
                }
                if (var_s2 != 0) {
                    var_a0 |= 2;
                    goto block_274;
                }
                var_v1 = var_a0 & temp_a3;
                if (var_a7_2 >= temp_gp) {
                    var_a0 |= 1;
block_274:
                    var_v1 = var_a0 & temp_a3;
                }
                if (var_v1 == 0) {
                    if (var_a2_2 == temp_t2) {
                        if (temp_a3 != 0) {
                            if (var_a0 != 0) {
                                temp_t3->unk404B4 = 0;
                                temp_t3->unk4077C = temp_t2;
                                temp_t3->unk4077C = (s32) spB8->unk2;
                                temp_t3->unk4077C = temp_t2;
                                temp_t3->unk4077C = (s32) spB8->unk6;
                                temp_t3->unk407A8 = 0;
                            } else {
                                (sp50 + sp58)->unk40000 = 0;
                                temp_t3->unk4077C = temp_t2;
                                if (temp_t3_2 < temp_s0) {
                                    temp_t3->unk4077C = (s32) temp_s0;
                                } else {
                                    temp_t3->unk4077C = (s32) sp38;
                                }
                                temp_t3->unk4077C = temp_t2;
                                temp_t3->unk4077C = var_a7_2;
                            }
                        } else if (var_a0 != 0) {
                            temp_t3->unk4077C = temp_t2;
                            if (var_s2 != 0) {
                                temp_t3->unk4077C = (s32) temp_s0;
                            } else {
                                temp_t3->unk4077C = (s32) sp38;
                            }
                            temp_t3->unk407A8 = 0;
                        }
                    } else if (var_a7_2 != temp_t3_2) {
                        var_s5_2 = 0;
                        temp_a6 = var_a2_2 - temp_t2;
                        sp60 = temp_a6;
                        if (temp_a6 < 0) {
                            var_s5_2 = 4;
                        }
                        temp_s8 = var_a7_2 - temp_t3_2;
                        if (temp_s8 < 0) {
                            var_s5_2 |= 2;
                        }
                        temp_s2 = sp60 - ((sp60 * 2) & (sp60 >> 0x1F));
                        temp_s6 = temp_s8 - ((temp_s8 * 2) & (temp_s8 >> 0x1F));
                        temp_a5 = temp_s6 * 2;
                        sp170 = temp_a5;
                        sp168 = temp_s2 * 2;
                        if (temp_s6 < temp_s2) {
                            sp48 = temp_s2;
                            sp120 = var_s5_2;
                            spD0 = temp_s6;
                            spE8 = temp_s8;
                            sp28 = 0;
                            spF8 = temp_s2;
                            sp108 = sp170;
                            sp100 = sp168;
                        } else {
                            sp48 = temp_s2;
                            spD0 = temp_s6;
                            spE8 = temp_s8;
                            spF8 = temp_s6;
                            sp100 = temp_a5;
                            sp120 = var_s5_2 | 1;
                            sp28 = 1;
                            sp108 = sp168;
                        }
                        var_s8 = var_a0;
                        spC8 = 0;
                        sp88 = (s64) temp_t2;
                        var_s5_3 = temp_t2;
                        spA0 = (s64) temp_t3_2;
                        spA8 = (s64) var_a2_2;
                        spF0 = (s64) var_a2_2;
                        spB0 = (s64) var_a7_2;
                        sp80 = (s64) var_a7_2;
                        spC0 = 0;
                        sp160 = 0;
                        var_s6 = temp_t3_2;
                        var_s2_2 = temp_a3;
                        sp98 = 0 & 1;
                        sp128 = spD0 * 2;
                        sp158 = sp48 * 2;
                        sp68 = sp120 & 1;
                        sp70 = sp120 & 2;
                        sp78 = sp120 & 4;
                        var_a3 = 0;
loop_306:
                        var_v1_2 = var_s2_2 & var_s8;
loop_307:
                        if (var_v1_2 != 0) {
                            sp160 = var_s8;
                            spD8 = -1;
                            var_a3 = var_s2_2;
                            var_s2_3 = sp160;
                            var_s8_2 = spD8;
                        } else {
                            temp_a5_2 = spF0;
                            if ((var_s2_2 | var_s8) != 0) {
                                temp_a6_2 = var_s5_3;
                                if (var_s2_2 == 0) {
                                    spF0 = (s64) temp_a6_2;
                                    var_s5_3 = (s32) temp_a5_2;
                                    temp_v0 = sp80;
                                    temp_v1 = var_s6;
                                    sp80 = (s64) temp_v1;
                                    var_s6 = (s32) temp_v0;
                                    temp_a5_3 = sp88;
                                    sp88 = spA8;
                                    temp_v1_2 = var_s2_2;
                                    var_s2_2 = var_s8;
                                    var_s8 = temp_v1_2;
                                    spA8 = temp_a5_3;
                                    temp_a5_4 = spB0;
                                    temp_a6_3 = spA0;
                                    spB0 = temp_a6_3;
                                    temp_v0_2 = var_a3;
                                    spA0 = temp_a5_4;
                                    temp_a6_4 = sp160;
                                    sp160 = temp_v0_2;
                                    var_a3 = temp_a6_4;
                                    spC8 = spC8 == 0;
                                }
                                var_a3 |= var_s2_2;
                                if (var_s2_2 & 8) {
                                    var_s4 = temp_ra - sp88;
                                    sp118 = sp70;
                                    if (var_s4 <= 0x7FFFU) {
                                        if (sp68 != 0) {
                                            var_s2_4 = 0x34;
                                            if (spC8 == 0) {
                                                var_s2_4 = 0x3C;
                                            }
                                        } else {
                                            var_s2_4 = 0x1A;
                                            if (spC8 == 0) {
                                                var_s2_4 = 0x12;
                                            }
                                        }
                                        sp110 = var_s2_4;
                                        sp90 = spA0;
                                    } else {
                                        var_s4 = spA8 - temp_ra;
                                        if (sp68 != 0) {
                                            var_s2_5 = 0x18;
                                            if (spC8 == 0) {
                                                var_s2_5 = 0x10;
                                            }
                                        } else {
                                            var_s2_5 = 0x12;
                                            if (spC8 == 0) {
                                                var_s2_5 = 0x1A;
                                            }
                                        }
                                        sp110 = var_s2_5;
                                        sp118 = sp118 == 0;
                                        sp90 = spB0;
                                    }
                                    var_s5_3 = (s32) temp_ra;
                                } else if (var_s2_2 & 2) {
                                    var_s4 = temp_s0 - spA0;
                                    sp118 = sp78;
                                    if (var_s4 <= 0x7FFFU) {
                                        if (sp68 != 0) {
                                            var_s2_6 = 9;
                                            if (spC8 == 0) {
                                                var_s2_6 = 1;
                                            }
                                        } else {
                                            var_s2_6 = 0x27;
                                            if (spC8 == 0) {
                                                var_s2_6 = 0x2F;
                                            }
                                        }
                                        sp110 = var_s2_6;
                                        sp90 = sp88;
                                    } else {
                                        var_s4 = spB0 - temp_s0;
                                        if (sp68 != 0) {
                                            var_s2_7 = 1;
                                            if (spC8 == 0) {
                                                var_s2_7 = 9;
                                            }
                                        } else {
                                            var_s2_7 = 0xB;
                                            if (spC8 == 0) {
                                                var_s2_7 = 3;
                                            }
                                        }
                                        sp110 = var_s2_7;
                                        sp90 = spA8;
                                        sp118 = sp118 == 0;
                                    }
                                    var_s6 = (s32) temp_s0;
                                } else if (var_s2_2 & 4) {
                                    sp118 = sp70;
                                    var_s4 = (sp88 - temp_s7) + 1;
                                    if (var_s4 <= 0x7FFFU) {
                                        if (sp68 != 0) {
                                            var_s2_8 = 0x34;
                                            if (spC8 == 0) {
                                                var_s2_8 = 0x3C;
                                            }
                                        } else {
                                            var_s2_8 = 0x1A;
                                            if (spC8 == 0) {
                                                var_s2_8 = 0x12;
                                            }
                                        }
                                        sp110 = var_s2_8;
                                        sp90 = spA0;
                                    } else {
                                        var_s4 = (temp_s7 - spA8) - 1;
                                        if (sp68 != 0) {
                                            var_s2_9 = 0x18;
                                            if (spC8 == 0) {
                                                var_s2_9 = 0x10;
                                            }
                                        } else {
                                            var_s2_9 = 0x12;
                                            if (spC8 == 0) {
                                                var_s2_9 = 0x1A;
                                            }
                                        }
                                        sp110 = var_s2_9;
                                        sp90 = spB0;
                                        sp118 = sp118 == 0;
                                    }
                                    var_s5_3 = (s32) sp40;
                                } else if (var_s2_2 & 1) {
                                    var_s4 = (spA0 - temp_gp) + 1;
                                    sp118 = sp78;
                                    if (var_s4 <= 0x7FFFU) {
                                        if (sp68 != 0) {
                                            var_s2_10 = 9;
                                            if (spC8 == 0) {
                                                var_s2_10 = 1;
                                            }
                                        } else {
                                            var_s2_10 = 0x27;
                                            if (spC8 == 0) {
                                                var_s2_10 = 0x2F;
                                            }
                                        }
                                        sp110 = var_s2_10;
                                        sp90 = sp88;
                                    } else {
                                        var_s4 = (temp_gp - spB0) - 1;
                                        if (sp68 != 0) {
                                            var_s2_11 = 1;
                                            if (spC8 == 0) {
                                                var_s2_11 = 9;
                                            }
                                        } else {
                                            var_s2_11 = 0xB;
                                            if (spC8 == 0) {
                                                var_s2_11 = 3;
                                            }
                                        }
                                        sp110 = var_s2_11;
                                        sp90 = spA8;
                                        sp118 = sp118 == 0;
                                    }
                                    var_s6 = (s32) sp38;
                                }
                                if (spC8 != 0) {
                                    sp118 = sp118 == 0;
                                }
                                sp148 = var_s4 * 2;
                                temp_a5_5 = sp110 & 1;
                                sp140 = temp_a5_5;
                                if (temp_a5_5 != 0) {
                                    var_s2_12 = sp48 * sp148;
                                } else {
                                    var_s2_12 = spD0 * sp148;
                                }
                                temp_s4 = sp110 & 4;
                                if (sp110 & 2) {
                                    if (temp_s4 != 0) {
                                        var_s2_13 = var_s2_12 - sp48;
                                    } else {
                                        var_s2_13 = sp48 + var_s2_12;
                                    }
                                } else if (temp_s4 != 0) {
                                    var_s2_13 = var_s2_12 - spD0;
                                } else {
                                    var_s2_13 = spD0 + var_s2_12;
                                }
                                if (sp110 & 8) {
                                    var_s2_14 = (var_s2_13 + sp98) - 1;
                                } else {
                                    var_s2_14 = var_s2_13 - sp98;
                                }
                                if (sp110 & 0x10) {
                                    M2C_TRAP_IF(sp158 == 0);
                                    var_s4 = var_s2_14 / sp158;
                                } else {
                                    var_s4 = var_s2_14 / sp128;
                                    M2C_TRAP_IF(sp128 == 0);
                                }
                                if (sp110 & 0x20) {
                                    var_s4 += 1;
                                }
                                if (sp118 != 0) {
                                    var_s4 = (u32) -(s32) var_s4;
                                }
                                temp_s2_2 = sp90 + var_s4;
                                if (sp140 != 0) {
                                    var_s5_3 = temp_s2_2;
                                } else {
                                    var_s6 = temp_s2_2;
                                }
                                var_s2_2 = 0;
                                if (var_s5_3 < temp_ra) {
                                    var_s2_2 = 8;
                                }
                                var_a5 = var_s6 < temp_s0;
                                if (var_s5_3 >= temp_s7) {
                                    var_s2_2 |= 4;
                                    var_a5 = var_s6 < temp_s0;
                                }
                                var_a6 = var_s6 < temp_gp;
                                if (var_a5 != 0) {
                                    var_s2_2 |= 2;
                                    var_a6 = var_s6 < temp_gp;
                                }
                                var_v1_2 = var_s2_2 & var_s8;
                                if (var_a6 == 0) {
                                    var_s2_2 |= 1;
                                    goto loop_306;
                                }
                                goto loop_307;
                            }
                            var_s8_2 = 1;
                            var_s2_3 = sp160;
                            if (spC8 != 0) {
                                temp_v1_3 = var_s6;
                                temp_v0_3 = sp80;
                                sp80 = (s64) temp_v1_3;
                                temp_a6_5 = var_s5_3;
                                temp_a5_6 = spF0;
                                spF0 = (s64) temp_a6_5;
                                var_s6 = (s32) temp_v0_3;
                                var_s5_3 = (s32) temp_a5_6;
                                temp_a6_6 = var_a3;
                                var_a3 = var_s2_3;
                                var_s2_3 = temp_a6_6;
                            }
                        }
                        if (var_s8_2 != -1) {
                            if (sp28 != 0) {
                                temp_s8_2 = sp80 - var_s6;
                                if (temp_s8_2 > 0) {
                                    sp150 = temp_s8_2;
                                } else {
                                    sp150 = var_s6 - sp80;
                                }
                                var_s8_3 = sp150;
                            } else {
                                temp_s8_3 = spF0 - var_s5_3;
                                if (temp_s8_3 > 0) {
                                    sp20 = temp_s8_3;
                                } else {
                                    sp20 = var_s5_3 - spF0;
                                }
                                var_s8_3 = sp20;
                            }
                            temp_s8_4 = (var_s2_3 != 0) + var_s8_3;
                            if (temp_s8_4 != 0) {
                                if (var_a3 != 0) {
                                    temp_a5_7 = var_s5_3 - temp_t2;
                                    sp138 = temp_a5_7;
                                    if (temp_a5_7 > 0) {
                                        spE0 = sp138;
                                    } else {
                                        spE0 = temp_t2 - var_s5_3;
                                    }
                                    temp_v0_4 = var_s6 - temp_t3_2;
                                    sp130 = temp_v0_4;
                                    if (temp_v0_4 > 0) {
                                        var_t2_2 = sp130;
                                        if (sp28 != 0) {
                                            goto block_320;
                                        }
                                        goto block_386;
                                    }
                                    var_t2_2 = temp_t3_2 - var_s6;
                                    if (sp28 == 0) {
block_386:
                                        var_a3_2 = ((var_t2_2 * sp100) - (spE0 * sp108)) + spF8;
                                    } else {
block_320:
                                        var_a3_2 = ((spE0 * sp100) - (var_t2_2 * sp108)) + spF8;
                                    }
                                } else {
                                    var_a3_2 = (s32) spF8;
                                    temp_t3->unk4077C = temp_t2;
                                    temp_t3->unk4077C = temp_t3_2;
                                    temp_t3->unk407A8 = 0;
                                }
                                temp_t3->unk404CC = 0;
                                temp_t3->unk4077C = var_s5_3;
                                temp_t3->unk4077C = var_s6;
                                temp_t3->unk4077C = var_a3_2;
                                temp_t3->unk4077C = (s32) sp60;
                                temp_t3->unk4077C = (s32) spE8;
                                temp_t3->unk4077C = temp_s8_4;
                                temp_t3->unk407A8 = 0;
                                if (var_s2_3 == 0) {
                                    (sp50 + sp58)->unk40000 = 0;
                                    temp_t3->unk4077C = var_a2_2;
                                    temp_t3->unk4077C = var_a7_2;
                                }
                            } else if (var_s2_3 == 0) {
                                (sp50 + sp58)->unk40000 = 0;
                                temp_t3->unk4077C = var_a2_2;
                                temp_t3->unk4077C = var_a7_2;
                            }
                        }
                    } else if (temp_a3 != 0) {
                        if (var_a0 != 0) {
                            temp_t3->unk404B4 = 0;
                            temp_t3->unk4077C = (s32) spB8->unk0;
                            temp_t3->unk4077C = temp_t3_2;
                            temp_t3->unk4077C = (s32) spB8->unk4;
                            temp_t3->unk4077C = temp_t3_2;
                            temp_t3->unk407A8 = 0;
                        } else {
                            (sp50 + sp58)->unk40000 = 0;
                            if (temp_t2 < temp_ra) {
                                temp_t3->unk4077C = (s32) temp_ra;
                            } else {
                                temp_t3->unk4077C = (s32) sp40;
                            }
                            temp_t3->unk4077C = temp_t3_2;
                            temp_t3->unk4077C = var_a2_2;
                            temp_t3->unk4077C = temp_t3_2;
                        }
                    } else if (var_a0 != 0) {
                        if (var_s5 != 0) {
                            temp_t3->unk4077C = (s32) temp_ra;
                        } else {
                            temp_t3->unk4077C = (s32) sp40;
                        }
                        temp_t3->unk4077C = temp_t3_2;
                        temp_t3->unk407A8 = 0;
                    }
                }
            }
            var_t1 += 1;
            if (var_t0_2 != (((arg3 - 1) * 4) + var_a4)) {
                goto loop_277;
            }
        } else {
            var_t1 = 0;
        }
        if ((((u32) (var_a1->unk10 & 0x3FFFFFFF) >> 0x1C) == 0) || ((temp_t0_3 = (var_t1 * 4) + var_a4, (temp_t0_3->unk0 == var_a4->unk0)) && (temp_t0_3->unk2 == var_a4->unk2) && (var_t1 != 1))) {
            if (var_a0 == 0) {
                temp_t3->unk4077C = var_a2_2;
                temp_t3->unk4077C = var_a7_2;
                temp_t3->unk407A8 = 0;
            }
        } else if (var_a0 == 0) {
            temp_t3->unk4077C = (s32) (var_a2_2 + 1);
            temp_t3->unk4077C = var_a7_2;
            temp_t3->unk407A8 = 0;
        }
        temp_t3->unk40520 = 0xA;
        temp_t3->unk40528 = (s32) temp_at->unk-51DC;
        temp_t3->unk4077C = (s32) (temp_at->unk-51D8 - 1);
        temp_t3->unk4077C = (s32) temp_at->unk-51DA;
        temp_t3->unk4077C = (s32) (temp_at->unk-51D6 - 1);
        return;
    }
    if (var_a2 != 0) {
        temp_t2_2 = temp_a7->unk8;
        temp_t0_4 = expScreenPrivateIndex * 4;
        temp_t1_3 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
        temp_a6_7 = **(var_a1->unk0->unk1B4 + temp_t0_4);
        sp270 = (s64) temp_a6_7;
        sp288 = temp_a6_7 + 0x40000;
        switch (temp_t1_3) {                        /* switch 1; irregular */
        default:                                    /* switch 1 */
            sp288->unk52C = (s32) (temp_t1_3 | 0x1000);
            sp288->unk4D4 = 0;
            var_t3 = temp_a7->unk4C;
            var_a7_3 = temp_a7->unk15 * 8;
            break;
        case 13:                                    /* switch 1 */
            sp288->unk52C = 0x100B;
            var_a7_3 = 1;
            var_t3 = 0;
            sp288->unk4D4 = (s32) (temp_a7->unk4C & 3);
            break;
        case 12:                                    /* switch 1 */
            sp288->unk52C = 0x1008;
            var_t3 = 0;
            var_a7_3 = 1;
            sp288->unk4D4 = (s32) (temp_a7->unk4C & 0xF);
            break;
        case 14:                                    /* switch 1 */
            sp288->unk52C = 0x100B;
            var_a7_3 = 9;
            var_t3 = 0;
            sp288->unk4D4 = (s32) (temp_a7->unk4C & 0xC);
            break;
        }
        sp288->unk530 = (s32) temp_a7->unk40;
        sp288->unk77C = (s32) (var_t3 & 0xFFFFFF);
        sp288->unk77C = (s32) temp_a7->unk48;
        sp288->unk77C = var_a7_3;
        if ((s32) (*(var_a1->unk0->unk1B4 + temp_t0_4))->unk8->unk36 < 5) {
            var_a2_3 = 0x12D;
            sp288->unk4B4 = 0;
        } else {
            var_a2_3 = 0x163;
            sp288->unk58C = 0;
        }
        temp_a7_3 = temp_t2_2->unk8;
        if (temp_a7_3 != NULL) {
            sp258 = (s64) (temp_a7_3 + 8);
            if (temp_a7_3 != NULL) {
                goto block_16;
            }
            goto block_249;
        }
        sp258 = (s64) temp_t2_2;
        if (temp_a7_3 == NULL) {
block_249:
            var_v0_2 = 1;
        } else {
block_16:
            var_v0_2 = temp_a7_3->unk4;
        }
        sp280 = (s64) var_v0_2;
        temp_a5_8 = arg0->unkA;
        temp_v0_5 = arg0->unk8;
        sp190 = (s64) temp_a5_8;
        sp198 = (s64) temp_v0_5;
        var_t2_3 = var_a4->unk2 + temp_a5_8;
        var_t9_2 = var_a4->unk0 + temp_v0_5;
        if (arg3 >= 2) {
            sp2F8 = (s64) var_a4;
            sp2F0 = (s64) var_a1;
            sp188 = 0;
            var_gp = spC;
            var_s2_15 = sp8;
            var_s7 = sp4;
            sp178 = (s64) var_a4;
            sp268 = var_a2_3 * 4;
            sp290 = (s64) sp0;
            sp1A0 = (s64) (((arg3 - 1) * 4) + var_a4);
loop_24:
            var_s0 = sp280;
            var_a0_2 = sp258;
            var_t3_2 = var_t9_2;
            var_t1_2 = var_t2_3;
            if (sp260 == 1) {
                sp198 = (s64) var_t9_2;
                sp190 = (s64) var_t2_3;
            }
            var_ra = 0;
            var_a3_3 = sp178->unk6 + sp190;
            var_t2_3 = var_a3_3;
            temp_a6_8 = var_t2_3;
            var_a2_4 = sp178->unk4 + sp198;
            var_t9_2 = var_a2_4;
            if (var_a2_4 == var_t3_2) {
                if (var_t2_3 < var_t1_2) {
                    var_t2_3 = var_t1_2 + 1;
                    var_t1_2 = temp_a6_8 + 1;
                }
                if ((sp280 != 0) && (var_t1_2 >= var_a0_2->unk6)) {
loop_30:
                    var_s0 -= 1;
                    var_a0_2 += 8;
                    if (var_s0 != 0) {
                        if (var_t1_2 < var_a0_2->unk6) {
                            goto block_32;
                        }
                        goto loop_30;
                    }
                } else {
block_32:
                    if (var_s0 != 0) {
                        var_t0_3 = var_a0_2->unk2;
                        if (var_t2_3 >= var_t0_3) {
loop_52:
                            var_a2_5 = var_t0_3;
                            var_s0 -= 1;
                            if ((var_t3_2 >= var_a0_2->unk0) && (var_t3_2 < var_a0_2->unk4)) {
                                if (var_t0_3 < var_t1_2) {
                                    var_a2_5 = var_t1_2;
                                }
                                temp_a7_4 = var_a0_2->unk6;
                                var_a3_4 = var_t2_3;
                                if (var_t2_3 < temp_a7_4) {

                                } else {
                                    var_a3_4 = temp_a7_4;
                                }
                                if (var_a3_4 >= var_a2_5) {
                                    sp288->unk77C = var_t3_2;
                                    sp288->unk77C = (s32) var_a2_5;
                                    sp288->unk77C = var_t9_2;
                                    sp288->unk77C = (s32) var_a3_4;
                                }
                            }
                            var_a0_2 += 8;
                            if (var_s0 != 0) {
                                var_t0_3 = var_a0_2->unk2;
                                if (var_t2_3 >= var_t0_3) {
                                    goto loop_52;
                                }
                            }
                            var_a3_3 = ((void *) sp178)->unk6 + sp190;
                        }
                    }
                }
                var_t2_3 = var_a3_3;
            } else {
                temp_v1_4 = var_t9_2;
                temp_a5_9 = var_t2_3 - var_t1_2;
                if (var_t2_3 == var_t1_2) {
                    if (var_t9_2 < var_t3_2) {
                        var_t9_2 = var_t3_2 + 1;
                        var_t3_2 = temp_v1_4 + 1;
                    }
                    if (var_s0 != 0) {
                        if (var_t1_2 >= var_a0_2->unk6) {
loop_40:
                            var_s0 -= 1;
                            var_a0_2 += 8;
                            if (var_s0 != 0) {
                                if (var_t1_2 < var_a0_2->unk6) {
                                    goto block_42;
                                }
                                goto loop_40;
                            }
                        } else {
block_42:
                            if (var_s0 != 0) {
                                temp_t0_5 = var_a0_2->unk2;
                                if ((var_t1_2 >= temp_t0_5) && (var_s0 != 0) && (temp_t0_5 == temp_t0_5)) {
loop_189:
                                    temp_a2 = var_a0_2->unk4;
                                    var_a7_4 = var_t3_2;
                                    var_t0_4 = var_t9_2;
                                    if (var_t3_2 >= temp_a2) {
                                        var_a0_2 += 8;
                                        var_s0 -= 1;
                                        goto block_187;
                                    }
                                    temp_t8 = var_a0_2->unk0;
                                    var_s0 -= 1;
                                    if (temp_t8 < var_t9_2) {
                                        if (temp_t8 >= var_t3_2) {
                                            var_a7_4 = (s32) temp_t8;
                                        }
                                        if (var_t9_2 >= temp_a2) {
                                            var_t0_4 = (s32) temp_a2;
                                        }
                                        if (var_t0_4 >= var_a7_4) {
                                            sp288->unk77C = var_a7_4;
                                            sp288->unk77C = (s32) var_t1_2;
                                            sp288->unk77C = var_t0_4;
                                            sp288->unk77C = (s32) var_t2_3;
                                        }
                                        var_a0_2 += 8;
block_187:
                                        if ((var_s0 != 0) && (var_a0_2->unk2 == temp_t0_5)) {
                                            goto loop_189;
                                        }
                                        var_a2_6 = sp178->unk4;
                                    } else {
                                        var_a2_6 = sp178->unk4;
                                    }
                                    var_a2_4 = var_a2_6 + sp198;
                                }
                            }
                        }
                    }
                    var_t9_2 = var_a2_4;
                } else if (var_s0 != 0) {
                    sp1D0 = temp_a5_9;
                    temp_a5_10 = temp_a5_9 - ((temp_a5_9 * 2) & (temp_a5_9 >> 0x1F));
                    sp238 = temp_a5_10;
                    sp220 = temp_a5_10 * 2;
                    temp_v0_6 = var_t9_2 - var_t3_2;
                    sp1C8 = temp_v0_6;
                    sp250 = temp_a5_10 * 2;
                    temp_v0_7 = temp_v0_6 - ((temp_v0_6 * 2) & (temp_v0_6 >> 0x1F));
                    sp1A8 = temp_v0_7;
                    sp230 = temp_a5_10 < temp_v0_7;
                    sp278 = temp_v0_7 * 2;
                    sp228 = temp_v0_7 * 2;
loop_67:
                    temp_t8_2 = var_a0_2->unk0;
                    var_a3_5 = 0;
                    var_a7_5 = 0;
                    if (var_t3_2 < temp_t8_2) {
                        var_a3_5 = 8;
                    } else if (var_t3_2 >= var_a0_2->unk4) {
                        var_a3_5 = 4;
                    }
                    temp_t0_6 = var_a0_2->unk2;
                    if (var_t1_2 >= temp_t0_6) {
                        if (var_t1_2 >= var_a0_2->unk6) {
                            var_a3_5 |= 1;
                        }
                    } else {
                        var_a3_5 |= 2;
                    }
                    if (var_t9_2 >= temp_t8_2) {
                        var_a6_2 = var_t2_3 < temp_t0_6;
                        if (var_t9_2 >= var_a0_2->unk4) {
                            var_a7_5 = 4;
                            goto block_77;
                        }
                    } else {
                        var_a7_5 = 8;
block_77:
                        var_a6_2 = var_t2_3 < temp_t0_6;
                    }
                    if (var_a6_2 == 0) {
                        var_a5_2 = var_a3_5 | var_a7_5;
                        if (var_t2_3 >= var_a0_2->unk6) {
                            var_a7_5 |= 1;
                            goto block_62;
                        }
                    } else {
                        var_a7_5 |= 2;
block_62:
                        var_a5_2 = var_a3_5 | var_a7_5;
                    }
                    if (var_a5_2 != 0) {
                        if (var_a3_5 & var_a7_5) {
                            goto block_65;
                        }
                        var_s4_2 = var_t1_2;
                        var_a1_2 = 0;
                        var_s1 = var_a3_5;
                        var_a2_7 = 0;
                        if (sp1C8 >= 0) {
                            if (sp1D0 >= 0) {
                                goto block_90;
                            }
                            goto block_134;
                        }
                        var_a2_7 = 4;
                        if (sp1D0 < 0) {
block_134:
                            var_a2_7 |= 2;
                            if (sp230 == 0) {
                                goto block_135;
                            }
                            goto block_91;
                        }
block_90:
                        if (sp230 != 0) {
block_91:
                            sp2A8 = 0;
                            sp2A0 = sp228;
                            var_a4_2 = sp1A8;
                            sp298 = sp220;
                        } else {
block_135:
                            var_a2_7 |= 1;
                            var_a4_2 = sp238;
                            sp2A8 = 1;
                            sp2A0 = sp220;
                            sp298 = sp228;
                        }
                        var_s3 = var_t3_2;
                        sp1B8 = (s64) temp_t0_6;
                        sp1B0 = (s64) var_t2_3;
                        sp208 = (s64) var_t2_3;
                        sp218 = (s64) var_t9_2;
                        sp210 = (s64) var_t9_2;
                        sp1F8 = (s64) var_t1_2;
                        sp1C0 = (s64) var_t3_2;
                        sp248 = 0;
                        sp1F0 = var_a2_7 & 1;
                        var_s6_2 = 0;
                        sp1E8 = 0 & 1;
                        sp200 = var_a2_7 & 2;
                        var_s5_4 = var_a7_5;
                        sp240 = var_a2_7 & 4;
                        sp1D8 = var_a0_2->unk4 - 1;
                        sp1E0 = var_a0_2->unk6 - 1;
loop_93:
                        var_a5_3 = var_s1 & var_s5_4;
loop_94:
                        if (var_a5_3 != 0) {
                            goto block_96;
                        }
                        temp_a5_11 = sp218;
                        if ((var_s1 | var_s5_4) != 0) {
                            if (var_s1 == 0) {
                                temp_a6_9 = var_s3;
                                temp_v1_5 = var_s4_2;
                                var_s4_2 = (s16) sp1B0;
                                sp218 = (s64) temp_a6_9;
                                var_s3 = (s32) temp_a5_11;
                                sp1B0 = (s64) temp_v1_5;
                                temp_a5_12 = sp1C0;
                                sp1C0 = sp210;
                                temp_v1_6 = var_s1;
                                var_s1 = var_s5_4;
                                sp210 = temp_a5_12;
                                temp_a5_13 = sp208;
                                var_s5_4 = temp_v1_6;
                                temp_a6_10 = sp1F8;
                                temp_v0_8 = var_s6_2;
                                sp208 = temp_a6_10;
                                sp1F8 = temp_a5_13;
                                var_s6_2 = var_a1_2;
                                var_a1_2 = temp_v0_8;
                                sp248 = sp248 == 0;
                            }
                            var_s6_2 |= var_s1;
                            if (var_s1 & 8) {
                                var_s2_15 = temp_t8_2 - sp1C0;
                                var_gp = (s32) sp200;
                                if (var_s2_15 <= 0x7FFFU) {
                                    if (sp1F0 != 0) {
                                        var_a3_6 = 0x34;
                                        if (sp248 == 0) {
                                            var_a3_6 = 0x3C;
                                        }
                                    } else {
                                        var_a3_6 = 0x1A;
                                        if (sp248 == 0) {
                                            var_a3_6 = 0x12;
                                        }
                                    }
                                    var_s7 = var_a3_6;
                                    sp290 = sp1F8;
                                } else {
                                    var_s2_15 = sp210 - temp_t8_2;
                                    if (sp1F0 != 0) {
                                        var_a3_7 = 0x18;
                                        if (sp248 == 0) {
                                            var_a3_7 = 0x10;
                                        }
                                    } else {
                                        var_a3_7 = 0x12;
                                        if (sp248 == 0) {
                                            var_a3_7 = 0x1A;
                                        }
                                    }
                                    var_s7 = var_a3_7;
                                    var_gp = var_gp == 0;
                                    sp290 = sp208;
                                }
                                var_s3 = (s32) temp_t8_2;
                            } else if (var_s1 & 2) {
                                var_s2_15 = sp1B8 - sp1F8;
                                var_gp = (s32) sp240;
                                if (var_s2_15 <= 0x7FFFU) {
                                    if (sp1F0 != 0) {
                                        var_a3_8 = 9;
                                        if (sp248 == 0) {
                                            var_a3_8 = 1;
                                        }
                                    } else {
                                        var_a3_8 = 0x27;
                                        if (sp248 == 0) {
                                            var_a3_8 = 0x2F;
                                        }
                                    }
                                    var_s7 = var_a3_8;
                                    sp290 = sp1C0;
                                } else {
                                    var_s2_15 = sp208 - sp1B8;
                                    if (sp1F0 != 0) {
                                        var_a3_9 = 1;
                                        if (sp248 == 0) {
                                            var_a3_9 = 9;
                                        }
                                    } else {
                                        var_a3_9 = 0xB;
                                        if (sp248 == 0) {
                                            var_a3_9 = 3;
                                        }
                                    }
                                    var_s7 = var_a3_9;
                                    var_gp = var_gp == 0;
                                    sp290 = sp210;
                                }
                                var_s4_2 = (s16) sp1B8;
                            } else if (var_s1 & 4) {
                                var_s2_15 = sp1C0 - sp1D8;
                                var_gp = (s32) sp200;
                                if (var_s2_15 <= 0x7FFFU) {
                                    if (sp1F0 != 0) {
                                        var_a3_10 = 0x34;
                                        if (sp248 == 0) {
                                            var_a3_10 = 0x3C;
                                        }
                                    } else {
                                        var_a3_10 = 0x1A;
                                        if (sp248 == 0) {
                                            var_a3_10 = 0x12;
                                        }
                                    }
                                    var_s7 = var_a3_10;
                                    sp290 = sp1F8;
                                } else {
                                    var_s2_15 = sp1D8 - sp210;
                                    var_gp = var_gp == 0;
                                    if (sp1F0 != 0) {
                                        var_a3_11 = 0x18;
                                        if (sp248 == 0) {
                                            var_a3_11 = 0x10;
                                        }
                                    } else {
                                        var_a3_11 = 0x12;
                                        if (sp248 == 0) {
                                            var_a3_11 = 0x1A;
                                        }
                                    }
                                    var_s7 = var_a3_11;
                                    sp290 = sp208;
                                }
                                var_s3 = (s32) sp1D8;
                            } else if (var_s1 & 1) {
                                var_s2_15 = sp1F8 - sp1E0;
                                var_gp = (s32) sp240;
                                if (var_s2_15 <= 0x7FFFU) {
                                    if (sp1F0 != 0) {
                                        var_a3_12 = 9;
                                        if (sp248 == 0) {
                                            var_a3_12 = 1;
                                        }
                                    } else {
                                        var_a3_12 = 0x27;
                                        if (sp248 == 0) {
                                            var_a3_12 = 0x2F;
                                        }
                                    }
                                    var_s7 = var_a3_12;
                                    sp290 = sp1C0;
                                } else {
                                    var_s2_15 = sp1E0 - sp208;
                                    var_gp = var_gp == 0;
                                    if (sp1F0 != 0) {
                                        var_a3_13 = 1;
                                        if (sp248 == 0) {
                                            var_a3_13 = 9;
                                        }
                                    } else {
                                        var_a3_13 = 0xB;
                                        if (sp248 == 0) {
                                            var_a3_13 = 3;
                                        }
                                    }
                                    var_s7 = var_a3_13;
                                    sp290 = sp210;
                                }
                                var_s4_2 = (s16) sp1E0;
                            }
                            temp_a7_5 = var_s2_15 * 2;
                            temp_t0_7 = var_s7 & 1;
                            if (sp248 != 0) {
                                var_gp = var_gp == 0;
                            }
                            if (temp_t0_7 != 0) {
                                var_a3_14 = sp1A8 * temp_a7_5;
                            } else {
                                var_a3_14 = sp238 * temp_a7_5;
                            }
                            temp_a7_6 = var_s7 & 4;
                            if (var_s7 & 2) {
                                var_v0_3 = sp1A8;
                                if (temp_a7_6 != 0) {
                                    goto block_114;
                                }
                                var_a3_15 = sp1A8 + var_a3_14;
                            } else {
                                var_v0_3 = sp238;
                                if (temp_a7_6 != 0) {
block_114:
                                    var_a3_15 = var_a3_14 - var_v0_3;
                                } else {
                                    var_a3_15 = sp238 + var_a3_14;
                                }
                            }
                            if (var_s7 & 8) {
                                var_a3_16 = (var_a3_15 + sp1E8) - 1;
                            } else {
                                var_a3_16 = var_a3_15 - sp1E8;
                            }
                            if (var_s7 & 0x10) {
                                M2C_TRAP_IF(sp278 == 0);
                                var_s2_15 = var_a3_16 / sp278;
                            } else {
                                var_s2_15 = var_a3_16 / sp250;
                                M2C_TRAP_IF(sp250 == 0);
                            }
                            if (var_s7 & 0x20) {
                                var_s2_15 += 1;
                            }
                            var_s1 = 0;
                            if (var_gp != 0) {
                                var_s2_15 = (u32) -(s32) var_s2_15;
                            }
                            temp_a3_2 = sp290 + var_s2_15;
                            if (temp_t0_7 != 0) {
                                var_s3 = temp_a3_2;
                            } else {
                                var_s4_2 = (s16) temp_a3_2;
                            }
                            if (var_s3 < temp_t8_2) {
                                var_s1 = 8;
                            }
                            if (sp1D8 < var_s3) {
                                var_s1 |= 4;
                            }
                            if (var_s4_2 < sp1B8) {
                                var_s1 |= 2;
                            }
                            var_a5_3 = var_s1 & var_s5_4;
                            if (sp1E0 < var_s4_2) {
                                var_s1 |= 1;
                                goto loop_93;
                            }
                            goto loop_94;
                        }
                        temp_v1_7 = var_s3;
                        if (sp248 != 0) {
                            temp_a6_11 = var_s4_2;
                            var_s4_2 = (s16) sp1B0;
                            temp_v0_9 = sp218;
                            sp218 = (s64) temp_v1_7;
                            sp1B0 = (s64) temp_a6_11;
                            var_s3 = (s32) temp_v0_9;
                            temp_v1_8 = var_s6_2;
                            var_s6_2 = var_a1_2;
                            var_a1_2 = temp_v1_8;
                        }
                        if (1 != -1) {
                            if (sp2A8 != 0) {
                                temp_a7_7 = sp1B0 - var_s4_2;
                                var_a3_17 = var_s4_2 - sp1B0;
                                if (temp_a7_7 > 0) {
                                    var_a3_17 = temp_a7_7;
                                }
                                var_a7_6 = var_a3_17;
                            } else {
                                temp_a3_3 = sp218 - var_s3;
                                var_a2_8 = var_s3 - sp218;
                                if (temp_a3_3 > 0) {
                                    var_a2_8 = temp_a3_3;
                                }
                                var_a7_6 = var_a2_8;
                            }
                            temp_a7_8 = (var_a1_2 != 0) + var_a7_6;
                            if (temp_a7_8 != 0) {
                                temp_t0_8 = var_s3 - var_t3_2;
                                if (var_s6_2 != 0) {
                                    var_a3_18 = temp_t0_8;
                                    if (temp_t0_8 <= 0) {
                                        var_a3_18 = var_t3_2 - var_s3;
                                    }
                                    temp_t8_3 = var_s4_2 - var_t1_2;
                                    if (temp_t8_3 > 0) {
                                        var_t0_5 = temp_t8_3;
                                        if (sp2A8 != 0) {
                                            goto block_177;
                                        }
                                        goto block_182;
                                    }
                                    var_t0_5 = var_t1_2 - var_s4_2;
                                    if (sp2A8 == 0) {
block_182:
                                        var_a5_4 = (var_t0_5 * sp2A0) - (var_a3_18 * sp298);
                                    } else {
block_177:
                                        var_a5_4 = (var_a3_18 * sp2A0) - (var_t0_5 * sp298);
                                    }
                                    var_a4_2 += var_a5_4;
                                }
                                sp288->unk77C = 0;
                                sp288->unk77C = 0;
                                sp288->unk77C = 0;
                                sp288->unk77C = 0;
                                sp288->unk7A8 = 0;
                                sp288->unk4CC = 0;
                                sp288->unk77C = var_s3;
                                sp288->unk77C = (s32) var_s4_2;
                                sp288->unk77C = (s32) var_a4_2;
                                sp288->unk77C = (s32) sp1C8;
                                sp288->unk77C = (s32) sp1D0;
                                sp288->unk77C = temp_a7_8;
                                sp288->unk7A8 = 0;
                                (sp268 + sp270)->unk40000 = 0;
                            }
                            var_a0_2 += 8;
                        } else {
block_96:
block_65:
                            var_a0_2 += 8;
                        }
                        var_ra += 1;
                        if (var_ra != var_s0) {
                            goto loop_67;
                        }
                    } else {
                        sp288->unk77C = var_t3_2;
                        sp288->unk77C = (s32) var_t1_2;
                        sp288->unk77C = var_t9_2;
                        sp288->unk77C = (s32) var_t2_3;
                    }
                }
            }
            temp_a5_14 = sp178 + 4;
            sp178 = temp_a5_14;
            sp188 += 1;
            if (temp_a5_14 != sp1A0) {
                goto loop_24;
            }
            var_a1 = (void *) sp2F0;
            var_a4 = (s16 *) sp2F8;
        } else {
            sp188 = 0;
        }
        if (((u32) (var_a1->unk10 & 0x3FFFFFFF) >> 0x1C) != 0) {
            temp_a5_15 = (sp188 * 4) + var_a4;
            sp178 = (s64) temp_a5_15;
            if ((*temp_a5_15 != var_a4->unk0) || (sp178->unk2 != var_a4->unk2) || (sp188 == 1)) {
                if (sp280 != 0) {
                    var_a0_3 = sp258;
loop_226:
                    if ((var_t9_2 >= var_a0_3->unk0) && (var_t2_3 >= var_a0_3->unk2) && (var_t9_2 < var_a0_3->unk4)) {
                        var_a0_3 += 8;
                        if (var_t2_3 < var_a0_3->unk6) {
                            sp288->unk77C = var_t9_2;
                            sp288->unk77C = (s32) var_t2_3;
                            sp288->unk77C = (s32) (var_t9_2 + 1);
                            sp288->unk77C = (s32) var_t2_3;
                        } else {
                            goto block_225;
                        }
                    } else {
                        var_a0_3 += 8;
block_225:
                        if (var_a0_3 != (sp258 + (sp280 * 8))) {
                            goto loop_226;
                        }
                    }
                }
            }
        }
        ((void *) sp288)->unk77C = 0;
        ((void *) sp288)->unk77C = 0;
        ((void *) sp288)->unk77C = 0;
        ((void *) sp288)->unk77C = 0;
        ((void *) sp288)->unk7A8 = 0;
    }
}

void expLineSD(s64 arg0, s64 arg1, s64 arg2, s32 arg3, void *arg4, s32 arg5) {
    s64 sp258;
    s64 sp250;
    s64 sp210;
    s64 sp208;
    s64 sp200;
    s64 sp1F8;
    s64 sp1F0;
    s64 sp1E8;
    s64 sp1E0;
    s64 sp1D8;
    s64 sp1D0;
    s64 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    s64 sp1A0;
    s64 sp198;
    s64 sp190;
    s64 sp188;
    s64 sp180;
    s64 sp178;
    s64 sp170;
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s32 sp6C;
    s32 sp68;
    s32 sp64;
    s32 sp60;
    s32 sp5C;
    s32 sp58;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp34;
    s32 sp2C;
    s32 sp24;
    s32 *sp1C;
    s32 *sp14;
    s32 spC;
    s32 sp4;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_a1_2;
    s16 temp_a1_4;
    s16 temp_a7;
    s16 temp_t1;
    s16 temp_v1_10;
    s16 temp_v1_2;
    s16 var_a1;
    s16 var_s1;
    s32 temp_a1;
    s32 temp_a1_3;
    s32 temp_a1_6;
    s32 temp_a1_8;
    s32 temp_a1_9;
    s32 temp_a2_2;
    s32 temp_a5_10;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a5_7;
    s32 temp_a5_8;
    s32 temp_a5_9;
    s32 temp_a7_2;
    s32 temp_at_10;
    s32 temp_at_11;
    s32 temp_at_12;
    s32 temp_at_13;
    s32 temp_at_14;
    s32 temp_at_16;
    s32 temp_at_17;
    s32 temp_at_19;
    s32 temp_at_20;
    s32 temp_at_22;
    s32 temp_at_23;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_at_5;
    s32 temp_at_6;
    s32 temp_at_7;
    s32 temp_at_8;
    s32 temp_at_9;
    s32 temp_ra_2;
    s32 temp_s4_3;
    s32 temp_s5_2;
    s32 temp_s5_3;
    s32 temp_s7_2;
    s32 temp_t1_11;
    s32 temp_t1_12;
    s32 temp_t1_13;
    s32 temp_t1_14;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t1_6;
    s32 temp_t1_7;
    s32 temp_t1_8;
    s32 temp_t1_9;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t3_3;
    s32 temp_v0_18;
    s32 temp_v0_21;
    s32 temp_v0_25;
    s32 temp_v1;
    s32 temp_v1_11;
    s32 temp_v1_14;
    s32 temp_v1_17;
    s32 temp_v1_18;
    s32 temp_v1_19;
    s32 temp_v1_26;
    s32 temp_v1_27;
    s32 temp_v1_28;
    s32 temp_v1_33;
    s32 temp_v1_3;
    s32 temp_v1_6;
    s32 temp_v1_9;
    s32 var_a0_5;
    s32 var_a1_12;
    s32 var_a1_14;
    s32 var_a1_18;
    s32 var_a1_20;
    s32 var_a1_22;
    s32 var_a1_24;
    s32 var_a1_5;
    s32 var_a1_7;
    s32 var_a1_9;
    s32 var_a2_10;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_a3_10;
    s32 var_a3_11;
    s32 var_a3_12;
    s32 var_a3_13;
    s32 var_a3_14;
    s32 var_a3_15;
    s32 var_a3_16;
    s32 var_a3_17;
    s32 var_a3_18;
    s32 var_a3_19;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_6;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_a3_9;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_5;
    s32 var_a5;
    s32 var_a7;
    s32 var_at_12;
    s32 var_at_14;
    s32 var_at_16;
    s32 var_at_19;
    s32 var_at_21;
    s32 var_at_25;
    s32 var_at_28;
    s32 var_at_33;
    s32 var_at_36;
    s32 var_at_39;
    s32 var_at_3;
    s32 var_at_5;
    s32 var_at_7;
    s32 var_ra;
    s32 var_ra_2;
    s32 var_ra_3;
    s32 var_ra_4;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_5;
    s32 var_s1_4;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s3;
    s32 var_s4_2;
    s32 var_s5;
    s32 var_t0;
    s32 var_t1_8;
    s32 var_t2_3;
    s32 var_t2_4;
    s32 var_t2_5;
    s32 var_t2_6;
    s32 var_t2_8;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_t3_3;
    s32 var_t3_4;
    s32 var_t3_7;
    s32 var_t3_8;
    s32 var_t3_9;
    s32 var_t9_2;
    s32 var_v0_10;
    s32 var_v0_12;
    s32 var_v0_19;
    s32 var_v0_4;
    s32 var_v0_8;
    s32 var_v1;
    s32 var_v1_10;
    s32 var_v1_13;
    s32 var_v1_14;
    s32 var_v1_16;
    s32 var_v1_17;
    s32 var_v1_20;
    s32 var_v1_21;
    s32 var_v1_22;
    s32 var_v1_2;
    s32 var_v1_5;
    s32 var_v1_6;
    s32 var_v1_9;
    s64 temp_a0;
    s64 temp_a5;
    s64 temp_a6;
    s64 temp_a6_2;
    s64 temp_a6_3;
    s64 temp_a6_4;
    s64 temp_a7_3;
    s64 temp_a7_4;
    s64 temp_a7_5;
    s64 temp_a7_6;
    s64 temp_ra;
    s64 temp_s1;
    s64 temp_s1_3;
    s64 temp_s2_3;
    s64 temp_s2_4;
    s64 temp_s4;
    s64 temp_s4_2;
    s64 temp_s7;
    s64 temp_s7_3;
    s64 temp_t1_10;
    s64 temp_t1_5;
    s64 temp_t8;
    s64 temp_t8_2;
    s64 temp_v0_19;
    s64 temp_v0_20;
    s64 var_a0_9;
    s64 var_a2;
    s64 var_a2_11;
    s64 var_a2_12;
    s64 var_a2_2;
    s64 var_a2_4;
    s64 var_a2_5;
    s64 var_a2_6;
    s64 var_a2_7;
    s64 var_a2_8;
    s64 var_a2_9;
    s64 var_a3_2;
    s64 var_a3_5;
    s64 var_a4_4;
    s64 var_a5_2;
    s64 var_a5_3;
    s64 var_a5_4;
    s64 var_a5_5;
    s64 var_a5_6;
    s64 var_a6;
    s64 var_a6_2;
    s64 var_at;
    s64 var_at_10;
    s64 var_at_11;
    s64 var_at_15;
    s64 var_at_18;
    s64 var_at_20;
    s64 var_at_23;
    s64 var_at_24;
    s64 var_at_27;
    s64 var_at_2;
    s64 var_at_30;
    s64 var_at_31;
    s64 var_at_32;
    s64 var_at_35;
    s64 var_at_38;
    s64 var_at_6;
    s64 var_at_9;
    s64 var_s1_2;
    s64 var_s1_3;
    s64 var_s4;
    s64 var_s7;
    s64 var_s8;
    s64 var_t0_2;
    s64 var_t1;
    s64 var_t1_10;
    s64 var_t1_11;
    s64 var_t1_2;
    s64 var_t1_3;
    s64 var_t1_4;
    s64 var_t1_5;
    s64 var_t1_6;
    s64 var_t1_7;
    s64 var_t1_9;
    s64 var_t2;
    s64 var_t2_2;
    s64 var_t2_7;
    s64 var_t3_10;
    s64 var_t3_5;
    s64 var_t3_6;
    s64 var_t8;
    s64 var_t8_2;
    s64 var_t8_3;
    s64 var_t8_4;
    s64 var_t9;
    s64 var_v0;
    s64 var_v0_14;
    s64 var_v0_15;
    s64 var_v0_5;
    s64 var_v1_12;
    s64 var_v1_15;
    s64 var_v1_18;
    s64 var_v1_19;
    s64 var_v1_3;
    s64 var_v1_4;
    s64 var_v1_7;
    s64 var_v1_8;
    u16 temp_at_15;
    u16 temp_at_21;
    u16 temp_ra_3;
    u16 temp_s1_2;
    u16 temp_s2;
    u16 temp_s2_2;
    u16 temp_s5;
    u8 *temp_a2;
    u8 *temp_s6;
    u8 *temp_s7_5;
    u8 *var_at_17;
    u8 *var_at_22;
    u8 *var_at_29;
    u8 *var_at_8;
    u8 *var_s0_3;
    u8 *var_s0_4;
    u8 *var_s0_6;
    u8 *var_s0_7;
    u8 *var_v0_11;
    u8 *var_v0_17;
    u8 *var_v0_18;
    u8 *var_v0_2;
    u8 *var_v0_6;
    u8 temp_a1_5;
    u8 temp_v0_10;
    u8 temp_v0_11;
    u8 temp_v0_12;
    u8 temp_v0_13;
    u8 temp_v0_14;
    u8 temp_v0_15;
    u8 temp_v0_16;
    u8 temp_v0_17;
    u8 temp_v0_22;
    u8 temp_v0_23;
    u8 temp_v0_24;
    u8 temp_v0_26;
    u8 temp_v0_27;
    u8 temp_v0_28;
    u8 temp_v0_29;
    u8 temp_v0_30;
    u8 temp_v0_31;
    u8 temp_v0_32;
    u8 temp_v0_33;
    u8 temp_v0_34;
    u8 temp_v0_3;
    u8 temp_v0_4;
    u8 temp_v0_5;
    u8 temp_v0_6;
    u8 temp_v0_7;
    u8 temp_v0_8;
    u8 temp_v0_9;
    u8 temp_v1_12;
    u8 temp_v1_13;
    u8 temp_v1_15;
    u8 temp_v1_16;
    u8 temp_v1_20;
    u8 temp_v1_21;
    u8 temp_v1_22;
    u8 temp_v1_23;
    u8 temp_v1_24;
    u8 temp_v1_25;
    u8 temp_v1_29;
    u8 temp_v1_30;
    u8 temp_v1_31;
    u8 temp_v1_32;
    u8 temp_v1_4;
    u8 temp_v1_5;
    u8 temp_v1_7;
    u8 temp_v1_8;
    u8 var_a0;
    u8 var_a0_10;
    u8 var_a0_11;
    u8 var_a0_2;
    u8 var_a0_3;
    u8 var_a0_4;
    u8 var_a0_6;
    u8 var_a0_7;
    u8 var_a0_8;
    u8 var_a1_10;
    u8 var_a1_11;
    u8 var_a1_13;
    u8 var_a1_15;
    u8 var_a1_16;
    u8 var_a1_17;
    u8 var_a1_19;
    u8 var_a1_21;
    u8 var_a1_23;
    u8 var_a1_2;
    u8 var_a1_3;
    u8 var_a1_4;
    u8 var_a1_6;
    u8 var_a1_8;
    u8 var_at_13;
    u8 var_at_26;
    u8 var_at_34;
    u8 var_at_37;
    u8 var_at_4;
    u8 var_v0_13;
    u8 var_v0_16;
    u8 var_v0_3;
    u8 var_v0_7;
    u8 var_v0_9;
    u8 var_v1_11;
    void *temp_a1_7;
    void *temp_at;
    void *temp_at_18;
    void *temp_s7_4;
    void *temp_s8;
    void *temp_t9;
    void *temp_v0;
    void *temp_v0_2;
    void *var_s6;

    var_a5 = arg5;
    sp1F0 = arg1;
    spD0 = arg2;
    sp1A8 = ((u32) arg1->unk10 >> 0x1E) == 2;
    sp198 = arg0;
    temp_v0 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    sp188 = (s64) temp_v0;
    temp_v0_2 = temp_v0->unk8;
    temp_t9 = **(arg1->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    temp_v1 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
    var_s6 = temp_t9 + 0x40000;
    if (temp_v1 != 0xD) {
        var_a5 = 0xE;
        if (temp_v1 != 0xE) {
            if (temp_v1 != 0xC) {
                var_a5 = temp_v1 | 0x1000;
                temp_t9->unk4052C = var_a5;
                temp_t9->unk404D4 = 0;
                var_a4 = sp188->unk4C;
                var_a3 = sp188->unk15 * 8;
            } else {
                temp_t9->unk4052C = 0x1008;
                var_a4 = 0;
                var_a3 = 1;
                temp_t9->unk404D4 = (s32) (sp188->unk4C & 0xF);
            }
        } else {
            temp_t9->unk4052C = 0x100B;
            var_a3 = 9;
            var_a4 = 0;
            var_a5 = sp188->unk4C & 0xC;
            temp_t9->unk404D4 = var_a5;
        }
    } else {
        temp_t9->unk4052C = 0x100B;
        var_a3 = 1;
        var_a4 = 0;
        temp_t9->unk404D4 = (s32) (sp188->unk4C & 3);
    }
    temp_t9->unk40530 = (s32) sp188->unk40;
    temp_t9->unk4077C = (s32) (var_a4 & 0xFFFFFF);
    temp_t9->unk4077C = (s32) sp188->unk48;
    temp_t9->unk4077C = var_a3;
    temp_t9->unk404CC = 0;
    temp_at = temp_v0_2->unk8;
    if (temp_at != NULL) {
        spD8 = temp_at + 8;
        if (temp_at != NULL) {
            goto block_6;
        }
        goto block_586;
    }
    var_a5 = (s32) temp_v0_2;
    spD8 = (s64) temp_v0_2;
    if (temp_at == NULL) {
block_586:
        sp108 = 1;
    } else {
block_6:
        var_a5 = temp_at->unk4;
        sp108 = (s64) var_a5;
    }
    sp44 = 0;
    sp40 = 0;
    temp_a2 = sp1F0->unkC;
    temp_t1 = sp198->unkA;
    temp_a7 = sp198->unk8;
    sp190 = (s64) temp_a2;
    spF0 = (s64) temp_t1;
    spF8 = (s64) temp_a7;
    temp_a6 = arg4->unk0 + temp_a7;
    sp178 = arg4->unk2 + temp_t1;
    sp170 = temp_a6;
    miStepDash(sp1F0->unk8, &sp40, temp_a2, sp1F0->unkA, &sp44, (void *) var_a5, temp_a6, temp_a7);
    sp150 = (s64) sp40;
    sp168 = *(sp40 + sp190) - sp44;
    if (arg3 >= 2) {
        sp90 = (s64) arg4;
        sp118 = 0;
        var_s3 = sp4C;
        var_s0 = sp48;
        sp120 = (s64) arg4;
        sp1C0 = (s64) sp54;
        sp1B8 = (s64) sp50;
        spC8 = (s64) (((arg3 - 1) * 4) + arg4);
loop_13:
        temp_t8 = sp170;
        temp_ra = sp178;
        sp160 = sp108;
        sp1D8 = spD8;
        if (spD0 == 1) {
            spF8 = sp170;
            spF0 = sp178;
        }
        temp_a5 = sp120->unk4 + spF8;
        sp170 = temp_a5;
        var_a6 = sp120->unk6 + spF0;
        sp178 = var_a6;
        if (temp_a5 == temp_t8) {
            if (sp178 != temp_ra) {
                var_t9 = temp_ra;
                if (temp_ra < sp178) {
                    var_t2 = sp178;
                    var_t3 = 0;
                } else {
                    var_t9 = sp178;
                    var_t2 = temp_ra;
                    var_t3 = 1;
                }
                if (sp108 != 0) {
                    if (var_t9 >= sp1D8->unk6) {
loop_25:
                        var_a6 = sp1D8 + 8;
                        var_a5_2 = sp160 - 1;
                        sp160 = var_a5_2;
                        sp1D8 = var_a6;
                        if (var_a5_2 != 0) {
                            var_a6 = sp1D8;
                            if (var_t9 < sp1D8->unk6) {
                                goto block_27;
                            }
                            goto loop_25;
                        }
                    } else {
                        goto block_28;
                    }
                } else {
block_27:
block_28:
                    var_a5_2 = sp160;
                    if ((sp160 != 0) && (var_a3_2 = sp150, var_v0 = sp168, (var_a5_2 != 0))) {
                        var_a1 = sp1D8->unk2;
                        var_a6 = var_t2 < var_a1;
                        if (var_a6 == 0) {
loop_280:
                            var_at = var_t2;
                            var_s1 = var_a1;
                            var_s4 = var_a3_2 + 1;
                            if ((temp_t8 >= sp1D8->unk0) && (temp_t8 < sp1D8->unk4)) {
                                if (var_a1 < var_t9) {
                                    var_s1 = (s16) var_t9;
                                }
                                temp_v1_2 = sp1D8->unk6;
                                sp140 = (s64) var_s1;
                                if (var_t2 >= temp_v1_2) {
                                    var_at = (s64) temp_v1_2;
                                }
                                sp138 = var_at;
                                if (var_s1 != var_at) {
                                    spA8 = var_t9;
                                    spB0 = var_t2;
                                    if (var_t3 != 0) {
                                        if (var_t2 >= temp_v1_2) {
                                            temp_s5 = sp1F0->unkA;
                                            temp_s7 = var_at - 1;
                                            var_a1_2 = *(var_a3_2 + sp190);
                                            temp_t1_2 = var_t2 - var_at;
                                            temp_v1_3 = var_a1_2 - var_v0;
                                            temp_ra_2 = var_a1_2 - temp_v1_3;
                                            sp138 = temp_s7;
                                            if ((temp_t1_2 + 1) < temp_ra_2) {
                                                var_v1 = temp_v1_3 + temp_t1_2 + 1;
                                            } else {
                                                var_s2 = (temp_t1_2 - temp_ra_2) + 1;
                                                if (var_s4 == temp_s5) {
                                                    var_s4 = 0;
                                                }
                                                var_a3_3 = 0;
                                                var_v1_2 = temp_s5 & 3;
                                                if ((s32) temp_s5 > 0) {
                                                    var_at_2 = sp190;
                                                    if (var_v1_2 != 0) {
                                                        do {
                                                            var_at_2 += 1;
                                                            var_v1_2 -= 1;
                                                            var_a3_3 += var_at_2->unk-1;
                                                        } while (var_v1_2 != 0);
                                                    }
                                                    temp_a1 = (s32) temp_s5 >> 2;
                                                    var_a2 = var_at_2;
                                                    if (temp_a1 != 0) {
                                                        if (temp_a1 >= 2) {
                                                            var_a0 = var_a2->unk2;
                                                            var_a1_3 = var_a2->unk1;
                                                            temp_a5_2 = (temp_s5 + sp190) - 4;
                                                            var_at_3 = var_a2->unk0 + var_a3_3;
loop_491:
                                                            temp_v1_4 = var_a2->unk5;
                                                            temp_v0_3 = var_a2->unk6;
                                                            var_at_3 = var_a2->unk4 + (var_a2->unk3 + (var_a0 + (var_a1_3 + var_at_3)));
                                                            if (var_a2 != (temp_a5_2 - 4)) {
                                                                temp_v1_5 = var_a2->unk9;
                                                                temp_v0_4 = var_a2->unkA;
                                                                var_at_3 = var_a2->unk8 + (var_a2->unk7 + (temp_v0_3 + (temp_v1_4 + var_at_3)));
                                                                if (var_a2 != (temp_a5_2 - 8)) {
                                                                    temp_v0_5 = var_a2->unkC;
                                                                    var_a1_3 = var_a2->unkD;
                                                                    var_a0 = var_a2->unkE;
                                                                    temp_at_2 = var_a2->unkB + (temp_v0_4 + (temp_v1_5 + var_at_3));
                                                                    var_a2 += 0xC;
                                                                    var_at_3 = temp_v0_5 + temp_at_2;
                                                                    if (var_a2 == temp_a5_2) {
                                                                        var_t1 = var_a2;
                                                                    } else {
                                                                        goto loop_491;
                                                                    }
                                                                } else {
                                                                    var_a0 = temp_v0_4;
                                                                    var_a1_3 = temp_v1_5;
                                                                    var_t1 = var_a2 + 8;
                                                                }
                                                            } else {
                                                                var_a0 = temp_v0_3;
                                                                var_a1_3 = temp_v1_4;
                                                                var_t1 = var_a2 + 4;
                                                            }
                                                            var_a3_3 = var_t1->unk3 + (var_a0 + (var_a1_3 + var_at_3));
                                                        } else {
                                                            var_a3_3 = var_a2->unk3 + (var_a2->unk2 + (var_a2->unk1 + (var_a2->unk0 + var_a3_3)));
                                                        }
                                                    }
                                                }
                                                if (var_s2 >= var_a3_3) {
                                                    M2C_TRAP_IF(var_a3_3 == 0);
                                                    var_s2 = var_s2 % var_a3_3;
                                                }
                                                var_v0_2 = var_s4 + sp190;
                                                var_at_4 = *var_v0_2;
                                                if (var_s2 >= (s32) var_at_4) {
loop_525:
                                                    var_s4 += 1;
                                                    var_v0_2 += 1;
                                                    var_s2 -= var_at_4;
                                                    if (var_v0_2 == (temp_s5 + sp190)) {
                                                        var_s4 = 0;
                                                        var_v0_2 = (u8 *) sp190;
                                                    }
                                                    var_at_4 = *var_v0_2;
                                                    if (var_s2 >= (s32) var_at_4) {
                                                        goto loop_525;
                                                    }
                                                }
                                                var_a3_2 = var_s4;
                                                var_v1 = var_s2;
                                                var_a1_2 = var_at_4;
                                            }
                                            var_v0 = var_a1_2 - var_v1;
                                            var_t2 = temp_s7;
                                        }
                                        if (var_s1 != var_t9) {
                                            var_t9 = var_s1 - 1;
                                            sp140 = var_t9;
                                        }
                                    } else if (var_t9 != sp140) {
                                        var_a1_4 = *(var_a3_2 + sp190);
                                        var_s1_2 = var_a3_2 + 1;
                                        temp_v1_6 = sp140 - var_t9;
                                        temp_at_3 = var_a1_4 - var_v0;
                                        temp_t1_3 = var_a1_4 - temp_at_3;
                                        temp_s2 = sp1F0->unkA;
                                        if (temp_v1_6 < temp_t1_3) {
                                            var_at_5 = temp_at_3 + temp_v1_6;
                                        } else {
                                            var_ra = temp_v1_6 - temp_t1_3;
                                            var_a3_4 = 0;
                                            if (var_s1_2 == temp_s2) {
                                                var_s1_2 = 0;
                                                var_a3_4 = 0;
                                            }
                                            var_a1_5 = temp_s2 & 3;
                                            if ((s32) temp_s2 > 0) {
                                                var_at_6 = sp190;
                                                if (var_a1_5 != 0) {
                                                    do {
                                                        var_at_6 += 1;
                                                        var_a1_5 -= 1;
                                                        var_a3_4 += var_at_6->unk-1;
                                                    } while (var_a1_5 != 0);
                                                }
                                                temp_t1_4 = (s32) temp_s2 >> 2;
                                                var_a2_2 = var_at_6;
                                                if (temp_t1_4 != 0) {
                                                    if (temp_t1_4 >= 2) {
                                                        var_a0_2 = var_a2_2->unk2;
                                                        temp_a5_3 = (temp_s2 + sp190) - 4;
                                                        var_at_7 = var_a2_2->unk0 + var_a3_4;
                                                        var_a1_6 = var_a2_2->unk1;
loop_595:
                                                        temp_v1_7 = var_a2_2->unk5;
                                                        temp_v0_6 = var_a2_2->unk6;
                                                        var_at_7 = var_a2_2->unk4 + (var_a2_2->unk3 + (var_a0_2 + (var_a1_6 + var_at_7)));
                                                        if (var_a2_2 != (temp_a5_3 - 4)) {
                                                            temp_v1_8 = var_a2_2->unk9;
                                                            temp_v0_7 = var_a2_2->unkA;
                                                            var_at_7 = var_a2_2->unk8 + (var_a2_2->unk7 + (temp_v0_6 + (temp_v1_7 + var_at_7)));
                                                            if (var_a2_2 != (temp_a5_3 - 8)) {
                                                                temp_v0_8 = var_a2_2->unkC;
                                                                var_a1_6 = var_a2_2->unkD;
                                                                var_a0_2 = var_a2_2->unkE;
                                                                temp_at_4 = var_a2_2->unkB + (temp_v0_7 + (temp_v1_8 + var_at_7));
                                                                var_a2_2 += 0xC;
                                                                var_at_7 = temp_v0_8 + temp_at_4;
                                                                if (var_a2_2 == temp_a5_3) {
                                                                    var_t1_2 = var_a2_2;
                                                                } else {
                                                                    goto loop_595;
                                                                }
                                                            } else {
                                                                var_a0_2 = temp_v0_7;
                                                                var_a1_6 = temp_v1_8;
                                                                var_t1_2 = var_a2_2 + 8;
                                                            }
                                                        } else {
                                                            var_a0_2 = temp_v0_6;
                                                            var_a1_6 = temp_v1_7;
                                                            var_t1_2 = var_a2_2 + 4;
                                                        }
                                                        var_a3_4 = var_t1_2->unk3 + (var_a0_2 + (var_a1_6 + var_at_7));
                                                    } else {
                                                        var_a3_4 = var_a2_2->unk3 + (var_a2_2->unk2 + (var_a2_2->unk1 + (var_a2_2->unk0 + var_a3_4)));
                                                    }
                                                }
                                            }
                                            if (var_ra >= var_a3_4) {
                                                M2C_TRAP_IF(var_a3_4 == 0);
                                                var_ra = var_ra % var_a3_4;
                                            }
                                            var_at_8 = var_s1_2 + sp190;
                                            var_v0_3 = *var_at_8;
                                            if (var_ra >= (s32) var_v0_3) {
loop_607:
                                                var_s1_2 += 1;
                                                var_at_8 += 1;
                                                var_ra -= var_v0_3;
                                                if (var_at_8 == (temp_s2 + sp190)) {
                                                    var_s1_2 = 0;
                                                    var_at_8 = (u8 *) sp190;
                                                }
                                                var_v0_3 = *var_at_8;
                                                if (var_ra >= (s32) var_v0_3) {
                                                    goto loop_607;
                                                }
                                            }
                                            var_a3_2 = var_s1_2;
                                            var_at_5 = var_ra;
                                            var_a1_4 = var_v0_3;
                                        }
                                        var_t9 = sp140;
                                        var_v0 = var_a1_4 - var_at_5;
                                    }
                                    temp_s1 = var_v0;
                                    var_s2_2 = 1;
                                    if (sp1A8 != 0) {
                                        var_s2_2 = 2;
                                    }
                                    temp_s4 = var_a3_2;
                                    temp_s5_2 = temp_s4 & 1;
                                    if (var_s2_2 > 0) {
                                        temp_a0 = temp_s4 + 1;
                                        var_a1_7 = 0;
                                        temp_t1_5 = sp138 - sp140;
                                        temp_s7_2 = temp_t1_5 < temp_s1;
loop_335:
                                        var_a3_2 = temp_s4;
                                        var_v0 = temp_s1;
                                        var_at_9 = temp_t1_5;
                                        if (sp1A8 != 0) {
                                            var_s6->unk77C = 0;
                                            var_s6->unk77C = 0;
                                            var_s6->unk77C = 0;
                                            var_s6->unk77C = 0;
                                            var_s6->unk77C = 0;
                                            var_s6->unk77C = 0;
                                            var_s6->unk7A8 = 0;
                                            if (var_a1_7 != 0) {
                                                var_ra_2 = sp188->unk44;
                                            } else {
                                                var_ra_2 = sp188->unk40;
                                            }
                                            temp_v1_9 = (*(sp198->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                                            var_a2_3 = 1;
                                            if (temp_v1_9 != 0xD) {
                                                var_a2_3 = 1;
                                                if (temp_v1_9 != 0xE) {
                                                    if (temp_v1_9 != 0xC) {
                                                        var_s6->unk52C = (s32) (temp_v1_9 | 0x1000);
                                                        var_s6->unk4D4 = 0;
                                                        var_a4_2 = sp188->unk4C;
                                                        var_a2_3 = sp188->unk15 * 8;
                                                    } else {
                                                        var_s6->unk52C = 0x1008;
                                                        var_a4_2 = 0;
                                                        var_s6->unk4D4 = (s32) (sp188->unk4C & 0xF);
                                                    }
                                                } else {
                                                    var_s6->unk52C = 0x100B;
                                                    var_a2_3 = 9;
                                                    var_a4_2 = 0;
                                                    var_s6->unk4D4 = (s32) (sp188->unk4C & 0xC);
                                                }
                                            } else {
                                                var_s6->unk52C = 0x100B;
                                                var_a4_2 = 0;
                                                var_s6->unk4D4 = (s32) (sp188->unk4C & 3);
                                            }
                                            var_s6->unk530 = var_ra_2;
                                            var_s6->unk77C = (s32) (var_a4_2 & 0xFFFFFF);
                                            var_s6->unk77C = (s32) sp188->unk48;
                                            var_s6->unk77C = var_a2_3;
                                            var_s6->unk4CC = 0;
                                        }
                                        var_v1_3 = temp_s1;
                                        if (var_a1_7 != temp_s5_2) {
                                            if (temp_s7_2 != 0) {
                                                var_v1_3 = temp_t1_5;
                                            }
                                            var_v0 = temp_s1 - var_v1_3;
                                            if (var_v0 == 0) {
                                                var_a3_2 = temp_a0;
                                                if (sp1F0->unkA == temp_a0) {
                                                    var_a3_2 = 0;
                                                }
                                                var_v0 = (s64) *(var_a3_2 + sp190);
                                            }
                                            var_at_9 = temp_t1_5 - var_v1_3;
                                            if (var_t3 != 0) {
                                                var_t2 -= var_v1_3;
                                            } else {
                                                var_t9 += var_v1_3;
                                            }
                                        }
                                        if (var_at_9 != 0) {
                                            var_t0 = var_at_9 < var_v0;
loop_356:
                                            var_v1_4 = var_at_9;
                                            if (var_t0 != 0) {
                                                var_a5_3 = -var_at_9;
                                                if (var_t3 == 0) {
                                                    goto block_358;
                                                }
                                                goto block_360;
                                            }
                                            var_v1_4 = var_v0;
                                            var_a5_3 = -var_at_9;
                                            if (var_t3 != 0) {
block_360:
                                                var_s6->unk77C = (s32) temp_t8;
                                                var_s6->unk77C = (s32) var_t2;
                                                var_t2 -= var_v1_4;
                                                var_s6->unk77C = 0x3E8;
                                                var_s6->unk77C = 0;
                                                var_s6->unk77C = (s32) var_a5_3;
                                            } else {
block_358:
                                                var_s6->unk77C = (s32) temp_t8;
                                                var_s6->unk77C = (s32) var_t9;
                                                var_t9 += var_v1_4;
                                                var_s6->unk77C = 0x3E8;
                                                var_s6->unk77C = 0;
                                                var_s6->unk77C = (s32) var_at_9;
                                            }
                                            var_s6->unk77C = (s32) var_v1_4;
                                            var_v0_4 = var_v0 - var_v1_4;
                                            temp_at_5 = var_at_9 - var_v1_4;
                                            if (var_v0_4 == 0) {
                                                var_a3_2 += 1;
                                                if (sp1F0->unkA == var_a3_2) {
                                                    var_a3_2 = 0;
                                                }
                                                var_v0_4 = (s32) *(var_a3_2 + sp190);
                                            }
                                            var_v1_5 = temp_at_5;
                                            if (temp_at_5 < var_v0_4) {

                                            } else {
                                                var_v1_5 = var_v0_4;
                                            }
                                            var_v0 = var_v0_4 - var_v1_5;
                                            if (var_v0 == 0) {
                                                var_a3_2 += 1;
                                                if (sp1F0->unkA == var_a3_2) {
                                                    var_a3_2 = 0;
                                                }
                                                var_v0 = (s64) *(var_a3_2 + sp190);
                                            }
                                            var_at_9 = temp_at_5 - var_v1_5;
                                            if (var_t3 != 0) {
                                                var_t2 -= var_v1_5;
                                            } else {
                                                var_t9 += var_v1_5;
                                            }
                                            var_t0 = var_at_9 < var_v0;
                                            if (var_at_9 != 0) {
                                                goto loop_356;
                                            }
                                        }
                                        var_a1_7 += 1;
                                        var_t9 = sp140;
                                        var_t2 = sp138;
                                        if (var_a1_7 != var_s2_2) {
                                            goto loop_335;
                                        }
                                    }
                                    var_t9 = spA8;
                                    var_t2 = spB0;
                                }
                            }
                            var_a6 = sp1D8 + 8;
                            var_a5_2 = sp160 - 1;
                            sp160 = var_a5_2;
                            sp1D8 = var_a6;
                            if (var_a5_2 != 0) {
                                var_a1 = sp1D8->unk2;
                                var_a5_2 = sp1D8;
                                if (var_t2 >= var_a1) {
                                    goto loop_280;
                                }
                            }
                        }
                    }
                }
                sp258 = var_t9;
                temp_a7_2 = *(sp150 + sp190) - sp168;
                sp44 = temp_a7_2;
                miStepDash(var_t2 - sp258, &sp40, (u8 *) sp190, sp1F0->unkA, &sp44, (void *) var_a5_2, var_a6, (s16) temp_a7_2);
                sp150 = (s64) sp40;
                var_a5_4 = *(sp40 + sp190) - sp44;
                goto block_11;
            }
        } else if (sp178 == temp_ra) {
            var_a2_4 = temp_t8;
            if (temp_t8 < sp170) {
                var_t2_2 = sp170;
                var_t9_2 = 0;
            } else {
                var_a2_4 = sp170;
                var_t2_2 = temp_t8;
                var_t9_2 = 1;
            }
            if (sp160 != 0) {
                if (temp_ra >= sp1D8->unk6) {
loop_36:
                    temp_a7_3 = sp160 - 1;
                    sp160 = temp_a7_3;
                    sp1D8 += 8;
                    if (temp_a7_3 != 0) {
                        if (temp_ra < sp1D8->unk6) {
                            goto block_39;
                        }
                        goto loop_36;
                    }
                } else {
block_39:
                    if ((sp160 != 0) && (temp_a1_2 = sp1D8->unk2, var_a3_5 = sp150, ((temp_ra < temp_a1_2) == 0)) && (var_v0_5 = sp168, spB8 = (s64) temp_a1_2, (sp160 != 0))) {
                        if (temp_a1_2 == spB8) {
loop_387:
                            var_at_10 = var_t2_2;
                            temp_v1_10 = sp1D8->unk4;
                            var_t8 = var_a2_4;
                            var_s1_3 = var_a3_5 + 1;
                            if (var_a2_4 >= temp_v1_10) {
                                sp1D8 += 8;
                                var_a5_5 = sp160 - 1;
                                goto block_385;
                            }
                            temp_a0_2 = sp1D8->unk0;
                            if (temp_a0_2 < var_t2_2) {
                                if (temp_a0_2 >= var_a2_4) {
                                    var_t8 = (s64) temp_a0_2;
                                }
                                sp130 = var_t8;
                                if (var_t2_2 >= temp_v1_10) {
                                    var_at_10 = (s64) temp_v1_10;
                                }
                                sp128 = var_at_10;
                                if (var_t8 != var_at_10) {
                                    sp98 = var_a2_4;
                                    spA0 = var_t2_2;
                                    if (var_t9_2 != 0) {
                                        if (var_t2_2 >= temp_v1_10) {
                                            temp_s2_2 = sp1F0->unkA;
                                            temp_s4_2 = var_at_10 - 1;
                                            var_a1_8 = *(var_a3_5 + sp190);
                                            temp_t1_6 = var_t2_2 - var_at_10;
                                            temp_v1_11 = var_a1_8 - var_v0_5;
                                            temp_t3 = var_a1_8 - temp_v1_11;
                                            sp128 = temp_s4_2;
                                            if ((temp_t1_6 + 1) < temp_t3) {
                                                var_v1_6 = temp_v1_11 + temp_t1_6 + 1;
                                            } else {
                                                var_t2_3 = (temp_t1_6 - temp_t3) + 1;
                                                if (var_s1_3 == temp_s2_2) {
                                                    var_s1_3 = 0;
                                                }
                                                var_a3_6 = 0;
                                                var_a1_9 = temp_s2_2 & 3;
                                                if ((s32) temp_s2_2 > 0) {
                                                    var_at_11 = sp190;
                                                    if (var_a1_9 != 0) {
                                                        do {
                                                            var_at_11 += 1;
                                                            var_a1_9 -= 1;
                                                            var_a3_6 += var_at_11->unk-1;
                                                        } while (var_a1_9 != 0);
                                                    }
                                                    sp250 = var_a2_4;
                                                    temp_t1_7 = (s32) temp_s2_2 >> 2;
                                                    var_a2_5 = var_at_11;
                                                    if (temp_t1_7 != 0) {
                                                        if (temp_t1_7 >= 2) {
                                                            var_a0_3 = var_a2_5->unk2;
                                                            temp_a5_4 = (temp_s2_2 + sp190) - 4;
                                                            var_at_12 = var_a2_5->unk0 + var_a3_6;
                                                            var_a1_10 = var_a2_5->unk1;
loop_563:
                                                            temp_v1_12 = var_a2_5->unk5;
                                                            temp_v0_9 = var_a2_5->unk6;
                                                            var_at_12 = var_a2_5->unk4 + (var_a2_5->unk3 + (var_a0_3 + (var_a1_10 + var_at_12)));
                                                            if (var_a2_5 != (temp_a5_4 - 4)) {
                                                                temp_v1_13 = var_a2_5->unk9;
                                                                temp_v0_10 = var_a2_5->unkA;
                                                                var_at_12 = var_a2_5->unk8 + (var_a2_5->unk7 + (temp_v0_9 + (temp_v1_12 + var_at_12)));
                                                                if (var_a2_5 != (temp_a5_4 - 8)) {
                                                                    temp_v0_11 = var_a2_5->unkC;
                                                                    var_a1_10 = var_a2_5->unkD;
                                                                    var_a0_3 = var_a2_5->unkE;
                                                                    temp_at_6 = var_a2_5->unkB + (temp_v0_10 + (temp_v1_13 + var_at_12));
                                                                    var_a2_5 += 0xC;
                                                                    var_at_12 = temp_v0_11 + temp_at_6;
                                                                    if (var_a2_5 == temp_a5_4) {
                                                                        var_t1_3 = var_a2_5;
                                                                    } else {
                                                                        goto loop_563;
                                                                    }
                                                                } else {
                                                                    var_a0_3 = temp_v0_10;
                                                                    var_a1_10 = temp_v1_13;
                                                                    var_t1_3 = var_a2_5 + 8;
                                                                }
                                                            } else {
                                                                var_a0_3 = temp_v0_9;
                                                                var_a1_10 = temp_v1_12;
                                                                var_t1_3 = var_a2_5 + 4;
                                                            }
                                                            var_a3_6 = var_t1_3->unk3 + (var_a0_3 + (var_a1_10 + var_at_12));
                                                        } else {
                                                            var_a3_6 = var_a2_5->unk3 + (var_a2_5->unk2 + (var_a2_5->unk1 + (var_a2_5->unk0 + var_a3_6)));
                                                        }
                                                    }
                                                    var_a2_4 = sp250;
                                                }
                                                if (var_t2_3 >= var_a3_6) {
                                                    M2C_TRAP_IF(var_a3_6 == 0);
                                                    var_t2_3 = var_t2_3 % var_a3_6;
                                                }
                                                var_v0_6 = var_s1_3 + sp190;
                                                var_at_13 = *var_v0_6;
                                                if (var_t2_3 >= (s32) var_at_13) {
loop_579:
                                                    var_s1_3 += 1;
                                                    var_v0_6 += 1;
                                                    var_t2_3 -= var_at_13;
                                                    if (var_v0_6 == (temp_s2_2 + sp190)) {
                                                        var_s1_3 = 0;
                                                        var_v0_6 = (u8 *) sp190;
                                                    }
                                                    var_at_13 = *var_v0_6;
                                                    if (var_t2_3 >= (s32) var_at_13) {
                                                        goto loop_579;
                                                    }
                                                }
                                                var_a3_5 = var_s1_3;
                                                var_v1_6 = var_t2_3;
                                                var_a1_8 = var_at_13;
                                            }
                                            var_v0_5 = var_a1_8 - var_v1_6;
                                            var_t2_2 = temp_s4_2;
                                        }
                                        if (var_t8 != var_a2_4) {
                                            var_a2_4 = var_t8 - 1;
                                            sp130 = var_a2_4;
                                        }
                                    } else if (var_a2_4 != sp130) {
                                        var_a1_11 = *(var_a3_5 + sp190);
                                        var_t8_2 = var_a3_5 + 1;
                                        temp_v1_14 = sp130 - var_a2_4;
                                        temp_at_7 = var_a1_11 - var_v0_5;
                                        temp_t1_8 = var_a1_11 - temp_at_7;
                                        temp_s1_2 = sp1F0->unkA;
                                        if (temp_v1_14 < temp_t1_8) {
                                            var_at_14 = temp_at_7 + temp_v1_14;
                                        } else {
                                            var_t3_2 = temp_v1_14 - temp_t1_8;
                                            var_a3_7 = 0;
                                            if (var_t8_2 == temp_s1_2) {
                                                var_t8_2 = 0;
                                                var_a3_7 = 0;
                                            }
                                            var_a1_12 = temp_s1_2 & 3;
                                            if ((s32) temp_s1_2 > 0) {
                                                var_at_15 = sp190;
                                                if (var_a1_12 != 0) {
                                                    do {
                                                        var_at_15 += 1;
                                                        var_a1_12 -= 1;
                                                        var_a3_7 += var_at_15->unk-1;
                                                    } while (var_a1_12 != 0);
                                                }
                                                temp_t1_9 = (s32) temp_s1_2 >> 2;
                                                var_a2_6 = var_at_15;
                                                if (temp_t1_9 != 0) {
                                                    if (temp_t1_9 >= 2) {
                                                        var_a0_4 = var_a2_6->unk2;
                                                        temp_a5_5 = (temp_s1_2 + sp190) - 4;
                                                        var_at_16 = var_a2_6->unk0 + var_a3_7;
                                                        var_a1_13 = var_a2_6->unk1;
loop_622:
                                                        temp_v1_15 = var_a2_6->unk5;
                                                        temp_v0_12 = var_a2_6->unk6;
                                                        var_at_16 = var_a2_6->unk4 + (var_a2_6->unk3 + (var_a0_4 + (var_a1_13 + var_at_16)));
                                                        if (var_a2_6 != (temp_a5_5 - 4)) {
                                                            temp_v1_16 = var_a2_6->unk9;
                                                            temp_v0_13 = var_a2_6->unkA;
                                                            var_at_16 = var_a2_6->unk8 + (var_a2_6->unk7 + (temp_v0_12 + (temp_v1_15 + var_at_16)));
                                                            if (var_a2_6 != (temp_a5_5 - 8)) {
                                                                temp_v0_14 = var_a2_6->unkC;
                                                                var_a1_13 = var_a2_6->unkD;
                                                                var_a0_4 = var_a2_6->unkE;
                                                                temp_at_8 = var_a2_6->unkB + (temp_v0_13 + (temp_v1_16 + var_at_16));
                                                                var_a2_6 += 0xC;
                                                                var_at_16 = temp_v0_14 + temp_at_8;
                                                                if (var_a2_6 == temp_a5_5) {
                                                                    var_t1_4 = var_a2_6;
                                                                } else {
                                                                    goto loop_622;
                                                                }
                                                            } else {
                                                                var_a0_4 = temp_v0_13;
                                                                var_a1_13 = temp_v1_16;
                                                                var_t1_4 = var_a2_6 + 8;
                                                            }
                                                        } else {
                                                            var_a0_4 = temp_v0_12;
                                                            var_a1_13 = temp_v1_15;
                                                            var_t1_4 = var_a2_6 + 4;
                                                        }
                                                        var_a3_7 = var_t1_4->unk3 + (var_a0_4 + (var_a1_13 + var_at_16));
                                                    } else {
                                                        var_a3_7 = var_a2_6->unk3 + (var_a2_6->unk2 + (var_a2_6->unk1 + (var_a2_6->unk0 + var_a3_7)));
                                                    }
                                                }
                                            }
                                            if (var_t3_2 >= var_a3_7) {
                                                M2C_TRAP_IF(var_a3_7 == 0);
                                                var_t3_2 = var_t3_2 % var_a3_7;
                                            }
                                            var_at_17 = var_t8_2 + sp190;
                                            var_v0_7 = *var_at_17;
                                            if (var_t3_2 >= (s32) var_v0_7) {
loop_634:
                                                var_t8_2 += 1;
                                                var_at_17 += 1;
                                                var_t3_2 -= var_v0_7;
                                                if (var_at_17 == (temp_s1_2 + sp190)) {
                                                    var_t8_2 = 0;
                                                    var_at_17 = (u8 *) sp190;
                                                }
                                                var_v0_7 = *var_at_17;
                                                if (var_t3_2 >= (s32) var_v0_7) {
                                                    goto loop_634;
                                                }
                                            }
                                            var_a3_5 = var_t8_2;
                                            var_at_14 = var_t3_2;
                                            var_a1_11 = var_v0_7;
                                        }
                                        var_v0_5 = var_a1_11 - var_at_14;
                                        var_a2_4 = sp130;
                                    }
                                    temp_t8_2 = var_v0_5;
                                    var_s1_4 = 1;
                                    if (sp1A8 != 0) {
                                        var_s1_4 = 2;
                                    }
                                    temp_s2_3 = var_a3_5;
                                    temp_s4_3 = temp_s2_3 & 1;
                                    if (var_s1_4 > 0) {
                                        temp_s7_3 = temp_s2_3 + 1;
                                        var_a1_14 = 0;
                                        temp_t1_10 = sp128 - sp130;
                                        temp_s5_3 = temp_t1_10 < temp_t8_2;
loop_438:
                                        var_a3_5 = temp_s2_3;
                                        var_v0_5 = temp_t8_2;
                                        var_at_18 = temp_t1_10;
                                        if (sp1A8 != 0) {
                                            var_s6->unk77C = 0;
                                            var_s6->unk77C = 0;
                                            var_s6->unk77C = 0;
                                            var_s6->unk77C = 0;
                                            var_s6->unk77C = 0;
                                            var_s6->unk77C = 0;
                                            var_s6->unk7A8 = 0;
                                            if (var_a1_14 != 0) {
                                                var_t3_3 = sp188->unk44;
                                            } else {
                                                var_t3_3 = sp188->unk40;
                                            }
                                            temp_v1_17 = (*(sp198->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                                            var_a4_3 = 1;
                                            if (temp_v1_17 != 0xD) {
                                                var_a4_3 = 1;
                                                if (temp_v1_17 != 0xE) {
                                                    if (temp_v1_17 != 0xC) {
                                                        var_s6->unk52C = (s32) (temp_v1_17 | 0x1000);
                                                        var_s6->unk4D4 = 0;
                                                        var_a0_5 = sp188->unk4C;
                                                        var_a4_3 = sp188->unk15 * 8;
                                                    } else {
                                                        var_s6->unk52C = 0x1008;
                                                        var_a0_5 = 0;
                                                        var_s6->unk4D4 = (s32) (sp188->unk4C & 0xF);
                                                    }
                                                } else {
                                                    var_s6->unk52C = 0x100B;
                                                    var_a4_3 = 9;
                                                    var_a0_5 = 0;
                                                    var_s6->unk4D4 = (s32) (sp188->unk4C & 0xC);
                                                }
                                            } else {
                                                var_s6->unk52C = 0x100B;
                                                var_a0_5 = 0;
                                                var_s6->unk4D4 = (s32) (sp188->unk4C & 3);
                                            }
                                            var_s6->unk530 = var_t3_3;
                                            var_s6->unk77C = (s32) (var_a0_5 & 0xFFFFFF);
                                            var_s6->unk77C = (s32) sp188->unk48;
                                            var_s6->unk77C = var_a4_3;
                                            var_s6->unk4CC = 0;
                                        }
                                        var_v1_7 = temp_t8_2;
                                        if (var_a1_14 != temp_s4_3) {
                                            if (temp_s5_3 != 0) {
                                                var_v1_7 = temp_t1_10;
                                            }
                                            var_v0_5 = temp_t8_2 - var_v1_7;
                                            if (var_v0_5 == 0) {
                                                var_a3_5 = temp_s7_3;
                                                if (sp1F0->unkA == temp_s7_3) {
                                                    var_a3_5 = 0;
                                                }
                                                var_v0_5 = (s64) *(var_a3_5 + sp190);
                                            }
                                            var_at_18 = temp_t1_10 - var_v1_7;
                                            if (var_t9_2 != 0) {
                                                var_t2_2 -= var_v1_7;
                                            } else {
                                                var_a2_4 += var_v1_7;
                                            }
                                        }
                                        if (var_at_18 != 0) {
                                            var_a7 = var_at_18 < var_v0_5;
loop_459:
                                            var_v1_8 = var_at_18;
                                            if (var_a7 != 0) {
                                                var_t0_2 = -var_at_18;
                                                if (var_t9_2 == 0) {
                                                    goto block_461;
                                                }
                                                goto block_463;
                                            }
                                            var_v1_8 = var_v0_5;
                                            var_t0_2 = -var_at_18;
                                            if (var_t9_2 != 0) {
block_463:
                                                var_s6->unk77C = (s32) var_t2_2;
                                                var_t2_2 -= var_v1_8;
                                                var_s6->unk77C = (s32) temp_ra;
                                                var_s6->unk77C = 0x3E8;
                                                var_s6->unk77C = (s32) var_t0_2;
                                                var_s6->unk77C = 0;
                                            } else {
block_461:
                                                var_s6->unk77C = (s32) var_a2_4;
                                                var_a2_4 += var_v1_8;
                                                var_s6->unk77C = (s32) temp_ra;
                                                var_s6->unk77C = 0x3E8;
                                                var_s6->unk77C = (s32) var_at_18;
                                                var_s6->unk77C = 0;
                                            }
                                            var_s6->unk77C = (s32) var_v1_8;
                                            var_v0_8 = var_v0_5 - var_v1_8;
                                            temp_at_9 = var_at_18 - var_v1_8;
                                            if (var_v0_8 == 0) {
                                                var_a3_5 += 1;
                                                if (sp1F0->unkA == var_a3_5) {
                                                    var_a3_5 = 0;
                                                }
                                                var_v0_8 = (s32) *(var_a3_5 + sp190);
                                            }
                                            var_v1_9 = temp_at_9;
                                            if (temp_at_9 < var_v0_8) {

                                            } else {
                                                var_v1_9 = var_v0_8;
                                            }
                                            var_v0_5 = var_v0_8 - var_v1_9;
                                            if (var_v0_5 == 0) {
                                                var_a3_5 += 1;
                                                if (sp1F0->unkA == var_a3_5) {
                                                    var_a3_5 = 0;
                                                }
                                                var_v0_5 = (s64) *(var_a3_5 + sp190);
                                            }
                                            var_at_18 = temp_at_9 - var_v1_9;
                                            if (var_t9_2 != 0) {
                                                var_t2_2 -= var_v1_9;
                                            } else {
                                                var_a2_4 += var_v1_9;
                                            }
                                            var_a7 = var_at_18 < var_v0_5;
                                            if (var_at_18 != 0) {
                                                goto loop_459;
                                            }
                                        }
                                        var_a1_14 += 1;
                                        var_a2_4 = sp130;
                                        var_t2_2 = sp128;
                                        if (var_a1_14 != var_s1_4) {
                                            goto loop_438;
                                        }
                                    }
                                    var_a2_4 = sp98;
                                    var_t2_2 = spA0;
                                }
                                var_a5_5 = sp160 - 1;
                                sp1D8 += 8;
block_385:
                                sp160 = var_a5_5;
                                if ((sp160 != 0) && (sp1D8->unk2 == spB8)) {
                                    goto loop_387;
                                }
                            }
                        }
                    }
                }
            }
            var_v0_9 = *(sp150 + sp190);
            temp_v1_18 = var_t2_2 - var_a2_4;
            temp_at_10 = var_v0_9 - sp168;
            temp_a1_3 = var_v0_9 - temp_at_10;
            temp_ra_3 = sp1F0->unkA;
            if (temp_v1_18 < temp_a1_3) {
                var_at_19 = temp_at_10 + temp_v1_18;
            } else {
                var_t8_3 = sp150 + 1;
                var_t3_4 = temp_v1_18 - temp_a1_3;
                if (var_t8_3 == temp_ra_3) {
                    var_t8_3 = 0;
                }
                var_a3_8 = 0;
                if ((s32) temp_ra_3 > 0) {
                    var_v1_10 = temp_ra_3 & 3;
                    var_at_20 = sp190;
                    if (var_v1_10 != 0) {
                        do {
                            var_at_20 += 1;
                            var_v1_10 -= 1;
                            var_a3_8 += var_at_20->unk-1;
                        } while (var_v1_10 != 0);
                    }
                    temp_v1_19 = (s32) temp_ra_3 >> 2;
                    var_a2_7 = var_at_20;
                    if (temp_v1_19 != 0) {
                        if (temp_v1_19 >= 2) {
                            var_a0_6 = var_a2_7->unk2;
                            temp_a5_6 = (temp_ra_3 + sp190) - 4;
                            var_at_21 = var_a2_7->unk0 + var_a3_8;
                            var_a1_15 = var_a2_7->unk1;
loop_100:
                            temp_v1_20 = var_a2_7->unk5;
                            temp_v0_15 = var_a2_7->unk6;
                            var_at_21 = var_a2_7->unk4 + (var_a2_7->unk3 + (var_a0_6 + (var_a1_15 + var_at_21)));
                            if (var_a2_7 != (temp_a5_6 - 4)) {
                                temp_v1_21 = var_a2_7->unk9;
                                temp_v0_16 = var_a2_7->unkA;
                                var_at_21 = var_a2_7->unk8 + (var_a2_7->unk7 + (temp_v0_15 + (temp_v1_20 + var_at_21)));
                                if (var_a2_7 != (temp_a5_6 - 8)) {
                                    temp_v0_17 = var_a2_7->unkC;
                                    var_a1_15 = var_a2_7->unkD;
                                    var_a0_6 = var_a2_7->unkE;
                                    temp_at_11 = var_a2_7->unkB + (temp_v0_16 + (temp_v1_21 + var_at_21));
                                    var_a2_7 += 0xC;
                                    var_at_21 = temp_v0_17 + temp_at_11;
                                    if (var_a2_7 == temp_a5_6) {
                                        var_t1_5 = var_a2_7;
                                    } else {
                                        goto loop_100;
                                    }
                                } else {
                                    var_a0_6 = temp_v0_16;
                                    var_a1_15 = temp_v1_21;
                                    var_t1_5 = var_a2_7 + 8;
                                }
                            } else {
                                var_a0_6 = temp_v0_15;
                                var_a1_15 = temp_v1_20;
                                var_t1_5 = var_a2_7 + 4;
                            }
                            var_a3_8 = var_t1_5->unk3 + (var_a0_6 + (var_a1_15 + var_at_21));
                        } else {
                            var_a3_8 = var_a2_7->unk3 + (var_a2_7->unk2 + (var_a2_7->unk1 + (var_a2_7->unk0 + var_a3_8)));
                        }
                    }
                }
                if (var_t3_4 >= var_a3_8) {
                    M2C_TRAP_IF(var_a3_8 == 0);
                    var_t3_4 = var_t3_4 % var_a3_8;
                }
                var_at_22 = var_t8_3 + sp190;
                var_v1_11 = *var_at_22;
                if (var_t3_4 >= (s32) var_v1_11) {
loop_292:
                    var_t8_3 += 1;
                    var_at_22 += 1;
                    var_t3_4 -= var_v1_11;
                    if (var_at_22 == (temp_ra_3 + sp190)) {
                        var_t8_3 = 0;
                        var_at_22 = (u8 *) sp190;
                    }
                    var_v1_11 = *var_at_22;
                    if (var_t3_4 >= (s32) var_v1_11) {
                        goto loop_292;
                    }
                }
                sp150 = var_t8_3;
                sp40 = (s32) var_t8_3;
                var_at_19 = var_t3_4;
                var_v0_9 = var_v1_11;
            }
            var_a5_4 = var_v0_9 - var_at_19;
block_11:
            sp168 = var_a5_4;
        } else {
            temp_s1_3 = sp170 - temp_t8;
            var_v1_12 = 0;
            if (temp_s1_3 < 0) {
                var_v1_12 = 4;
            }
            temp_s2_4 = sp178 - temp_ra;
            if (temp_s2_4 < 0) {
                var_v1_12 |= 2;
            }
            if (temp_s1_3 > 0) {
                sp100 = temp_s1_3;
                if (temp_s2_4 > 0) {
                    goto block_48;
                }
                goto block_316;
            }
            sp100 = temp_t8 - sp170;
            if (temp_s2_4 <= 0) {
block_316:
                sp110 = temp_ra - sp178;
            } else {
block_48:
                sp110 = temp_s2_4;
            }
            temp_v0_18 = sp100 * 2;
            temp_at_12 = sp110 * 2;
            if (sp110 < sp100) {
                var_s4_2 = 0;
                var_s5 = temp_at_12;
                spC0 = temp_at_12 - temp_v0_18;
                sp158 = -sp100;
            } else {
                var_v1_12 |= 1;
                var_s5 = temp_v0_18;
                var_s4_2 = 1;
                spC0 = temp_v0_18 - temp_at_12;
                sp158 = -sp110;
            }
            sp180 = 0;
            if (sp160 != 0) {
                sp1E8 = (s64) var_s6;
                sp1D0 = temp_t8;
                sp1B0 = temp_ra;
                spE0 = var_v1_12;
                sp1F8 = var_s5 - spC0;
                spE8 = sp150 + 1;
loop_64:
                sp1C0 = 0;
                sp1E8 = (s64) var_s6;
                temp_a0_3 = sp1D8->unk0;
                var_a5_6 = 8;
                sp1B8 = 0;
                if (sp1D0 < temp_a0_3) {
                    var_s6 = (void *) sp1E8;
                    goto block_66;
                }
                var_s6 = (void *) sp1E8;
                if (sp1D0 >= sp1D8->unk4) {
                    var_a5_6 = 4;
block_66:
                    sp1C0 = var_a5_6;
                }
                temp_a1_4 = sp1D8->unk2;
                if (sp1B0 < temp_a1_4) {
                    sp1C0 |= 2;
                } else if (sp1B0 >= sp1D8->unk6) {
                    sp1C0 |= 1;
                }
                if (sp170 < temp_a0_3) {
                    sp1B8 = 8;
                } else if (sp170 >= sp1D8->unk4) {
                    sp1B8 = 4;
                }
                if (sp178 < temp_a1_4) {
                    sp1B8 |= 2;
                } else if (sp178 >= sp1D8->unk6) {
                    sp1B8 |= 1;
                }
                temp_a6_2 = sp1B8 | sp1C0;
                sp148 = temp_a6_2;
                if (temp_a6_2 != 0) {
                    if (sp1B8 & sp1C0) {
                        goto block_62;
                    }
                    sp6C = 0;
                    sp68 = 0;
                    sp64 = (s32) sp178;
                    sp60 = (s32) sp170;
                    sp5C = (s32) sp1B0;
                    sp58 = (s32) sp1D0;
                    sp3C = (s32) sp1B8;
                    sp2C = 0;
                    sp24 = (s32) spE0;
                    sp1C = &sp6C;
                    sp14 = &sp68;
                    spC = (s32) sp110;
                    sp4 = (s32) sp100;
                    sp34 = (s32) sp1C0;
                    var_ra_3 = 0;
                    if (miZeroClipLine(temp_a0_3, temp_a1_4, sp1D8->unk4 - 1, sp1D8->unk6 - 1, &sp58, &sp5C, &sp60, &sp64) != -1) {
                        if (var_s4_2 != 0) {
                            temp_v0_19 = sp64 - sp5C;
                            var_at_23 = temp_v0_19;
                            if (temp_v0_19 <= 0) {
                                var_at_23 = sp5C - sp64;
                            }
                        } else {
                            temp_v0_20 = sp60 - sp58;
                            var_at_23 = temp_v0_20;
                            if (temp_v0_20 <= 0) {
                                var_at_23 = sp58 - sp60;
                            }
                        }
                        sp1C8 = var_at_23;
                        temp_a7_4 = (sp6C != 0) + sp1C8;
                        sp1C8 = temp_a7_4;
                        if (temp_a7_4 != 0) {
                            var_s8 = sp168;
                            var_a4_4 = sp150;
                            if (sp68 != 0) {
                                temp_at_13 = sp58 - sp1D0;
                                var_a3_9 = temp_at_13;
                                if (temp_at_13 <= 0) {
                                    var_a3_9 = sp1D0 - sp58;
                                }
                                temp_at_14 = sp5C - sp1B0;
                                var_v1_13 = temp_at_14;
                                if (temp_at_14 <= 0) {
                                    var_v1_13 = sp1B0 - sp5C;
                                }
                                temp_at_15 = sp1F0->unkA;
                                if (var_s4_2 != 0) {
                                    var_a1_16 = *(var_a4_4 + sp190);
                                    temp_v0_21 = var_a1_16 - sp168;
                                    temp_t1_11 = var_a1_16 - temp_v0_21;
                                    sp1A0 = ((var_v1_13 - var_a3_9) * var_s5) + (var_a3_9 * spC0) + sp158;
                                    if (var_v1_13 < temp_t1_11) {
                                        var_v0_10 = var_v1_13 + temp_v0_21;
                                    } else {
                                        var_t3_5 = var_a4_4 + 1;
                                        var_t2_4 = var_v1_13 - temp_t1_11;
                                        if (var_t3_5 == temp_at_15) {
                                            var_t3_5 = 0;
                                        }
                                        var_a3_10 = 0;
                                        var_v1_14 = temp_at_15 & 3;
                                        if ((s32) temp_at_15 > 0) {
                                            var_at_24 = sp190;
                                            if (var_v1_14 != 0) {
                                                do {
                                                    var_at_24 += 1;
                                                    var_v1_14 -= 1;
                                                    var_a3_10 += var_at_24->unk-1;
                                                } while (var_v1_14 != 0);
                                            }
                                            temp_t1_12 = (s32) temp_at_15 >> 2;
                                            var_a2_8 = var_at_24;
                                            if (temp_t1_12 != 0) {
                                                if (temp_t1_12 >= 2) {
                                                    var_a0_7 = var_a2_8->unk2;
                                                    temp_a5_7 = (temp_at_15 + sp190) - 4;
                                                    var_at_25 = var_a2_8->unk0 + var_a3_10;
                                                    var_a1_17 = var_a2_8->unk1;
loop_117:
                                                    temp_v1_22 = var_a2_8->unk5;
                                                    temp_v0_22 = var_a2_8->unk6;
                                                    var_at_25 = var_a2_8->unk4 + (var_a2_8->unk3 + (var_a0_7 + (var_a1_17 + var_at_25)));
                                                    if (var_a2_8 != (temp_a5_7 - 4)) {
                                                        temp_v1_23 = var_a2_8->unk9;
                                                        temp_v0_23 = var_a2_8->unkA;
                                                        var_at_25 = var_a2_8->unk8 + (var_a2_8->unk7 + (temp_v0_22 + (temp_v1_22 + var_at_25)));
                                                        if (var_a2_8 != (temp_a5_7 - 8)) {
                                                            temp_v0_24 = var_a2_8->unkC;
                                                            var_a1_17 = var_a2_8->unkD;
                                                            var_a0_7 = var_a2_8->unkE;
                                                            temp_at_16 = var_a2_8->unkB + (temp_v0_23 + (temp_v1_23 + var_at_25));
                                                            var_a2_8 += 0xC;
                                                            var_at_25 = temp_v0_24 + temp_at_16;
                                                            if (var_a2_8 == temp_a5_7) {
                                                                var_t1_6 = var_a2_8;
                                                            } else {
                                                                goto loop_117;
                                                            }
                                                        } else {
                                                            var_a0_7 = temp_v0_23;
                                                            var_a1_17 = temp_v1_23;
                                                            var_t1_6 = var_a2_8 + 8;
                                                        }
                                                    } else {
                                                        var_a0_7 = temp_v0_22;
                                                        var_a1_17 = temp_v1_22;
                                                        var_t1_6 = var_a2_8 + 4;
                                                    }
                                                    var_a3_10 = var_t1_6->unk3 + (var_a0_7 + (var_a1_17 + var_at_25));
                                                } else {
                                                    var_a3_10 = var_a2_8->unk3 + (var_a2_8->unk2 + (var_a2_8->unk1 + (var_a2_8->unk0 + var_a3_10)));
                                                }
                                            }
                                        }
                                        if (var_t2_4 >= var_a3_10) {
                                            M2C_TRAP_IF(var_a3_10 == 0);
                                            var_t2_4 = var_t2_4 % var_a3_10;
                                        }
                                        var_v0_11 = var_t3_5 + sp190;
                                        var_at_26 = *var_v0_11;
                                        if (var_t2_4 >= (s32) var_at_26) {
loop_295:
                                            var_t3_5 += 1;
                                            var_v0_11 += 1;
                                            var_t2_4 -= var_at_26;
                                            if (var_v0_11 == (temp_at_15 + sp190)) {
                                                var_t3_5 = 0;
                                                var_v0_11 = (u8 *) sp190;
                                            }
                                            var_at_26 = *var_v0_11;
                                            if (var_t2_4 >= (s32) var_at_26) {
                                                goto loop_295;
                                            }
                                        }
                                        var_a4_4 = var_t3_5;
                                        var_v0_10 = var_t2_4;
                                        var_a1_16 = var_at_26;
                                    }
                                    var_s8 = var_a1_16 - var_v0_10;
                                } else {
                                    temp_a1_5 = *(sp150 + sp190);
                                    temp_v0_25 = temp_a1_5 - sp168;
                                    temp_a1_6 = temp_a1_5 - temp_v0_25;
                                    sp1A0 = ((var_a3_9 - var_v1_13) * var_s5) + (var_v1_13 * spC0) + sp158;
                                    if (var_a3_9 < temp_a1_6) {
                                        var_v0_12 = var_a3_9 + temp_v0_25;
                                    } else {
                                        var_t2_5 = var_a3_9 - temp_a1_6;
                                        var_t3_6 = spE8;
                                        if (spE8 == temp_at_15) {
                                            var_t3_6 = 0;
                                        }
                                        var_a3_11 = 0;
                                        var_a1_18 = temp_at_15 & 3;
                                        if ((s32) temp_at_15 > 0) {
                                            var_at_27 = sp190;
                                            if (var_a1_18 != 0) {
                                                do {
                                                    var_at_27 += 1;
                                                    var_a1_18 -= 1;
                                                    var_a3_11 += var_at_27->unk-1;
                                                } while (var_a1_18 != 0);
                                            }
                                            temp_t1_13 = (s32) temp_at_15 >> 2;
                                            var_a2_9 = var_at_27;
                                            if (temp_t1_13 != 0) {
                                                if (temp_t1_13 >= 2) {
                                                    var_a0_8 = var_a2_9->unk2;
                                                    temp_a5_8 = (temp_at_15 + sp190) - 4;
                                                    var_at_28 = var_a2_9->unk0 + var_a3_11;
                                                    var_a1_19 = var_a2_9->unk1;
loop_417:
                                                    temp_v1_24 = var_a2_9->unk5;
                                                    temp_v0_26 = var_a2_9->unk6;
                                                    var_at_28 = var_a2_9->unk4 + (var_a2_9->unk3 + (var_a0_8 + (var_a1_19 + var_at_28)));
                                                    if (var_a2_9 != (temp_a5_8 - 4)) {
                                                        temp_v1_25 = var_a2_9->unk9;
                                                        temp_v0_27 = var_a2_9->unkA;
                                                        var_at_28 = var_a2_9->unk8 + (var_a2_9->unk7 + (temp_v0_26 + (temp_v1_24 + var_at_28)));
                                                        if (var_a2_9 != (temp_a5_8 - 8)) {
                                                            temp_v0_28 = var_a2_9->unkC;
                                                            var_a1_19 = var_a2_9->unkD;
                                                            var_a0_8 = var_a2_9->unkE;
                                                            temp_at_17 = var_a2_9->unkB + (temp_v0_27 + (temp_v1_25 + var_at_28));
                                                            var_a2_9 += 0xC;
                                                            var_at_28 = temp_v0_28 + temp_at_17;
                                                            if (var_a2_9 == temp_a5_8) {
                                                                var_t1_7 = var_a2_9;
                                                            } else {
                                                                goto loop_417;
                                                            }
                                                        } else {
                                                            var_a0_8 = temp_v0_27;
                                                            var_a1_19 = temp_v1_25;
                                                            var_t1_7 = var_a2_9 + 8;
                                                        }
                                                    } else {
                                                        var_a0_8 = temp_v0_26;
                                                        var_a1_19 = temp_v1_24;
                                                        var_t1_7 = var_a2_9 + 4;
                                                    }
                                                    var_a3_11 = var_t1_7->unk3 + (var_a0_8 + (var_a1_19 + var_at_28));
                                                } else {
                                                    var_a3_11 = var_a2_9->unk3 + (var_a2_9->unk2 + (var_a2_9->unk1 + (var_a2_9->unk0 + var_a3_11)));
                                                }
                                            }
                                        }
                                        if (var_t2_5 >= var_a3_11) {
                                            M2C_TRAP_IF(var_a3_11 == 0);
                                            var_t2_5 = var_t2_5 % var_a3_11;
                                        }
                                        var_at_29 = var_t3_6 + sp190;
                                        var_v0_13 = *var_at_29;
                                        if (var_t2_5 >= (s32) var_v0_13) {
loop_501:
                                            var_t3_6 += 1;
                                            var_at_29 += 1;
                                            var_t2_5 -= var_v0_13;
                                            if (var_at_29 == (temp_at_15 + sp190)) {
                                                var_t3_6 = 0;
                                                var_at_29 = (u8 *) sp190;
                                            }
                                            var_v0_13 = *var_at_29;
                                            if (var_t2_5 >= (s32) var_v0_13) {
                                                goto loop_501;
                                            }
                                        }
                                        var_a4_4 = var_t3_6;
                                        var_v0_12 = var_t2_5;
                                    }
                                    var_s8 = *(var_a4_4 + sp190) - var_v0_12;
                                }
                            } else {
                                sp1A0 = sp158;
                            }
                            var_a2_10 = 1;
                            temp_s6 = sp1F0->unkC;
                            temp_s7_4 = *(sp1F0->unk4C + (nfbGCPrivateIndex * 4));
                            temp_at_18 = **(sp1F0->unk0->unk1B4 + (expScreenPrivateIndex * 4));
                            if (sp1A8 != 0) {
                                var_a2_10 = 2;
                            }
                            if (var_a2_10 > 0) {
                                sp210 = var_a4_4 + 1;
                                sp208 = sp1C8 < var_s8;
loop_133:
                                var_s3 = (s32) var_a4_4;
                                var_s0 = (s32) var_s8;
                                var_v0_14 = sp1A0;
                                var_t2_6 = sp58;
                                var_t1_8 = sp5C;
                                var_at_30 = sp1C8;
                                if (sp1A8 != 0) {
                                    temp_at_18->unk4077C = 0;
                                    temp_at_18->unk4077C = 0;
                                    temp_at_18->unk4077C = 0;
                                    temp_at_18->unk4077C = 0;
                                    temp_at_18->unk4077C = 0;
                                    temp_at_18->unk4077C = 0;
                                    temp_at_18->unk407A8 = 0;
                                    if (var_ra_3 != 0) {
                                        sp200 = (s64) temp_s7_4->unk44;
                                    } else {
                                        sp200 = (s64) temp_s7_4->unk40;
                                    }
                                    temp_v1_26 = (*(sp198->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                                    if (temp_v1_26 != 0xD) {
                                        if (temp_v1_26 == 0xE) {
                                            temp_at_18->unk4052C = 0x100B;
                                            var_t3_7 = 9;
                                            var_a3_12 = 0;
                                            temp_at_18->unk404D4 = (s32) (temp_s7_4->unk4C & 0xC);
                                        } else if (temp_v1_26 != 0xC) {
                                            temp_at_18->unk4052C = (s32) (temp_v1_26 | 0x1000);
                                            temp_at_18->unk404D4 = 0;
                                            var_a3_12 = temp_s7_4->unk4C;
                                            var_t3_7 = temp_s7_4->unk15 * 8;
                                        } else {
                                            temp_at_18->unk4052C = 0x1008;
                                            var_a3_12 = 0;
                                            var_t3_7 = 1;
                                            temp_at_18->unk404D4 = (s32) (temp_s7_4->unk4C & 0xF);
                                        }
                                    } else {
                                        temp_at_18->unk4052C = 0x100B;
                                        var_t3_7 = 1;
                                        var_a3_12 = 0;
                                        temp_at_18->unk404D4 = (s32) (temp_s7_4->unk4C & 3);
                                    }
                                    temp_at_18->unk40530 = (s32) sp200;
                                    temp_at_18->unk4077C = (s32) (var_a3_12 & 0xFFFFFF);
                                    temp_at_18->unk4077C = (s32) temp_s7_4->unk48;
                                    temp_at_18->unk4077C = var_t3_7;
                                    temp_at_18->unk404CC = 0;
                                }
                                var_a3_13 = 0;
                                var_v1_15 = sp1C8;
                                if (var_ra_3 != (var_a4_4 & 1)) {
                                    if (sp208 == 0) {
                                        var_v1_15 = var_s8;
                                    }
                                    var_s0 = var_s8 - var_v1_15;
                                    if (var_s0 == 0) {
                                        var_s3 = (s32) sp210;
                                        if (sp1F0->unkA == sp210) {
                                            var_s3 = 0;
                                        }
                                        var_s0 = (s32) temp_s6[var_s3];
                                    }
                                    var_at_30 = sp1C8 - var_v1_15;
                                    if (var_at_30 > 0) {
                                        var_v0_14 = (var_v1_15 * var_s5) + sp1A0;
                                        var_t1_8 = var_v1_15 + sp5C;
                                        if (var_v0_14 >= 0) {
                                            var_a3_13 = (var_v0_14 / sp1F8) + 1;
                                            M2C_TRAP_IF(sp1F8 == 0);
                                            var_v0_14 -= sp1F8 * var_a3_13;
                                            if (var_s4_2 != 0) {
                                                goto block_149;
                                            }
                                            goto block_193;
                                        }
                                        if (var_s4_2 == 0) {
block_193:
                                            var_t1_8 = sp5C - var_a3_13;
                                            var_t2_6 = var_v1_15 + sp58;
                                            if (temp_s1_3 > 0) {
                                                if (temp_s2_4 > 0) {
                                                    goto block_195;
                                                }
                                            } else {
                                                var_t2_6 = sp58 - var_v1_15;
                                                if (temp_s2_4 <= 0) {

                                                } else {
block_195:
                                                    var_t1_8 = var_a3_13 + sp5C;
                                                }
                                            }
                                        } else {
block_149:
                                            var_t2_6 = sp58 - var_a3_13;
                                            if (temp_s2_4 > 0) {
                                                if (temp_s1_3 > 0) {
                                                    goto block_151;
                                                }
                                            } else {
                                                var_t1_8 = sp5C - var_v1_15;
                                                if (temp_s1_3 <= 0) {

                                                } else {
block_151:
                                                    var_t2_6 = var_a3_13 + sp58;
                                                }
                                            }
                                        }
                                    }
                                }
                                if (var_at_30 != 0) {
                                    var_v1_16 = var_s0;
loop_164:
                                    if (var_at_30 < var_s0) {
                                        var_v1_16 = (s32) var_at_30;
                                    }
                                    var_s0_2 = var_s0 - var_v1_16;
                                    temp_at_18->unk4077C = var_t2_6;
                                    temp_at_18->unk4077C = var_t1_8;
                                    temp_at_18->unk4077C = (s32) -var_v0_14;
                                    temp_at_18->unk4077C = (s32) temp_s1_3;
                                    temp_at_18->unk4077C = (s32) temp_s2_4;
                                    temp_at_18->unk4077C = var_v1_16;
                                    if (var_s0_2 == 0) {
                                        var_s3 += 1;
                                        var_s0_3 = &temp_s6[var_s3];
                                        if (sp1F0->unkA == var_s3) {
                                            var_s3 = 0;
                                            var_s0_3 = temp_s6;
                                        }
                                        var_s0_2 = (s32) *var_s0_3;
                                    }
                                    temp_at_19 = var_at_30 - var_v1_16;
                                    var_a3_14 = temp_at_19;
                                    if (temp_at_19 < var_s0_2) {

                                    } else {
                                        var_a3_14 = var_s0_2;
                                    }
                                    var_s0 = var_s0_2 - var_a3_14;
                                    if (var_s0 == 0) {
                                        var_s3 += 1;
                                        var_s0_4 = &temp_s6[var_s3];
                                        if (sp1F0->unkA == var_s3) {
                                            var_s3 = 0;
                                            var_s0_4 = temp_s6;
                                        }
                                        var_s0 = (s32) *var_s0_4;
                                    }
                                    var_at_30 = temp_at_19 - var_a3_14;
                                    temp_t3_2 = var_v1_16 + var_a3_14;
                                    if (var_at_30 > 0) {
                                        var_v0_14 += temp_t3_2 * var_s5;
                                        var_v1_17 = 0;
                                        if (var_v0_14 >= 0) {
                                            var_v1_17 = (var_v0_14 / sp1F8) + 1;
                                            M2C_TRAP_IF(sp1F8 == 0);
                                            var_v0_14 -= sp1F8 * var_v1_17;
                                        }
                                        if (var_s4_2 != 0) {
                                            if (temp_s2_4 > 0) {
                                                var_t1_8 += temp_t3_2;
                                                if (temp_s1_3 > 0) {
                                                    goto block_162;
                                                }
                                                goto block_170;
                                            }
                                            var_t1_8 -= temp_t3_2;
                                            if (temp_s1_3 <= 0) {
block_170:
                                                var_t2_6 -= var_v1_17;
                                            } else {
block_162:
                                                var_t2_6 += var_v1_17;
                                            }
                                        } else {
                                            if (temp_s1_3 > 0) {
                                                var_t2_6 += temp_t3_2;
                                                if (temp_s2_4 > 0) {
                                                    goto block_179;
                                                }
                                                goto block_181;
                                            }
                                            var_t2_6 -= temp_t3_2;
                                            if (temp_s2_4 <= 0) {
block_181:
                                                var_t1_8 -= var_v1_17;
                                            } else {
block_179:
                                                var_t1_8 += var_v1_17;
                                            }
                                        }
                                    }
                                    var_v1_16 = var_s0;
                                    if (var_at_30 != 0) {
                                        goto loop_164;
                                    }
                                }
                                var_ra_3 += 1;
                                if (var_ra_3 != var_a2_10) {
                                    goto loop_133;
                                }
                            }
                        }
                        var_s6 = (void *) sp1E8;
block_62:
                        var_s7 = sp1D8 + 8;
                    } else {
                        var_s7 = sp1D8 + 8;
                    }
                    sp1D8 = var_s7;
                    temp_a6_3 = sp180 + 1;
                    sp180 = temp_a6_3;
                    if (temp_a6_3 != sp160) {
                        goto loop_64;
                    }
                } else {
                    var_a0_9 = sp110;
                    if (var_s4_2 == 0) {
                        var_a0_9 = sp100;
                    }
                    var_a4_5 = 1;
                    temp_s7_5 = sp1F0->unkC;
                    temp_s8 = *(sp1F0->unk4C + (nfbGCPrivateIndex * 4));
                    temp_a1_7 = **(sp1F0->unk0->unk1B4 + (expScreenPrivateIndex * 4));
                    if (sp1A8 != 0) {
                        var_a4_5 = 2;
                    }
                    if (var_a4_5 > 0) {
                        var_ra_4 = 0;
loop_212:
                        var_s3 = (s32) sp150;
                        var_s0 = (s32) sp168;
                        var_v0_15 = sp158;
                        var_t1_9 = sp1D0;
                        var_t2_7 = sp1B0;
                        var_at_31 = var_a0_9;
                        if (sp1A8 != 0) {
                            temp_a1_7->unk4077C = 0;
                            temp_a1_7->unk4077C = 0;
                            temp_a1_7->unk4077C = 0;
                            temp_a1_7->unk4077C = 0;
                            temp_a1_7->unk4077C = 0;
                            temp_a1_7->unk4077C = 0;
                            temp_a1_7->unk407A8 = 0;
                            if (var_ra_4 != 0) {
                                var_a3_15 = temp_s8->unk44;
                            } else {
                                var_a3_15 = temp_s8->unk40;
                            }
                            temp_v1_27 = (*(sp198->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                            switch (temp_v1_27) {   /* switch 1; irregular */
                            default:                /* switch 1 */
                                temp_a1_7->unk4052C = (s32) (temp_v1_27 | 0x1000);
                                temp_a1_7->unk404D4 = 0;
                                var_t3_8 = temp_s8->unk4C;
                                temp_a7_5 = temp_s8->unk15 * 8;
                                sp1E0 = temp_a7_5;
                                var_v1_18 = temp_a7_5;
                                break;
                            case 13:                /* switch 1 */
                                temp_a1_7->unk4052C = 0x100B;
                                var_v1_18 = 1;
                                var_t3_8 = 0;
                                temp_a1_7->unk404D4 = (s32) (temp_s8->unk4C & 3);
                                break;
                            case 12:                /* switch 1 */
                                temp_a1_7->unk4052C = 0x1008;
                                var_v1_18 = 1;
                                var_t3_8 = 0;
                                temp_a1_7->unk404D4 = (s32) (temp_s8->unk4C & 0xF);
                                break;
                            case 14:                /* switch 1 */
                                temp_a1_7->unk4052C = 0x100B;
                                var_v1_18 = 9;
                                var_t3_8 = 0;
                                temp_a1_7->unk404D4 = (s32) (temp_s8->unk4C & 0xC);
                                break;
                            }
                            temp_a1_7->unk40530 = var_a3_15;
                            temp_a1_7->unk4077C = (s32) (var_t3_8 & 0xFFFFFF);
                            temp_a1_7->unk4077C = (s32) temp_s8->unk48;
                            temp_a1_7->unk4077C = (s32) var_v1_18;
                            temp_a1_7->unk404CC = 0;
                        }
                        var_v1_19 = sp168;
                        if (var_ra_4 != (sp150 & 1)) {
                            if (var_a0_9 < sp168) {
                                var_v1_19 = var_a0_9;
                            }
                            var_s0 = sp168 - var_v1_19;
                            var_at_31 = var_a0_9 - var_v1_19;
                            if (var_s0 == 0) {
                                var_s3 = (s32) spE8;
                                if (sp1F0->unkA == spE8) {
                                    var_s3 = 0;
                                }
                                var_s0 = (s32) temp_s7_5[var_s3];
                            }
                            if (var_at_31 > 0) {
                                var_v0_15 = (var_v1_19 * var_s5) + sp158;
                                if (var_v0_15 >= 0) {
                                    var_a3_16 = (var_v0_15 / sp1F8) + 1;
                                    M2C_TRAP_IF(sp1F8 == 0);
                                    var_v0_15 -= sp1F8 * var_a3_16;
                                    if (var_s4_2 != 0) {
                                        goto block_227;
                                    }
                                    goto block_272;
                                }
                                var_a3_16 = 0;
                                if (var_s4_2 == 0) {
block_272:
                                    if (temp_s1_3 > 0) {
                                        var_t1_9 = var_v1_19 + sp1D0;
                                        if (temp_s2_4 > 0) {
                                            goto block_274;
                                        }
                                        goto block_276;
                                    }
                                    var_t1_9 = sp1D0 - var_v1_19;
                                    if (temp_s2_4 <= 0) {
block_276:
                                        var_t2_7 = sp1B0 - var_a3_16;
                                    } else {
block_274:
                                        var_t2_7 = sp1B0 + var_a3_16;
                                    }
                                } else {
block_227:
                                    var_t2_7 = var_v1_19 + sp1B0;
                                    if (temp_s2_4 > 0) {
                                        if (temp_s1_3 > 0) {
                                            goto block_231;
                                        }
                                        goto block_265;
                                    }
                                    var_t2_7 = sp1B0 - var_v1_19;
                                    if (temp_s1_3 <= 0) {
block_265:
                                        var_t1_9 = sp1D0 - var_a3_16;
                                    } else {
block_231:
                                        var_t1_9 = sp1D0 + var_a3_16;
                                    }
                                }
                            }
                        }
                        if (var_at_31 != 0) {
                            var_a3_17 = var_s0;
loop_243:
                            if (var_at_31 < var_s0) {
                                var_a3_17 = (s32) var_at_31;
                            }
                            temp_at_20 = var_at_31 - var_a3_17;
                            var_s0_5 = var_s0 - var_a3_17;
                            temp_a1_7->unk4077C = (s32) var_t1_9;
                            temp_a1_7->unk4077C = (s32) var_t2_7;
                            temp_a1_7->unk4077C = (s32) -var_v0_15;
                            temp_a1_7->unk4077C = (s32) temp_s1_3;
                            temp_a1_7->unk4077C = (s32) temp_s2_4;
                            temp_a1_7->unk4077C = var_a3_17;
                            if (var_s0_5 == 0) {
                                var_s3 += 1;
                                var_s0_6 = &temp_s7_5[var_s3];
                                if (sp1F0->unkA == var_s3) {
                                    var_s3 = 0;
                                    var_s0_6 = temp_s7_5;
                                }
                                var_s0_5 = (s32) *var_s0_6;
                            }
                            var_v1_20 = temp_at_20;
                            if (temp_at_20 < var_s0_5) {

                            } else {
                                var_v1_20 = var_s0_5;
                            }
                            var_s0 = var_s0_5 - var_v1_20;
                            if (var_s0 == 0) {
                                var_s3 += 1;
                                var_s0_7 = &temp_s7_5[var_s3];
                                if (sp1F0->unkA == var_s3) {
                                    var_s3 = 0;
                                    var_s0_7 = temp_s7_5;
                                }
                                var_s0 = (s32) *var_s0_7;
                            }
                            var_at_31 = temp_at_20 - var_v1_20;
                            temp_t3_3 = var_a3_17 + var_v1_20;
                            if (var_at_31 > 0) {
                                var_v0_15 += temp_t3_3 * var_s5;
                                var_v1_21 = 0;
                                if (var_v0_15 >= 0) {
                                    var_v1_21 = (var_v0_15 / sp1F8) + 1;
                                    M2C_TRAP_IF(sp1F8 == 0);
                                    var_v0_15 -= sp1F8 * var_v1_21;
                                    if (var_s4_2 != 0) {
                                        goto block_239;
                                    }
                                    goto block_257;
                                }
                                if (var_s4_2 == 0) {
block_257:
                                    if (temp_s1_3 > 0) {
                                        var_t1_9 += temp_t3_3;
                                        if (temp_s2_4 > 0) {
                                            goto block_259;
                                        }
                                        goto block_261;
                                    }
                                    var_t1_9 -= temp_t3_3;
                                    if (temp_s2_4 <= 0) {
block_261:
                                        var_t2_7 -= var_v1_21;
                                    } else {
block_259:
                                        var_t2_7 += var_v1_21;
                                    }
                                } else {
block_239:
                                    if (temp_s2_4 > 0) {
                                        var_t2_7 += temp_t3_3;
                                        if (temp_s1_3 > 0) {
                                            goto block_241;
                                        }
                                        goto block_249;
                                    }
                                    var_t2_7 -= temp_t3_3;
                                    if (temp_s1_3 <= 0) {
block_249:
                                        var_t1_9 -= var_v1_21;
                                    } else {
block_241:
                                        var_t1_9 += var_v1_21;
                                    }
                                }
                            }
                            var_a3_17 = var_s0;
                            if (var_at_31 != 0) {
                                goto loop_243;
                            }
                        }
                        var_ra_4 += 1;
                        if (var_ra_4 != var_a4_5) {
                            goto loop_212;
                        }
                    }
                    sp168 = (s64) var_s0;
                    sp150 = (s64) var_s3;
                    sp40 = var_s3;
                }
            } else {
                sp148 = sp1B8 | sp1C0;
            }
            if (sp148 != 0) {
                var_v0_16 = *(sp150 + sp190);
                temp_at_21 = sp1F0->unkA;
                temp_v1_28 = var_v0_16 - sp168;
                temp_a1_8 = var_v0_16 - temp_v1_28;
                if (var_s4_2 != 0) {
                    if (sp110 < temp_a1_8) {
                        var_a6_2 = sp110;
                        goto block_209;
                    }
                    var_t8_4 = sp150 + 1;
                    var_t3_9 = sp110 - temp_a1_8;
                    if (var_t8_4 == temp_at_21) {
                        var_t8_4 = 0;
                    }
                    var_a3_18 = 0;
                    if ((s32) temp_at_21 > 0) {
                        var_a1_20 = temp_at_21 & 3;
                        var_at_32 = sp190;
                        if (var_a1_20 != 0) {
                            do {
                                var_at_32 += 1;
                                var_a1_20 -= 1;
                                var_a3_18 += var_at_32->unk-1;
                            } while (var_a1_20 != 0);
                        }
                        temp_a1_9 = (s32) temp_at_21 >> 2;
                        var_a2_11 = var_at_32;
                        if (temp_a1_9 != 0) {
                            if (temp_a1_9 >= 2) {
                                var_a0_10 = var_a2_11->unk2;
                                var_a1_21 = var_a2_11->unk1;
                                temp_a5_9 = (temp_at_21 + sp190) - 4;
                                var_at_33 = var_a2_11->unk0 + var_a3_18;
loop_305:
                                temp_v1_29 = var_a2_11->unk5;
                                temp_v0_29 = var_a2_11->unk6;
                                var_at_33 = var_a2_11->unk4 + (var_a2_11->unk3 + (var_a0_10 + (var_a1_21 + var_at_33)));
                                if (var_a2_11 != (temp_a5_9 - 4)) {
                                    temp_v1_30 = var_a2_11->unk9;
                                    temp_v0_30 = var_a2_11->unkA;
                                    var_at_33 = var_a2_11->unk8 + (var_a2_11->unk7 + (temp_v0_29 + (temp_v1_29 + var_at_33)));
                                    if (var_a2_11 != (temp_a5_9 - 8)) {
                                        temp_v0_31 = var_a2_11->unkC;
                                        var_a1_21 = var_a2_11->unkD;
                                        var_a0_10 = var_a2_11->unkE;
                                        temp_at_22 = var_a2_11->unkB + (temp_v0_30 + (temp_v1_30 + var_at_33));
                                        var_a2_11 += 0xC;
                                        var_at_33 = temp_v0_31 + temp_at_22;
                                        if (var_a2_11 == temp_a5_9) {
                                            var_t1_10 = var_a2_11;
                                        } else {
                                            goto loop_305;
                                        }
                                    } else {
                                        var_a0_10 = temp_v0_30;
                                        var_a1_21 = temp_v1_30;
                                        var_t1_10 = var_a2_11 + 8;
                                    }
                                } else {
                                    var_a0_10 = temp_v0_29;
                                    var_a1_21 = temp_v1_29;
                                    var_t1_10 = var_a2_11 + 4;
                                }
                                var_a3_18 = var_t1_10->unk3 + (var_a0_10 + (var_a1_21 + var_at_33));
                            } else {
                                var_a3_18 = var_a2_11->unk3 + (var_a2_11->unk2 + (var_a2_11->unk1 + (var_a2_11->unk0 + var_a3_18)));
                            }
                        }
                    }
                    if (var_t3_9 >= var_a3_18) {
                        M2C_TRAP_IF(var_a3_18 == 0);
                        var_t3_9 = var_t3_9 % var_a3_18;
                    }
                    var_v0_17 = var_t8_4 + sp190;
                    var_at_34 = *var_v0_17;
                    if (var_t3_9 >= (s32) var_at_34) {
loop_320:
                        var_t8_4 += 1;
                        var_v0_17 += 1;
                        var_t3_9 -= var_at_34;
                        if (var_v0_17 == (temp_at_21 + sp190)) {
                            var_t8_4 = 0;
                            var_v0_17 = (u8 *) sp190;
                        }
                        var_at_34 = *var_v0_17;
                        if (var_t3_9 >= (s32) var_at_34) {
                            goto loop_320;
                        }
                    }
                    sp150 = var_t8_4;
                    sp40 = (s32) var_t8_4;
                    var_v1_22 = var_t3_9;
                    var_v0_16 = var_at_34;
                } else if (sp100 < temp_a1_8) {
                    var_a6_2 = sp100;
block_209:
                    var_v1_22 = var_a6_2 + temp_v1_28;
                } else {
                    var_t3_10 = sp150 + 1;
                    var_t2_8 = sp100 - temp_a1_8;
                    if (var_t3_10 == temp_at_21) {
                        var_t3_10 = 0;
                    }
                    var_a3_19 = 0;
                    if ((s32) temp_at_21 > 0) {
                        var_a1_22 = temp_at_21 & 3;
                        var_at_35 = sp190;
                        if (var_a1_22 != 0) {
                            do {
                                var_at_35 += 1;
                                var_a1_22 -= 1;
                                var_a3_19 += var_at_35->unk-1;
                            } while (var_a1_22 != 0);
                        }
                        temp_t1_14 = (s32) temp_at_21 >> 2;
                        var_a2_12 = var_at_35;
                        if (temp_t1_14 != 0) {
                            if (temp_t1_14 >= 2) {
                                var_a0_11 = var_a2_12->unk2;
                                temp_a5_10 = (temp_at_21 + sp190) - 4;
                                var_at_36 = var_a2_12->unk0 + var_a3_19;
                                var_a1_23 = var_a2_12->unk1;
loop_511:
                                temp_v1_31 = var_a2_12->unk5;
                                temp_v0_32 = var_a2_12->unk6;
                                var_at_36 = var_a2_12->unk4 + (var_a2_12->unk3 + (var_a0_11 + (var_a1_23 + var_at_36)));
                                if (var_a2_12 != (temp_a5_10 - 4)) {
                                    temp_v1_32 = var_a2_12->unk9;
                                    temp_v0_33 = var_a2_12->unkA;
                                    var_at_36 = var_a2_12->unk8 + (var_a2_12->unk7 + (temp_v0_32 + (temp_v1_31 + var_at_36)));
                                    if (var_a2_12 != (temp_a5_10 - 8)) {
                                        temp_v0_34 = var_a2_12->unkC;
                                        var_a1_23 = var_a2_12->unkD;
                                        var_a0_11 = var_a2_12->unkE;
                                        temp_at_23 = var_a2_12->unkB + (temp_v0_33 + (temp_v1_32 + var_at_36));
                                        var_a2_12 += 0xC;
                                        var_at_36 = temp_v0_34 + temp_at_23;
                                        if (var_a2_12 == temp_a5_10) {
                                            var_t1_11 = var_a2_12;
                                        } else {
                                            goto loop_511;
                                        }
                                    } else {
                                        var_a0_11 = temp_v0_33;
                                        var_a1_23 = temp_v1_32;
                                        var_t1_11 = var_a2_12 + 8;
                                    }
                                } else {
                                    var_a0_11 = temp_v0_32;
                                    var_a1_23 = temp_v1_31;
                                    var_t1_11 = var_a2_12 + 4;
                                }
                                var_a3_19 = var_t1_11->unk3 + (var_a0_11 + (var_a1_23 + var_at_36));
                            } else {
                                var_a3_19 = var_a2_12->unk3 + (var_a2_12->unk2 + (var_a2_12->unk1 + (var_a2_12->unk0 + var_a3_19)));
                            }
                        }
                    }
                    if (var_t2_8 >= var_a3_19) {
                        M2C_TRAP_IF(var_a3_19 == 0);
                        var_t2_8 = var_t2_8 % var_a3_19;
                    }
                    var_v0_18 = var_t3_10 + sp190;
                    var_at_37 = *var_v0_18;
                    if (var_t2_8 >= (s32) var_at_37) {
loop_537:
                        var_t3_10 += 1;
                        var_v0_18 += 1;
                        var_t2_8 -= var_at_37;
                        if (var_v0_18 == (temp_at_21 + sp190)) {
                            var_t3_10 = 0;
                            var_v0_18 = (u8 *) sp190;
                        }
                        var_at_37 = *var_v0_18;
                        if (var_t2_8 >= (s32) var_at_37) {
                            goto loop_537;
                        }
                    }
                    sp150 = var_t3_10;
                    sp40 = (s32) var_t3_10;
                    var_v1_22 = var_t2_8;
                    var_v0_16 = var_at_37;
                }
                sp168 = var_v0_16 - var_v1_22;
            }
        }
        temp_a6_4 = sp120 + 4;
        sp120 = temp_a6_4;
        sp118 += 1;
        if (temp_a6_4 != spC8) {
            goto loop_13;
        }
    } else {
        sp1E8 = (s64) var_s6;
        sp90 = (s64) arg4;
        sp118 = 0;
    }
    sp1E8 = (s64) var_s6;
    if ((((u32) (sp1F0->unk10 & 0x3FFFFFFF) >> 0x1C) != 0) && ((temp_a7_6 = (sp118 * 4) + sp90, sp120 = temp_a7_6, (*temp_a7_6 != sp90->unk0)) || (sp120->unk2 != sp90->unk2) || (sp118 == 1)) && ((temp_a2_2 = sp150 & 1, (temp_a2_2 == 0)) || (sp1A8 != 0)) && (sp108 != 0)) {
        var_at_38 = spD8;
loop_543:
        if ((sp170 >= var_at_38->unk0) && (sp178 >= var_at_38->unk2) && (sp170 < var_at_38->unk4)) {
            var_at_38 += 8;
            if (sp178 < var_at_38->unk6) {
                sp1E8->unk77C = 0;
                sp1E8->unk77C = 0;
                sp1E8->unk77C = 0;
                sp1E8->unk77C = 0;
                sp1E8->unk77C = 0;
                sp1E8->unk77C = 0;
                sp1E8->unk7A8 = 0;
                if (temp_a2_2 != 0) {
                    var_a1_24 = sp188->unk44;
                } else {
                    var_a1_24 = sp188->unk40;
                }
                temp_v1_33 = (*(sp198->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                switch (temp_v1_33) {               /* switch 2; irregular */
                default:                            /* switch 2 */
                    sp1E8->unk52C = (s32) (temp_v1_33 | 0x1000);
                    sp1E8->unk4D4 = 0;
                    var_v0_19 = sp188->unk4C;
                    var_at_39 = sp188->unk15 * 8;
                    break;
                case 12:                            /* switch 2 */
                    sp1E8->unk52C = 0x1008;
                    var_at_39 = 1;
                    var_v0_19 = 0;
                    sp1E8->unk4D4 = (s32) (sp188->unk4C & 0xF);
                    break;
                case 13:                            /* switch 2 */
                    sp1E8->unk52C = 0x100B;
                    var_v0_19 = 0;
                    var_at_39 = 1;
                    sp1E8->unk4D4 = (s32) (sp188->unk4C & 3);
                    break;
                case 14:                            /* switch 2 */
                    sp1E8->unk52C = 0x100B;
                    var_at_39 = 9;
                    var_v0_19 = 0;
                    sp1E8->unk4D4 = (s32) (sp188->unk4C & 0xC);
                    break;
                }
                sp1E8->unk530 = var_a1_24;
                sp1E8->unk77C = (s32) (var_v0_19 & 0xFFFFFF);
                sp1E8->unk77C = (s32) sp188->unk48;
                sp1E8->unk77C = var_at_39;
                sp1E8->unk4CC = 0;
                sp1E8->unk77C = (s32) sp170;
                sp1E8->unk77C = (s32) sp178;
                sp1E8->unk77C = 1;
                sp1E8->unk77C = 1;
                sp1E8->unk77C = 0;
                sp1E8->unk77C = 1;
                sp1E8->unk7A8 = 0;
                return;
            }
            goto block_542;
        }
        var_at_38 += 8;
block_542:
        if (var_at_38 != (spD8 + (sp108 * 8))) {
            goto loop_543;
        }
        /* Duplicate return node #554. Try simplifying control flow for better match */
        sp1E8->unk77C = 0;
        sp1E8->unk77C = 0;
        sp1E8->unk77C = 0;
        sp1E8->unk77C = 0;
        sp1E8->unk77C = 0;
        sp1E8->unk77C = 0;
        sp1E8->unk7A8 = 0;
        return;
    }
    sp1E8->unk77C = 0;
    sp1E8->unk77C = 0;
    sp1E8->unk77C = 0;
    sp1E8->unk77C = 0;
    sp1E8->unk77C = 0;
    sp1E8->unk77C = 0;
    sp1E8->unk7A8 = 0;
}

void expFastLineSD(void *arg0, s64 arg1, s64 arg2, s32 arg3, void *arg4) {
    s64 sp170;
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    u64 sp118;
    s64 sp110;
    s64 sp108;
    u64 sp100;
    s64 spF8;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp10;
    s16 temp_a5;
    s16 temp_a6_3;
    s16 temp_ra;
    s16 temp_s1;
    s16 temp_s1_2;
    s16 temp_t1;
    s16 temp_t2;
    s16 temp_t9;
    s16 temp_t9_2;
    s16 temp_v0;
    s16 temp_v0_3;
    s16 var_a2_2;
    s16 var_a3;
    s16 var_a7;
    s16 var_a7_5;
    s16 var_gp;
    s16 var_s2;
    s16 var_t1;
    s16 var_t3;
    s16 var_t9;
    s16 var_t9_2;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a5_2;
    s32 temp_a5_6;
    s32 temp_a5_7;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_5;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_a7_5;
    s32 temp_gp;
    s32 temp_s0;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_t0;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t3;
    s32 temp_v0_2;
    s32 temp_v0_7;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 temp_v1_9;
    s32 var_a2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_6;
    s32 var_a3_12;
    s32 var_a3_13;
    s32 var_a3_15;
    s32 var_a3_16;
    s32 var_a3_17;
    s32 var_a3_2;
    s32 var_a5;
    s32 var_a7_2;
    s32 var_a7_4;
    s32 var_a7_6;
    s32 var_s0;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s1_4;
    s32 var_s3;
    s32 var_s5_2;
    s32 var_s6;
    s32 var_s6_3;
    s32 var_s6_4;
    s32 var_s8;
    s32 var_t2;
    s32 var_t3_2;
    s32 var_t9_3;
    s32 var_v1;
    s64 temp_a3;
    s64 temp_a5_3;
    s64 temp_a5_4;
    s64 temp_a5_5;
    s64 temp_a6_4;
    s64 temp_a6_6;
    s64 temp_a6_7;
    s64 temp_a7_2;
    s64 temp_t2_2;
    s64 temp_t3_2;
    s64 temp_v0_4;
    s64 temp_v0_5;
    s64 temp_v0_6;
    s64 temp_v1_4;
    s64 temp_v1_5;
    s64 temp_v1_6;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a1;
    s64 var_a2_5;
    s64 var_a3_10;
    s64 var_a3_11;
    s64 var_a3_18;
    s64 var_a3_3;
    s64 var_a3_4;
    s64 var_a3_5;
    s64 var_a3_6;
    s64 var_a3_7;
    s64 var_a3_8;
    s64 var_a3_9;
    s64 var_a4;
    s64 var_a5_2;
    s64 var_a7_3;
    s64 var_s5;
    s64 var_s6_2;
    s64 var_t1_2;
    s64 var_t1_3;
    s64 var_t9_4;
    s64 var_v0;
    u32 temp_a3_4;
    u32 temp_s6;
    u32 temp_t9_3;
    u32 var_a3_14;
    u32 var_s7;
    u32 var_t9_5;
    void *temp_a1;
    void *temp_a7;
    void *temp_s4;
    void *temp_t0_2;

    sp108 = arg2;
    sp10 = arg1;
    temp_t0 = arg1->unk4C;
    temp_a7 = *((nfbGCPrivateIndex * 4) + temp_t0);
    temp_t3 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
    temp_t0_2 = temp_a7->unk8;
    temp_s4 = **(arg1->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    switch (temp_t3) {                              /* irregular */
    default:
        temp_s4->unk4052C = (s32) (temp_t3 | 0x1000);
        temp_s4->unk404D4 = 0;
        var_a2 = temp_a7->unk4C;
        var_t2 = temp_a7->unk15 * 8;
        break;
    case 13:
        temp_s4->unk4052C = 0x100B;
        var_t2 = 1;
        var_a2 = 0;
        temp_s4->unk404D4 = (s32) (temp_a7->unk4C & 3);
        break;
    case 12:
        temp_s4->unk4052C = 0x1008;
        var_t2 = 1;
        var_a2 = 0;
        temp_s4->unk404D4 = (s32) (temp_a7->unk4C & 0xF);
        break;
    case 14:
        temp_s4->unk4052C = 0x100B;
        var_t2 = 9;
        var_a2 = 0;
        temp_s4->unk404D4 = (s32) (temp_a7->unk4C & 0xC);
        break;
    }
    temp_s4->unk40530 = (s32) temp_a7->unk40;
    temp_s4->unk4077C = (s32) (var_a2 & 0xFFFFFF);
    temp_s4->unk4077C = (s32) temp_a7->unk48;
    temp_s4->unk4077C = var_t2;
    temp_s4->unk40588 = 0;
    temp_a1 = temp_t0_2->unk8;
    sp30 = (s64) **((expGCPrivateIndex * 4) + temp_t0);
    if (temp_a1 != NULL) {
        sp60 = temp_a1 + 8;
        if (temp_a1 != NULL) {
            goto block_6;
        }
        goto block_324;
    }
    sp60 = (s64) temp_t0_2;
    if (temp_a1 == NULL) {
block_324:
        sp48 = 1;
    } else {
block_6:
        sp48 = (s64) temp_a1->unk4;
    }
    temp_a5 = arg0->unkA;
    temp_v0 = arg0->unk8;
    sp50 = (s64) temp_a5;
    sp58 = (s64) temp_v0;
    var_s2 = arg4->unk2 + temp_a5;
    var_s3 = arg4->unk0 + temp_v0;
    if (arg3 >= 2) {
        sp88 = (s64) arg4;
        sp40 = 0;
        var_s7 = sp8;
        sp38 = (s64) arg4;
        sp170 = (s64) sp4;
        sp148 = (s64) sp0;
        sp160 = (s64) spC;
        sp68 = (s64) (((arg3 - 1) * 4) + arg4);
loop_13:
        var_a1 = sp48;
        var_a0 = sp60;
        temp_s0 = var_s3;
        temp_ra = var_s2;
        if (sp108 == 1) {
            sp58 = (s64) var_s3;
            sp50 = (s64) var_s2;
        }
        var_s3 = sp38->unk4 + sp58;
        var_s2 = sp38->unk6 + sp50;
        if (var_s3 == temp_s0) {
            if (var_s2 != temp_ra) {
                var_a2_2 = temp_ra;
                if (temp_ra < var_s2) {
                    var_a3 = var_s2;
                    var_s1 = 0;
                } else {
                    var_a2_2 = var_s2;
                    var_a3 = temp_ra;
                    var_s1 = 1;
                }
                if ((sp48 != 0) && (var_a2_2 >= var_a0->unk6)) {
loop_24:
                    var_a1 -= 1;
                    var_a0 += 8;
                    if (var_a1 != 0) {
                        if (var_a2_2 < var_a0->unk6) {
                            goto block_26;
                        }
                        goto loop_24;
                    }
                } else {
block_26:
                    if (var_a1 != 0) {
                        var_t9 = var_a0->unk2;
                        if (var_a3 >= var_t9) {
loop_213:
                            var_a7 = var_t9;
                            var_a1 -= 1;
                            if ((temp_s0 >= var_a0->unk0) && (temp_s0 < var_a0->unk4)) {
                                if (var_t9 < var_a2_2) {
                                    var_a7 = var_a2_2;
                                }
                                temp_t2 = var_a0->unk6;
                                var_t3 = var_a7;
                                if (var_a3 < temp_t2) {
                                    var_t1 = var_a3;
                                } else {
                                    var_t1 = temp_t2;
                                }
                                var_t9_2 = var_t1;
                                if (var_a7 < var_t1) {
                                    if (var_s1 != 0) {
                                        if (var_a3 >= temp_t2) {
                                            var_t9_2 = var_t1 - 1;
                                            temp_a6 = ((var_a3 - var_t1) + 1) & 0xF;
                                            temp_s4->unk4077C = (s32) (((sp30 << (0x10 - temp_a6)) | (sp30 >> temp_a6)) & 0xFFFF);
                                        } else {
                                            temp_s4->unk4077C = (s32) sp30;
                                        }
                                        if (var_a7 != var_a2_2) {
                                            var_t3 = var_a7 - 1;
                                        }
                                        temp_s4->unk4077C = temp_s0;
                                        temp_s4->unk4077C = (s32) var_t9_2;
                                        temp_s4->unk4077C = temp_s0;
                                        temp_s4->unk4077C = (s32) var_t3;
                                    } else {
                                        temp_v0_2 = (var_t3 - var_a2_2) & 0xF;
                                        if (var_a2_2 != var_t3) {
                                            temp_s4->unk4077C = (s32) (((sp30 << (0x10 - temp_v0_2)) | (sp30 >> temp_v0_2)) & 0xFFFF);
                                        } else {
                                            temp_s4->unk4077C = (s32) sp30;
                                        }
                                        temp_s4->unk4077C = temp_s0;
                                        temp_s4->unk4077C = (s32) var_t3;
                                        temp_s4->unk4077C = temp_s0;
                                        temp_s4->unk4077C = (s32) var_t9_2;
                                    }
                                }
                            }
                            var_a0 += 8;
                            if (var_a1 != 0) {
                                var_t9 = var_a0->unk2;
                                if (var_a3 >= var_t9) {
                                    goto loop_213;
                                }
                            }
                        }
                    }
                }
                temp_v1 = (var_a3 - var_a2_2) & 0xF;
                sp30 = ((sp30 << (0x10 - temp_v1)) | (sp30 >> temp_v1)) & 0xFFFF;
            }
        } else if (var_s2 == temp_ra) {
            var_a2_3 = temp_s0;
            if (temp_s0 < var_s3) {
                var_a3_2 = var_s3;
                var_a7_2 = 0;
            } else {
                var_a2_3 = var_s3;
                var_a3_2 = temp_s0;
                var_a7_2 = 1;
            }
            if (var_a1 != 0) {
                if (temp_ra >= var_a0->unk6) {
loop_32:
                    var_a1 -= 1;
                    var_a0 += 8;
                    if (var_a1 != 0) {
                        if (temp_ra < var_a0->unk6) {
                            goto block_34;
                        }
                        goto loop_32;
                    }
                } else {
block_34:
                    if (var_a1 != 0) {
                        temp_t9 = var_a0->unk2;
                        if (temp_ra >= temp_t9) {
                            if (var_a1 != 0) {
                                if (temp_t9 == temp_t9) {
loop_258:
                                    temp_t1 = var_a0->unk4;
                                    var_t9_3 = var_a3_2;
                                    var_t3_2 = var_a2_3;
                                    var_s5 = sp30;
                                    if (var_a2_3 >= temp_t1) {
                                        var_a0 += 8;
                                        var_a1 -= 1;
                                        goto block_256;
                                    }
                                    temp_s1 = var_a0->unk0;
                                    if (temp_s1 < var_a3_2) {
                                        if (temp_s1 >= var_a2_3) {
                                            var_t3_2 = (s32) temp_s1;
                                        }
                                        var_s0 = var_t3_2;
                                        if (var_a3_2 < temp_t1) {

                                        } else {
                                            var_t9_3 = (s32) temp_t1;
                                        }
                                        var_a1 -= 1;
                                        var_s1_2 = var_t9_3;
                                        if (var_t3_2 < var_t9_3) {
                                            if (var_a7_2 != 0) {
                                                if (var_a3_2 >= temp_t1) {
                                                    var_s1_2 = var_t9_3 - 1;
                                                    temp_v1_2 = ((var_a3_2 - var_t9_3) + 1) & 0xF;
                                                    var_s5 = ((sp30 << (0x10 - temp_v1_2)) | (sp30 >> temp_v1_2)) & 0xFFFF;
                                                }
                                                if (var_t3_2 != var_a2_3) {
                                                    var_s0 = var_t3_2 - 1;
                                                }
                                                temp_s4->unk4077C = (s32) var_s5;
                                                temp_s4->unk4077C = var_s1_2;
                                                temp_s4->unk4077C = (s32) temp_ra;
                                                temp_s4->unk4077C = var_s0;
                                            } else {
                                                temp_v1_3 = (var_s0 - var_a2_3) & 0xF;
                                                if (var_a2_3 != var_s0) {
                                                    var_s5 = ((var_s5 << (0x10 - temp_v1_3)) | (var_s5 >> temp_v1_3)) & 0xFFFF;
                                                }
                                                temp_s4->unk4077C = (s32) var_s5;
                                                temp_s4->unk4077C = var_s0;
                                                temp_s4->unk4077C = (s32) temp_ra;
                                                temp_s4->unk4077C = var_s1_2;
                                            }
                                            temp_s4->unk4077C = (s32) temp_ra;
                                        }
                                        var_a0 += 8;
block_256:
                                        if ((var_a1 != 0) && (var_a0->unk2 == temp_t9)) {
                                            goto loop_258;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            temp_a6_2 = (var_a3_2 - var_a2_3) & 0xF;
            sp30 = ((sp30 << (0x10 - temp_a6_2)) | (sp30 >> temp_a6_2)) & 0xFFFF;
        } else {
            temp_t2_2 = var_s3 - temp_s0;
            var_a2_4 = 0;
            if (temp_t2_2 < 0) {
                var_a2_4 = 4;
            }
            temp_t3_2 = var_s2 - temp_ra;
            if (temp_t3_2 < 0) {
                var_a2_4 |= 2;
            }
            if (temp_t2_2 > 0) {
                sp140 = temp_t2_2;
                if (temp_t3_2 > 0) {
                    goto block_43;
                }
                goto block_236;
            }
            sp140 = temp_s0 - var_s3;
            if (temp_t3_2 <= 0) {
block_236:
                sp110 = temp_ra - var_s2;
            } else {
block_43:
                sp110 = temp_t3_2;
            }
            temp_a3 = sp140 * 2;
            temp_a7_2 = sp110 * 2;
            if (sp110 < sp140) {
                var_s8 = 0;
                var_a4 = temp_a7_2;
                sp168 = temp_a3;
                sp78 = temp_a7_2 - temp_a3;
                sp80 = sp140;
                sp70 = -sp140;
            } else {
                var_a2_4 |= 1;
                sp168 = temp_a7_2;
                sp78 = temp_a3 - temp_a7_2;
                var_s8 = 1;
                sp80 = sp110;
                sp70 = -sp110;
                var_a4 = temp_a3;
            }
            var_s5_2 = 0;
            if (var_a1 != 0) {
                spF8 = var_a2_4 & 4;
                sp130 = 0 & 1;
                sp128 = var_a2_4 & 1;
                sp118 = sp140 * 2;
                sp100 = sp110 * 2;
                sp120 = var_a2_4 & 2;
loop_61:
                temp_s1_2 = var_a0->unk0;
                var_a7_3 = 0;
                var_a3_3 = 0;
                if (temp_s0 < temp_s1_2) {
                    var_a7_3 = 8;
                } else if (temp_s0 >= var_a0->unk4) {
                    var_a7_3 = 4;
                }
                temp_t9_2 = var_a0->unk2;
                if (temp_ra >= temp_t9_2) {
                    if (temp_ra >= var_a0->unk6) {
                        var_a7_3 |= 1;
                    }
                } else {
                    var_a7_3 |= 2;
                }
                if (var_s3 >= temp_s1_2) {
                    var_v1 = var_s2 < temp_t9_2;
                    if (var_s3 >= var_a0->unk4) {
                        var_a3_3 = 4;
                        goto block_51;
                    }
                } else {
                    var_a3_3 = 8;
block_51:
                    var_v1 = var_s2 < temp_t9_2;
                }
                if (var_v1 == 0) {
                    if (var_s2 >= var_a0->unk6) {
                        var_a3_3 |= 1;
                    }
                } else {
                    var_a3_3 |= 2;
                }
                if ((var_a7_3 | var_a3_3) != 0) {
                    var_gp = temp_ra;
                    if (var_a7_3 & var_a3_3) {
                        goto block_59;
                    }
                    var_a2_5 = var_a3_3;
                    sp90 = (s64) temp_s1_2;
                    spB0 = (s64) temp_t9_2;
                    spA0 = 0;
                    spB8 = (s64) temp_s0;
                    spD0 = (s64) temp_ra;
                    spE0 = (s64) var_s3;
                    spE8 = (s64) var_s3;
                    spD8 = (s64) var_s2;
                    spA8 = (s64) var_s2;
                    sp138 = 0;
                    sp98 = 0;
                    sp158 = sp30;
                    spC0 = var_a0->unk4 - 1;
                    var_t1_2 = var_a7_3;
                    spC8 = var_a0->unk6 - 1;
                    var_s6 = temp_s0;
loop_78:
                    var_a5 = var_t1_2 & var_a2_5;
loop_79:
                    if (var_a5 != 0) {
                        sp138 = var_t1_2;
                        sp98 = var_a2_5;
                        goto block_81;
                    }
                    temp_v1_4 = spE8;
                    if ((var_t1_2 | var_a2_5) != 0) {
                        if (var_t1_2 == 0) {
                            temp_a5_2 = var_s6;
                            temp_v0_3 = var_gp;
                            var_gp = (s16) spA8;
                            spE8 = (s64) temp_a5_2;
                            var_s6 = (s32) temp_v1_4;
                            spA8 = (s64) temp_v0_3;
                            temp_v1_5 = spB8;
                            temp_a5_3 = spD0;
                            spB8 = spE0;
                            spE0 = temp_v1_5;
                            temp_v1_6 = spD8;
                            spD8 = temp_a5_3;
                            temp_v0_4 = var_t1_2;
                            var_t1_2 = var_a2_5;
                            var_a2_5 = temp_v0_4;
                            spD0 = temp_v1_6;
                            spA0 = spA0 == 0;
                            temp_a5_4 = sp138;
                            sp138 = sp98;
                            sp98 = temp_a5_4;
                        }
                        sp138 |= var_t1_2;
                        if (var_t1_2 & 8) {
                            var_s7 = sp90 - spB8;
                            sp160 = sp120;
                            if (var_s7 <= 0x7FFFU) {
                                if (sp128 != 0) {
                                    var_a3_4 = 0x34;
                                    if (spA0 == 0) {
                                        var_a3_4 = 0x3C;
                                    }
                                } else {
                                    var_a3_4 = 0x1A;
                                    if (spA0 == 0) {
                                        var_a3_4 = 0x12;
                                    }
                                }
                                sp170 = var_a3_4;
                                sp148 = spD0;
                            } else {
                                var_s7 = spE0 - sp90;
                                if (sp128 != 0) {
                                    var_a3_5 = 0x18;
                                    if (spA0 == 0) {
                                        var_a3_5 = 0x10;
                                    }
                                } else {
                                    var_a3_5 = 0x12;
                                    if (spA0 == 0) {
                                        var_a3_5 = 0x1A;
                                    }
                                }
                                sp170 = var_a3_5;
                                sp148 = spD8;
                                sp160 = sp160 == 0;
                            }
                            var_s6 = (s32) sp90;
                        } else if (var_t1_2 & 2) {
                            var_s7 = spB0 - spD0;
                            sp160 = spF8;
                            if (var_s7 <= 0x7FFFU) {
                                if (sp128 != 0) {
                                    var_a3_6 = 9;
                                    if (spA0 == 0) {
                                        var_a3_6 = 1;
                                    }
                                } else {
                                    var_a3_6 = 0x27;
                                    if (spA0 == 0) {
                                        var_a3_6 = 0x2F;
                                    }
                                }
                                sp170 = var_a3_6;
                                sp148 = spB8;
                            } else {
                                var_s7 = spD8 - spB0;
                                if (sp128 != 0) {
                                    var_a3_7 = 1;
                                    if (spA0 == 0) {
                                        var_a3_7 = 9;
                                    }
                                } else {
                                    var_a3_7 = 0xB;
                                    if (spA0 == 0) {
                                        var_a3_7 = 3;
                                    }
                                }
                                sp170 = var_a3_7;
                                sp160 = sp160 == 0;
                                sp148 = spE0;
                            }
                            var_gp = (s16) spB0;
                        } else if (var_t1_2 & 4) {
                            var_s7 = spB8 - spC0;
                            sp160 = sp120;
                            if (var_s7 <= 0x7FFFU) {
                                if (sp128 != 0) {
                                    var_a3_8 = 0x34;
                                    if (spA0 == 0) {
                                        var_a3_8 = 0x3C;
                                    }
                                } else {
                                    var_a3_8 = 0x1A;
                                    if (spA0 == 0) {
                                        var_a3_8 = 0x12;
                                    }
                                }
                                sp170 = var_a3_8;
                                sp148 = spD0;
                            } else {
                                var_s7 = spC0 - spE0;
                                if (sp128 != 0) {
                                    var_a3_9 = 0x18;
                                    if (spA0 == 0) {
                                        var_a3_9 = 0x10;
                                    }
                                } else {
                                    var_a3_9 = 0x12;
                                    if (spA0 == 0) {
                                        var_a3_9 = 0x1A;
                                    }
                                }
                                sp170 = var_a3_9;
                                sp160 = sp160 == 0;
                                sp148 = spD8;
                            }
                            var_s6 = (s32) spC0;
                        } else if (var_t1_2 & 1) {
                            var_s7 = spD0 - spC8;
                            sp160 = spF8;
                            if (var_s7 <= 0x7FFFU) {
                                if (sp128 != 0) {
                                    var_a3_10 = 9;
                                    if (spA0 == 0) {
                                        var_a3_10 = 1;
                                    }
                                } else {
                                    var_a3_10 = 0x27;
                                    if (spA0 == 0) {
                                        var_a3_10 = 0x2F;
                                    }
                                }
                                sp170 = var_a3_10;
                                sp148 = spB8;
                            } else {
                                var_s7 = spC8 - spD8;
                                if (sp128 != 0) {
                                    var_a3_11 = 1;
                                    if (spA0 == 0) {
                                        var_a3_11 = 9;
                                    }
                                } else {
                                    var_a3_11 = 0xB;
                                    if (spA0 == 0) {
                                        var_a3_11 = 3;
                                    }
                                }
                                sp170 = var_a3_11;
                                sp148 = spE0;
                                sp160 = sp160 == 0;
                            }
                            var_gp = (s16) spC8;
                        }
                        temp_t1_2 = var_s7 * 2;
                        temp_a7_3 = sp170 & 1;
                        if (spA0 != 0) {
                            sp160 = sp160 == 0;
                        }
                        if (temp_a7_3 != 0) {
                            var_a3_12 = sp140 * temp_t1_2;
                        } else {
                            var_a3_12 = sp110 * temp_t1_2;
                        }
                        var_v0 = sp110;
                        temp_t1_3 = sp170 & 4;
                        if (sp170 & 2) {
                            var_v0 = sp140;
                            if (temp_t1_3 != 0) {
                                goto block_101;
                            }
                            var_a3_13 = sp140 + var_a3_12;
                        } else if (temp_t1_3 != 0) {
block_101:
                            var_a3_13 = var_a3_12 - var_v0;
                        } else {
                            var_a3_13 = sp110 + var_a3_12;
                        }
                        if (sp170 & 8) {
                            var_a3_14 = (var_a3_13 + sp130) - 1;
                        } else {
                            var_a3_14 = var_a3_13 - sp130;
                        }
                        if (sp170 & 0x10) {
                            M2C_TRAP_IF(sp118 == 0);
                            var_s7 = var_a3_14 / sp118;
                        } else {
                            var_s7 = var_a3_14 / sp100;
                            M2C_TRAP_IF(sp100 == 0);
                        }
                        if (sp170 & 0x20) {
                            var_s7 += 1;
                        }
                        if (sp160 != 0) {
                            var_s7 = (u32) -(s32) var_s7;
                        }
                        temp_a3_2 = sp148 + var_s7;
                        if (temp_a7_3 != 0) {
                            var_s6 = temp_a3_2;
                        } else {
                            var_gp = (s16) temp_a3_2;
                        }
                        var_t1_2 = 0;
                        if (var_s6 < sp90) {
                            var_t1_2 = 8;
                        }
                        if (spC0 < var_s6) {
                            var_t1_2 |= 4;
                        }
                        if (var_gp < spB0) {
                            var_t1_2 |= 2;
                        }
                        var_a5 = var_t1_2 & var_a2_5;
                        if (spC8 < var_gp) {
                            var_t1_2 |= 1;
                            goto loop_78;
                        }
                        goto loop_79;
                    }
                    temp_v1_7 = var_s6;
                    temp_v0_5 = spE8;
                    if (spA0 != 0) {
                        spE8 = (s64) temp_v1_7;
                        var_s6 = (s32) temp_v0_5;
                        temp_a5_5 = spA8;
                        temp_a6_3 = var_gp;
                        spA8 = (s64) temp_a6_3;
                        var_gp = (s16) temp_a5_5;
                        temp_a6_4 = sp98;
                        temp_v0_6 = sp138;
                        sp98 = temp_v0_6;
                        sp138 = temp_a6_4;
                    }
                    if (1 != -1) {
                        var_a0 += 8;
                        if (var_s8 != 0) {
                            temp_a7_4 = spA8 - var_gp;
                            var_a3_15 = var_gp - spA8;
                            if (temp_a7_4 > 0) {
                                var_a3_15 = temp_a7_4;
                            }
                        } else {
                            temp_a7_5 = spE8 - var_s6;
                            var_a3_15 = var_s6 - spE8;
                            if (temp_a7_5 > 0) {
                                var_a3_15 = temp_a7_5;
                            }
                        }
                        temp_s1_3 = (sp98 != 0) + var_a3_15;
                        if (temp_s1_3 != 0) {
                            var_a2_6 = var_s6;
                            temp_a3_3 = var_s6 - temp_s0;
                            if (sp138 != 0) {
                                var_a7_4 = temp_a3_3;
                                if (temp_a3_3 <= 0) {
                                    var_a7_4 = temp_s0 - var_s6;
                                }
                                temp_t1_4 = var_gp - temp_ra;
                                var_a3_16 = temp_t1_4;
                                if (temp_t1_4 > 0) {
                                    if (var_s8 != 0) {
                                        goto block_159;
                                    }
                                    goto block_193;
                                }
                                var_a3_16 = temp_ra - var_gp;
                                if (var_s8 == 0) {
block_193:
                                    temp_v1_8 = var_a7_4 & 0xF;
                                    MULT_HI(var_a3_16, sp78);
                                    sp158 = ((sp30 << (0x10 - temp_v1_8)) | (sp30 >> temp_v1_8)) & 0xFFFF;
                                    sp150 = ((var_a7_4 - var_a3_16) * var_a4) + (var_a3_16 * sp78) + sp70;
                                } else {
block_159:
                                    temp_a6_5 = var_a3_16 & 0xF;
                                    MULT_HI(var_a7_4, sp78);
                                    sp158 = ((sp30 << (0x10 - temp_a6_5)) | (sp30 >> temp_a6_5)) & 0xFFFF;
                                    var_a5_2 = ((var_a3_16 - var_a7_4) * var_a4) + (var_a7_4 * sp78) + sp70;
                                    goto block_160;
                                }
                            } else {
                                var_a5_2 = sp70;
block_160:
                                sp150 = var_a5_2;
                            }
                            var_a3_17 = temp_s1_3;
                            var_a7_5 = var_gp;
                            var_t1_3 = sp150;
                            var_t9_4 = sp158;
                            temp_s4->unk4077C = 0xFFFF;
                            temp_s4->unk4077C = 0;
                            temp_s4->unk4077C = 0;
                            temp_s4->unk4077C = 0;
                            temp_s4->unk4077C = 0;
                            temp_s4->unk407A8 = 0;
                            temp_s4->unk404CC = 0;
                            if (sp158 & 1) {
                                goto block_162;
                            }
                            sp28 = (s64) var_a7_5;
                            var_a7_6 = 0;
                            var_a3_18 = sp158;
                            if (sp158 != 0) {
loop_195:
                                var_a7_6 += 1;
                                temp_a3_4 = (u32) var_a3_18 >> 1;
                                if (!(temp_a3_4 & 1)) {
                                    var_a7_6 += 1;
                                    var_a3_18 = (s64) (temp_a3_4 >> 1);
                                    if (!(var_a3_18 & 1)) {
                                        goto loop_195;
                                    }
                                }
                            } else {
                                var_a7_6 = 0x10;
                            }
                            temp_a5_6 = var_a7_6 & 0xF;
                            var_t9_4 = ((sp158 << (0x10 - temp_a5_6)) | (sp158 >> temp_a5_6)) & 0xFFFF;
                            if (temp_s1_3 < var_a7_6) {
                                var_a7_6 = temp_s1_3;
                            }
                            var_a3_17 = temp_s1_3 - var_a7_6;
                            if (var_a3_17 > 0) {
                                var_t1_3 = (var_a4 * var_a7_6) + sp150;
                                if (var_t1_3 >= 0) {
                                    var_s1_3 = (var_t1_3 / sp168) + 1;
                                    M2C_TRAP_IF(sp168 == 0);
                                    var_t1_3 -= var_s1_3 * sp168;
                                    if (var_s8 != 0) {
                                        goto block_202;
                                    }
                                    goto block_238;
                                }
                                var_s1_3 = 0;
                                if (var_s8 == 0) {
block_238:
                                    if (temp_t2_2 > 0) {
                                        var_a2_6 = var_s6 + var_a7_6;
                                        if (temp_t3_2 > 0) {
                                            goto block_240;
                                        }
                                        goto block_280;
                                    }
                                    var_a2_6 = var_s6 - var_a7_6;
                                    if (temp_t3_2 <= 0) {
block_280:
                                        var_a7_5 = var_gp - var_s1_3;
                                    } else {
block_240:
                                        var_a7_5 = var_gp + var_s1_3;
                                    }
                                } else {
block_202:
                                    if (temp_t3_2 > 0) {
                                        sp28 = var_gp + var_a7_6;
                                        if (temp_t2_2 > 0) {
                                            goto block_204;
                                        }
                                        goto block_227;
                                    }
                                    sp28 = var_gp - var_a7_6;
                                    if (temp_t2_2 <= 0) {
block_227:
                                        var_a2_6 = var_s6 - var_s1_3;
                                        var_a7_5 = (s16) sp28;
                                    } else {
block_204:
                                        var_a2_6 = var_s6 + var_s1_3;
                                        var_a7_5 = (s16) sp28;
                                    }
                                }
block_162:
                                if (var_a3_17 > 0) {
loop_171:
                                    var_s1_4 = 0;
                                    var_s6_2 = var_t9_4;
                                    if (var_t9_4 != 0xFFFF) {
loop_172:
                                        var_s1_4 += 1;
                                        temp_s6 = (u32) var_s6_2 >> 1;
                                        if (temp_s6 & 1) {
                                            var_s1_4 += 1;
                                            var_s6_2 = (s64) (temp_s6 >> 1);
                                            if (var_s6_2 & 1) {
                                                goto loop_172;
                                            }
                                        }
                                    } else {
                                        var_s1_4 = 0x10;
                                    }
                                    var_s6_3 = 0;
                                    temp_v1_9 = var_s1_4 & 0xF;
                                    temp_gp = ((var_t9_4 << (0x10 - temp_v1_9)) | (var_t9_4 >> temp_v1_9)) & 0xFFFF;
                                    if (var_a3_17 < var_s1_4) {
                                        var_s1_4 = var_a3_17;
                                    }
                                    var_t9_5 = temp_gp & 0xFFFF;
                                    temp_s4->unk4077C = var_a2_6;
                                    temp_s4->unk4077C = (s32) var_a7_5;
                                    temp_s4->unk4077C = (s32) -var_t1_3;
                                    temp_s4->unk4077C = (s32) temp_t2_2;
                                    temp_s4->unk4077C = (s32) temp_t3_2;
                                    temp_s4->unk4077C = var_s1_4;
                                    if (temp_gp != 0xFFFF) {
loop_177:
                                        var_s6_3 += 1;
                                        temp_t9_3 = (var_t9_5 >> 1) & 0xFFFF;
                                        if (!(temp_t9_3 & 1)) {
                                            var_s6_3 += 1;
                                            var_t9_5 = (temp_t9_3 >> 1) & 0xFFFF;
                                            if (var_t9_5 & 1) {

                                            } else {
                                                goto loop_177;
                                            }
                                        }
                                    } else {
                                        var_s6_3 = 0x10;
                                    }
                                    temp_s1_4 = var_s1_4 + var_s6_3;
                                    var_a3_17 = (var_a3_17 - var_s1_4) - var_s6_3;
                                    temp_v0_7 = var_s6_3 & 0xF;
                                    var_t9_4 = ((temp_gp << (0x10 - temp_v0_7)) | (temp_gp >> temp_v0_7)) & 0xFFFF;
                                    if (var_a3_17 > 0) {
                                        var_t1_3 += var_a4 * temp_s1_4;
                                        if (var_t1_3 >= 0) {
                                            var_s6_4 = (var_t1_3 / sp168) + 1;
                                            M2C_TRAP_IF(sp168 == 0);
                                            var_t1_3 -= var_s6_4 * sp168;
                                            if (var_s8 != 0) {
                                                goto block_167;
                                            }
                                            goto block_185;
                                        }
                                        var_s6_4 = 0;
                                        if (var_s8 == 0) {
block_185:
                                            if (temp_t2_2 > 0) {
                                                var_a2_6 += temp_s1_4;
                                                if (temp_t3_2 > 0) {
                                                    goto block_187;
                                                }
                                                goto block_191;
                                            }
                                            var_a2_6 -= temp_s1_4;
                                            if (temp_t3_2 <= 0) {
block_191:
                                                var_a7_5 -= var_s6_4;
                                            } else {
block_187:
                                                var_a7_5 += var_s6_4;
                                            }
                                            goto block_170;
                                        }
block_167:
                                        if (temp_t3_2 > 0) {
                                            var_a7_5 += temp_s1_4;
                                            if (temp_t2_2 > 0) {
                                                goto block_169;
                                            }
                                            goto block_181;
                                        }
                                        var_a7_5 -= temp_s1_4;
                                        if (temp_t2_2 <= 0) {
block_181:
                                            var_a2_6 -= var_s6_4;
                                            if (var_a3_17 > 0) {
                                                goto loop_171;
                                            }
                                        } else {
block_169:
                                            var_a2_6 += var_s6_4;
block_170:
                                            if (var_a3_17 > 0) {
                                                goto loop_171;
                                            }
                                        }
                                    }
                                }
                            }
                            temp_s4->unk4077C = 0;
                            temp_s4->unk4077C = 0;
                            temp_s4->unk4077C = 0;
                            temp_s4->unk4077C = 0;
                            temp_s4->unk4077C = 0;
                            temp_s4->unk4077C = 0;
                            temp_s4->unk407A8 = 0;
                            temp_s4->unk40588 = 0;
                        }
                    } else {
block_81:
block_59:
                        var_a0 += 8;
                    }
                    var_s5_2 += 1;
                    if (var_s5_2 != var_a1) {
                        goto loop_61;
                    }
                } else {
                    temp_s4->unk4077C = (s32) sp30;
                    temp_s4->unk4077C = temp_s0;
                    temp_s4->unk4077C = (s32) temp_ra;
                    temp_s4->unk4077C = var_s3;
                    temp_s4->unk4077C = (s32) var_s2;
                }
            }
            temp_a5_7 = sp80 & 0xF;
            sp30 = ((sp30 << (0x10 - temp_a5_7)) | (sp30 >> temp_a5_7)) & 0xFFFF;
        }
        temp_a6_6 = sp38 + 4;
        sp38 = temp_a6_6;
        sp40 += 1;
        if (temp_a6_6 != sp68) {
            goto loop_13;
        }
    } else {
        sp88 = (s64) arg4;
        sp40 = 0;
    }
    if ((((u32) (sp10->unk10 & 0x3FFFFFFF) >> 0x1C) != 0) && ((temp_a6_7 = (sp40 * 4) + sp88, sp38 = temp_a6_7, (*temp_a6_7 != sp88->unk0)) || (sp38->unk2 != sp88->unk2) || (sp40 == 1)) && (sp30 & 1) && (sp48 != 0)) {
        var_a0_2 = sp60;
loop_306:
        if ((var_s3 >= var_a0_2->unk0) && (var_s2 >= var_a0_2->unk2) && (var_s3 < var_a0_2->unk4)) {
            var_a0_2 += 8;
            if (var_s2 < var_a0_2->unk6) {
                temp_s4->unk4077C = 0xFFFF;
                temp_s4->unk4077C = 0;
                temp_s4->unk4077C = 0;
                temp_s4->unk4077C = 0;
                temp_s4->unk4077C = 0;
                temp_s4->unk407A8 = 0;
                temp_s4->unk404CC = 0;
                temp_s4->unk4077C = var_s3;
                temp_s4->unk4077C = (s32) var_s2;
                temp_s4->unk4077C = 1;
                temp_s4->unk4077C = 1;
                temp_s4->unk4077C = 0;
                temp_s4->unk4077C = 1;
                temp_s4->unk407A8 = 0;
                return;
            }
            goto block_305;
        }
        var_a0_2 += 8;
block_305:
        if (var_a0_2 != (sp60 + (sp48 * 8))) {
            goto loop_306;
        }
        /* Duplicate return node #311. Try simplifying control flow for better match */
        temp_s4->unk4077C = 0xFFFF;
        temp_s4->unk4077C = 0;
        temp_s4->unk4077C = 0;
        temp_s4->unk4077C = 0;
        temp_s4->unk4077C = 0;
        temp_s4->unk407A8 = 0;
        return;
    }
    temp_s4->unk4077C = 0xFFFF;
    temp_s4->unk4077C = 0;
    temp_s4->unk4077C = 0;
    temp_s4->unk4077C = 0;
    temp_s4->unk4077C = 0;
    temp_s4->unk407A8 = 0;
}

void expSegmentSS(void *arg0, void *arg1, s32 arg2, s64 arg3) {
    s64 sp2C0;
    s64 sp2B8;
    s64 sp258;
    s64 sp250;
    s64 sp248;
    s64 sp240;
    s64 sp238;
    s64 sp230;
    s64 sp228;
    s64 sp220;
    u64 sp218;
    s64 sp210;
    s64 sp208;
    s64 sp200;
    u64 sp1F8;
    s64 sp1F0;
    s64 sp1E8;
    s64 sp1E0;
    s64 sp1D8;
    s64 sp1D0;
    s64 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    s64 sp1A0;
    s64 sp198;
    u64 sp190;                                      /* compiler-managed */
    s64 sp188;
    s64 sp180;
    s64 sp178;
    s64 sp170;
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    u64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    u64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    u64 sp80;                                       /* compiler-managed */
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s16 temp_a3;
    s16 temp_a3_2;
    s16 temp_a3_7;
    s16 temp_a5_12;
    s16 temp_a6_2;
    s16 temp_a6_3;
    s16 temp_a6_7;
    s16 temp_a7_3;
    s16 temp_a7_4;
    s16 temp_t1_3;
    s16 temp_t3;
    s16 temp_t3_2;
    s16 temp_t8;
    s16 temp_t8_2;
    s16 temp_v0_11;
    s16 temp_v0_5;
    s16 temp_v1_10;
    s16 var_a2_4;
    s16 var_a6_3;
    s16 var_a7_4;
    s16 var_s4;
    s16 var_s7_2;
    s16 var_s8;
    s16 var_t0_3;
    s16 var_t0_4;
    s16 var_t3_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_4;
    s32 temp_a2_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_8;
    s32 temp_a3_9;
    s32 temp_a4_11;
    s32 temp_a4_12;
    s32 temp_a4_14;
    s32 temp_a4_6;
    s32 temp_a5_11;
    s32 temp_a5_6;
    s32 temp_a5_9;
    s32 temp_a6_10;
    s32 temp_a6_11;
    s32 temp_a6_12;
    s32 temp_a6_13;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 temp_a6_6;
    s32 temp_a6_8;
    s32 temp_a6_9;
    s32 temp_a7_10;
    s32 temp_a7_11;
    s32 temp_a7_2;
    s32 temp_a7_5;
    s32 temp_a7_6;
    s32 temp_a7_7;
    s32 temp_a7_8;
    s32 temp_a7_9;
    s32 temp_ra;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_t0_5;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_4;
    s32 temp_t1_5;
    s32 temp_t1_6;
    s32 temp_t2;
    s32 temp_t2_3;
    s32 temp_t2_4;
    s32 temp_v0_4;
    s32 temp_v0_7;
    s32 temp_v1;
    s32 temp_v1_11;
    s32 temp_v1_13;
    s32 var_a0_12;
    s32 var_a0_13;
    s32 var_a0_15;
    s32 var_a0_16;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a2_3;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a2_8;
    s32 var_a2_9;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_a6_10;
    s32 var_a6_11;
    s32 var_a6_12;
    s32 var_a6_13;
    s32 var_a6_22;
    s32 var_a6_23;
    s32 var_a6_25;
    s32 var_a6_26;
    s32 var_a6_2;
    s32 var_a6_4;
    s32 var_a6_5;
    s32 var_a6_6;
    s32 var_a6_7;
    s32 var_a6_8;
    s32 var_a6_9;
    s32 var_a7;
    s32 var_a7_3;
    s32 var_gp;
    s32 var_gp_2;
    s32 var_ra;
    s32 var_ra_2;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s3;
    s32 var_s5;
    s32 var_s7_3;
    s32 var_t0;
    s32 var_t0_5;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t1_3;
    s32 var_t1_4;
    s32 var_t1_5;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t2_3;
    s32 var_t8;
    s32 var_t9;
    s32 var_t9_3;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v1;
    s64 temp_a0_3;
    s64 temp_a2;
    s64 temp_a4;
    s64 temp_a4_10;
    s64 temp_a4_13;
    s64 temp_a4_15;
    s64 temp_a4_2;
    s64 temp_a4_3;
    s64 temp_a4_4;
    s64 temp_a4_5;
    s64 temp_a4_9;
    s64 temp_a5;
    s64 temp_a5_13;
    s64 temp_a5_2;
    s64 temp_a5_3;
    s64 temp_a5_4;
    s64 temp_a5_5;
    s64 temp_a5_7;
    s64 temp_a5_8;
    s64 temp_ra_2;
    s64 temp_s0;
    s64 temp_s1;
    s64 temp_s2;
    s64 temp_s3;
    s64 temp_s4;
    s64 temp_s6_2;
    s64 temp_s8;
    s64 temp_t0_3;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_6;
    s64 temp_v1_12;
    s64 temp_v1_15;
    s64 temp_v1_2;
    s64 temp_v1_3;
    s64 temp_v1_4;
    s64 temp_v1_5;
    s64 temp_v1_6;
    s64 temp_v1_7;
    s64 temp_v1_8;
    s64 temp_v1_9;
    s64 var_a0;
    s64 var_a0_10;
    s64 var_a0_11;
    s64 var_a0_4;
    s64 var_a0_5;
    s64 var_a0_6;
    s64 var_a0_7;
    s64 var_a0_8;
    s64 var_a0_9;
    s64 var_a1_2;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_a4;
    s64 var_a6_14;
    s64 var_a6_15;
    s64 var_a6_16;
    s64 var_a6_17;
    s64 var_a6_18;
    s64 var_a6_19;
    s64 var_a6_20;
    s64 var_a6_21;
    s64 var_a7_2;
    s64 var_s0;
    s64 var_s2;
    s64 var_s7;
    s64 var_t0_2;
    s64 var_t3;
    s64 var_t9_2;
    s64 var_v0;
    u32 var_a0_14;
    u32 var_a6_24;
    u64 temp_a4_7;
    u64 temp_a4_8;
    u64 temp_a5_10;
    u64 temp_v0_10;
    u64 temp_v0_3;
    u64 temp_v0_8;
    u64 temp_v0_9;
    u64 temp_v1_14;
    u8 temp_t0_4;
    u8 temp_t2_2;
    void *temp_a1;
    void *temp_a6;
    void *temp_a7;
    void *temp_at;
    void *temp_t0;
    void *temp_t0_2;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0x181538;
    temp_a7 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    temp_t0 = temp_a7->unk8;
    temp_a6 = temp_t0->unk8;
    spA0 = (s64) arg1;
    if (temp_a6 != NULL) {
        spA8 = temp_a6 + 8;
        if (temp_a6 != NULL) {
            goto block_2;
        }
        goto block_271;
    }
    spA8 = (s64) temp_t0;
    if (temp_a6 == NULL) {
block_271:
        var_a1 = 1;
    } else {
block_2:
        var_a1 = temp_a6->unk4;
    }
    if (var_a1 != 1) {
        if (var_a1 != 0) {
            temp_t0_2 = temp_a7->unk8;
            temp_t1 = expScreenPrivateIndex * 4;
            temp_t2 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
            temp_v1 = **(spA0->unk0->unk1B4 + temp_t1);
            spF8 = (s64) temp_v1;
            sp158 = temp_v1 + 0x40000;
            switch (temp_t2) {                      /* switch 1; irregular */
            default:                                /* switch 1 */
                sp158->unk52C = (s32) (temp_t2 | 0x1000);
                sp158->unk4D4 = 0;
                var_a6 = temp_a7->unk4C;
                var_a7 = temp_a7->unk15 * 8;
                break;
            case 13:                                /* switch 1 */
                sp158->unk52C = 0x100B;
                var_a7 = 1;
                var_a6 = 0;
                sp158->unk4D4 = (s32) (temp_a7->unk4C & 3);
                break;
            case 12:                                /* switch 1 */
                sp158->unk52C = 0x1008;
                var_a7 = 1;
                var_a6 = 0;
                sp158->unk4D4 = (s32) (temp_a7->unk4C & 0xF);
                break;
            case 14:                                /* switch 1 */
                sp158->unk52C = 0x100B;
                var_a7 = 9;
                var_a6 = 0;
                sp158->unk4D4 = (s32) (temp_a7->unk4C & 0xC);
                break;
            }
            sp158->unk530 = (s32) temp_a7->unk40;
            sp158->unk77C = (s32) (var_a6 & 0xFFFFFF);
            sp158->unk77C = (s32) temp_a7->unk48;
            sp158->unk77C = var_a7;
            sp1C8 = 0;
            temp_t2_2 = (*(spA0->unk0->unk1B4 + temp_t1))->unk8->unk36;
            sp110 = (s64) temp_t2_2;
            temp_t2_3 = (s32) temp_t2_2 < 5;
            if (((u32) (spA0->unk10 & 0x3FFFFFFF) >> 0x1C) != 0) {
                if (temp_t2_3 != 0) {
                    var_a6_2 = 0x159;
                    sp158->unk564 = 0;
                } else {
                    var_a6_2 = 0x164;
                    sp158->unk590 = 0;
                }
                sp130 = 1;
            } else {
                if (temp_t2_3 != 0) {
                    var_a6_2 = 0x12D;
                    sp158->unk4B4 = 0;
                } else {
                    var_a6_2 = 0x163;
                    sp158->unk58C = 0;
                }
                sp130 = 0;
            }
            temp_a1 = temp_t0_2->unk8;
            if (temp_a1 != NULL) {
                spE0 = (s64) (temp_a1 + 8);
                if (temp_a1 != NULL) {
                    goto block_15;
                }
                goto block_274;
            }
            spE0 = (s64) temp_t0_2;
            if (temp_a1 == NULL) {
block_274:
                sp108 = 1;
            } else {
block_15:
                sp108 = (s64) temp_a1->unk4;
            }
            spD0 = (s64) arg0->unkA;
            spD8 = (s64) arg0->unk8;
            if (arg2 > 0) {
                sp140 = arg3;
                sp170 = (s64) spC;
                sp190 = (u64) sp8;
                spF0 = var_a6_2 * 4;
                sp138 = (s64) sp0;
                sp180 = (s64) sp4;
                spC8 = (arg2 * 8) + arg3;
                spE8 = sp110 - 1;
loop_21:
                var_a0 = spE0;
                sp1A0 = sp108;
                sp1B0 = sp140->unk6 + spD0;
                sp1C0 = sp140->unk2 + spD0;
                temp_v0 = sp140->unk4 + spD8;
                var_s1 = sp140->unk0 + spD8;
                sp198 = temp_v0;
                if (var_s1 == temp_v0) {
                    if (sp1B0 < sp1C0) {
                        if (sp130 != 0) {
                            temp_v1_2 = sp1B0;
                            sp1B0 = sp1C0;
                            sp1C0 = temp_v1_2;
                        } else {
                            temp_a4 = sp1B0;
                            sp1B0 = sp1C0 + 1;
                            sp1C0 = temp_a4 + 1;
                        }
                    }
                    if (sp108 != 0) {
                        if (sp1C0 >= var_a0->unk6) {
loop_28:
                            var_a0 += 8;
                            temp_v1_3 = sp1A0 - 1;
                            sp1A0 = temp_v1_3;
                            if (temp_v1_3 != 0) {
                                if (sp1C0 < var_a0->unk6) {
                                    goto block_30;
                                }
                                goto loop_28;
                            }
                        } else {
                            goto block_31;
                        }
                    } else {
block_30:
block_31:
                        if (sp1A0 != 0) {
                            var_a6_3 = var_a0->unk2;
                            if (sp1B0 >= var_a6_3) {
loop_54:
                                if (var_s1 >= var_a0->unk0) {
                                    var_a2 = sp1C0;
                                    if (var_s1 < var_a0->unk4) {
                                        if (var_a6_3 >= sp1C0) {
                                            var_a2 = (s64) var_a6_3;
                                        }
                                        temp_a3 = var_a0->unk6;
                                        if (sp130 != 0) {
                                            temp_a7_2 = temp_a3 - 1;
                                            var_a6_4 = (s32) sp1B0;
                                            if (sp1B0 < temp_a7_2) {

                                            } else {
                                                var_a6_4 = temp_a7_2;
                                            }
                                        } else {
                                            var_a6_4 = (s32) temp_a3;
                                            if (sp1B0 < temp_a3) {
                                                var_a6_4 = (s32) sp1B0;
                                            }
                                        }
                                        if (var_a6_4 >= var_a2) {
                                            sp158->unk77C = var_s1;
                                            sp158->unk77C = (s32) var_a2;
                                            sp158->unk77C = (s32) sp198;
                                            sp158->unk77C = var_a6_4;
                                            sp1C8 += 1;
                                        }
                                    }
                                }
                                var_a0 += 8;
                                temp_v1_4 = sp1A0 - 1;
                                sp1A0 = temp_v1_4;
                                if (temp_v1_4 != 0) {
                                    var_a6_3 = var_a0->unk2;
                                    if (sp1B0 >= var_a6_3) {
                                        goto loop_54;
                                    }
                                }
                            }
                        }
                    }
                } else if (sp1C0 == sp1B0) {
                    if (sp198 < var_s1) {
                        if (sp130 != 0) {
                            temp_a4_2 = sp198;
                            sp198 = (s64) var_s1;
                            var_s1 = (s32) temp_a4_2;
                        } else {
                            temp_a5 = sp198;
                            sp198 = var_s1 + 1;
                            var_s1 = temp_a5 + 1;
                        }
                    }
                    if (sp1A0 != 0) {
                        if (sp1C0 >= var_a0->unk6) {
loop_41:
                            var_a0 += 8;
                            temp_a5_2 = sp1A0 - 1;
                            sp1A0 = temp_a5_2;
                            if (temp_a5_2 != 0) {
                                if (sp1C0 < var_a0->unk6) {
                                    goto block_44;
                                }
                                goto loop_41;
                            }
                        } else {
block_44:
                            if ((sp1A0 != 0) && (temp_a6_2 = var_a0->unk2, ((sp1C0 < temp_a6_2) == 0))) {
                                if ((sp1A0 != 0) && (temp_a6_2 == temp_a6_2)) {
loop_209:
                                    temp_a3_2 = var_a0->unk4;
                                    var_a6_5 = var_s1;
                                    if (var_s1 >= temp_a3_2) {
                                        var_v0 = sp1A0 - 1;
                                        var_a0 += 8;
                                        goto block_207;
                                    }
                                    temp_a7_3 = var_a0->unk0;
                                    if (temp_a7_3 < sp198) {
                                        if (temp_a7_3 >= var_s1) {
                                            var_a6_5 = (s32) temp_a7_3;
                                        }
                                        var_a7_2 = sp198;
                                        if (sp130 != 0) {
                                            temp_t0_3 = temp_a3_2 - 1;
                                            if (sp198 >= temp_t0_3) {
                                                var_a7_2 = temp_t0_3;
                                            }
                                        } else {
                                            var_a7_2 = (s64) temp_a3_2;
                                            if (sp198 < temp_a3_2) {
                                                var_a7_2 = sp198;
                                            }
                                        }
                                        if (var_a7_2 >= var_a6_5) {
                                            sp158->unk77C = var_a6_5;
                                            sp158->unk77C = (s32) sp1C0;
                                            sp158->unk77C = (s32) var_a7_2;
                                            sp158->unk77C = (s32) sp1B0;
                                            sp1C8 += 1;
                                        }
                                        var_a0 += 8;
                                        var_v0 = sp1A0 - 1;
block_207:
                                        sp1A0 = var_v0;
                                        if ((sp1A0 != 0) && (var_a0->unk2 == temp_a6_2)) {
                                            goto loop_209;
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    sp1A8 = 0;
                    if (sp1A0 != 0) {
                        sp1D0 = var_a0;
                        temp_a5_3 = sp1B0 - sp1C0;
                        sp148 = temp_a5_3;
                        temp_a5_4 = temp_a5_3 - ((temp_a5_3 * 2) & (temp_a5_3 >> 0x1F));
                        spC0 = temp_a5_4;
                        temp_v1_5 = sp198 - var_s1;
                        sp150 = temp_v1_5;
                        sp128 = temp_a5_4 * 2;
                        spB0 = temp_a5_4 * 2;
                        temp_v1_6 = temp_v1_5 - ((temp_v1_5 * 2) & (temp_v1_5 >> 0x1F));
                        sp160 = temp_v1_6;
                        sp118 = temp_a5_4 < temp_v1_6;
                        sp100 = temp_v1_6 * 2;
                        sp120 = temp_v1_6 * 2;
loop_74:
                        temp_a7_4 = sp1D0->unk0;
                        var_a0_2 = 0;
                        var_a3 = 0;
                        if (var_s1 < temp_a7_4) {
                            var_a0_2 = 8;
                        } else if (var_s1 >= sp1D0->unk4) {
                            var_a0_2 = 4;
                        }
                        temp_a6_3 = sp1D0->unk2;
                        if (sp1C0 < temp_a6_3) {
                            var_a0_2 |= 2;
                        } else if (sp1C0 >= sp1D0->unk6) {
                            var_a0_2 |= 1;
                        }
                        if (sp198 < temp_a7_4) {
                            var_a3 = 8;
                        } else if (sp198 >= sp1D0->unk4) {
                            var_a3 = 4;
                        }
                        if (sp1B0 >= temp_a6_3) {
                            var_a2_2 = sp128;
                            if (sp1B0 >= sp1D0->unk6) {
                                var_a3 |= 1;
                                goto block_69;
                            }
                        } else {
                            var_a3 |= 2;
block_69:
                            var_a2_2 = sp128;
                        }
                        if ((var_a0_2 | var_a3) != 0) {
                            var_t2 = 0;
                            var_t0 = var_a0_2;
                            var_t8 = 0;
                            if (var_a0_2 & var_a3) {
                                goto block_72;
                            }
                            var_t9 = 0;
                            var_s7 = sp1C0;
                            var_t1 = var_a3;
                            temp_s5 = 0 & 1;
                            if (sp150 >= 0) {
                                if (sp148 >= 0) {
                                    goto block_88;
                                }
                                goto block_136;
                            }
                            var_t9 = 4;
                            if (sp148 < 0) {
block_136:
                                var_t9 |= 2;
                                if (sp118 == 0) {
                                    goto block_137;
                                }
                                goto block_89;
                            }
block_88:
                            if (sp118 != 0) {
block_89:
                                var_a1_2 = sp120;
                                var_gp = 0;
                                sp1B8 = (s64) var_s1;
                                sp168 = sp160;
                            } else {
block_137:
                                sp1B8 = (s64) var_s1;
                                var_t9 |= 1;
                                var_a1_2 = sp128;
                                var_a2_2 = sp120;
                                var_gp = 1;
                                sp168 = spC0;
                            }
                            sp248 = sp198;
                            sp258 = sp198;
                            var_ra = 0;
                            sp178 = var_s7;
                            temp_s6 = var_t9 & 1;
                            temp_s8 = var_t9 & 2;
                            sp250 = var_t9 & 4;
                            var_s2 = sp1B8;
                            var_s0 = sp1B0;
                            sp240 = sp1B0;
                            sp188 = var_s2;
                            var_t9_2 = var_s2;
                            temp_s4 = sp1D0->unk6 - 1;
                            temp_s3 = sp1D0->unk4 - 1;
loop_91:
                            var_a5 = var_t0 & var_t1;
loop_92:
                            if (var_a5 != 0) {
                                var_s1 = (s32) sp1B8;
                                goto block_94;
                            }
                            if ((var_t0 | var_t1) == 0) {
                                var_t0_2 = sp168;
                                var_s1 = (s32) sp1B8;
                                temp_a4_3 = sp248;
                                if (var_ra != 0) {
                                    temp_a5_5 = var_t9_2;
                                    temp_v1_7 = sp178;
                                    sp178 = var_s0;
                                    sp248 = temp_a5_5;
                                    var_t9_2 = temp_a4_3;
                                    temp_a5_6 = var_t2;
                                    var_t2 = var_t8;
                                    var_t8 = temp_a5_6;
                                    var_s0 = temp_v1_7;
                                }
                                if (1 != -1) {
                                    if (var_gp != 0) {
                                        temp_a0 = var_s0 - sp178;
                                        var_a3_2 = sp178 - var_s0;
                                        if (temp_a0 > 0) {
                                            var_a3_2 = temp_a0;
                                        }
                                    } else {
                                        temp_a0_2 = sp248 - var_t9_2;
                                        var_a3_2 = var_t9_2 - sp248;
                                        if (temp_a0_2 > 0) {
                                            var_a3_2 = temp_a0_2;
                                        }
                                    }
                                    var_a0_3 = var_a3_2;
                                    if (var_t8 != 0) {
                                        goto block_175;
                                    }
                                    if (((u32) (spA0->unk10 & 0x3FFFFFFF) >> 0x1C) != 0) {
block_175:
                                        var_a0_3 += 1;
                                    }
                                    temp_a6_4 = var_t9_2 - var_s1;
                                    if (var_a0_3 != 0) {
                                        if (var_t2 != 0) {
                                            if (temp_a6_4 > 0) {
                                                var_a3_3 = temp_a6_4;
                                            } else {
                                                var_a3_3 = var_s1 - var_t9_2;
                                            }
                                            temp_a7_5 = sp178 - sp1C0;
                                            if (temp_a7_5 > 0) {
                                                var_a6_6 = temp_a7_5;
                                                if (var_gp != 0) {
                                                    goto block_182;
                                                }
                                                goto block_199;
                                            }
                                            var_a6_6 = sp1C0 - sp178;
                                            if (var_gp == 0) {
block_199:
                                                var_v1 = (var_a6_6 * var_a1_2) - (var_a3_3 * var_a2_2);
                                            } else {
block_182:
                                                var_v1 = (var_a3_3 * var_a1_2) - (var_a6_6 * var_a2_2);
                                            }
                                            var_t0_2 += var_v1;
                                        }
                                        if (sp130 != 0) {
                                            temp_a7_6 = spE8 & sp1C8;
                                            var_a2_3 = 0;
                                            if (temp_a7_6 < sp110) {
                                                temp_a3_3 = sp110 - temp_a7_6;
                                                var_a6_7 = temp_a3_3 & 3;
                                                if (var_a6_7 != 0) {
                                                    do {
                                                        var_a2_3 += 1;
                                                        var_a6_7 -= 1;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                    } while (var_a6_7 != 0);
                                                }
                                                temp_a6_5 = temp_a3_3 >> 2;
                                                if (temp_a6_5 != 0) {
                                                    if (temp_a6_5 >= 2) {
                                                        var_v0_2 = var_a2_3 + 4;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
loop_191:
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        if (var_v0_2 != (temp_a3_3 - 4)) {
                                                            sp158->unk77C = 0x500;
                                                            sp158->unk77C = 0;
                                                            sp158->unk77C = 0x500;
                                                            sp158->unk77C = 0;
                                                            sp158->unk77C = 0x500;
                                                            sp158->unk77C = 0;
                                                            sp158->unk77C = 0x500;
                                                            sp158->unk77C = 0;
                                                            sp158->unk77C = 0x500;
                                                            sp158->unk77C = 0;
                                                            sp158->unk77C = 0x500;
                                                            sp158->unk77C = 0;
                                                            sp158->unk77C = 0x500;
                                                            sp158->unk77C = 0;
                                                            sp158->unk77C = 0x500;
                                                            var_v0_2 += 8;
                                                            sp158->unk77C = 0;
                                                            if (var_v0_2 != temp_a3_3) {
                                                                goto loop_191;
                                                            }
                                                        }
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                    } else {
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                        sp158->unk77C = 0x500;
                                                        sp158->unk77C = 0;
                                                    }
                                                }
                                            }
                                            sp1C8 = 0;
                                        } else {
                                            sp158->unk77C = 0x500;
                                            sp158->unk77C = 0;
                                            sp158->unk77C = 0x500;
                                            sp158->unk77C = 0;
                                        }
                                        sp158->unk7A8 = 0;
                                        sp158->unk4CC = 0;
                                        sp158->unk77C = (s32) var_t9_2;
                                        sp158->unk77C = (s32) sp178;
                                        sp158->unk77C = (s32) var_t0_2;
                                        sp158->unk77C = (s32) sp150;
                                        sp158->unk77C = (s32) sp148;
                                        sp158->unk77C = var_a0_3;
                                        sp158->unk7A8 = 0;
                                        (spF0 + spF8)->unk40000 = 0;
                                    }
                                    var_t3 = sp1D0 + 8;
                                } else {
block_94:
block_72:
                                    var_t3 = sp1D0 + 8;
                                }
                            } else {
                                temp_a4_4 = sp248;
                                if (var_t0 == 0) {
                                    var_ra = var_ra == 0;
                                    temp_v1_8 = sp178;
                                    sp178 = var_s0;
                                    temp_a5_7 = var_t9_2;
                                    sp248 = temp_a5_7;
                                    var_t9_2 = temp_a4_4;
                                    temp_a4_5 = sp258;
                                    temp_a5_8 = var_s2;
                                    sp258 = temp_a5_8;
                                    var_s2 = temp_a4_5;
                                    temp_a5_9 = var_t0;
                                    var_t0 = var_t1;
                                    temp_v1_9 = var_s7;
                                    var_s0 = temp_v1_8;
                                    temp_v0_2 = sp240;
                                    sp240 = temp_v1_9;
                                    var_t1 = temp_a5_9;
                                    temp_a4_6 = var_t2;
                                    var_t2 = var_t8;
                                    var_t8 = temp_a4_6;
                                    var_s7 = temp_v0_2;
                                }
                                temp_a5_10 = temp_a7_4 - var_s2;
                                var_t2 |= var_t0;
                                if (var_t0 & 8) {
                                    sp170 = temp_s8;
                                    sp190 = temp_a5_10;
                                    if (temp_a5_10 <= 0x7FFFU) {
                                        if (temp_s6 != 0) {
                                            var_a0_4 = 0x34;
                                            if (var_ra == 0) {
                                                var_a0_4 = 0x3C;
                                            }
                                        } else {
                                            var_a0_4 = 0x1A;
                                            if (var_ra == 0) {
                                                var_a0_4 = 0x12;
                                            }
                                        }
                                        sp180 = var_a0_4;
                                        sp138 = var_s7;
                                    } else {
                                        sp190 = sp258 - temp_a7_4;
                                        if (temp_s6 != 0) {
                                            var_a0_5 = 0x18;
                                            if (var_ra == 0) {
                                                var_a0_5 = 0x10;
                                            }
                                        } else {
                                            var_a0_5 = 0x12;
                                            if (var_ra == 0) {
                                                var_a0_5 = 0x1A;
                                            }
                                        }
                                        sp180 = var_a0_5;
                                        sp138 = sp240;
                                        sp170 = sp170 == 0;
                                    }
                                    var_t9_2 = (s64) temp_a7_4;
                                } else if (var_t0 & 2) {
                                    sp170 = sp250;
                                    temp_a4_7 = temp_a6_3 - var_s7;
                                    sp190 = temp_a4_7;
                                    if (temp_a4_7 <= 0x7FFFU) {
                                        if (temp_s6 != 0) {
                                            var_a0_6 = 9;
                                            if (var_ra == 0) {
                                                var_a0_6 = 1;
                                            }
                                        } else {
                                            var_a0_6 = 0x27;
                                            if (var_ra == 0) {
                                                var_a0_6 = 0x2F;
                                            }
                                        }
                                        sp180 = var_a0_6;
                                        sp138 = var_s2;
                                    } else {
                                        sp190 = sp240 - temp_a6_3;
                                        if (temp_s6 != 0) {
                                            var_a0_7 = 1;
                                            if (var_ra == 0) {
                                                var_a0_7 = 9;
                                            }
                                        } else {
                                            var_a0_7 = 0xB;
                                            if (var_ra == 0) {
                                                var_a0_7 = 3;
                                            }
                                        }
                                        sp180 = var_a0_7;
                                        sp170 = sp170 == 0;
                                        sp138 = sp258;
                                    }
                                    sp178 = (s64) temp_a6_3;
                                } else {
                                    temp_a4_8 = var_s2 - temp_s3;
                                    if (var_t0 & 4) {
                                        sp170 = temp_s8;
                                        sp190 = temp_a4_8;
                                        if (temp_a4_8 <= 0x7FFFU) {
                                            if (temp_s6 != 0) {
                                                var_a0_8 = 0x34;
                                                if (var_ra == 0) {
                                                    var_a0_8 = 0x3C;
                                                }
                                            } else {
                                                var_a0_8 = 0x1A;
                                                if (var_ra == 0) {
                                                    var_a0_8 = 0x12;
                                                }
                                            }
                                            sp180 = var_a0_8;
                                            sp138 = var_s7;
                                        } else {
                                            sp190 = temp_s3 - sp258;
                                            if (temp_s6 != 0) {
                                                var_a0_9 = 0x18;
                                                if (var_ra == 0) {
                                                    var_a0_9 = 0x10;
                                                }
                                            } else {
                                                var_a0_9 = 0x12;
                                                if (var_ra == 0) {
                                                    var_a0_9 = 0x1A;
                                                }
                                            }
                                            sp180 = var_a0_9;
                                            sp138 = sp240;
                                            sp170 = sp170 == 0;
                                        }
                                        var_t9_2 = temp_s3;
                                    } else if (var_t0 & 1) {
                                        sp170 = sp250;
                                        temp_v0_3 = var_s7 - temp_s4;
                                        sp190 = temp_v0_3;
                                        if (temp_v0_3 <= 0x7FFFU) {
                                            if (temp_s6 != 0) {
                                                var_a0_10 = 9;
                                                if (var_ra == 0) {
                                                    var_a0_10 = 1;
                                                }
                                            } else {
                                                var_a0_10 = 0x27;
                                                if (var_ra == 0) {
                                                    var_a0_10 = 0x2F;
                                                }
                                            }
                                            sp180 = var_a0_10;
                                            sp138 = var_s2;
                                        } else {
                                            sp190 = temp_s4 - sp240;
                                            if (temp_s6 != 0) {
                                                var_a0_11 = 1;
                                                if (var_ra == 0) {
                                                    var_a0_11 = 9;
                                                }
                                            } else {
                                                var_a0_11 = 0xB;
                                                if (var_ra == 0) {
                                                    var_a0_11 = 3;
                                                }
                                            }
                                            sp180 = var_a0_11;
                                            sp138 = sp258;
                                            sp170 = sp170 == 0;
                                        }
                                        sp178 = temp_s4;
                                    }
                                }
                                if (var_ra != 0) {
                                    sp170 = sp170 == 0;
                                }
                                var_t0 = 0;
                                temp_a6_6 = sp180 & 1;
                                temp_a3_4 = sp190 * 2;
                                if (temp_a6_6 != 0) {
                                    var_a0_12 = sp160 * temp_a3_4;
                                } else {
                                    var_a0_12 = spC0 * temp_a3_4;
                                }
                                var_a4 = spC0;
                                temp_a3_5 = sp180 & 4;
                                if (sp180 & 2) {
                                    var_a4 = sp160;
                                    if (temp_a3_5 != 0) {
                                        goto block_116;
                                    }
                                    var_a0_13 = sp160 + var_a0_12;
                                } else if (temp_a3_5 == 0) {
                                    var_a0_13 = spC0 + var_a0_12;
                                } else {
block_116:
                                    var_a0_13 = var_a0_12 - var_a4;
                                }
                                if (sp180 & 8) {
                                    var_a0_14 = (var_a0_13 + temp_s5) - 1;
                                } else {
                                    var_a0_14 = var_a0_13 - temp_s5;
                                }
                                if (sp180 & 0x10) {
                                    M2C_TRAP_IF(sp100 == 0);
                                    sp190 = (u64) (var_a0_14 / sp100);
                                } else {
                                    M2C_TRAP_IF(spB0 == 0);
                                    sp190 = (u64) (var_a0_14 / spB0);
                                }
                                if (sp180 & 0x20) {
                                    sp190 += 1;
                                }
                                if (sp170 != 0) {
                                    sp190 = -(s64) sp190;
                                }
                                temp_a0_3 = sp138 + sp190;
                                if (temp_a6_6 != 0) {
                                    var_t9_2 = temp_a0_3;
                                } else {
                                    sp178 = temp_a0_3;
                                }
                                if (var_t9_2 < temp_a7_4) {
                                    var_t0 = 8;
                                }
                                if (temp_s3 < var_t9_2) {
                                    var_t0 |= 4;
                                }
                                if (sp178 < temp_a6_3) {
                                    var_t0 |= 2;
                                }
                                var_a5 = var_t0 & var_t1;
                                if (temp_s4 < sp178) {
                                    var_t0 |= 1;
                                    goto loop_91;
                                }
                                goto loop_92;
                            }
                            sp1D0 = var_t3;
                            temp_a4_9 = sp1A8 + 1;
                            sp1A8 = temp_a4_9;
                            if (temp_a4_9 != sp1A0) {
                                goto loop_74;
                            }
                        } else {
                            sp158->unk77C = var_s1;
                            sp1C8 += 1;
                            sp158->unk77C = (s32) sp1C0;
                            sp158->unk77C = (s32) sp198;
                            sp158->unk77C = (s32) sp1B0;
                        }
                    }
                }
                temp_a4_10 = sp140 + 8;
                sp140 = temp_a4_10;
                if (temp_a4_10 != spC8) {
                    goto loop_21;
                }
            }
            if (sp130 != 0) {
                temp_a7_7 = (sp110 - 1) & sp1C8;
                if (temp_a7_7 < sp110) {
                    var_a6_8 = 0;
                    temp_a3_6 = sp110 - temp_a7_7;
                    var_a0_15 = temp_a3_6 & 3;
                    if (var_a0_15 != 0) {
                        do {
                            var_a6_8 += 1;
                            var_a0_15 -= 1;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                        } while (var_a0_15 != 0);
                    }
                    temp_a0_4 = temp_a3_6 >> 2;
                    if (temp_a0_4 != 0) {
                        if (temp_a0_4 >= 2) {
                            var_v0_3 = var_a6_8 + 4;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
loop_251:
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            if (var_v0_3 != (temp_a3_6 - 4)) {
                                sp158->unk77C = 0x500;
                                sp158->unk77C = 0x400;
                                sp158->unk77C = 0x500;
                                sp158->unk77C = 0x400;
                                sp158->unk77C = 0x500;
                                sp158->unk77C = 0x400;
                                sp158->unk77C = 0x500;
                                sp158->unk77C = 0x400;
                                sp158->unk77C = 0x500;
                                sp158->unk77C = 0x400;
                                sp158->unk77C = 0x500;
                                sp158->unk77C = 0x400;
                                sp158->unk77C = 0x500;
                                sp158->unk77C = 0x400;
                                sp158->unk77C = 0x500;
                                var_v0_3 += 8;
                                sp158->unk77C = 0x400;
                                if (var_v0_3 != temp_a3_6) {
                                    goto loop_251;
                                }
                            }
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                        } else {
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                            sp158->unk77C = 0x500;
                            sp158->unk77C = 0x400;
                        }
                    }
                }
            } else {
                sp158->unk77C = 0x500;
                sp158->unk77C = 0;
                sp158->unk77C = 0x500;
                sp158->unk77C = 0;
            }
            sp158->unk7A8 = 0;
        }
        return;
    }
    temp_t1_2 = expScreenPrivateIndex * 4;
    temp_t2_4 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
    temp_v0_4 = **(spA0->unk0->unk1B4 + temp_t1_2);
    sp30 = (s64) temp_v0_4;
    sp90 = temp_v0_4 + 0x40000;
    switch (temp_t2_4) {                            /* switch 2; irregular */
    default:                                        /* switch 2 */
        sp90->unk52C = (s32) (temp_t2_4 | 0x1000);
        sp90->unk4D4 = 0;
        var_a6_9 = temp_a7->unk4C;
        var_a7_3 = temp_a7->unk15 * 8;
        break;
    case 13:                                        /* switch 2 */
        sp90->unk52C = 0x100B;
        var_a7_3 = 1;
        var_a6_9 = 0;
        sp90->unk4D4 = (s32) (temp_a7->unk4C & 3);
        break;
    case 12:                                        /* switch 2 */
        sp90->unk52C = 0x1008;
        var_a7_3 = 1;
        var_a6_9 = 0;
        sp90->unk4D4 = (s32) (temp_a7->unk4C & 0xF);
        break;
    case 14:                                        /* switch 2 */
        sp90->unk52C = 0x100B;
        var_a7_3 = 9;
        var_a6_9 = 0;
        sp90->unk4D4 = (s32) (temp_a7->unk4C & 0xC);
        break;
    }
    sp90->unk530 = (s32) temp_a7->unk40;
    sp90->unk77C = (s32) (var_a6_9 & 0xFFFFFF);
    sp90->unk77C = (s32) temp_a7->unk48;
    sp90->unk77C = var_a7_3;
    sp90->unk520 = 0xA;
    sp90->unk528 = (s32) spA8->unk0;
    sp90->unk77C = (s32) (spA8->unk4 - 1);
    sp90->unk77C = (s32) spA8->unk2;
    sp90->unk77C = (s32) (spA8->unk6 - 1);
    var_t9_3 = 0;
    temp_t0_4 = (*(spA0->unk0->unk1B4 + temp_t1_2))->unk8->unk36;
    sp40 = (s64) temp_t0_4;
    temp_t0_5 = (s32) temp_t0_4 < 5;
    if (((u32) (spA0->unk10 & 0x3FFFFFFF) >> 0x1C) != 0) {
        if (temp_t0_5 != 0) {
            var_a6_10 = 0x159;
            sp90->unk564 = 0;
        } else {
            var_a6_10 = 0x164;
            sp90->unk590 = 0;
        }
        sp88 = 1;
    } else {
        if (temp_t0_5 != 0) {
            var_a6_10 = 0x12D;
            sp90->unk4B4 = 0;
        } else {
            var_a6_10 = 0x163;
            sp90->unk58C = 0;
        }
        sp88 = 0;
    }
    var_s7_2 = arg0->unkA;
    var_s4 = arg0->unk8;
    if (arg2 > 0) {
        spB8 = arg3;
        sp60 = (s64) sp1C;
        sp80 = (u64) sp18;
        sp28 = var_a6_10 * 4;
        sp38 = (s64) sp10;
        sp68 = (s64) sp14;
        sp98 = (arg2 * 8) + arg3;
        sp20 = sp40 - 1;
loop_294:
        var_s3 = 0;
        var_t0_3 = spB8->unk2 + var_s7_2;
        var_a3_4 = spB8->unk0 + var_s4;
        var_a7_4 = spB8->unk6 + var_s7_2;
        var_a6_11 = spB8->unk4 + var_s4;
        if ((var_a3_4 | var_t0_3 | (var_a6_11 | var_a7_4)) & ~0x7FF) {
            temp_a5_11 = var_a6_11;
            if (var_a3_4 == var_a6_11) {
                var_a6_12 = 1;
                if ((var_a3_4 >= spA8->unk0) && (var_a3_4 < spA8->unk4)) {
                    var_a6_12 = 0;
                }
                if (var_a6_12 != 0) {

                } else {
                    if (var_a7_4 < var_t0_3) {
                        temp_v0_5 = var_a7_4;
                        if (sp88 != 0) {
                            var_a7_4 = var_t0_3;
                            var_t0_3 = temp_v0_5;
                        } else {
                            temp_v1_10 = var_a7_4;
                            var_a7_4 = var_t0_3 + 1;
                            var_t0_3 = temp_v1_10 + 1;
                        }
                    }
                    temp_t3 = spA8->unk2;
                    var_a2_4 = var_t0_3;
                    if (temp_t3 >= var_t0_3) {
                        var_a2_4 = temp_t3;
                    }
                    temp_a6_7 = spA8->unk6;
                    if (sp88 != 0) {
                        temp_t1_3 = temp_a6_7 - 1;
                        var_t0_4 = var_a7_4;
                        if (var_a7_4 >= temp_t1_3) {
                            var_t0_4 = temp_t1_3;
                        }
                    } else {
                        var_t0_4 = var_a7_4;
                        if (var_a7_4 >= temp_a6_7) {
                            var_t0_4 = temp_a6_7;
                        }
                    }
                    if (var_t0_4 >= var_a2_4) {
                        var_t9_3 += 1;
                        sp90->unk77C = var_a3_4;
                        sp90->unk77C = (s32) var_a2_4;
                        sp90->unk77C = var_a3_4;
                        sp90->unk77C = (s32) var_t0_4;
                    }
                }
            } else {
                temp_t3_2 = spA8->unk2;
                var_t2_2 = 0;
                temp_ra = var_t0_3 < temp_t3_2;
                if (var_t0_3 == var_a7_4) {
                    if (temp_ra != 0) {
                        goto block_301;
                    }
                    var_t1_2 = 0;
                    if (var_t0_3 < spA8->unk6) {

                    } else {
block_301:
                        var_t1_2 = 1;
                    }
                    temp_a4_11 = var_a6_11;
                    if (var_t1_2 == 0) {
                        if (var_a6_11 < var_a3_4) {
                            var_a6_11 = var_a3_4;
                            if (sp88 != 0) {
                                var_a3_4 = temp_a4_11;
                            } else {
                                var_a6_11 = var_a3_4 + 1;
                                var_a3_4 = temp_a5_11 + 1;
                            }
                        }
                        temp_t8 = spA8->unk0;
                        var_a2_5 = var_a3_4;
                        if (temp_t8 < var_a3_4) {

                        } else {
                            var_a2_5 = (s32) temp_t8;
                        }
                        temp_a3_7 = spA8->unk4;
                        if (sp88 != 0) {
                            temp_t1_4 = temp_a3_7 - 1;
                            var_a3_5 = var_a6_11;
                            if (var_a6_11 < temp_t1_4) {

                            } else {
                                var_a3_5 = temp_t1_4;
                            }
                            var_a6_13 = var_a3_5;
                        } else {
                            var_t1_3 = var_a6_11;
                            if (var_a6_11 >= temp_a3_7) {
                                var_t1_3 = (s32) temp_a3_7;
                            }
                            var_a6_13 = var_t1_3;
                        }
                        if (var_a6_13 >= var_a2_5) {
                            var_t9_3 += 1;
                            sp90->unk77C = var_a2_5;
                            sp90->unk77C = (s32) var_t0_3;
                            sp90->unk77C = var_a6_13;
                            sp90->unk77C = (s32) var_a7_4;
                        }
                    }
                } else {
                    temp_t8_2 = spA8->unk0;
                    var_t1_4 = 0;
                    if (var_a3_4 < temp_t8_2) {
                        var_t1_4 = 8;
                        if (temp_ra == 0) {
                            goto block_311;
                        }
                        goto block_316;
                    }
                    if (var_a3_4 >= spA8->unk4) {
                        var_t1_4 = 4;
                    }
                    if (temp_ra != 0) {
block_316:
                        var_t1_4 |= 2;
                        goto block_317;
                    }
block_311:
                    var_a4_2 = var_a6_11 < temp_t8_2;
                    if (var_t0_3 >= ((void *) spA8)->unk6) {
                        var_t1_4 |= 1;
block_317:
                        var_a4_2 = var_a6_11 < temp_t8_2;
                    }
                    if (var_a4_2 != 0) {
                        var_t2_2 = 8;
                        goto block_320;
                    }
                    var_a5_2 = var_a7_4 < temp_t3_2;
                    if (var_a6_11 >= spA8->unk4) {
                        var_t2_2 = 4;
block_320:
                        var_a5_2 = var_a7_4 < temp_t3_2;
                    }
                    if (var_a5_2 != 0) {
                        var_t2_2 |= 2;
                        goto block_323;
                    }
                    var_v0_4 = var_t1_4 & var_t2_2;
                    if (var_a7_4 >= spA8->unk6) {
                        var_t2_2 |= 1;
block_323:
                        var_v0_4 = var_t1_4 & var_t2_2;
                    }
                    if (var_v0_4 == 0) {
                        temp_s1 = var_a6_11 - var_a3_4;
                        if (temp_s1 < 0) {
                            var_s3 = 4;
                        }
                        temp_a2 = var_a7_4 - var_t0_3;
                        if (temp_a2 < 0) {
                            var_s3 |= 2;
                        }
                        var_s8 = var_a7_4;
                        temp_s6_2 = temp_a2 - ((temp_a2 * 2) & (temp_a2 >> 0x1F));
                        temp_s0 = temp_s6_2 * 2;
                        temp_s2 = temp_s1 - ((temp_s1 * 2) & (temp_s1 >> 0x1F));
                        temp_ra_2 = temp_s2 * 2;
                        if (temp_s6_2 < temp_s2) {
                            sp2C0 = (s64) var_s4;
                            sp2B8 = (s64) var_s7_2;
                            sp50 = temp_a2;
                            sp48 = temp_s1;
                            var_gp_2 = 0;
                            sp230 = temp_s0;
                            sp238 = temp_ra_2;
                            sp58 = temp_s2;
                        } else {
                            var_gp_2 = 1;
                            sp2C0 = (s64) var_s4;
                            sp2B8 = (s64) var_s7_2;
                            sp50 = temp_a2;
                            sp48 = temp_s1;
                            var_s3 |= 1;
                            sp58 = temp_s6_2;
                            sp238 = temp_s0;
                            sp230 = temp_ra_2;
                        }
                        var_s5 = 0;
                        var_s1_2 = 0;
                        sp200 = (s64) var_a7_4;
                        sp210 = (s64) var_a6_11;
                        sp208 = (s64) var_a6_11;
                        sp70 = (s64) var_t0_3;
                        sp1E8 = (s64) var_t0_3;
                        sp78 = (s64) var_a3_4;
                        sp1E0 = var_s3 & 1;
                        sp1F0 = var_s3 & 2;
                        sp218 = temp_s6_2 * 2;
                        sp220 = var_s3 & 4;
                        var_a0_16 = var_a3_4;
                        var_s7_3 = 0;
                        var_ra_2 = var_t1_4;
                        var_t3_2 = var_t0_3;
                        sp1D8 = 0 & 1;
                        sp1F8 = temp_s2 * 2;
                        var_s0_2 = var_t2_2;
                        var_t2_3 = var_a3_4;
                        temp_a2_2 = spA8->unk4 - 1;
                        sp228 = spA8->unk6 - 1;
loop_350:
                        var_v0_5 = var_ra_2 & var_s0_2;
loop_351:
                        if (var_v0_5 != 0) {
                            var_a2_6 = -1;
                            var_s1_2 = var_ra_2;
                            var_s5 = var_s0_2;
                            var_s7_2 = (s16) sp2B8;
                            var_s4 = (s16) sp2C0;
                        } else {
                            temp_v1_11 = var_t2_3;
                            if ((var_ra_2 | var_s0_2) != 0) {
                                temp_a4_12 = var_a0_16;
                                if (var_ra_2 == 0) {
                                    var_s7_3 = var_s7_3 == 0;
                                    temp_a5_12 = var_t3_2;
                                    var_t3_2 = var_s8;
                                    temp_v0_6 = sp210;
                                    var_s8 = temp_a5_12;
                                    sp210 = (s64) temp_v1_11;
                                    var_t2_3 = (s32) temp_v0_6;
                                    temp_v1_12 = sp208;
                                    sp208 = (s64) temp_a4_12;
                                    temp_a5_13 = sp1E8;
                                    var_a0_16 = (s32) temp_v1_12;
                                    temp_a4_13 = sp200;
                                    sp200 = temp_a5_13;
                                    temp_v1_13 = var_ra_2;
                                    var_ra_2 = var_s0_2;
                                    var_s0_2 = temp_v1_13;
                                    sp1E8 = temp_a4_13;
                                    temp_v0_7 = var_s1_2;
                                    var_s1_2 = var_s5;
                                    var_s5 = temp_v0_7;
                                }
                                var_s1_2 |= var_ra_2;
                                if (var_ra_2 & 8) {
                                    temp_v0_8 = temp_t8_2 - var_a0_16;
                                    sp80 = temp_v0_8;
                                    sp60 = sp1F0;
                                    if (temp_v0_8 <= 0x7FFFU) {
                                        if (sp1E0 != 0) {
                                            var_a6_14 = 0x34;
                                            if (var_s7_3 == 0) {
                                                var_a6_14 = 0x3C;
                                            }
                                        } else {
                                            var_a6_14 = 0x1A;
                                            if (var_s7_3 == 0) {
                                                var_a6_14 = 0x12;
                                            }
                                        }
                                        sp68 = var_a6_14;
                                        sp38 = sp1E8;
                                    } else {
                                        sp80 = sp208 - temp_t8_2;
                                        if (sp1E0 != 0) {
                                            var_a6_15 = 0x18;
                                            if (var_s7_3 == 0) {
                                                var_a6_15 = 0x10;
                                            }
                                        } else {
                                            var_a6_15 = 0x12;
                                            if (var_s7_3 == 0) {
                                                var_a6_15 = 0x1A;
                                            }
                                        }
                                        sp68 = var_a6_15;
                                        sp38 = sp200;
                                        sp60 = sp60 == 0;
                                    }
                                    var_t2_3 = (s32) temp_t8_2;
                                } else if (var_ra_2 & 2) {
                                    temp_v0_9 = temp_t3_2 - sp1E8;
                                    sp80 = temp_v0_9;
                                    sp60 = sp220;
                                    if (temp_v0_9 <= 0x7FFFU) {
                                        if (sp1E0 != 0) {
                                            var_a6_16 = 9;
                                            if (var_s7_3 == 0) {
                                                var_a6_16 = 1;
                                            }
                                        } else {
                                            var_a6_16 = 0x27;
                                            if (var_s7_3 == 0) {
                                                var_a6_16 = 0x2F;
                                            }
                                        }
                                        sp68 = var_a6_16;
                                        sp38 = (s64) var_a0_16;
                                    } else {
                                        sp80 = sp200 - temp_t3_2;
                                        if (sp1E0 != 0) {
                                            var_a6_17 = 1;
                                            if (var_s7_3 == 0) {
                                                var_a6_17 = 9;
                                            }
                                        } else {
                                            var_a6_17 = 0xB;
                                            if (var_s7_3 == 0) {
                                                var_a6_17 = 3;
                                            }
                                        }
                                        sp68 = var_a6_17;
                                        sp60 = sp60 == 0;
                                        sp38 = sp208;
                                    }
                                    var_t3_2 = temp_t3_2;
                                } else {
                                    temp_v0_10 = var_a0_16 - temp_a2_2;
                                    if (var_ra_2 & 4) {
                                        sp80 = temp_v0_10;
                                        sp60 = sp1F0;
                                        if (temp_v0_10 <= 0x7FFFU) {
                                            if (sp1E0 != 0) {
                                                var_a6_18 = 0x34;
                                                if (var_s7_3 == 0) {
                                                    var_a6_18 = 0x3C;
                                                }
                                            } else {
                                                var_a6_18 = 0x1A;
                                                if (var_s7_3 == 0) {
                                                    var_a6_18 = 0x12;
                                                }
                                            }
                                            sp68 = var_a6_18;
                                            sp38 = sp1E8;
                                        } else {
                                            sp80 = temp_a2_2 - sp208;
                                            if (sp1E0 != 0) {
                                                var_a6_19 = 0x18;
                                                if (var_s7_3 == 0) {
                                                    var_a6_19 = 0x10;
                                                }
                                            } else {
                                                var_a6_19 = 0x12;
                                                if (var_s7_3 == 0) {
                                                    var_a6_19 = 0x1A;
                                                }
                                            }
                                            sp68 = var_a6_19;
                                            sp38 = sp200;
                                            sp60 = sp60 == 0;
                                        }
                                        var_t2_3 = temp_a2_2;
                                    } else if (var_ra_2 & 1) {
                                        sp60 = sp220;
                                        temp_v1_14 = sp1E8 - sp228;
                                        sp80 = temp_v1_14;
                                        if (temp_v1_14 <= 0x7FFFU) {
                                            if (sp1E0 != 0) {
                                                var_a6_20 = 9;
                                                if (var_s7_3 == 0) {
                                                    var_a6_20 = 1;
                                                }
                                            } else {
                                                var_a6_20 = 0x27;
                                                if (var_s7_3 == 0) {
                                                    var_a6_20 = 0x2F;
                                                }
                                            }
                                            sp68 = var_a6_20;
                                            sp38 = (s64) var_a0_16;
                                        } else {
                                            sp80 = sp228 - sp200;
                                            if (sp1E0 != 0) {
                                                var_a6_21 = 1;
                                                if (var_s7_3 == 0) {
                                                    var_a6_21 = 9;
                                                }
                                            } else {
                                                var_a6_21 = 0xB;
                                                if (var_s7_3 == 0) {
                                                    var_a6_21 = 3;
                                                }
                                            }
                                            sp68 = var_a6_21;
                                            sp38 = sp208;
                                            sp60 = sp60 == 0;
                                        }
                                        var_t3_2 = (s16) sp228;
                                    }
                                }
                                if (var_s7_3 != 0) {
                                    sp60 = sp60 == 0;
                                }
                                temp_a7_8 = sp68 & 1;
                                temp_t1_5 = sp80 * 2;
                                if (temp_a7_8 != 0) {
                                    var_a6_22 = temp_s2 * temp_t1_5;
                                } else {
                                    var_a6_22 = temp_s6_2 * temp_t1_5;
                                }
                                temp_t1_6 = sp68 & 4;
                                if (sp68 & 2) {
                                    if (temp_t1_6 != 0) {
                                        var_a6_23 = var_a6_22 - temp_s2;
                                    } else {
                                        var_a6_23 = temp_s2 + var_a6_22;
                                    }
                                } else if (temp_t1_6 != 0) {
                                    var_a6_23 = var_a6_22 - temp_s6_2;
                                } else {
                                    var_a6_23 = temp_s6_2 + var_a6_22;
                                }
                                if (sp68 & 8) {
                                    var_a6_24 = (var_a6_23 + sp1D8) - 1;
                                } else {
                                    var_a6_24 = var_a6_23 - sp1D8;
                                }
                                var_ra_2 = 0;
                                if (sp68 & 0x10) {
                                    M2C_TRAP_IF(sp1F8 == 0);
                                    sp80 = (u64) (var_a6_24 / sp1F8);
                                } else {
                                    M2C_TRAP_IF(sp218 == 0);
                                    sp80 = (u64) (var_a6_24 / sp218);
                                }
                                if (sp68 & 0x20) {
                                    sp80 += 1;
                                }
                                if (sp60 != 0) {
                                    sp80 = -(s64) sp80;
                                }
                                temp_a6_8 = sp38 + sp80;
                                if (temp_a7_8 != 0) {
                                    var_t2_3 = temp_a6_8;
                                } else {
                                    var_t3_2 = (s16) temp_a6_8;
                                }
                                if (var_t2_3 < temp_t8_2) {
                                    var_ra_2 = 8;
                                }
                                if (temp_a2_2 < var_t2_3) {
                                    var_ra_2 |= 4;
                                }
                                if (var_t3_2 < temp_t3_2) {
                                    var_ra_2 |= 2;
                                }
                                var_v0_5 = var_ra_2 & var_s0_2;
                                if (sp228 < var_t3_2) {
                                    var_ra_2 |= 1;
                                    goto loop_350;
                                }
                                goto loop_351;
                            }
                            var_a2_6 = 1;
                            var_s7_2 = (s16) sp2B8;
                            var_s4 = (s16) sp2C0;
                            if (var_s7_3 != 0) {
                                temp_s7 = var_s1_2;
                                var_s1_2 = var_s5;
                                temp_v0_11 = var_t3_2;
                                var_t3_2 = var_s8;
                                temp_a4_14 = var_t2_3;
                                temp_v1_15 = sp210;
                                sp210 = (s64) temp_a4_14;
                                var_s8 = temp_v0_11;
                                var_s5 = temp_s7;
                                var_s7_2 = (s16) sp2B8;
                                var_t2_3 = (s32) temp_v1_15;
                            }
                        }
                        if (var_a2_6 != -1) {
                            temp_a6_9 = var_s8 - var_t3_2;
                            if (var_gp_2 != 0) {
                                var_a2_7 = temp_a6_9;
                                if (temp_a6_9 <= 0) {
                                    var_a2_7 = var_t3_2 - var_s8;
                                }
                            } else {
                                temp_a6_10 = sp210 - var_t2_3;
                                var_a2_7 = temp_a6_10;
                                if (temp_a6_10 <= 0) {
                                    var_a2_7 = var_t2_3 - sp210;
                                }
                            }
                            var_t1_5 = var_a2_7;
                            if (var_s5 != 0) {
                                goto block_357;
                            }
                            if (((u32) (spA0->unk10 & 0x3FFFFFFF) >> 0x1C) != 0) {
block_357:
                                var_t1_5 += 1;
                            }
                            if (var_t1_5 != 0) {
                                temp_a6_11 = var_t2_3 - var_a3_4;
                                if (var_s1_2 != 0) {
                                    var_a2_8 = temp_a6_11;
                                    if (temp_a6_11 <= 0) {
                                        var_a2_8 = var_a3_4 - var_t2_3;
                                    }
                                    temp_a6_12 = var_t3_2 - var_t0_3;
                                    if (temp_a6_12 > 0) {
                                        var_a3_6 = temp_a6_12;
                                        if (var_gp_2 != 0) {
                                            goto block_363;
                                        }
                                        goto block_448;
                                    }
                                    var_a3_6 = var_t0_3 - var_t3_2;
                                    if (var_gp_2 == 0) {
block_448:
                                        sp58 += (var_a3_6 * sp238) - (var_a2_8 * sp230);
                                    } else {
block_363:
                                        sp58 += (var_a2_8 * sp238) - (var_a3_6 * sp230);
                                    }
                                }
                                if (sp88 != 0) {
                                    temp_a7_9 = sp20 & var_t9_3;
                                    var_a2_9 = 0;
                                    if (temp_a7_9 < sp40) {
                                        temp_a3_8 = sp40 - temp_a7_9;
                                        var_a6_25 = temp_a3_8 & 3;
                                        if (var_a6_25 != 0) {
                                            do {
                                                var_a2_9 += 1;
                                                var_a6_25 -= 1;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                            } while (var_a6_25 != 0);
                                        }
                                        temp_a6_13 = temp_a3_8 >> 2;
                                        if (temp_a6_13 != 0) {
                                            if (temp_a6_13 >= 2) {
                                                var_v0_6 = var_a2_9 + 4;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
loop_371:
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                if (var_v0_6 != (temp_a3_8 - 4)) {
                                                    sp90->unk77C = 0x500;
                                                    sp90->unk77C = 0x400;
                                                    sp90->unk77C = 0x500;
                                                    sp90->unk77C = 0x400;
                                                    sp90->unk77C = 0x500;
                                                    sp90->unk77C = 0x400;
                                                    sp90->unk77C = 0x500;
                                                    sp90->unk77C = 0x400;
                                                    sp90->unk77C = 0x500;
                                                    sp90->unk77C = 0x400;
                                                    sp90->unk77C = 0x500;
                                                    sp90->unk77C = 0x400;
                                                    sp90->unk77C = 0x500;
                                                    sp90->unk77C = 0x400;
                                                    sp90->unk77C = 0x500;
                                                    var_v0_6 += 8;
                                                    sp90->unk77C = 0x400;
                                                    if (var_v0_6 == temp_a3_8) {

                                                    } else {
                                                        goto loop_371;
                                                    }
                                                }
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                            } else {
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                                sp90->unk77C = 0x500;
                                                sp90->unk77C = 0x400;
                                            }
                                        }
                                    }
                                    var_t9_3 = 0;
                                } else {
                                    sp90->unk77C = 0x500;
                                    sp90->unk77C = 0;
                                    sp90->unk77C = 0x500;
                                    sp90->unk77C = 0;
                                }
                                sp90->unk7A8 = 0;
                                sp90->unk4CC = 0;
                                sp90->unk77C = var_t2_3;
                                sp90->unk77C = (s32) var_t3_2;
                                sp90->unk77C = (s32) sp58;
                                sp90->unk77C = (s32) sp48;
                                sp90->unk77C = (s32) sp50;
                                sp90->unk77C = var_t1_5;
                                sp90->unk7A8 = 0;
                                (sp28 + sp30)->unk40000 = 0;
                            }
                        }
                    }
                }
            }
        } else {
            var_t9_3 += 1;
            sp90->unk77C = var_a3_4;
            sp90->unk77C = (s32) var_t0_3;
            sp90->unk77C = var_a6_11;
            sp90->unk77C = (s32) var_a7_4;
        }
        temp_a4_15 = spB8 + 8;
        spB8 = temp_a4_15;
        if (temp_a4_15 != sp98) {
            goto loop_294;
        }
    }
    if (sp88 != 0) {
        temp_a7_10 = (sp40 - 1) & var_t9_3;
        if (temp_a7_10 < sp40) {
            var_a6_26 = 0;
            temp_a3_9 = sp40 - temp_a7_10;
            var_t0_5 = temp_a3_9 & 3;
            if (var_t0_5 != 0) {
                do {
                    var_a6_26 += 1;
                    var_t0_5 -= 1;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                } while (var_t0_5 != 0);
            }
            temp_a7_11 = temp_a3_9 >> 2;
            if (temp_a7_11 != 0) {
                if (temp_a7_11 >= 2) {
                    var_v0_7 = var_a6_26 + 4;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
loop_431:
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    if (var_v0_7 != (temp_a3_9 - 4)) {
                        sp90->unk77C = 0x500;
                        sp90->unk77C = 0x400;
                        sp90->unk77C = 0x500;
                        sp90->unk77C = 0x400;
                        sp90->unk77C = 0x500;
                        sp90->unk77C = 0x400;
                        sp90->unk77C = 0x500;
                        sp90->unk77C = 0x400;
                        sp90->unk77C = 0x500;
                        sp90->unk77C = 0x400;
                        sp90->unk77C = 0x500;
                        sp90->unk77C = 0x400;
                        sp90->unk77C = 0x500;
                        sp90->unk77C = 0x400;
                        sp90->unk77C = 0x500;
                        var_v0_7 += 8;
                        sp90->unk77C = 0x400;
                        if (var_v0_7 != temp_a3_9) {
                            goto loop_431;
                        }
                    }
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                } else {
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                    sp90->unk77C = 0x400;
                    sp90->unk77C = 0x500;
                }
                ((void *) sp90)->unk77C = 0x400;
            }
        }
    } else {
        sp90->unk77C = 0x500;
        sp90->unk77C = 0;
        sp90->unk77C = 0x500;
        sp90->unk77C = 0;
    }
    sp90->unk7A8 = 0;
    sp90->unk520 = 0xA;
    sp90->unk528 = (s32) temp_at->unk-53A4;
    sp90->unk77C = (s32) (temp_at->unk-53A0 - 1);
    sp90->unk77C = (s32) temp_at->unk-53A2;
    sp90->unk77C = (s32) (temp_at->unk-539E - 1);
}

s64 expZeroPolyArc(s64 arg0, void *arg1, s64 arg2, s64 arg3, ? arg_sp0) {
    s16 temp_a5_4;
    s16 temp_a5_5;
    s16 temp_a5_6;
    s16 temp_a6_6;
    s16 temp_a6_7;
    s16 temp_a6_8;
    s16 temp_a7;
    s16 temp_a7_2;
    s16 temp_a7_3;
    s16 temp_at_4;
    s16 temp_at_5;
    s16 temp_ra;
    s16 temp_s0;
    s16 temp_t0_6;
    s16 temp_t0_7;
    s16 temp_t1_2;
    s16 temp_t3_2;
    s16 temp_t8;
    s16 temp_t8_2;
    s16 temp_v1_3;
    s16 var_a5_2;
    s16 var_a7;
    s16 var_s1_2;
    s16 var_s6_2;
    s16 var_t1_2;
    s16 var_t2;
    s16 var_t3_3;
    s16 var_v0_3;
    s16 var_v0_4;
    s16 var_v1_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3_10;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_7;
    s32 temp_a3_8;
    s32 temp_a3_9;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5_10;
    s32 temp_a5_11;
    s32 temp_a5_12;
    s32 temp_a5_13;
    s32 temp_a5_14;
    s32 temp_a5_15;
    s32 temp_a5_3;
    s32 temp_a5_8;
    s32 temp_a6_18;
    s32 temp_a6_22;
    s32 temp_a6_23;
    s32 temp_a7_4;
    s32 temp_a7_5;
    s32 temp_a7_6;
    s32 temp_at_10;
    s32 temp_at_11;
    s32 temp_at_12;
    s32 temp_at_14;
    s32 temp_at_6;
    s32 temp_at_8;
    s32 temp_ra_2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s2_4;
    s32 temp_s2_7;
    s32 temp_s2_8;
    s32 temp_s2_9;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_s3_4;
    s32 temp_s3_5;
    s32 temp_s4_2;
    s32 temp_s4_3;
    s32 temp_s4_4;
    s32 temp_s4_5;
    s32 temp_s4_6;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_t0_10;
    s32 temp_t0_11;
    s32 temp_t0_12;
    s32 temp_t0_13;
    s32 temp_t9_3;
    s32 temp_v0_10;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v1;
    s32 temp_v1_12;
    s32 temp_v1_13;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_a6;
    s32 var_a7_2;
    s32 var_a7_3;
    s32 var_a7_4;
    s32 var_a7_5;
    s32 var_at_4;
    s32 var_at_5;
    s32 var_at_7;
    s32 var_ra;
    s32 var_ra_2;
    s32 var_ra_3;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_s1;
    s32 var_s1_3;
    s32 var_s1_4;
    s32 var_s2;
    s32 var_s2_3;
    s32 var_s2_4;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_s6;
    s32 var_s6_3;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_t0;
    s32 var_t1;
    s32 var_t1_3;
    s32 var_t1_4;
    s32 var_t1_5;
    s32 var_t1_6;
    s32 var_t2_2;
    s32 var_t2_3;
    s32 var_t2_4;
    s32 var_t2_5;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_t3_4;
    s32 var_t8;
    s32 var_t8_2;
    s32 var_t8_3;
    s32 var_t9;
    s32 var_t9_2;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_11;
    s32 var_v0_12;
    s32 var_v0_13;
    s32 var_v0_7;
    s32 var_v0_9;
    s32 var_v1_5;
    s32 var_v1_6;
    s32 var_v1_7;
    s32 var_v1_8;
    s64 temp_a3_6;
    s64 temp_a4;
    s64 temp_a5;
    s64 temp_a5_16;
    s64 temp_a5_17;
    s64 temp_a5_2;
    s64 temp_a5_7;
    s64 temp_a6;
    s64 temp_a6_11;
    s64 temp_a6_12;
    s64 temp_a6_13;
    s64 temp_a6_14;
    s64 temp_a6_15;
    s64 temp_a6_16;
    s64 temp_a6_17;
    s64 temp_a6_19;
    s64 temp_a6_20;
    s64 temp_a6_21;
    s64 temp_a6_24;
    s64 temp_a6_25;
    s64 temp_a6_2;
    s64 temp_a6_3;
    s64 temp_a6_4;
    s64 temp_a6_5;
    s64 temp_a6_9;
    s64 temp_at;
    s64 temp_at_13;
    s64 temp_at_15;
    s64 temp_at_2;
    s64 temp_at_3;
    s64 temp_at_7;
    s64 temp_at_9;
    s64 temp_s2_2;
    s64 temp_s2_5;
    s64 temp_s4;
    s64 temp_t0;
    s64 temp_t0_14;
    s64 temp_t0_15;
    s64 temp_t0_16;
    s64 temp_t0_17;
    s64 temp_t0_18;
    s64 temp_t0_19;
    s64 temp_t0_2;
    s64 temp_t0_3;
    s64 temp_t0_4;
    s64 temp_t0_5;
    s64 temp_t0_8;
    s64 temp_t0_9;
    s64 temp_t1;
    s64 temp_t1_3;
    s64 temp_t1_4;
    s64 temp_t2;
    s64 temp_t2_2;
    s64 temp_t3;
    s64 temp_t3_3;
    s64 temp_t9;
    s64 temp_t9_2;
    s64 temp_v0;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_8;
    s64 temp_v1_10;
    s64 temp_v1_11;
    s64 temp_v1_2;
    s64 temp_v1_7;
    s64 temp_v1_8;
    s64 temp_v1_9;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_a3;
    s64 var_a4;
    s64 var_a5;
    s64 var_at;
    s64 var_at_2;
    s64 var_at_3;
    s64 var_s0_2;
    s64 var_v0_2;
    s64 var_v0_5;
    s64 var_v0_6;
    s64 var_v1_3;
    s64 var_v1_4;
    u16 temp_a0_2;
    u16 temp_a5_9;
    u16 temp_a6_10;
    u16 temp_s2;
    u16 temp_s2_3;
    u16 temp_s2_6;
    u16 temp_v0_11;
    u16 temp_v0_2;
    u16 temp_v0_9;
    u16 var_at_6;
    u16 var_s2_2;
    u16 var_v0_8;
    u32 temp_a1_2;
    void *temp_a0;
    void *temp_a3;
    void *var_s0;
    void *var_sp;
    void *var_v1;

    var_sp = sp;
    arg_sp0.unk-1D8 = 0;
    arg_sp0.unk-200 = 0;
    arg_sp0.unk-1D0 = 0;
    arg_sp0.unk-1C8 = 0;
    arg_sp0.unk-188 = (s64) saved_reg_fp;
    arg_sp0.unk-208 = arg0;
    arg_sp0.unk-190 = (s64) saved_reg_gp;
    arg_sp0.unk-1F8 = arg3;
    temp_a3 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    arg_sp0.unk-1B8 = arg2;
    arg_sp0.unk-1E0 = (s64) arg1;
    arg_sp0.unk-1F0 = (s64) temp_a3->unk8;
    temp_v1 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
    temp_a1 = **(arg1->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    arg_sp0.unk-1C0 = (s64) temp_a3;
    arg_sp0.unk-1A8 = (s64) temp_a1;
    arg_sp0.unk-218 = (s64) (temp_a1 + 0x40000);
    if (temp_v1 != 0xD) {
        if (temp_v1 != 0xE) {
            var_t1 = 0;
            if (temp_v1 != 0xC) {
                temp_at = arg_sp0.unk-218;
                temp_t1 = arg_sp0.unk-1C0;
                temp_at->unk52C = (s32) (temp_v1 | 0x1000);
                temp_at->unk4D4 = 0;
                var_t1 = temp_t1->unk34;
                var_v0 = temp_t1->unk15 * 8;
            } else {
                temp_a5 = arg_sp0.unk-218;
                temp_a5->unk52C = 0x1008;
                var_v0 = 1;
                temp_a5->unk4D4 = (s32) (arg_sp0.unk-1C0->unk34 & 0xF);
            }
        } else {
            temp_a6 = arg_sp0.unk-218;
            temp_a6->unk52C = 0x100B;
            var_v0 = 9;
            var_t1 = 0;
            temp_a6->unk4D4 = (s32) (arg_sp0.unk-1C0->unk34 & 0xC);
        }
    } else {
        temp_t0 = arg_sp0.unk-218;
        temp_t0->unk52C = 0x100B;
        var_v0 = 1;
        var_t1 = 0;
        temp_t0->unk4D4 = (s32) (arg_sp0.unk-1C0->unk34 & 3);
    }
    arg_sp0.unk-1A0 = (s64) saved_reg_s7;
    arg_sp0.unk-198 = (s64) saved_reg_s1;
    temp_a6_2 = arg_sp0.unk-1C0;
    temp_t0_2 = arg_sp0.unk-218;
    temp_t0_2->unk530 = (s32) temp_a6_2->unk28;
    temp_t0_2->unk77C = (s32) (var_t1 & 0xFFFFFF);
    arg_sp0.unk-180 = (s64) saved_reg_s2;
    arg_sp0.unk-178 = (s64) saved_reg_s3;
    arg_sp0.unk-170 = (s64) saved_reg_s5;
    temp_t0_2->unk77C = (s32) temp_a6_2->unk30;
    temp_t0_2->unk77C = var_v0;
    arg_sp0.unk-168 = (s64) saved_reg_ra;
    arg_sp0.unk-160 = (s64) saved_reg_s6;
    arg_sp0.unk-158 = (s64) saved_reg_s0;
    temp_t0_2->unk4E0 = (s32) temp_a6_2->unk28;
    arg_sp0.unk-150 = (s64) saved_reg_s4;
    temp_t0_2->unk4DC = (s32) temp_a6_2->unk2C;
    if (arg_sp0.unk-1B8 > 0) {
        arg_sp0.unk-1A0 = (s64) saved_reg_s7;
        arg_sp0.unk-198 = (s64) saved_reg_s1;
        arg_sp0.unk-180 = (s64) saved_reg_s2;
        arg_sp0.unk-178 = (s64) saved_reg_s3;
        arg_sp0.unk-170 = (s64) saved_reg_s5;
        arg_sp0.unk-168 = (s64) saved_reg_ra;
        arg_sp0.unk-160 = (s64) saved_reg_s6;
        arg_sp0.unk-158 = (s64) saved_reg_s0;
        temp_a6_3 = arg_sp0.unk-1B8;
        arg_sp0.unk-150 = (s64) saved_reg_s4;
        arg_sp0.unk-210 = (s64) arg_sp0.unk-1F8;
        arg_sp0.unk-1B0 = (s64) (temp_a6_3 * 0xC);
        arg_sp0.unk-1E8 = (s64) (temp_a6_3 * 0xC);
loop_12:
        temp_v0 = arg_sp0.unk-210;
        temp_s2 = temp_v0->unk4;
        temp_v0_2 = temp_v0->unk6;
        temp_at_2 = arg_sp0.unk-208;
        if (temp_s2 != temp_v0_2) {
            if ((s32) temp_s2 < 0x321) {
                if ((s32) temp_v0_2 < 0x321) {
                    goto block_15;
                }
                goto block_7;
            }
block_7:
            temp_a6_4 = arg_sp0.unk-218;
            if (arg_sp0.unk-200 != 0) {
                arg_sp0.unk-200 = 0;
                temp_a6_4->unk77C = 0x500;
                temp_a6_4->unk77C = 0x400;
                temp_a6_4->unk7A8 = 0;
            } else if (arg_sp0.unk-1D8 != 0) {
                arg_sp0.unk-1D8 = 0;
                arg_sp0.unk-218->unk7A8 = 0;
            }
            var_v0 = _clone_1_miPolyArc(arg_sp0.unk-208, arg_sp0.unk-1E0, arg_sp0.unk-210);
            goto block_10;
        }
block_15:
        temp_v0_3 = arg_sp0.unk-210;
        temp_a5_2 = (s64) ((temp_v0_3->unk0 + temp_at_2->unk8) << 0x30) >> 0x30;
        arg_sp0.unk-30 = (s16) temp_a5_2;
        temp_t3 = (s64) ((temp_v0_3->unk2 + temp_at_2->unkA) << 0x30) >> 0x30;
        arg_sp0.unk-2E = (s16) temp_t3;
        var_v0_3 = temp_v0_3->unk4 + temp_a5_2 + 1;
        if (var_v0_3 > 0x7FFF) {
            var_v0_3 = 0x7FFF;
        }
        arg_sp0.unk-2C = var_v0_3;
        var_a7 = arg_sp0.unk-210->unk6 + temp_t3 + 1;
        if (var_a7 > 0x7FFF) {
            var_a7 = 0x7FFF;
        }
        arg_sp0.unk-2A = var_a7;
        var_v0 = ((void *) arg_sp0.unk-208)->unk10->unk17C(arg_sp0.unk-1F0, &arg_sp0 - 0x30);
        var_a2 = 0x145;
        if (var_v0 != 1) {
            if (var_v0 == 2) {
                temp_s2_2 = arg_sp0.unk-210;
                if (arg_sp0.unk-200 != 0) {
                    temp_t0_3 = arg_sp0.unk-218;
                    arg_sp0.unk-200 = 0;
                    temp_t0_3->unk77C = 0x500;
                    temp_t0_3->unk77C = 0x400;
                    temp_t0_3->unk7A8 = 0;
                } else if (arg_sp0.unk-1D8 != 0) {
                    arg_sp0.unk-1D8 = 0;
                    arg_sp0.unk-218->unk7A8 = 0;
                }
                temp_s2_3 = temp_s2_2->unk4;
                temp_v1_2 = arg_sp0.unk-1B8;
                temp_t0_4 = arg_sp0.unk-1F8;
                if ((temp_s2_2->unk6 == temp_s2_3) && (arg_sp0.unk-210->unkA >= 0x5A00) && ((s32) temp_s2_3 < 0x20)) {
                    temp_s3 = ((temp_s2_3 * 4) + (&local_0x5f0b0000 + 0x4898))->unk760;
                    if ((s32) temp_s2_3 < 0x10) {
                        var_s2 = 2;
                    } else {
                        var_s2 = 4;
                    }
                    temp_a0 = arg_sp0.unk-1F0->unk8;
                    if (temp_a0 != NULL) {
                        var_v1 = temp_a0 + 8;
                        if (temp_a0 != NULL) {
                            goto block_218;
                        }
                        goto block_307;
                    }
                    var_v1 = (void *) arg_sp0.unk-1F0;
                    if (temp_a0 == NULL) {
block_307:
                        var_v0 = 1;
                    } else {
block_218:
                        var_v0 = temp_a0->unk4;
                    }
                    var_s0 = var_v1;
                    if (var_v0 > 0) {
                        temp_s1 = var_v1 + (var_v0 * 8);
loop_256:
                        temp_a7 = var_s0->unk0;
                        temp_t8 = arg_sp0.unk-30;
                        temp_t3_2 = arg_sp0.unk-2E;
                        var_v0_4 = temp_t8;
                        if (temp_t8 < temp_a7) {
                            var_v0_4 = temp_a7;
                        }
                        arg_sp0.unk-38 = var_v0_4;
                        temp_v1_3 = var_s0->unk2;
                        if (temp_t3_2 < temp_v1_3) {
                            var_t2 = temp_v1_3;
                        } else {
                            var_t2 = temp_t3_2;
                        }
                        arg_sp0.unk-36 = var_t2;
                        temp_a7_2 = arg_sp0.unk-2C;
                        temp_t1_2 = var_s0->unk4;
                        var_v1_2 = temp_a7_2;
                        if (temp_t1_2 < temp_a7_2) {
                            var_v1_2 = temp_t1_2;
                        }
                        arg_sp0.unk-34 = var_v1_2;
                        temp_a7_3 = arg_sp0.unk-2A;
                        temp_ra = var_s0->unk6;
                        temp_s4 = (s64) ((s64) var_v0_4 << 0x30) >> 0x30;
                        var_t1_2 = temp_a7_3;
                        if (temp_ra < temp_a7_3) {
                            var_t1_2 = temp_ra;
                        }
                        var_v0 = (s32) var_t2;
                        arg_sp0.unk-32 = var_t1_2;
                        if ((temp_s4 < var_v1_2) && (var_t2 < var_t1_2)) {
                            temp_a4 = arg_sp0.unk-1C0;
                            temp_a1_2 = temp_s4 - temp_t8;
                            temp_t9 = arg_sp0.unk-208;
                            var_v0 = (**(temp_t9->unk84 + (nfbWindowPrivateIndex * 4)))->unkC(&arg_sp0 - 0x38, (temp_a1_2 >> 3) + temp_s3 + ((var_v0 - temp_t3_2) * var_s2), temp_a1_2 & 7, var_s2, temp_a4->unk40, temp_a4->unk48, temp_a4->unk4C, temp_t9);
                        }
                        var_s0 += 8;
                        if (var_s0 != temp_s1) {
                            goto loop_256;
                        }
                    }
                    goto block_10;
                }
                var_v0_2 = temp_t0_4;
                if (arg_sp0.unk-1D0 == 0) {
                    temp_a7_4 = arg_sp0.unk-1B0 + temp_t0_4;
                    if (temp_v1_2 & 1) {
                        var_at = arg_sp0.unk-1C8;
                        temp_a6_5 = var_v0_2->unk4 + var_v0_2->unk6;
                        if (var_at < temp_a6_5) {
                            var_at = temp_a6_5;
                        }
                        var_v0_2 += 0xC;
                        arg_sp0.unk-1C8 = var_at;
                    }
                    temp_t2 = arg_sp0.unk-1C8;
                    temp_a3_2 = temp_v1_2 >> 1;
                    var_a4 = var_v0_2;
                    if (temp_a3_2 != 0) {
                        temp_a5_3 = temp_a7_4 - 0x30;
                        if (temp_a3_2 >= 3) {
                            var_v0_2 = (s64) var_a4->unk12;
                            var_a2_2 = var_a4->unk1C + var_a4->unk1E;
                            var_a3 = var_a4->unk4 + var_a4->unk6;
                            if (temp_t2 >= var_a3) {
                                var_a3 = temp_t2;
                            }
loop_78:
                            var_v0_5 = var_a4->unk10 + var_v0_2;
                            if (var_a3 >= var_v0_5) {
                                var_v0_5 = var_a3;
                            }
                            if (var_v0_5 >= var_a2_2) {
                                var_a2_2 = var_v0_5;
                            }
                            var_a3 = var_a4->unk34 + var_a4->unk36;
                            var_v0_2 = (s64) var_a4->unk2A;
                            if (var_a4 != (temp_a5_3 - 0x18)) {
                                var_v0_6 = var_a4->unk28 + var_v0_2;
                                if (var_a2_2 >= var_v0_6) {
                                    var_v0_6 = var_a2_2;
                                }
                                if (var_v0_6 >= var_a3) {
                                    var_a3 = var_v0_6;
                                }
                                var_a2_2 = var_a4->unk4C + var_a4->unk4E;
                                var_a4 += 0x30;
                                var_v0_2 = (s64) var_a4->unk12;
                                if (var_a4 == temp_a5_3) {
                                    var_v1_3 = var_a4;
                                    temp_at_3 = var_a2_2;
                                    var_a2_2 = var_a3;
                                    var_a3 = temp_at_3;
                                } else {
                                    goto loop_78;
                                }
                            } else {
                                var_v1_3 = var_a4 + 0x18;
                            }
                            var_at_2 = var_v1_3->unk10 + var_v0_2;
                            if (var_a2_2 >= var_at_2) {
                                var_at_2 = var_a2_2;
                            }
                            if (var_at_2 >= var_a3) {
                                var_a3 = var_at_2;
                            }
                            var_a5 = var_v1_3->unk28 + var_v1_3->unk2A;
                            if (var_a3 >= var_a5) {
                                var_a5 = var_a3;
                            }
                            arg_sp0.unk-1C8 = var_a5;
                        } else {
                            var_v0_2 = temp_t2;
                            var_v1_4 = var_a4;
                            do {
                                var_at_3 = var_v1_4->unk4 + var_v1_4->unk6;
                                if (var_v0_2 >= var_at_3) {
                                    var_at_3 = var_v0_2;
                                }
                                var_v0_2 = var_v1_4->unk10 + var_v1_4->unk12;
                                if (var_at_3 >= var_v0_2) {
                                    var_v0_2 = var_at_3;
                                }
                                var_v1_4 += 0x18;
                            } while (var_v1_4 != temp_a7_4);
                            arg_sp0.unk-1C8 = var_v0_2;
                        }
                    }
                    var_sp -= ((arg_sp0.unk-1C8 * 0x10) + 0xF) & ~0xF;
                    arg_sp0.unk-1D0 = (s64) var_sp;
                    if (var_sp != NULL) {
                        goto block_97;
                    }
                    return var_v0_2;
                }
block_97:
                var_s0_2 = arg_sp0.unk-1D0;
                temp_v0_4 = miZeroArcSetup(arg_sp0.unk-210, &arg_sp0 - 0xC0, 1);
                var_a7_2 = arg_sp0.unk-A0;
                var_a2_3 = arg_sp0.unk-A4;
                var_t8 = arg_sp0.unk-A8;
                var_ra = arg_sp0.unk-AC;
                var_t3 = arg_sp0.unk-B0;
                var_t1_3 = arg_sp0.unk-BC;
                var_t2_2 = arg_sp0.unk-C0;
                temp_s5 = arg_sp0.unk-B8;
                temp_s2_4 = arg_sp0.unk-7C;
                temp_a3_3 = arg_sp0.unk-B4;
                var_s7 = temp_s2_4;
                var_s6 = temp_a3_3;
                var_s1 = temp_s5;
                if (!(arg_sp0.unk-210->unk4 & 1)) {
                    if (temp_s2_4 & 2) {
                        temp_t0_5 = arg_sp0.unk-1D0;
                        var_s0_2 = temp_t0_5 + 4;
                        temp_t0_5->unk2 = (s16) arg_sp0.unk-90;
                        temp_t0_5->unk0 = (s16) arg_sp0.unk-8C;
                    }
                    if (temp_s2_4 & 8) {
                        var_s0_2 += 4;
                        var_s0_2->unk-4 = (s16) arg_sp0.unk-8C;
                        var_s0_2->unk-2 = (s16) arg_sp0.unk-88;
                    }
                }
                var_v1_5 = arg_sp0.unk-60;
                var_a4_2 = arg_sp0.unk-5C;
                if ((var_v1_5 == 0) || (var_a4_2 == 0)) {
                    var_s7 = arg_sp0.unk-58;
                    var_a4_2 = arg_sp0.unk-50;
                    var_v1_5 = arg_sp0.unk-54;
                    arg_sp0.unk-58 = (s32) arg_sp0.unk-4C;
                    arg_sp0.unk-5C = var_a4_2;
                    arg_sp0.unk-60 = var_v1_5;
                }
                if ((temp_v0_4 != 0) && (temp_s2_5 = arg_sp0.unk-210, temp_s2_6 = temp_s2_5->unk4, (temp_s2_5->unk6 == temp_s2_6))) {
                    if (!(temp_s2_6 & 1)) {
                        temp_s2_7 = arg_sp0.unk-80;
                        temp_v0_5 = arg_sp0.unk-94;
                        temp_s3_2 = arg_sp0.unk-90;
                        temp_s4_2 = arg_sp0.unk-88;
                        temp_a2 = temp_s2_7 + temp_s3_2;
                        var_s6_2 = temp_s4_2 - var_t1_3;
                        var_s1_2 = var_t1_3 + temp_s3_2;
loop_268:
                        var_s0_2 += 0x10;
                        var_s0_2->unk-2 = var_s6_2;
                        var_s0_2->unk-6 = var_s6_2;
                        var_s0_2->unk-A = var_s1_2;
                        var_s0_2->unk-E = var_s1_2;
                        temp_at_4 = temp_a2 - var_t2_2;
                        temp_t0_6 = (temp_s2_7 + temp_v0_5) - var_t1_3;
                        temp_a6_6 = temp_v0_5 - var_t2_2;
                        temp_a5_4 = var_t2_2 + temp_v0_5;
                        var_s0_2->unk-4 = temp_a5_4;
                        var_s0_2->unk-8 = temp_a6_6;
                        var_s0_2->unk-C = temp_a6_6;
                        var_s0_2->unk-10 = temp_a5_4;
                        if (var_t3 >= 0) {
                            var_ra -= temp_s5;
                            temp_a6_7 = temp_a2 + var_t2_2;
                            var_t2_2 += 1;
                            var_s0_2 += 0x10;
                            var_s0_2->unk-A = temp_at_4;
                            var_s0_2->unk-E = temp_at_4;
                            var_s0_2->unk-4 = temp_t0_6;
                            var_s0_2->unk-10 = temp_t0_6;
                            temp_a5_5 = (temp_v0_5 - temp_s2_7) + var_t1_3;
                            var_s0_2->unk-2 = temp_a6_7;
                            var_s0_2->unk-6 = temp_a6_7;
                            var_s0_2->unk-8 = temp_a5_5;
                            var_s0_2->unk-C = temp_a5_5;
                            if (var_t8 < 0) {
                                var_t8 += var_ra;
                                var_t3 += temp_s5;
                            } else {
                                var_t3 += temp_a3_3;
                                var_t1_3 += 1;
                                var_s6_2 = temp_s4_2 - var_t1_3;
                                var_s1_2 = var_t1_3 + temp_s3_2;
                                var_t8 -= var_t3;
                            }
                            goto loop_268;
                        }
                        var_t1_3 = temp_s2_7;
                        if ((var_t2_2 >= 2) && (var_s0_2->unk-14 == var_s0_2->unk-4) && (var_s0_2->unk-12 == var_s0_2->unk-2)) {
                            var_s0_2 -= 0x10;
                        }
                        var_t2_2 = arg_sp0.unk-84;
                    } else {
                        goto block_105;
                    }
                } else {
block_105:
                    temp_a3_4 = var_t1_3 < arg_sp0.unk-80;
                    if (temp_v0_4 != 0) {
                        temp_v1_4 = arg_sp0.unk-84;
                        if (temp_a3_4 != 0) {
                            goto block_107;
                        }
                        if (var_t2_2 < temp_v1_4) {
block_107:
                            do {
loop_134:
                                temp_t0_7 = var_t1_3 + arg_sp0.unk-90;
                                if (var_t3 < 0) {
                                    if (var_t1_3 == arg_sp0.unk-80) {
                                        var_t8 = -1;
                                        var_s1 = 0;
                                        var_ra = 0;
                                        var_t3 = 0;
                                    } else {
                                        var_a7_2 = 1;
                                        temp_a3_5 = (var_s1 * 2) - var_s6;
                                        var_s6 = -var_s6;
                                        var_s1 = temp_a3_5 - var_s1;
                                        var_ra = (var_t3 + var_ra) - (var_s1 >> 1);
                                        var_t8 = ((((s32) -var_t3 >> 1) + var_ra) - var_t8) + (var_s6 >> 3);
                                        if (temp_a3_5 >= 0) {
                                            var_t3 = (temp_a3_5 >> 1) - var_t3;
                                        } else {
                                            var_t3 = -(((s32) -temp_a3_5 >> 1) + var_t3);
                                        }
                                        var_a2_3 = 0;
                                    }
                                }
                                var_s0_2 += 0x10;
                                var_ra -= var_s1;
                                var_s0_2->unk-A = temp_t0_7;
                                var_s0_2->unk-E = temp_t0_7;
                                temp_at_5 = arg_sp0.unk-8C - var_t2_2;
                                temp_a6_8 = var_t2_2 + arg_sp0.unk-94;
                                temp_a5_6 = arg_sp0.unk-88 - var_t1_3;
                                var_s0_2->unk-2 = temp_a5_6;
                                var_s0_2->unk-4 = temp_a6_8;
                                var_s0_2->unk-6 = temp_a5_6;
                                var_s0_2->unk-8 = temp_at_5;
                                var_s0_2->unk-C = temp_at_5;
                                var_s0_2->unk-10 = temp_a6_8;
                                if (var_t8 < 0) {
                                    var_t8 += var_ra;
                                    var_t3 += var_s1;
                                    var_t1_3 += var_a7_2;
                                    var_t2_2 += var_a2_3;
                                } else {
                                    var_t1_3 += 1;
                                    var_t2_2 += 1;
                                    var_t3 += var_s6;
                                    var_t8 -= var_t3;
                                }
                                if (var_t1_3 < arg_sp0.unk-80) {
                                    goto loop_134;
                                }
                            } while (var_t2_2 < temp_v1_4);
                        }
                    } else {
                        temp_s3_3 = arg_sp0.unk-90;
                        var_a0 = arg_sp0.unk-58;
                        temp_v0_6 = arg_sp0.unk-84;
                        if (temp_a3_4 != 0) {
                            goto block_222;
                        }
                        if (var_t2_2 < temp_v0_6) {
                            arg_sp0.unk-220 = (s64) temp_v0_6;
block_222:
                            var_a1 = arg_sp0.unk-74;
                            temp_s4_3 = arg_sp0.unk-88;
                            temp_s5_2 = arg_sp0.unk-8C;
                            arg_sp0.unk-220 = (s64) temp_v0_6;
                            temp_v0_7 = arg_sp0.unk-94;
                            var_a3_2 = arg_sp0.unk-78;
                            arg_sp0.unk-230 = (s64) arg_sp0.unk-68;
                            arg_sp0.unk-248 = (s64) arg_sp0.unk-50;
                            var_t9 = arg_sp0.unk-70;
                            arg_sp0.unk-250 = (s64) arg_sp0.unk-6C;
                            arg_sp0.unk-240 = (s64) arg_sp0.unk-54;
                            arg_sp0.unk-238 = (s64) arg_sp0.unk-4C;
                            arg_sp0.unk-228 = (s64) arg_sp0.unk-64;
                            do {
loop_230:
                                if (var_t3 < 0) {
                                    if (var_t1_3 == arg_sp0.unk-80) {
                                        var_t8 = -1;
                                        var_s1 = 0;
                                        var_ra = 0;
                                        var_t3 = 0;
                                    } else {
                                        var_a7_2 = 1;
                                        temp_a2_2 = (var_s1 * 2) - var_s6;
                                        var_s6 = -var_s6;
                                        var_s1 = temp_a2_2 - var_s1;
                                        var_ra = (var_t3 + var_ra) - (var_s1 >> 1);
                                        var_t8 = ((((s32) -var_t3 >> 1) + var_ra) - var_t8) + (var_s6 >> 3);
                                        if (temp_a2_2 >= 0) {
                                            var_t3 = (temp_a2_2 >> 1) - var_t3;
                                        } else {
                                            var_t3 = -(((s32) -temp_a2_2 >> 1) + var_t3);
                                        }
                                        var_a2_3 = 0;
                                    }
                                }
                                if ((var_t2_2 == var_a3_2) || (var_a6 = var_s7 & 1, (var_t1_3 == var_a1))) {
                                    var_a3_2 = (s32) arg_sp0.unk-250;
                                    var_s7 = var_t9;
                                    var_t9 = (s32) arg_sp0.unk-228;
                                    var_a1 = (s32) arg_sp0.unk-230;
                                    arg_sp0.unk-78 = var_a3_2;
                                    arg_sp0.unk-70 = var_t9;
                                    arg_sp0.unk-74 = var_a1;
                                    var_a6 = var_s7 & 1;
                                }
                                if (var_a6 != 0) {
                                    var_s0_2 += 4;
                                    var_s0_2->unk-2 = (s16) (var_t1_3 + temp_s3_3);
                                    var_s0_2->unk-4 = (s16) (var_t2_2 + temp_v0_7);
                                }
                                if (var_s7 & 2) {
                                    var_s0_2 += 4;
                                    var_s0_2->unk-2 = (s16) (var_t1_3 + temp_s3_3);
                                    var_s0_2->unk-4 = (s16) (temp_s5_2 - var_t2_2);
                                }
                                if (var_s7 & 4) {
                                    var_s0_2 += 4;
                                    var_s0_2->unk-2 = (s16) (temp_s4_3 - var_t1_3);
                                    var_s0_2->unk-4 = (s16) (temp_s5_2 - var_t2_2);
                                }
                                if (var_s7 & 8) {
                                    var_s0_2 += 4;
                                    var_s0_2->unk-2 = (s16) (temp_s4_3 - var_t1_3);
                                    var_s0_2->unk-4 = (s16) (var_t2_2 + temp_v0_7);
                                }
                                if (var_t2_2 != var_v1_5) {
                                    if (var_t1_3 == var_a4_2) {
                                        goto block_224;
                                    }
                                } else {
block_224:
                                    var_v1_5 = (s32) arg_sp0.unk-240;
                                    var_s7 = var_a0;
                                    var_a0 = (s32) arg_sp0.unk-238;
                                    var_a4_2 = (s32) arg_sp0.unk-248;
                                    arg_sp0.unk-60 = var_v1_5;
                                    arg_sp0.unk-58 = var_a0;
                                    arg_sp0.unk-5C = var_a4_2;
                                }
                                var_ra -= var_s1;
                                if (var_t8 < 0) {
                                    var_t8 += var_ra;
                                    var_t3 += var_s1;
                                    var_t1_3 += var_a7_2;
                                    var_t2_2 += var_a2_3;
                                } else {
                                    var_t1_3 += 1;
                                    var_t2_2 += 1;
                                    var_t3 += var_s6;
                                    var_t8 -= var_t3;
                                }
                                if (var_t1_3 < arg_sp0.unk-80) {
                                    goto loop_230;
                                }
                            } while (var_t2_2 < arg_sp0.unk-220);
                        }
                    }
                }
                if ((arg_sp0.unk-78 == var_t2_2) || (var_a5_2 = var_s7 & 1, (arg_sp0.unk-74 == var_t1_3))) {
                    var_s7 = arg_sp0.unk-70;
                    var_a5_2 = var_s7 & 1;
                }
                if (var_a5_2 != 0) {
                    var_s0_2 += 4;
                    var_s0_2->unk-2 = (s16) (arg_sp0.unk-90 + var_t1_3);
                    var_s0_2->unk-4 = (s16) (arg_sp0.unk-94 + var_t2_2);
                }
                if (var_s7 & 4) {
                    var_s0_2 += 4;
                    var_a5_2 = arg_sp0.unk-8C - var_t2_2;
                    var_s0_2->unk-2 = (s16) (arg_sp0.unk-88 - var_t1_3);
                    var_s0_2->unk-4 = var_a5_2;
                }
                if (arg_sp0.unk-210->unk6 & 1) {
                    var_a5_2 = (s16) arg_sp0.unk-8C;
                    if (var_s7 & 2) {
                        var_s0_2 += 4;
                        var_a5_2 -= var_t2_2;
                        var_s0_2->unk-2 = (s16) (arg_sp0.unk-90 + var_t1_3);
                        var_s0_2->unk-4 = var_a5_2;
                    }
                    if (var_s7 & 8) {
                        var_s0_2 += 4;
                        var_a5_2 = arg_sp0.unk-88 - var_t1_3;
                        var_s0_2->unk-2 = var_a5_2;
                        var_s0_2->unk-4 = (s16) (arg_sp0.unk-94 + var_t2_2);
                    }
                }
                temp_t9_2 = arg_sp0.unk-1E0;
                temp_a3_6 = arg_sp0.unk-1D0;
                var_v0 = temp_t9_2->unk48->unk14(arg_sp0.unk-208, temp_t9_2, 0, (s32) (var_s0_2 - temp_a3_6) >> 2, temp_a3_6, var_a5_2);
                goto block_10;
            }
            goto block_11;
        }
        temp_v0_8 = arg_sp0.unk-210;
        var_s2_2 = temp_v0_8->unk4;
        temp_v0_9 = temp_v0_8->unk6;
        if ((var_s2_2 == temp_v0_9) && (var_s3 = -0x10, ((arg_sp0.unk-210->unkA < 0x5A00) == 0))) {
            var_v1_6 = 1;
            var_s5 = 1;
            if ((s32) var_s2_2 < 0x20) {
                var_s0_3 = temp_v0_9 + 1;
                temp_v1_5 = var_s0_3 < 0x11;
                var_s1_3 = ((var_s2_2 * 4) + (&local_0x5f0b0000 + 0x4898))->unk760;
                if (temp_v1_5 != 0) {
                    var_a2 = 0x143;
                    var_a3_3 = 8;
                    if (arg_sp0.unk-200 != 0) {
                        goto block_34;
                    }
                    goto block_296;
                }
                var_a3_3 = 0x20;
                if (arg_sp0.unk-200 == 0) {
block_296:
                    if ((arg_sp0.unk-1D8 != 0) && (arg_sp0.unk-1D8 != var_a2)) {
                        arg_sp0.unk-218->unk7A8 = 0;
                    }
                } else {
block_34:
                    temp_a6_9 = arg_sp0.unk-218;
                    arg_sp0.unk-200 = 0;
                    temp_a6_9->unk77C = 0x500;
                    temp_a6_9->unk77C = 0x400;
                    temp_a6_9->unk7A8 = 0;
                }
                arg_sp0.unk-1D8 = var_a2;
                ((var_a2 * 4) + arg_sp0.unk-1A8)->unk40000 = (s32) arg_sp0.unk-30;
                temp_a5_7 = arg_sp0.unk-218;
                var_s3_2 = var_a3_3 - var_s0_3;
                temp_v0_10 = var_s1_3 & 3;
                temp_a5_7->unk77C = (s32) arg_sp0.unk-2E;
                temp_a5_7->unk77C = var_s0_3;
                temp_a5_7->unk77C = var_s0_3;
                if (temp_v1_5 != 0) {
                    temp_v1_6 = var_s0_3 + 1;
                    var_s3_2 = var_a3_3 - (temp_v1_6 >> 1);
                    if (temp_v0_10 != 0) {
                        var_a3_4 = var_s1_3;
                        if (var_s0_3 > 0) {
                            temp_a4_2 = (s32) (((u32) temp_v1_6 >> 0x1F) + temp_v1_6) >> 1;
                            var_v0_7 = var_s0_3;
                            if (temp_a4_2 & 1) {
                                temp_a5_8 = var_a3_4->unk2 | (var_a3_4->unk0 << 0x10);
                                var_a3_4 += 4;
                                var_v0_7 -= 2;
                                arg_sp0.unk-218->unk77C = temp_a5_8;
                            }
                            var_a1_2 = var_a3_4;
                            if ((temp_a4_2 >> 1) != 0) {
                                if ((var_v0_7 - 4) > 0) {
                                    var_v0_8 = var_a1_2->unk2;
                                    var_at_4 = var_v0_7 - 4;
                                    temp_v1_7 = arg_sp0.unk-218;
                                    var_a0_2 = var_a1_2->unk0 << 0x10;
                                    do {
                                        temp_v1_7->unk77C = (s32) (var_v0_8 | var_a0_2);
                                        temp_v0_11 = var_a1_2->unk4;
                                        temp_a0_2 = var_a1_2->unk6;
                                        var_a1_2 += 8;
                                        temp_v1_7->unk77C = (s32) (temp_a0_2 | (temp_v0_11 << 0x10));
                                        var_at_4 -= 4;
                                        var_v0_8 = var_a1_2->unk2;
                                        var_a0_2 = var_a1_2->unk0 << 0x10;
                                    } while (var_at_4 > 0);
                                    arg_sp0.unk-218->unk77C = (s32) (var_v0_8 | var_a0_2);
                                    var_a5_3 = var_a1_2->unk6 | (var_a1_2->unk4 << 0x10);
                                } else {
                                    arg_sp0.unk-218->unk77C = (s32) (var_a1_2->unk2 | (var_a1_2->unk0 << 0x10));
                                    var_a5_3 = var_a1_2->unk6 | (var_a1_2->unk4 << 0x10);
                                }
                                ((void *) arg_sp0.unk-218)->unk77C = var_a5_3;
                            }
                        }
                    } else {
                        var_a3_5 = var_s1_3;
                        if (var_s0_3 > 0) {
                            temp_a7_5 = (s32) (((u32) temp_v1_6 >> 0x1F) + temp_v1_6) >> 1;
                            var_v0_9 = temp_a7_5 & 3;
                            var_a4_3 = var_s0_3;
                            if (var_v0_9 != 0) {
                                do {
                                    var_a3_5 += 4;
                                    var_a4_3 -= 2;
                                    var_v0_9 -= 1;
                                    arg_sp0.unk-218->unk77C = (s32) var_a3_5->unk-4;
                                } while (var_v0_9 != 0);
                            }
                            var_v0_10 = var_a3_5;
                            if ((temp_a7_5 >> 2) != 0) {
                                if ((var_a4_3 - 8) > 0) {
                                    var_at_5 = var_v0_10->unk0;
                                    var_a0_3 = var_a4_3 - 8;
                                    temp_v1_8 = arg_sp0.unk-218;
                                    temp_t1_3 = arg_sp0.unk-218;
                                    do {
                                        temp_v1_8->unk77C = var_at_5;
                                        temp_v1_8->unk77C = (s32) var_v0_10->unk4;
                                        temp_v1_8->unk77C = (s32) var_v0_10->unk8;
                                        temp_at_6 = var_v0_10->unkC;
                                        var_v0_10 += 0x10;
                                        var_a0_3 -= 8;
                                        temp_v1_8->unk77C = temp_at_6;
                                        var_at_5 = var_v0_10->unk0;
                                    } while (var_a0_3 > 0);
                                    temp_t1_3->unk77C = var_at_5;
                                    temp_t1_3->unk77C = (s32) var_v0_10->unk4;
                                    temp_t1_3->unk77C = (s32) var_v0_10->unk8;
                                    temp_t1_3->unk77C = (s32) var_v0_10->unkC;
                                } else {
                                    temp_t0_8 = arg_sp0.unk-218;
                                    temp_t0_8->unk77C = (s32) var_v0_10->unk0;
                                    temp_t0_8->unk77C = (s32) var_v0_10->unk4;
                                    temp_t0_8->unk77C = (s32) var_v0_10->unk8;
                                    temp_t0_8->unk77C = (s32) var_v0_10->unkC;
                                }
                            }
                        }
                    }
                } else {
                    var_s2_3 = 1;
                    if (var_s0_3 >= 1) {
                        var_s2_3 = var_s0_3;
                    }
                    var_v0_11 = var_s2_3 & 3;
                    if (temp_v0_10 != 0) {
                        ErrorF(&local_0x5f0a0000 - 0x638);
                        var_v1_7 = var_s2_3 & 3;
                        if (var_v1_7 != 0) {
                            do {
                                var_s0_3 -= 1;
                                temp_a6_10 = var_s1_3->unk0;
                                temp_a5_9 = var_s1_3->unk2;
                                var_s1_3 += 4;
                                var_v1_7 -= 1;
                                arg_sp0.unk-218->unk77C = (s32) (temp_a5_9 | (temp_a6_10 << 0x10));
                            } while (var_v1_7 != 0);
                        }
                        temp_a3_7 = var_s2_3 >> 2;
                        var_a1_3 = var_s1_3;
                        if (temp_a3_7 != 0) {
                            if (temp_a3_7 >= 2) {
                                var_at_6 = var_a1_3->unk2;
                                var_v0_12 = var_s0_3 - 4;
                                temp_v1_9 = arg_sp0.unk-218;
                                temp_a6_11 = arg_sp0.unk-218;
                                var_a0_4 = var_a1_3->unk0 << 0x10;
                                do {
                                    temp_v1_9->unk77C = (s32) (var_at_6 | var_a0_4);
                                    temp_v1_9->unk77C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                    temp_v1_9->unk77C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                    var_v0_12 -= 4;
                                    temp_v1_9->unk77C = (s32) (var_a1_3->unkE | (var_a1_3->unkC << 0x10));
                                    var_a1_3 += 0x10;
                                    var_at_6 = var_a1_3->unk2;
                                    var_a0_4 = var_a1_3->unk0 << 0x10;
                                } while (var_v0_12 != 0);
                                temp_a6_11->unk77C = (s32) (var_at_6 | var_a0_4);
                                temp_a6_11->unk77C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                temp_a6_11->unk77C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                temp_a6_11->unk77C = (s32) (var_a1_3->unkE | (var_a1_3->unkC << 0x10));
                            } else {
                                temp_at_7 = arg_sp0.unk-218;
                                temp_at_7->unk77C = (s32) (var_a1_3->unk2 | (var_a1_3->unk0 << 0x10));
                                temp_at_7->unk77C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                temp_at_7->unk77C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                temp_at_7->unk77C = (s32) (var_a1_3->unkE | (var_a1_3->unkC << 0x10));
                            }
                        }
                    } else {
                        if (var_v0_11 != 0) {
                            do {
                                var_s0_3 -= 1;
                                var_s1_3 += 4;
                                var_v0_11 -= 1;
                                arg_sp0.unk-218->unk77C = (s32) var_s1_3->unk-4;
                            } while (var_v0_11 != 0);
                        }
                        temp_a4_3 = var_s2_3 >> 2;
                        var_v0_13 = var_s1_3;
                        if (temp_a4_3 != 0) {
                            if (temp_a4_3 >= 2) {
                                var_at_7 = var_v0_13->unk0;
                                var_a0_5 = var_s0_3 - 4;
                                temp_v1_10 = arg_sp0.unk-218;
                                temp_t1_4 = arg_sp0.unk-218;
                                do {
                                    temp_v1_10->unk77C = var_at_7;
                                    temp_v1_10->unk77C = (s32) var_v0_13->unk4;
                                    temp_v1_10->unk77C = (s32) var_v0_13->unk8;
                                    temp_at_8 = var_v0_13->unkC;
                                    var_a0_5 -= 4;
                                    var_v0_13 += 0x10;
                                    temp_v1_10->unk77C = temp_at_8;
                                    var_at_7 = var_v0_13->unk0;
                                } while (var_a0_5 != 0);
                                temp_t1_4->unk77C = var_at_7;
                                temp_t1_4->unk77C = (s32) var_v0_13->unk4;
                                temp_t1_4->unk77C = (s32) var_v0_13->unk8;
                                temp_t1_4->unk77C = (s32) var_v0_13->unkC;
                            } else {
                                temp_a6_12 = arg_sp0.unk-218;
                                temp_a6_12->unk77C = (s32) var_v0_13->unk0;
                                temp_a6_12->unk77C = (s32) var_v0_13->unk4;
                                temp_a6_12->unk77C = (s32) var_v0_13->unk8;
                                temp_a6_12->unk77C = (s32) var_v0_13->unkC;
                            }
                        }
                    }
                }
                var_v0 = 0;
                if (var_s3_2 > 0) {
                    var_a0_6 = var_s3_2 & 3;
                    if (var_a0_6 != 0) {
                        do {
                            var_v0 += 1;
                            var_a0_6 -= 1;
                            arg_sp0.unk-218->unk77C = 0;
                        } while (var_a0_6 != 0);
                    }
                    temp_a3_8 = var_s3_2 >> 2;
                    temp_a0_3 = var_v0;
                    if (temp_a3_8 != 0) {
                        if (temp_a3_8 >= 2) {
                            var_v0 = var_s3_2 - 8;
                            var_a0_7 = temp_a0_3 + 4;
                            temp_v1_11 = arg_sp0.unk-218;
                            temp_v1_11->unk77C = 0;
                            temp_v1_11->unk77C = 0;
loop_52:
                            temp_v1_11->unk77C = 0;
                            temp_v1_11->unk77C = 0;
                            temp_v1_11->unk77C = 0;
                            temp_v1_11->unk77C = 0;
                            if (var_a0_7 != (var_s3_2 - 4)) {
                                temp_v1_11->unk77C = 0;
                                temp_v1_11->unk77C = 0;
                                temp_v1_11->unk77C = 0;
                                temp_v1_11->unk77C = 0;
                                if (var_a0_7 != var_v0) {
                                    temp_v1_11->unk77C = 0;
                                    temp_v1_11->unk77C = 0;
                                    temp_v1_11->unk77C = 0;
                                    temp_v1_11->unk77C = 0;
                                    if (var_a0_7 != (var_s3_2 - 0xC)) {
                                        temp_v1_11->unk77C = 0;
                                        temp_v1_11->unk77C = 0;
                                        temp_v1_11->unk77C = 0;
                                        var_a0_7 += 0x10;
                                        temp_v1_11->unk77C = 0;
                                        if (var_a0_7 != var_s3_2) {
                                            goto loop_52;
                                        }
                                    }
                                }
                            }
                            arg_sp0.unk-218->unk77C = 0;
                        } else {
                            var_v0 = temp_a0_3;
                            temp_a6_13 = arg_sp0.unk-218;
                            temp_a6_13->unk77C = 0;
                            temp_a6_13->unk77C = 0;
                            temp_a6_13->unk77C = 0;
                        }
                        ((void *) arg_sp0.unk-218)->unk77C = 0;
                    }
                }
            } else {
                var_s4 = 0;
                var_t3_2 = -8;
                temp_at_9 = arg_sp0.unk-218;
                if (arg_sp0.unk-1D8 != 0) {
                    arg_sp0.unk-1D8 = 0;
                    temp_at_9->unk7A8 = 0;
                    temp_at_9->unk4BC = 0;
                    arg_sp0.unk-200 = 1;
                    goto block_169;
                }
                if (arg_sp0.unk-200 == 0) {
                    arg_sp0.unk-200 = 1;
                    arg_sp0.unk-218->unk4BC = 0;
block_169:
                    var_s2_2 = ((void *) arg_sp0.unk-210)->unk4;
                }
                var_v0 = 0;
                var_t2_3 = 8;
                temp_t9_3 = var_s2_2 * 2;
                temp_a2_3 = var_s2_2 * 4;
                temp_t0_9 = arg_sp0.unk-218;
                temp_a3_9 = (s32) var_s2_2 >> 1;
                temp_s0 = arg_sp0.unk-2E;
                temp_t8_2 = arg_sp0.unk-30;
                temp_s1_2 = temp_s0 + var_s2_2;
                if (!(var_s2_2 & 1)) {
                    var_s2_4 = temp_s1_2;
                    var_a7_3 = temp_a2_3 - 0xC;
                    temp_s3_4 = temp_a3_9 + temp_s0;
                    var_t3_3 = temp_s0;
                    var_t2_4 = 0xC;
                    var_t1_4 = 0x11 - temp_t9_3;
                    temp_ra_2 = temp_a3_9 + temp_t8_2;
                    temp_s4_4 = temp_a3_9 + temp_ra_2;
                    temp_t0_9->unk77C = (s32) (temp_a3_9 + temp_t8_2);
                    temp_t0_9->unk77C = (s32) temp_s0;
                    temp_t0_9->unk77C = temp_ra_2;
                    temp_t0_9->unk77C = temp_s1_2;
loop_300:
                    temp_a6_14 = arg_sp0.unk-218;
                    temp_at_10 = temp_ra_2 - var_v1_6;
                    temp_t0_10 = temp_ra_2 + var_v1_6;
                    temp_a6_14->unk77C = temp_t0_10;
                    temp_a6_14->unk77C = (s32) var_t3_3;
                    temp_a6_14->unk77C = temp_at_10;
                    temp_a6_14->unk77C = (s32) var_t3_3;
                    temp_a6_14->unk77C = temp_at_10;
                    temp_at_11 = temp_t8_2 + var_v0;
                    temp_a6_14->unk77C = var_s2_4;
                    temp_a6_14->unk77C = temp_t0_10;
                    temp_t0_11 = temp_s4_4 - var_v0;
                    temp_a6_14->unk77C = var_s2_4;
                    if (var_a7_3 >= 0) {
                        temp_a6_15 = arg_sp0.unk-218;
                        var_t2_4 += 8;
                        temp_a5_10 = temp_s3_4 - var_v1_6;
                        temp_a6_15->unk77C = temp_t0_11;
                        temp_a6_15->unk77C = temp_a5_10;
                        temp_a6_15->unk77C = temp_at_11;
                        temp_a6_15->unk77C = temp_a5_10;
                        temp_a5_11 = temp_s3_4 + var_v1_6;
                        var_v1_6 += 1;
                        temp_a6_15->unk77C = temp_at_11;
                        temp_a6_15->unk77C = temp_a5_11;
                        temp_a6_15->unk77C = temp_t0_11;
                        temp_a6_15->unk77C = temp_a5_11;
                        if (var_t1_4 < 0) {
                            var_t1_4 += var_t2_4;
                            var_a7_3 -= 8;
                        } else {
                            var_a7_3 -= 0x10;
                            var_v0 += 1;
                            var_s2_4 = temp_s1_2 - var_v0;
                            var_t3_3 = temp_s0 + var_v0;
                            var_t1_4 -= var_a7_3;
                        }
                        goto loop_300;
                    }
                    temp_a6_16 = arg_sp0.unk-218;
                    temp_a6_16->unk77C = temp_s4_4;
                    temp_a6_16->unk77C = temp_s3_4;
                    temp_a6_16->unk77C = (s32) temp_t8_2;
                    temp_a6_16->unk77C = temp_s3_4;
                } else {
                    var_t1_5 = 0xA - temp_t9_3;
                    var_a7_4 = temp_a2_3 - 8;
                    temp_s2_8 = (s32) (var_s2_2 + 1) >> 1;
                    if (temp_a3_9 > 0) {
                        var_s1_4 = temp_s0 + var_s2_2;
                        goto block_279;
                    }
                    var_s1_4 = temp_s0 + var_s2_2;
                    if (temp_s2_8 < 2) {
                        var_t8_2 = temp_s2_8 + temp_t8_2;
                        var_ra_2 = temp_a3_9 + temp_t8_2;
                        var_s1_4 = temp_s0 + var_s2_2;
                    } else {
block_279:
                        var_t8_2 = temp_s2_8 + temp_t8_2;
                        var_ra_2 = temp_a3_9 + temp_t8_2;
                        do {
loop_282:
                            if (var_a7_4 < 0) {
                                if (temp_a3_9 == var_v0) {
                                    var_t1_5 = -1;
                                    var_t3_2 = 0;
                                    var_t2_3 = 0;
                                    var_a7_4 = 0;
                                } else {
                                    temp_s4_5 = (var_t3_2 * 2) - var_s3;
                                    var_s3 = -var_s3;
                                    var_t3_2 = temp_s4_5 - var_t3_2;
                                    var_t2_3 = (var_t2_3 + var_a7_4) - (var_t3_2 >> 1);
                                    var_t1_5 = ((((s32) -var_a7_4 >> 1) + var_t2_3) - var_t1_5) + (var_s3 >> 3);
                                    if (temp_s4_5 >= 0) {
                                        var_a7_4 = (temp_s4_5 >> 1) - var_a7_4;
                                    } else {
                                        var_a7_4 = -(((s32) -temp_s4_5 >> 1) + var_a7_4);
                                    }
                                    var_s5 = 0;
                                    var_s4 = 1;
                                }
                            }
                            var_t2_3 -= var_t3_2;
                            temp_at_12 = var_t8_2 - var_v1_6;
                            temp_a6_17 = arg_sp0.unk-218;
                            temp_a5_12 = temp_s0 + var_v0;
                            temp_t0_12 = var_ra_2 + var_v1_6;
                            temp_a6_17->unk77C = temp_t0_12;
                            temp_a6_17->unk77C = temp_a5_12;
                            temp_a6_17->unk77C = temp_at_12;
                            temp_a6_17->unk77C = temp_a5_12;
                            temp_a5_13 = var_s1_4 - var_v0;
                            temp_a6_17->unk77C = temp_at_12;
                            temp_a6_17->unk77C = temp_a5_13;
                            temp_a6_17->unk77C = temp_t0_12;
                            temp_a6_17->unk77C = temp_a5_13;
                            if (var_t1_5 < 0) {
                                var_t1_5 += var_t2_3;
                                var_a7_4 += var_t3_2;
                                var_v0 += var_s4;
                                var_v1_6 += var_s5;
                            } else {
                                var_v0 += 1;
                                var_v1_6 += 1;
                                var_a7_4 += var_s3;
                                var_t1_5 -= var_a7_4;
                            }
                            if (var_v0 < temp_a3_9) {
                                goto loop_282;
                            }
                        } while (var_v1_6 < temp_s2_8);
                    }
                    temp_t0_13 = var_s1_4 - var_v0;
                    temp_a6_18 = var_t8_2 - var_v1_6;
                    temp_a5_14 = temp_s0 + var_v0;
                    temp_at_13 = arg_sp0.unk-218;
                    arg_sp0.unk-288 = (s64) M2C_ERROR(/* Read from unset register $a0 */);
                    temp_a0_4 = var_ra_2 + var_v1_6;
                    temp_at_13->unk77C = temp_a0_4;
                    temp_at_13->unk77C = temp_a5_14;
                    temp_at_13->unk77C = temp_a6_18;
                    temp_at_13->unk77C = temp_t0_13;
                    temp_at_13->unk77C = temp_a6_18;
                    temp_at_13->unk77C = temp_a5_14;
                    temp_at_13->unk77C = temp_a0_4;
                    temp_at_13->unk77C = temp_t0_13;
                }
            }
        } else {
            if (arg_sp0.unk-1D8 != 0) {
                temp_a6_19 = arg_sp0.unk-218;
                arg_sp0.unk-1D8 = 0;
                arg_sp0.unk-200 = 1;
                temp_a6_19->unk7A8 = 0;
                temp_a6_19->unk4BC = 0;
            } else if (arg_sp0.unk-200 == 0) {
                arg_sp0.unk-200 = 1;
                arg_sp0.unk-218->unk4BC = 0;
            }
            temp_t3_3 = arg_sp0.unk-208;
            temp_t2_2 = arg_sp0.unk-210;
            temp_t2_2->unk2 = (s16) (temp_t2_2->unk2 + temp_t3_3->unkA);
            temp_t2_2->unk0 = (s16) (temp_t2_2->unk0 + temp_t3_3->unk8);
            var_v0 = miZeroArcSetup(temp_t2_2, &arg_sp0 - 0x148, 1);
            var_a2_4 = arg_sp0.unk-128;
            var_a3_6 = arg_sp0.unk-12C;
            var_t8_3 = arg_sp0.unk-130;
            var_ra_3 = arg_sp0.unk-134;
            var_t3_4 = arg_sp0.unk-138;
            var_s5_2 = arg_sp0.unk-13C;
            var_s0_4 = arg_sp0.unk-140;
            var_s7_2 = arg_sp0.unk-E8;
            temp_a7_6 = arg_sp0.unk-148;
            temp_s1_3 = arg_sp0.unk-104;
            temp_v1_12 = arg_sp0.unk-144;
            var_s6_3 = temp_s1_3;
            var_t1_6 = temp_v1_12;
            var_t2_5 = temp_a7_6;
            if (!(arg_sp0.unk-210->unk4 & 1)) {
                temp_a6_20 = arg_sp0.unk-218;
                if (temp_s1_3 & 2) {
                    temp_a6_20->unk77C = (s32) arg_sp0.unk-114;
                    temp_a6_20->unk77C = (s32) arg_sp0.unk-118;
                }
                if (temp_s1_3 & 8) {
                    temp_a6_21 = arg_sp0.unk-218;
                    temp_a6_21->unk77C = (s32) arg_sp0.unk-114;
                    temp_a6_21->unk77C = (s32) arg_sp0.unk-110;
                }
            }
            temp_s1_4 = arg_sp0.unk-108;
            if ((var_s7_2 == 0) || (var_a0_8 = arg_sp0.unk-E4, (var_a0_8 == 0))) {
                var_s6_3 = arg_sp0.unk-E0;
                var_a0_8 = arg_sp0.unk-D8;
                var_s7_2 = arg_sp0.unk-DC;
                arg_sp0.unk-E0 = (s32) arg_sp0.unk-D4;
                arg_sp0.unk-E4 = var_a0_8;
                arg_sp0.unk-E8 = var_s7_2;
            }
            if (var_v0 != 0) {
                temp_a1_3 = arg_sp0.unk-10C;
                if (temp_v1_12 < temp_s1_4) {
                    goto block_68;
                }
                if (temp_a7_6 < temp_a1_3) {
block_68:
                    var_v0 = arg_sp0.unk-11C;
                    do {
loop_114:
                        if (var_t3_4 < 0) {
                            if (var_t1_6 == temp_s1_4) {
                                var_t8_3 = -1;
                                var_s0_4 = 0;
                                var_ra_3 = 0;
                                var_t3_4 = 0;
                            } else {
                                var_a2_4 = 1;
                                temp_v1_13 = (var_s0_4 * 2) - var_s5_2;
                                var_s5_2 = -var_s5_2;
                                var_s0_4 = temp_v1_13 - var_s0_4;
                                var_ra_3 = (var_t3_4 + var_ra_3) - (var_s0_4 >> 1);
                                var_t8_3 = ((((s32) -var_t3_4 >> 1) + var_ra_3) - var_t8_3) + (var_s5_2 >> 3);
                                if (temp_v1_13 >= 0) {
                                    var_t3_4 = (temp_v1_13 >> 1) - var_t3_4;
                                } else {
                                    var_t3_4 = -(((s32) -temp_v1_13 >> 1) + var_t3_4);
                                }
                                var_a3_6 = 0;
                            }
                        }
                        var_ra_3 -= var_s0_4;
                        temp_a5_15 = arg_sp0.unk-114 - var_t2_5;
                        temp_t0_14 = arg_sp0.unk-218;
                        temp_a6_22 = var_t1_6 + arg_sp0.unk-118;
                        temp_at_14 = var_t2_5 + var_v0;
                        temp_t0_14->unk77C = temp_at_14;
                        temp_t0_14->unk77C = temp_a6_22;
                        temp_t0_14->unk77C = temp_a5_15;
                        temp_t0_14->unk77C = temp_a6_22;
                        temp_a6_23 = arg_sp0.unk-110 - var_t1_6;
                        temp_t0_14->unk77C = temp_a5_15;
                        temp_t0_14->unk77C = temp_a6_23;
                        temp_t0_14->unk77C = temp_at_14;
                        temp_t0_14->unk77C = temp_a6_23;
                        if (var_t8_3 >= 0) {
                            var_t1_6 += 1;
                            var_t2_5 += 1;
                            var_t3_4 += var_s5_2;
                            var_t8_3 -= var_t3_4;
                        } else {
                            var_t8_3 += var_ra_3;
                            var_t3_4 += var_s0_4;
                            var_t1_6 += var_a2_4;
                            var_t2_5 += var_a3_6;
                        }
                        if (var_t1_6 < temp_s1_4) {
                            goto loop_114;
                        }
                    } while (var_t2_5 < temp_a1_3);
                }
            } else {
                temp_s3_5 = arg_sp0.unk-118;
                var_t9_2 = arg_sp0.unk-E0;
                var_a7_5 = arg_sp0.unk-F8;
                var_v0 = arg_sp0.unk-D8;
                temp_a1_4 = arg_sp0.unk-10C;
                if (var_t1_6 < temp_s1_4) {
                    goto block_177;
                }
                if (var_t2_5 < temp_a1_4) {
block_177:
                    var_a4_4 = arg_sp0.unk-FC;
                    temp_s2_9 = arg_sp0.unk-110;
                    temp_s4_6 = arg_sp0.unk-114;
                    arg_sp0.unk-258 = (s64) arg_sp0.unk-F0;
                    arg_sp0.unk-260 = (s64) var_v0;
                    var_v0 = arg_sp0.unk-11C;
                    arg_sp0.unk-268 = (s64) arg_sp0.unk-DC;
                    var_v1_8 = arg_sp0.unk-100;
                    arg_sp0.unk-280 = (s64) arg_sp0.unk-F4;
                    arg_sp0.unk-270 = (s64) arg_sp0.unk-EC;
                    arg_sp0.unk-278 = (s64) arg_sp0.unk-D4;
                    do {
loop_203:
                        if (var_t3_4 < 0) {
                            if (var_t1_6 == temp_s1_4) {
                                var_t8_3 = -1;
                                var_s0_4 = 0;
                                var_ra_3 = 0;
                                var_t3_4 = 0;
                            } else {
                                var_a2_4 = 1;
                                temp_a3_10 = (var_s0_4 * 2) - var_s5_2;
                                var_s5_2 = -var_s5_2;
                                var_s0_4 = temp_a3_10 - var_s0_4;
                                var_ra_3 = (var_t3_4 + var_ra_3) - (var_s0_4 >> 1);
                                var_t8_3 = ((((s32) -var_t3_4 >> 1) + var_ra_3) - var_t8_3) + (var_s5_2 >> 3);
                                if (temp_a3_10 >= 0) {
                                    var_t3_4 = (temp_a3_10 >> 1) - var_t3_4;
                                } else {
                                    var_t3_4 = -(((s32) -temp_a3_10 >> 1) + var_t3_4);
                                }
                                var_a3_6 = 0;
                            }
                        }
                        if (var_t2_5 != var_v1_8) {
                            var_a5_4 = var_s6_3 & 1;
                            if (var_t1_6 == var_a4_4) {
                                goto block_186;
                            }
                        } else {
block_186:
                            var_v1_8 = (s32) arg_sp0.unk-280;
                            var_s6_3 = var_a7_5;
                            var_a7_5 = (s32) arg_sp0.unk-270;
                            var_a4_4 = (s32) arg_sp0.unk-258;
                            arg_sp0.unk-100 = var_v1_8;
                            arg_sp0.unk-F8 = var_a7_5;
                            arg_sp0.unk-FC = var_a4_4;
                            var_a5_4 = var_s6_3 & 1;
                        }
                        if (var_a5_4 != 0) {
                            temp_t0_15 = arg_sp0.unk-218;
                            temp_t0_15->unk77C = (s32) (var_t2_5 + var_v0);
                            temp_t0_15->unk77C = (s32) (var_t1_6 + temp_s3_5);
                        }
                        if (var_s6_3 & 2) {
                            temp_t0_16 = arg_sp0.unk-218;
                            temp_t0_16->unk77C = (s32) (temp_s4_6 - var_t2_5);
                            temp_t0_16->unk77C = (s32) (var_t1_6 + temp_s3_5);
                        }
                        if (var_s6_3 & 4) {
                            temp_t0_17 = arg_sp0.unk-218;
                            temp_t0_17->unk77C = (s32) (temp_s4_6 - var_t2_5);
                            temp_t0_17->unk77C = (s32) (temp_s2_9 - var_t1_6);
                        }
                        if (var_s6_3 & 8) {
                            temp_t0_18 = arg_sp0.unk-218;
                            temp_t0_18->unk77C = (s32) (var_t2_5 + var_v0);
                            temp_t0_18->unk77C = (s32) (temp_s2_9 - var_t1_6);
                        }
                        if ((var_t2_5 == var_s7_2) || (var_t1_6 == var_a0_8)) {
                            var_s7_2 = (s32) arg_sp0.unk-268;
                            var_s6_3 = var_t9_2;
                            var_t9_2 = (s32) arg_sp0.unk-278;
                            var_a0_8 = (s32) arg_sp0.unk-260;
                            arg_sp0.unk-E8 = var_s7_2;
                            arg_sp0.unk-E0 = var_t9_2;
                            arg_sp0.unk-E4 = var_a0_8;
                        }
                        var_ra_3 -= var_s0_4;
                        if (var_t8_3 < 0) {
                            var_t8_3 += var_ra_3;
                            var_t3_4 += var_s0_4;
                            var_t1_6 += var_a2_4;
                            var_t2_5 += var_a3_6;
                        } else {
                            var_t1_6 += 1;
                            var_t2_5 += 1;
                            var_t3_4 += var_s5_2;
                            var_t8_3 -= var_t3_4;
                        }
                        if (var_t1_6 < temp_s1_4) {
                            goto loop_203;
                        }
                    } while (var_t2_5 < temp_a1_4);
                }
            }
            if ((arg_sp0.unk-100 == var_t2_5) || (var_t0 = var_s6_3 & 1, (arg_sp0.unk-FC == var_t1_6))) {
                var_s6_3 = arg_sp0.unk-F8;
                var_t0 = var_s6_3 & 1;
            }
            if (var_t0 != 0) {
                temp_a5_16 = arg_sp0.unk-218;
                temp_a5_16->unk77C = (s32) (arg_sp0.unk-11C + var_t2_5);
                temp_a5_16->unk77C = (s32) (arg_sp0.unk-118 + var_t1_6);
            }
            if (var_s6_3 & 4) {
                temp_t0_19 = arg_sp0.unk-218;
                temp_t0_19->unk77C = (s32) (arg_sp0.unk-114 - var_t2_5);
                temp_t0_19->unk77C = (s32) (arg_sp0.unk-110 - var_t1_6);
            }
            if (arg_sp0.unk-210->unk6 & 1) {
                if (var_s6_3 & 2) {
                    temp_a6_24 = arg_sp0.unk-218;
                    temp_a6_24->unk77C = (s32) (arg_sp0.unk-114 - var_t2_5);
                    temp_a6_24->unk77C = (s32) (arg_sp0.unk-118 + var_t1_6);
                }
                if (var_s6_3 & 8) {
                    temp_at_15 = arg_sp0.unk-218;
                    temp_at_15->unk77C = (s32) (arg_sp0.unk-11C + var_t2_5);
                    temp_at_15->unk77C = (s32) (arg_sp0.unk-110 - var_t1_6);
                }
            }
        }
block_10:
block_11:
        temp_a6_25 = arg_sp0.unk-210 + 0xC;
        arg_sp0.unk-210 = temp_a6_25;
        if ((arg_sp0.unk-1E8 + arg_sp0.unk-1F8) != temp_a6_25) {
            goto loop_12;
        }
        goto block_182;
    }
block_182:
    temp_a5_17 = arg_sp0.unk-218;
    if (arg_sp0.unk-200 != 0) {
        temp_a5_17->unk77C = 0x500;
        temp_a5_17->unk77C = 0x400;
        goto block_184;
    }
    if (arg_sp0.unk-1D8 != 0) {
block_184:
        ((void *) arg_sp0.unk-218)->unk7A8 = 0;
    }
    return (s64) var_v0;
}

void expPolyPoint(void *arg0, void *arg1, s32 arg2, s32 arg3, s64 arg4) {
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s16 temp_a6_3;
    s16 temp_a7_2;
    s16 var_a1;
    s16 var_t1;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_ra;
    s32 temp_s0_2;
    s32 temp_s1_2;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s6_2;
    s32 temp_s7;
    s32 temp_s8;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t3;
    s32 temp_t8_2;
    s32 temp_t9_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a6;
    s32 var_a6_3;
    s32 var_a7;
    s32 var_at;
    s32 var_t0;
    s32 var_t1_2;
    s32 var_t2;
    s32 var_v0;
    s64 temp_a3_2;
    s64 temp_a5;
    s64 temp_s0;
    s64 temp_s1;
    s64 temp_s6;
    s64 temp_t8;
    s64 temp_t9;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a1_2;
    s64 var_a1_4;
    s64 var_a6_2;
    s64 var_a6_4;
    s64 var_t9;
    void *temp_a3;
    void *temp_a6;
    void *temp_gp;
    void *temp_t0;
    void *var_a1_3;
    void *var_t8;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x162A0C;
    temp_t0 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    temp_a7 = **(arg1->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    if (arg3 != 0) {
        temp_a6 = temp_t0->unk8;
        temp_a3 = temp_a6->unk8;
        var_t8 = temp_a3 + 8;
        if (temp_a3 != NULL) {
            goto block_2;
        }
        var_t8 = temp_a6;
        if (temp_a3 == NULL) {
            var_a6 = 1;
        } else {
block_2:
            var_a6 = temp_a3->unk4;
        }
        temp_a5 = temp_a7 + 0x40000;
        if (var_a6 != 1) {
            nfbPolyPoint(arg3, temp_a5, var_a6, temp_a7);
            return;
        }
        sp28 = temp_a5;
        temp_a6_2 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
        switch (temp_a6_2) {                        /* irregular */
        default:
            sp28->unk52C = (s32) (temp_a6_2 | 0x1000);
            sp28->unk4D4 = 0;
            sp18 = (s64) temp_t0->unk34;
            var_a3 = temp_t0->unk15 * 8;
            break;
        case 13:
            sp28->unk52C = 0x100B;
            var_a3 = 1;
            sp18 = 0;
            sp28->unk4D4 = (s32) (temp_t0->unk34 & 3);
            break;
        case 12:
            sp28->unk52C = 0x1008;
            var_a3 = 1;
            sp18 = 0;
            sp28->unk4D4 = (s32) (temp_t0->unk34 & 0xF);
            break;
        case 14:
            sp28->unk52C = 0x100B;
            sp18 = 0;
            var_a3 = 9;
            sp28->unk4D4 = (s32) (temp_t0->unk34 & 0xC);
            break;
        }
        sp28->unk530 = (s32) temp_t0->unk28;
        sp28->unk77C = (s32) (sp18 & 0xFFFFFF);
        sp28->unk77C = (s32) temp_t0->unk30;
        sp28->unk77C = var_a3;
        sp28->unk520 = 0xA;
        sp0 = (s64) temp_gp->unk-51F2;
        sp28->unk528 = (s32) var_t8->unk0;
        sp10 = (s64) temp_gp->unk-51F4;
        var_t0 = 0;
        sp28->unk77C = (s32) (var_t8->unk4 - 1);
        sp28->unk77C = (s32) var_t8->unk2;
        sp8 = temp_gp->unk-51EE - 1;
        var_t9 = temp_gp->unk-51F0 - 1;
        sp28->unk77C = (s32) (var_t8->unk6 - 1);
        temp_a7_2 = arg0->unkA;
        temp_a6_3 = arg0->unk8;
        var_a1 = temp_a7_2;
        var_t1 = temp_a6_3;
        if (arg3 >= 8) {
            sp28->unk584 = 0;
            if (arg2 != 1) {
                sp30 = 0;
                sp38 = arg4;
                sp80 = var_t9;
                var_t2 = 0;
                var_a1_2 = arg4;
                var_t1_2 = arg3;
loop_24:
                var_t1_2 -= 8;
                temp_a3_2 = var_a1_2->unk1A + temp_a7_2;
                temp_t8 = var_a1_2->unk1C + temp_a6_3;
                sp60 = temp_t8;
                sp68 = temp_a3_2;
                temp_s6 = var_a1_2->unk16 + temp_a7_2;
                sp70 = temp_s6;
                temp_s1 = var_a1_2->unk14 + temp_a6_3;
                sp58 = temp_s1;
                temp_s1_2 = temp_s1 | temp_s6;
                temp_v0 = var_a1_2->unk12 + temp_a7_2;
                sp50 = temp_v0;
                temp_t9 = var_a1_2->unk10 + temp_a6_3;
                sp48 = temp_t9;
                temp_t9_2 = temp_t9 | temp_v0;
                temp_s4 = var_a1_2->unkA + temp_a7_2;
                temp_s3 = var_a1_2->unk8 + temp_a6_3;
                temp_a4 = var_a1_2->unkE + temp_a7_2;
                temp_s5 = var_a1_2->unkC + temp_a6_3;
                temp_s8 = var_a1_2->unk2 + temp_a7_2;
                temp_s7 = var_a1_2->unk0 + temp_a6_3;
                temp_a2 = var_a1_2->unk4 + temp_a6_3;
                temp_s0 = var_a1_2->unk6 + temp_a7_2;
                sp78 = temp_s0;
                temp_s0_2 = temp_a2 | temp_s0;
                temp_ra = temp_s7 | temp_s8;
                temp_t3 = temp_s5 | temp_a4;
                temp_s2 = temp_s3 | temp_s4;
                temp_s6_2 = var_a1_2->unk18 + temp_a6_3;
                temp_a3_3 = temp_s6_2 | temp_a3_2;
                temp_v0_2 = var_a1_2->unk1E + temp_a7_2;
                sp40 = temp_v0_2;
                temp_t8_2 = temp_t8 | temp_v0_2;
                var_a1_2 += 0x20;
                if ((temp_ra | temp_s0_2 | (temp_s2 | temp_t3) | (temp_t9_2 | temp_s1_2) | (temp_a3_3 | temp_t8_2)) & ~0x7FF) {
                    sp30 = 1;
                    if (!(temp_ra & ~0x7FF)) {
                        var_t0 += 1;
                        sp28->unk77C = temp_s7;
                        sp28->unk77C = temp_s8;
                    }
                    if (!(temp_s0_2 & ~0x7FF)) {
                        var_t0 += 1;
                        sp28->unk77C = temp_a2;
                        sp28->unk77C = (s32) sp78;
                    }
                    if (!(temp_s2 & ~0x7FF)) {
                        var_t0 += 1;
                        sp28->unk77C = temp_s3;
                        sp28->unk77C = temp_s4;
                    }
                    if (!(temp_t3 & ~0x7FF)) {
                        var_t0 += 1;
                        sp28->unk77C = temp_s5;
                        sp28->unk77C = temp_a4;
                    }
                    var_at = temp_s1_2 & ~0x7FF;
                    if (!(temp_t9_2 & ~0x7FF)) {
                        var_t0 += 1;
                        sp28->unk77C = (s32) sp48;
                        sp28->unk77C = (s32) sp50;
                        var_at = temp_s1_2 & ~0x7FF;
                    }
                    if (var_at == 0) {
                        var_t0 += 1;
                        sp28->unk77C = (s32) sp58;
                        sp28->unk77C = (s32) sp70;
                    }
                    if (!(temp_a3_3 & ~0x7FF)) {
                        var_t0 += 1;
                        sp28->unk77C = temp_s6_2;
                        sp28->unk77C = (s32) sp68;
                    }
                    if (!(temp_t8_2 & ~0x7FF)) {
                        var_t0 += 1;
                        sp28->unk77C = (s32) sp60;
                        sp28->unk77C = (s32) sp40;
                    }
                } else {
                    sp28->unk77C = temp_s7;
                    sp28->unk77C = temp_s8;
                    sp28->unk77C = temp_a2;
                    sp28->unk77C = (s32) sp78;
                    sp28->unk77C = temp_s3;
                    sp28->unk77C = temp_s4;
                    sp28->unk77C = temp_s5;
                    sp28->unk77C = temp_a4;
                    sp28->unk77C = (s32) sp48;
                    sp28->unk77C = (s32) sp50;
                    sp28->unk77C = (s32) sp58;
                    sp28->unk77C = (s32) sp70;
                    sp28->unk77C = temp_s6_2;
                    sp28->unk77C = (s32) sp68;
                    sp28->unk77C = (s32) sp60;
                    sp28->unk77C = (s32) sp40;
                }
                var_t2 += 1;
                var_t9 = sp80;
                if (var_t1_2 >= 8) {
                    goto loop_24;
                }
                if (var_t1_2 > 0) {
                    var_a3_2 = var_t1_2 - 1;
                    var_t9 = sp80;
                    var_a1_3 = (var_t2 * 8 * 4) + sp38;
loop_47:
                    var_a1_3 += 4;
                    var_a3_2 -= 1;
                    temp_t1 = var_a1_3->unk-2 + temp_a7_2;
                    temp_a4_2 = var_a1_3->unk-4 + temp_a6_3;
                    if (!((temp_a4_2 | temp_t1) & ~0x7FF)) {
                        var_t0 += 1;
                        sp28->unk77C = temp_a4_2;
                        sp28->unk77C = temp_t1;
                    }
                    if (var_a3_2 >= 0) {
                        goto loop_47;
                    }
                }
            } else {
                sp30 = 1;
                if (arg3 > 0) {
                    var_a6_2 = arg4;
                    if (arg3 & 1) {
                        var_t1 += var_a6_2->unk0;
                        var_a1 += var_a6_2->unk2;
                        if (!((var_t1 | var_a1) & ~0x7FF)) {
                            var_t0 = 1;
                            sp28->unk77C = (s32) var_t1;
                            sp28->unk77C = (s32) var_a1;
                        }
                        var_a6_2 += 4;
                    }
                    if ((arg3 >> 1) != 0) {
loop_97:
                        temp_a1 = var_a6_2->unk2 + var_a1;
                        temp_t1_2 = var_a6_2->unk0 + var_t1;
                        if (!((temp_t1_2 | temp_a1) & ~0x7FF)) {
                            var_t0 += 1;
                            sp28->unk77C = temp_t1_2;
                            sp28->unk77C = temp_a1;
                        }
                        var_t1 = var_a6_2->unk4 + temp_t1_2;
                        var_a1 = var_a6_2->unk6 + temp_a1;
                        var_a6_2 += 8;
                        if (!((var_t1 | var_a1) & ~0x7FF)) {
                            var_t0 += 1;
                            sp28->unk77C = (s32) var_t1;
                            sp28->unk77C = (s32) var_a1;
                        }
                        if (var_a6_2 != ((arg3 * 4) + arg4)) {
                            goto loop_97;
                        }
                    }
                }
            }
            var_a7 = var_t0 & 7;
            if (var_t0 != 0) {
                goto block_50;
            }
            if (sp30 != 0) {
                var_a7 = var_t0 & 7;
                goto block_51;
            }
block_50:
            if (var_a7 != 0) {
block_51:
                var_a4 = 0;
                if (var_a7 < 8) {
                    temp_a3_4 = 8 - var_a7;
                    var_a6_3 = temp_a3_4 & 3;
                    if (var_a6_3 != 0) {
                        do {
                            var_a4 += 1;
                            var_a6_3 -= 1;
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                        } while (var_a6_3 != 0);
                    }
                    temp_a1_2 = temp_a3_4 >> 2;
                    if (temp_a1_2 != 0) {
                        if (temp_a1_2 >= 2) {
                            var_v0 = var_a4 + 4;
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
loop_57:
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                            if (var_v0 != (temp_a3_4 - 4)) {
                                sp28->unk77C = 0x500;
                                sp28->unk77C = 0x400;
                                sp28->unk77C = 0x500;
                                sp28->unk77C = 0x400;
                                sp28->unk77C = 0x500;
                                sp28->unk77C = 0x400;
                                sp28->unk77C = 0x500;
                                sp28->unk77C = 0x400;
                                if (var_v0 != (temp_a3_4 - 8)) {
                                    sp28->unk77C = 0x500;
                                    sp28->unk77C = 0x400;
                                    sp28->unk77C = 0x500;
                                    sp28->unk77C = 0x400;
                                    sp28->unk77C = 0x500;
                                    sp28->unk77C = 0x400;
                                    sp28->unk77C = 0x500;
                                    var_v0 += 0xC;
                                    sp28->unk77C = 0x400;
                                    if (var_v0 != temp_a3_4) {
                                        goto loop_57;
                                    }
                                }
                            }
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                        } else {
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                            sp28->unk77C = 0x500;
                            sp28->unk77C = 0x400;
                        }
                    }
                }
            }
            sp28->unk7A8 = 0;
            sp28->unk520 = 0xA;
            sp28->unk528 = (s32) sp10;
            sp28->unk77C = (s32) var_t9;
            sp28->unk77C = (s32) sp0;
            sp28->unk77C = (s32) sp8;
            return;
        }
        sp28->unk4BC = 0;
        if (arg2 != 1) {
            if (arg3 > 0) {
                var_a1_4 = arg4;
                if (arg3 & 1) {
                    temp_a4_3 = var_a1_4->unk0 + temp_a6_3;
                    temp_a3_5 = var_a1_4->unk2 + temp_a7_2;
                    if (!((temp_a4_3 | temp_a3_5) & ~0x7FF)) {
                        sp28->unk77C = temp_a4_3;
                        sp28->unk77C = temp_a3_5;
                    }
                    var_a1_4 += 4;
                }
                if ((arg3 >> 1) != 0) {
loop_64:
                    temp_a3_6 = var_a1_4->unk2 + temp_a7_2;
                    temp_a4_4 = var_a1_4->unk0 + temp_a6_3;
                    if (!((temp_a4_4 | temp_a3_6) & ~0x7FF)) {
                        sp28->unk77C = temp_a4_4;
                        sp28->unk77C = temp_a3_6;
                    }
                    temp_a3_7 = var_a1_4->unk6 + temp_a7_2;
                    temp_a4_5 = var_a1_4->unk4 + temp_a6_3;
                    var_a1_4 += 8;
                    if (!((temp_a4_5 | temp_a3_7) & ~0x7FF)) {
                        sp28->unk77C = temp_a4_5;
                        sp28->unk77C = temp_a3_7;
                    }
                    if (var_a1_4 != ((arg3 * 4) + arg4)) {
                        goto loop_64;
                    }
                }
            }
        } else if (arg3 > 0) {
            var_a6_4 = arg4;
            if (arg3 & 1) {
                var_t1 += var_a6_4->unk0;
                var_a1 += var_a6_4->unk2;
                if (!((var_t1 | var_a1) & ~0x7FF)) {
                    sp28->unk77C = (s32) var_t1;
                    sp28->unk77C = (s32) var_a1;
                }
                var_a6_4 += 4;
            }
            if ((arg3 >> 1) != 0) {
loop_83:
                temp_a1_3 = var_a6_4->unk2 + var_a1;
                temp_t1_3 = var_a6_4->unk0 + var_t1;
                if (!((temp_t1_3 | temp_a1_3) & ~0x7FF)) {
                    sp28->unk77C = temp_t1_3;
                    sp28->unk77C = temp_a1_3;
                }
                var_a1 = var_a6_4->unk6 + temp_a1_3;
                var_t1 = var_a6_4->unk4 + temp_t1_3;
                var_a6_4 += 8;
                if (!((var_t1 | var_a1) & ~0x7FF)) {
                    sp28->unk77C = (s32) var_t1;
                    sp28->unk77C = (s32) var_a1;
                }
                if (var_a6_4 != ((arg3 * 4) + arg4)) {
                    goto loop_83;
                }
            }
        }
        sp28->unk77C = 0x500;
        sp28->unk77C = 0x400;
        sp28->unk7A8 = 0;
        sp28->unk520 = 0xA;
        sp28->unk528 = (s32) sp10;
        sp28->unk77C = (s32) var_t9;
        sp28->unk77C = (s32) sp0;
        sp28->unk77C = (s32) sp8;
    }
}

void expDrawPoints(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, void *arg7) {
    s16 temp_t0;
    s16 temp_v0;
    s16 var_v0;
    s32 temp_a1;
    s32 temp_s1;
    s32 temp_t9;
    s32 var_t2;
    s32 var_v1;
    void *temp_t3;
    void *var_a0;
    void *var_v1_2;

    temp_t9 = arg7->unk84;
    temp_s1 = (*(temp_t9 + (nfbWindowPrivateIndex * 4)))->unk14;
    temp_t3 = **(arg7->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    switch (temp_s1) {                              /* irregular */
    default:
        temp_t3->unk4052C = (s32) (temp_s1 | 0x1000);
        temp_t3->unk404D4 = 0;
        var_t2 = arg4;
        var_v1 = ((dbcWindowPrivateIndex * 4) + temp_t9)->unk1 * 8;
        break;
    case 13:
        var_t2 = 0;
        var_v1 = 1;
        temp_t3->unk4052C = 0x100B;
        temp_t3->unk404D4 = (s32) (arg4 & 3);
        break;
    case 12:
        var_t2 = 0;
        var_v1 = 1;
        temp_t3->unk4052C = 0x1008;
        temp_t3->unk404D4 = (s32) (arg4 & 0xF);
        break;
    case 14:
        var_t2 = 0;
        var_v1 = 9;
        temp_t3->unk4052C = 0x100B;
        temp_t3->unk404D4 = (s32) (arg4 & 0xC);
        break;
    }
    temp_t3->unk40530 = arg2;
    temp_t3->unk4077C = (s32) (var_t2 & 0xFFFFFF);
    temp_t3->unk4077C = arg3;
    temp_t3->unk4077C = var_v1;
    temp_t3->unk404BC = 0;
    if (arg1 != 0) {
        var_v1_2 = arg0;
        if (arg1 & 1) {
            temp_t3->unk4077C = (s32) (var_v1_2->unk0 + arg5);
            temp_t0 = var_v1_2->unk2;
            var_v1_2 += 4;
            temp_t3->unk4077C = (s32) (temp_t0 + arg6);
        }
        temp_a1 = arg1 >> 1;
        var_a0 = var_v1_2;
        if (temp_a1 != 0) {
            if (temp_a1 >= 2) {
                var_v0 = var_a0->unk0;
                do {
                    temp_t3->unk4077C = (s32) (var_v0 + arg5);
                    temp_t3->unk4077C = (s32) (var_a0->unk2 + arg6);
                    temp_t3->unk4077C = (s32) (var_a0->unk4 + arg5);
                    temp_v0 = var_a0->unk6;
                    var_a0 += 8;
                    temp_t3->unk4077C = (s32) (temp_v0 + arg6);
                    var_v0 = var_a0->unk0;
                } while (var_a0 != (((arg1 * 4) + arg0) - 8));
                temp_t3->unk4077C = (s32) (var_v0 + arg5);
                temp_t3->unk4077C = (s32) (var_a0->unk2 + arg6);
                temp_t3->unk4077C = (s32) (var_a0->unk4 + arg5);
                temp_t3->unk4077C = (s32) (var_a0->unk6 + arg6);
            } else {
                temp_t3->unk4077C = (s32) (var_a0->unk0 + arg5);
                temp_t3->unk4077C = (s32) (var_a0->unk2 + arg6);
                temp_t3->unk4077C = (s32) (var_a0->unk4 + arg5);
                temp_t3->unk4077C = (s32) (var_a0->unk6 + arg6);
            }
        }
    }
    temp_t3->unk407A8 = 0;
}
