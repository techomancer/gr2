s32 nfbImageGlyphBlt(void *, void *, s32, s32, u32, s64, s64, s16); /* extern */
s32 nfbSolidPolyGlyphBlt(void *, void *, s32, s32, u32, s64, s64, ?); /* extern */
extern s32 expScreenPrivateIndex;
extern s32 nfbGCPrivateIndex;
extern s32 nfbWindowPrivateIndex;

void expPolyGlyphBltTE8(void *arg0, void *arg1, s32 arg2, s32 arg3, u32 arg4, s64 arg5, s64 arg6) {
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
    s16 temp_a7;
    s16 temp_at;
    s16 temp_v1_2;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_ra;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_s8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 var_a1;
    s32 var_a2;
    s32 var_at_3;
    s32 var_at_4;
    s32 var_at_5;
    s32 var_at_6;
    s32 var_ra;
    s32 var_s2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_5;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s64 var_at;
    s64 var_t8;
    s64 var_t9;
    u16 temp_v0_3;
    u16 temp_v1_3;
    u16 var_v0_4;
    u32 temp_a7_2;
    u32 var_s1;
    u8 *var_a4;
    u8 var_at_2;
    void *temp_s1;
    void *temp_v1;
    void *var_a0;
    void *var_a3;
    void *var_v0_3;

    sp28 = arg5;
    temp_s1 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    sp30 = (s64) **(arg1->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    if (arg4 != 0) {
        temp_v1 = arg1->unk2C;
        temp_v1_2 = temp_v1->unk24;
        temp_s7 = arg0->unkA + arg3;
        sp2 = temp_s7 - temp_v1->unk44;
        sp6 = arg1->unk2C->unk46 + temp_s7;
        temp_at = arg0->unk8 + arg2;
        sp0 = temp_at;
        sp4 = (temp_v1_2 * arg4) + temp_at;
        sp20 = (s64) temp_v1_2;
        sp18 = (s64) temp_at;
        temp_v0 = arg1->unk0->unk17C(temp_s1->unk8, sp);
        switch (temp_v0) {                          /* switch 1; irregular */
        case 1:                                     /* switch 1 */
            temp_s8 = sp6 - sp2;
            temp_v0_2 = (s32) (temp_s8 + 1) >> 1;
            var_at = 0x143;
            if (temp_v0_2 < 9) {
                var_ra = 8;
                goto block_7;
            }
            var_at = 0x144;
            if (temp_v0_2 < 0x11) {
                var_ra = 0x10;
                goto block_7;
            }
            var_at = 0x145;
            if (temp_v0_2 < 0x21) {
                var_ra = 0x20;
                goto block_7;
            }
            temp_a7 = temp_v0_2 < 0x41;
            var_at = 0x146;
            if (temp_a7 != 0) {
                var_ra = 0x40;
block_7:
                temp_ra = var_ra - temp_v0_2;
                temp_a0 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                switch (temp_a0) {                  /* switch 2; irregular */
                default:                            /* switch 2 */
                    sp30->unk4052C = (s32) (temp_a0 | 0x1000);
                    sp30->unk404D4 = 0;
                    var_v0 = temp_s1->unk34;
                    var_a1 = temp_s1->unk15 * 8;
                    break;
                case 13:                            /* switch 2 */
                    sp30->unk4052C = 0x100B;
                    var_a1 = 1;
                    var_v0 = 0;
                    sp30->unk404D4 = (s32) (temp_s1->unk34 & 3);
                    break;
                case 12:                            /* switch 2 */
                    sp30->unk4052C = 0x1008;
                    var_a1 = 1;
                    var_v0 = 0;
                    sp30->unk404D4 = (s32) (temp_s1->unk34 & 0xF);
                    break;
                case 14:                            /* switch 2 */
                    sp30->unk4052C = 0x100B;
                    var_a1 = 9;
                    var_v0 = 0;
                    sp30->unk404D4 = (s32) (temp_s1->unk34 & 0xC);
                    break;
                }
                sp30->unk40530 = (s32) temp_s1->unk2C;
                sp30->unk4077C = (s32) (var_v0 & 0xFFFFFF);
                sp30->unk4077C = (s32) temp_s1->unk30;
                sp30->unk4077C = var_a1;
                sp30->unk404E0 = (s32) temp_s1->unk28;
                sp30->unk404DC = (s32) temp_s1->unk2C;
                temp_s6 = temp_s7 - arg1->unk2C->unk44;
                if (arg4 >= 2U) {
                    sp10 = var_at;
                    var_s2 = 0;
                    var_t8 = sp18;
                    var_s1 = arg4;
                    var_t9 = sp28;
                    sp8 = temp_s8 + 1;
                    temp_s3 = sp20 * 2;
                    temp_s4 = 8 - sp20;
                    temp_s5 = 0x18 - sp20;
loop_16:
                    var_s1 -= 2;
                    ((var_at * 4) + sp30)->unk40000 = (s32) var_t8;
                    sp30->unk4077C = temp_s6;
                    sp30->unk4077C = temp_s3;
                    var_a3 = var_t9->unk4->unkC;
                    sp30->unk4077C = temp_s8;
                    if (temp_s8 > 0) {
                        var_a4 = var_t9->unk0->unkC;
                        if ((temp_s8 - 2) > 0) {
                            var_at_2 = var_a4->unk0;
                            var_a2 = temp_s8 - 2;
loop_19:
                            temp_a2 = var_a2 - 2;
                            sp30->unk4077C = (s32) ((var_at_2 << 0x18) | (var_a3->unk0 << temp_s5) | ((var_a4->unk2 << 8) | (var_a3->unk2 << temp_s4)));
                            var_at_2 = var_a4->unk4;
                            if (temp_a2 > 0) {
                                temp_a2_2 = temp_a2 - 2;
                                sp30->unk4077C = (s32) ((var_at_2 << 0x18) | (var_a3->unk4 << temp_s5) | ((var_a4->unk6 << 8) | (var_a3->unk6 << temp_s4)));
                                var_at_2 = var_a4->unk8;
                                if (temp_a2_2 > 0) {
                                    var_a2 = temp_a2_2 - 2;
                                    sp30->unk4077C = (s32) ((var_at_2 << 0x18) | (var_a3->unk8 << temp_s5) | ((var_a4->unkA << 8) | (var_a3->unkA << temp_s4)));
                                    var_a3 += 0xC;
                                    var_a4 += 0xC;
                                    var_at_2 = *var_a4;
                                    if (var_a2 > 0) {
                                        goto loop_19;
                                    }
                                } else {
                                    var_a3 += 8;
                                    var_a4 += 8;
                                }
                            } else {
                                var_a3 += 4;
                                var_a4 += 4;
                            }
                            sp30->unk4077C = (s32) ((var_at_2 << 0x18) | (var_a3->unk0 << temp_s5) | ((var_a4->unk2 << 8) | (var_a3->unk2 << temp_s4)));
                        } else {
                            sp30->unk4077C = (s32) ((var_a4->unk0 << 0x18) | (var_a3->unk0 << temp_s5) | ((var_a4->unk2 << 8) | (var_a3->unk2 << temp_s4)));
                        }
                    }
                    var_t8 += temp_s3;
                    var_v0_2 = temp_ra & 3;
                    if (temp_ra > 0) {
                        var_at_3 = 0;
                        if (var_v0_2 != 0) {
                            do {
                                var_at_3 += 1;
                                var_v0_2 -= 1;
                                sp30->unk4077C = 0;
                            } while (var_v0_2 != 0);
                        }
                        temp_a1 = temp_ra >> 2;
                        if (temp_a1 != 0) {
                            var_v1 = var_at_3 + 4;
                            if (temp_a1 >= 2) {
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
loop_29:
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                if (var_v1 != (temp_ra - 4)) {
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    if (var_v1 != (temp_ra - 8)) {
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        if (var_v1 != (temp_ra - 0xC)) {
                                            sp30->unk4077C = 0;
                                            sp30->unk4077C = 0;
                                            sp30->unk4077C = 0;
                                            var_v1 += 0x10;
                                            sp30->unk4077C = 0;
                                            if (var_v1 == temp_ra) {

                                            } else {
                                                goto loop_29;
                                            }
                                        }
                                    }
                                }
                                sp30->unk4077C = 0;
                            } else {
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                            }
                            sp30->unk4077C = 0;
                        }
                    }
                    var_s2 += 1;
                    var_t9 += 8;
                    if (var_s1 >= 2U) {
                        goto loop_16;
                    }
                } else {
                    sp10 = var_at;
                    var_s2 = 0;
                    var_s1 = arg4;
                }
                if (var_s1 != 0) {
                    ((sp10 * 4) + sp30)->unk40000 = (s32) ((sp20 * 2 * var_s2) + sp18);
                    sp30->unk4077C = temp_s6;
                    sp30->unk4077C = (s32) sp20;
                    sp30->unk4077C = temp_s8;
                    if (temp_s8 > 0) {
                        var_v0_3 = (*((var_s2 * 8) + sp28))->unkC;
                        var_at_4 = temp_s8;
                        temp_a7_2 = temp_s8 + 1;
                        temp_a2_3 = (s32) ((temp_a7_2 >> 0x1F) + temp_a7_2) >> 1;
                        if (temp_a2_3 & 1) {
                            var_v0_3 += 4;
                            var_at_4 -= 2;
                            sp30->unk4077C = (s32) (var_v0_3->unk-2 | (var_v0_3->unk-4 << 0x10));
                        }
                        var_a0 = var_v0_3;
                        if ((temp_a2_3 >> 1) != 0) {
                            var_at_5 = var_at_4 - 4;
                            if ((var_at_4 - 4) > 0) {
                                var_v0_4 = var_a0->unk2;
                                var_v1_2 = var_a0->unk0 << 0x10;
                                do {
                                    sp30->unk4077C = (s32) (var_v0_4 | var_v1_2);
                                    temp_v0_3 = var_a0->unk4;
                                    temp_v1_3 = var_a0->unk6;
                                    var_a0 += 8;
                                    sp30->unk4077C = (s32) (temp_v1_3 | (temp_v0_3 << 0x10));
                                    var_at_5 -= 4;
                                    var_v0_4 = var_a0->unk2;
                                    var_v1_2 = var_a0->unk0 << 0x10;
                                } while (var_at_5 > 0);
                                sp30->unk4077C = (s32) (var_v0_4 | var_v1_2);
                                sp30->unk4077C = (s32) (var_a0->unk6 | (var_a0->unk4 << 0x10));
                            } else {
                                sp30->unk4077C = (s32) (var_a0->unk2 | (var_a0->unk0 << 0x10));
                                sp30->unk4077C = (s32) (var_a0->unk6 | (var_a0->unk4 << 0x10));
                            }
                        }
                    }
                    var_v0_5 = temp_ra & 3;
                    if (temp_ra > 0) {
                        var_at_6 = 0;
                        if (var_v0_5 != 0) {
                            do {
                                var_at_6 += 1;
                                var_v0_5 -= 1;
                                sp30->unk4077C = 0;
                            } while (var_v0_5 != 0);
                        }
                        temp_v0_4 = temp_ra >> 2;
                        if (temp_v0_4 != 0) {
                            var_v1_3 = var_at_6 + 4;
                            if (temp_v0_4 >= 2) {
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
loop_52:
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                if (var_v1_3 != (temp_ra - 4)) {
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    if (var_v1_3 != (temp_ra - 8)) {
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        if (var_v1_3 != (temp_ra - 0xC)) {
                                            sp30->unk4077C = 0;
                                            sp30->unk4077C = 0;
                                            sp30->unk4077C = 0;
                                            var_v1_3 += 0x10;
                                            sp30->unk4077C = 0;
                                            if (var_v1_3 != temp_ra) {
                                                goto loop_52;
                                            }
                                        }
                                    }
                                }
                                sp30->unk4077C = 0;
                            } else {
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                            }
                            sp30->unk4077C = 0;
                        }
                    }
                }
                if (sp10 != 0) {
                    sp30->unk407A8 = 0;
                }
                return;
            }
            nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, sp28, arg6, temp_a7);
            return;
        case 2:                                     /* switch 1 */
            nfbSolidPolyGlyphBlt(arg0, arg1, arg2, arg3, arg4, sp28, arg6, 2);
            return;
        }
    }
}

void expPolyGlyphBltTE16(void *arg0, void *arg1, s32 arg2, s32 arg3, u32 arg4, s64 arg5, s64 arg6) {
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp10;
    s32 spC;
    s32 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a0;
    s16 temp_a1;
    s16 temp_a7;
    s32 *var_v1_5;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a7_2;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v0_6;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a2;
    s32 var_a7;
    s32 var_at;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_6;
    s32 var_v1_7;
    s64 temp_at;
    s64 temp_ra;
    s64 temp_v0;
    s64 temp_v0_3;
    s64 var_a6;
    s64 var_at_2;
    s64 var_s6;
    s64 var_s7;
    s64 var_t3;
    s64 var_v0_4;
    s64 var_v1;
    u16 temp_v0_5;
    u16 temp_v1;
    u16 var_v0_3;
    void *temp_s0;
    void *temp_s8;

    sp90 = 0;
    spA0 = 0;
    var_s7 = 0;
    var_s6 = 0;
    sp98 = arg6;
    spA8 = arg5;
    temp_s0 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    temp_s8 = **(arg1->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    if (arg4 != 0) {
        temp_a1 = arg1->unk2C->unk24;
        temp_a0 = arg0->unk8 + arg2;
        sp0 = temp_a0;
        sp4 = (temp_a1 * arg4) + temp_a0;
        temp_v0 = arg0->unkA + arg3;
        temp_at = (s64) ((temp_v0 - arg1->unk2C->unk44) << 0x30) >> 0x30;
        sp2 = (s16) temp_at;
        sp88 = temp_v0;
        temp_ra = (s64) ((arg1->unk2C->unk46 + temp_v0) << 0x30) >> 0x30;
        sp6 = (s16) temp_ra;
        sp80 = (s64) temp_a0;
        sp70 = (s64) temp_a1;
        sp78 = temp_ra - temp_at;
        temp_v0_2 = arg1->unk0->unk17C(temp_s0->unk8, sp);
        switch (temp_v0_2) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            break;
        case 1:                                     /* switch 1 */
            temp_v0_3 = sp78 + 1;
            unksp60 = temp_v0_3;
            temp_v0_4 = temp_v0_3 >> 1;
            if (temp_v0_4 < 9) {
                spC = 8 - temp_v0_4;
                sp8 = 0x143;
            } else {
                if (temp_v0_4 < 0x11) {
                    sp8 = 0x144;
                    spC = 0x10 - temp_v0_4;
                } else {
                    temp_a7 = temp_v0_4 < 0x41;
                    if (temp_v0_4 < 0x21) {
                        sp8 = 0x145;
                        spC = 0x20 - temp_v0_4;
                    } else {
                        if (temp_a7 != 0) {
                            sp8 = 0x146;
                            spC = 0x40 - temp_v0_4;
                        } else {
                            nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, spA8, sp98, temp_a7);
                            sp90 = 1;
                        }
                        spA0 = sp90;
                    }
                    var_s7 = spA0;
                }
                var_s6 = var_s7;
            }
            if (var_s6 == 0) {
                temp_a1_2 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                switch (temp_a1_2) {                /* switch 2; irregular */
                default:                            /* switch 2 */
                    temp_s8->unk4052C = (s32) (temp_a1_2 | 0x1000);
                    temp_s8->unk404D4 = 0;
                    var_v0 = temp_s0->unk34;
                    var_a0 = temp_s0->unk15 * 8;
                    break;
                case 13:                            /* switch 2 */
                    temp_s8->unk4052C = 0x100B;
                    var_a0 = 1;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 3);
                    break;
                case 12:                            /* switch 2 */
                    temp_s8->unk4052C = 0x1008;
                    var_a0 = 1;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 0xF);
                    break;
                case 14:                            /* switch 2 */
                    temp_s8->unk4052C = 0x100B;
                    var_a0 = 9;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 0xC);
                    break;
                }
                temp_s8->unk40530 = (s32) temp_s0->unk2C;
                temp_s8->unk4077C = (s32) (var_v0 & 0xFFFFFF);
                temp_s8->unk4077C = (s32) temp_s0->unk30;
                temp_s8->unk4077C = var_a0;
                var_a6 = spA8;
                temp_s8->unk404E0 = (s32) temp_s0->unk28;
                sp10 = (s64) sp8;
                temp_s8->unk404DC = (s32) temp_s0->unk2C;
                var_t3 = sp80;
loop_24:
                temp_a5 = (*var_a6)->unkC;
                ((sp8 * 4) + temp_s8)->unk40000 = (s32) var_t3;
                temp_s8->unk4077C = (s32) (sp88 - arg1->unk2C->unk44);
                temp_s8->unk4077C = (s32) sp70;
                var_v0_2 = temp_a5;
                temp_s8->unk4077C = (s32) sp78;
                if (temp_a5 & 3) {
                    temp_a2 = (s32) ((unksp60 >> 0x1F) + unksp60) >> 1;
                    if (sp78 > 0) {
                        var_v1 = sp78;
                        if (temp_a2 & 1) {
                            var_v0_2 += 4;
                            var_v1 -= 2;
                            temp_s8->unk4077C = (s32) (var_v0_2->unk-2 | (var_v0_2->unk-4 << 0x10));
                        }
                        var_a0_2 = var_v0_2;
                        if ((temp_a2 >> 1) != 0) {
                            if ((var_v1 - 4) > 0) {
                                var_v0_3 = var_a0_2->unk2;
                                var_at = var_v1 - 4;
                                var_v1_2 = var_a0_2->unk0 << 0x10;
                                do {
                                    temp_s8->unk4077C = (s32) (var_v0_3 | var_v1_2);
                                    temp_v0_5 = var_a0_2->unk4;
                                    temp_v1 = var_a0_2->unk6;
                                    var_a0_2 += 8;
                                    temp_s8->unk4077C = (s32) (temp_v1 | (temp_v0_5 << 0x10));
                                    var_at -= 4;
                                    var_v0_3 = var_a0_2->unk2;
                                    var_v1_2 = var_a0_2->unk0 << 0x10;
                                } while (var_at > 0);
                                temp_s8->unk4077C = (s32) (var_v0_3 | var_v1_2);
                                var_a7 = var_a0_2->unk6 | (var_a0_2->unk4 << 0x10);
                            } else {
                                temp_s8->unk4077C = (s32) (var_a0_2->unk2 | (var_a0_2->unk0 << 0x10));
                                var_a7 = var_a0_2->unk6 | (var_a0_2->unk4 << 0x10);
                            }
                            temp_s8->unk4077C = var_a7;
                        }
                    }
                } else {
                    var_a2 = temp_a5;
                    var_v0_4 = sp78;
                    if (sp78 >= 4) {
                        temp_t2 = (s32) (((u32) (sp78 >> 1) >> 0x1E) + sp78) >> 2;
                        var_v1_3 = temp_t2 & 3;
                        var_a1 = 0;
                        if (var_v1_3 != 0) {
                            do {
                                temp_a7_2 = *var_a2;
                                var_a2 += 8;
                                var_v0_4 -= 4;
                                temp_s8->unk4077C = temp_a7_2;
                                var_a1 += 1;
                                var_v1_3 -= 1;
                                temp_s8->unk4077C = (s32) var_a2->unk-4;
                            } while (var_v1_3 != 0);
                        }
                        var_v1_4 = var_a1;
                        var_a0_3 = var_a2;
                        if ((temp_t2 >> 2) != 0) {
                            if ((var_v0_4 - 0x10) >= 4) {
                                var_at_2 = var_v0_4 - 0x10;
                                var_v0_5 = var_a0_3->unk0;
                                do {
                                    temp_s8->unk4077C = var_v0_5;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk4;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk8;
                                    temp_s8->unk4077C = (s32) var_a0_3->unkC;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk10;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk14;
                                    temp_v0_6 = var_a0_3->unk18;
                                    var_a0_3 += 0x20;
                                    temp_s8->unk4077C = temp_v0_6;
                                    var_v1_4 += 4;
                                    var_at_2 -= 0x10;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk-4;
                                    var_v0_5 = var_a0_3->unk0;
                                } while (var_at_2 >= 4);
                                temp_s8->unk4077C = var_v0_5;
                                temp_s8->unk4077C = (s32) var_a0_3->unk4;
                                temp_s8->unk4077C = (s32) var_a0_3->unk8;
                                temp_s8->unk4077C = (s32) var_a0_3->unkC;
                                temp_s8->unk4077C = (s32) var_a0_3->unk10;
                                temp_s8->unk4077C = (s32) var_a0_3->unk14;
                                temp_s8->unk4077C = (s32) var_a0_3->unk18;
                                var_a1 = var_v1_4 + 4;
                                var_v0_4 = var_at_2;
                                temp_s8->unk4077C = (s32) var_a0_3->unk1C;
                            } else {
                                temp_s8->unk4077C = (s32) var_a0_3->unk0;
                                temp_s8->unk4077C = (s32) var_a0_3->unk4;
                                temp_s8->unk4077C = (s32) var_a0_3->unk8;
                                temp_s8->unk4077C = (s32) var_a0_3->unkC;
                                temp_s8->unk4077C = (s32) var_a0_3->unk10;
                                temp_s8->unk4077C = (s32) var_a0_3->unk14;
                                temp_s8->unk4077C = (s32) var_a0_3->unk18;
                                temp_s8->unk4077C = (s32) var_a0_3->unk1C;
                                var_a1 = var_v1_4 + 4;
                                var_v0_4 -= 0x10;
                            }
                        }
                    } else {
                        var_a1 = 0;
                        var_v0_4 = sp78;
                    }
                    var_v1_5 = (var_a1 * 8) + temp_a5;
                    switch (var_v0_4) {             /* switch 3; irregular */
                    case 3:                         /* switch 3 */
                        temp_t1 = *var_v1_5;
                        var_v1_5 += 4;
                        temp_s8->unk4077C = temp_t1;
                        /* fallthrough */
                    case 1:                         /* switch 3 */
                    case 2:                         /* switch 3 */
                        temp_s8->unk4077C = (s32) *var_v1_5;
                        break;
                    }
                }
                var_t3 += sp70;
                var_v1_6 = spC & 3;
                if (spC > 0) {
                    var_v0_6 = 0;
                    if (var_v1_6 != 0) {
                        do {
                            var_v0_6 += 1;
                            var_v1_6 -= 1;
                            temp_s8->unk4077C = 0;
                        } while (var_v1_6 != 0);
                    }
                    temp_a1_3 = spC >> 2;
                    if (temp_a1_3 != 0) {
                        if (temp_a1_3 >= 2) {
                            var_v1_7 = var_v0_6 + 4;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
loop_40:
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            if (var_v1_7 != (spC - 4)) {
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                if (var_v1_7 != (spC - 8)) {
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    if (var_v1_7 != (spC - 0xC)) {
                                        temp_s8->unk4077C = 0;
                                        temp_s8->unk4077C = 0;
                                        temp_s8->unk4077C = 0;
                                        var_v1_7 += 0x10;
                                        temp_s8->unk4077C = 0;
                                        if (var_v1_7 == spC) {

                                        } else {
                                            goto loop_40;
                                        }
                                    }
                                }
                            }
                            temp_s8->unk4077C = 0;
                        } else {
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                        }
                        temp_s8->unk4077C = 0;
                    }
                }
                var_a6 += 4;
                if (var_a6 != ((arg4 * 4) + spA8)) {
                    goto loop_24;
                }
                if (sp10 != 0) {
                    temp_s8->unk407A8 = 0;
                }
            }
            break;
        case 2:                                     /* switch 1 */
            nfbSolidPolyGlyphBlt(arg0, arg1, arg2, arg3, arg4, spA8, sp98, 1);
            break;
        }
    }
}

void expPolyGlyphBltTE32(void *arg0, void *arg1, s32 arg2, s32 arg3, u32 arg4, s64 arg5, s64 arg6) {
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 spC;
    s32 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a0;
    s16 temp_a1;
    s16 temp_a7;
    s32 *var_a0_5;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a7_2;
    s32 temp_at_2;
    s32 temp_s7;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a5;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_at;
    s32 var_at_4;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s32 var_v1_3;
    s32 var_v1_4;
    s64 temp_at;
    s64 temp_ra;
    s64 temp_v0;
    s64 var_a1_4;
    s64 var_a4;
    s64 var_a6;
    s64 var_at_2;
    s64 var_s6;
    s64 var_s7;
    s64 var_s7_2;
    s64 var_t3;
    s64 var_v0_4;
    s64 var_v1;
    s64 var_v1_2;
    u16 temp_a0_2;
    u16 temp_v0_4;
    u16 var_at_3;
    u16 var_v0_3;
    void *temp_s0;
    void *temp_s8;

    spA0 = 0;
    spB0 = 0;
    var_s7 = 0;
    var_s6 = 0;
    spA8 = arg6;
    spB8 = arg5;
    temp_s0 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    temp_s8 = **(arg1->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    if (arg4 != 0) {
        temp_a1 = arg1->unk2C->unk24;
        temp_a0 = arg0->unk8 + arg2;
        sp0 = temp_a0;
        sp4 = (temp_a1 * arg4) + temp_a0;
        temp_v0 = arg0->unkA + arg3;
        temp_at = (s64) ((temp_v0 - arg1->unk2C->unk44) << 0x30) >> 0x30;
        sp2 = (s16) temp_at;
        sp98 = temp_v0;
        temp_ra = (s64) ((arg1->unk2C->unk46 + temp_v0) << 0x30) >> 0x30;
        sp6 = (s16) temp_ra;
        sp90 = (s64) temp_a0;
        sp80 = (s64) temp_a1;
        sp88 = temp_ra - temp_at;
        temp_v0_2 = arg1->unk0->unk17C(temp_s0->unk8, sp);
        switch (temp_v0_2) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            break;
        case 1:                                     /* switch 1 */
            if (sp88 < 9) {
                spC = 8;
                sp8 = 0x143;
            } else {
                if (sp88 < 0x11) {
                    spC = 0x10;
                    sp8 = 0x144;
                } else {
                    temp_a7 = sp88 < 0x41;
                    if (sp88 < 0x21) {
                        spC = 0x20;
                        sp8 = 0x145;
                    } else {
                        if (temp_a7 != 0) {
                            spC = 0x40;
                            sp8 = 0x146;
                        } else {
                            nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, spB8, spA8, temp_a7);
                            spA0 = 1;
                        }
                        spB0 = spA0;
                    }
                    var_s7 = spB0;
                }
                var_s6 = var_s7;
            }
            if (var_s6 == 0) {
                var_a6 = sp90;
                var_s7_2 = 1;
                temp_a1_2 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                switch (temp_a1_2) {                /* switch 2; irregular */
                default:                            /* switch 2 */
                    temp_s8->unk4052C = (s32) (temp_a1_2 | 0x1000);
                    temp_s8->unk404D4 = 0;
                    var_v0 = temp_s0->unk34;
                    var_a0 = temp_s0->unk15 * 8;
                    break;
                case 13:                            /* switch 2 */
                    temp_s8->unk4052C = 0x100B;
                    var_a0 = 1;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 3);
                    break;
                case 12:                            /* switch 2 */
                    temp_s8->unk4052C = 0x1008;
                    var_a0 = 1;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 0xF);
                    break;
                case 14:                            /* switch 2 */
                    temp_s8->unk4052C = 0x100B;
                    var_a0 = 9;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 0xC);
                    break;
                }
                if (sp88 >= 1) {
                    var_s7_2 = sp88;
                }
                sp18 = sp88 >= 4;
                sp28 = var_s7_2;
                temp_s8->unk40530 = (s32) temp_s0->unk2C;
                temp_s8->unk4077C = (s32) (var_v0 & 0xFFFFFF);
                var_t3 = spB8;
                temp_s8->unk4077C = (s32) temp_s0->unk30;
                temp_s8->unk4077C = var_a0;
                sp10 = (s64) sp8;
                temp_s8->unk404E0 = (s32) temp_s0->unk28;
                temp_s7 = sp88 + 1;
                temp_s8->unk404DC = (s32) temp_s0->unk2C;
                sp20 = spC - sp88;
loop_26:
                var_v1 = sp88;
                var_a4 = spC - (temp_s7 >> 1);
                var_a5 = (*var_t3)->unkC;
                ((sp8 * 4) + temp_s8)->unk40000 = (s32) var_a6;
                temp_s8->unk4077C = (s32) (sp98 - arg1->unk2C->unk44);
                temp_s8->unk4077C = (s32) sp80;
                temp_v0_3 = var_a5 & 3;
                temp_s8->unk4077C = (s32) sp88;
                if (sp80 < 0x11) {
                    if (temp_v0_3 != 0) {
                        var_v0_2 = var_a5;
                        if (sp88 > 0) {
                            temp_a2 = (s32) (((u32) temp_s7 >> 0x1F) + temp_s7) >> 1;
                            var_v1_2 = sp88;
                            if (temp_a2 & 1) {
                                var_v0_2 += 4;
                                var_v1_2 -= 2;
                                temp_s8->unk4077C = (s32) (var_v0_2->unk-2 | (var_v0_2->unk-4 << 0x10));
                            }
                            var_a1 = var_v0_2;
                            if ((temp_a2 >> 1) != 0) {
                                if ((var_v1_2 - 4) > 0) {
                                    var_v0_3 = var_a1->unk2;
                                    var_at = var_v1_2 - 4;
                                    var_a0_2 = var_a1->unk0 << 0x10;
                                    do {
                                        temp_s8->unk4077C = (s32) (var_v0_3 | var_a0_2);
                                        temp_v0_4 = var_a1->unk4;
                                        temp_a0_2 = var_a1->unk6;
                                        var_a1 += 8;
                                        temp_s8->unk4077C = (s32) (temp_a0_2 | (temp_v0_4 << 0x10));
                                        var_at -= 4;
                                        var_v0_3 = var_a1->unk2;
                                        var_a0_2 = var_a1->unk0 << 0x10;
                                    } while (var_at > 0);
                                    temp_s8->unk4077C = (s32) (var_v0_3 | var_a0_2);
                                    var_a7 = var_a1->unk6 | (var_a1->unk4 << 0x10);
                                } else {
                                    temp_s8->unk4077C = (s32) (var_a1->unk2 | (var_a1->unk0 << 0x10));
                                    var_a7 = var_a1->unk6 | (var_a1->unk4 << 0x10);
                                }
                                temp_s8->unk4077C = var_a7;
                            }
                        }
                    } else {
                        var_v0_4 = sp88;
                        var_a2 = var_a5;
                        var_v1_3 = 0;
                        if (sp18 != 0) {
                            temp_t2 = (s32) (((u32) (sp88 >> 1) >> 0x1E) + sp88) >> 2;
                            var_a0_3 = temp_t2 & 3;
                            if (var_a0_3 != 0) {
                                do {
                                    temp_a7_2 = *var_a2;
                                    var_a2 += 8;
                                    var_v0_4 -= 4;
                                    temp_s8->unk4077C = temp_a7_2;
                                    var_v1_3 += 1;
                                    var_a0_3 -= 1;
                                    temp_s8->unk4077C = (s32) var_a2->unk-4;
                                } while (var_a0_3 != 0);
                            }
                            var_a0_4 = var_v1_3;
                            var_a1_2 = var_a2;
                            if ((temp_t2 >> 2) != 0) {
                                if ((var_v0_4 - 0x10) >= 4) {
                                    var_at_2 = var_v0_4 - 0x10;
                                    var_v0_5 = var_a1_2->unk0;
                                    do {
                                        temp_s8->unk4077C = var_v0_5;
                                        temp_s8->unk4077C = (s32) var_a1_2->unk4;
                                        temp_s8->unk4077C = (s32) var_a1_2->unk8;
                                        temp_s8->unk4077C = (s32) var_a1_2->unkC;
                                        temp_s8->unk4077C = (s32) var_a1_2->unk10;
                                        temp_s8->unk4077C = (s32) var_a1_2->unk14;
                                        temp_v0_5 = var_a1_2->unk18;
                                        var_a1_2 += 0x20;
                                        temp_s8->unk4077C = temp_v0_5;
                                        var_a0_4 += 4;
                                        var_at_2 -= 0x10;
                                        temp_s8->unk4077C = (s32) var_a1_2->unk-4;
                                        var_v0_5 = var_a1_2->unk0;
                                    } while (var_at_2 >= 4);
                                    temp_s8->unk4077C = var_v0_5;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk4;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk8;
                                    temp_s8->unk4077C = (s32) var_a1_2->unkC;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk10;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk14;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk18;
                                    var_v1_3 = var_a0_4 + 4;
                                    var_v0_4 = var_at_2;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk1C;
                                } else {
                                    temp_s8->unk4077C = (s32) var_a1_2->unk0;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk4;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk8;
                                    temp_s8->unk4077C = (s32) var_a1_2->unkC;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk10;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk14;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk18;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk1C;
                                    var_v1_3 = var_a0_4 + 4;
                                    var_v0_4 -= 0x10;
                                }
                            }
                        } else {
                            var_v1_3 = 0;
                            var_v0_4 = sp88;
                        }
                        var_a0_5 = (var_v1_3 * 8) + var_a5;
                        switch (var_v0_4) {         /* switch 3; irregular */
                        case 3:                     /* switch 3 */
                            temp_t1 = *var_a0_5;
                            var_a0_5 += 4;
                            temp_s8->unk4077C = temp_t1;
                            /* fallthrough */
                        case 1:                     /* switch 3 */
                        case 2:                     /* switch 3 */
                            temp_s8->unk4077C = (s32) *var_a0_5;
                            break;
                        }
                    }
                } else {
                    var_a4 = sp20;
                    if (temp_v0_3 != 0) {
                        var_a0_6 = sp28 & 3;
                        var_a1_3 = var_a5;
                        if (var_a0_6 != 0) {
                            do {
                                var_v1 -= 1;
                                var_a5 += 4;
                                var_a0_6 -= 1;
                                temp_s8->unk4077C = (s32) (var_a5->unk-2 | (var_a5->unk-4 << 0x10));
                            } while (var_a0_6 != 0);
                            var_a1_3 = var_a5;
                        }
                        temp_a2_2 = sp28 >> 2;
                        var_v0_6 = var_v1 - 4;
                        if (temp_a2_2 != 0) {
                            if (temp_a2_2 >= 2) {
                                var_at_3 = var_a1_3->unk2;
                                var_a0_7 = var_a1_3->unk0 << 0x10;
                                do {
                                    temp_s8->unk4077C = (s32) (var_at_3 | var_a0_7);
                                    temp_s8->unk4077C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                    temp_s8->unk4077C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                    var_v0_6 -= 4;
                                    temp_s8->unk4077C = (s32) (var_a1_3->unkE | (var_a1_3->unkC << 0x10));
                                    var_a1_3 += 0x10;
                                    var_at_3 = var_a1_3->unk2;
                                    var_a0_7 = var_a1_3->unk0 << 0x10;
                                } while (var_v0_6 != 0);
                                temp_s8->unk4077C = (s32) (var_at_3 | var_a0_7);
                                temp_s8->unk4077C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                temp_s8->unk4077C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                var_a7_2 = var_a1_3->unkE | (var_a1_3->unkC << 0x10);
                            } else {
                                temp_s8->unk4077C = (s32) (var_a1_3->unk2 | (var_a1_3->unk0 << 0x10));
                                temp_s8->unk4077C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                temp_s8->unk4077C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                var_a7_2 = var_a1_3->unkE | (var_a1_3->unkC << 0x10);
                            }
                            temp_s8->unk4077C = var_a7_2;
                        }
                    } else {
                        var_v0_7 = sp28 & 3;
                        var_a1_4 = var_v1;
                        if (var_v0_7 != 0) {
                            do {
                                var_v1 -= 1;
                                var_a5 += 4;
                                var_v0_7 -= 1;
                                temp_s8->unk4077C = (s32) var_a5->unk-4;
                            } while (var_v0_7 != 0);
                            var_a1_4 = var_v1;
                        }
                        temp_a2_3 = sp28 >> 2;
                        var_v0_8 = var_a5;
                        if (temp_a2_3 != 0) {
                            var_a0_8 = var_a1_4 - 4;
                            if (temp_a2_3 >= 2) {
                                var_at_4 = var_v0_8->unk0;
                                do {
                                    temp_s8->unk4077C = var_at_4;
                                    temp_s8->unk4077C = (s32) var_v0_8->unk4;
                                    temp_s8->unk4077C = (s32) var_v0_8->unk8;
                                    temp_at_2 = var_v0_8->unkC;
                                    var_a0_8 -= 4;
                                    var_v0_8 += 0x10;
                                    temp_s8->unk4077C = temp_at_2;
                                    var_at_4 = var_v0_8->unk0;
                                } while (var_a0_8 != 0);
                                temp_s8->unk4077C = var_at_4;
                                temp_s8->unk4077C = (s32) var_v0_8->unk4;
                                temp_s8->unk4077C = (s32) var_v0_8->unk8;
                                temp_s8->unk4077C = (s32) var_v0_8->unkC;
                            } else {
                                temp_s8->unk4077C = (s32) var_v0_8->unk0;
                                temp_s8->unk4077C = (s32) var_v0_8->unk4;
                                temp_s8->unk4077C = (s32) var_v0_8->unk8;
                                temp_s8->unk4077C = (s32) var_v0_8->unkC;
                            }
                        }
                    }
                }
                var_a6 += sp80;
                var_v1_4 = var_a4 & 3;
                if (var_a4 > 0) {
                    var_v0_9 = 0;
                    if (var_v1_4 != 0) {
                        do {
                            var_v0_9 += 1;
                            var_v1_4 -= 1;
                            temp_s8->unk4077C = 0;
                        } while (var_v1_4 != 0);
                    }
                    temp_a1_3 = var_a4 >> 2;
                    if (temp_a1_3 != 0) {
                        var_a0_9 = var_v0_9 + 4;
                        if (temp_a1_3 >= 2) {
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
loop_43:
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            if (var_a0_9 != (var_a4 - 4)) {
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                if (var_a0_9 != (var_a4 - 8)) {
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    if (var_a0_9 != (var_a4 - 0xC)) {
                                        temp_s8->unk4077C = 0;
                                        temp_s8->unk4077C = 0;
                                        temp_s8->unk4077C = 0;
                                        var_a0_9 += 0x10;
                                        temp_s8->unk4077C = 0;
                                        if (var_a0_9 == var_a4) {

                                        } else {
                                            goto loop_43;
                                        }
                                    }
                                }
                            }
                            temp_s8->unk4077C = 0;
                        } else {
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                        }
                        temp_s8->unk4077C = 0;
                    }
                }
                var_t3 += 4;
                if (var_t3 != ((arg4 * 4) + spB8)) {
                    goto loop_26;
                }
                if (sp10 != 0) {
                    temp_s8->unk407A8 = 0;
                }
            }
            break;
        case 2:                                     /* switch 1 */
            nfbSolidPolyGlyphBlt(arg0, arg1, arg2, arg3, arg4, spB8, spA8, 1);
            break;
        }
    }
}

void expPolyGlyphBltCW16(void *arg0, void *arg1, s32 arg2, s32 arg3, u32 arg4, s64 arg5, s64 arg6) {
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s32 spC;
    s32 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a2;
    s16 temp_v0_3;
    s32 *var_v1_5;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a2;
    s32 var_a7;
    s32 var_at;
    s32 var_at_2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_6;
    s32 var_v1_7;
    s64 temp_a0;
    s64 temp_at;
    s64 var_a4;
    s64 var_a6;
    s64 var_s6;
    s64 var_s7;
    u16 temp_v0_4;
    u16 temp_v1;
    u16 var_v0_3;
    u32 var_t3;
    void *temp_a1;
    void *temp_s0;
    void *temp_s8;
    void *temp_t9;

    sp70 = 0;
    sp80 = 0;
    var_s7 = 0;
    var_s6 = 0;
    sp78 = arg6;
    sp88 = arg5;
    temp_s0 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    temp_s8 = **(arg1->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    if (arg4 != 0) {
        temp_a1 = arg1->unk2C;
        temp_a2 = temp_a1->unk24;
        temp_a0 = arg0->unk8 + arg2;
        sp0 = temp_a1->unk20 + temp_a0;
        sp68 = temp_a0;
        sp4 = arg1->unk2C->unk16 + temp_a0 + (temp_a2 * arg4);
        temp_at = arg0->unkA + arg3;
        sp2 = temp_at - arg1->unk2C->unk1A;
        sp6 = arg1->unk2C->unk1C + temp_at;
        sp60 = temp_at;
        temp_v0 = arg1->unk0->unk17C(temp_s0->unk8, sp, temp_a2);
        var_a4 = sp68;
        switch (temp_v0) {                          /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            break;
        case 1:                                     /* switch 1 */
            temp_v0_2 = (s32) ((sp6 - sp2) + 1) >> 1;
            if (temp_v0_2 < 9) {
                sp8 = 0x143;
                spC = 8;
            } else {
                if (temp_v0_2 < 0x11) {
                    spC = 0x10;
                    sp8 = 0x144;
                } else {
                    if (temp_v0_2 < 0x21) {
                        spC = 0x20;
                        sp8 = 0x145;
                    } else {
                        if (temp_v0_2 < 0x41) {
                            spC = 0x40;
                            sp8 = 0x146;
                        } else {
                            nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, sp88, sp78, 0x40);
                            sp70 = 1;
                            var_a4 = sp68;
                        }
                        sp80 = sp70;
                    }
                    var_s7 = sp80;
                }
                var_s6 = var_s7;
            }
            if (var_s6 == 0) {
                temp_a1_2 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                switch (temp_a1_2) {                /* switch 2; irregular */
                default:                            /* switch 2 */
                    temp_s8->unk4052C = (s32) (temp_a1_2 | 0x1000);
                    temp_s8->unk404D4 = 0;
                    var_v0 = temp_s0->unk34;
                    var_a0 = temp_s0->unk15 * 8;
                    break;
                case 13:                            /* switch 2 */
                    temp_s8->unk4052C = 0x100B;
                    var_a0 = 1;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 3);
                    break;
                case 12:                            /* switch 2 */
                    temp_s8->unk4052C = 0x1008;
                    var_a0 = 1;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 0xF);
                    break;
                case 14:                            /* switch 2 */
                    temp_s8->unk4052C = 0x100B;
                    var_a0 = 9;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 0xC);
                    break;
                }
                temp_s8->unk40530 = (s32) temp_s0->unk2C;
                temp_s8->unk4077C = (s32) (var_v0 & 0xFFFFFF);
                temp_s8->unk4077C = (s32) temp_s0->unk30;
                temp_s8->unk4077C = var_a0;
                var_a6 = sp88;
                temp_s8->unk404E0 = (s32) temp_s0->unk28;
                temp_s8->unk404DC = (s32) temp_s0->unk2C;
loop_25:
                temp_t9 = *var_a6;
                var_a1 = 0;
                temp_t8 = temp_t9->unkC;
                temp_v0_3 = temp_t9->unk0;
                ((sp8 * 4) + temp_s8)->unk40000 = (s32) (temp_v0_3 + var_a4);
                temp_a5 = temp_t9->unk6 + temp_t9->unk8;
                temp_s8->unk4077C = (s32) (sp60 - temp_t9->unk6);
                temp_s8->unk4077C = (s32) (temp_t9->unk2 - temp_v0_3);
                temp_s8->unk4077C = temp_a5;
                if (temp_t8 & 3) {
                    var_t3 = temp_a5 + 1;
                    var_v0_2 = temp_t8;
                    if (temp_a5 > 0) {
                        temp_a2_2 = (s32) ((var_t3 >> 0x1F) + var_t3) >> 1;
                        var_v1 = temp_a5;
                        if (temp_a2_2 & 1) {
                            var_v0_2 += 4;
                            var_v1 -= 2;
                            temp_s8->unk4077C = (s32) (var_v0_2->unk-2 | (var_v0_2->unk-4 << 0x10));
                        }
                        var_a0_2 = var_v0_2;
                        if ((temp_a2_2 >> 1) != 0) {
                            if ((var_v1 - 4) > 0) {
                                var_v0_3 = var_a0_2->unk2;
                                var_at = var_v1 - 4;
                                var_v1_2 = var_a0_2->unk0 << 0x10;
                                do {
                                    temp_s8->unk4077C = (s32) (var_v0_3 | var_v1_2);
                                    temp_v0_4 = var_a0_2->unk4;
                                    temp_v1 = var_a0_2->unk6;
                                    var_a0_2 += 8;
                                    temp_s8->unk4077C = (s32) (temp_v1 | (temp_v0_4 << 0x10));
                                    var_at -= 4;
                                    var_v0_3 = var_a0_2->unk2;
                                    var_v1_2 = var_a0_2->unk0 << 0x10;
                                } while (var_at > 0);
                                temp_s8->unk4077C = (s32) (var_v0_3 | var_v1_2);
                                var_a7 = var_a0_2->unk6 | (var_a0_2->unk4 << 0x10);
                            } else {
                                temp_s8->unk4077C = (s32) (var_a0_2->unk2 | (var_a0_2->unk0 << 0x10));
                                var_a7 = var_a0_2->unk6 | (var_a0_2->unk4 << 0x10);
                            }
                            temp_s8->unk4077C = var_a7;
                        }
                    }
                } else {
                    var_a2 = temp_t8;
                    var_v0_4 = temp_a5;
                    if (temp_a5 >= 4) {
                        temp_t2 = (s32) (((u32) (temp_a5 >> 1) >> 0x1E) + temp_a5) >> 2;
                        var_v1_3 = temp_t2 & 3;
                        var_a1 = 0;
                        if (var_v1_3 != 0) {
                            do {
                                temp_a7 = *var_a2;
                                var_a2 += 8;
                                var_v0_4 -= 4;
                                temp_s8->unk4077C = temp_a7;
                                var_a1 += 1;
                                var_v1_3 -= 1;
                                temp_s8->unk4077C = (s32) var_a2->unk-4;
                            } while (var_v1_3 != 0);
                        }
                        var_v1_4 = var_a1;
                        var_a0_3 = var_a2;
                        if ((temp_t2 >> 2) != 0) {
                            if ((var_v0_4 - 0x10) >= 4) {
                                var_at_2 = var_v0_4 - 0x10;
                                var_v0_5 = var_a0_3->unk0;
                                do {
                                    temp_s8->unk4077C = var_v0_5;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk4;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk8;
                                    temp_s8->unk4077C = (s32) var_a0_3->unkC;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk10;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk14;
                                    temp_v0_5 = var_a0_3->unk18;
                                    var_a0_3 += 0x20;
                                    temp_s8->unk4077C = temp_v0_5;
                                    var_v1_4 += 4;
                                    var_at_2 -= 0x10;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk-4;
                                    var_v0_5 = var_a0_3->unk0;
                                } while (var_at_2 >= 4);
                                temp_s8->unk4077C = var_v0_5;
                                temp_s8->unk4077C = (s32) var_a0_3->unk4;
                                temp_s8->unk4077C = (s32) var_a0_3->unk8;
                                temp_s8->unk4077C = (s32) var_a0_3->unkC;
                                temp_s8->unk4077C = (s32) var_a0_3->unk10;
                                temp_s8->unk4077C = (s32) var_a0_3->unk14;
                                temp_s8->unk4077C = (s32) var_a0_3->unk18;
                                var_a1 = var_v1_4 + 4;
                                var_v0_4 = var_at_2;
                                temp_s8->unk4077C = (s32) var_a0_3->unk1C;
                            } else {
                                temp_s8->unk4077C = (s32) var_a0_3->unk0;
                                temp_s8->unk4077C = (s32) var_a0_3->unk4;
                                temp_s8->unk4077C = (s32) var_a0_3->unk8;
                                temp_s8->unk4077C = (s32) var_a0_3->unkC;
                                temp_s8->unk4077C = (s32) var_a0_3->unk10;
                                temp_s8->unk4077C = (s32) var_a0_3->unk14;
                                temp_s8->unk4077C = (s32) var_a0_3->unk18;
                                temp_s8->unk4077C = (s32) var_a0_3->unk1C;
                                var_a1 = var_v1_4 + 4;
                                var_v0_4 -= 0x10;
                            }
                        }
                    } else {
                        var_v0_4 = temp_a5;
                    }
                    var_v1_5 = (var_a1 * 8) + temp_t8;
                    switch (var_v0_4) {             /* switch 3; irregular */
                    case 3:                         /* switch 3 */
                        temp_t0 = *var_v1_5;
                        var_v1_5 += 4;
                        temp_s8->unk4077C = temp_t0;
                        /* fallthrough */
                    case 1:                         /* switch 3 */
                    case 2:                         /* switch 3 */
                        temp_s8->unk4077C = (s32) *var_v1_5;
                        break;
                    }
                    var_t3 = temp_a5 + 1;
                }
                temp_a2_3 = spC - ((s32) var_t3 >> 1);
                var_v1_6 = temp_a2_3 & 3;
                if (temp_a2_3 > 0) {
                    var_v0_6 = 0;
                    if (var_v1_6 != 0) {
                        do {
                            var_v0_6 += 1;
                            var_v1_6 -= 1;
                            temp_s8->unk4077C = 0;
                        } while (var_v1_6 != 0);
                    }
                    temp_a1_3 = temp_a2_3 >> 2;
                    if (temp_a1_3 != 0) {
                        if (temp_a1_3 >= 2) {
                            var_v1_7 = var_v0_6 + 4;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
loop_41:
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            if (var_v1_7 != (temp_a2_3 - 4)) {
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                if (var_v1_7 != (temp_a2_3 - 8)) {
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    if (var_v1_7 != (temp_a2_3 - 0xC)) {
                                        temp_s8->unk4077C = 0;
                                        temp_s8->unk4077C = 0;
                                        temp_s8->unk4077C = 0;
                                        var_v1_7 += 0x10;
                                        temp_s8->unk4077C = 0;
                                        if (var_v1_7 == temp_a2_3) {

                                        } else {
                                            goto loop_41;
                                        }
                                    }
                                }
                            }
                            temp_s8->unk4077C = 0;
                        } else {
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                        }
                        temp_s8->unk4077C = 0;
                    }
                }
                var_a6 += 4;
                var_a4 += temp_t9->unk4;
                if (var_a6 != ((arg4 * 4) + sp88)) {
                    goto loop_25;
                }
                if (sp8 != 0) {
                    temp_s8->unk407A8 = 0;
                }
            }
            break;
        case 2:                                     /* switch 1 */
            nfbSolidPolyGlyphBlt(arg0, arg1, arg2, arg3, arg4, sp88, sp78, 1);
            break;
        }
    }
}

s32 expPolyGlyphBltCW32(void *arg0, void *arg1, s32 arg2, s32 arg3, u32 arg4, s64 arg5, s64 arg6) {
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s32 spC;
    s32 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a2;
    s32 *var_v1_3;
    s32 temp_a0_2;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2_3;
    s32 temp_a7;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_s1;
    s32 temp_t2;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_4;
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
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a7;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_4;
    s32 var_t2;
    s32 var_t9;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_4;
    s64 temp_a0;
    s64 temp_at;
    s64 var_s6;
    s64 var_s8;
    s64 var_t3;
    s64 var_t8;
    u16 temp_a0_3;
    u16 temp_v0_2;
    u16 var_at_3;
    u16 var_v0_3;
    u32 temp_a2_2;
    void *temp_a1;
    void *temp_a6;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_t1;

    sp70 = 0;
    sp80 = 0;
    var_s8 = 0;
    var_s6 = 0;
    sp78 = arg6;
    temp_v0 = expScreenPrivateIndex * 4;
    temp_s0 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    sp88 = (s64) **(arg1->unk0->unk1B4 + temp_v0);
    if (arg4 != 0) {
        temp_a1 = arg1->unk2C;
        temp_a2 = temp_a1->unk24;
        temp_a0 = arg0->unk8 + arg2;
        sp0 = temp_a1->unk20 + temp_a0;
        sp68 = temp_a0;
        sp4 = arg1->unk2C->unk16 + temp_a0 + (temp_a2 * arg4);
        temp_at = arg0->unkA + arg3;
        sp2 = temp_at - arg1->unk2C->unk1A;
        sp6 = arg1->unk2C->unk1C + temp_at;
        sp60 = temp_at;
        var_v0 = arg1->unk0->unk17C(temp_s0->unk8, sp, temp_a2);
        var_t3 = sp68;
        switch (var_v0) {                           /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            break;
        case 1:                                     /* switch 1 */
            var_v0 = sp6 - sp2;
            if (var_v0 < 9) {
                sp8 = 0x143;
                spC = 8;
            } else {
                if (var_v0 < 0x11) {
                    spC = 0x10;
                    sp8 = 0x144;
                } else {
                    if (var_v0 < 0x21) {
                        spC = 0x20;
                        sp8 = 0x145;
                    } else {
                        if (var_v0 < 0x41) {
                            spC = 0x40;
                            sp8 = 0x146;
                        } else {
                            var_v0 = nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, arg5, sp78, 0x40);
                            var_t3 = sp68;
                            sp70 = 1;
                        }
                        sp80 = sp70;
                    }
                    var_s8 = sp80;
                }
                var_s6 = var_s8;
            }
            if (var_s6 == 0) {
                temp_a1_2 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                switch (temp_a1_2) {                /* switch 2; irregular */
                default:                            /* switch 2 */
                    sp88->unk4052C = (s32) (temp_a1_2 | 0x1000);
                    sp88->unk404D4 = 0;
                    var_v1 = temp_s0->unk34;
                    var_a0 = temp_s0->unk15 * 8;
                    break;
                case 13:                            /* switch 2 */
                    sp88->unk4052C = 0x100B;
                    var_a0 = 1;
                    var_v1 = 0;
                    sp88->unk404D4 = (s32) (temp_s0->unk34 & 3);
                    break;
                case 12:                            /* switch 2 */
                    sp88->unk4052C = 0x1008;
                    var_a0 = 1;
                    var_v1 = 0;
                    sp88->unk404D4 = (s32) (temp_s0->unk34 & 0xF);
                    break;
                case 14:                            /* switch 2 */
                    sp88->unk4052C = 0x100B;
                    var_a0 = 9;
                    var_v1 = 0;
                    sp88->unk404D4 = (s32) (temp_s0->unk34 & 0xC);
                    break;
                }
                sp88->unk40530 = (s32) temp_s0->unk2C;
                sp88->unk4077C = (s32) (var_v1 & 0xFFFFFF);
                sp88->unk4077C = (s32) temp_s0->unk30;
                sp88->unk4077C = var_a0;
                sp88->unk404E0 = (s32) temp_s0->unk28;
                sp88->unk404DC = (s32) temp_s0->unk2C;
                temp_t1 = *arg5;
                var_t8 = arg5;
                if ((temp_t1->unk2 - temp_t1->unk0) < 0x11) {
                    var_t9 = 1;
                } else {
                    var_t9 = 0;
                }
                temp_s0_2 = (sp8 * 4) + sp88;
loop_53:
                temp_a6 = *var_t8;
                var_a5 = temp_a6->unkC;
                temp_a1_3 = var_a5 & 3;
                temp_a0_2 = temp_a6->unk2 - temp_a6->unk0;
                var_v1_2 = temp_a6->unk6 + temp_a6->unk8;
                if (temp_a0_2 < 0x11) {
                    if (var_t9 == 0) {
                        var_t9 = 1;
                        sp88->unk407A8 = 0;
                    }
                    temp_a2_2 = var_v1_2 + 1;
                    temp_s0_2->unk40000 = (s32) (temp_a6->unk0 + var_t3);
                    var_a4 = spC - ((s32) temp_a2_2 >> 1);
                    sp88->unk4077C = (s32) (sp60 - temp_a6->unk6);
                    sp88->unk4077C = temp_a0_2;
                    sp88->unk4077C = var_v1_2;
                    if (temp_a1_3 != 0) {
                        var_a0_2 = var_v1_2;
                        if (var_v1_2 > 0) {
                            temp_t2 = (s32) ((temp_a2_2 >> 0x1F) + temp_a2_2) >> 1;
                            var_v0_2 = var_a5;
                            if (temp_t2 & 1) {
                                var_v0_2 += 4;
                                var_a0_2 -= 2;
                                sp88->unk4077C = (s32) (var_v0_2->unk-2 | (var_v0_2->unk-4 << 0x10));
                            }
                            var_a1 = var_v0_2;
                            if ((temp_t2 >> 1) != 0) {
                                var_at = var_a0_2 - 4;
                                if ((var_a0_2 - 4) > 0) {
                                    var_v0_3 = var_a1->unk2;
                                    var_a0_3 = var_a1->unk0 << 0x10;
                                    do {
                                        sp88->unk4077C = (s32) (var_v0_3 | var_a0_3);
                                        temp_v0_2 = var_a1->unk4;
                                        temp_a0_3 = var_a1->unk6;
                                        var_a1 += 8;
                                        sp88->unk4077C = (s32) (temp_a0_3 | (temp_v0_2 << 0x10));
                                        var_at -= 4;
                                        var_v0_3 = var_a1->unk2;
                                        var_a0_3 = var_a1->unk0 << 0x10;
                                    } while (var_at > 0);
                                    sp88->unk4077C = (s32) (var_v0_3 | var_a0_3);
                                    sp88->unk4077C = (s32) (var_a1->unk6 | (var_a1->unk4 << 0x10));
                                } else {
                                    sp88->unk4077C = (s32) (var_a1->unk2 | (var_a1->unk0 << 0x10));
                                    sp88->unk4077C = (s32) (var_a1->unk6 | (var_a1->unk4 << 0x10));
                                }
                            }
                        }
                    } else {
                        var_t2 = var_a5;
                        var_v0_4 = var_v1_2;
                        if (var_v1_2 >= 4) {
                            temp_s1 = (s32) (((u32) (var_v1_2 >> 1) >> 0x1E) + var_v1_2) >> 2;
                            var_a0_4 = temp_s1 & 3;
                            var_a2 = 0;
                            if (var_a0_4 != 0) {
                                do {
                                    temp_a7 = *var_t2;
                                    var_t2 += 8;
                                    var_v0_4 -= 4;
                                    sp88->unk4077C = temp_a7;
                                    var_a2 += 1;
                                    var_a0_4 -= 1;
                                    sp88->unk4077C = (s32) var_t2->unk-4;
                                } while (var_a0_4 != 0);
                            }
                            var_a0_5 = var_a2;
                            var_a1_2 = var_t2;
                            if ((temp_s1 >> 2) != 0) {
                                var_at_2 = var_v0_4 - 0x10;
                                if ((var_v0_4 - 0x10) >= 4) {
                                    var_v0_5 = var_a1_2->unk0;
                                    do {
                                        sp88->unk4077C = var_v0_5;
                                        sp88->unk4077C = (s32) var_a1_2->unk4;
                                        sp88->unk4077C = (s32) var_a1_2->unk8;
                                        sp88->unk4077C = (s32) var_a1_2->unkC;
                                        sp88->unk4077C = (s32) var_a1_2->unk10;
                                        sp88->unk4077C = (s32) var_a1_2->unk14;
                                        temp_v0_3 = var_a1_2->unk18;
                                        var_a1_2 += 0x20;
                                        sp88->unk4077C = temp_v0_3;
                                        var_a0_5 += 4;
                                        var_at_2 -= 0x10;
                                        sp88->unk4077C = (s32) var_a1_2->unk-4;
                                        var_v0_5 = var_a1_2->unk0;
                                    } while (var_at_2 >= 4);
                                    sp88->unk4077C = var_v0_5;
                                    sp88->unk4077C = (s32) var_a1_2->unk4;
                                    sp88->unk4077C = (s32) var_a1_2->unk8;
                                    sp88->unk4077C = (s32) var_a1_2->unkC;
                                    sp88->unk4077C = (s32) var_a1_2->unk10;
                                    sp88->unk4077C = (s32) var_a1_2->unk14;
                                    sp88->unk4077C = (s32) var_a1_2->unk18;
                                    var_a2 = var_a0_5 + 4;
                                    var_v0_4 = var_at_2;
                                    sp88->unk4077C = (s32) var_a1_2->unk1C;
                                } else {
                                    sp88->unk4077C = (s32) var_a1_2->unk0;
                                    sp88->unk4077C = (s32) var_a1_2->unk4;
                                    sp88->unk4077C = (s32) var_a1_2->unk8;
                                    sp88->unk4077C = (s32) var_a1_2->unkC;
                                    sp88->unk4077C = (s32) var_a1_2->unk10;
                                    sp88->unk4077C = (s32) var_a1_2->unk14;
                                    sp88->unk4077C = (s32) var_a1_2->unk18;
                                    sp88->unk4077C = (s32) var_a1_2->unk1C;
                                    var_a2 = var_a0_5 + 4;
                                    var_v0_4 -= 0x10;
                                }
                            }
                        } else {
                            var_a2 = 0;
                            var_v0_4 = var_v1_2;
                        }
                        var_v1_3 = (var_a2 * 8) + var_a5;
                        switch (var_v0_4) {         /* switch 3; irregular */
                        case 3:                     /* switch 3 */
                            temp_at_2 = *var_v1_3;
                            var_v1_3 += 4;
                            sp88->unk4077C = temp_at_2;
                            /* fallthrough */
                        case 1:                     /* switch 3 */
                        case 2:                     /* switch 3 */
                            var_a7 = *var_v1_3;
                            goto block_38;
                        }
                    }
                } else {
                    var_a2_2 = 1;
                    if (var_t9 != 0) {
                        sp88->unk407A8 = 0;
                        var_t9 = 0;
                        var_a2_2 = 1;
                    }
                    if (var_v1_2 >= 1) {
                        var_a2_2 = var_v1_2;
                    }
                    temp_s0_2->unk40000 = (s32) (temp_a6->unk0 + var_t3);
                    var_a4 = spC - var_v1_2;
                    var_v0_6 = var_a2_2 & 3;
                    sp88->unk4077C = (s32) (sp60 - temp_a6->unk6);
                    sp88->unk4077C = temp_a0_2;
                    sp88->unk4077C = var_v1_2;
                    if (temp_a1_3 != 0) {
                        var_a2_3 = var_v1_2;
                        if (var_v0_6 != 0) {
                            do {
                                var_v1_2 -= 1;
                                var_a5 += 4;
                                var_v0_6 -= 1;
                                sp88->unk4077C = (s32) (var_a5->unk-2 | (var_a5->unk-4 << 0x10));
                            } while (var_v0_6 != 0);
                            var_a2_3 = var_v1_2;
                        }
                        temp_v0_4 = var_a2_2 >> 2;
                        var_a1_3 = var_a5;
                        if (temp_v0_4 != 0) {
                            var_v0_7 = var_a2_3 - 4;
                            if (temp_v0_4 >= 2) {
                                var_at_3 = var_a1_3->unk2;
                                var_a0_6 = var_a1_3->unk0 << 0x10;
                                do {
                                    sp88->unk4077C = (s32) (var_at_3 | var_a0_6);
                                    sp88->unk4077C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                    sp88->unk4077C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                    var_v0_7 -= 4;
                                    sp88->unk4077C = (s32) (var_a1_3->unkE | (var_a1_3->unkC << 0x10));
                                    var_a1_3 += 0x10;
                                    var_at_3 = var_a1_3->unk2;
                                    var_a0_6 = var_a1_3->unk0 << 0x10;
                                } while (var_v0_7 != 0);
                                sp88->unk4077C = (s32) (var_at_3 | var_a0_6);
                                sp88->unk4077C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                sp88->unk4077C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                var_a7 = var_a1_3->unkE | (var_a1_3->unkC << 0x10);
block_38:
                                sp88->unk4077C = var_a7;
                            } else {
                                sp88->unk4077C = (s32) (var_a1_3->unk2 | (var_a1_3->unk0 << 0x10));
                                sp88->unk4077C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                sp88->unk4077C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                sp88->unk4077C = (s32) (var_a1_3->unkE | (var_a1_3->unkC << 0x10));
                            }
                        }
                    } else {
                        var_v0_8 = var_a2_2 & 3;
                        var_a1_4 = var_v1_2;
                        if (var_v0_8 != 0) {
                            do {
                                var_v1_2 -= 1;
                                var_a5 += 4;
                                var_v0_8 -= 1;
                                sp88->unk4077C = (s32) var_a5->unk-4;
                            } while (var_v0_8 != 0);
                            var_a1_4 = var_v1_2;
                        }
                        temp_a2_3 = var_a2_2 >> 2;
                        var_v0_9 = var_a5;
                        if (temp_a2_3 != 0) {
                            var_a0_7 = var_a1_4 - 4;
                            if (temp_a2_3 >= 2) {
                                var_at_4 = var_v0_9->unk0;
                                do {
                                    sp88->unk4077C = var_at_4;
                                    sp88->unk4077C = (s32) var_v0_9->unk4;
                                    sp88->unk4077C = (s32) var_v0_9->unk8;
                                    temp_at_3 = var_v0_9->unkC;
                                    var_a0_7 -= 4;
                                    var_v0_9 += 0x10;
                                    sp88->unk4077C = temp_at_3;
                                    var_at_4 = var_v0_9->unk0;
                                } while (var_a0_7 != 0);
                                sp88->unk4077C = var_at_4;
                                sp88->unk4077C = (s32) var_v0_9->unk4;
                                sp88->unk4077C = (s32) var_v0_9->unk8;
                                sp88->unk4077C = (s32) var_v0_9->unkC;
                            } else {
                                sp88->unk4077C = (s32) var_v0_9->unk0;
                                sp88->unk4077C = (s32) var_v0_9->unk4;
                                sp88->unk4077C = (s32) var_v0_9->unk8;
                                sp88->unk4077C = (s32) var_v0_9->unkC;
                            }
                        }
                    }
                }
                var_v1_4 = var_a4 & 3;
                var_v0 = 0;
                if (var_a4 > 0) {
                    var_a1_5 = var_a4 >> 2;
                    if (var_v1_4 != 0) {
                        do {
                            var_v0 += 1;
                            var_v1_4 -= 1;
                            sp88->unk4077C = 0;
                        } while (var_v1_4 != 0);
                        var_a1_5 = var_a4 >> 2;
                    }
                    if (var_a1_5 != 0) {
                        var_a0_8 = var_v0 + 4;
                        if (var_a1_5 >= 2) {
                            var_v0 = var_a4 - 8;
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
loop_46:
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
                            if (var_a0_8 != (var_a4 - 4)) {
                                sp88->unk4077C = 0;
                                sp88->unk4077C = 0;
                                sp88->unk4077C = 0;
                                sp88->unk4077C = 0;
                                if (var_a0_8 != var_v0) {
                                    sp88->unk4077C = 0;
                                    sp88->unk4077C = 0;
                                    sp88->unk4077C = 0;
                                    sp88->unk4077C = 0;
                                    if (var_a0_8 != (var_a4 - 0xC)) {
                                        sp88->unk4077C = 0;
                                        sp88->unk4077C = 0;
                                        sp88->unk4077C = 0;
                                        var_a0_8 += 0x10;
                                        sp88->unk4077C = 0;
                                        if (var_a0_8 != var_a4) {
                                            goto loop_46;
                                        }
                                    }
                                }
                            }
                            sp88->unk4077C = 0;
                        } else {
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
                        }
                        sp88->unk4077C = 0;
                    }
                }
                var_t8 += 4;
                var_t3 += temp_a6->unk4;
                if (var_t8 != ((arg4 * 4) + arg5)) {
                    goto loop_53;
                }
                if (sp8 != 0) {
                    sp88->unk407A8 = 0;
                }
            }
            break;
        case 2:                                     /* switch 1 */
            var_v0 = nfbSolidPolyGlyphBlt(arg0, arg1, arg2, arg3, arg4, arg5, sp78, 1);
            break;
        }
        return var_v0;
    }
    return temp_v0;
}

void expImageGlyphBltTE8(void *arg0, void *arg1, s32 arg2, s32 arg3, u32 arg4, s64 arg5, s64 arg6) {
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
    s16 temp_a7;
    s16 temp_at;
    s16 temp_v1_2;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_ra;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_s8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 var_a1;
    s32 var_a2;
    s32 var_at_3;
    s32 var_at_4;
    s32 var_at_5;
    s32 var_at_6;
    s32 var_ra;
    s32 var_s2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_5;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s64 var_at;
    s64 var_t8;
    s64 var_t9;
    u16 temp_v0_3;
    u16 temp_v1_3;
    u16 var_v0_4;
    u32 temp_a7_2;
    u32 var_s1;
    u8 *var_a4;
    u8 var_at_2;
    void *temp_s1;
    void *temp_v1;
    void *var_a0;
    void *var_a3;
    void *var_v0_3;

    sp28 = arg5;
    temp_s1 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    sp30 = (s64) **(arg1->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    if (arg4 != 0) {
        temp_v1 = arg1->unk2C;
        temp_v1_2 = temp_v1->unk24;
        temp_s7 = arg0->unkA + arg3;
        sp2 = temp_s7 - temp_v1->unk44;
        sp6 = arg1->unk2C->unk46 + temp_s7;
        temp_at = arg0->unk8 + arg2;
        sp0 = temp_at;
        sp4 = (temp_v1_2 * arg4) + temp_at;
        sp20 = (s64) temp_v1_2;
        sp18 = (s64) temp_at;
        temp_v0 = arg1->unk0->unk17C(temp_s1->unk8, sp);
        switch (temp_v0) {                          /* switch 1; irregular */
        case 1:                                     /* switch 1 */
            temp_s8 = sp6 - sp2;
            temp_v0_2 = (s32) (temp_s8 + 1) >> 1;
            var_at = 0x143;
            if (temp_v0_2 < 9) {
                var_ra = 8;
                goto block_7;
            }
            var_at = 0x144;
            if (temp_v0_2 < 0x11) {
                var_ra = 0x10;
                goto block_7;
            }
            var_at = 0x145;
            if (temp_v0_2 < 0x21) {
                var_ra = 0x20;
                goto block_7;
            }
            temp_a7 = temp_v0_2 < 0x41;
            var_at = 0x146;
            if (temp_a7 != 0) {
                var_ra = 0x40;
block_7:
                temp_ra = var_ra - temp_v0_2;
                temp_a0 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                switch (temp_a0) {                  /* switch 2; irregular */
                default:                            /* switch 2 */
                    sp30->unk4052C = temp_a0;
                    sp30->unk404D4 = 0;
                    var_v0 = temp_s1->unk34;
                    var_a1 = temp_s1->unk15 * 8;
                    break;
                case 13:                            /* switch 2 */
                    sp30->unk4052C = 0xB;
                    var_a1 = 1;
                    var_v0 = 0;
                    sp30->unk404D4 = (s32) (temp_s1->unk34 & 3);
                    break;
                case 12:                            /* switch 2 */
                    sp30->unk4052C = 8;
                    var_a1 = 1;
                    var_v0 = 0;
                    sp30->unk404D4 = (s32) (temp_s1->unk34 & 0xF);
                    break;
                case 14:                            /* switch 2 */
                    sp30->unk4052C = 0xB;
                    var_a1 = 9;
                    var_v0 = 0;
                    sp30->unk404D4 = (s32) (temp_s1->unk34 & 0xC);
                    break;
                }
                sp30->unk40530 = (s32) temp_s1->unk2C;
                sp30->unk4077C = (s32) (var_v0 & 0xFFFFFF);
                sp30->unk4077C = 3;
                sp30->unk4077C = var_a1;
                sp30->unk404C0 = 0;
                sp30->unk4077C = (s32) sp0;
                sp30->unk4077C = (s32) sp2;
                sp30->unk4077C = (s32) sp4;
                sp30->unk4077C = (s32) sp6;
                sp30->unk407A8 = 0;
                sp30->unk404E0 = (s32) temp_s1->unk28;
                sp30->unk404DC = (s32) temp_s1->unk2C;
                temp_s6 = temp_s7 - arg1->unk2C->unk44;
                if (arg4 >= 2U) {
                    sp10 = var_at;
                    var_s2 = 0;
                    var_t8 = sp18;
                    var_s1 = arg4;
                    var_t9 = sp28;
                    sp8 = temp_s8 + 1;
                    temp_s3 = sp20 * 2;
                    temp_s4 = 8 - sp20;
                    temp_s5 = 0x18 - sp20;
loop_16:
                    var_s1 -= 2;
                    ((var_at * 4) + sp30)->unk40000 = (s32) var_t8;
                    sp30->unk4077C = temp_s6;
                    sp30->unk4077C = temp_s3;
                    var_a3 = var_t9->unk4->unkC;
                    sp30->unk4077C = temp_s8;
                    if (temp_s8 > 0) {
                        var_a4 = var_t9->unk0->unkC;
                        if ((temp_s8 - 2) > 0) {
                            var_at_2 = var_a4->unk0;
                            var_a2 = temp_s8 - 2;
loop_19:
                            temp_a2 = var_a2 - 2;
                            sp30->unk4077C = (s32) ((var_at_2 << 0x18) | (var_a3->unk0 << temp_s5) | ((var_a4->unk2 << 8) | (var_a3->unk2 << temp_s4)));
                            var_at_2 = var_a4->unk4;
                            if (temp_a2 > 0) {
                                temp_a2_2 = temp_a2 - 2;
                                sp30->unk4077C = (s32) ((var_at_2 << 0x18) | (var_a3->unk4 << temp_s5) | ((var_a4->unk6 << 8) | (var_a3->unk6 << temp_s4)));
                                var_at_2 = var_a4->unk8;
                                if (temp_a2_2 > 0) {
                                    var_a2 = temp_a2_2 - 2;
                                    sp30->unk4077C = (s32) ((var_at_2 << 0x18) | (var_a3->unk8 << temp_s5) | ((var_a4->unkA << 8) | (var_a3->unkA << temp_s4)));
                                    var_a3 += 0xC;
                                    var_a4 += 0xC;
                                    var_at_2 = *var_a4;
                                    if (var_a2 > 0) {
                                        goto loop_19;
                                    }
                                } else {
                                    var_a3 += 8;
                                    var_a4 += 8;
                                }
                            } else {
                                var_a3 += 4;
                                var_a4 += 4;
                            }
                            sp30->unk4077C = (s32) ((var_at_2 << 0x18) | (var_a3->unk0 << temp_s5) | ((var_a4->unk2 << 8) | (var_a3->unk2 << temp_s4)));
                        } else {
                            sp30->unk4077C = (s32) ((var_a4->unk0 << 0x18) | (var_a3->unk0 << temp_s5) | ((var_a4->unk2 << 8) | (var_a3->unk2 << temp_s4)));
                        }
                    }
                    var_t8 += temp_s3;
                    var_v0_2 = temp_ra & 3;
                    if (temp_ra > 0) {
                        var_at_3 = 0;
                        if (var_v0_2 != 0) {
                            do {
                                var_at_3 += 1;
                                var_v0_2 -= 1;
                                sp30->unk4077C = 0;
                            } while (var_v0_2 != 0);
                        }
                        temp_a1 = temp_ra >> 2;
                        if (temp_a1 != 0) {
                            var_v1 = var_at_3 + 4;
                            if (temp_a1 >= 2) {
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
loop_29:
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                if (var_v1 != (temp_ra - 4)) {
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    if (var_v1 != (temp_ra - 8)) {
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        if (var_v1 != (temp_ra - 0xC)) {
                                            sp30->unk4077C = 0;
                                            sp30->unk4077C = 0;
                                            sp30->unk4077C = 0;
                                            var_v1 += 0x10;
                                            sp30->unk4077C = 0;
                                            if (var_v1 == temp_ra) {

                                            } else {
                                                goto loop_29;
                                            }
                                        }
                                    }
                                }
                                sp30->unk4077C = 0;
                            } else {
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                            }
                            sp30->unk4077C = 0;
                        }
                    }
                    var_s2 += 1;
                    var_t9 += 8;
                    if (var_s1 >= 2U) {
                        goto loop_16;
                    }
                } else {
                    sp10 = var_at;
                    var_s2 = 0;
                    var_s1 = arg4;
                }
                if (var_s1 != 0) {
                    ((sp10 * 4) + sp30)->unk40000 = (s32) ((sp20 * 2 * var_s2) + sp18);
                    sp30->unk4077C = temp_s6;
                    sp30->unk4077C = (s32) sp20;
                    sp30->unk4077C = temp_s8;
                    if (temp_s8 > 0) {
                        var_v0_3 = (*((var_s2 * 8) + sp28))->unkC;
                        var_at_4 = temp_s8;
                        temp_a7_2 = temp_s8 + 1;
                        temp_a2_3 = (s32) ((temp_a7_2 >> 0x1F) + temp_a7_2) >> 1;
                        if (temp_a2_3 & 1) {
                            var_v0_3 += 4;
                            var_at_4 -= 2;
                            sp30->unk4077C = (s32) (var_v0_3->unk-2 | (var_v0_3->unk-4 << 0x10));
                        }
                        var_a0 = var_v0_3;
                        if ((temp_a2_3 >> 1) != 0) {
                            var_at_5 = var_at_4 - 4;
                            if ((var_at_4 - 4) > 0) {
                                var_v0_4 = var_a0->unk2;
                                var_v1_2 = var_a0->unk0 << 0x10;
                                do {
                                    sp30->unk4077C = (s32) (var_v0_4 | var_v1_2);
                                    temp_v0_3 = var_a0->unk4;
                                    temp_v1_3 = var_a0->unk6;
                                    var_a0 += 8;
                                    sp30->unk4077C = (s32) (temp_v1_3 | (temp_v0_3 << 0x10));
                                    var_at_5 -= 4;
                                    var_v0_4 = var_a0->unk2;
                                    var_v1_2 = var_a0->unk0 << 0x10;
                                } while (var_at_5 > 0);
                                sp30->unk4077C = (s32) (var_v0_4 | var_v1_2);
                                sp30->unk4077C = (s32) (var_a0->unk6 | (var_a0->unk4 << 0x10));
                            } else {
                                sp30->unk4077C = (s32) (var_a0->unk2 | (var_a0->unk0 << 0x10));
                                sp30->unk4077C = (s32) (var_a0->unk6 | (var_a0->unk4 << 0x10));
                            }
                        }
                    }
                    var_v0_5 = temp_ra & 3;
                    if (temp_ra > 0) {
                        var_at_6 = 0;
                        if (var_v0_5 != 0) {
                            do {
                                var_at_6 += 1;
                                var_v0_5 -= 1;
                                sp30->unk4077C = 0;
                            } while (var_v0_5 != 0);
                        }
                        temp_v0_4 = temp_ra >> 2;
                        if (temp_v0_4 != 0) {
                            var_v1_3 = var_at_6 + 4;
                            if (temp_v0_4 >= 2) {
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
loop_52:
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                if (var_v1_3 != (temp_ra - 4)) {
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    sp30->unk4077C = 0;
                                    if (var_v1_3 != (temp_ra - 8)) {
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        sp30->unk4077C = 0;
                                        if (var_v1_3 != (temp_ra - 0xC)) {
                                            sp30->unk4077C = 0;
                                            sp30->unk4077C = 0;
                                            sp30->unk4077C = 0;
                                            var_v1_3 += 0x10;
                                            sp30->unk4077C = 0;
                                            if (var_v1_3 != temp_ra) {
                                                goto loop_52;
                                            }
                                        }
                                    }
                                }
                                sp30->unk4077C = 0;
                            } else {
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                                sp30->unk4077C = 0;
                            }
                            sp30->unk4077C = 0;
                        }
                    }
                }
                if (sp10 != 0) {
                    sp30->unk407A8 = 0;
                }
                return;
            }
            nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, sp28, arg6, temp_a7);
            return;
        case 2:                                     /* switch 1 */
            nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, sp28, arg6, 2);
            return;
        }
    }
}

void expImageGlyphBltTE16(void *arg0, void *arg1, s32 arg2, s32 arg3, u32 arg4, s64 arg5, s64 arg6) {
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp10;
    s32 spC;
    s32 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a0;
    s16 temp_a1;
    s16 temp_a7;
    s32 *var_v1_5;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a7_2;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v0_6;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a2;
    s32 var_a7;
    s32 var_at;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_6;
    s32 var_v1_7;
    s64 temp_at;
    s64 temp_ra;
    s64 temp_v0;
    s64 temp_v0_3;
    s64 var_a6;
    s64 var_at_2;
    s64 var_s6;
    s64 var_s7;
    s64 var_t3;
    s64 var_v0_4;
    s64 var_v1;
    u16 temp_v0_5;
    u16 temp_v1;
    u16 var_v0_3;
    void *temp_s0;
    void *temp_s8;

    sp90 = 0;
    spA0 = 0;
    var_s7 = 0;
    var_s6 = 0;
    sp98 = arg6;
    spA8 = arg5;
    temp_s0 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    temp_s8 = **(arg1->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    if (arg4 != 0) {
        temp_a1 = arg1->unk2C->unk24;
        temp_a0 = arg0->unk8 + arg2;
        sp0 = temp_a0;
        sp4 = (temp_a1 * arg4) + temp_a0;
        temp_v0 = arg0->unkA + arg3;
        temp_at = (s64) ((temp_v0 - arg1->unk2C->unk44) << 0x30) >> 0x30;
        sp2 = (s16) temp_at;
        sp88 = temp_v0;
        temp_ra = (s64) ((arg1->unk2C->unk46 + temp_v0) << 0x30) >> 0x30;
        sp6 = (s16) temp_ra;
        sp80 = (s64) temp_a0;
        sp70 = (s64) temp_a1;
        sp78 = temp_ra - temp_at;
        temp_v0_2 = arg1->unk0->unk17C(temp_s0->unk8, sp);
        switch (temp_v0_2) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            break;
        case 1:                                     /* switch 1 */
            temp_v0_3 = sp78 + 1;
            unksp60 = temp_v0_3;
            temp_v0_4 = temp_v0_3 >> 1;
            if (temp_v0_4 < 9) {
                spC = 8 - temp_v0_4;
                sp8 = 0x143;
            } else {
                if (temp_v0_4 < 0x11) {
                    sp8 = 0x144;
                    spC = 0x10 - temp_v0_4;
                } else {
                    temp_a7 = temp_v0_4 < 0x41;
                    if (temp_v0_4 < 0x21) {
                        sp8 = 0x145;
                        spC = 0x20 - temp_v0_4;
                    } else {
                        if (temp_a7 != 0) {
                            sp8 = 0x146;
                            spC = 0x40 - temp_v0_4;
                        } else {
                            nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, spA8, sp98, temp_a7);
                            sp90 = 1;
                        }
                        spA0 = sp90;
                    }
                    var_s7 = spA0;
                }
                var_s6 = var_s7;
            }
            if (var_s6 == 0) {
                temp_a1_2 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                switch (temp_a1_2) {                /* switch 2; irregular */
                default:                            /* switch 2 */
                    temp_s8->unk4052C = temp_a1_2;
                    temp_s8->unk404D4 = 0;
                    var_v0 = temp_s0->unk34;
                    var_a0 = temp_s0->unk15 * 8;
                    break;
                case 13:                            /* switch 2 */
                    temp_s8->unk4052C = 0xB;
                    var_a0 = 1;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 3);
                    break;
                case 12:                            /* switch 2 */
                    temp_s8->unk4052C = 8;
                    var_a0 = 1;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 0xF);
                    break;
                case 14:                            /* switch 2 */
                    temp_s8->unk4052C = 0xB;
                    var_a0 = 9;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 0xC);
                    break;
                }
                temp_s8->unk40530 = (s32) temp_s0->unk2C;
                temp_s8->unk4077C = (s32) (var_v0 & 0xFFFFFF);
                temp_s8->unk4077C = 3;
                temp_s8->unk4077C = var_a0;
                temp_s8->unk404C0 = 0;
                temp_s8->unk4077C = (s32) sp0;
                temp_s8->unk4077C = (s32) sp2;
                temp_s8->unk4077C = (s32) sp4;
                temp_s8->unk4077C = (s32) sp6;
                temp_s8->unk407A8 = 0;
                var_a6 = spA8;
                temp_s8->unk404E0 = (s32) temp_s0->unk28;
                sp10 = (s64) sp8;
                temp_s8->unk404DC = (s32) temp_s0->unk2C;
                var_t3 = sp80;
loop_24:
                temp_a5 = (*var_a6)->unkC;
                ((sp8 * 4) + temp_s8)->unk40000 = (s32) var_t3;
                temp_s8->unk4077C = (s32) (sp88 - arg1->unk2C->unk44);
                temp_s8->unk4077C = (s32) sp70;
                var_v0_2 = temp_a5;
                temp_s8->unk4077C = (s32) sp78;
                if (temp_a5 & 3) {
                    temp_a2 = (s32) ((unksp60 >> 0x1F) + unksp60) >> 1;
                    if (sp78 > 0) {
                        var_v1 = sp78;
                        if (temp_a2 & 1) {
                            var_v0_2 += 4;
                            var_v1 -= 2;
                            temp_s8->unk4077C = (s32) (var_v0_2->unk-2 | (var_v0_2->unk-4 << 0x10));
                        }
                        var_a0_2 = var_v0_2;
                        if ((temp_a2 >> 1) != 0) {
                            if ((var_v1 - 4) > 0) {
                                var_v0_3 = var_a0_2->unk2;
                                var_at = var_v1 - 4;
                                var_v1_2 = var_a0_2->unk0 << 0x10;
                                do {
                                    temp_s8->unk4077C = (s32) (var_v0_3 | var_v1_2);
                                    temp_v0_5 = var_a0_2->unk4;
                                    temp_v1 = var_a0_2->unk6;
                                    var_a0_2 += 8;
                                    temp_s8->unk4077C = (s32) (temp_v1 | (temp_v0_5 << 0x10));
                                    var_at -= 4;
                                    var_v0_3 = var_a0_2->unk2;
                                    var_v1_2 = var_a0_2->unk0 << 0x10;
                                } while (var_at > 0);
                                temp_s8->unk4077C = (s32) (var_v0_3 | var_v1_2);
                                var_a7 = var_a0_2->unk6 | (var_a0_2->unk4 << 0x10);
                            } else {
                                temp_s8->unk4077C = (s32) (var_a0_2->unk2 | (var_a0_2->unk0 << 0x10));
                                var_a7 = var_a0_2->unk6 | (var_a0_2->unk4 << 0x10);
                            }
                            temp_s8->unk4077C = var_a7;
                        }
                    }
                } else {
                    var_a2 = temp_a5;
                    var_v0_4 = sp78;
                    if (sp78 >= 4) {
                        temp_t2 = (s32) (((u32) (sp78 >> 1) >> 0x1E) + sp78) >> 2;
                        var_v1_3 = temp_t2 & 3;
                        var_a1 = 0;
                        if (var_v1_3 != 0) {
                            do {
                                temp_a7_2 = *var_a2;
                                var_a2 += 8;
                                var_v0_4 -= 4;
                                temp_s8->unk4077C = temp_a7_2;
                                var_a1 += 1;
                                var_v1_3 -= 1;
                                temp_s8->unk4077C = (s32) var_a2->unk-4;
                            } while (var_v1_3 != 0);
                        }
                        var_v1_4 = var_a1;
                        var_a0_3 = var_a2;
                        if ((temp_t2 >> 2) != 0) {
                            if ((var_v0_4 - 0x10) >= 4) {
                                var_at_2 = var_v0_4 - 0x10;
                                var_v0_5 = var_a0_3->unk0;
                                do {
                                    temp_s8->unk4077C = var_v0_5;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk4;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk8;
                                    temp_s8->unk4077C = (s32) var_a0_3->unkC;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk10;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk14;
                                    temp_v0_6 = var_a0_3->unk18;
                                    var_a0_3 += 0x20;
                                    temp_s8->unk4077C = temp_v0_6;
                                    var_v1_4 += 4;
                                    var_at_2 -= 0x10;
                                    temp_s8->unk4077C = (s32) var_a0_3->unk-4;
                                    var_v0_5 = var_a0_3->unk0;
                                } while (var_at_2 >= 4);
                                temp_s8->unk4077C = var_v0_5;
                                temp_s8->unk4077C = (s32) var_a0_3->unk4;
                                temp_s8->unk4077C = (s32) var_a0_3->unk8;
                                temp_s8->unk4077C = (s32) var_a0_3->unkC;
                                temp_s8->unk4077C = (s32) var_a0_3->unk10;
                                temp_s8->unk4077C = (s32) var_a0_3->unk14;
                                temp_s8->unk4077C = (s32) var_a0_3->unk18;
                                var_a1 = var_v1_4 + 4;
                                var_v0_4 = var_at_2;
                                temp_s8->unk4077C = (s32) var_a0_3->unk1C;
                            } else {
                                temp_s8->unk4077C = (s32) var_a0_3->unk0;
                                temp_s8->unk4077C = (s32) var_a0_3->unk4;
                                temp_s8->unk4077C = (s32) var_a0_3->unk8;
                                temp_s8->unk4077C = (s32) var_a0_3->unkC;
                                temp_s8->unk4077C = (s32) var_a0_3->unk10;
                                temp_s8->unk4077C = (s32) var_a0_3->unk14;
                                temp_s8->unk4077C = (s32) var_a0_3->unk18;
                                temp_s8->unk4077C = (s32) var_a0_3->unk1C;
                                var_a1 = var_v1_4 + 4;
                                var_v0_4 -= 0x10;
                            }
                        }
                    } else {
                        var_a1 = 0;
                        var_v0_4 = sp78;
                    }
                    var_v1_5 = (var_a1 * 8) + temp_a5;
                    switch (var_v0_4) {             /* switch 3; irregular */
                    case 3:                         /* switch 3 */
                        temp_t1 = *var_v1_5;
                        var_v1_5 += 4;
                        temp_s8->unk4077C = temp_t1;
                        /* fallthrough */
                    case 1:                         /* switch 3 */
                    case 2:                         /* switch 3 */
                        temp_s8->unk4077C = (s32) *var_v1_5;
                        break;
                    }
                }
                var_t3 += sp70;
                var_v1_6 = spC & 3;
                if (spC > 0) {
                    var_v0_6 = 0;
                    if (var_v1_6 != 0) {
                        do {
                            var_v0_6 += 1;
                            var_v1_6 -= 1;
                            temp_s8->unk4077C = 0;
                        } while (var_v1_6 != 0);
                    }
                    temp_a1_3 = spC >> 2;
                    if (temp_a1_3 != 0) {
                        if (temp_a1_3 >= 2) {
                            var_v1_7 = var_v0_6 + 4;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
loop_40:
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            if (var_v1_7 != (spC - 4)) {
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                if (var_v1_7 != (spC - 8)) {
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    if (var_v1_7 != (spC - 0xC)) {
                                        temp_s8->unk4077C = 0;
                                        temp_s8->unk4077C = 0;
                                        temp_s8->unk4077C = 0;
                                        var_v1_7 += 0x10;
                                        temp_s8->unk4077C = 0;
                                        if (var_v1_7 == spC) {

                                        } else {
                                            goto loop_40;
                                        }
                                    }
                                }
                            }
                            temp_s8->unk4077C = 0;
                        } else {
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                        }
                        temp_s8->unk4077C = 0;
                    }
                }
                var_a6 += 4;
                if (var_a6 != ((arg4 * 4) + spA8)) {
                    goto loop_24;
                }
                if (sp10 != 0) {
                    temp_s8->unk407A8 = 0;
                }
            }
            break;
        case 2:                                     /* switch 1 */
            nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, spA8, sp98, 1);
            break;
        }
    }
}

void expImageGlyphBltTE32(void *arg0, void *arg1, s32 arg2, s32 arg3, u32 arg4, s64 arg5, s64 arg6) {
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 spC;
    s32 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a0;
    s16 temp_a1;
    s16 temp_a7;
    s32 *var_a0_5;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a7_2;
    s32 temp_at_2;
    s32 temp_s7;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a5;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_at_2;
    s32 var_at_5;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s32 var_v1_3;
    s32 var_v1_4;
    s64 temp_at;
    s64 temp_ra;
    s64 temp_v0;
    s64 var_a1_4;
    s64 var_a4;
    s64 var_a6;
    s64 var_at;
    s64 var_at_3;
    s64 var_s6;
    s64 var_s7;
    s64 var_t3;
    s64 var_v0_4;
    s64 var_v1;
    s64 var_v1_2;
    u16 temp_a0_2;
    u16 temp_v0_4;
    u16 var_at_4;
    u16 var_v0_3;
    void *temp_s0;
    void *temp_s8;

    spA0 = 0;
    spB0 = 0;
    var_s7 = 0;
    var_s6 = 0;
    spA8 = arg6;
    spB8 = arg5;
    temp_s0 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    temp_s8 = **(arg1->unk0->unk1B4 + (expScreenPrivateIndex * 4));
    if (arg4 != 0) {
        temp_a1 = arg1->unk2C->unk24;
        temp_a0 = arg0->unk8 + arg2;
        sp0 = temp_a0;
        sp4 = (temp_a1 * arg4) + temp_a0;
        temp_v0 = arg0->unkA + arg3;
        temp_at = (s64) ((temp_v0 - arg1->unk2C->unk44) << 0x30) >> 0x30;
        sp2 = (s16) temp_at;
        sp98 = temp_v0;
        temp_ra = (s64) ((arg1->unk2C->unk46 + temp_v0) << 0x30) >> 0x30;
        sp6 = (s16) temp_ra;
        sp90 = (s64) temp_a0;
        sp80 = (s64) temp_a1;
        sp88 = temp_ra - temp_at;
        temp_v0_2 = arg1->unk0->unk17C(temp_s0->unk8, sp);
        switch (temp_v0_2) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            break;
        case 1:                                     /* switch 1 */
            if (sp88 < 9) {
                spC = 8;
                sp8 = 0x143;
            } else {
                if (sp88 < 0x11) {
                    spC = 0x10;
                    sp8 = 0x144;
                } else {
                    temp_a7 = sp88 < 0x41;
                    if (sp88 < 0x21) {
                        spC = 0x20;
                        sp8 = 0x145;
                    } else {
                        if (temp_a7 != 0) {
                            spC = 0x40;
                            sp8 = 0x146;
                        } else {
                            nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, spB8, spA8, temp_a7);
                            spA0 = 1;
                        }
                        spB0 = spA0;
                    }
                    var_s7 = spB0;
                }
                var_s6 = var_s7;
            }
            if (var_s6 == 0) {
                temp_a1_2 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                var_t3 = spB8;
                switch (temp_a1_2) {                /* switch 2; irregular */
                default:                            /* switch 2 */
                    temp_s8->unk4052C = temp_a1_2;
                    temp_s8->unk404D4 = 0;
                    var_v0 = temp_s0->unk34;
                    var_a0 = temp_s0->unk15 * 8;
                    break;
                case 13:                            /* switch 2 */
                    temp_s8->unk4052C = 0xB;
                    var_a0 = 1;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 3);
                    break;
                case 12:                            /* switch 2 */
                    temp_s8->unk4052C = 8;
                    var_a0 = 1;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 0xF);
                    break;
                case 14:                            /* switch 2 */
                    temp_s8->unk4052C = 0xB;
                    var_a0 = 9;
                    var_v0 = 0;
                    temp_s8->unk404D4 = (s32) (temp_s0->unk34 & 0xC);
                    break;
                }
                var_at = 1;
                temp_s8->unk40530 = (s32) temp_s0->unk2C;
                temp_s8->unk4077C = (s32) (var_v0 & 0xFFFFFF);
                temp_s8->unk4077C = 3;
                temp_s8->unk4077C = var_a0;
                temp_s8->unk404C0 = 0;
                if (sp88 >= 1) {
                    var_at = sp88;
                }
                temp_s8->unk4077C = (s32) sp0;
                temp_s8->unk4077C = (s32) sp2;
                var_a6 = sp90;
                sp10 = (s64) sp8;
                temp_s8->unk4077C = (s32) sp4;
                temp_s8->unk4077C = (s32) sp6;
                temp_s8->unk407A8 = 0;
                sp28 = var_at;
                temp_s8->unk404E0 = (s32) temp_s0->unk28;
                temp_s7 = sp88 + 1;
                temp_s8->unk404DC = (s32) temp_s0->unk2C;
                sp20 = spC - sp88;
                sp18 = sp88 >= 4;
loop_26:
                var_v1 = sp88;
                var_a4 = spC - (temp_s7 >> 1);
                var_a5 = (*var_t3)->unkC;
                ((sp8 * 4) + temp_s8)->unk40000 = (s32) var_a6;
                temp_s8->unk4077C = (s32) (sp98 - arg1->unk2C->unk44);
                temp_s8->unk4077C = (s32) sp80;
                temp_v0_3 = var_a5 & 3;
                temp_s8->unk4077C = (s32) sp88;
                if (sp80 < 0x11) {
                    if (temp_v0_3 != 0) {
                        var_v0_2 = var_a5;
                        if (sp88 > 0) {
                            temp_a2 = (s32) (((u32) temp_s7 >> 0x1F) + temp_s7) >> 1;
                            var_v1_2 = sp88;
                            if (temp_a2 & 1) {
                                var_v0_2 += 4;
                                var_v1_2 -= 2;
                                temp_s8->unk4077C = (s32) (var_v0_2->unk-2 | (var_v0_2->unk-4 << 0x10));
                            }
                            var_a1 = var_v0_2;
                            if ((temp_a2 >> 1) != 0) {
                                if ((var_v1_2 - 4) > 0) {
                                    var_v0_3 = var_a1->unk2;
                                    var_at_2 = var_v1_2 - 4;
                                    var_a0_2 = var_a1->unk0 << 0x10;
                                    do {
                                        temp_s8->unk4077C = (s32) (var_v0_3 | var_a0_2);
                                        temp_v0_4 = var_a1->unk4;
                                        temp_a0_2 = var_a1->unk6;
                                        var_a1 += 8;
                                        temp_s8->unk4077C = (s32) (temp_a0_2 | (temp_v0_4 << 0x10));
                                        var_at_2 -= 4;
                                        var_v0_3 = var_a1->unk2;
                                        var_a0_2 = var_a1->unk0 << 0x10;
                                    } while (var_at_2 > 0);
                                    temp_s8->unk4077C = (s32) (var_v0_3 | var_a0_2);
                                    var_a7 = var_a1->unk6 | (var_a1->unk4 << 0x10);
                                } else {
                                    temp_s8->unk4077C = (s32) (var_a1->unk2 | (var_a1->unk0 << 0x10));
                                    var_a7 = var_a1->unk6 | (var_a1->unk4 << 0x10);
                                }
                                temp_s8->unk4077C = var_a7;
                            }
                        }
                    } else {
                        var_v0_4 = sp88;
                        var_a2 = var_a5;
                        var_v1_3 = 0;
                        if (sp18 != 0) {
                            temp_t2 = (s32) (((u32) (sp88 >> 1) >> 0x1E) + sp88) >> 2;
                            var_a0_3 = temp_t2 & 3;
                            if (var_a0_3 != 0) {
                                do {
                                    temp_a7_2 = *var_a2;
                                    var_a2 += 8;
                                    var_v0_4 -= 4;
                                    temp_s8->unk4077C = temp_a7_2;
                                    var_v1_3 += 1;
                                    var_a0_3 -= 1;
                                    temp_s8->unk4077C = (s32) var_a2->unk-4;
                                } while (var_a0_3 != 0);
                            }
                            var_a0_4 = var_v1_3;
                            var_a1_2 = var_a2;
                            if ((temp_t2 >> 2) != 0) {
                                if ((var_v0_4 - 0x10) >= 4) {
                                    var_at_3 = var_v0_4 - 0x10;
                                    var_v0_5 = var_a1_2->unk0;
                                    do {
                                        temp_s8->unk4077C = var_v0_5;
                                        temp_s8->unk4077C = (s32) var_a1_2->unk4;
                                        temp_s8->unk4077C = (s32) var_a1_2->unk8;
                                        temp_s8->unk4077C = (s32) var_a1_2->unkC;
                                        temp_s8->unk4077C = (s32) var_a1_2->unk10;
                                        temp_s8->unk4077C = (s32) var_a1_2->unk14;
                                        temp_v0_5 = var_a1_2->unk18;
                                        var_a1_2 += 0x20;
                                        temp_s8->unk4077C = temp_v0_5;
                                        var_a0_4 += 4;
                                        var_at_3 -= 0x10;
                                        temp_s8->unk4077C = (s32) var_a1_2->unk-4;
                                        var_v0_5 = var_a1_2->unk0;
                                    } while (var_at_3 >= 4);
                                    temp_s8->unk4077C = var_v0_5;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk4;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk8;
                                    temp_s8->unk4077C = (s32) var_a1_2->unkC;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk10;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk14;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk18;
                                    var_v1_3 = var_a0_4 + 4;
                                    var_v0_4 = var_at_3;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk1C;
                                } else {
                                    temp_s8->unk4077C = (s32) var_a1_2->unk0;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk4;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk8;
                                    temp_s8->unk4077C = (s32) var_a1_2->unkC;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk10;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk14;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk18;
                                    temp_s8->unk4077C = (s32) var_a1_2->unk1C;
                                    var_v1_3 = var_a0_4 + 4;
                                    var_v0_4 -= 0x10;
                                }
                            }
                        } else {
                            var_v1_3 = 0;
                            var_v0_4 = sp88;
                        }
                        var_a0_5 = (var_v1_3 * 8) + var_a5;
                        switch (var_v0_4) {         /* switch 3; irregular */
                        case 3:                     /* switch 3 */
                            temp_t1 = *var_a0_5;
                            var_a0_5 += 4;
                            temp_s8->unk4077C = temp_t1;
                            /* fallthrough */
                        case 1:                     /* switch 3 */
                        case 2:                     /* switch 3 */
                            temp_s8->unk4077C = (s32) *var_a0_5;
                            break;
                        }
                    }
                } else {
                    var_a4 = sp20;
                    if (temp_v0_3 != 0) {
                        var_a0_6 = sp28 & 3;
                        var_a1_3 = var_a5;
                        if (var_a0_6 != 0) {
                            do {
                                var_v1 -= 1;
                                var_a5 += 4;
                                var_a0_6 -= 1;
                                temp_s8->unk4077C = (s32) (var_a5->unk-2 | (var_a5->unk-4 << 0x10));
                            } while (var_a0_6 != 0);
                            var_a1_3 = var_a5;
                        }
                        temp_a2_2 = sp28 >> 2;
                        var_v0_6 = var_v1 - 4;
                        if (temp_a2_2 != 0) {
                            if (temp_a2_2 >= 2) {
                                var_at_4 = var_a1_3->unk2;
                                var_a0_7 = var_a1_3->unk0 << 0x10;
                                do {
                                    temp_s8->unk4077C = (s32) (var_at_4 | var_a0_7);
                                    temp_s8->unk4077C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                    temp_s8->unk4077C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                    var_v0_6 -= 4;
                                    temp_s8->unk4077C = (s32) (var_a1_3->unkE | (var_a1_3->unkC << 0x10));
                                    var_a1_3 += 0x10;
                                    var_at_4 = var_a1_3->unk2;
                                    var_a0_7 = var_a1_3->unk0 << 0x10;
                                } while (var_v0_6 != 0);
                                temp_s8->unk4077C = (s32) (var_at_4 | var_a0_7);
                                temp_s8->unk4077C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                temp_s8->unk4077C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                var_a7_2 = var_a1_3->unkE | (var_a1_3->unkC << 0x10);
                            } else {
                                temp_s8->unk4077C = (s32) (var_a1_3->unk2 | (var_a1_3->unk0 << 0x10));
                                temp_s8->unk4077C = (s32) (var_a1_3->unk6 | (var_a1_3->unk4 << 0x10));
                                temp_s8->unk4077C = (s32) (var_a1_3->unkA | (var_a1_3->unk8 << 0x10));
                                var_a7_2 = var_a1_3->unkE | (var_a1_3->unkC << 0x10);
                            }
                            temp_s8->unk4077C = var_a7_2;
                        }
                    } else {
                        var_v0_7 = sp28 & 3;
                        var_a1_4 = var_v1;
                        if (var_v0_7 != 0) {
                            do {
                                var_v1 -= 1;
                                var_a5 += 4;
                                var_v0_7 -= 1;
                                temp_s8->unk4077C = (s32) var_a5->unk-4;
                            } while (var_v0_7 != 0);
                            var_a1_4 = var_v1;
                        }
                        temp_a2_3 = sp28 >> 2;
                        var_v0_8 = var_a5;
                        if (temp_a2_3 != 0) {
                            var_a0_8 = var_a1_4 - 4;
                            if (temp_a2_3 >= 2) {
                                var_at_5 = var_v0_8->unk0;
                                do {
                                    temp_s8->unk4077C = var_at_5;
                                    temp_s8->unk4077C = (s32) var_v0_8->unk4;
                                    temp_s8->unk4077C = (s32) var_v0_8->unk8;
                                    temp_at_2 = var_v0_8->unkC;
                                    var_a0_8 -= 4;
                                    var_v0_8 += 0x10;
                                    temp_s8->unk4077C = temp_at_2;
                                    var_at_5 = var_v0_8->unk0;
                                } while (var_a0_8 != 0);
                                temp_s8->unk4077C = var_at_5;
                                temp_s8->unk4077C = (s32) var_v0_8->unk4;
                                temp_s8->unk4077C = (s32) var_v0_8->unk8;
                                temp_s8->unk4077C = (s32) var_v0_8->unkC;
                            } else {
                                temp_s8->unk4077C = (s32) var_v0_8->unk0;
                                temp_s8->unk4077C = (s32) var_v0_8->unk4;
                                temp_s8->unk4077C = (s32) var_v0_8->unk8;
                                temp_s8->unk4077C = (s32) var_v0_8->unkC;
                            }
                        }
                    }
                }
                var_a6 += sp80;
                var_v1_4 = var_a4 & 3;
                if (var_a4 > 0) {
                    var_v0_9 = 0;
                    if (var_v1_4 != 0) {
                        do {
                            var_v0_9 += 1;
                            var_v1_4 -= 1;
                            temp_s8->unk4077C = 0;
                        } while (var_v1_4 != 0);
                    }
                    temp_a1_3 = var_a4 >> 2;
                    if (temp_a1_3 != 0) {
                        var_a0_9 = var_v0_9 + 4;
                        if (temp_a1_3 >= 2) {
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
loop_43:
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            if (var_a0_9 != (var_a4 - 4)) {
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                temp_s8->unk4077C = 0;
                                if (var_a0_9 != (var_a4 - 8)) {
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    temp_s8->unk4077C = 0;
                                    if (var_a0_9 != (var_a4 - 0xC)) {
                                        temp_s8->unk4077C = 0;
                                        temp_s8->unk4077C = 0;
                                        temp_s8->unk4077C = 0;
                                        var_a0_9 += 0x10;
                                        temp_s8->unk4077C = 0;
                                        if (var_a0_9 == var_a4) {

                                        } else {
                                            goto loop_43;
                                        }
                                    }
                                }
                            }
                            temp_s8->unk4077C = 0;
                        } else {
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                            temp_s8->unk4077C = 0;
                        }
                        temp_s8->unk4077C = 0;
                    }
                }
                var_t3 += 4;
                if (var_t3 != ((arg4 * 4) + spB8)) {
                    goto loop_26;
                }
                if (sp10 != 0) {
                    temp_s8->unk407A8 = 0;
                }
            }
            break;
        case 2:                                     /* switch 1 */
            nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, spB8, spA8, 1);
            break;
        }
    }
}

s32 expImageGlyphBltCW16(void *arg0, void *arg1, s32 arg2, s32 arg3, u32 arg4, s64 arg5, s64 arg6) {
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
    s32 spC;
    s32 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a2;
    s16 temp_t1;
    s16 temp_t3;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 *var_v1_8;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t2_2;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_6;
    s32 temp_v1_4;
    s32 var_a0;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a1_2;
    s32 var_a2_2;
    s32 var_a7;
    s32 var_at;
    s32 var_at_2;
    s32 var_v0;
    s32 var_v0_3;
    s32 var_v1;
    s32 var_v1_10;
    s32 var_v1_2;
    s32 var_v1_4;
    s32 var_v1_5;
    s32 var_v1_6;
    s32 var_v1_7;
    s32 var_v1_9;
    s64 temp_a6;
    s64 temp_lo;
    s64 temp_s0_2;
    s64 temp_s1;
    s64 temp_s1_2;
    s64 temp_t2;
    s64 temp_v0_2;
    s64 var_a0_3;
    s64 var_a1;
    s64 var_a2;
    s64 var_a4;
    s64 var_a6;
    s64 var_s8;
    s64 var_v1_3;
    u16 temp_v0_5;
    u16 temp_v1_3;
    u32 var_t3;
    void *temp_s0;
    void *temp_s2;
    void *temp_t9;
    void *temp_v0_4;
    void *var_a0_2;
    void *var_v0_2;

    sp70 = 0;
    sp80 = 0;
    sp98 = 0;
    var_s8 = 0;
    sp78 = arg6;
    sp88 = arg5;
    temp_v0 = expScreenPrivateIndex * 4;
    temp_s2 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    sp90 = (s64) **(arg1->unk0->unk1B4 + temp_v0);
    if (arg4 != 0) {
        temp_s0 = arg1->unk2C;
        sp60 = (s64) temp_s2->unk8;
        temp_lo = temp_s0->unk24 * arg4;
        temp_v0_2 = arg0->unk8 + arg2;
        sp0 = temp_s0->unk20 + temp_v0_2;
        sp58 = temp_v0_2;
        sp4 = arg1->unk2C->unk16 + temp_v0_2 + temp_lo;
        temp_s1 = arg0->unkA + arg3;
        sp2 = temp_s1 - arg1->unk2C->unk1A;
        sp50 = temp_s1;
        sp6 = arg1->unk2C->unk1C + temp_s1;
        temp_s0_2 = (s64) ((temp_s0->unk46 + temp_s1) << 0x30) >> 0x30;
        sp68 = temp_lo;
        temp_s1_2 = (s64) ((temp_s1 - temp_s0->unk44) << 0x30) >> 0x30;
        var_v0 = arg1->unk0->unk17C(temp_s2->unk8, sp);
        var_a4 = sp58;
        switch (var_v0) {                           /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            break;
        case 1:                                     /* switch 1 */
            var_v0 = (s32) ((sp6 - sp2) + 1) >> 1;
            if (var_v0 < 9) {
                sp8 = 0x143;
                spC = 8;
            } else {
                if (var_v0 < 0x11) {
                    spC = 0x10;
                    sp8 = 0x144;
                } else {
                    if (var_v0 < 0x21) {
                        spC = 0x20;
                        sp8 = 0x145;
                    } else {
                        if (var_v0 < 0x41) {
                            spC = 0x40;
                            sp8 = 0x146;
                        } else {
                            var_v0 = nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, sp88, sp78, 0x40);
                            sp70 = 1;
                            var_a4 = sp58;
                        }
                        sp80 = sp70;
                    }
                    sp98 = sp80;
                }
                var_s8 = sp98;
            }
            if (var_s8 == 0) {
                temp_v0_3 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                switch (temp_v0_3) {                /* switch 2; irregular */
                default:                            /* switch 2 */
                    sp90->unk4052C = temp_v0_3;
                    sp90->unk404D4 = 0;
                    var_v1 = temp_s2->unk34;
                    var_a0 = temp_s2->unk15 * 8;
                    break;
                case 13:                            /* switch 2 */
                    sp90->unk4052C = 0xB;
                    var_a0 = 1;
                    var_v1 = 0;
                    sp90->unk404D4 = (s32) (temp_s2->unk34 & 3);
                    break;
                case 12:                            /* switch 2 */
                    sp90->unk4052C = 8;
                    var_a0 = 1;
                    var_v1 = 0;
                    sp90->unk404D4 = (s32) (temp_s2->unk34 & 0xF);
                    break;
                case 14:                            /* switch 2 */
                    sp90->unk4052C = 0xB;
                    var_a0 = 9;
                    var_v1 = 0;
                    sp90->unk404D4 = (s32) (temp_s2->unk34 & 0xC);
                    break;
                }
                sp90->unk40530 = (s32) temp_s2->unk2C;
                sp90->unk4077C = (s32) (var_v1 & 0xFFFFFF);
                sp90->unk4077C = 3;
                sp90->unk4077C = var_a0;
                sp90->unk404E0 = (s32) temp_s2->unk28;
                sp90->unk404DC = (s32) temp_s2->unk2C;
                temp_v0_4 = sp60->unk8;
                if (temp_v0_4 != NULL) {
                    var_v1_2 = temp_v0_4->unk4;
                    if (temp_v0_4 != NULL) {
                        goto block_23;
                    }
                    goto block_85;
                }
                var_v1_2 = 1;
                if (temp_v0_4 == NULL) {
block_85:
                    var_a0_2 = (void *) sp60;
                } else {
block_23:
                    var_a0_2 = temp_v0_4 + 8;
                }
                var_v0_2 = var_a0_2;
                if (var_v1_2 > 0) {
                    temp_t2 = (s64) (var_a4 << 0x30) >> 0x30;
                    temp_a6 = (s64) ((var_a4 + sp68) << 0x30) >> 0x30;
loop_30:
                    temp_v1 = var_v0_2->unk0;
                    var_a0_3 = temp_t2;
                    if (temp_t2 < temp_v1) {
                        var_a0_3 = (s64) temp_v1;
                    }
                    temp_v1_2 = var_v0_2->unk2;
                    var_a1 = temp_s1_2;
                    if (temp_s1_2 < temp_v1_2) {
                        var_a1 = (s64) temp_v1_2;
                    }
                    temp_a2 = var_v0_2->unk4;
                    var_v1_3 = temp_a6;
                    if (temp_a2 < temp_a6) {
                        var_v1_3 = (s64) temp_a2;
                    }
                    temp_t3 = var_v0_2->unk6;
                    var_a2 = temp_s0_2;
                    if (temp_t3 < temp_s0_2) {
                        var_a2 = (s64) temp_t3;
                    }
                    if ((var_a0_3 < var_v1_3) && (var_a1 < var_a2)) {
                        sp90->unk404C0 = 0;
                        sp90->unk4077C = (s32) var_a0_3;
                        sp90->unk4077C = (s32) var_a1;
                        sp90->unk4077C = (s32) var_v1_3;
                        sp90->unk4077C = (s32) var_a2;
                        sp90->unk407A8 = 0;
                    }
                    var_v0_2 += 8;
                    if (var_v0_2 != (var_a0_2 + (var_v1_2 * 8))) {
                        goto loop_30;
                    }
                }
                var_a6 = sp88;
loop_42:
                temp_t9 = *var_a6;
                var_a1_2 = 0;
                temp_t8 = temp_t9->unkC;
                temp_t1 = temp_t9->unk0;
                ((sp8 * 4) + sp90)->unk40000 = (s32) (temp_t1 + var_a4);
                temp_a5 = temp_t9->unk6 + temp_t9->unk8;
                var_v0 = temp_t8 & 3;
                sp90->unk4077C = (s32) (sp50 - temp_t9->unk6);
                sp90->unk4077C = (s32) (temp_t9->unk2 - temp_t1);
                sp90->unk4077C = temp_a5;
                if (var_v0 != 0) {
                    var_t3 = temp_a5 + 1;
                    if (temp_a5 > 0) {
                        var_v0 = temp_a5;
                        temp_a2_2 = (s32) ((var_t3 >> 0x1F) + var_t3) >> 1;
                        var_v1_4 = temp_t8;
                        if (temp_a2_2 & 1) {
                            var_v1_4 += 4;
                            var_v0 -= 2;
                            sp90->unk4077C = (s32) (var_v1_4->unk-2 | (var_v1_4->unk-4 << 0x10));
                        }
                        temp_a1 = var_v0;
                        var_a0_4 = var_v1_4;
                        if ((temp_a2_2 >> 1) != 0) {
                            var_v0 = temp_a1;
                            if ((temp_a1 - 4) > 0) {
                                var_v0 = (s32) var_a0_4->unk2;
                                var_at = temp_a1 - 4;
                                var_v1_5 = var_a0_4->unk0 << 0x10;
                                do {
                                    sp90->unk4077C = (s32) (var_v0 | var_v1_5);
                                    temp_v0_5 = var_a0_4->unk4;
                                    temp_v1_3 = var_a0_4->unk6;
                                    var_a0_4 += 8;
                                    sp90->unk4077C = (s32) (temp_v1_3 | (temp_v0_5 << 0x10));
                                    var_at -= 4;
                                    var_v0 = (s32) var_a0_4->unk2;
                                    var_v1_5 = var_a0_4->unk0 << 0x10;
                                } while (var_at > 0);
                                sp90->unk4077C = (s32) (var_v0 | var_v1_5);
                                var_a7 = var_a0_4->unk6 | (var_a0_4->unk4 << 0x10);
                            } else {
                                sp90->unk4077C = (s32) (var_a0_4->unk2 | (var_a0_4->unk0 << 0x10));
                                var_a7 = var_a0_4->unk6 | (var_a0_4->unk4 << 0x10);
                            }
                            sp90->unk4077C = var_a7;
                        }
                    }
                } else {
                    var_a2_2 = temp_t8;
                    var_v0 = temp_a5;
                    if (temp_a5 >= 4) {
                        temp_t2_2 = (s32) (((u32) (temp_a5 >> 1) >> 0x1E) + temp_a5) >> 2;
                        var_v1_6 = temp_t2_2 & 3;
                        var_a1_2 = 0;
                        if (var_v1_6 != 0) {
                            do {
                                temp_a7 = *var_a2_2;
                                var_a2_2 += 8;
                                var_v0 -= 4;
                                sp90->unk4077C = temp_a7;
                                var_a1_2 += 1;
                                var_v1_6 -= 1;
                                sp90->unk4077C = (s32) var_a2_2->unk-4;
                            } while (var_v1_6 != 0);
                        }
                        var_v1_7 = var_a1_2;
                        var_a0_5 = var_a2_2;
                        if ((temp_t2_2 >> 2) != 0) {
                            if ((var_v0 - 0x10) >= 4) {
                                var_at_2 = var_v0 - 0x10;
                                var_v0_3 = var_a0_5->unk0;
                                do {
                                    sp90->unk4077C = var_v0_3;
                                    sp90->unk4077C = (s32) var_a0_5->unk4;
                                    sp90->unk4077C = (s32) var_a0_5->unk8;
                                    sp90->unk4077C = (s32) var_a0_5->unkC;
                                    sp90->unk4077C = (s32) var_a0_5->unk10;
                                    sp90->unk4077C = (s32) var_a0_5->unk14;
                                    temp_v0_6 = var_a0_5->unk18;
                                    var_a0_5 += 0x20;
                                    sp90->unk4077C = temp_v0_6;
                                    var_v1_7 += 4;
                                    var_at_2 -= 0x10;
                                    sp90->unk4077C = (s32) var_a0_5->unk-4;
                                    var_v0_3 = var_a0_5->unk0;
                                } while (var_at_2 >= 4);
                                sp90->unk4077C = var_v0_3;
                                sp90->unk4077C = (s32) var_a0_5->unk4;
                                sp90->unk4077C = (s32) var_a0_5->unk8;
                                sp90->unk4077C = (s32) var_a0_5->unkC;
                                sp90->unk4077C = (s32) var_a0_5->unk10;
                                sp90->unk4077C = (s32) var_a0_5->unk14;
                                sp90->unk4077C = (s32) var_a0_5->unk18;
                                var_a1_2 = var_v1_7 + 4;
                                var_v0 = var_at_2;
                                sp90->unk4077C = (s32) var_a0_5->unk1C;
                            } else {
                                sp90->unk4077C = (s32) var_a0_5->unk0;
                                sp90->unk4077C = (s32) var_a0_5->unk4;
                                sp90->unk4077C = (s32) var_a0_5->unk8;
                                sp90->unk4077C = (s32) var_a0_5->unkC;
                                sp90->unk4077C = (s32) var_a0_5->unk10;
                                sp90->unk4077C = (s32) var_a0_5->unk14;
                                sp90->unk4077C = (s32) var_a0_5->unk18;
                                sp90->unk4077C = (s32) var_a0_5->unk1C;
                                var_a1_2 = var_v1_7 + 4;
                                var_v0 -= 0x10;
                            }
                        }
                    } else {
                        var_v0 = temp_a5;
                    }
                    var_v1_8 = (var_a1_2 * 8) + temp_t8;
                    switch (var_v0) {               /* switch 3; irregular */
                    case 3:                         /* switch 3 */
                        temp_t0 = *var_v1_8;
                        var_v1_8 += 4;
                        sp90->unk4077C = temp_t0;
                        /* fallthrough */
                    case 1:                         /* switch 3 */
                    case 2:                         /* switch 3 */
                        sp90->unk4077C = (s32) *var_v1_8;
                        break;
                    }
                    var_t3 = temp_a5 + 1;
                }
                temp_a2_3 = spC - ((s32) var_t3 >> 1);
                var_v1_9 = temp_a2_3 & 3;
                if (temp_a2_3 > 0) {
                    var_v0 = 0;
                    if (var_v1_9 != 0) {
                        do {
                            var_v0 += 1;
                            var_v1_9 -= 1;
                            sp90->unk4077C = 0;
                        } while (var_v1_9 != 0);
                    }
                    temp_v1_4 = temp_a2_3 >> 2;
                    if (temp_v1_4 != 0) {
                        var_v1_10 = var_v0 + 4;
                        if (temp_v1_4 >= 2) {
                            var_v0 = temp_a2_3 - 8;
                            sp90->unk4077C = 0;
                            sp90->unk4077C = 0;
loop_58:
                            sp90->unk4077C = 0;
                            sp90->unk4077C = 0;
                            sp90->unk4077C = 0;
                            sp90->unk4077C = 0;
                            if (var_v1_10 != (temp_a2_3 - 4)) {
                                sp90->unk4077C = 0;
                                sp90->unk4077C = 0;
                                sp90->unk4077C = 0;
                                sp90->unk4077C = 0;
                                if (var_v1_10 != var_v0) {
                                    sp90->unk4077C = 0;
                                    sp90->unk4077C = 0;
                                    sp90->unk4077C = 0;
                                    sp90->unk4077C = 0;
                                    if (var_v1_10 != (temp_a2_3 - 0xC)) {
                                        sp90->unk4077C = 0;
                                        sp90->unk4077C = 0;
                                        sp90->unk4077C = 0;
                                        var_v1_10 += 0x10;
                                        sp90->unk4077C = 0;
                                        if (var_v1_10 == temp_a2_3) {

                                        } else {
                                            goto loop_58;
                                        }
                                    }
                                }
                            }
                            sp90->unk4077C = 0;
                        } else {
                            sp90->unk4077C = 0;
                            sp90->unk4077C = 0;
                            sp90->unk4077C = 0;
                        }
                        sp90->unk4077C = 0;
                    }
                }
                var_a6 += 4;
                var_a4 += temp_t9->unk4;
                if (var_a6 != ((arg4 * 4) + sp88)) {
                    goto loop_42;
                }
                if (sp8 != 0) {
                    sp90->unk407A8 = 0;
                }
            }
            break;
        case 2:                                     /* switch 1 */
            var_v0 = nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, sp88, sp78, sp2);
            break;
        }
        return var_v0;
    }
    return temp_v0;
}

s32 expImageGlyphBltCW32(void *arg0, void *arg1, s32 arg2, s32 arg3, u32 arg4, s64 arg5, s64 arg6) {
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
    s32 spC;
    s32 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_a2;
    s16 temp_t2;
    s32 *var_v1_5;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_s3;
    s32 temp_t2_2;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_6;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a7;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_4;
    s32 var_t2;
    s32 var_t9;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_3;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_4;
    s32 var_v1_6;
    s64 temp_a4;
    s64 temp_a6;
    s64 temp_lo;
    s64 temp_s0;
    s64 temp_s0_2;
    s64 temp_s1_2;
    s64 temp_v0_2;
    s64 var_a0_3;
    s64 var_a1;
    s64 var_a2;
    s64 var_s8;
    s64 var_t3;
    s64 var_t8;
    s64 var_v1_3;
    u16 temp_a0_4;
    u16 temp_v0_5;
    u16 var_at_3;
    u16 var_v0_4;
    void *temp_a6_2;
    void *temp_s1;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_t1;
    void *temp_v0_4;
    void *var_a0_2;
    void *var_v0_2;

    sp70 = 0;
    sp80 = 0;
    sp90 = 0;
    var_s8 = 0;
    sp78 = arg6;
    sp98 = arg5;
    temp_v0 = expScreenPrivateIndex * 4;
    temp_s2 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    sp88 = (s64) **(arg1->unk0->unk1B4 + temp_v0);
    if (arg4 != 0) {
        temp_s1 = arg1->unk2C;
        sp60 = (s64) temp_s2->unk8;
        temp_lo = temp_s1->unk24 * arg4;
        temp_v0_2 = arg0->unk8 + arg2;
        sp0 = temp_s1->unk20 + temp_v0_2;
        sp58 = temp_v0_2;
        sp4 = arg1->unk2C->unk16 + temp_v0_2 + temp_lo;
        temp_s0 = arg0->unkA + arg3;
        sp2 = temp_s0 - arg1->unk2C->unk1A;
        sp50 = temp_s0;
        sp6 = arg1->unk2C->unk1C + temp_s0;
        temp_s1_2 = (s64) ((temp_s1->unk46 + temp_s0) << 0x30) >> 0x30;
        sp68 = temp_lo;
        temp_s0_2 = (s64) ((temp_s0 - temp_s1->unk44) << 0x30) >> 0x30;
        var_v0 = arg1->unk0->unk17C(temp_s2->unk8, sp);
        var_t3 = sp58;
        switch (var_v0) {                           /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            break;
        case 1:                                     /* switch 1 */
            var_v0 = sp6 - sp2;
            if (var_v0 < 9) {
                sp8 = 0x143;
                spC = 8;
            } else {
                if (var_v0 < 0x11) {
                    spC = 0x10;
                    sp8 = 0x144;
                } else {
                    if (var_v0 < 0x21) {
                        spC = 0x20;
                        sp8 = 0x145;
                    } else {
                        if (var_v0 < 0x41) {
                            spC = 0x40;
                            sp8 = 0x146;
                        } else {
                            var_v0 = nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, sp98, sp78, 0x40);
                            var_t3 = sp58;
                            sp70 = 1;
                        }
                        sp80 = sp70;
                    }
                    sp90 = sp80;
                }
                var_s8 = sp90;
            }
            if (var_s8 == 0) {
                temp_v0_3 = (*(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
                switch (temp_v0_3) {                /* switch 2; irregular */
                default:                            /* switch 2 */
                    sp88->unk4052C = temp_v0_3;
                    sp88->unk404D4 = 0;
                    var_v1 = temp_s2->unk34;
                    var_a0 = temp_s2->unk15 * 8;
                    break;
                case 13:                            /* switch 2 */
                    sp88->unk4052C = 0xB;
                    var_a0 = 1;
                    var_v1 = 0;
                    sp88->unk404D4 = (s32) (temp_s2->unk34 & 3);
                    break;
                case 12:                            /* switch 2 */
                    sp88->unk4052C = 8;
                    var_a0 = 1;
                    var_v1 = 0;
                    sp88->unk404D4 = (s32) (temp_s2->unk34 & 0xF);
                    break;
                case 14:                            /* switch 2 */
                    sp88->unk4052C = 0xB;
                    var_a0 = 9;
                    var_v1 = 0;
                    sp88->unk404D4 = (s32) (temp_s2->unk34 & 0xC);
                    break;
                }
                sp88->unk40530 = (s32) temp_s2->unk2C;
                sp88->unk4077C = (s32) (var_v1 & 0xFFFFFF);
                sp88->unk4077C = 3;
                sp88->unk4077C = var_a0;
                sp88->unk404E0 = (s32) temp_s2->unk28;
                sp88->unk404DC = (s32) temp_s2->unk2C;
                temp_v0_4 = sp60->unk8;
                if (temp_v0_4 != NULL) {
                    var_v1_2 = temp_v0_4->unk4;
                    if (temp_v0_4 != NULL) {
                        goto block_23;
                    }
                    goto block_111;
                }
                var_v1_2 = 1;
                if (temp_v0_4 == NULL) {
block_111:
                    var_a0_2 = (void *) sp60;
                } else {
block_23:
                    var_a0_2 = temp_v0_4 + 8;
                }
                var_v0_2 = var_a0_2;
                if (var_v1_2 > 0) {
                    temp_a4 = (s64) (var_t3 << 0x30) >> 0x30;
                    temp_a6 = (s64) ((var_t3 + sp68) << 0x30) >> 0x30;
loop_30:
                    temp_a0 = var_v0_2->unk0;
                    var_v1_3 = temp_a4;
                    if (temp_a4 < temp_a0) {
                        var_v1_3 = (s64) temp_a0;
                    }
                    temp_a0_2 = var_v0_2->unk2;
                    var_a1 = temp_s0_2;
                    if (temp_s0_2 < temp_a0_2) {
                        var_a1 = (s64) temp_a0_2;
                    }
                    temp_a2 = var_v0_2->unk4;
                    var_a0_3 = temp_a6;
                    if (temp_a2 < temp_a6) {
                        var_a0_3 = (s64) temp_a2;
                    }
                    temp_t2 = var_v0_2->unk6;
                    var_a2 = temp_s1_2;
                    if (temp_t2 < temp_s1_2) {
                        var_a2 = (s64) temp_t2;
                    }
                    if ((var_v1_3 < var_a0_3) && (var_a1 < var_a2)) {
                        sp88->unk404C0 = 0;
                        sp88->unk4077C = (s32) var_v1_3;
                        sp88->unk4077C = (s32) var_a1;
                        sp88->unk4077C = (s32) var_a0_3;
                        sp88->unk4077C = (s32) var_a2;
                        sp88->unk407A8 = 0;
                    }
                    var_v0_2 += 8;
                    if (var_v0_2 != (var_a0_2 + (var_v1_2 * 8))) {
                        goto loop_30;
                    }
                }
                temp_t1 = *sp98;
                var_t8 = sp98;
                if ((temp_t1->unk2 - temp_t1->unk0) < 0x11) {
                    var_t9 = 1;
                } else {
                    var_t9 = 0;
                }
                temp_s2_2 = (sp8 * 4) + sp88;
loop_69:
                temp_a6_2 = *var_t8;
                var_a5 = temp_a6_2->unkC;
                temp_a0_3 = var_a5 & 3;
                temp_a1 = temp_a6_2->unk2 - temp_a6_2->unk0;
                var_v1_4 = temp_a6_2->unk6 + temp_a6_2->unk8;
                if (temp_a1 < 0x11) {
                    if (var_t9 == 0) {
                        var_t9 = 1;
                        sp88->unk407A8 = 0;
                    }
                    temp_s2_2->unk40000 = (s32) (temp_a6_2->unk0 + var_t3);
                    temp_a2_2 = var_v1_4 + 1;
                    var_a4 = spC - (temp_a2_2 >> 1);
                    sp88->unk4077C = (s32) (sp50 - temp_a6_2->unk6);
                    sp88->unk4077C = temp_a1;
                    sp88->unk4077C = var_v1_4;
                    if (temp_a0_3 != 0) {
                        var_a0_4 = var_v1_4;
                        if (var_v1_4 > 0) {
                            temp_t2_2 = (s32) (((u32) temp_a2_2 >> 0x1F) + temp_a2_2) >> 1;
                            var_v0_3 = var_a5;
                            if (temp_t2_2 & 1) {
                                var_v0_3 += 4;
                                var_a0_4 -= 2;
                                sp88->unk4077C = (s32) (var_v0_3->unk-2 | (var_v0_3->unk-4 << 0x10));
                            }
                            var_a1_2 = var_v0_3;
                            if ((temp_t2_2 >> 1) != 0) {
                                var_at = var_a0_4 - 4;
                                if ((var_a0_4 - 4) > 0) {
                                    var_v0_4 = var_a1_2->unk2;
                                    var_a0_5 = var_a1_2->unk0 << 0x10;
                                    do {
                                        sp88->unk4077C = (s32) (var_v0_4 | var_a0_5);
                                        temp_v0_5 = var_a1_2->unk4;
                                        temp_a0_4 = var_a1_2->unk6;
                                        var_a1_2 += 8;
                                        sp88->unk4077C = (s32) (temp_a0_4 | (temp_v0_5 << 0x10));
                                        var_at -= 4;
                                        var_v0_4 = var_a1_2->unk2;
                                        var_a0_5 = var_a1_2->unk0 << 0x10;
                                    } while (var_at > 0);
                                    sp88->unk4077C = (s32) (var_v0_4 | var_a0_5);
                                    sp88->unk4077C = (s32) (var_a1_2->unk6 | (var_a1_2->unk4 << 0x10));
                                } else {
                                    sp88->unk4077C = (s32) (var_a1_2->unk2 | (var_a1_2->unk0 << 0x10));
                                    sp88->unk4077C = (s32) (var_a1_2->unk6 | (var_a1_2->unk4 << 0x10));
                                }
                            }
                        }
                    } else {
                        var_t2 = var_a5;
                        var_v0_5 = var_v1_4;
                        if (var_v1_4 >= 4) {
                            temp_s3 = (s32) (((u32) (var_v1_4 >> 1) >> 0x1E) + var_v1_4) >> 2;
                            var_a0_6 = temp_s3 & 3;
                            var_a2_2 = 0;
                            if (var_a0_6 != 0) {
                                do {
                                    temp_a7 = *var_t2;
                                    var_t2 += 8;
                                    var_v0_5 -= 4;
                                    sp88->unk4077C = temp_a7;
                                    var_a2_2 += 1;
                                    var_a0_6 -= 1;
                                    sp88->unk4077C = (s32) var_t2->unk-4;
                                } while (var_a0_6 != 0);
                            }
                            var_a0_7 = var_a2_2;
                            var_a1_3 = var_t2;
                            if ((temp_s3 >> 2) != 0) {
                                var_at_2 = var_v0_5 - 0x10;
                                if ((var_v0_5 - 0x10) >= 4) {
                                    var_v0_6 = var_a1_3->unk0;
                                    do {
                                        sp88->unk4077C = var_v0_6;
                                        sp88->unk4077C = (s32) var_a1_3->unk4;
                                        sp88->unk4077C = (s32) var_a1_3->unk8;
                                        sp88->unk4077C = (s32) var_a1_3->unkC;
                                        sp88->unk4077C = (s32) var_a1_3->unk10;
                                        sp88->unk4077C = (s32) var_a1_3->unk14;
                                        temp_v0_6 = var_a1_3->unk18;
                                        var_a1_3 += 0x20;
                                        sp88->unk4077C = temp_v0_6;
                                        var_a0_7 += 4;
                                        var_at_2 -= 0x10;
                                        sp88->unk4077C = (s32) var_a1_3->unk-4;
                                        var_v0_6 = var_a1_3->unk0;
                                    } while (var_at_2 >= 4);
                                    sp88->unk4077C = var_v0_6;
                                    sp88->unk4077C = (s32) var_a1_3->unk4;
                                    sp88->unk4077C = (s32) var_a1_3->unk8;
                                    sp88->unk4077C = (s32) var_a1_3->unkC;
                                    sp88->unk4077C = (s32) var_a1_3->unk10;
                                    sp88->unk4077C = (s32) var_a1_3->unk14;
                                    sp88->unk4077C = (s32) var_a1_3->unk18;
                                    var_a2_2 = var_a0_7 + 4;
                                    var_v0_5 = var_at_2;
                                    sp88->unk4077C = (s32) var_a1_3->unk1C;
                                } else {
                                    sp88->unk4077C = (s32) var_a1_3->unk0;
                                    sp88->unk4077C = (s32) var_a1_3->unk4;
                                    sp88->unk4077C = (s32) var_a1_3->unk8;
                                    sp88->unk4077C = (s32) var_a1_3->unkC;
                                    sp88->unk4077C = (s32) var_a1_3->unk10;
                                    sp88->unk4077C = (s32) var_a1_3->unk14;
                                    sp88->unk4077C = (s32) var_a1_3->unk18;
                                    sp88->unk4077C = (s32) var_a1_3->unk1C;
                                    var_a2_2 = var_a0_7 + 4;
                                    var_v0_5 -= 0x10;
                                }
                            }
                        } else {
                            var_a2_2 = 0;
                            var_v0_5 = var_v1_4;
                        }
                        var_v1_5 = (var_a2_2 * 8) + var_a5;
                        switch (var_v0_5) {         /* switch 3; irregular */
                        case 3:                     /* switch 3 */
                            temp_at = *var_v1_5;
                            var_v1_5 += 4;
                            sp88->unk4077C = temp_at;
                            /* fallthrough */
                        case 1:                     /* switch 3 */
                        case 2:                     /* switch 3 */
                            var_a7 = *var_v1_5;
                            goto block_54;
                        }
                    }
                } else {
                    var_a2_3 = 1;
                    if (var_t9 != 0) {
                        sp88->unk407A8 = 0;
                        var_t9 = 0;
                        var_a2_3 = 1;
                    }
                    if (var_v1_4 >= 1) {
                        var_a2_3 = var_v1_4;
                    }
                    temp_s2_2->unk40000 = (s32) (temp_a6_2->unk0 + var_t3);
                    var_a4 = spC - var_v1_4;
                    var_v0_7 = var_a2_3 & 3;
                    sp88->unk4077C = (s32) (sp50 - temp_a6_2->unk6);
                    sp88->unk4077C = temp_a1;
                    sp88->unk4077C = var_v1_4;
                    if (temp_a0_3 != 0) {
                        if (var_v0_7 != 0) {
                            do {
                                var_v1_4 -= 1;
                                var_a5 += 4;
                                var_v0_7 -= 1;
                                sp88->unk4077C = (s32) (var_a5->unk-2 | (var_a5->unk-4 << 0x10));
                            } while (var_v0_7 != 0);
                        }
                        temp_a2_3 = var_a2_3 >> 2;
                        var_a1_4 = var_a5;
                        if (temp_a2_3 != 0) {
                            if (temp_a2_3 >= 2) {
                                var_at_3 = var_a1_4->unk2;
                                var_v0_8 = var_v1_4 - 4;
                                var_a0_8 = var_a1_4->unk0 << 0x10;
                                do {
                                    sp88->unk4077C = (s32) (var_at_3 | var_a0_8);
                                    sp88->unk4077C = (s32) (var_a1_4->unk6 | (var_a1_4->unk4 << 0x10));
                                    sp88->unk4077C = (s32) (var_a1_4->unkA | (var_a1_4->unk8 << 0x10));
                                    var_v0_8 -= 4;
                                    sp88->unk4077C = (s32) (var_a1_4->unkE | (var_a1_4->unkC << 0x10));
                                    var_a1_4 += 0x10;
                                    var_at_3 = var_a1_4->unk2;
                                    var_a0_8 = var_a1_4->unk0 << 0x10;
                                } while (var_v0_8 != 0);
                                sp88->unk4077C = (s32) (var_at_3 | var_a0_8);
                                sp88->unk4077C = (s32) (var_a1_4->unk6 | (var_a1_4->unk4 << 0x10));
                                sp88->unk4077C = (s32) (var_a1_4->unkA | (var_a1_4->unk8 << 0x10));
                                var_a7 = var_a1_4->unkE | (var_a1_4->unkC << 0x10);
block_54:
                                sp88->unk4077C = var_a7;
                            } else {
                                sp88->unk4077C = (s32) (var_a1_4->unk2 | (var_a1_4->unk0 << 0x10));
                                sp88->unk4077C = (s32) (var_a1_4->unk6 | (var_a1_4->unk4 << 0x10));
                                sp88->unk4077C = (s32) (var_a1_4->unkA | (var_a1_4->unk8 << 0x10));
                                sp88->unk4077C = (s32) (var_a1_4->unkE | (var_a1_4->unkC << 0x10));
                            }
                        }
                    } else {
                        var_v0_9 = var_a2_3 & 3;
                        if (var_v0_9 != 0) {
                            do {
                                var_v1_4 -= 1;
                                var_a5 += 4;
                                var_v0_9 -= 1;
                                sp88->unk4077C = (s32) var_a5->unk-4;
                            } while (var_v0_9 != 0);
                        }
                        temp_a2_4 = var_a2_3 >> 2;
                        var_v0_10 = var_a5;
                        if (temp_a2_4 != 0) {
                            var_a0_9 = var_v1_4 - 4;
                            if (temp_a2_4 >= 2) {
                                var_at_4 = var_v0_10->unk0;
                                do {
                                    sp88->unk4077C = var_at_4;
                                    sp88->unk4077C = (s32) var_v0_10->unk4;
                                    sp88->unk4077C = (s32) var_v0_10->unk8;
                                    temp_at_2 = var_v0_10->unkC;
                                    var_a0_9 -= 4;
                                    var_v0_10 += 0x10;
                                    sp88->unk4077C = temp_at_2;
                                    var_at_4 = var_v0_10->unk0;
                                } while (var_a0_9 != 0);
                                sp88->unk4077C = var_at_4;
                                sp88->unk4077C = (s32) var_v0_10->unk4;
                                sp88->unk4077C = (s32) var_v0_10->unk8;
                                sp88->unk4077C = (s32) var_v0_10->unkC;
                            } else {
                                sp88->unk4077C = (s32) var_v0_10->unk0;
                                sp88->unk4077C = (s32) var_v0_10->unk4;
                                sp88->unk4077C = (s32) var_v0_10->unk8;
                                sp88->unk4077C = (s32) var_v0_10->unkC;
                            }
                        }
                    }
                }
                var_v1_6 = var_a4 & 3;
                var_v0 = 0;
                if (var_a4 > 0) {
                    var_a1_5 = var_a4 >> 2;
                    if (var_v1_6 != 0) {
                        do {
                            var_v0 += 1;
                            var_v1_6 -= 1;
                            sp88->unk4077C = 0;
                        } while (var_v1_6 != 0);
                        var_a1_5 = var_a4 >> 2;
                    }
                    if (var_a1_5 != 0) {
                        var_a0_10 = var_v0 + 4;
                        if (var_a1_5 >= 2) {
                            var_v0 = var_a4 - 8;
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
loop_62:
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
                            if (var_a0_10 != (var_a4 - 4)) {
                                sp88->unk4077C = 0;
                                sp88->unk4077C = 0;
                                sp88->unk4077C = 0;
                                sp88->unk4077C = 0;
                                if (var_a0_10 != var_v0) {
                                    sp88->unk4077C = 0;
                                    sp88->unk4077C = 0;
                                    sp88->unk4077C = 0;
                                    sp88->unk4077C = 0;
                                    if (var_a0_10 != (var_a4 - 0xC)) {
                                        sp88->unk4077C = 0;
                                        sp88->unk4077C = 0;
                                        sp88->unk4077C = 0;
                                        var_a0_10 += 0x10;
                                        sp88->unk4077C = 0;
                                        if (var_a0_10 != var_a4) {
                                            goto loop_62;
                                        }
                                    }
                                }
                            }
                            sp88->unk4077C = 0;
                        } else {
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
                            sp88->unk4077C = 0;
                        }
                        sp88->unk4077C = 0;
                    }
                }
                var_t8 += 4;
                var_t3 += temp_a6_2->unk4;
                if (var_t8 != ((arg4 * 4) + sp98)) {
                    goto loop_69;
                }
                if (sp8 != 0) {
                    sp88->unk407A8 = 0;
                }
            }
            break;
        case 2:                                     /* switch 1 */
            var_v0 = nfbImageGlyphBlt(arg0, arg1, arg2, arg3, arg4, sp98, sp78, 1);
            break;
        }
        return var_v0;
    }
    return temp_v0;
}
