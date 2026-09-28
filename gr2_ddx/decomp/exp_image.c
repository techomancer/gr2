s32 ErrorF(void *);                                 /* extern */
void *FindWindowWithOptional(void *);               /* extern */
s64 Xalloc(s32, s32, u16);                          /* extern */
? Xfree(s64);                                       /* extern */
s32 ioctl(s32, ?, s32 *, ?, s32, s64, s64, s32, s32); /* extern */
? memmove(s64, s64, s32);                           /* extern */
? printf(void *);                                   /* extern */
extern ? PixmapWidthPaddingInfo;
extern s32 dbcWindowPrivateIndex;
extern s32 expScreenPrivateIndex;
extern ? local_0x5f0a0000;
extern s32 nfbWindowPrivateIndex;

s32 expDrawImage(void *arg0, s32 arg1, u32 arg2, s32 arg3, s32 arg4, void *arg5) {
    s64 sp68;
    u64 sp60;
    s64 sp58;
    s32 sp34;
    s32 sp30;
    u32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    u32 sp18;
    s16 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s16 temp_a2_2;
    s16 temp_t8;
    s16 var_s1_3;
    s16 var_s2;
    s16 var_s6_2;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_lo;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_t0_2;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v0;
    s32 var_a0_2;
    s32 var_a0_4;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_at;
    s32 var_at_2;
    s32 var_s1_2;
    s32 var_s3;
    s32 var_s4;
    s32 var_s4_3;
    s32 var_s5;
    s32 var_s6;
    s32 var_s8;
    s32 var_t0;
    s32 var_t3;
    s32 var_t8;
    s32 var_t8_2;
    s32 var_t9;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_4;
    s32 var_v1;
    s32 var_v1_2;
    u32 temp_ra;
    void *temp_t0;
    void *temp_t3;
    void *var_a0;
    void *var_a0_3;
    void *var_a4_2;
    void *var_a4_3;
    void *var_s1;
    void *var_s4_2;
    void *var_v0_3;
    void *var_v0_5;

    var_v0 = 0;
    temp_s1 = arg5->unk84;
    temp_t0 = **(arg5->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    temp_s1_2 = (*(temp_s1 + (nfbWindowPrivateIndex * 4)))->unk14;
    if (temp_s1_2 != 0xD) {
        if (temp_s1_2 != 0xE) {
            if (temp_s1_2 == 0xC) {
                var_t9 = 1;
                var_t8 = 0;
                temp_t0->unk4052C = 0x1008;
                temp_t0->unk404D4 = (s32) (arg4 & 0xF);
            } else {
                temp_t0->unk4052C = (s32) (temp_s1_2 | 0x1000);
                temp_t0->unk404D4 = 0;
                var_t8 = arg4;
                var_t9 = ((dbcWindowPrivateIndex * 4) + temp_s1)->unk1 * 8;
            }
        } else {
            var_t9 = 9;
            var_t8 = 0;
            temp_t0->unk4052C = 0x100B;
            temp_t0->unk404D4 = (s32) (arg4 & 0xC);
        }
    } else {
        var_t9 = 1;
        var_t8 = 0;
        temp_t0->unk4052C = 0x100B;
        temp_t0->unk404D4 = (s32) (arg4 & 3);
    }
    temp_ra = arg2 >> 2;
    temp_s7 = arg1 & 3;
    temp_t0->unk40530 = 0;
    temp_t0->unk4077C = (s32) (var_t8 & 0xFFFFFF);
    temp_t0->unk4077C = arg3;
    temp_t0->unk4077C = var_t9;
    temp_t0->unk40544 = 2;
    temp_t0->unk4077C = temp_s7;
    temp_t3 = arg1 - temp_s7;
    var_s1 = temp_t3;
    sp4 = (s32) arg0->unk0;
    sp1C = 1;
    sp14 = 5;
    temp_at = arg0->unk4 - arg0->unk0;
    temp_s5 = temp_at + temp_s7 + 3;
    temp_a5 = temp_s5 >> 2;
    sp8 = temp_at;
    temp_s6 = temp_ra - temp_a5;
    var_a4 = temp_s6;
    var_s4 = arg0->unk6 - arg0->unk2;
    if (temp_s6 < 0) {
        var_a4 = 0;
    }
    temp_a2 = temp_s5 & ~3;
    temp_lo = temp_a2 * var_s4;
    if (var_a4 != 0) {
        temp_a4 = temp_ra * 4;
        var_v0 = temp_s6;
        sp18 = temp_ra;
        M2C_TRAP_IF(temp_a4 == 0);
        var_s8 = temp_a4;
        var_s5 = 0x20000 / temp_a4;
        sp14 = 7;
        if (var_s5 >= 0x45) {
            var_s5 = 0x44;
        }
        var_s6 = var_s5 * temp_a4;
        sp60 = ((var_s4 - 1) * temp_a4) + temp_a2 + temp_t3;
    } else {
        var_s5 = 0x20000 / temp_a2;
        sp18 = 0;
        M2C_TRAP_IF(temp_a2 == 0);
        var_s8 = temp_a2;
        var_s6 = temp_a2 * var_s5;
        sp60 = (u64) (temp_t3 + temp_lo);
    }
    temp_a2_2 = arg0->unk2;
    if (temp_lo < 0x4E20) {
        var_a4_2 = temp_t3;
        var_s6_2 = temp_a2_2;
        var_s1_2 = 0x10 / temp_a5;
        M2C_TRAP_IF(temp_a5 == 0);
        if (var_s1_2 > 0) {
            if (temp_a5 >= 0) {
                sp34 = 0x10;
                sp30 = 0x156;
            } else if ((temp_a5 * var_s4) < 0x21) {
                M2C_TRAP_IF(temp_a5 == 0);
                sp34 = 8;
                var_s1_2 = 8 / temp_a5;
                sp30 = 0x157;
            }
            if (var_s4 != 0) {
                temp_t9 = var_v0 * 4;
loop_30:
                var_t8_2 = var_s1_2;
                if (var_s4 < var_s1_2) {
                    var_t8_2 = var_s4;
                }
                ((sp30 * 4) + temp_t0)->unk40000 = sp4;
                temp_t0->unk4077C = (s32) var_s6_2;
                var_a3 = 0;
                temp_t0->unk4077C = sp8;
                temp_t0->unk4077C = var_t8_2;
                temp_t0->unk4077C = temp_a5;
                temp_t0->unk4077C = 2;
                temp_t0->unk4077C = temp_s7;
                if (var_t8_2 > 0) {
loop_43:
                    var_a0 = var_a4_2;
                    if (temp_a5 > 0) {
                        var_v0_2 = temp_a5 & 3;
                        var_t0 = temp_a5 >> 2;
                        if (var_v0_2 != 0) {
                            do {
                                var_a0 += 4;
                                var_v0_2 -= 1;
                                temp_t0->unk4077C = (s32) var_a0->unk-4;
                            } while (var_v0_2 != 0);
                            var_t0 = temp_a5 >> 2;
                        }
                        var_v0_3 = var_a0;
                        if (var_t0 != 0) {
                            if (var_t0 >= 2) {
                                var_at = var_v0_3->unk0;
                                do {
                                    temp_t0->unk4077C = var_at;
                                    temp_t0->unk4077C = (s32) var_v0_3->unk4;
                                    temp_t0->unk4077C = (s32) var_v0_3->unk8;
                                    temp_at_2 = var_v0_3->unkC;
                                    var_v0_3 += 0x10;
                                    temp_t0->unk4077C = temp_at_2;
                                    var_at = var_v0_3->unk0;
                                } while (var_v0_3 != (((temp_a5 * 4) + var_a4_2) - 0x10));
                                temp_t0->unk4077C = var_at;
                                temp_t0->unk4077C = (s32) var_v0_3->unk4;
                                temp_t0->unk4077C = (s32) var_v0_3->unk8;
                                temp_t0->unk4077C = (s32) var_v0_3->unkC;
                            } else {
                                temp_t0->unk4077C = (s32) var_v0_3->unk0;
                                temp_t0->unk4077C = (s32) var_v0_3->unk4;
                                temp_t0->unk4077C = (s32) var_v0_3->unk8;
                                temp_t0->unk4077C = (s32) var_v0_3->unkC;
                            }
                        }
                        var_v0 = temp_a5;
                    } else {
                        var_v0 = 0;
                    }
                    var_a3 += 1;
                    var_a4_2 = (var_v0 * 4) + var_a4_2 + temp_t9;
                    if (var_t8_2 != var_a3) {
                        goto loop_43;
                    }
                }
                var_s6_2 += var_t8_2;
                var_s4 -= var_t8_2;
                temp_a3 = sp34 - (var_t8_2 * temp_a5);
                if (temp_a3 > 0) {
                    var_a0_2 = temp_a3 & 3;
                    var_v0 = 0;
                    if (var_a0_2 != 0) {
                        do {
                            var_v0 += 1;
                            var_a0_2 -= 1;
                            temp_t0->unk4077C = -0x21524111;
                        } while (var_a0_2 != 0);
                    }
                    temp_a0 = temp_a3 >> 2;
                    if (temp_a0 != 0) {
                        var_v1 = var_v0 + 4;
                        if (temp_a0 >= 2) {
                            var_v0 = temp_a3 - 8;
                            temp_t0->unk4077C = -0x21524111;
                            temp_t0->unk4077C = -0x21524111;
loop_23:
                            temp_t0->unk4077C = -0x21524111;
                            temp_t0->unk4077C = -0x21524111;
                            temp_t0->unk4077C = -0x21524111;
                            temp_t0->unk4077C = -0x21524111;
                            if (var_v1 != (temp_a3 - 4)) {
                                temp_t0->unk4077C = -0x21524111;
                                temp_t0->unk4077C = -0x21524111;
                                temp_t0->unk4077C = -0x21524111;
                                temp_t0->unk4077C = -0x21524111;
                                if (var_v1 != var_v0) {
                                    temp_t0->unk4077C = -0x21524111;
                                    temp_t0->unk4077C = -0x21524111;
                                    temp_t0->unk4077C = -0x21524111;
                                    temp_t0->unk4077C = -0x21524111;
                                    if (var_v1 != (temp_a3 - 0xC)) {
                                        temp_t0->unk4077C = -0x21524111;
                                        temp_t0->unk4077C = -0x21524111;
                                        temp_t0->unk4077C = -0x21524111;
                                        var_v1 += 0x10;
                                        temp_t0->unk4077C = -0x21524111;
                                        if (var_v1 != temp_a3) {
                                            goto loop_23;
                                        }
                                    }
                                }
                            }
                            temp_t0->unk4077C = -0x21524111;
                        } else {
                            temp_t0->unk4077C = -0x21524111;
                            temp_t0->unk4077C = -0x21524111;
                            temp_t0->unk4077C = -0x21524111;
                        }
                        temp_t0->unk4077C = -0x21524111;
                    }
                }
                if (var_s4 != 0) {
                    goto loop_30;
                }
            }
            temp_t0->unk407A8 = 0;
        } else {
            temp_t8 = arg0->unk4;
            if ((u32) temp_t3 < sp60) {
                var_s1_3 = var_s6_2;
                var_s4_2 = temp_t3;
                temp_t9_2 = var_v0 * 4;
                sp58 = 0x40 - temp_s7;
loop_71:
                var_v0 = (s32) var_a4_2;
                temp_t0->unk40558 = sp4;
                temp_t0->unk4077C = (s32) var_s1_3;
                temp_t0->unk4077C = (s32) sp58;
                temp_t0->unk4077C = 1;
                temp_t0->unk4077C = 0x10;
                temp_t0->unk4077C = 2;
                temp_t0->unk4077C = temp_s7;
                temp_t0->unk4077C = (s32) var_v0->unk0;
                temp_t0->unk4077C = (s32) var_v0->unk4;
                temp_t0->unk4077C = (s32) var_v0->unk8;
                temp_t0->unk4077C = (s32) var_v0->unkC;
                temp_t0->unk4077C = (s32) var_v0->unk10;
                temp_t0->unk4077C = (s32) var_v0->unk14;
                temp_t0->unk4077C = (s32) var_v0->unk18;
                temp_t0->unk4077C = (s32) var_v0->unk1C;
                temp_t0->unk4077C = (s32) var_v0->unk20;
                temp_t0->unk4077C = (s32) var_v0->unk24;
                temp_t0->unk4077C = (s32) var_v0->unk28;
                temp_t0->unk4077C = (s32) var_v0->unk2C;
                temp_t0->unk4077C = (s32) var_v0->unk30;
                temp_t0->unk4077C = (s32) var_v0->unk34;
                temp_t0->unk4077C = (s32) var_v0->unk38;
                var_a4_3 = var_a4_2 + 0x40;
                var_a5 = (sp4 - temp_s7) + 0x40;
                temp_t0->unk4077C = (s32) var_v0->unk3C;
                if (var_a5 < temp_t8) {
                    var_a3_2 = 0;
loop_98:
                    var_t3 = 0x40;
                    if ((var_a5 + 0x40) < temp_t8) {
                        var_a1 = 0x10;
                    } else {
                        var_t3 = temp_t8 - var_a5;
                        var_a1 = (s32) (var_t3 + 3) >> 2;
                        var_a3_2 = 0x10 - var_a1;
                    }
                    temp_t0->unk40558 = var_a5;
                    var_a5 += var_t3;
                    var_v0_4 = var_a1 & 3;
                    temp_t0->unk4077C = (s32) var_s1_3;
                    temp_t0->unk4077C = var_t3;
                    temp_t0->unk4077C = 1;
                    temp_t0->unk4077C = var_a1;
                    temp_t0->unk4077C = 2;
                    temp_t0->unk4077C = 0;
                    if (var_a1 > 0) {
                        var_a0_3 = var_a4_3;
                        if (var_v0_4 != 0) {
                            do {
                                var_a0_3 += 4;
                                var_v0_4 -= 1;
                                temp_t0->unk4077C = (s32) var_a0_3->unk-4;
                            } while (var_v0_4 != 0);
                        }
                        temp_t0_2 = var_a1 >> 2;
                        var_v0_5 = var_a0_3;
                        if (temp_t0_2 != 0) {
                            if (temp_t0_2 >= 2) {
                                var_at_2 = var_v0_5->unk0;
                                do {
                                    temp_t0->unk4077C = var_at_2;
                                    temp_t0->unk4077C = (s32) var_v0_5->unk4;
                                    temp_t0->unk4077C = (s32) var_v0_5->unk8;
                                    temp_at_3 = var_v0_5->unkC;
                                    var_v0_5 += 0x10;
                                    temp_t0->unk4077C = temp_at_3;
                                    var_at_2 = var_v0_5->unk0;
                                } while (var_v0_5 != ((var_a4_3 + (var_a1 * 4)) - 0x10));
                                temp_t0->unk4077C = var_at_2;
                                temp_t0->unk4077C = (s32) var_v0_5->unk4;
                                temp_t0->unk4077C = (s32) var_v0_5->unk8;
                                var_a6 = var_v0_5->unkC;
                            } else {
                                temp_t0->unk4077C = (s32) var_v0_5->unk0;
                                temp_t0->unk4077C = (s32) var_v0_5->unk4;
                                temp_t0->unk4077C = (s32) var_v0_5->unk8;
                                var_a6 = var_v0_5->unkC;
                            }
                            temp_t0->unk4077C = var_a6;
                        }
                        var_v0 = var_a1;
                    } else {
                        var_v0 = 0;
                    }
                    var_a0_4 = var_a3_2 & 3;
                    var_a4_3 += var_v0 * 4;
                    if (var_a3_2 > 0) {
                        var_v0 = 0;
                        var_a2 = var_a3_2 >> 2;
                        if (var_a0_4 != 0) {
                            do {
                                var_v0 += 1;
                                var_a0_4 -= 1;
                                temp_t0->unk4077C = -0x21524111;
                            } while (var_a0_4 != 0);
                            var_a2 = var_a3_2 >> 2;
                        }
                        if (var_a2 != 0) {
                            var_v1_2 = var_v0 + 4;
                            if (var_a2 >= 2) {
                                var_v0 = var_a3_2 - 8;
                                temp_t0->unk4077C = -0x21524111;
                                temp_t0->unk4077C = -0x21524111;
loop_91:
                                temp_t0->unk4077C = -0x21524111;
                                temp_t0->unk4077C = -0x21524111;
                                temp_t0->unk4077C = -0x21524111;
                                temp_t0->unk4077C = -0x21524111;
                                if (var_v1_2 != (var_a3_2 - 4)) {
                                    temp_t0->unk4077C = -0x21524111;
                                    temp_t0->unk4077C = -0x21524111;
                                    temp_t0->unk4077C = -0x21524111;
                                    temp_t0->unk4077C = -0x21524111;
                                    if (var_v1_2 != var_v0) {
                                        temp_t0->unk4077C = -0x21524111;
                                        temp_t0->unk4077C = -0x21524111;
                                        temp_t0->unk4077C = -0x21524111;
                                        temp_t0->unk4077C = -0x21524111;
                                        if (var_v1_2 != (var_a3_2 - 0xC)) {
                                            temp_t0->unk4077C = -0x21524111;
                                            temp_t0->unk4077C = -0x21524111;
                                            temp_t0->unk4077C = -0x21524111;
                                            var_v1_2 += 0x10;
                                            temp_t0->unk4077C = -0x21524111;
                                            if (var_v1_2 != var_a3_2) {
                                                goto loop_91;
                                            }
                                        }
                                    }
                                }
                                temp_t0->unk4077C = -0x21524111;
                            } else {
                                temp_t0->unk4077C = -0x21524111;
                                temp_t0->unk4077C = -0x21524111;
                                temp_t0->unk4077C = -0x21524111;
                            }
                            temp_t0->unk4077C = -0x21524111;
                        }
                    }
                    var_a3_2 = 0;
                    if (var_a5 < temp_t8) {
                        goto loop_98;
                    }
                }
                var_s4_2 += var_s8;
                var_s1_3 += 1;
                var_a4_2 = var_a4_3 + temp_t9_2;
                if ((u32) var_s4_2 < sp60) {
                    goto loop_71;
                }
            }
            temp_t0->unk407A8 = 0;
        }
        return var_v0;
    }
    var_s2 = temp_a2_2;
    sp24 = temp_a5;
    if ((u32) temp_t3 < sp60) {
        sp68 = (s64) var_s4;
loop_54:
        var_s3 = var_s6;
        temp_v0 = sp60 - var_s1;
        if (var_s6 >= temp_v0) {
            var_s3 = temp_v0;
        }
        var_s4_3 = var_s5;
        if (var_s5 < sp68) {

        } else {
            var_s4_3 = (s32) sp68;
        }
        sp28 = (u32) var_s1;
        sp20 = var_s3;
        sp10 = var_s4_3;
        spC = (s32) var_s2;
        var_v0 = ioctl(arg5->unk10->unk74->unk64, 0x3AA2, sp, 0);
        var_s1 += var_s3;
        if (var_v0 < 0) {
            var_v0 = ErrorF(&local_0x5f0a0000 - 0xDA0);
        }
        var_s2 += var_s4_3;
        sp68 -= var_s4_3;
        if ((u32) var_s1 < sp60) {
            goto loop_54;
        }
    }
    return var_v0;
}

void *expDrawImage12(void *arg0, s32 arg1, u32 arg2, s32 arg3, s32 arg4, void *arg5) {
    s64 sp50;
    u64 sp48;
    s64 sp40;
    u32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    u32 sp18;
    s16 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s16 temp_t3_2;
    s16 temp_t8_3;
    s16 var_s1_2;
    s16 var_s1_3;
    s16 var_s5_2;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_ra;
    s32 temp_s7;
    s32 temp_t0_2;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t9;
    s32 temp_t9_3;
    s32 temp_t9_4;
    s32 temp_v0;
    s32 var_a0_2;
    s32 var_a0_4;
    s32 var_a1;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_at;
    s32 var_at_2;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s3_3;
    s32 var_s4;
    s32 var_s5;
    s32 var_t0;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_t8;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v1;
    s32 var_v1_2;
    u32 temp_t9_2;
    void *temp_t0;
    void *temp_t2;
    void *var_a0;
    void *var_a0_3;
    void *var_a4_2;
    void *var_a4_3;
    void *var_s0;
    void *var_s3_2;
    void *var_v0_3;
    void *var_v0_6;

    var_v0 = 0;
    temp_t9 = arg5->unk84;
    temp_t8 = (*(temp_t9 + (nfbWindowPrivateIndex * 4)))->unk14;
    temp_t2 = **(arg5->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    switch (temp_t8) {                              /* irregular */
    default:
        temp_t2->unk4052C = (s32) (temp_t8 | 0x1000);
        temp_t2->unk404D4 = 0;
        var_s1 = arg4;
        var_t3 = ((dbcWindowPrivateIndex * 4) + temp_t9)->unk1 * 8;
        break;
    case 13:
        var_t3 = 1;
        var_s1 = 0;
        temp_t2->unk4052C = 0x100B;
        temp_t2->unk404D4 = (s32) (arg4 & 3);
        break;
    case 12:
        var_t3 = 1;
        var_s1 = 0;
        temp_t2->unk4052C = 0x1008;
        temp_t2->unk404D4 = (s32) (arg4 & 0xF);
        break;
    case 14:
        var_t3 = 9;
        var_s1 = 0;
        temp_t2->unk4052C = 0x100B;
        temp_t2->unk404D4 = (s32) (arg4 & 0xC);
        break;
    }
    temp_t9_2 = arg2 >> 2;
    temp_t1 = arg1 & 2;
    temp_t2->unk40530 = 0;
    temp_t2->unk4077C = (s32) (var_s1 & 0xFFFFFF);
    temp_t2->unk4077C = arg3;
    temp_t2->unk4077C = var_t3;
    temp_t2->unk40544 = 1;
    temp_t2->unk4077C = temp_t1;
    sp0 = 0x147;
    temp_s7 = temp_t1 >> 1;
    temp_t0 = arg1 - (temp_s7 * 2);
    sp4 = (s32) arg0->unk0;
    var_s0 = temp_t0;
    sp1C = 1;
    sp14 = 5;
    temp_at = arg0->unk4 - arg0->unk0;
    temp_t8_2 = temp_at + temp_s7 + 1;
    temp_a5 = temp_t8_2 >> 1;
    sp8 = temp_at;
    temp_ra = temp_t9_2 - temp_a5;
    var_a4 = temp_ra;
    var_s3 = arg0->unk6 - arg0->unk2;
    if (temp_ra < 0) {
        var_a4 = 0;
    }
    temp_t3 = temp_t8_2 & ~1;
    temp_lo = temp_t3 * var_s3;
    if (var_a4 != 0) {
        temp_a4 = temp_t9_2 * 2;
        sp18 = temp_t9_2;
        var_v0 = temp_ra;
        M2C_TRAP_IF(temp_a4 == 0);
        var_a2 = temp_a4;
        var_s4 = 0x10000 / temp_a4;
        sp14 = 7;
        if (var_s4 >= 0x45) {
            var_s4 = 0x44;
        }
        var_s5 = var_s4 * temp_a4;
        sp48 = ((((var_s3 - 1) * temp_a4) + temp_t3) * 2) + temp_t0;
    } else {
        var_s4 = 0x10000 / temp_t3;
        sp18 = 0;
        M2C_TRAP_IF(temp_t3 == 0);
        sp48 = (u64) ((temp_lo * 2) + temp_t0);
        var_s5 = temp_t3 * var_s4;
        var_a2 = temp_t3;
    }
    temp_t3_2 = arg0->unk2;
    if (temp_lo < 0x2710) {
        temp_lo_2 = 0x10 / temp_a5;
        var_a4_2 = temp_t0;
        var_s5_2 = temp_t3_2;
        M2C_TRAP_IF(temp_a5 == 0);
        if (temp_lo_2 > 0) {
            if (var_s3 != 0) {
                temp_t9_3 = var_v0 * 4;
loop_26:
                var_t8 = temp_lo_2;
                if (var_s3 < temp_lo_2) {
                    var_t8 = var_s3;
                }
                temp_t2->unk40558 = sp4;
                temp_t2->unk4077C = (s32) var_s5_2;
                var_s3 -= var_t8;
                var_a3 = 0;
                temp_t2->unk4077C = sp8;
                temp_t2->unk4077C = var_t8;
                temp_t2->unk4077C = temp_a5;
                temp_t2->unk4077C = 1;
                temp_t2->unk4077C = (s32) (-2 & temp_t1);
                if (var_t8 > 0) {
loop_39:
                    var_a0 = var_a4_2;
                    if (temp_a5 > 0) {
                        var_v0_2 = temp_a5 & 3;
                        var_t0 = temp_a5 >> 2;
                        if (var_v0_2 != 0) {
                            do {
                                var_a0 += 4;
                                var_v0_2 -= 1;
                                temp_t2->unk4077C = (s32) var_a0->unk-4;
                            } while (var_v0_2 != 0);
                            var_t0 = temp_a5 >> 2;
                        }
                        var_v0_3 = var_a0;
                        if (var_t0 != 0) {
                            if (var_t0 >= 2) {
                                var_at = var_v0_3->unk0;
                                do {
                                    temp_t2->unk4077C = var_at;
                                    temp_t2->unk4077C = (s32) var_v0_3->unk4;
                                    temp_t2->unk4077C = (s32) var_v0_3->unk8;
                                    temp_at_2 = var_v0_3->unkC;
                                    var_v0_3 += 0x10;
                                    temp_t2->unk4077C = temp_at_2;
                                    var_at = var_v0_3->unk0;
                                } while (var_v0_3 != (((temp_a5 * 4) + var_a4_2) - 0x10));
                                temp_t2->unk4077C = var_at;
                                temp_t2->unk4077C = (s32) var_v0_3->unk4;
                                temp_t2->unk4077C = (s32) var_v0_3->unk8;
                                temp_t2->unk4077C = (s32) var_v0_3->unkC;
                            } else {
                                temp_t2->unk4077C = (s32) var_v0_3->unk0;
                                temp_t2->unk4077C = (s32) var_v0_3->unk4;
                                temp_t2->unk4077C = (s32) var_v0_3->unk8;
                                temp_t2->unk4077C = (s32) var_v0_3->unkC;
                            }
                        }
                        var_v0_4 = temp_a5;
                    } else {
                        var_v0_4 = 0;
                    }
                    var_a3 += 1;
                    var_a4_2 = (var_v0_4 * 4) + var_a4_2 + temp_t9_3;
                    if (var_t8 != var_a3) {
                        goto loop_39;
                    }
                }
                temp_lo_3 = var_t8 * temp_a5;
                var_s5_2 += var_t8;
                var_v0 = 0;
                if (temp_lo_3 < 0x10) {
                    temp_a3 = 0x10 - temp_lo_3;
                    var_a0_2 = temp_a3 & 3;
                    if (var_a0_2 != 0) {
                        do {
                            var_v0 += 1;
                            var_a0_2 -= 1;
                            temp_t2->unk4077C = -0x21524111;
                        } while (var_a0_2 != 0);
                    }
                    temp_a1 = temp_a3 >> 2;
                    temp_a0 = var_v0;
                    if (temp_a1 != 0) {
                        if (temp_a1 >= 2) {
                            var_v0 = temp_a3 - 8;
                            var_v1 = temp_a0 + 4;
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
loop_19:
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
                            if (var_v1 != (temp_a3 - 4)) {
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                if (var_v1 != var_v0) {
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    if (var_v1 != (temp_a3 - 0xC)) {
                                        temp_t2->unk4077C = -0x21524111;
                                        temp_t2->unk4077C = -0x21524111;
                                        temp_t2->unk4077C = -0x21524111;
                                        var_v1 += 0x10;
                                        temp_t2->unk4077C = -0x21524111;
                                        if (var_v1 != temp_a3) {
                                            goto loop_19;
                                        }
                                    }
                                }
                            }
                            temp_t2->unk4077C = -0x21524111;
                        } else {
                            var_v0 = temp_a0;
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
                        }
                        temp_t2->unk4077C = -0x21524111;
                    }
                }
                if (var_s3 != 0) {
                    goto loop_26;
                }
            }
            temp_t2->unk407A8 = 0;
        } else {
            temp_t8_3 = arg0->unk4;
            if ((u32) temp_t0 < sp48) {
                var_s1_2 = var_s5_2;
                var_s3_2 = temp_t0;
                temp_t9_4 = var_v0 * 4;
                sp40 = var_a2 * 2;
loop_66:
                var_v0 = (s32) var_a4_2;
                temp_t2->unk40558 = sp4;
                temp_t2->unk4077C = (s32) var_s1_2;
                temp_t2->unk4077C = (s32) (0x20 - temp_s7);
                temp_t2->unk4077C = 1;
                temp_t2->unk4077C = 0x10;
                temp_t2->unk4077C = 1;
                temp_t2->unk4077C = (s32) (-2 & temp_t1);
                temp_t2->unk4077C = (s32) var_v0->unk0;
                temp_t2->unk4077C = (s32) var_v0->unk4;
                temp_t2->unk4077C = (s32) var_v0->unk8;
                temp_t2->unk4077C = (s32) var_v0->unkC;
                temp_t2->unk4077C = (s32) var_v0->unk10;
                temp_t2->unk4077C = (s32) var_v0->unk14;
                temp_t2->unk4077C = (s32) var_v0->unk18;
                temp_t2->unk4077C = (s32) var_v0->unk1C;
                temp_t2->unk4077C = (s32) var_v0->unk20;
                temp_t2->unk4077C = (s32) var_v0->unk24;
                temp_t2->unk4077C = (s32) var_v0->unk28;
                temp_t2->unk4077C = (s32) var_v0->unk2C;
                temp_t2->unk4077C = (s32) var_v0->unk30;
                temp_t2->unk4077C = (s32) var_v0->unk34;
                temp_t2->unk4077C = (s32) var_v0->unk38;
                var_a4_3 = var_a4_2 + 0x40;
                var_a5 = (sp4 - temp_s7) + 0x20;
                temp_t2->unk4077C = (s32) var_v0->unk3C;
                if (var_a5 < temp_t8_3) {
                    var_a3_2 = 0;
loop_93:
                    var_t3_2 = 0x20;
                    if ((var_a5 + 0x20) < temp_t8_3) {
                        var_a1 = 0x10;
                    } else {
                        var_t3_2 = temp_t8_3 - var_a5;
                        var_a1 = (s32) (var_t3_2 + 1) >> 1;
                        var_a3_2 = 0x10 - var_a1;
                    }
                    temp_t2->unk40558 = var_a5;
                    var_a5 += var_t3_2;
                    var_v0_5 = var_a1 & 3;
                    temp_t2->unk4077C = (s32) var_s1_2;
                    temp_t2->unk4077C = var_t3_2;
                    temp_t2->unk4077C = 1;
                    temp_t2->unk4077C = var_a1;
                    temp_t2->unk4077C = 1;
                    temp_t2->unk4077C = 0;
                    if (var_a1 > 0) {
                        var_a0_3 = var_a4_3;
                        if (var_v0_5 != 0) {
                            do {
                                var_a0_3 += 4;
                                var_v0_5 -= 1;
                                temp_t2->unk4077C = (s32) var_a0_3->unk-4;
                            } while (var_v0_5 != 0);
                        }
                        temp_t0_2 = var_a1 >> 2;
                        var_v0_6 = var_a0_3;
                        if (temp_t0_2 != 0) {
                            if (temp_t0_2 >= 2) {
                                var_at_2 = var_v0_6->unk0;
                                do {
                                    temp_t2->unk4077C = var_at_2;
                                    temp_t2->unk4077C = (s32) var_v0_6->unk4;
                                    temp_t2->unk4077C = (s32) var_v0_6->unk8;
                                    temp_at_3 = var_v0_6->unkC;
                                    var_v0_6 += 0x10;
                                    temp_t2->unk4077C = temp_at_3;
                                    var_at_2 = var_v0_6->unk0;
                                } while (var_v0_6 != ((var_a4_3 + (var_a1 * 4)) - 0x10));
                                temp_t2->unk4077C = var_at_2;
                                temp_t2->unk4077C = (s32) var_v0_6->unk4;
                                temp_t2->unk4077C = (s32) var_v0_6->unk8;
                                var_a6 = var_v0_6->unkC;
                            } else {
                                temp_t2->unk4077C = (s32) var_v0_6->unk0;
                                temp_t2->unk4077C = (s32) var_v0_6->unk4;
                                temp_t2->unk4077C = (s32) var_v0_6->unk8;
                                var_a6 = var_v0_6->unkC;
                            }
                            temp_t2->unk4077C = var_a6;
                        }
                        var_v0 = var_a1;
                    } else {
                        var_v0 = 0;
                    }
                    var_a0_4 = var_a3_2 & 3;
                    var_a4_3 += var_v0 * 4;
                    if (var_a3_2 > 0) {
                        var_v0 = 0;
                        var_a2_2 = var_a3_2 >> 2;
                        if (var_a0_4 != 0) {
                            do {
                                var_v0 += 1;
                                var_a0_4 -= 1;
                                temp_t2->unk4077C = -0x21524111;
                            } while (var_a0_4 != 0);
                            var_a2_2 = var_a3_2 >> 2;
                        }
                        if (var_a2_2 != 0) {
                            var_v1_2 = var_v0 + 4;
                            if (var_a2_2 >= 2) {
                                var_v0 = var_a3_2 - 8;
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
loop_86:
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                if (var_v1_2 != (var_a3_2 - 4)) {
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    if (var_v1_2 != var_v0) {
                                        temp_t2->unk4077C = -0x21524111;
                                        temp_t2->unk4077C = -0x21524111;
                                        temp_t2->unk4077C = -0x21524111;
                                        temp_t2->unk4077C = -0x21524111;
                                        if (var_v1_2 != (var_a3_2 - 0xC)) {
                                            temp_t2->unk4077C = -0x21524111;
                                            temp_t2->unk4077C = -0x21524111;
                                            temp_t2->unk4077C = -0x21524111;
                                            var_v1_2 += 0x10;
                                            temp_t2->unk4077C = -0x21524111;
                                            if (var_v1_2 != var_a3_2) {
                                                goto loop_86;
                                            }
                                        }
                                    }
                                }
                                temp_t2->unk4077C = -0x21524111;
                            } else {
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                            }
                            temp_t2->unk4077C = -0x21524111;
                        }
                    }
                    var_a3_2 = 0;
                    if (var_a5 < temp_t8_3) {
                        goto loop_93;
                    }
                }
                var_s1_2 += 1;
                var_s3_2 += sp40;
                var_a4_2 = var_a4_3 + temp_t9_4;
                if ((u32) var_s3_2 < sp48) {
                    goto loop_66;
                }
            }
            temp_t2->unk407A8 = 0;
        }
        return (void *) var_v0;
    }
    var_s1_3 = temp_t3_2;
    sp24 = temp_a5;
    if ((u32) temp_t0 < sp48) {
        sp50 = (s64) var_s3;
loop_50:
        var_s2 = var_s5;
        temp_v0 = (s32) (sp48 - var_s0) >> 1;
        if (var_s5 >= temp_v0) {
            var_s2 = temp_v0;
        }
        var_s3_3 = var_s4;
        if (var_s4 < sp50) {

        } else {
            var_s3_3 = (s32) sp50;
        }
        sp28 = (u32) var_s0;
        sp10 = var_s3_3;
        spC = (s32) var_s1_3;
        sp20 = var_s2 * 2;
        var_v0 = ioctl(arg5->unk10->unk74->unk64, 0x3AA2, sp, 0);
        if (var_v0 < 0) {
            var_v0 = ErrorF(&local_0x5f0a0000 - 0xDA0);
        }
        var_s1_3 += var_s3_3;
        var_s0 += var_s2 * 2;
        sp50 -= var_s3_3;
        if ((u32) var_s0 < sp48) {
            goto loop_50;
        }
    }
    return (void *) var_v0;
}

void expDrawImage12TC(void *arg0, u16 *arg1, u32 arg2, s32 arg3, s32 arg4, void *arg5) {
    s64 spB8;
    s64 spB0;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s16 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s16 temp_a5_2;
    s16 temp_t1;
    s16 temp_t3;
    s16 var_s5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 var_a1_3;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a3_4;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_s2;
    s32 var_s8;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t2;
    s32 var_t3;
    s32 var_t8;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a1_4;
    s64 var_a1_7;
    s64 var_a2;
    s64 var_a3;
    s64 var_a3_2;
    s64 var_a3_3;
    s64 var_a3_5;
    s64 var_ra;
    s64 var_s2_2;
    s64 var_s4;
    s64 var_s6_2;
    s64 var_t0_3;
    s64 var_t1;
    s64 var_v0;
    s64 var_v0_2;
    u16 *var_a1;
    u16 *var_a1_2;
    u16 *var_s1;
    u16 *var_s1_2;
    u16 *var_v0_3;
    u16 *var_v0_4;
    u16 temp_a4;
    u16 temp_a4_2;
    u16 temp_a4_3;
    u16 temp_a6;
    u16 temp_a6_2;
    u16 temp_at_4;
    u32 var_s6;
    void *temp_s3;

    temp_s3 = **(arg5->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    temp_s3->unk4052C = 0x1002;
    temp_s3->unk404D4 = 0;
    temp_s3->unk40530 = 0;
    temp_s3->unk4077C = (s32) (arg4 & 0xFFFFFF);
    temp_s3->unk4077C = arg3;
    temp_s3->unk4077C = (s32) ((arg5->unk84 + (*M2C_ERROR(/* Read from unset register $t9 */) * 4))->unk1 * 8);
    temp_s3->unk40544 = 0;
    temp_s3->unk4077C = 0;
    temp_s4 = arg0->unk4 - arg0->unk0;
    sp8 = temp_s4;
    temp_t1 = arg0->unk2;
    var_s8 = arg0->unk6 - temp_t1;
    temp_lo = temp_s4 * var_s8;
    var_s1 = arg1;
    var_s6 = arg2 >> 1;
    if (temp_lo < 0x2710) {
        var_s1_2 = arg1;
        spB0 = (s64) temp_t1;
        temp_a2 = var_s6 - temp_s4;
        if (temp_a2 >= 0) {
            var_s6_2 = spB0;
            if (temp_a2 != 0) {
                var_s2 = temp_a2;
            } else {
                goto block_74;
            }
        } else {
            var_s6_2 = spB0;
block_74:
            var_s2 = 0;
        }
        temp_v0 = Xalloc(temp_lo * 4, temp_a2);
        sp70 = temp_v0;
        if (temp_v0 != 0) {
            var_t1 = sp70;
            if (var_s8 > 0) {
                var_t8 = temp_s4;
                if (temp_s4 < 0) {
                    var_t8 = 0;
                }
                var_a7 = 0;
                var_a2 = sp70;
loop_14:
                var_a3 = var_a2;
                var_a1 = var_s1_2;
                if (temp_s4 >= 1) {
                    var_at = temp_s4 >> 1;
                    if (temp_s4 & 1) {
                        temp_a4 = *var_a1;
                        var_a1 += 2;
                        var_a3 += 4;
                        var_a3->unk-4 = (s32) (((temp_a4 & 0xF0) << 8) | ((temp_a4 & 0xF00) << 0xC) | ((temp_a4 & 0xF) * 0x10));
                        var_at = temp_s4 >> 1;
                    }
                    if (var_at != 0) {
                        var_a3_2 = var_a3;
                        var_a1_2 = var_a1;
                        do {
                            temp_a6 = var_a1_2->unk0;
                            *var_a3_2 = (s32) (((temp_a6 & 0xF0) << 8) | ((temp_a6 & 0xF00) << 0xC) | ((temp_a6 & 0xF) * 0x10));
                            temp_a4_2 = var_a1_2->unk2;
                            var_a3_2 += 8;
                            var_a1_2 += 4;
                            var_a3_2->unk-4 = (s32) (((temp_a4_2 & 0xF0) << 8) | ((temp_a4_2 & 0xF00) << 0xC) | ((temp_a4_2 & 0xF) * 0x10));
                        } while (var_a1_2 != ((temp_s4 * 2) + var_s1_2));
                    }
                }
                var_a7 += 1;
                var_a2 += var_t8 * 4;
                var_s1_2 = (var_t8 * 2) + var_s1_2 + (var_s2 * 2);
                if (var_a7 != var_s8) {
                    goto loop_14;
                }
            }
            temp_lo_2 = 0x10 / temp_s4;
            M2C_TRAP_IF(temp_s4 == 0);
            if (temp_lo_2 > 0) {
                if (var_s8 != 0) {
loop_33:
                    var_t3 = var_s8;
                    if (var_s8 >= temp_lo_2) {
                        var_t3 = temp_lo_2;
                    }
                    temp_s3->unk40558 = (s32) arg0->unk0;
                    temp_s3->unk4077C = (s32) var_s6_2;
                    var_s8 -= var_t3;
                    var_a5 = 0;
                    temp_s3->unk4077C = sp8;
                    temp_s3->unk4077C = var_t3;
                    temp_s3->unk4077C = temp_s4;
                    temp_s3->unk4077C = 0;
                    temp_s3->unk4077C = 0;
                    if (var_t3 > 0) {
loop_45:
                        var_a3_3 = var_t1;
                        if (temp_s4 > 0) {
                            var_a2_2 = temp_s4 & 3;
                            if (var_a2_2 != 0) {
                                do {
                                    var_a3_3 += 4;
                                    var_a2_2 -= 1;
                                    temp_s3->unk4077C = (s32) var_a3_3->unk-4;
                                } while (var_a2_2 != 0);
                            }
                            temp_a2_2 = temp_s4 >> 2;
                            var_v0 = var_a3_3;
                            if (temp_a2_2 != 0) {
                                if (temp_a2_2 >= 2) {
                                    var_at_2 = var_v0->unk0;
                                    do {
                                        temp_s3->unk4077C = var_at_2;
                                        temp_s3->unk4077C = (s32) var_v0->unk4;
                                        temp_s3->unk4077C = (s32) var_v0->unk8;
                                        temp_at = var_v0->unkC;
                                        var_v0 += 0x10;
                                        temp_s3->unk4077C = temp_at;
                                        var_at_2 = var_v0->unk0;
                                    } while (var_v0 != (((temp_s4 * 4) + var_t1) - 0x10));
                                    temp_s3->unk4077C = var_at_2;
                                    temp_s3->unk4077C = (s32) var_v0->unk4;
                                    temp_s3->unk4077C = (s32) var_v0->unk8;
                                    temp_s3->unk4077C = (s32) var_v0->unkC;
                                } else {
                                    temp_s3->unk4077C = (s32) var_v0->unk0;
                                    temp_s3->unk4077C = (s32) var_v0->unk4;
                                    temp_s3->unk4077C = (s32) var_v0->unk8;
                                    temp_s3->unk4077C = (s32) var_v0->unkC;
                                }
                            }
                            var_a2_3 = temp_s4;
                        } else {
                            var_a2_3 = 0;
                        }
                        var_a5 += 1;
                        var_t1 += var_a2_3 * 4;
                        if (var_t3 != var_a5) {
                            goto loop_45;
                        }
                    }
                    temp_lo_3 = temp_s4 * var_t3;
                    var_s6_2 += var_t3;
                    var_a1_3 = 0;
                    if (temp_lo_3 < 0x10) {
                        temp_a3 = 0x10 - temp_lo_3;
                        var_a2_4 = temp_a3 & 3;
                        if (var_a2_4 != 0) {
                            do {
                                var_a1_3 += 1;
                                var_a2_4 -= 1;
                                temp_s3->unk4077C = -0x21524111;
                            } while (var_a2_4 != 0);
                        }
                        temp_a5 = temp_a3 >> 2;
                        if (temp_a5 != 0) {
                            if (temp_a5 >= 2) {
                                var_v1 = var_a1_3 + 4;
                                temp_s3->unk4077C = -0x21524111;
                                temp_s3->unk4077C = -0x21524111;
loop_26:
                                temp_s3->unk4077C = -0x21524111;
                                temp_s3->unk4077C = -0x21524111;
                                temp_s3->unk4077C = -0x21524111;
                                temp_s3->unk4077C = -0x21524111;
                                if (var_v1 != (temp_a3 - 4)) {
                                    temp_s3->unk4077C = -0x21524111;
                                    temp_s3->unk4077C = -0x21524111;
                                    temp_s3->unk4077C = -0x21524111;
                                    temp_s3->unk4077C = -0x21524111;
                                    if (var_v1 != (temp_a3 - 8)) {
                                        temp_s3->unk4077C = -0x21524111;
                                        temp_s3->unk4077C = -0x21524111;
                                        temp_s3->unk4077C = -0x21524111;
                                        temp_s3->unk4077C = -0x21524111;
                                        if (var_v1 != (temp_a3 - 0xC)) {
                                            temp_s3->unk4077C = -0x21524111;
                                            temp_s3->unk4077C = -0x21524111;
                                            temp_s3->unk4077C = -0x21524111;
                                            var_v1 += 0x10;
                                            temp_s3->unk4077C = -0x21524111;
                                            if (var_v1 != temp_a3) {
                                                goto loop_26;
                                            }
                                        }
                                    }
                                }
                                temp_s3->unk4077C = -0x21524111;
                            } else {
                                temp_s3->unk4077C = -0x21524111;
                                temp_s3->unk4077C = -0x21524111;
                                temp_s3->unk4077C = -0x21524111;
                            }
                            temp_s3->unk4077C = -0x21524111;
                        }
                    }
                    if (var_s8 != 0) {
                        goto loop_33;
                    }
                }
                temp_s3->unk407A8 = 0;
            } else {
                temp_t3 = arg0->unk4;
                if (var_s8 > 0) {
                    var_ra = var_s6_2;
loop_78:
                    temp_a5_2 = arg0->unk0;
                    temp_s3->unk40558 = (s32) temp_a5_2;
                    temp_s3->unk4077C = (s32) var_ra;
                    temp_s3->unk4077C = 0x10;
                    temp_s3->unk4077C = 1;
                    temp_s3->unk4077C = 0x10;
                    temp_s3->unk4077C = 0;
                    temp_s3->unk4077C = 0;
                    temp_s3->unk4077C = (s32) var_t1->unk0;
                    temp_s3->unk4077C = (s32) var_t1->unk4;
                    temp_s3->unk4077C = (s32) var_t1->unk8;
                    temp_s3->unk4077C = (s32) var_t1->unkC;
                    temp_s3->unk4077C = (s32) var_t1->unk10;
                    temp_s3->unk4077C = (s32) var_t1->unk14;
                    temp_s3->unk4077C = (s32) var_t1->unk18;
                    temp_s3->unk4077C = (s32) var_t1->unk1C;
                    temp_s3->unk4077C = (s32) var_t1->unk20;
                    temp_s3->unk4077C = (s32) var_t1->unk24;
                    temp_s3->unk4077C = (s32) var_t1->unk28;
                    temp_s3->unk4077C = (s32) var_t1->unk2C;
                    temp_s3->unk4077C = (s32) var_t1->unk30;
                    temp_s3->unk4077C = (s32) var_t1->unk34;
                    temp_s3->unk4077C = (s32) var_t1->unk38;
                    temp_at_2 = var_t1->unk3C;
                    var_a5_2 = temp_a5_2 + 0x10;
                    var_t1 += 0x40;
                    temp_s3->unk4077C = temp_at_2;
                    if (var_a5_2 < temp_t3) {
                        var_v1_2 = var_a5_2 + 0x10;
loop_105:
                        if (var_v1_2 < temp_t3) {
                            var_t2 = 0x10;
                            var_a3_4 = 0;
                        } else {
                            var_a3_4 = (var_a5_2 - temp_t3) + 0x10;
                            var_t2 = temp_t3 - var_a5_2;
                        }
                        temp_s3->unk40558 = var_a5_2;
                        var_a5_2 += var_t2;
                        var_a2_5 = var_t2 & 3;
                        temp_s3->unk4077C = (s32) var_ra;
                        temp_s3->unk4077C = var_t2;
                        temp_s3->unk4077C = 1;
                        temp_s3->unk4077C = var_t2;
                        temp_s3->unk4077C = 0;
                        temp_s3->unk4077C = 0;
                        if (var_t2 > 0) {
                            var_a1_4 = var_t1;
                            if (var_a2_5 != 0) {
                                do {
                                    var_a1_4 += 4;
                                    var_a2_5 -= 1;
                                    temp_s3->unk4077C = (s32) var_a1_4->unk-4;
                                } while (var_a2_5 != 0);
                            }
                            temp_a2_3 = var_t2 >> 2;
                            var_v0_2 = var_a1_4;
                            if (temp_a2_3 != 0) {
                                if (temp_a2_3 >= 2) {
                                    var_at_3 = var_v0_2->unk0;
                                    do {
                                        temp_s3->unk4077C = var_at_3;
                                        temp_s3->unk4077C = (s32) var_v0_2->unk4;
                                        temp_s3->unk4077C = (s32) var_v0_2->unk8;
                                        temp_at_3 = var_v0_2->unkC;
                                        var_v0_2 += 0x10;
                                        temp_s3->unk4077C = temp_at_3;
                                        var_at_3 = var_v0_2->unk0;
                                    } while (var_v0_2 != ((var_t1 + (var_t2 * 4)) - 0x10));
                                    temp_s3->unk4077C = var_at_3;
                                    temp_s3->unk4077C = (s32) var_v0_2->unk4;
                                    temp_s3->unk4077C = (s32) var_v0_2->unk8;
                                    var_a4 = var_v0_2->unkC;
                                } else {
                                    temp_s3->unk4077C = (s32) var_v0_2->unk0;
                                    temp_s3->unk4077C = (s32) var_v0_2->unk4;
                                    temp_s3->unk4077C = (s32) var_v0_2->unk8;
                                    var_a4 = var_v0_2->unkC;
                                }
                                temp_s3->unk4077C = var_a4;
                            }
                            var_a1_5 = var_t2;
                        } else {
                            var_a1_5 = 0;
                        }
                        var_a2_6 = var_a3_4 & 3;
                        var_t1 += var_a1_5 * 4;
                        if (var_a3_4 > 0) {
                            var_a1_6 = 0;
                            var_t0 = var_a3_4 >> 2;
                            if (var_a2_6 != 0) {
                                do {
                                    var_a1_6 += 1;
                                    var_a2_6 -= 1;
                                    temp_s3->unk4077C = -0x21524111;
                                } while (var_a2_6 != 0);
                                var_t0 = var_a3_4 >> 2;
                            }
                            if (var_t0 != 0) {
                                if (var_t0 >= 2) {
                                    var_v1_3 = var_a1_6 + 4;
                                    temp_s3->unk4077C = -0x21524111;
                                    temp_s3->unk4077C = -0x21524111;
loop_98:
                                    temp_s3->unk4077C = -0x21524111;
                                    temp_s3->unk4077C = -0x21524111;
                                    temp_s3->unk4077C = -0x21524111;
                                    temp_s3->unk4077C = -0x21524111;
                                    if (var_v1_3 != (var_a3_4 - 4)) {
                                        temp_s3->unk4077C = -0x21524111;
                                        temp_s3->unk4077C = -0x21524111;
                                        temp_s3->unk4077C = -0x21524111;
                                        temp_s3->unk4077C = -0x21524111;
                                        if (var_v1_3 != (var_a3_4 - 8)) {
                                            temp_s3->unk4077C = -0x21524111;
                                            temp_s3->unk4077C = -0x21524111;
                                            temp_s3->unk4077C = -0x21524111;
                                            temp_s3->unk4077C = -0x21524111;
                                            if (var_v1_3 != (var_a3_4 - 0xC)) {
                                                temp_s3->unk4077C = -0x21524111;
                                                temp_s3->unk4077C = -0x21524111;
                                                temp_s3->unk4077C = -0x21524111;
                                                var_v1_3 += 0x10;
                                                temp_s3->unk4077C = -0x21524111;
                                                if (var_v1_3 != var_a3_4) {
                                                    goto loop_98;
                                                }
                                            }
                                        }
                                    }
                                    temp_s3->unk4077C = -0x21524111;
                                } else {
                                    temp_s3->unk4077C = -0x21524111;
                                    temp_s3->unk4077C = -0x21524111;
                                    temp_s3->unk4077C = -0x21524111;
                                }
                                temp_s3->unk4077C = -0x21524111;
                            }
                        }
                        var_v1_2 = var_a5_2 + 0x10;
                        if (var_a5_2 < temp_t3) {
                            goto loop_105;
                        }
                    }
                    var_ra += 1;
                    if (var_ra != (var_s8 + var_s6_2)) {
                        goto loop_78;
                    }
                }
                temp_s3->unk407A8 = 0;
            }
            Xfree(sp70);
            return;
        }
        ErrorF(&local_0x5f0a0000 - 0xD48);
        return;
    }
    sp78 = (s64) arg0;
    temp_v0_2 = Xalloc(0x20000);
    if (temp_v0_2 != 0) {
        var_a4_2 = 5;
        sp1C = 1;
        sp14 = 5;
        sp0 = 0x147;
        sp18 = 0;
        sp4 = (s32) sp78->unk0;
        var_s5 = sp78->unk2;
        sp24 = temp_s4;
        if (var_s6 == 0) {
            var_s6 = (u32) temp_s4;
        }
        spB8 = (s64) temp_s4;
        sp80 = (s64) var_s8;
        if (var_s8 != 0) {
            temp_lo_4 = 0x8000 / spB8;
            var_s4 = spB8;
            if (spB8 < 0) {
                var_s4 = 0;
            }
            sp88 = (s64) arg5;
            M2C_TRAP_IF(spB8 == 0);
            sp90 = temp_v0_2 + (spB8 * 4);
            temp_s4_2 = var_s4 * 4;
loop_60:
            var_s2_2 = sp80;
            if (temp_lo_4 < sp80) {
                var_s2_2 = (s64) temp_lo_4;
            }
            sp28 = (s32) temp_v0_2;
            sp10 = (s32) var_s2_2;
            spC = (s32) var_s5;
            var_t0_2 = 0;
            var_a7_2 = 0;
            var_a3_5 = temp_v0_2;
            var_a1_7 = sp90;
            sp20 = spB8 * var_s2_2 * 4;
            if (var_s2_2 > 0) {
loop_69:
                var_v0_3 = var_a7_2 + var_s1;
                var_a0 = var_a3_5;
                if (spB8 >= 1) {
                    var_v1_4 = spB8 >> 1;
                    if (spB8 & 1) {
                        temp_a4_3 = *var_v0_3;
                        var_a0 += 4;
                        var_v0_3 += 2;
                        var_a4_2 = (temp_a4_3 & 0xF) * 0x10;
                        var_a0->unk-4 = (s32) (((temp_a4_3 & 0xF0) << 8) | ((temp_a4_3 & 0xF00) << 0xC) | var_a4_2);
                        var_v1_4 = spB8 >> 1;
                    }
                    if (var_v1_4 != 0) {
                        var_a0_2 = var_a0;
                        var_v0_4 = var_v0_3;
                        do {
                            temp_at_4 = var_v0_4->unk0;
                            *var_a0_2 = (s32) (((temp_at_4 & 0xF0) << 8) | ((temp_at_4 & 0xF00) << 0xC) | ((temp_at_4 & 0xF) * 0x10));
                            temp_a6_2 = var_v0_4->unk2;
                            var_v0_4 += 4;
                            var_a0_2 += 8;
                            var_a4_2 = ((temp_a6_2 & 0xF0) << 8) | ((temp_a6_2 & 0xF00) << 0xC) | ((temp_a6_2 & 0xF) * 0x10);
                            var_a0_2->unk-4 = var_a4_2;
                        } while (var_a0_2 != var_a1_7);
                    }
                }
                var_t0_2 += 1;
                var_a7_2 += var_s6 * 2;
                var_a1_7 += temp_s4_2;
                var_a3_5 += temp_s4_2;
                if (var_s2_2 != var_t0_2) {
                    goto loop_69;
                }
                var_t0_3 = var_s2_2;
            } else {
                var_t0_3 = 0;
            }
            var_s1 += var_t0_3 * var_s6 * 2;
            if (ioctl(sp88->unk10->unk74->unk64, 0x3AA2, sp, 0, var_a4_2) < 0) {
                ErrorF(&local_0x5f0a0000 - 0xDA0);
            }
            var_s5 += var_s2_2;
            var_a4_2 = sp80 - var_s2_2;
            sp80 = (s64) var_a4_2;
            if (var_a4_2 != 0) {
                goto loop_60;
            }
        }
        Xfree(temp_v0_2);
        return;
    }
    ErrorF(&local_0x5f0a0000 - 0xD48);
}

void *expDrawImage24(void *arg0, void *arg1, u32 arg2, s32 arg3, s32 arg4, void *arg5) {
    s64 sp48;
    u32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    u32 sp18;
    s16 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s16 temp_a3;
    s16 temp_t8;
    s16 var_ra;
    s16 var_s1;
    s16 var_s3;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s2;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_v0;
    s32 var_a0_2;
    s32 var_a0_4;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a4_3;
    s32 var_a5;
    s32 var_a6;
    s32 var_at;
    s32 var_at_2;
    s32 var_s2;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s6;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t8;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_8;
    s32 var_v0_9;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s64 var_s2_3;
    u32 temp_s4;
    u32 var_a2;
    u32 var_s5;
    void *temp_t2;
    void *var_a0;
    void *var_a0_3;
    void *var_a4_2;
    void *var_s0;
    void *var_s2_2;
    void *var_t3;
    void *var_v0_4;
    void *var_v0_7;

    var_t0 = 0;
    var_s0 = arg1;
    temp_t3 = (*(arg5->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
    temp_t2 = **(arg5->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    if (temp_t3 != 0xD) {
        if (temp_t3 != 0xE) {
            if (temp_t3 == 0xC) {
                var_t1 = 1;
                var_v0_2 = 0;
                temp_t2->unk4052C = 0x1008;
                temp_t2->unk404D4 = (s32) (arg4 & 0xF);
            } else {
                var_v0_2 = arg4;
                var_t1 = 0;
                temp_t2->unk4052C = (s32) (temp_t3 | 0x1000);
                temp_t2->unk404D4 = 0;
            }
        } else {
            var_t1 = 9;
            var_v0_2 = 0;
            temp_t2->unk4052C = 0x100B;
            temp_t2->unk404D4 = (s32) (arg4 & 0xC);
        }
    } else {
        var_t1 = 1;
        var_v0_2 = 0;
        temp_t2->unk4052C = 0x100B;
        temp_t2->unk404D4 = (s32) (arg4 & 3);
    }
    temp_t2->unk40530 = 0;
    temp_t2->unk4077C = (s32) (var_v0_2 & 0xFFFFFF);
    temp_t2->unk4077C = arg3;
    temp_t2->unk4077C = var_t1;
    temp_t2->unk40544 = 0;
    temp_t2->unk4077C = 0;
    sp0 = 0x147;
    var_a2 = arg2 >> 2;
    sp4 = (s32) arg0->unk0;
    sp1C = 1;
    sp14 = 5;
    temp_a5 = arg0->unk4 - arg0->unk0;
    sp8 = temp_a5;
    temp_t3_2 = var_a2 - temp_a5;
    var_a4 = temp_t3_2;
    var_s2 = arg0->unk6 - arg0->unk2;
    if (temp_t3_2 < 0) {
        var_a4 = 0;
    }
    var_v0 = temp_a5 * var_s2;
    if (var_a4 != 0) {
        M2C_TRAP_IF(var_a2 == 0);
        var_t0 = temp_t3_2;
        sp18 = var_a2;
        var_s5 = 0x8000U / var_a2;
        sp14 = 7;
        if ((s32) var_s5 >= 0x45) {
            var_s5 = 0x44;
        }
        var_s6 = var_s5 * var_a2;
        var_s4 = (((var_s2 - 1) * var_a2) + temp_a5) * 4;
    } else {
        var_s5 = (u32) (0x8000 / temp_a5);
        var_a2 = (u32) temp_a5;
        sp18 = 0;
        M2C_TRAP_IF(temp_a5 == 0);
        var_s4 = var_v0 * 4;
        var_s6 = temp_a5 * var_s5;
    }
    temp_s4 = var_s4 + arg1;
    temp_a3 = arg0->unk2;
    if (var_v0 < 0x1388) {
        temp_lo = 0x10 / temp_a5;
        var_a4_2 = arg1;
        var_s3 = temp_a3;
        M2C_TRAP_IF(temp_a5 == 0);
        if (temp_lo > 0) {
            if (var_s2 != 0) {
loop_28:
                var_t8 = temp_lo;
                if (var_s2 < temp_lo) {
                    var_t8 = var_s2;
                }
                temp_t2->unk40558 = sp4;
                temp_t2->unk4077C = (s32) var_s3;
                var_s2 -= var_t8;
                var_a3 = 0;
                temp_t2->unk4077C = sp8;
                temp_t2->unk4077C = var_t8;
                temp_t2->unk4077C = temp_a5;
                temp_t2->unk4077C = 0;
                temp_t2->unk4077C = 0;
                if (var_t8 > 0) {
loop_41:
                    var_a0 = var_a4_2;
                    if (temp_a5 > 0) {
                        var_v0_3 = temp_a5 & 3;
                        var_t0_2 = temp_a5 >> 2;
                        if (var_v0_3 != 0) {
                            do {
                                var_a0 += 4;
                                var_v0_3 -= 1;
                                temp_t2->unk4077C = (s32) var_a0->unk-4;
                            } while (var_v0_3 != 0);
                            var_t0_2 = temp_a5 >> 2;
                        }
                        var_v0_4 = var_a0;
                        if (var_t0_2 != 0) {
                            if (var_t0_2 >= 2) {
                                var_at = var_v0_4->unk0;
                                do {
                                    temp_t2->unk4077C = var_at;
                                    temp_t2->unk4077C = (s32) var_v0_4->unk4;
                                    temp_t2->unk4077C = (s32) var_v0_4->unk8;
                                    temp_at = var_v0_4->unkC;
                                    var_v0_4 += 0x10;
                                    temp_t2->unk4077C = temp_at;
                                    var_at = var_v0_4->unk0;
                                } while (var_v0_4 != ((var_a4_2 + (temp_a5 * 4)) - 0x10));
                                temp_t2->unk4077C = var_at;
                                temp_t2->unk4077C = (s32) var_v0_4->unk4;
                                temp_t2->unk4077C = (s32) var_v0_4->unk8;
                                temp_t2->unk4077C = (s32) var_v0_4->unkC;
                            } else {
                                temp_t2->unk4077C = (s32) var_v0_4->unk0;
                                temp_t2->unk4077C = (s32) var_v0_4->unk4;
                                temp_t2->unk4077C = (s32) var_v0_4->unk8;
                                temp_t2->unk4077C = (s32) var_v0_4->unkC;
                            }
                        }
                        var_v0_5 = temp_a5;
                    } else {
                        var_v0_5 = 0;
                    }
                    var_a3 += 1;
                    var_a4_2 = (var_v0_5 * 4) + var_a4_2 + (var_t0 * 4);
                    if (var_t8 != var_a3) {
                        goto loop_41;
                    }
                }
                temp_lo_2 = var_t8 * temp_a5;
                var_s3 += var_t8;
                var_v0 = 0;
                if (temp_lo_2 < 0x10) {
                    temp_a3_2 = 0x10 - temp_lo_2;
                    var_a0_2 = temp_a3_2 & 3;
                    if (var_a0_2 != 0) {
                        do {
                            var_v0 += 1;
                            var_a0_2 -= 1;
                            temp_t2->unk4077C = -0x21524111;
                        } while (var_a0_2 != 0);
                    }
                    temp_a1 = temp_a3_2 >> 2;
                    temp_a0 = var_v0;
                    if (temp_a1 != 0) {
                        if (temp_a1 >= 2) {
                            var_v0 = temp_a3_2 - 8;
                            var_v1 = temp_a0 + 4;
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
loop_21:
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
                            if (var_v1 != (temp_a3_2 - 4)) {
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                if (var_v1 != var_v0) {
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    if (var_v1 != (temp_a3_2 - 0xC)) {
                                        temp_t2->unk4077C = -0x21524111;
                                        temp_t2->unk4077C = -0x21524111;
                                        temp_t2->unk4077C = -0x21524111;
                                        var_v1 += 0x10;
                                        temp_t2->unk4077C = -0x21524111;
                                        if (var_v1 != temp_a3_2) {
                                            goto loop_21;
                                        }
                                    }
                                }
                            }
                            temp_t2->unk4077C = -0x21524111;
                        } else {
                            var_v0 = temp_a0;
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
                            temp_t2->unk4077C = -0x21524111;
                        }
                        temp_t2->unk4077C = -0x21524111;
                    }
                }
                if (var_s2 != 0) {
                    goto loop_28;
                }
            }
            temp_t2->unk407A8 = 0;
        } else {
            var_v0 = (s32) arg1;
            temp_t8 = arg0->unk4;
            if ((u32) arg1 < temp_s4) {
                var_ra = var_s3;
                temp_s2 = var_a2 * 4;
                var_s2_2 = temp_s2 + arg1;
loop_67:
                temp_t2->unk40558 = sp4;
                temp_t2->unk4077C = (s32) var_ra;
                temp_t2->unk4077C = 0x10;
                temp_t2->unk4077C = 1;
                temp_t2->unk4077C = 0x10;
                temp_t2->unk4077C = 0;
                temp_t2->unk4077C = 0;
                temp_t2->unk4077C = (s32) var_v0->unk0;
                temp_t2->unk4077C = (s32) var_v0->unk4;
                temp_t2->unk4077C = (s32) var_v0->unk8;
                temp_t2->unk4077C = (s32) var_v0->unkC;
                temp_t2->unk4077C = (s32) var_v0->unk10;
                temp_t2->unk4077C = (s32) var_v0->unk14;
                temp_t2->unk4077C = (s32) var_v0->unk18;
                temp_t2->unk4077C = (s32) var_v0->unk1C;
                temp_t2->unk4077C = (s32) var_v0->unk20;
                temp_t2->unk4077C = (s32) var_v0->unk24;
                temp_t2->unk4077C = (s32) var_v0->unk28;
                temp_t2->unk4077C = (s32) var_v0->unk2C;
                temp_t2->unk4077C = (s32) var_v0->unk30;
                temp_t2->unk4077C = (s32) var_v0->unk34;
                temp_t2->unk4077C = (s32) var_v0->unk38;
                var_a4_3 = sp4 + 0x10;
                var_t3 = var_v0 + 0x40;
                temp_t2->unk4077C = (s32) var_v0->unk3C;
                var_v0 = (s32) var_s2_2;
                if (var_a4_3 < temp_t8) {
                    var_v1_2 = var_a4_3 + 0x10;
loop_94:
                    if (var_v1_2 < temp_t8) {
                        var_a5 = 0x10;
                        var_a3_2 = 0;
                    } else {
                        var_a3_2 = (var_a4_3 - temp_t8) + 0x10;
                        var_a5 = temp_t8 - var_a4_3;
                    }
                    temp_t2->unk40558 = var_a4_3;
                    var_a4_3 += var_a5;
                    var_v0_6 = var_a5 & 3;
                    temp_t2->unk4077C = (s32) var_ra;
                    temp_t2->unk4077C = var_a5;
                    temp_t2->unk4077C = 1;
                    temp_t2->unk4077C = var_a5;
                    temp_t2->unk4077C = 0;
                    temp_t2->unk4077C = 0;
                    if (var_a5 > 0) {
                        var_a0_3 = var_t3;
                        if (var_v0_6 != 0) {
                            do {
                                var_a0_3 += 4;
                                var_v0_6 -= 1;
                                temp_t2->unk4077C = (s32) var_a0_3->unk-4;
                            } while (var_v0_6 != 0);
                        }
                        temp_a2 = var_a5 >> 2;
                        var_v0_7 = var_a0_3;
                        if (temp_a2 != 0) {
                            if (temp_a2 >= 2) {
                                var_at_2 = var_v0_7->unk0;
                                do {
                                    temp_t2->unk4077C = var_at_2;
                                    temp_t2->unk4077C = (s32) var_v0_7->unk4;
                                    temp_t2->unk4077C = (s32) var_v0_7->unk8;
                                    temp_at_2 = var_v0_7->unkC;
                                    var_v0_7 += 0x10;
                                    temp_t2->unk4077C = temp_at_2;
                                    var_at_2 = var_v0_7->unk0;
                                } while (var_v0_7 != (((var_a5 * 4) + var_t3) - 0x10));
                                temp_t2->unk4077C = var_at_2;
                                temp_t2->unk4077C = (s32) var_v0_7->unk4;
                                temp_t2->unk4077C = (s32) var_v0_7->unk8;
                                var_a6 = var_v0_7->unkC;
                            } else {
                                temp_t2->unk4077C = (s32) var_v0_7->unk0;
                                temp_t2->unk4077C = (s32) var_v0_7->unk4;
                                temp_t2->unk4077C = (s32) var_v0_7->unk8;
                                var_a6 = var_v0_7->unkC;
                            }
                            temp_t2->unk4077C = var_a6;
                        }
                        var_v0_8 = var_a5;
                    } else {
                        var_v0_8 = 0;
                    }
                    var_a0_4 = var_a3_2 & 3;
                    var_t3 += var_v0_8 * 4;
                    if (var_a3_2 > 0) {
                        var_v0_9 = 0;
                        var_a2_2 = var_a3_2 >> 2;
                        if (var_a0_4 != 0) {
                            do {
                                var_v0_9 += 1;
                                var_a0_4 -= 1;
                                temp_t2->unk4077C = -0x21524111;
                            } while (var_a0_4 != 0);
                            var_a2_2 = var_a3_2 >> 2;
                        }
                        if (var_a2_2 != 0) {
                            var_v1_3 = var_v0_9 + 4;
                            if (var_a2_2 >= 2) {
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
loop_87:
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                if (var_v1_3 != (var_a3_2 - 4)) {
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    temp_t2->unk4077C = -0x21524111;
                                    if (var_v1_3 != (var_a3_2 - 8)) {
                                        temp_t2->unk4077C = -0x21524111;
                                        temp_t2->unk4077C = -0x21524111;
                                        temp_t2->unk4077C = -0x21524111;
                                        temp_t2->unk4077C = -0x21524111;
                                        if (var_v1_3 != (var_a3_2 - 0xC)) {
                                            temp_t2->unk4077C = -0x21524111;
                                            temp_t2->unk4077C = -0x21524111;
                                            temp_t2->unk4077C = -0x21524111;
                                            var_v1_3 += 0x10;
                                            temp_t2->unk4077C = -0x21524111;
                                            if (var_v1_3 != var_a3_2) {
                                                goto loop_87;
                                            }
                                        }
                                    }
                                }
                                temp_t2->unk4077C = -0x21524111;
                            } else {
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                                temp_t2->unk4077C = -0x21524111;
                            }
                            temp_t2->unk4077C = -0x21524111;
                        }
                    }
                    var_v1_2 = var_a4_3 + 0x10;
                    if (var_a4_3 < temp_t8) {
                        goto loop_94;
                    }
                    var_v0 = (s32) var_s2_2;
                }
                var_s2_2 += var_a2 * 4;
                var_ra += 1;
                if ((u32) var_s2_2 < (u32) (temp_s2 + temp_s4)) {
                    goto loop_67;
                }
            }
            temp_t2->unk407A8 = 0;
        }
        return (void *) var_v0;
    }
    var_s1 = temp_a3;
    sp24 = temp_a5;
    if ((u32) arg1 < temp_s4) {
        sp48 = (s64) var_s2;
loop_51:
        temp_v0 = (s32) (temp_s4 - var_s0) >> 2;
        var_s3_2 = var_s6;
        if (var_s6 >= temp_v0) {
            var_s3_2 = temp_v0;
        }
        var_s2_3 = sp48;
        if ((s32) var_s5 < sp48) {
            var_s2_3 = (s64) var_s5;
        }
        sp28 = (u32) var_s0;
        sp10 = (s32) var_s2_3;
        spC = (s32) var_s1;
        sp20 = var_s3_2 * 4;
        var_v0 = ioctl(arg5->unk10->unk74->unk64, 0x3AA2, sp, 0);
        if (var_v0 < 0) {
            var_v0 = ErrorF(&local_0x5f0a0000 - 0xDA0);
        }
        var_s1 += var_s2_3;
        var_s0 += var_s3_2 * 4;
        sp48 -= var_s2_3;
        if ((u32) var_s0 < temp_s4) {
            goto loop_51;
        }
    }
    return (void *) var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x50, 0x54, 0x58, 0x5c, 0x88, 0x8c, 0x90, 0x94], gap at: 0x68. */
void expReadImage(s64 arg0, u32 arg1, u32 arg2, void *arg3) {
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp48;
    s64 sp40;
    s32 sp3C;
    s32 sp38;
    u32 sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    u32 sp20;
    s16 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s16 temp_a1;
    s16 var_s0;
    s32 *var_a6_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_s4;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a2_2;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_at;
    s32 var_ra_2;
    s32 var_ra_4;
    s32 var_ra_5;
    s32 var_s1;
    s32 var_s2_3;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s5;
    s32 var_t8;
    s32 var_t8_2;
    s32 var_t9;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_9;
    s32 var_v1;
    s64 temp_a2;
    s64 var_a2;
    s64 var_ra;
    s64 var_ra_3;
    s64 var_s2;
    s64 var_s3;
    s64 var_s6;
    s64 var_s7;
    s64 var_t8_3;
    s64 var_v1_6;
    u32 temp_a0_5;
    u32 temp_s3_4;
    u32 var_s2_2;
    u32 var_s8;
    u8 *var_v1_3;
    u8 temp_a0_3;
    u8 temp_a0_4;
    u8 var_a4;
    void *var_a3;
    void *var_a5;
    void *var_a5_2;
    void *var_a6;
    void *var_a6_3;
    void *var_a6_4;
    void *var_t8_4;
    void *var_t8_5;
    void *var_v0_3;
    void *var_v0_7;
    void *var_v0_8;
    void *var_v1_2;
    void *var_v1_4;
    void *var_v1_5;

    var_s2 = saved_reg_s2;
    var_s3 = saved_reg_s3;
    var_s7 = saved_reg_s7;
    var_ra = saved_reg_ra;
    var_s8 = arg1;
    spC0 = arg0;
    spA8 = (s64) arg3;
    temp_t0 = arg3->unk84;
    temp_a6 = (*(temp_t0 + (nfbWindowPrivateIndex * 4)))->unk14;
    temp_a0 = **(arg3->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    spA0 = (s64) temp_a0;
    spB0 = temp_a0 + 0x40000;
    if (temp_a6 != 0xD) {
        if (temp_a6 != 0xE) {
            if (temp_a6 == 0xC) {
                var_v0 = 1;
                var_v1 = 0;
                spB0->unk52C = 0x1008;
                spB0->unk4D4 = 0xF;
            } else {
                spB0->unk52C = (s32) (temp_a6 | 0x1000);
                spB0->unk4D4 = 0;
                var_v1 = -1;
                var_v0 = *((dbcWindowPrivateIndex * 4) + temp_t0) * 8;
            }
        } else {
            var_v0 = 9;
            var_v1 = 0;
            spB0->unk52C = 0x100B;
            spB0->unk4D4 = 0xC;
        }
    } else {
        var_v0 = 1;
        var_v1 = 0;
        spB0->unk52C = 0x100B;
        spB0->unk4D4 = 3;
    }
    temp_s1 = arg1 & 3;
    spB0->unk530 = 0;
    spB0->unk77C = (s32) (var_v1 & 0xFFFFFF);
    spB0->unk77C = 3;
    spB0->unk77C = var_v0;
    spB0->unk544 = 2;
    spB0->unk77C = temp_s1;
    temp_a1 = spC0->unk2;
    var_s6 = spC0->unk6 - temp_a1;
    var_t9 = spC0->unk4 - spC0->unk0;
    temp_a0_2 = var_t9 + temp_s1 + 3;
    temp_a2 = temp_a0_2 & ~3;
    var_a4 = (temp_a2 * var_s6) < 0x1001;
    sp40 = temp_a2;
    if (var_a4 != 0) {
        spC8 = (s64) temp_a1;
        var_s2_2 = arg1;
        if (var_s6 > 0) {
            temp_s3 = temp_a0_2 >> 2;
            M2C_TRAP_IF(temp_a2 == 0);
            spB8 = (s64) (0x1000 / temp_a2);
loop_12:
            var_a2 = var_s6;
            if (var_s6 >= spB8) {
                var_a2 = spB8;
            }
            spA0->unk6B000 = 0;
            spB0->unk560 = temp_s3;
            spB0->unk77C = (s32) spC0->unk0;
            spB0->unk77C = (s32) spC8;
            spB0->unk77C = var_t9;
            spB0->unk77C = (s32) var_a2;
            var_a7 = 0x6C00;
            if (!(spA0->unk6A040 & 1)) {
                do {
                    sp4 = 0;
                    sp4 = 1;
                    sp4 = 2;
                    sp4 = 3;
                    sp4 = 4;
                    sp4 = 5;
                    sp4 = 6;
                    sp4 = 7;
                    sp4 = 8;
                    sp4 = 9;
                } while (!(spA0->unk6A040 & 1));
                var_a7 = 0x6C00;
            }
            var_t8 = 0;
            spA0->unk6B000 = 0;
            if (temp_s1 != 0) {
                goto block_19;
            }
            if (!((var_t9 + arg1) & 3)) {
                if (var_a2 > 0) {
                    var_ra_2 = 0;
loop_111:
                    var_a6 = var_t8 + var_s2_2;
                    if (temp_s3 > 0) {
                        var_a3 = (var_a7 * 4) + spA0;
                        var_v0_2 = temp_s3 & 3;
                        if (var_v0_2 != 0) {
                            do {
                                var_a3 += 4;
                                var_a6 += 4;
                                var_v0_2 -= 1;
                                var_a6->unk-4 = (s32) var_a3->unk-4;
                            } while (var_v0_2 != 0);
                        }
                        var_v1_2 = var_a6;
                        temp_s4 = temp_s3 >> 2;
                        var_v0_3 = var_a3;
                        if (temp_s4 != 0) {
                            if (temp_s4 >= 2) {
                                var_at = var_v0_3->unk0;
                                do {
                                    var_v1_2 += 0x10;
                                    var_v1_2->unk-10 = var_at;
                                    var_v1_2->unk-C = (s32) var_v0_3->unk4;
                                    var_v1_2->unk-8 = (s32) var_v0_3->unk8;
                                    temp_at = var_v0_3->unkC;
                                    var_v0_3 += 0x10;
                                    var_v1_2->unk-4 = temp_at;
                                    var_at = var_v0_3->unk0;
                                } while (var_v0_3 != ((((temp_s3 + var_a7) * 4) + spA0) - 0x10));
                                var_v1_2->unk0 = var_at;
                                var_v1_2->unk4 = (s32) var_v0_3->unk4;
                                var_v1_2->unk8 = (s32) var_v0_3->unk8;
                                var_v1_2->unkC = (s32) var_v0_3->unkC;
                            } else {
                                var_v1_2->unk0 = (s32) var_v0_3->unk0;
                                var_v1_2->unk4 = (s32) var_v0_3->unk4;
                                var_v1_2->unk8 = (s32) var_v0_3->unk8;
                                var_v1_2->unkC = (s32) var_v0_3->unkC;
                            }
                        }
                        var_v0_4 = temp_s3;
                    } else {
                        var_v0_4 = 0;
                    }
                    var_ra_2 += 1;
                    var_t8 += arg2;
                    var_a7 += var_v0_4;
                    if (var_a2 != var_ra_2) {
                        goto loop_111;
                    }
                    var_ra_3 = var_a2;
                } else {
                    var_ra_3 = 0;
                }
                var_s2_2 += var_ra_3 * arg2;
            } else {
block_19:
                var_a7_2 = 0;
                if (var_a2 > 0) {
                    var_t8_2 = 0;
                    var_a6_2 = spA0 + 0x1B000;
loop_22:
                    var_v0_5 = temp_s1;
                    var_a6_2 += 4;
                    var_v1_3 = var_a7_2 + var_s2_2;
                    temp_t2 = var_a6_2->unk-4;
                    temp_a3 = var_t9 + var_v1_3;
                    sp0 = temp_t2;
                    if (var_t9 > 0) {
                        sp0 = temp_t2;
                        if (var_t9 & 1) {
                            if (var_v0_5 == 4) {
                                var_a6_2 += 4;
                                var_v0_5 = 0;
                                sp0 = var_a6_2->unk-4;
                            }
                            var_v1_3 += 1;
                            var_v0_5 += 1;
                            var_v1_3->unk-1 = (u8) (var_v0_5 + sp)->unk-1;
                        }
                        if ((var_t9 >> 1) != 0) {
loop_33:
                            var_v0_6 = var_v0_5 + 1;
                            if (var_v0_5 == 4) {
                                temp_a4 = *var_a6_2;
                                var_a6_2 += 4;
                                sp0 = temp_a4;
                                var_v0_6 = 1;
                            }
                            *var_v1_3 = (var_v0_6 + sp)->unk-1;
                            if (var_v0_6 == 4) {
                                var_a6_2 += 4;
                                var_v0_6 = 0;
                                sp0 = var_a6_2->unk-4;
                            }
                            var_v0_5 = var_v0_6 + 1;
                            var_v1_3 += 2;
                            var_v1_3->unk-1 = (u8) (var_v0_5 + sp)->unk-1;
                            if (var_v1_3 != temp_a3) {
                                goto loop_33;
                            }
                        }
                    }
                    var_t8_2 += 1;
                    var_a7_2 += arg2;
                    if (var_a2 != var_t8_2) {
                        goto loop_22;
                    }
                    var_t8_3 = var_a2;
                } else {
                    var_t8_3 = 0;
                }
                var_s2_2 += var_t8_3 * arg2;
            }
            var_s6 -= var_a2;
            spC8 += var_a2;
            if (var_s6 > 0) {
                goto loop_12;
            }
        }
        return;
    }
    sp8 = 0x152;
    spC = (s32) spC0->unk0;
    if (temp_s1 != 0) {
        spA0->unk6B000 = 0;
        spB0->unk560 = 1;
        spB0->unk77C = (s32) spC0->unk0;
        temp_s3_2 = 4 - temp_s1;
        spB0->unk77C = (s32) spC0->unk2;
        spB0->unk77C = temp_s3_2;
        spB0->unk77C = (s32) var_s6;
        var_a4 = spA0->unk6A040 & 1;
        if (var_a4 == 0) {
            do {
                sp38 = 0;
                var_a4 = 1;
                sp38 = 1;
                sp38 = 2;
                sp38 = 3;
                sp38 = 4;
                sp38 = 5;
                sp38 = 6;
                sp38 = 7;
                sp38 = 8;
                sp38 = 9;
            } while (!(spA0->unk6A040 & 1));
        }
        spA0->unk6B000 = 0;
        if (var_s6 > 0) {
            var_ra_4 = 0;
            var_t8_4 = spA0 + 0x20000;
            temp_s8 = 4 - temp_s1;
            spD0 = (s64) (temp_s1 + temp_s8 + sp);
loop_55:
            var_t8_4 += 4;
            var_v0_7 = var_ra_4 + arg1;
            temp_t2_2 = var_t8_4->unk-5004;
            var_a2_2 = temp_s8 & 3;
            sp0 = temp_t2_2;
            if (temp_s3_2 != 0) {
                var_v1_4 = temp_s1 + sp;
                sp0 = temp_t2_2;
                if (var_a2_2 != 0) {
                    do {
                        var_v1_4 += 1;
                        var_v0_7 += 1;
                        var_a4 = var_v1_4->unk-1;
                        var_a2_2 -= 1;
                        var_v0_7->unk-1 = var_a4;
                    } while (var_a2_2 != 0);
                }
                var_a5 = var_v0_7;
                var_a6_3 = var_v1_4;
                if ((temp_s8 >> 2) != 0) {
                    var_a4 = spD0 - 4;
loop_49:
                    var_a5->unk3 = (u8) var_a6_3->unk3;
                    var_a5->unk2 = (u8) var_a6_3->unk2;
                    var_a5->unk1 = (u8) var_a6_3->unk1;
                    var_a5->unk0 = (u8) var_a6_3->unk0;
                    if (var_a6_3 != var_a4) {
                        var_a5->unk7 = (u8) var_a6_3->unk7;
                        var_a5->unk6 = (u8) var_a6_3->unk6;
                        var_a5->unk5 = (u8) var_a6_3->unk5;
                        var_a5->unk4 = (u8) var_a6_3->unk4;
                        if (var_a6_3 != (spD0 - 8)) {
                            var_a5->unkB = (u8) var_a6_3->unkB;
                            var_a5->unkA = (u8) var_a6_3->unkA;
                            var_a5->unk9 = (u8) var_a6_3->unk9;
                            var_a5->unk8 = (u8) var_a6_3->unk8;
                            if (var_a6_3 != (spD0 - 0xC)) {
                                var_a5->unkF = (u8) var_a6_3->unkF;
                                var_a5->unkE = (u8) var_a6_3->unkE;
                                var_a5->unkD = (u8) var_a6_3->unkD;
                                var_a5->unkC = (u8) var_a6_3->unkC;
                                if (var_a6_3 != (spD0 - 0x10)) {
                                    temp_a0_3 = var_a6_3->unk10;
                                    var_a5->unk13 = (u8) var_a6_3->unk13;
                                    var_a5->unk12 = (u8) var_a6_3->unk12;
                                    var_a5->unk11 = (u8) var_a6_3->unk11;
                                    var_a5 += 0x14;
                                    var_a6_3 += 0x14;
                                    var_a5->unk-4 = temp_a0_3;
                                    if (var_a6_3 != spD0) {
                                        goto loop_49;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            var_ra_4 += arg2;
            if (var_t8_4 != ((var_s6 * 4) + spA0 + 0x20000)) {
                goto loop_55;
            }
        }
        var_s7 = sp48;
        var_ra = unksp68;
        var_t9 = (var_t9 + temp_s1) - 4;
        var_s8 = (arg1 - temp_s1) + 4;
        spC = (spC - temp_s1) + 4;
        var_s3 = unksp80;
        spB0->unk544 = 2;
        var_s2 = unksp70;
        spB0->unk77C = 0;
    }
    temp_s1_2 = var_t9 & 3;
    if (temp_s1_2 != 0) {
        var_a4 = (u8) spB0;
        spA0->unk6B000 = 0;
        var_a4->unk560 = 1;
        var_a4->unk77C = (s32) ((spC + var_t9) - temp_s1_2);
        var_a4->unk77C = (s32) spC0->unk2;
        var_a4->unk77C = temp_s1_2;
        var_a4->unk77C = (s32) var_s6;
        if (!(spA0->unk6A040 & 1)) {
            do {
                sp3C = 0;
                var_a4 = 1;
                sp3C = 1;
                sp3C = 2;
                sp3C = 3;
                sp3C = 4;
                sp3C = 5;
                sp3C = 6;
                sp3C = 7;
                sp3C = 8;
                sp3C = 9;
            } while (!(spA0->unk6A040 & 1));
        }
        unksp80 = var_s3;
        unksp70 = var_s2;
        unksp68 = var_ra;
        spA0->unk6B000 = 0;
        if (var_s6 > 0) {
            var_ra_5 = 0;
            temp_s3_3 = temp_s1_2 + sp;
            var_a4 = (u8) spA0;
            var_t8_5 = var_a4 + 0x20000;
            temp_s2 = (var_s6 * 4) + var_a4 + 0x20000;
loop_74:
            var_t8_5 += 4;
            temp_t2_3 = var_t8_5->unk-5004;
            sp0 = temp_t2_3;
            if (temp_s1_2 != 0) {
                var_v1_5 = sp;
                sp0 = temp_t2_3;
                var_a1 = temp_s1_2 & 3;
                var_v0_8 = var_ra_5 + (-4 & (var_t9 + var_s8));
                if (var_a1 != 0) {
                    do {
                        var_v1_5 += 1;
                        var_v0_8 += 1;
                        var_a4 = var_v1_5->unk-1;
                        var_a1 -= 1;
                        var_v0_8->unk-1 = var_a4;
                    } while (var_a1 != 0);
                }
                var_a5_2 = var_v0_8;
                var_a6_4 = var_v1_5;
                if ((temp_s1_2 >> 2) != 0) {
                    var_a4 = temp_s3_3 - 4;
loop_68:
                    var_a5_2->unk3 = (u8) var_a6_4->unk3;
                    var_a5_2->unk2 = (u8) var_a6_4->unk2;
                    var_a5_2->unk1 = (u8) var_a6_4->unk1;
                    var_a5_2->unk0 = (u8) var_a6_4->unk0;
                    if (var_a6_4 != var_a4) {
                        var_a5_2->unk7 = (u8) var_a6_4->unk7;
                        var_a5_2->unk6 = (u8) var_a6_4->unk6;
                        var_a5_2->unk5 = (u8) var_a6_4->unk5;
                        var_a5_2->unk4 = (u8) var_a6_4->unk4;
                        if (var_a6_4 != (temp_s3_3 - 8)) {
                            var_a5_2->unkB = (u8) var_a6_4->unkB;
                            var_a5_2->unkA = (u8) var_a6_4->unkA;
                            var_a5_2->unk9 = (u8) var_a6_4->unk9;
                            var_a5_2->unk8 = (u8) var_a6_4->unk8;
                            if (var_a6_4 != (temp_s3_3 - 0xC)) {
                                var_a5_2->unkF = (u8) var_a6_4->unkF;
                                var_a5_2->unkE = (u8) var_a6_4->unkE;
                                var_a5_2->unkD = (u8) var_a6_4->unkD;
                                var_a5_2->unkC = (u8) var_a6_4->unkC;
                                if (var_a6_4 != (temp_s3_3 - 0x10)) {
                                    temp_a0_4 = var_a6_4->unk10;
                                    var_a5_2->unk13 = (u8) var_a6_4->unk13;
                                    var_a5_2->unk12 = (u8) var_a6_4->unk12;
                                    var_a5_2->unk11 = (u8) var_a6_4->unk11;
                                    var_a5_2 += 0x14;
                                    var_a6_4 += 0x14;
                                    var_a5_2->unk-4 = temp_a0_4;
                                    if (var_a6_4 != temp_s3_3) {
                                        goto loop_68;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            var_ra_5 += arg2;
            if (var_t8_5 != temp_s2) {
                goto loop_74;
            }
        }
        var_t9 -= temp_s1_2;
        var_ra = unksp68;
        var_s2 = unksp70;
        var_s3 = unksp80;
    }
    if (var_t9 == 0) {
        return;
    }
    sp10 = var_t9;
    sp24 = 1;
    temp_a0_5 = arg2 >> 2;
    temp_v1 = var_t9 >> 2;
    var_v0_9 = temp_a0_5 - temp_v1;
    sp1C = 4;
    if (var_v0_9 < 0) {
        var_v0_9 = 0;
    }
    if (var_v0_9 != 0) {
        temp_v0 = temp_a0_5 * 4;
        sp20 = temp_a0_5;
        M2C_TRAP_IF(temp_v0 == 0);
        var_s4 = 0x20000 / temp_v0;
        sp1C = 6;
        if (var_s4 >= 0x45) {
            unksp80 = var_s3;
            var_s4 = 0x44;
        }
        var_s5 = var_s4 * temp_v0;
        var_a4 = var_s6 - 1;
        unksp80 = var_s3;
        var_s3_2 = (var_a4 * temp_v0) + sp40;
    } else {
        var_s4 = 0x20000 / sp40;
        var_s5 = var_s4 * sp40;
        sp20 = 0;
        unksp80 = var_s3;
        M2C_TRAP_IF(sp40 == 0);
        var_s3_2 = var_s6 * sp40;
    }
    temp_s3_4 = var_s3_2 + var_s8;
    spD8 = var_s6;
    sp48 = var_s7;
    sp2C = temp_v1;
    var_s0 = spC0->unk2;
    if (var_s8 < temp_s3_4) {
        unksp70 = var_s2;
        unksp68 = var_ra;
        var_v1_6 = spD8;
loop_92:
        temp_v0_2 = temp_s3_4 - var_s8;
        var_s2_3 = var_s5;
        if (var_s5 >= temp_v0_2) {
            var_s2_3 = temp_v0_2;
        }
        var_s1 = var_s4;
        if (var_s4 < var_v1_6) {

        } else {
            var_s1 = (s32) var_v1_6;
        }
        spD8 = var_v1_6;
        sp30 = var_s8;
        sp28 = var_s2_3;
        sp18 = var_s1;
        sp14 = (s32) var_s0;
        var_s0 += var_s1;
        if (ioctl(spA8->unk10->unk74->unk64, 0x3AA2, &sp8, 0, (s32) var_a4) < 0) {
            ErrorF(&local_0x5f0a0000 - 0xD88);
        }
        var_s8 += var_s2_3;
        var_a4 = var_s8 < temp_s3_4;
        var_v1_6 = spD8 - var_s1;
        if (var_a4 != 0) {
            goto loop_92;
        }
    }
}

void expReadImage12(s64 arg0, u64 arg1, u32 arg2, s64 arg3) {
    s64 spE0;
    u64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 sp98;
    s64 sp48;
    s64 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    u32 sp20;
    s16 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s16 *temp_a1;
    s16 *temp_v0;
    s16 *temp_v0_2;
    s16 temp_v1;
    s16 var_s0;
    s16 var_s6;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_s0;
    s32 temp_s2;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0_5;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_at;
    s32 var_at_10;
    s32 var_at_11;
    s32 var_at_3;
    s32 var_at_4;
    s32 var_at_5;
    s32 var_at_6;
    s32 var_at_8;
    s32 var_s1_2;
    s32 var_s2;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s5;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t1_2;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t3;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_6;
    s64 temp_a5_2;
    s64 temp_a6;
    s64 temp_a6_2;
    s64 var_a5;
    s64 var_a6;
    s64 var_ra;
    s64 var_s3;
    s64 var_t1_3;
    s64 var_t2_3;
    s64 var_t2_4;
    u16 *temp_a1_3;
    u16 *temp_v0_3;
    u16 *temp_v0_4;
    u16 *var_v0_4;
    u32 temp_s3;
    u32 temp_s7;
    u32 temp_v1_4;
    u64 var_a3;
    u64 var_s1;
    u64 var_t1;
    u64 var_v0_5;
    void *temp_s5;
    void *temp_v1_2;
    void *temp_v1_3;
    void *var_a0;
    void *var_a0_2;
    void *var_a2;
    void *var_a2_2;
    void *var_at_2;
    void *var_at_7;
    void *var_at_9;
    void *var_v0_3;
    void *var_v1;

    var_s3 = saved_reg_s3;
    var_t1 = arg1;
    spD0 = arg0;
    spB0 = arg3;
    temp_a0 = arg3->unk84;
    temp_t0 = (*(temp_a0 + (nfbWindowPrivateIndex * 4)))->unk14;
    temp_s5 = **(arg3->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    switch (temp_t0) {                              /* irregular */
    default:
        temp_s5->unk4052C = (s32) (temp_t0 | 0x1000);
        temp_s5->unk404D4 = 0;
        var_v0 = -1;
        var_at = *((dbcWindowPrivateIndex * 4) + temp_a0) * 8;
        break;
    case 13:
        var_at = 1;
        var_v0 = 0;
        temp_s5->unk4052C = 0x100B;
        temp_s5->unk404D4 = 3;
        break;
    case 12:
        var_at = 1;
        var_v0 = 0;
        temp_s5->unk4052C = 0x1008;
        temp_s5->unk404D4 = 0xF;
        break;
    case 14:
        var_at = 9;
        var_v0 = 0;
        temp_s5->unk4052C = 0x100B;
        temp_s5->unk404D4 = 0xC;
        break;
    }
    temp_s5->unk40530 = 0;
    temp_s5->unk4077C = (s32) (var_v0 & 0xFFFFFF);
    temp_s5->unk4077C = 3;
    temp_s5->unk4077C = var_at;
    temp_v1 = spD0->unk2;
    temp_a5 = (s32) (arg1 & 2) >> 1;
    spC0 = (s64) temp_a5;
    temp_a6 = spD0->unk6 - temp_v1;
    var_t3 = spD0->unk4 - spD0->unk0;
    temp_a5_2 = (temp_a5 + var_t3 + 1) & ~1;
    spE0 = temp_a6;
    sp48 = temp_a5_2;
    if ((temp_a5_2 * temp_a6) < 0x801) {
        var_s6 = temp_v1;
        var_s1 = arg1;
        temp_s5->unk40544 = 1;
        temp_s5->unk4077C = 0;
        if (spE0 > 0) {
            temp_s2 = (s32) (var_t3 + 1) >> 1;
            temp_a4 = temp_s2 * 4;
            temp_s7 = arg2 >> 1;
            spA8 = var_t3 * 2;
            spB8 = (s64) temp_s7;
            temp_s0 = temp_s7 * 2;
            sp40 = var_t3 & 1;
            M2C_TRAP_IF(temp_a4 == 0);
            spC8 = (s64) (0x4C00 / temp_a4);
loop_50:
            var_ra = spC8;
            if (spE0 < spC8) {
                var_ra = spE0;
            }
            temp_s5->unk6B000 = 0;
            temp_s5->unk40560 = temp_s2;
            temp_s5->unk4077C = (s32) spD0->unk0;
            temp_s5->unk4077C = (s32) var_s6;
            temp_s5->unk4077C = var_t3;
            temp_s5->unk4077C = (s32) var_ra;
            var_t0 = 0x6C00;
            if (!(temp_s5->unk6A040 & 1)) {
                do {
                    sp4 = 0;
                    sp4 = 1;
                    sp4 = 2;
                    sp4 = 3;
                    sp4 = 4;
                    sp4 = 5;
                    sp4 = 6;
                    sp4 = 7;
                    sp4 = 8;
                    sp4 = 9;
                } while (!(temp_s5->unk6A040 & 1));
                var_t0 = 0x6C00;
            }
            var_t2 = 0;
            temp_s5->unk6B000 = 0;
            if (spC0 != 0) {
                goto block_57;
            }
            if (sp40 == 0) {
                var_t2_2 = 0;
                if (var_ra > 0) {
                    var_t1_2 = 0;
loop_104:
                    var_at_2 = var_t1_2 + var_s1;
                    if (temp_s2 > 0) {
                        var_a2 = (var_t0 * 4) + temp_s5;
                        var_v0_2 = temp_s2 & 3;
                        if (var_v0_2 != 0) {
                            do {
                                var_a2 += 4;
                                var_at_2 += 4;
                                var_v0_2 -= 1;
                                var_at_2->unk-4 = (s32) var_a2->unk-4;
                            } while (var_v0_2 != 0);
                        }
                        var_v1 = var_at_2;
                        temp_t9 = temp_s2 >> 2;
                        var_v0_3 = var_a2;
                        if (temp_t9 != 0) {
                            if (temp_t9 >= 2) {
                                var_at_3 = var_v0_3->unk0;
                                do {
                                    var_v1 += 0x10;
                                    var_v1->unk-10 = var_at_3;
                                    var_v1->unk-C = (s32) var_v0_3->unk4;
                                    var_v1->unk-8 = (s32) var_v0_3->unk8;
                                    temp_at = var_v0_3->unkC;
                                    var_v0_3 += 0x10;
                                    var_v1->unk-4 = temp_at;
                                    var_at_3 = var_v0_3->unk0;
                                } while (var_v0_3 != ((((temp_s2 + var_t0) * 4) + temp_s5) - 0x10));
                                var_v1->unk0 = var_at_3;
                                var_v1->unk4 = (s32) var_v0_3->unk4;
                                var_v1->unk8 = (s32) var_v0_3->unk8;
                                var_v1->unkC = (s32) var_v0_3->unkC;
                            } else {
                                var_v1->unk0 = (s32) var_v0_3->unk0;
                                var_v1->unk4 = (s32) var_v0_3->unk4;
                                var_v1->unk8 = (s32) var_v0_3->unk8;
                                var_v1->unkC = (s32) var_v0_3->unkC;
                            }
                        }
                        var_at_4 = temp_s2;
                    } else {
                        var_at_4 = 0;
                    }
                    var_t2_2 += 1;
                    var_t1_2 += temp_s7 * 2;
                    var_t0 += var_at_4;
                    if (var_ra != var_t2_2) {
                        goto loop_104;
                    }
                    var_t2_3 = var_ra;
                } else {
                    var_t2_3 = 0;
                }
                var_a4 = var_t2_3 * spB8 * 2;
            } else {
block_57:
                var_t0_2 = 0;
                if (var_ra > 0) {
                    var_t1_3 = spA8;
                    var_a2_2 = temp_s5 + 0x1B000;
loop_60:
                    var_at_5 = 0;
                    var_a2_2 += 4;
                    var_v0_4 = var_t0_2 + var_s1;
                    temp_t8 = var_a2_2->unk-4;
                    sp0 = temp_t8;
                    if (var_t3 > 0) {
                        sp0 = temp_t8;
                        if (var_t3 & 1) {
                            if (0 == 2) {
                                var_a2_2 += 4;
                                sp0 = var_a2_2->unk-4;
                            }
                            var_v0_4 += 2;
                            var_at_5 = 1;
                            var_v0_4->unk-2 = (u16) (sp + 2)->unk-2;
                        }
                        if ((var_t3 >> 1) != 0) {
loop_71:
                            var_at_6 = var_at_5 + 1;
                            if (var_at_5 == 2) {
                                var_a2_2 += 4;
                                sp0 = var_a2_2->unk-4;
                                var_at_6 = 1;
                            }
                            *var_v0_4 = ((var_at_6 * 2) + sp)->unk-2;
                            if (var_at_6 == 2) {
                                var_a2_2 += 4;
                                var_at_6 = 0;
                                sp0 = var_a2_2->unk-4;
                            }
                            var_at_5 = var_at_6 + 1;
                            var_v0_4 += 4;
                            var_v0_4->unk-2 = (u16) ((var_at_5 * 2) + sp)->unk-2;
                            if (var_v0_4 != (var_t1_3 + var_s1)) {
                                goto loop_71;
                            }
                        }
                    }
                    var_t2 += 1;
                    var_t1_3 += temp_s0;
                    var_t0_2 += temp_s0;
                    if (var_ra != var_t2) {
                        goto loop_60;
                    }
                    var_t2_4 = var_ra;
                } else {
                    var_t2_4 = 0;
                }
                var_a4 = var_t2_4 * spB8 * 2;
            }
            var_s1 += var_a4;
            var_s6 += var_ra;
            temp_a6_2 = spE0 - var_ra;
            spE0 = temp_a6_2;
            if (temp_a6_2 > 0) {
                goto loop_50;
            }
        }
        return;
    }
    temp_s5->unk40544 = 1;
    temp_s5->unk4077C = (s32) spC0;
    sp8 = 0x152;
    spC = (s32) spD0->unk0;
    if (spC0 != 0) {
        temp_s5->unk6B000 = 0;
        temp_s5->unk40560 = 1;
        temp_s5->unk4077C = (s32) spD0->unk0;
        temp_s5->unk4077C = (s32) spD0->unk2;
        temp_s5->unk4077C = 1;
        temp_s5->unk4077C = (s32) spE0;
        if (!(temp_s5->unk6A040 & 1)) {
            do {
                sp38 = 0;
                sp38 = 1;
                sp38 = 2;
                sp38 = 3;
                sp38 = 4;
                sp38 = 5;
                sp38 = 6;
                sp38 = 7;
                sp38 = 8;
                sp38 = 9;
            } while (!(temp_s5->unk6A040 & 1));
        }
        temp_s5->unk6B000 = 0;
        var_s3 = sp98;
        if (spE0 > 0) {
            var_v0_5 = arg1;
            var_s3 = sp98;
            temp_t1 = (arg2 >> 1) * 2;
            var_at_7 = temp_s5 + 0x20000;
            if (spE0 & 1) {
                sp0 = temp_s5->unk1B000;
                var_at_7 = temp_s5 + 0x20004;
                *var_v0_5 = (s16) unksp1;
                var_v0_5 += temp_t1;
            }
            var_a3 = var_v0_5;
            temp_t0_2 = spE0 >> 1;
            if (temp_t0_2 != 0) {
                if (temp_t0_2 >= 2) {
                    var_at_8 = var_at_7->unk-5000;
                    temp_v1_2 = (spE0 * 4) + temp_s5 + 0x1FFF8;
                    var_a0 = var_at_7 - 8;
loop_18:
                    sp0 = var_at_8;
                    temp_v0 = temp_t1 + var_a3;
                    temp_a1 = temp_t1 + temp_v0;
                    *var_a3 = (s16) unksp1;
                    sp0 = var_a0->unk-4FF4;
                    var_a0 += 0x10;
                    *temp_v0 = (s16) unksp1;
                    var_at_8 = var_a0->unk-5000;
                    if (var_a0 != temp_v1_2) {
                        sp0 = var_at_8;
                        temp_v0_2 = temp_t1 + temp_a1;
                        var_a3 = temp_t1 + temp_v0_2;
                        *temp_a1 = (s16) unksp1;
                        sp0 = var_a0->unk-4FFC;
                        *temp_v0_2 = (s16) unksp1;
                        var_at_8 = var_a0->unk-4FF8;
                        if (var_a0 != (temp_v1_2 - 8)) {
                            goto loop_18;
                        }
                    } else {
                        var_a3 = (u64) temp_a1;
                        var_a0 -= 8;
                    }
                    sp0 = var_at_8;
                    *var_a3 = (s16) unksp1;
                    sp0 = var_a0->unk-4FF4;
                    *(temp_t1 + var_a3) = (s16) unksp1;
                } else {
                    sp0 = var_at_7->unk-5000;
                    *var_a3 = (s16) unksp1;
                    sp0 = var_at_7->unk-4FFC;
                    *(temp_t1 + var_a3) = (s16) unksp1;
                }
            }
        }
        var_t3 -= 1;
        var_t1 = arg1 + 2;
        spC += 1;
        temp_s5->unk40544 = 1;
        temp_s5->unk4077C = 0;
    }
    if (var_t3 & 1) {
        sp98 = var_s3;
        temp_s5->unk6B000 = 0;
        temp_s5->unk40560 = 1;
        temp_s5->unk4077C = (s32) ((spC + var_t3) - 1);
        temp_s5->unk4077C = (s32) spD0->unk2;
        temp_s5->unk4077C = 1;
        temp_s5->unk4077C = (s32) spE0;
        if (!(temp_s5->unk6A040 & 1)) {
            do {
                sp3C = 0;
                sp3C = 1;
                sp3C = 2;
                sp3C = 3;
                sp3C = 4;
                sp3C = 5;
                sp3C = 6;
                sp3C = 7;
                sp3C = 8;
                sp3C = 9;
            } while (!(temp_s5->unk6A040 & 1));
        }
        temp_s5->unk6B000 = 0;
        var_s3 = sp98;
        if (spE0 > 0) {
            var_s3 = sp98;
            temp_t2 = (arg2 >> 1) * 2;
            var_at_9 = temp_s5 + 0x20000;
            var_v0_6 = ((var_t3 * 2) + var_t1) & ~3;
            if (spE0 & 1) {
                sp0 = temp_s5->unk1B000;
                var_at_9 = temp_s5 + 0x20004;
                *var_v0_6 = (u16) sp0;
                var_v0_6 += temp_t2;
            }
            var_a3_2 = var_v0_6;
            temp_a1_2 = spE0 >> 1;
            if (temp_a1_2 != 0) {
                if (temp_a1_2 >= 2) {
                    var_at_10 = var_at_9->unk-5000;
                    temp_v1_3 = (spE0 * 4) + temp_s5 + 0x1FFF8;
                    var_a0_2 = var_at_9 - 8;
loop_33:
                    sp0 = var_at_10;
                    temp_v0_3 = temp_t2 + var_a3_2;
                    temp_a1_3 = temp_t2 + temp_v0_3;
                    *var_a3_2 = (u16) sp0;
                    sp0 = var_a0_2->unk-4FF4;
                    var_a0_2 += 0x10;
                    *temp_v0_3 = (u16) sp0;
                    var_at_10 = var_a0_2->unk-5000;
                    if (var_a0_2 != temp_v1_3) {
                        sp0 = var_at_10;
                        temp_v0_4 = temp_t2 + temp_a1_3;
                        var_a3_2 = temp_t2 + temp_v0_4;
                        *temp_a1_3 = (u16) sp0;
                        sp0 = var_a0_2->unk-4FFC;
                        *temp_v0_4 = (u16) sp0;
                        var_at_10 = var_a0_2->unk-4FF8;
                        if (var_a0_2 != (temp_v1_3 - 8)) {
                            goto loop_33;
                        }
                    } else {
                        var_a3_2 = (s32) temp_a1_3;
                        var_a0_2 -= 8;
                    }
                    sp0 = var_at_10;
                    *var_a3_2 = (u16) sp0;
                    sp0 = var_a0_2->unk-4FF4;
                    *(temp_t2 + var_a3_2) = (u16) sp0;
                } else {
                    sp0 = var_at_9->unk-5000;
                    *var_a3_2 = (u16) sp0;
                    sp0 = var_at_9->unk-4FFC;
                    *(temp_t2 + var_a3_2) = (u16) sp0;
                }
            }
        }
        var_t3 -= 1;
    }
    if (var_t3 == 0) {
        return;
    }
    sp24 = 1;
    sp10 = var_t3;
    temp_v1_4 = arg2 >> 2;
    temp_v0_5 = var_t3 >> 1;
    var_at_11 = temp_v1_4 - temp_v0_5;
    sp1C = 4;
    if (var_at_11 < 0) {
        var_at_11 = 0;
    }
    if (var_at_11 != 0) {
        temp_at_2 = temp_v1_4 * 2;
        sp20 = temp_v1_4;
        M2C_TRAP_IF(temp_at_2 == 0);
        var_s4 = 0x10000 / temp_at_2;
        sp1C = 6;
        if (var_s4 >= 0x45) {
            sp98 = var_s3;
            var_s4 = 0x44;
        }
        var_s5 = var_s4 * temp_at_2;
        var_a5 = spE0 - 1;
        sp98 = var_s3;
        var_s3_2 = ((var_a5 * temp_at_2) + sp48) * 2;
    } else {
        var_s4 = 0x10000 / sp48;
        var_a5 = spE0;
        var_s5 = var_s4 * sp48;
        sp20 = 0;
        sp98 = var_s3;
        M2C_TRAP_IF(sp48 == 0);
        var_s3_2 = var_a5 * sp48 * 2;
    }
    temp_s3 = var_s3_2 + var_t1;
    var_a6 = var_t1 < temp_s3;
    sp2C = temp_v0_5;
    var_s0 = spD0->unk2;
    if (var_a6 != 0) {
loop_82:
        temp_at_3 = (s32) (temp_s3 - var_t1) >> 1;
        temp_a7 = var_s5 < temp_at_3;
        if (temp_a7 != 0) {
            var_s2 = var_s5;
        } else {
            var_s2 = temp_at_3;
        }
        temp_a4_2 = var_s4 < spE0;
        var_s1_2 = var_s4;
        if (temp_a4_2 != 0) {

        } else {
            var_s1_2 = (s32) spE0;
        }
        spD8 = var_t1;
        sp18 = var_s1_2;
        sp14 = (s32) var_s0;
        sp28 = var_s2 * 2;
        sp30 = (s32) spD8;
        if (ioctl(spB0->unk10->unk74->unk64, 0x3AA2, &sp8, 0, temp_a4_2, var_a5, var_a6, temp_a7) < 0) {
            ErrorF(&local_0x5f0a0000 - 0xD88);
        }
        var_s0 += var_s1_2;
        var_a5 = var_s2 * 2;
        var_t1 = var_a5 + spD8;
        var_a6 = spE0 - var_s1_2;
        spE0 = var_a6;
        if (var_t1 < temp_s3) {
            goto loop_82;
        }
    }
}

void expReadImage12TC(void *arg0, s16 *arg1, u32 arg2, void *arg3) {
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    u64 sp48;
    s64 sp40;
    s64 sp38;
    s16 *var_a3_2;
    s16 *var_a5;
    s16 *var_s6;
    s16 *var_v0_2;
    s16 var_s3_2;
    s16 var_s8;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_lo;
    s32 temp_s2;
    s32 temp_s5;
    s32 temp_t3;
    s32 var_a0;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    s32 var_s1;
    s32 var_s3;
    s32 var_s5;
    s32 var_s7;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t2_3;
    s32 var_v0;
    s32 var_v0_4;
    s32 var_v1;
    s64 temp_v0;
    s64 var_a0_2;
    s64 var_a5_2;
    s64 var_t0;
    s64 var_t1;
    u32 temp_at;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_t8;
    void *temp_v1;
    void *var_a3;
    void *var_a3_3;
    void *var_v0_3;

    temp_t8 = **(arg3->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    temp_t8->unk4052C = 0x1002;
    temp_t8->unk404D4 = 0;
    temp_t8->unk40530 = 0;
    temp_t8->unk4077C = 0xFFFFFF;
    temp_t8->unk4077C = 3;
    temp_t8->unk4077C = (s32) (*(arg3->unk84 + (dbcWindowPrivateIndex * 4)) * 8);
    temp_t8->unk40544 = 0;
    temp_t8->unk4077C = 0;
    temp_at = arg2 >> 1;
    spB0 = (s64) temp_at;
    temp_s2 = arg0->unk4 - arg0->unk0;
    var_s6 = arg1;
    var_s7 = arg0->unk6 - arg0->unk2;
    if (temp_at != 0) {
        var_s3 = var_s7 * spB0;
    } else {
        var_s3 = temp_s2 * var_s7;
    }
    if (var_s3 < 0x801) {
        var_a5 = arg1;
        var_v0 = 0;
        temp_a0 = spB0 - temp_s2;
        var_s3_2 = arg0->unk2;
        if (temp_a0 > 0) {
            var_v0 = temp_a0;
        }
        if (var_s7 > 0) {
            temp_lo = 0x1300 / temp_s2;
            M2C_TRAP_IF(temp_s2 == 0);
loop_8:
            var_t2 = var_s7;
            if (var_s7 >= temp_lo) {
                var_t2 = temp_lo;
            }
            temp_t8->unk6B000 = 0;
            temp_t8->unk40560 = temp_s2;
            temp_t8->unk4077C = (s32) arg0->unk0;
            temp_t8->unk4077C = (s32) var_s3_2;
            temp_t8->unk4077C = temp_s2;
            temp_t8->unk4077C = var_t2;
            var_s7 -= var_t2;
            if (!(temp_t8->unk6A040 & 1)) {
                do {

                } while (!(temp_t8->unk6A040 & 1));
            }
            var_a0 = 0x6C00;
            temp_t8->unk6B000 = 0;
            if (var_t2 > 0) {
                var_a6 = 0;
loop_20:
                var_v0_2 = var_a5;
                if (temp_s2 > 0) {
                    var_a3 = (var_a0 * 4) + temp_t8;
                    if (temp_s2 & 1) {
                        var_a3 += 4;
                        var_v0_2 += 2;
                        var_v0_2->unk-2 = (s16) ((var_a3->unk-4 & 0xF) | (((u32) (var_a3->unk-4 & 0xF0000) >> 8) | ((u32) (var_a3->unk-4 & 0xF00) >> 4)));
                    }
                    if ((temp_s2 >> 1) != 0) {
                        var_a3_2 = var_v0_2;
                        var_v0_3 = var_a3;
                        do {
                            *var_a3_2 = (var_v0_3->unk0 & 0xF) | (((u32) (var_v0_3->unk0 & 0xF0000) >> 8) | ((u32) (var_v0_3->unk0 & 0xF00) >> 4));
                            var_a3_2 += 4;
                            temp_a2 = var_v0_3->unk4;
                            var_v0_3 += 8;
                            var_a3_2->unk-2 = (s16) ((temp_a2 & 0xF) | (((u32) (var_v0_3->unk-4 & 0xF0000) >> 8) | ((u32) (var_v0_3->unk-4 & 0xF00) >> 4)));
                        } while (var_v0_3 != (((temp_s2 + var_a0) * 4) + temp_t8));
                    }
                    var_v0_4 = temp_s2;
                } else {
                    var_v0_4 = 0;
                }
                var_a6 += 1;
                var_a0 += var_v0_4;
                var_a5 = (var_v0_4 * 2) + var_a5 + (var_v0 * 2);
                if (var_t2 != var_a6) {
                    goto loop_20;
                }
            }
            var_s3_2 += var_t2;
            if (var_s7 > 0) {
                goto loop_8;
            }
        }
        return;
    }
    temp_v0 = Xalloc(0x20000);
    spA8 = temp_v0;
    if (temp_v0 != 0) {
        var_s8 = arg0->unk2;
        if (spB0 == 0) {
            spB0 = (s64) temp_s2;
        }
        spA0 = (s64) arg3;
        temp_v1 = (var_s3 * 2) + arg1;
        sp48 = (u64) temp_v1;
        if ((u32) arg1 < (u32) temp_v1) {
            var_s5 = temp_s2;
            if (temp_s2 < 0) {
                var_s5 = 0;
            }
            M2C_TRAP_IF(temp_s2 == 0);
            temp_s5 = var_s5 * 4;
            sp38 = (s64) (&local_0x5f0a0000 - 0xD88);
            sp40 = spA8 + (temp_s2 * 4);
            var_a4 = 0x8000 / temp_s2;
            sp98 = (s64) var_a4;
loop_33:
            var_s1 = var_s7;
            if (sp98 < var_s7) {
                var_s1 = (s32) sp98;
            }
            var_t2_2 = 0;
            if (ioctl(spA0->unk10->unk74->unk64, 0x3AA2, sp, 0, var_a4, (s64) (s32) var_s8, (s64) var_s1, temp_s2 * var_s1 * 4, (s32) spA8) < 0) {
                ErrorF((void *) sp38);
                var_t2_2 = 0;
            }
            var_t0 = spA8;
            var_s8 += var_s1;
            if (var_s1 > 0) {
                var_t1 = sp40;
                var_a7 = 0;
loop_45:
                temp_a1 = var_a7 + var_s6;
                var_a5_2 = var_t0;
                if (temp_s2 >= 1) {
                    var_a3_3 = temp_a1;
                    if (temp_s2 & 1) {
                        temp_a4 = *var_a5_2;
                        var_a5_2 += 4;
                        temp_a1_2 = temp_a1 + 2;
                        temp_a1_2->unk-2 = (s16) ((temp_a4 & 0xF) | (((u32) (0xF0000 & temp_a4) >> 8) | ((u32) (temp_a4 & 0xF00) >> 4)));
                        var_a3_3 = temp_a1_2;
                    }
                    temp_t3 = temp_s2 >> 1;
                    var_a0_2 = var_a5_2;
                    if (temp_t3 != 0) {
                        if (temp_t3 >= 2) {
                            var_v1 = var_a0_2->unk0;
                            do {
                                var_a3_3 += 4;
                                var_a3_3->unk-4 = (s16) ((var_v1 & 0xF) | (((u32) (0xF0000 & var_v1) >> 8) | ((u32) (var_v1 & 0xF00) >> 4)));
                                temp_at_2 = var_a0_2->unk4;
                                var_a0_2 += 8;
                                var_a3_3->unk-2 = (s16) ((temp_at_2 & 0xF) | (((u32) (0xF0000 & temp_at_2) >> 8) | ((u32) (temp_at_2 & 0xF00) >> 4)));
                                var_v1 = var_a0_2->unk0;
                            } while (var_a0_2 != (var_t1 - 8));
                            var_a3_3->unk0 = (s16) ((var_v1 & 0xF) | (((u32) (0xF0000 & var_v1) >> 8) | ((u32) (var_v1 & 0xF00) >> 4)));
                            temp_a2_2 = var_a0_2->unk4;
                            var_a3_3->unk2 = (s16) ((temp_a2_2 & 0xF) | (((u32) (0xF0000 & temp_a2_2) >> 8) | ((u32) (temp_a2_2 & 0xF00) >> 4)));
                        } else {
                            temp_a2_3 = var_a0_2->unk0;
                            var_a3_3->unk0 = (s16) ((temp_a2_3 & 0xF) | (((u32) (0xF0000 & temp_a2_3) >> 8) | ((u32) (temp_a2_3 & 0xF00) >> 4)));
                            temp_at_3 = var_a0_2->unk4;
                            var_a3_3->unk2 = (s16) ((temp_at_3 & 0xF) | (((u32) (0xF0000 & temp_at_3) >> 8) | ((u32) (temp_at_3 & 0xF00) >> 4)));
                        }
                    }
                }
                var_t2_2 += 1;
                var_a7 += spB0 * 2;
                var_t1 += temp_s5;
                var_t0 += temp_s5;
                if (var_s1 != var_t2_2) {
                    goto loop_45;
                }
                var_t2_3 = var_s1;
            } else {
                var_t2_3 = 0;
            }
            var_a4 = var_t2_3 * spB0 * 2;
            var_s6 += var_a4;
            var_s7 -= var_s1;
            if ((u32) var_s6 < sp48) {
                goto loop_33;
            }
        }
        Xfree(spA8);
        return;
    }
    ErrorF(&local_0x5f0a0000 - 0xD18);
}

void expReadImage24(void *arg0, void *arg1, u32 arg2, void *arg3) {
    s64 spA0;
    s64 sp90;
    s64 sp88;
    s32 sp30;
    u32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    u32 sp18;
    s16 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s16 var_s1;
    s16 var_s3;
    s32 temp_at;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_at;
    s32 var_s2;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s6;
    s32 var_t0;
    s32 var_t2;
    s32 var_t9;
    s32 var_v0;
    s32 var_v0_3;
    u32 temp_s4;
    u32 temp_v1;
    u32 var_s2_2;
    u32 var_s5;
    void *temp_s1;
    void *var_a1;
    void *var_a3;
    void *var_a5;
    void *var_s0;
    void *var_t0_2;
    void *var_v0_2;
    void *var_v1;

    var_a7 = 0;
    temp_s1 = **(arg3->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    temp_s1->unk4052C = 0x1004;
    temp_s1->unk404D4 = 0;
    temp_s1->unk40530 = 0;
    temp_s1->unk4077C = 0xFFFFFF;
    temp_s1->unk4077C = 3;
    temp_s1->unk4077C = 0;
    temp_s1->unk40544 = 0;
    temp_s1->unk4077C = 0;
    sp0 = 0x152;
    sp4 = (s32) arg0->unk0;
    var_s0 = arg1;
    sp14 = 4;
    temp_v1 = arg2 >> 2;
    sp1C = 1;
    temp_t1 = arg0->unk4 - arg0->unk0;
    sp8 = temp_t1;
    temp_t2 = temp_v1 - temp_t1;
    var_t0 = temp_t2;
    var_s2 = arg0->unk6 - arg0->unk2;
    if (temp_t2 < 0) {
        var_t0 = 0;
    }
    temp_lo = temp_t1 * var_s2;
    if (var_t0 != 0) {
        M2C_TRAP_IF(temp_v1 == 0);
        var_a7 = temp_t2;
        sp18 = temp_v1;
        var_s5 = 0x8000U / temp_v1;
        sp14 = 6;
        if ((s32) var_s5 >= 0x45) {
            var_s5 = 0x44;
        }
        var_s6 = var_s5 * temp_v1;
        var_s4 = (((var_s2 - 1) * temp_v1) + temp_t1) * 4;
    } else {
        var_s5 = (u32) (0x8000 / temp_t1);
        sp18 = 0;
        M2C_TRAP_IF(temp_t1 == 0);
        var_s4 = temp_lo * 4;
        var_s6 = temp_t1 * var_s5;
    }
    temp_s4 = var_s4 + arg1;
    spA0 = temp_s1 + 0x40000;
    if (temp_lo < 0x401) {
        var_s3 = arg0->unk2;
        var_t0_2 = arg1;
        if (var_s2 > 0) {
            temp_lo_2 = 0x1300 / temp_t1;
            M2C_TRAP_IF(temp_t1 == 0);
loop_9:
            var_t9 = var_s2;
            if (var_s2 >= temp_lo_2) {
                var_t9 = temp_lo_2;
            }
            temp_s1->unk6B000 = 0;
            spA0->unk560 = temp_t1;
            spA0->unk77C = (s32) arg0->unk0;
            spA0->unk77C = (s32) var_s3;
            spA0->unk77C = temp_t1;
            spA0->unk77C = var_t9;
            var_s2 -= var_t9;
            if (!(temp_s1->unk6A040 & 1)) {
                do {
                    sp30 = 0;
                    sp30 = 1;
                    sp30 = 2;
                    sp30 = 3;
                    sp30 = 4;
                    sp30 = 5;
                    sp30 = 6;
                    sp30 = 7;
                    sp30 = 8;
                    sp30 = 9;
                } while (!(temp_s1->unk6A040 & 1));
            }
            var_a7_2 = 0x6C00;
            temp_s1->unk6B000 = 0;
            if (var_t9 > 0) {
                var_t2 = 0;
loop_23:
                var_a3 = var_t0_2;
                if (temp_t1 > 0) {
                    var_a1 = (var_a7_2 * 4) + temp_s1;
                    var_v0 = temp_t1 & 3;
                    if (var_v0 != 0) {
                        do {
                            var_a1 += 4;
                            var_a3 += 4;
                            var_v0 -= 1;
                            var_a3->unk-4 = (s32) var_a1->unk-4;
                        } while (var_v0 != 0);
                    }
                    var_v1 = var_a3;
                    temp_t8 = temp_t1 >> 2;
                    var_v0_2 = var_a1;
                    if (temp_t8 != 0) {
                        if (temp_t8 >= 2) {
                            var_at = var_v0_2->unk0;
                            do {
                                var_v1 += 0x10;
                                var_v1->unk-10 = var_at;
                                var_v1->unk-C = (s32) var_v0_2->unk4;
                                var_v1->unk-8 = (s32) var_v0_2->unk8;
                                temp_at = var_v0_2->unkC;
                                var_v0_2 += 0x10;
                                var_v1->unk-4 = temp_at;
                                var_at = var_v0_2->unk0;
                            } while (var_v0_2 != ((((temp_t1 + var_a7_2) * 4) + temp_s1) - 0x10));
                            var_v1->unk0 = var_at;
                            var_v1->unk4 = (s32) var_v0_2->unk4;
                            var_v1->unk8 = (s32) var_v0_2->unk8;
                            var_v1->unkC = (s32) var_v0_2->unkC;
                        } else {
                            var_v1->unk0 = (s32) var_v0_2->unk0;
                            var_v1->unk4 = (s32) var_v0_2->unk4;
                            var_v1->unk8 = (s32) var_v0_2->unk8;
                            var_v1->unkC = (s32) var_v0_2->unkC;
                        }
                    }
                    var_v0_3 = temp_t1;
                } else {
                    var_v0_3 = 0;
                }
                var_t2 += 1;
                var_a7_2 += var_v0_3;
                var_t0_2 = (var_v0_3 * 4) + var_t0_2 + (var_a7 * 4);
                if (var_t9 != var_t2) {
                    goto loop_23;
                }
            }
            var_s3 += var_t9;
            if (var_s2 > 0) {
                goto loop_9;
            }
        }
        return;
    }
    var_a4 = (u32) arg1 < temp_s4;
    sp24 = temp_t1;
    var_s1 = arg0->unk2;
    if (var_a4 != 0) {
        sp88 = (s64) var_s2;
        var_a5 = &local_0x5f0a0000 - 0xD88;
        sp90 = (s64) var_a5;
loop_34:
        temp_v0 = (s32) (temp_s4 - var_s0) >> 2;
        if (var_s6 < temp_v0) {
            var_s3_2 = var_s6;
        } else {
            var_s3_2 = temp_v0;
        }
        var_s2_2 = var_s5;
        if ((s32) var_s5 < sp88) {

        } else {
            var_s2_2 = (u32) sp88;
        }
        sp28 = (u32) var_s0;
        sp10 = (s32) var_s2_2;
        spC = (s32) var_s1;
        sp20 = var_s3_2 * 4;
        if (ioctl(arg3->unk10->unk74->unk64, 0x3AA2, sp, 0, var_a4, (s64) var_a5) < 0) {
            ErrorF((void *) sp90);
        }
        var_s1 += var_s2_2;
        var_a4 = var_s3_2 * 4;
        var_s0 += var_a4;
        var_a5 = sp88 - var_s2_2;
        sp88 = (s64) var_a5;
        if ((u32) var_s0 < temp_s4) {
            goto loop_34;
        }
    }
}

void expDrawMonoImage(s64 arg0, s64 arg1, u64 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, void *arg7) {
    u64 sp198;
    s64 sp190;
    s64 sp188;
    s64 sp180;
    s64 sp178;
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
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s32 sp24;
    s16 sp22;
    s16 sp20;
    s16 sp1E;
    s16 sp1C;
    s16 sp1A;
    s16 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s16 spE;
    s16 spC;
    u16 spA;
    u16 sp8;
    s16 sp6;
    s16 sp4;
    u16 sp2;
    u16 sp0;
    s16 *temp_a0_28;
    s16 *temp_a0_29;
    s16 *temp_a0_30;
    s16 *temp_a0_31;
    s16 *temp_a0_32;
    s16 *temp_a0_33;
    s16 *temp_a0_34;
    s16 *temp_a0_35;
    s16 *temp_a0_36;
    s16 *temp_a0_37;
    s16 *temp_a0_38;
    s16 *temp_a0_39;
    s16 *temp_a0_40;
    s16 *temp_a0_41;
    s16 *temp_a0_42;
    s16 *temp_a0_43;
    s16 *temp_a0_44;
    s16 *temp_a0_45;
    s16 *temp_a1_29;
    s16 *temp_a1_30;
    s16 *temp_a1_31;
    s16 *temp_a1_32;
    s16 *temp_a1_33;
    s16 *temp_a1_35;
    s16 *temp_a3_27;
    s16 *temp_a3_28;
    s16 *temp_a3_29;
    s16 *temp_a3_34;
    s16 *temp_a3_35;
    s16 *temp_a3_39;
    s16 *temp_a3_40;
    s16 *temp_a4_12;
    s16 *temp_a4_13;
    s16 *temp_a5_10;
    s16 *temp_a5_11;
    s16 *temp_a5_12;
    s16 *temp_a5_13;
    s16 *temp_a5_14;
    s16 *temp_a5_15;
    s16 *temp_a5_16;
    s16 *temp_a5_17;
    s16 *temp_a5_18;
    s16 *temp_a5_19;
    s16 *temp_a5_20;
    s16 *temp_a5_21;
    s16 *temp_a5_22;
    s16 *temp_a5_23;
    s16 *temp_a5_24;
    s16 *temp_a5_26;
    s16 *temp_a5_27;
    s16 *temp_a5_28;
    s16 *temp_a5_29;
    s16 *temp_a5_30;
    s16 *temp_a5_31;
    s16 *temp_a5_32;
    s16 *temp_a5_33;
    s16 *temp_a5_34;
    s16 *temp_a5_35;
    s16 *temp_a5_36;
    s16 *temp_a5_37;
    s16 *temp_a5_38;
    s16 *temp_a5_39;
    s16 *temp_a5_40;
    s16 *temp_a5_41;
    s16 *temp_a5_7;
    s16 *temp_a5_9;
    s16 *temp_a6_3;
    s16 *temp_a7_7;
    s16 *temp_a7_8;
    s16 *temp_a7_9;
    s16 *temp_t0_5;
    s16 *temp_t0_6;
    s16 *temp_v1_26;
    s16 *temp_v1_27;
    s16 *temp_v1_30;
    s16 *temp_v1_31;
    s16 *var_a1_30;
    s16 *var_a1_31;
    s16 *var_a1_32;
    s16 *var_a1_34;
    s16 *var_a1_35;
    s16 *var_a1_36;
    s16 *var_a1_38;
    s16 *var_a1_39;
    s16 *var_a1_40;
    s16 *var_a1_42;
    s16 *var_a1_43;
    s16 *var_a1_46;
    s16 *var_a1_47;
    s16 *var_a1_48;
    s16 *var_a1_50;
    s16 *var_a1_51;
    s16 *var_a2_12;
    s16 *var_a2_13;
    s16 *var_a2_16;
    s16 *var_a3_30;
    s16 *var_a3_31;
    s16 *var_a3_32;
    s16 *var_a3_33;
    s16 *var_a3_39;
    s16 *var_a3_40;
    s16 *var_a3_41;
    s16 *var_a3_47;
    s16 *var_a3_48;
    s16 *var_a3_49;
    s16 *var_a4_20;
    s16 *var_a4_21;
    s16 *var_a4_23;
    s16 *var_a4_24;
    s16 *var_a5_11;
    s16 *var_a6_13;
    s16 *var_a6_14;
    s16 *var_a6_16;
    s16 *var_a6_17;
    s16 *var_a7_14;
    s16 *var_a7_15;
    s16 *var_a7_16;
    s16 *var_a7_18;
    s16 *var_a7_19;
    s16 *var_t0_11;
    s16 *var_t0_8;
    s16 *var_v1_37;
    s16 *var_v1_41;
    s16 *var_v1_45;
    s16 *var_v1_52;
    s16 temp_s0;
    s16 temp_s5_11;
    s16 temp_t8;
    s16 temp_v0_41;
    s16 temp_v0_42;
    s16 temp_v0_43;
    s16 temp_v0_44;
    s16 temp_v0_45;
    s16 temp_v0_46;
    s16 temp_v0_47;
    s16 temp_v0_48;
    s16 temp_v0_49;
    s16 temp_v0_50;
    s16 temp_v0_51;
    s16 temp_v0_52;
    s16 temp_v0_53;
    s16 temp_v0_54;
    s16 temp_v0_55;
    s16 temp_v0_56;
    s16 temp_v0_57;
    s16 temp_v0_58;
    s16 temp_v0_59;
    s16 temp_v0_60;
    s16 temp_v1_28;
    s16 temp_v1_32;
    s16 var_a1_44;
    s16 var_a1_52;
    s16 var_a2_14;
    s16 var_a6_11;
    s16 var_a6_12;
    s16 var_a6_15;
    s16 var_a7_12;
    s16 var_a7_13;
    s16 var_a7_17;
    s16 var_gp;
    s16 var_ra_5;
    s16 var_t0_10;
    s16 var_t0_6;
    s16 var_t0_7;
    s16 var_t1_10;
    s16 var_t1_11;
    s16 var_t1_12;
    s16 var_t1_13;
    s16 var_t1_2;
    s16 var_t1_9;
    s16 var_t8_10;
    s16 var_t8_4;
    s16 var_v0_42;
    s16 var_v0_43;
    s16 var_v0_44;
    s16 var_v0_45;
    s16 var_v0_46;
    s16 var_v0_47;
    s16 var_v0_48;
    s16 var_v0_49;
    s16 var_v0_50;
    s16 var_v0_51;
    s16 var_v0_52;
    s16 var_v0_53;
    s16 var_v0_54;
    s16 var_v0_55;
    s16 var_v0_56;
    s16 var_v0_57;
    s16 var_v1_46;
    s16 var_v1_47;
    s16 var_v1_48;
    s16 var_v1_53;
    s16 var_v1_54;
    s16 var_v1_55;
    s32 *temp_a0_27;
    s32 *temp_a1_27;
    s32 *temp_a1_28;
    s32 *temp_a3_22;
    s32 *temp_a3_23;
    s32 *temp_a4_8;
    s32 *temp_a4_9;
    s32 *temp_a7_5;
    s32 *temp_a7_6;
    s32 *temp_t2_16;
    s32 *temp_t2_17;
    s32 *temp_t2_18;
    s32 *temp_t2_19;
    s32 *temp_t2_20;
    s32 *temp_t2_21;
    s32 *temp_t2_22;
    s32 *temp_t2_23;
    s32 *temp_t2_24;
    s32 *temp_t2_25;
    s32 *temp_t2_26;
    s32 *temp_t2_27;
    s32 *temp_t2_28;
    s32 *temp_t2_29;
    s32 *temp_t2_30;
    s32 *temp_t2_31;
    s32 *var_a0_31;
    s32 *var_a0_32;
    s32 *var_a0_33;
    s32 *var_a1_25;
    s32 *var_a1_26;
    s32 *var_a1_28;
    s32 *var_a1_29;
    s32 *var_a1_5;
    s32 *var_a2_2;
    s32 *var_a3_21;
    s32 *var_a3_22;
    s32 *var_a3_23;
    s32 *var_a3_25;
    s32 *var_a4;
    s32 *var_a4_16;
    s32 *var_a5_2;
    s32 *var_a6;
    s32 *var_a6_10;
    s32 *var_a6_2;
    s32 *var_a7_10;
    s32 *var_a7_9;
    s32 *var_s1_2;
    s32 *var_s3_2;
    s32 *var_s3_3;
    s32 *var_s3_5;
    s32 *var_s3_6;
    s32 *var_s3_7;
    s32 *var_s3_8;
    s32 *var_s4_3;
    s32 *var_s4_5;
    s32 *var_s4_6;
    s32 *var_s4_7;
    s32 *var_s4_8;
    s32 *var_t3_2;
    s32 *var_t3_4;
    s32 *var_v0_12;
    s32 *var_v0_16;
    s32 *var_v0_30;
    s32 *var_v1;
    s32 *var_v1_10;
    s32 *var_v1_11;
    s32 *var_v1_12;
    s32 *var_v1_13;
    s32 *var_v1_22;
    s32 *var_v1_24;
    s32 *var_v1_2;
    s32 *var_v1_3;
    s32 *var_v1_5;
    s32 *var_v1_6;
    s32 *var_v1_7;
    s32 *var_v1_8;
    s32 temp_a0;
    s32 temp_a0_10;
    s32 temp_a0_14;
    s32 temp_a0_15;
    s32 temp_a0_17;
    s32 temp_a0_18;
    s32 temp_a0_19;
    s32 temp_a0_20;
    s32 temp_a0_21;
    s32 temp_a0_25;
    s32 temp_a0_26;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_6;
    s32 temp_a0_8;
    s32 temp_a0_9;
    s32 temp_a1;
    s32 temp_a1_10;
    s32 temp_a1_11;
    s32 temp_a1_12;
    s32 temp_a1_13;
    s32 temp_a1_14;
    s32 temp_a1_19;
    s32 temp_a1_20;
    s32 temp_a1_21;
    s32 temp_a1_22;
    s32 temp_a1_23;
    s32 temp_a1_24;
    s32 temp_a1_25;
    s32 temp_a1_26;
    s32 temp_a1_2;
    s32 temp_a1_34;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a1_8;
    s32 temp_a1_9;
    s32 temp_a2;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_12;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 temp_a3_10;
    s32 temp_a3_11;
    s32 temp_a3_12;
    s32 temp_a3_13;
    s32 temp_a3_15;
    s32 temp_a3_16;
    s32 temp_a3_21;
    s32 temp_a3_33;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_7;
    s32 temp_a3_8;
    s32 temp_a3_9;
    s32 temp_a4;
    s32 temp_a4_10;
    s32 temp_a4_11;
    s32 temp_a4_14;
    s32 temp_a4_15;
    s32 temp_a4_2;
    s32 temp_a4_4;
    s32 temp_a4_6;
    s32 temp_a4_7;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_gp;
    s32 temp_gp_2;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 temp_ra_4;
    s32 temp_ra_5;
    s32 temp_ra_6;
    s32 temp_ra_7;
    s32 temp_ra_8;
    s32 temp_s0_10;
    s32 temp_s0_11;
    s32 temp_s0_12;
    s32 temp_s0_13;
    s32 temp_s0_14;
    s32 temp_s0_16;
    s32 temp_s0_2;
    s32 temp_s0_4;
    s32 temp_s0_5;
    s32 temp_s0_6;
    s32 temp_s0_7;
    s32 temp_s0_8;
    s32 temp_s1;
    s32 temp_s1_11;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s1_5;
    s32 temp_s1_6;
    s32 temp_s1_7;
    s32 temp_s1_8;
    s32 temp_s1_9;
    s32 temp_s2;
    s32 temp_s2_10;
    s32 temp_s2_2;
    s32 temp_s2_3;
    s32 temp_s2_4;
    s32 temp_s2_5;
    s32 temp_s2_7;
    s32 temp_s2_8;
    s32 temp_s2_9;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_s3_4;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s4_3;
    s32 temp_s5;
    s32 temp_s5_10;
    s32 temp_s5_2;
    s32 temp_s5_3;
    s32 temp_s5_4;
    s32 temp_s5_5;
    s32 temp_s5_6;
    s32 temp_s5_7;
    s32 temp_s5_8;
    s32 temp_s5_9;
    s32 temp_s6;
    s32 temp_s6_10;
    s32 temp_s6_11;
    s32 temp_s6_2;
    s32 temp_s6_3;
    s32 temp_s6_4;
    s32 temp_s6_5;
    s32 temp_s6_6;
    s32 temp_s6_7;
    s32 temp_s6_8;
    s32 temp_s6_9;
    s32 temp_s7;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t0_4;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t1_5;
    s32 temp_t2;
    s32 temp_t2_10;
    s32 temp_t2_11;
    s32 temp_t2_14;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_t2_5;
    s32 temp_t2_6;
    s32 temp_t2_8;
    s32 temp_t2_9;
    s32 temp_t3;
    s32 temp_t3_10;
    s32 temp_t3_11;
    s32 temp_t3_2;
    s32 temp_t3_3;
    s32 temp_t3_4;
    s32 temp_t3_5;
    s32 temp_t3_7;
    s32 temp_t3_9;
    s32 temp_t8_10;
    s32 temp_t8_12;
    s32 temp_t8_14;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t8_4;
    s32 temp_t8_5;
    s32 temp_t8_6;
    s32 temp_t8_7;
    s32 temp_t8_8;
    s32 temp_t8_9;
    s32 temp_t9;
    s32 temp_t9_10;
    s32 temp_t9_11;
    s32 temp_t9_13;
    s32 temp_t9_14;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_t9_5;
    s32 temp_t9_7;
    s32 temp_t9_8;
    s32 temp_t9_9;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_13;
    s32 temp_v0_14;
    s32 temp_v0_15;
    s32 temp_v0_16;
    s32 temp_v0_17;
    s32 temp_v0_18;
    s32 temp_v0_19;
    s32 temp_v0_20;
    s32 temp_v0_22;
    s32 temp_v0_23;
    s32 temp_v0_24;
    s32 temp_v0_25;
    s32 temp_v0_30;
    s32 temp_v0_31;
    s32 temp_v0_32;
    s32 temp_v0_36;
    s32 temp_v0_37;
    s32 temp_v0_38;
    s32 temp_v0_39;
    s32 temp_v0_3;
    s32 temp_v0_40;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1;
    s32 temp_v1_10;
    s32 temp_v1_11;
    s32 temp_v1_12;
    s32 temp_v1_13;
    s32 temp_v1_14;
    s32 temp_v1_15;
    s32 temp_v1_16;
    s32 temp_v1_17;
    s32 temp_v1_22;
    s32 temp_v1_23;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 temp_v1_9;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_12;
    s32 var_a0_13;
    s32 var_a0_18;
    s32 var_a0_19;
    s32 var_a0_20;
    s32 var_a0_22;
    s32 var_a0_23;
    s32 var_a0_24;
    s32 var_a0_25;
    s32 var_a0_26;
    s32 var_a0_2;
    s32 var_a0_34;
    s32 var_a0_35;
    s32 var_a0_37;
    s32 var_a0_38;
    s32 var_a0_40;
    s32 var_a0_41;
    s32 var_a0_43;
    s32 var_a0_45;
    s32 var_a0_46;
    s32 var_a0_47;
    s32 var_a0_48;
    s32 var_a0_4;
    s32 var_a0_50;
    s32 var_a0_51;
    s32 var_a0_52;
    s32 var_a0_54;
    s32 var_a0_55;
    s32 var_a0_56;
    s32 var_a0_57;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a1_13;
    s32 var_a1_16;
    s32 var_a1_18;
    s32 var_a1_19;
    s32 var_a1_24;
    s32 var_a1_27;
    s32 var_a1_33;
    s32 var_a1_37;
    s32 var_a1_41;
    s32 var_a1_45;
    s32 var_a1_49;
    s32 var_a1_53;
    s32 var_a1_6;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_a2_10;
    s32 var_a2_11;
    s32 var_a2_15;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_8;
    s32 var_a3;
    s32 var_a3_15;
    s32 var_a3_16;
    s32 var_a3_24;
    s32 var_a3_2;
    s32 var_a3_38;
    s32 var_a3_3;
    s32 var_a3_42;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a4_11;
    s32 var_a4_15;
    s32 var_a4_17;
    s32 var_a4_18;
    s32 var_a4_19;
    s32 var_a4_22;
    s32 var_a4_3;
    s32 var_a4_5;
    s32 var_a4_6;
    s32 var_a4_9;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_a5_5;
    s32 var_a5_6;
    s32 var_a5_7;
    s32 var_a6_5;
    s32 var_a6_6;
    s32 var_a7_11;
    s32 var_a7_2;
    s32 var_a7_5;
    s32 var_a7_6;
    s32 var_a7_7;
    s32 var_ra_2;
    s32 var_s0;
    s32 var_s0_11;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_s0_6;
    s32 var_s1;
    s32 var_s1_4;
    s32 var_s1_5;
    s32 var_s1_6;
    s32 var_s1_8;
    s32 var_s2_3;
    s32 var_s2_4;
    s32 var_s2_5;
    s32 var_s2_6;
    s32 var_s2_7;
    s32 var_s3_4;
    s32 var_s3_9;
    s32 var_s4_2;
    s32 var_s4_4;
    s32 var_s5_2;
    s32 var_s5_3;
    s32 var_s6_3;
    s32 var_s7;
    s32 var_t0_12;
    s32 var_t0_3;
    s32 var_t0_5;
    s32 var_t0_9;
    s32 var_t1_3;
    s32 var_t1_4;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t2_3;
    s32 var_t2_4;
    s32 var_t3;
    s32 var_t3_11;
    s32 var_t3_3;
    s32 var_t3_6;
    s32 var_t3_8;
    s32 var_t8;
    s32 var_t8_3;
    s32 var_t8_5;
    s32 var_t8_7;
    s32 var_t8_8;
    s32 var_t9;
    s32 var_t9_3;
    s32 var_t9_5;
    s32 var_t9_8;
    s32 var_t9_9;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_13;
    s32 var_v0_15;
    s32 var_v0_17;
    s32 var_v0_19;
    s32 var_v0_21;
    s32 var_v0_23;
    s32 var_v0_24;
    s32 var_v0_26;
    s32 var_v0_28;
    s32 var_v0_2;
    s32 var_v0_31;
    s32 var_v0_32;
    s32 var_v0_33;
    s32 var_v0_36;
    s32 var_v0_37;
    s32 var_v0_38;
    s32 var_v0_39;
    s32 var_v0_40;
    s32 var_v0_41;
    s32 var_v0_4;
    s32 var_v0_6;
    s32 var_v0_8;
    s32 var_v1_16;
    s32 var_v1_17;
    s32 var_v1_18;
    s32 var_v1_23;
    s32 var_v1_25;
    s32 var_v1_26;
    s32 var_v1_27;
    s32 var_v1_28;
    s32 var_v1_29;
    s32 var_v1_31;
    s32 var_v1_32;
    s32 var_v1_33;
    s32 var_v1_34;
    s32 var_v1_35;
    s32 var_v1_36;
    s32 var_v1_38;
    s32 var_v1_39;
    s32 var_v1_40;
    s32 var_v1_42;
    s32 var_v1_43;
    s32 var_v1_44;
    s32 var_v1_49;
    s32 var_v1_50;
    s32 var_v1_51;
    s64 temp_a0_5;
    s64 temp_a0_7;
    s64 temp_a4_3;
    s64 temp_s0_15;
    s64 temp_s0_3;
    s64 temp_s0_9;
    s64 temp_s1_2;
    s64 temp_s2_6;
    s64 temp_t2_12;
    s64 temp_t2_33;
    s64 temp_t9_12;
    s64 temp_t9_15;
    s64 temp_t9_4;
    s64 temp_t9_6;
    s64 temp_v0;
    s64 temp_v0_10;
    s64 temp_v0_21;
    s64 temp_v0_26;
    s64 temp_v0_2;
    s64 temp_v0_61;
    s64 temp_v1_18;
    s64 temp_v1_25;
    s64 temp_v1_29;
    s64 var_a0_15;
    s64 var_a0_21;
    s64 var_a0_36;
    s64 var_a0_39;
    s64 var_a0_3;
    s64 var_a0_42;
    s64 var_a0_44;
    s64 var_a0_49;
    s64 var_a0_53;
    s64 var_a0_9;
    s64 var_a1_15;
    s64 var_a1_20;
    s64 var_a1_21;
    s64 var_a1_2;
    s64 var_a1_3;
    s64 var_a1_4;
    s64 var_a1_7;
    s64 var_a2;
    s64 var_a2_3;
    s64 var_a2_7;
    s64 var_a3_14;
    s64 var_a3_6;
    s64 var_a3_7;
    s64 var_a5;
    s64 var_a5_10;
    s64 var_a5_8;
    s64 var_a5_9;
    s64 var_a6_3;
    s64 var_a6_4;
    s64 var_a6_8;
    s64 var_a7;
    s64 var_a7_8;
    s64 var_ra;
    s64 var_s0_10;
    s64 var_s0_7;
    s64 var_s0_8;
    s64 var_s0_9;
    s64 var_s1_7;
    s64 var_s1_9;
    s64 var_s2;
    s64 var_s2_2;
    s64 var_s3_10;
    s64 var_s4;
    s64 var_s5;
    s64 var_s5_4;
    s64 var_s6;
    s64 var_s6_2;
    s64 var_t0;
    s64 var_t0_2;
    s64 var_t0_4;
    s64 var_t1;
    s64 var_t1_5;
    s64 var_t1_6;
    s64 var_t1_8;
    s64 var_t3_10;
    s64 var_t3_12;
    s64 var_t3_5;
    s64 var_t3_7;
    s64 var_t3_9;
    s64 var_t8_2;
    s64 var_t8_6;
    s64 var_t8_9;
    s64 var_t9_2;
    s64 var_t9_6;
    s64 var_t9_7;
    s64 var_v1_14;
    s64 var_v1_4;
    u16 *temp_a0_16;
    u16 *temp_a3_20;
    u16 *temp_a4_5;
    u16 *temp_a7;
    u16 *temp_ra_10;
    u16 *temp_ra_11;
    u16 *temp_ra_12;
    u16 *temp_ra_13;
    u16 *temp_ra_14;
    u16 *temp_ra_15;
    u16 *temp_ra_16;
    u16 *temp_ra_17;
    u16 *temp_ra_18;
    u16 *temp_ra_19;
    u16 *temp_ra_20;
    u16 *temp_ra_21;
    u16 *temp_ra_22;
    u16 *temp_ra_23;
    u16 *temp_ra_24;
    u16 *temp_ra_25;
    u16 *temp_ra_26;
    u16 *temp_ra_27;
    u16 *temp_ra_28;
    u16 *temp_ra_29;
    u16 *temp_ra_30;
    u16 *temp_ra_31;
    u16 *temp_ra_32;
    u16 *temp_v0_28;
    u16 *temp_v0_29;
    u16 *temp_v1_20;
    u16 *var_a0_30;
    u16 *var_a1_14;
    u16 *var_a1_17;
    u16 *var_a1_22;
    u16 *var_a1_23;
    u16 *var_a3_12;
    u16 *var_a3_13;
    u16 *var_a4_10;
    u16 *var_a4_8;
    u16 *var_a6_7;
    u16 *var_a6_9;
    u16 *var_a7_4;
    u16 *var_t1_7;
    u16 temp_v0_27;
    u16 temp_v0_33;
    u16 temp_v0_34;
    u16 temp_v0_35;
    u16 temp_v1_21;
    u16 temp_v1_24;
    u16 var_a0_27;
    u16 var_a0_28;
    u16 var_a0_29;
    u16 var_a2_6;
    u16 var_a2_9;
    u16 var_v1_20;
    u16 var_v1_21;
    u16 var_v1_30;
    u32 temp_a3;
    u32 temp_a3_14;
    u32 temp_a3_2;
    u32 temp_a3_3;
    u32 temp_a3_6;
    u32 temp_ra;
    u32 temp_s1_10;
    u32 temp_t2_13;
    u32 temp_t2_32;
    u32 temp_t2_4;
    u32 temp_t2_7;
    u32 temp_t3_6;
    u32 temp_t3_8;
    u32 temp_t8_11;
    u32 temp_t8_13;
    u32 var_a0_5;
    u32 var_a1;
    u32 var_a4_2;
    u32 var_a4_4;
    u32 var_ra_3;
    u32 var_s0_5;
    u32 var_s1_3;
    u32 var_t9_4;
    u32 var_v0_11;
    u32 var_v0_14;
    u32 var_v0_18;
    u32 var_v0_20;
    u32 var_v0_22;
    u32 var_v0_25;
    u32 var_v0_27;
    u32 var_v0_29;
    u32 var_v0_3;
    u32 var_v0_5;
    u32 var_v0_7;
    u32 var_v0_9;
    u32 var_v1_9;
    u64 var_s3;
    u8 temp_a1_15;
    u8 temp_a1_16;
    u8 temp_a1_17;
    u8 temp_v1_19;
    u8 var_a0_14;
    u8 var_a0_16;
    u8 var_a0_17;
    u8 var_a7_3;
    u8 var_v0_34;
    u8 var_v0_35;
    u8 var_v1_19;
    void *temp_a0_11;
    void *temp_a0_12;
    void *temp_a0_13;
    void *temp_a0_22;
    void *temp_a0_23;
    void *temp_a0_24;
    void *temp_a1_18;
    void *temp_a2_5;
    void *temp_a3_17;
    void *temp_a3_18;
    void *temp_a3_19;
    void *temp_a3_24;
    void *temp_a3_25;
    void *temp_a3_26;
    void *temp_a3_30;
    void *temp_a3_31;
    void *temp_a3_32;
    void *temp_a3_36;
    void *temp_a3_37;
    void *temp_a3_38;
    void *temp_a5_25;
    void *temp_a5_6;
    void *temp_a5_8;
    void *temp_ra_9;
    void *temp_t1;
    void *temp_t2_15;
    void *var_a1_10;
    void *var_a1_11;
    void *var_a1_12;
    void *var_a3_10;
    void *var_a3_11;
    void *var_a3_17;
    void *var_a3_18;
    void *var_a3_19;
    void *var_a3_20;
    void *var_a3_26;
    void *var_a3_27;
    void *var_a3_28;
    void *var_a3_29;
    void *var_a3_34;
    void *var_a3_35;
    void *var_a3_36;
    void *var_a3_37;
    void *var_a3_43;
    void *var_a3_44;
    void *var_a3_45;
    void *var_a3_46;
    void *var_a3_8;
    void *var_a3_9;
    void *var_a4_12;
    void *var_a4_13;
    void *var_a4_14;
    void *var_a4_7;
    void *var_ra_4;
    void *var_v1_15;

    var_s2 = saved_reg_s2;
    var_s5 = saved_reg_s5;
    var_s6 = saved_reg_s6;
    var_s3 = arg2;
    var_ra = arg1;
    sp130 = arg0;
    temp_s0 = arg0->unk0;
    temp_t8 = arg0->unk2;
    temp_t3 = arg7->unk84;
    var_s4 = arg0->unk4 - temp_s0;
    temp_v0 = arg0->unk6 - temp_t8;
    unkspC0 = temp_v0;
    temp_t1 = **(arg7->unk10->unk1B4 + (expScreenPrivateIndex * 4));
    if ((temp_v0 != 0) && (var_s4 != 0)) {
        var_gp = temp_s0;
        sp90 = (s64) temp_t8;
        temp_a2 = (*(temp_t3 + (nfbWindowPrivateIndex * 4)))->unk14;
        switch (temp_a2) {                          /* irregular */
        default:
            temp_t1->unk4052C = (s32) (temp_a2 | 0x1000);
            temp_t1->unk404D4 = 0;
            var_a0 = arg6;
            var_a3 = ((dbcWindowPrivateIndex * 4) + temp_t3)->unk1 * 8;
            break;
        case 13:
            var_a3 = 1;
            var_a0 = 0;
            temp_t1->unk4052C = 0x100B;
            temp_t1->unk404D4 = (s32) (arg6 & 3);
            break;
        case 12:
            var_a3 = 1;
            var_a0 = 0;
            temp_t1->unk4052C = 0x1008;
            temp_t1->unk404D4 = (s32) (arg6 & 0xF);
            break;
        case 14:
            var_a3 = 9;
            var_a0 = 0;
            temp_t1->unk4052C = 0x100B;
            temp_t1->unk404D4 = (s32) (arg6 & 0xC);
            break;
        }
        temp_t1->unk40530 = arg4;
        temp_t1->unk4077C = (s32) (var_a0 & 0xFFFFFF);
        temp_t1->unk4077C = arg5;
        temp_t1->unk4077C = var_a3;
        temp_t1->unk404E0 = arg4;
        if (var_s4 < 0x11) {
            if (var_s3 >= 8U) {
                temp_ra = var_s3 >> 3;
                var_s3 &= 7;
                var_ra = temp_ra + arg1;
            }
            if (var_s3 != 0) {
                temp_v0_2 = (unkspC0 >> 6) & 0xFF;
                sp140 = temp_v0_2;
                spD0 = (s64) sp130->unk2;
                if (temp_v0_2 != 0) {
                    if (sp140 > 0) {
                        var_a5 = spD0;
                        sp110 = (sp140 << 6) + spD0;
                        do {
                            var_t9 = 2;
                            sp190 = var_s4;
                            sp188 = var_a5;
                            sp160 = var_s2;
                            sp198 = var_s3;
                            sp148 = (s64) &sp24;
                            sp150 = (s64) &sp24;
                            temp_t3_2 = var_ra & 3;
                            var_v1 = var_ra - temp_t3_2;
                            temp_t3_3 = (temp_t3_2 * 8) + var_s3;
                            var_s0 = 0x20 - temp_t3_3;
                            temp_t2 = var_ra + arg3;
                            temp_ra_2 = temp_t2 & 3;
                            var_ra_2 = (temp_ra_2 * 8) + var_s3;
                            var_s3_2 = temp_t2 - temp_ra_2;
                            var_t2 = arg3 + temp_t2;
                            var_s1 = var_t2 + arg3;
                            var_s2_2 = arg3 + var_s1;
                            var_v0 = (u32) (var_s4 + var_ra_2) < 0x21U;
                            var_a3_2 = ((u32) (var_s4 + temp_t3_3) < 0x21U) != 0;
                            temp_t1->unk40514 = (s32) sp130->unk0;
                            temp_t1->unk4077C = (s32) var_a5;
                            temp_t1->unk4077C = (s32) var_s4;
                            var_s4_2 = temp_t3_3;
                            temp_t1->unk4077C = 0x40;
loop_14:
                            temp_a1 = *var_v1;
                            if (var_a3_2 != 0) {
                                var_v1 = &sp24;
                            }
                            temp_t8_2 = temp_a1 << var_s4_2;
                            temp_t3_4 = var_v0 != 0;
                            var_v0_2 = ((u32) var_v1->unk4 >> var_s0) | temp_t8_2;
                            if (var_a3_2 != 0) {
                                var_v0_2 = temp_t8_2;
                            }
                            temp_a3 = *var_s3_2 << var_ra_2;
                            if (temp_t3_4 != 0) {
                                var_s3_2 = &sp24;
                            }
                            var_v0_3 = ((u32) var_s3_2->unk4 >> (0x20 - var_ra_2)) | temp_a3;
                            if (temp_t3_4 != 0) {
                                var_v0_3 = temp_a3;
                            }
                            temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_2) | (var_v0_3 >> 0x10));
                            temp_s4 = var_t2 & 3;
                            temp_a1_2 = (temp_s4 * 8) + var_s3;
                            temp_ra_3 = ((u32) (var_s4 + temp_a1_2) < 0x21U) != 0;
                            temp_v1 = var_s1 & 3;
                            temp_t8_3 = (temp_v1 * 8) + var_s3;
                            temp_s3 = var_s2_2 + arg3;
                            temp_t3_5 = arg3 + temp_s3;
                            var_s1_2 = var_s1 - temp_v1;
                            var_v1_2 = var_t2 - temp_s4;
                            temp_v0_3 = *var_v1_2;
                            if (temp_ra_3 != 0) {
                                var_v1_2 = &sp24;
                            }
                            temp_a1_3 = temp_v0_3 << temp_a1_2;
                            temp_t2_2 = ((u32) (var_s4 + temp_t8_3) < 0x21U) != 0;
                            var_v0_4 = ((u32) var_v1_2->unk4 >> (0x20 - temp_a1_2)) | temp_a1_3;
                            if (temp_ra_3 != 0) {
                                var_v0_4 = temp_a1_3;
                            }
                            temp_a3_2 = *var_s1_2 << temp_t8_3;
                            if (temp_t2_2 != 0) {
                                var_s1_2 = &sp24;
                            }
                            var_v0_5 = ((u32) var_s1_2->unk4 >> (0x20 - temp_t8_3)) | temp_a3_2;
                            if (temp_t2_2 != 0) {
                                var_v0_5 = temp_a3_2;
                            }
                            temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_4) | (var_v0_5 >> 0x10));
                            temp_s4_2 = var_s2_2 & 3;
                            temp_a1_4 = (temp_s4_2 * 8) + var_s3;
                            temp_s1 = ((u32) (var_s4 + temp_a1_4) < 0x21U) != 0;
                            temp_v1_2 = temp_s3 & 3;
                            temp_ra_4 = (temp_v1_2 * 8) + var_s3;
                            temp_t8_4 = temp_t3_5 + arg3;
                            var_t2 = arg3 + temp_t8_4;
                            var_s3_3 = temp_s3 - temp_v1_2;
                            var_v1_3 = var_s2_2 - temp_s4_2;
                            temp_v0_4 = *var_v1_3;
                            if (temp_s1 != 0) {
                                var_v1_3 = &sp24;
                            }
                            temp_a1_5 = temp_v0_4 << temp_a1_4;
                            temp_s2 = ((u32) (var_s4 + temp_ra_4) < 0x21U) != 0;
                            var_v0_6 = ((u32) var_v1_3->unk4 >> (0x20 - temp_a1_4)) | temp_a1_5;
                            if (temp_s1 != 0) {
                                var_v0_6 = temp_a1_5;
                            }
                            temp_a3_3 = *var_s3_3 << temp_ra_4;
                            if (temp_s2 != 0) {
                                var_s3_3 = &sp24;
                            }
                            var_v0_7 = ((u32) var_s3_3->unk4 >> (0x20 - temp_ra_4)) | temp_a3_3;
                            if (temp_s2 != 0) {
                                var_v0_7 = temp_a3_3;
                            }
                            temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_6) | (var_v0_7 >> 0x10));
                            temp_a1_6 = temp_t3_5 & 3;
                            var_s4_2 = (temp_a1_6 * 8) + var_s3;
                            var_s0 = 0x20 - var_s4_2;
                            var_a3_2 = ((u32) (var_s4 + var_s4_2) < 0x21U) != 0;
                            temp_v1_3 = temp_t8_4 & 3;
                            var_ra_2 = (temp_v1_3 * 8) + var_s3;
                            var_v0 = (u32) (var_s4 + var_ra_2) < 0x21U;
                            var_s1 = var_t2 + arg3;
                            var_s2_2 = arg3 + var_s1;
                            var_s3_2 = temp_t8_4 - temp_v1_3;
                            var_t9 += 3;
                            var_v1 = temp_t3_5 - temp_a1_6;
                            if (var_t9 != 0x20) {
                                goto loop_14;
                            }
                            var_a6 = var_v1;
                            var_v1_4 = sp150;
                            temp_a0 = *var_a6;
                            if (var_a3_2 != 0) {
                                var_a6 = (s32 *) var_v1_4;
                            }
                            temp_s0_2 = var_t2 & 3;
                            temp_s0_3 = var_t2 - temp_s0_2;
                            var_a4 = var_s3_2;
                            var_s3 = sp198;
                            var_s4 = sp190;
                            temp_t8_5 = (temp_s0_2 * 8) + var_s3;
                            temp_v0_5 = ((u32) (var_s4 + temp_t8_5) < 0x21U) != 0;
                            if (temp_v0_5 == 0) {
                                var_v1_4 = temp_s0_3;
                            }
                            var_t9_2 = sp148;
                            temp_a2_2 = var_v0 != 0;
                            var_a0_2 = temp_a0 << var_s4_2;
                            temp_a1_7 = *var_a4;
                            if (temp_a2_2 != 0) {
                                var_a4 = (s32 *) var_t9_2;
                            }
                            if (var_a3_2 == 0) {
                                var_a0_2 |= (u32) var_a6->unk4 >> var_s0;
                            }
                            var_a1 = temp_a1_7 << var_ra_2;
                            if (temp_a2_2 == 0) {
                                var_a1 |= (u32) var_a4->unk4 >> (0x20 - var_ra_2);
                            }
                            temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_a0_2) | (var_a1 >> 0x10));
                            var_s0_2 = *temp_s0_3 << temp_t8_5;
                            if (temp_v0_5 == 0) {
                                var_s0_2 |= (u32) var_v1_4->unk4 >> (0x20 - temp_t8_5);
                            }
                            temp_v0_6 = var_s1 & 3;
                            temp_s1_2 = var_s1 - temp_v0_6;
                            temp_ra_5 = (temp_v0_6 * 8) + var_s3;
                            temp_t8_6 = ((u32) (var_s4 + temp_ra_5) < 0x21U) != 0;
                            if (temp_t8_6 == 0) {
                                var_t9_2 = temp_s1_2;
                            }
                            var_s1_3 = *temp_s1_2 << temp_ra_5;
                            if (temp_t8_6 == 0) {
                                var_s1_3 |= (u32) var_t9_2->unk4 >> (0x20 - temp_ra_5);
                            }
                            var_a5 = sp188 + 0x40;
                            var_ra = var_s2_2;
                            temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_s0_2) | (var_s1_3 >> 0x10));
                            var_s2 = sp160;
                        } while (var_a5 != sp110);
                        var_a0_3 = sp140;
                        var_s5 = sp178;
                        var_s6 = sp180;
                    } else {
                        var_a0_3 = 0;
                    }
                    temp_t1->unk407A8 = 0;
                    spD0 += var_a0_3 << 6;
                }
                var_t8 = 2;
                if (unkspC0 & 0x20 & 0xFF) {
                    sp190 = var_s4;
                    sp198 = var_s3;
                    sp160 = var_s2;
                    sp60 = (s64) &sp24;
                    sp68 = (s64) &sp24;
                    sp180 = var_s6;
                    sp178 = var_s5;
                    temp_a3_4 = var_ra & 3;
                    var_v1_5 = var_ra - temp_a3_4;
                    var_a3_3 = (temp_a3_4 * 8) + var_s3;
                    var_s2_3 = 0x20 - var_a3_3;
                    temp_a1_8 = var_ra + arg3;
                    temp_t9 = temp_a1_8 & 3;
                    var_a1_2 = arg3 + temp_a1_8;
                    temp_t2_3 = var_a1_2 + arg3;
                    var_t3 = arg3 + temp_t2_3;
                    var_t9_3 = (temp_t9 * 8) + var_s3;
                    var_s3_4 = temp_t2_3;
                    var_s1_4 = (u32) (var_s4 + var_t9_3) < 0x21U;
                    var_s0_3 = ((u32) (var_s4 + var_a3_3) < 0x21U) != 0;
                    temp_t1->unk40510 = (s32) sp130->unk0;
                    temp_t1->unk4077C = (s32) spD0;
                    temp_t1->unk4077C = (s32) var_s4;
                    var_s4_3 = temp_a1_8 - temp_t9;
                    temp_t1->unk4077C = 0x20;
loop_69:
                    temp_v0_7 = *var_v1_5;
                    if (var_s0_3 != 0) {
                        var_v1_5 = &sp24;
                    }
                    temp_a3_5 = temp_v0_7 << var_a3_3;
                    temp_s1_3 = var_s1_4 != 0;
                    var_v0_8 = ((u32) var_v1_5->unk4 >> var_s2_3) | temp_a3_5;
                    if (var_s0_3 != 0) {
                        var_v0_8 = temp_a3_5;
                    }
                    temp_t2_4 = *var_s4_3 << var_t9_3;
                    if (temp_s1_3 != 0) {
                        var_s4_3 = &sp24;
                    }
                    var_v0_9 = ((u32) var_s4_3->unk4 >> (0x20 - var_t9_3)) | temp_t2_4;
                    if (temp_s1_3 != 0) {
                        var_v0_9 = temp_t2_4;
                    }
                    temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_8) | (var_v0_9 >> 0x10));
                    temp_s5 = var_a1_2 & 3;
                    temp_s1_4 = (temp_s5 * 8) + var_s3;
                    temp_s2_2 = ((u32) (var_s4 + temp_s1_4) < 0x21U) != 0;
                    temp_v1_4 = var_s3_4 & 3;
                    temp_s0_4 = (temp_v1_4 * 8) + var_s3;
                    temp_t9_2 = var_t3 + arg3;
                    temp_t2_5 = arg3 + temp_t9_2;
                    var_s3_5 = var_s3_4 - temp_v1_4;
                    var_v1_6 = var_a1_2 - temp_s5;
                    temp_v0_8 = *var_v1_6;
                    if (temp_s2_2 != 0) {
                        var_v1_6 = &sp24;
                    }
                    temp_a1_9 = temp_v0_8 << temp_s1_4;
                    temp_s1_5 = ((u32) (var_s4 + temp_s0_4) < 0x21U) != 0;
                    var_v0_10 = ((u32) var_v1_6->unk4 >> (0x20 - temp_s1_4)) | temp_a1_9;
                    if (temp_s2_2 != 0) {
                        var_v0_10 = temp_a1_9;
                    }
                    temp_a3_6 = *var_s3_5 << temp_s0_4;
                    if (temp_s1_5 != 0) {
                        var_s3_5 = &sp24;
                    }
                    var_v0_11 = ((u32) var_s3_5->unk4 >> (0x20 - temp_s0_4)) | temp_a3_6;
                    if (temp_s1_5 != 0) {
                        var_v0_11 = temp_a3_6;
                    }
                    temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_10) | (var_v0_11 >> 0x10));
                    temp_s6 = var_t3 & 3;
                    temp_a3_7 = (temp_s6 * 8) + var_s3;
                    temp_s2_3 = 0x20 - temp_a3_7;
                    temp_s1_6 = ((u32) (var_s4 + temp_a3_7) < 0x21U) != 0;
                    temp_v1_5 = temp_t9_2 & 3;
                    temp_s0_5 = (temp_v1_5 * 8) + var_s3;
                    temp_s5_2 = (u32) (var_s4 + temp_s0_5) < 0x21U;
                    temp_s4_3 = temp_t2_5 + arg3;
                    var_a1_2 = arg3 + temp_s4_3;
                    var_s3_6 = temp_t9_2 - temp_v1_5;
                    var_v0_12 = var_t3 - temp_s6;
                    if (var_t8 != 0xE) {
                        temp_v1_6 = *var_v0_12;
                        if (temp_s1_6 != 0) {
                            var_v0_12 = &sp24;
                        }
                        temp_a3_8 = temp_v1_6 << temp_a3_7;
                        temp_t9_3 = temp_s5_2 != 0;
                        var_v0_13 = ((u32) var_v0_12->unk4 >> temp_s2_3) | temp_a3_8;
                        if (temp_s1_6 != 0) {
                            var_v0_13 = temp_a3_8;
                        }
                        temp_t3_6 = *var_s3_6 << temp_s0_5;
                        if (temp_t9_3 != 0) {
                            var_s3_6 = &sp24;
                        }
                        var_v0_14 = ((u32) var_s3_6->unk4 >> (0x20 - temp_s0_5)) | temp_t3_6;
                        if (temp_t9_3 != 0) {
                            var_v0_14 = temp_t3_6;
                        }
                        temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_13) | (var_v0_14 >> 0x10));
                        temp_s5_3 = temp_t2_5 & 3;
                        var_a3_3 = (temp_s5_3 * 8) + var_s3;
                        var_s2_3 = 0x20 - var_a3_3;
                        var_s0_3 = ((u32) (var_s4 + var_a3_3) < 0x21U) != 0;
                        temp_v1_7 = temp_s4_3 & 3;
                        var_t9_3 = (temp_v1_7 * 8) + var_s3;
                        var_s1_4 = (u32) (var_s4 + var_t9_3) < 0x21U;
                        var_s3_4 = var_a1_2 + arg3;
                        var_t3 = arg3 + var_s3_4;
                        var_s4_3 = temp_s4_3 - temp_v1_7;
                        var_t8 += 3;
                        var_v1_5 = temp_t2_5 - temp_s5_3;
                        goto loop_69;
                    }
                    var_a2 = sp68;
                    var_t3_2 = var_v0_12;
                    temp_a3_9 = *var_t3_2;
                    if (temp_s1_6 != 0) {
                        var_t3_2 = (s32 *) var_a2;
                    }
                    var_s4 = sp190;
                    var_a6_2 = var_s3_6;
                    var_s3 = sp198;
                    temp_v0_9 = temp_t2_5 & 3;
                    temp_v0_10 = temp_t2_5 - temp_v0_9;
                    temp_v1_8 = (temp_v0_9 * 8) + var_s3;
                    temp_a0_2 = ((u32) (var_s4 + temp_v1_8) < 0x21U) != 0;
                    if (temp_a0_2 == 0) {
                        var_a2 = temp_v0_10;
                    }
                    temp_a5 = temp_s5_2 != 0;
                    var_ra = var_a1_2;
                    var_a1_3 = sp60;
                    var_a3_4 = temp_a3_9 << temp_a3_7;
                    temp_a4 = *var_a6_2;
                    if (temp_a5 != 0) {
                        var_a6_2 = (s32 *) var_a1_3;
                    }
                    if (temp_s1_6 == 0) {
                        var_a3_4 |= (u32) var_t3_2->unk4 >> temp_s2_3;
                    }
                    var_a4_2 = temp_a4 << temp_s0_5;
                    if (temp_a5 == 0) {
                        var_a4_2 |= (u32) var_a6_2->unk4 >> (0x20 - temp_s0_5);
                    }
                    temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_a3_4) | (var_a4_2 >> 0x10));
                    var_v0_15 = *temp_v0_10 << temp_v1_8;
                    if (temp_a0_2 == 0) {
                        var_v0_15 |= (u32) var_a2->unk4 >> (0x20 - temp_v1_8);
                    }
                    temp_a2_3 = temp_s4_3 & 3;
                    temp_t9_4 = temp_s4_3 - temp_a2_3;
                    temp_v1_9 = (temp_a2_3 * 8) + var_s3;
                    temp_a0_3 = ((u32) (var_s4 + temp_v1_9) < 0x21U) != 0;
                    if (temp_a0_3 == 0) {
                        var_a1_3 = temp_t9_4;
                    }
                    var_t9_4 = *temp_t9_4 << temp_v1_9;
                    if (temp_a0_3 == 0) {
                        var_t9_4 |= (u32) var_a1_3->unk4 >> (0x20 - temp_v1_9);
                    }
                    var_s5 = sp178;
                    var_s6 = sp180;
                    var_s2 = sp160;
                    spD0 += 0x20;
                    temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_15) | (var_t9_4 >> 0x10));
                    temp_t1->unk407A8 = 0;
                }
                var_t9_5 = 2;
                if (unkspC0 & 0x10 & 0xFF) {
                    sp190 = var_s4;
                    sp198 = var_s3;
                    sp160 = var_s2;
                    sp178 = var_s5;
                    sp78 = (s64) &sp24;
                    sp70 = (s64) &sp24;
                    temp_t2_6 = var_ra + arg3;
                    temp_a3_10 = var_ra & 3;
                    var_v0_16 = var_ra - temp_a3_10;
                    sp180 = var_s6;
                    var_a3_5 = (temp_a3_10 * 8) + var_s3;
                    var_s2_4 = 0x20 - var_a3_5;
                    temp_s0_6 = temp_t2_6 & 3;
                    var_s0_4 = (temp_s0_6 * 8) + var_s3;
                    var_s3_7 = temp_t2_6 - temp_s0_6;
                    var_t2_2 = arg3 + temp_t2_6;
                    temp_t3_7 = var_t2_2 + arg3;
                    var_a1_4 = arg3 + temp_t3_7;
                    var_s5_2 = (u32) (var_s4 + var_s0_4) < 0x21U;
                    var_s1_5 = ((u32) (var_s4 + var_a3_5) < 0x21U) != 0;
                    temp_t1->unk4050C = (s32) sp130->unk0;
                    temp_t1->unk4077C = (s32) spD0;
                    temp_t1->unk4077C = (s32) var_s4;
                    var_s4_4 = temp_t3_7;
                    temp_t1->unk4077C = 0x10;
                    do {
                        temp_v1_10 = *var_v0_16;
                        if (var_s1_5 != 0) {
                            var_v0_16 = &sp24;
                        }
                        temp_a3_11 = temp_v1_10 << var_a3_5;
                        temp_t8_7 = var_s5_2 != 0;
                        var_v0_17 = ((u32) var_v0_16->unk4 >> var_s2_4) | temp_a3_11;
                        if (var_s1_5 != 0) {
                            var_v0_17 = temp_a3_11;
                        }
                        temp_t3_8 = *var_s3_7 << var_s0_4;
                        if (temp_t8_7 != 0) {
                            var_s3_7 = &sp24;
                        }
                        var_v0_18 = ((u32) var_s3_7->unk4 >> (0x20 - var_s0_4)) | temp_t3_8;
                        if (temp_t8_7 != 0) {
                            var_v0_18 = temp_t3_8;
                        }
                        temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_17) | (var_v0_18 >> 0x10));
                        temp_s5_4 = var_t2_2 & 3;
                        temp_a3_12 = (temp_s5_4 * 8) + var_s3;
                        temp_s0_7 = ((u32) (var_s4 + temp_a3_12) < 0x21U) != 0;
                        temp_v1_11 = var_s4_4 & 3;
                        temp_t8_8 = (temp_v1_11 * 8) + var_s3;
                        temp_s3_2 = var_a1_4 + arg3;
                        temp_t3_9 = arg3 + temp_s3_2;
                        var_s4_5 = var_s4_4 - temp_v1_11;
                        var_v1_7 = var_t2_2 - temp_s5_4;
                        temp_v0_11 = *var_v1_7;
                        if (temp_s0_7 != 0) {
                            var_v1_7 = &sp24;
                        }
                        temp_a3_13 = temp_v0_11 << temp_a3_12;
                        temp_s1_7 = ((u32) (var_s4 + temp_t8_8) < 0x21U) != 0;
                        var_v0_19 = ((u32) var_v1_7->unk4 >> (0x20 - temp_a3_12)) | temp_a3_13;
                        if (temp_s0_7 != 0) {
                            var_v0_19 = temp_a3_13;
                        }
                        temp_t2_7 = *var_s4_5 << temp_t8_8;
                        if (temp_s1_7 != 0) {
                            var_s4_5 = &sp24;
                        }
                        var_v0_20 = ((u32) var_s4_5->unk4 >> (0x20 - temp_t8_8)) | temp_t2_7;
                        if (temp_s1_7 != 0) {
                            var_v0_20 = temp_t2_7;
                        }
                        temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_19) | (var_v0_20 >> 0x10));
                        temp_s5_5 = var_a1_4 & 3;
                        temp_s1_8 = (temp_s5_5 * 8) + var_s3;
                        temp_s2_4 = ((u32) (var_s4 + temp_s1_8) < 0x21U) != 0;
                        temp_v1_12 = temp_s3_2 & 3;
                        temp_s0_8 = (temp_v1_12 * 8) + var_s3;
                        temp_t8_9 = temp_t3_9 + arg3;
                        var_t2_2 = arg3 + temp_t8_9;
                        var_s3_8 = temp_s3_2 - temp_v1_12;
                        var_v1_8 = var_a1_4 - temp_s5_5;
                        temp_v0_12 = *var_v1_8;
                        if (temp_s2_4 != 0) {
                            var_v1_8 = &sp24;
                        }
                        temp_a1_10 = temp_v0_12 << temp_s1_8;
                        temp_s1_9 = ((u32) (var_s4 + temp_s0_8) < 0x21U) != 0;
                        var_v0_21 = ((u32) var_v1_8->unk4 >> (0x20 - temp_s1_8)) | temp_a1_10;
                        if (temp_s2_4 != 0) {
                            var_v0_21 = temp_a1_10;
                        }
                        temp_a3_14 = *var_s3_8 << temp_s0_8;
                        if (temp_s1_9 != 0) {
                            var_s3_8 = &sp24;
                        }
                        var_v0_22 = ((u32) var_s3_8->unk4 >> (0x20 - temp_s0_8)) | temp_a3_14;
                        if (temp_s1_9 != 0) {
                            var_v0_22 = temp_a3_14;
                        }
                        temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_21) | (var_v0_22 >> 0x10));
                        temp_s6_2 = temp_t3_9 & 3;
                        var_a3_5 = (temp_s6_2 * 8) + var_s3;
                        var_s2_4 = 0x20 - var_a3_5;
                        var_s1_5 = ((u32) (var_s4 + var_a3_5) < 0x21U) != 0;
                        temp_v1_13 = temp_t8_9 & 3;
                        var_s0_4 = (temp_v1_13 * 8) + var_s3;
                        var_s5_2 = (u32) (var_s4 + var_s0_4) < 0x21U;
                        var_s4_4 = var_t2_2 + arg3;
                        var_a1_4 = arg3 + var_s4_4;
                        var_s3_7 = temp_t8_9 - temp_v1_13;
                        var_t9_5 += 3;
                        var_v0_16 = temp_t3_9 - temp_s6_2;
                    } while (var_t9_5 != 8);
                    var_a5_2 = var_v0_16;
                    var_t9_6 = sp70;
                    temp_v0_13 = *var_a5_2;
                    if (var_s1_5 != 0) {
                        var_a5_2 = (s32 *) var_t9_6;
                    }
                    var_s4 = sp190;
                    temp_s2_5 = var_t2_2 & 3;
                    var_ra = var_a1_4;
                    var_a1_5 = var_s3_7;
                    var_s3 = sp198;
                    temp_s2_6 = var_t2_2 - temp_s2_5;
                    temp_s5_6 = (temp_s2_5 * 8) + var_s3;
                    temp_s6_3 = ((u32) (var_s4 + temp_s5_6) < 0x21U) != 0;
                    if (temp_s6_3 == 0) {
                        var_t9_6 = temp_s2_6;
                    }
                    temp_v1_14 = *var_a1_5;
                    var_t8_2 = sp78;
                    temp_a0_4 = var_s5_2 != 0;
                    if (temp_a0_4 != 0) {
                        var_a1_5 = (s32 *) var_t8_2;
                    }
                    var_v0_23 = temp_v0_13 << var_a3_5;
                    if (var_s1_5 == 0) {
                        var_v0_23 |= (u32) var_a5_2->unk4 >> var_s2_4;
                    }
                    var_v1_9 = temp_v1_14 << var_s0_4;
                    if (temp_a0_4 == 0) {
                        var_v1_9 |= (u32) var_a1_5->unk4 >> (0x20 - var_s0_4);
                    }
                    temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_23) | (var_v1_9 >> 0x10));
                    var_s2_5 = *temp_s2_6 << temp_s5_6;
                    if (temp_s6_3 == 0) {
                        var_s2_5 |= (u32) var_t9_6->unk4 >> (0x20 - temp_s5_6);
                    }
                    temp_t9_5 = var_s4_4 & 3;
                    temp_s0_9 = var_s4_4 - temp_t9_5;
                    temp_s5_7 = (temp_t9_5 * 8) + var_s3;
                    temp_s6_4 = ((u32) (var_s4 + temp_s5_7) < 0x21U) != 0;
                    if (temp_s6_4 == 0) {
                        var_t8_2 = temp_s0_9;
                    }
                    var_s0_5 = *temp_s0_9 << temp_s5_7;
                    if (temp_s6_4 == 0) {
                        var_s0_5 |= (u32) var_t8_2->unk4 >> (0x20 - temp_s5_7);
                    }
                    var_s2 = sp160;
                    var_s6 = sp180;
                    spD0 += 0x10;
                    var_s5 = sp178;
                    temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_s2_5) | (var_s0_5 >> 0x10));
                    temp_t1->unk407A8 = 0;
                }
                sp180 = var_s6;
                sp178 = var_s5;
                temp_t9_6 = unkspC0 & 0xF;
                sp120 = temp_t9_6;
                if (temp_t9_6 != 0) {
                    temp_s6_5 = (sp120 >> 1) & 0xFF;
                    temp_t1->unk4050C = (s32) sp130->unk0;
                    temp_t1->unk4077C = (s32) spD0;
                    temp_t1->unk4077C = (s32) var_s4;
                    temp_t1->unk4077C = (s32) sp120;
                    if (temp_s6_5 > 0) {
                        var_a0_4 = 0;
                        sp88 = (s64) &sp24;
                        sp80 = (s64) &sp24;
                        if (temp_s6_5 >= 3) {
                            sp198 = var_s3;
                            sp190 = var_s4;
                            var_t3_3 = 2;
                            sp178 = var_s5;
                            sp160 = var_s2;
                            temp_t0 = var_ra + arg3;
                            temp_s0_10 = var_ra & 3;
                            var_v1_10 = var_ra - temp_s0_10;
                            var_s0_6 = (temp_s0_10 * 8) + var_s3;
                            var_s5_3 = 0x20 - var_s0_6;
                            temp_t1_2 = temp_t0 & 3;
                            temp_t1_3 = (temp_t1_2 * 8) + var_s3;
                            var_s4_6 = temp_t0 - temp_t1_2;
                            var_t0 = arg3 + temp_t0;
                            temp_t8_10 = var_t0 + arg3;
                            var_s7 = temp_t8_10;
                            var_s3_9 = temp_t1_3;
                            var_s2_6 = (u32) (var_s4 + temp_t1_3) < 0x21U;
                            var_s1_6 = ((u32) (var_s4 + var_s0_6) < 0x21U) != 0;
                            var_s6_2 = arg3 + temp_t8_10;
loop_151:
                            temp_v0_14 = *var_v1_10;
                            if (var_s1_6 != 0) {
                                var_v1_10 = (s32 *) sp80;
                            }
                            temp_t1_4 = temp_v0_14 << var_s0_6;
                            temp_s0_11 = var_s2_6 != 0;
                            var_v0_24 = ((u32) var_v1_10->unk4 >> var_s5_3) | temp_t1_4;
                            if (var_s1_6 != 0) {
                                var_v0_24 = temp_t1_4;
                            }
                            temp_t8_11 = *var_s4_6 << var_s3_9;
                            if (temp_s0_11 != 0) {
                                var_s4_6 = (s32 *) sp88;
                            }
                            var_v0_25 = ((u32) var_s4_6->unk4 >> (0x20 - var_s3_9)) | temp_t8_11;
                            if (temp_s0_11 != 0) {
                                var_v0_25 = temp_t8_11;
                            }
                            temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_24) | (var_v0_25 >> 0x10));
                            temp_v1_15 = var_t0 & 3;
                            var_s0_6 = (temp_v1_15 * 8) + var_s3;
                            temp_s5_8 = 0x20 - var_s0_6;
                            var_s1_6 = ((u32) (var_s4 + var_s0_6) < 0x21U) != 0;
                            temp_t8_12 = var_s7 & 3;
                            temp_s3_3 = (temp_t8_12 * 8) + var_s3;
                            var_s2_6 = (u32) (var_s4 + temp_s3_3) < 0x21U;
                            temp_gp = var_s6_2 + arg3;
                            var_t1 = arg3 + temp_gp;
                            var_s4_7 = var_s7 - temp_t8_12;
                            var_v1_11 = var_t0 - temp_v1_15;
                            if (var_t3_3 != (temp_s6_5 - 1)) {
                                temp_v0_15 = *var_v1_11;
                                if (var_s1_6 != 0) {
                                    var_v1_11 = (s32 *) sp80;
                                }
                                temp_t0_2 = temp_v0_15 << var_s0_6;
                                temp_s0_12 = var_s2_6 != 0;
                                var_v0_26 = ((u32) var_v1_11->unk4 >> temp_s5_8) | temp_t0_2;
                                if (var_s1_6 != 0) {
                                    var_v0_26 = temp_t0_2;
                                }
                                temp_t8_13 = *var_s4_7 << temp_s3_3;
                                if (temp_s0_12 != 0) {
                                    var_s4_7 = (s32 *) sp88;
                                }
                                var_v0_27 = ((u32) var_s4_7->unk4 >> (0x20 - temp_s3_3)) | temp_t8_13;
                                if (temp_s0_12 != 0) {
                                    var_v0_27 = temp_t8_13;
                                }
                                temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_26) | (var_v0_27 >> 0x10));
                                temp_s7 = var_s6_2 & 3;
                                var_s0_6 = (temp_s7 * 8) + var_s3;
                                temp_s5_9 = 0x20 - var_s0_6;
                                var_s1_6 = ((u32) (var_s4 + var_s0_6) < 0x21U) != 0;
                                temp_v1_16 = temp_gp & 3;
                                temp_s3_4 = (temp_v1_16 * 8) + var_s3;
                                var_s2_6 = (u32) (var_s4 + temp_s3_4) < 0x21U;
                                temp_t8_14 = var_t1 + arg3;
                                var_t0 = arg3 + temp_t8_14;
                                var_s4_8 = temp_gp - temp_v1_16;
                                var_v1_12 = var_s6_2 - temp_s7;
                                if (var_t3_3 != (temp_s6_5 - 2)) {
                                    temp_v0_16 = *var_v1_12;
                                    if (var_s1_6 != 0) {
                                        var_v1_12 = (s32 *) sp80;
                                    }
                                    temp_s0_13 = temp_v0_16 << var_s0_6;
                                    temp_s2_7 = var_s2_6 != 0;
                                    var_v0_28 = ((u32) var_v1_12->unk4 >> temp_s5_9) | temp_s0_13;
                                    if (var_s1_6 != 0) {
                                        var_v0_28 = temp_s0_13;
                                    }
                                    temp_s1_10 = *var_s4_8 << temp_s3_4;
                                    if (temp_s2_7 != 0) {
                                        var_s4_8 = (s32 *) sp88;
                                    }
                                    var_v0_29 = ((u32) var_s4_8->unk4 >> (0x20 - temp_s3_4)) | temp_s1_10;
                                    if (temp_s2_7 != 0) {
                                        var_v0_29 = temp_s1_10;
                                    }
                                    temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_v0_28) | (var_v0_29 >> 0x10));
                                    temp_gp_2 = var_t1 & 3;
                                    var_s0_6 = (temp_gp_2 * 8) + var_s3;
                                    var_s5_3 = 0x20 - var_s0_6;
                                    var_s1_6 = ((u32) (var_s4 + var_s0_6) < 0x21U) != 0;
                                    temp_v1_17 = temp_t8_14 & 3;
                                    var_s3_9 = (temp_v1_17 * 8) + var_s3;
                                    var_s2_6 = (u32) (var_s4 + var_s3_9) < 0x21U;
                                    var_s7 = var_t0 + arg3;
                                    var_s6_2 = arg3 + var_s7;
                                    var_s4_6 = temp_t8_14 - temp_v1_17;
                                    var_t3_3 += 3;
                                    var_v1_10 = var_t1 - temp_gp_2;
                                    if (var_t3_3 == temp_s6_5) {
                                        var_a2_2 = var_v1_10;
                                        var_t8_3 = var_s5_3;
                                        var_s5 = sp178;
                                        var_t1 = var_s6_2;
                                        var_t3_4 = var_s4_6;
                                        var_s4 = sp190;
                                        var_a5_3 = var_s3_9;
                                        goto block_179;
                                    }
                                    goto loop_151;
                                }
                                var_a2_2 = var_v1_12;
                                var_s7 = temp_t8_14;
                                var_t8_3 = temp_s5_9;
                                var_s5 = sp178;
                                var_t3_4 = var_s4_8;
                                var_s4 = sp190;
                                var_a5_3 = temp_s3_4;
                                var_s3 = sp198;
                                temp_a0_5 = var_t0;
                                var_t0 = var_t1;
                                var_t1 = temp_a0_5;
                            } else {
                                var_s7 = temp_gp;
                                var_a2_2 = var_v1_11;
                                var_t8_3 = temp_s5_8;
                                var_s5 = sp178;
                                var_t0 = var_s6_2;
                                var_t3_4 = var_s4_7;
                                var_s4 = sp190;
                                var_a5_3 = temp_s3_3;
block_179:
                                var_s3 = sp198;
                            }
                            temp_ra_6 = *var_t3_4;
                            var_t9_7 = sp88;
                            temp_s2_8 = var_s2_6 != 0;
                            if (temp_s2_8 != 0) {
                                var_t3_4 = (s32 *) var_t9_7;
                            }
                            var_ra_3 = temp_ra_6 << var_a5_3;
                            if (temp_s2_8 == 0) {
                                var_ra_3 |= (u32) var_t3_4->unk4 >> (0x20 - var_a5_3);
                            }
                            var_a7 = sp80;
                            temp_s2_9 = *var_a2_2;
                            if (var_s1_6 != 0) {
                                var_a2_2 = (s32 *) var_a7;
                            }
                            temp_a4_2 = var_t0 & 3;
                            temp_a4_3 = var_t0 - temp_a4_2;
                            temp_t2_8 = (temp_a4_2 * 8) + var_s3;
                            temp_a6 = ((u32) (var_s4 + temp_t2_8) < 0x21U) != 0;
                            if (temp_a6 == 0) {
                                var_a7 = temp_a4_3;
                            }
                            var_s2_7 = temp_s2_9 << var_s0_6;
                            if (var_s1_6 == 0) {
                                var_s2_7 |= (u32) var_a2_2->unk4 >> var_t8_3;
                            }
                            temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_s2_7) | (var_ra_3 >> 0x10));
                            var_a4_3 = *temp_a4_3 << temp_t2_8;
                            if (temp_a6 == 0) {
                                var_a4_3 |= (u32) var_a7->unk4 >> (0x20 - temp_t2_8);
                            }
                            temp_a0_6 = var_s7 & 3;
                            temp_a0_7 = var_s7 - temp_a0_6;
                            temp_ra_7 = (temp_a0_6 * 8) + var_s3;
                            temp_s2_10 = ((u32) (var_s4 + temp_ra_7) < 0x21U) != 0;
                            if (temp_s2_10 == 0) {
                                var_t9_7 = temp_a0_7;
                            }
                            var_a0_5 = *temp_a0_7 << temp_ra_7;
                            if (temp_s2_10 == 0) {
                                var_a0_5 |= (u32) var_t9_7->unk4 >> (0x20 - temp_ra_7);
                            }
                            var_ra = var_t1;
                            temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_a4_3) | (var_a0_5 >> 0x10));
                        } else {
                            do {
                                temp_t2_9 = var_ra & 3;
                                var_v1_13 = var_ra - temp_t2_9;
                                temp_ra_8 = var_ra + arg3;
                                temp_v0_17 = temp_ra_8 & 3;
                                var_v0_30 = temp_ra_8 - temp_v0_17;
                                temp_a4_4 = *var_v0_30;
                                temp_a5_2 = (temp_v0_17 * 8) + var_s3;
                                temp_t9_7 = ((u32) (var_s4 + temp_a5_2) < 0x21U) != 0;
                                if (temp_t9_7 != 0) {
                                    var_v0_30 = (s32 *) sp88;
                                }
                                var_a4_4 = temp_a4_4 << temp_a5_2;
                                if (temp_t9_7 == 0) {
                                    var_a4_4 |= (u32) var_v0_30->unk4 >> (0x20 - temp_a5_2);
                                }
                                temp_t2_10 = (temp_t2_9 * 8) + var_s3;
                                temp_a5_3 = *var_v1_13;
                                temp_v0_18 = ((u32) (var_s4 + temp_t2_10) < 0x21U) != 0;
                                if (temp_v0_18 != 0) {
                                    var_v1_13 = (s32 *) sp80;
                                }
                                var_a5_4 = temp_a5_3 << temp_t2_10;
                                if (temp_v0_18 == 0) {
                                    var_a5_4 |= (u32) var_v1_13->unk4 >> (0x20 - temp_t2_10);
                                }
                                var_a0_4 += 1;
                                var_ra = arg3 + temp_ra_8;
                                temp_t1->unk4077C = (s32) ((0xFFFF0000 & var_a5_4) | (var_a4_4 >> 0x10));
                            } while (var_a0_4 != temp_s6_5);
                        }
                    }
                    if (sp120 & 1) {
                        temp_a2_4 = var_ra & 3;
                        temp_a1_11 = (temp_a2_4 * 8) + var_s3;
                        temp_a2_5 = var_ra - temp_a2_4;
                        var_a0_6 = temp_a2_5->unk0 << temp_a1_11;
                        if ((u32) (var_s4 + temp_a1_11) >= 0x21U) {
                            var_a0_6 |= (u32) temp_a2_5->unk4 >> (0x20 - temp_a1_11);
                        }
                        temp_t1->unk4077C = (s32) (var_a0_6 & 0xFFFF0000);
                    }
                    temp_v1_18 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                    sp138 = temp_v1_18;
                    if (temp_v1_18 > 0) {
                        var_a1_6 = sp138 & 3;
                        var_a0_7 = 0;
                        if (var_a1_6 != 0) {
                            do {
                                var_a0_7 += 1;
                                var_a1_6 -= 1;
                                temp_t1->unk4077C = 0;
                            } while (var_a1_6 != 0);
                        }
                        temp_a1_12 = sp138 >> 2;
                        if (temp_a1_12 != 0) {
                            var_a0_8 = var_a0_7 + 4;
                            if (temp_a1_12 >= 2) {
                                temp_t1->unk4077C = 0;
                                temp_t1->unk4077C = 0;
loop_207:
                                temp_t1->unk4077C = 0;
                                temp_t1->unk4077C = 0;
                                temp_t1->unk4077C = 0;
                                temp_t1->unk4077C = 0;
                                if (var_a0_8 != (sp138 - 4)) {
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    if (var_a0_8 != (sp138 - 8)) {
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        if (var_a0_8 != (sp138 - 0xC)) {
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            var_a0_8 += 0x10;
                                            temp_t1->unk4077C = 0;
                                            if (var_a0_8 != sp138) {
                                                goto loop_207;
                                            }
                                        }
                                    }
                                }
                                temp_t1->unk4077C = 0;
                            } else {
                                temp_t1->unk4077C = 0;
                                temp_t1->unk4077C = 0;
                                temp_t1->unk4077C = 0;
                            }
                            temp_t1->unk4077C = 0;
                        }
                    }
                    sp178 = var_s5;
                    goto block_214;
                }
            } else {
                var_a3_6 = sp90;
                if (var_ra & 3) {
                    var_t9_8 = var_ra | arg3;
                    goto block_439;
                }
                var_t9_8 = var_ra | arg3;
                if (arg3 == 2) {
                    if (unkspC0 >= 0x80) {
                        var_a7_2 = 0;
                        if (unkspC0 >= 0x40) {
                            var_a6_3 = sp90;
                            var_t0_2 = unkspC0;
                            var_a3_7 = var_ra;
                            spD8 = (s64) var_gp;
                            var_a4_5 = var_ra + 0x80;
                            do {
                                temp_a0_8 = var_a4_5 - 0x10;
                                var_a4_5 += 0x80;
                                var_v1_14 = var_a3_7;
                                var_t0_2 -= 0x40;
                                temp_t1->unk40514 = (s32) spD8;
                                temp_t1->unk4077C = (s32) var_a6_3;
                                temp_t1->unk4077C = (s32) var_s4;
                                temp_t1->unk4077C = 0x40;
                                var_a7_2 += 1;
                                var_v0_31 = *var_a3_7;
loop_609:
                                temp_t1->unk4077C = var_v0_31;
                                temp_t1->unk4077C = (s32) var_v1_14->unk4;
                                temp_t1->unk4077C = (s32) var_v1_14->unk8;
                                temp_v0_19 = var_v1_14->unkC;
                                var_v1_14 += 0x10;
                                temp_t1->unk4077C = temp_v0_19;
                                var_v0_31 = var_v1_14->unk0;
                                if (var_v1_14 != temp_a0_8) {
                                    goto loop_609;
                                }
                                temp_t1->unk4077C = var_v0_31;
                                temp_t1->unk4077C = (s32) var_v1_14->unk4;
                                var_a3_7 += 0x80;
                                temp_t1->unk4077C = (s32) var_v1_14->unk8;
                                var_a6_3 += 0x40;
                                temp_t1->unk4077C = (s32) var_v1_14->unkC;
                            } while (var_t0_2 >= 0x40);
                        } else {
                            spD8 = (s64) var_gp;
                            var_a7_2 = 0;
                        }
                        temp_t1->unk407A8 = 0;
                        var_ra += var_a7_2 << 7;
                        var_gp = (s16) spD8;
                        temp_a3_15 = var_a7_2 << 6;
                        var_a3_6 = temp_a3_15 + sp90;
                        unkspC0 -= temp_a3_15;
                    }
                    var_a4_6 = 0;
                    if (unkspC0 >= 0x10) {
                        var_a0_9 = var_a3_6;
                        var_a2_3 = unkspC0;
                        var_a1_7 = var_ra;
                        var_a6_4 = var_a1_7;
                        do {
                            temp_t1->unk40578 = (s32) var_gp;
                            temp_t1->unk4077C = (s32) var_a0_9;
                            temp_t1->unk4077C = (s32) var_s4;
                            temp_t1->unk4077C = 0x10;
                            temp_t1->unk4077C = (s32) var_a6_4->unk0;
                            temp_t1->unk4077C = (s32) var_a6_4->unk4;
                            temp_t1->unk4077C = (s32) var_a6_4->unk8;
                            temp_t1->unk4077C = (s32) var_a6_4->unkC;
                            temp_t1->unk4077C = (s32) var_a6_4->unk10;
                            temp_t1->unk4077C = (s32) var_a6_4->unk14;
                            var_a0_9 += 0x10;
                            temp_t1->unk4077C = (s32) var_a6_4->unk18;
                            var_a1_7 += 0x20;
                            var_a2_3 -= 0x10;
                            var_a4_6 += 1;
                            temp_t1->unk4077C = (s32) var_a6_4->unk1C;
                            var_a6_4 = var_a1_7;
                        } while (var_a2_3 >= 0x10);
                    } else {
                        var_a4_6 = 0;
                    }
                    var_ra_4 = (var_a4_6 << 5) + var_ra;
                    temp_a0_9 = var_a4_6 * 0x10;
                    temp_a2_6 = unkspC0 - temp_a0_9;
                    temp_a0_10 = temp_a0_9 + var_a3_6;
                    var_a5_5 = temp_a2_6;
                    var_a6_5 = temp_a0_10;
                    if (temp_a2_6 >= 8) {
                        temp_t1->unk40574 = (s32) var_gp;
                        temp_t1->unk4077C = temp_a0_10;
                        temp_t1->unk4077C = (s32) var_s4;
                        temp_t1->unk4077C = 8;
                        temp_t1->unk4077C = (s32) var_ra_4->unk0;
                        temp_t1->unk4077C = (s32) var_ra_4->unk4;
                        var_a5_5 = temp_a2_6 - 8;
                        temp_t1->unk4077C = (s32) var_ra_4->unk8;
                        var_a6_5 = temp_a0_10 + 8;
                        temp_t2_11 = var_ra_4->unkC;
                        var_ra_4 += 0x10;
                        temp_t1->unk4077C = temp_t2_11;
                    }
                    if (var_a5_5 != 0) {
                        var_a2_4 = 1;
                        temp_a3_16 = (s32) (var_a5_5 + 1) >> 1;
                        if (temp_a3_16 >= 1) {
                            var_a2_4 = temp_a3_16;
                        }
                        temp_t1->unk40574 = (s32) var_gp;
                        temp_t1->unk4077C = var_a6_5;
                        temp_t1->unk4077C = (s32) var_s4;
                        var_a0_10 = temp_a3_16;
                        var_a1_8 = var_a2_4 & 3;
                        temp_t1->unk4077C = var_a5_5;
                        if (var_a1_8 != 0) {
                            do {
                                var_a0_10 -= 1;
                                var_ra_4 += 4;
                                var_a1_8 -= 1;
                                temp_t1->unk4077C = (s32) var_ra_4->unk-4;
                            } while (var_a1_8 != 0);
                        }
                        temp_a1_13 = var_a2_4 >> 2;
                        if (temp_a1_13 != 0) {
                            if (temp_a1_13 >= 2) {
                                var_v0_32 = var_ra_4->unk0;
                                var_v1_15 = var_ra_4;
                                var_a0_11 = var_a0_10 - 4;
                                do {
                                    temp_t1->unk4077C = var_v0_32;
                                    temp_t1->unk4077C = (s32) var_v1_15->unk4;
                                    temp_t1->unk4077C = (s32) var_v1_15->unk8;
                                    temp_v0_20 = var_v1_15->unkC;
                                    var_a0_11 -= 4;
                                    var_v1_15 += 0x10;
                                    temp_t1->unk4077C = temp_v0_20;
                                    var_v0_32 = var_v1_15->unk0;
                                } while (var_a0_11 != 0);
                                temp_t1->unk4077C = var_v0_32;
                                temp_t1->unk4077C = (s32) var_v1_15->unk4;
                                temp_t1->unk4077C = (s32) var_v1_15->unk8;
                                temp_t1->unk4077C = (s32) var_v1_15->unkC;
                            } else {
                                temp_t1->unk4077C = (s32) var_ra_4->unk0;
                                temp_t1->unk4077C = (s32) var_ra_4->unk4;
                                temp_t1->unk4077C = (s32) var_ra_4->unk8;
                                temp_t1->unk4077C = (s32) var_ra_4->unkC;
                            }
                        }
                        if (temp_a3_16 < 4) {
                            var_a0_12 = 0;
                            temp_a2_7 = 4 - temp_a3_16;
                            var_a1_9 = temp_a2_7 & 3;
                            if (var_a1_9 != 0) {
                                do {
                                    var_a0_12 += 1;
                                    var_a1_9 -= 1;
                                    temp_t1->unk4077C = 0;
                                } while (var_a1_9 != 0);
                            }
                            temp_a1_14 = temp_a2_7 >> 2;
                            if (temp_a1_14 != 0) {
                                if (temp_a1_14 >= 2) {
                                    var_a0_13 = var_a0_12 + 4;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
loop_633:
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    if (var_a0_13 != (temp_a2_7 - 4)) {
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        if (var_a0_13 != (temp_a2_7 - 8)) {
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            if (var_a0_13 != (temp_a2_7 - 0xC)) {
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                var_a0_13 += 0x10;
                                                temp_t1->unk4077C = 0;
                                                if (var_a0_13 != temp_a2_7) {
                                                    goto loop_633;
                                                }
                                            }
                                        }
                                    }
                                    temp_t1->unk4077C = 0;
                                } else {
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                }
                                temp_t1->unk4077C = 0;
                            }
                        }
                    }
                } else {
block_439:
                    if (var_t9_8 & 1) {
                        var_t8_4 = sp130->unk2;
                        temp_v0_21 = (unkspC0 >> 6) & 0xFF;
                        sp140 = temp_v0_21;
                        if (temp_v0_21 != 0) {
                            var_t1_2 = var_t8_4;
                            if (sp140 > 0) {
                                do {
                                    var_v1_16 = 0;
                                    temp_t1->unk40514 = (s32) sp130->unk0;
                                    temp_t1->unk4077C = (s32) var_t1_2;
                                    temp_t1->unk4077C = (s32) var_s4;
                                    temp_t1->unk4077C = 0x40;
                                    var_a3_8 = var_ra + arg3;
                                    var_a1_10 = arg3 + var_a3_8;
                                    var_a0_14 = var_ra->unk1;
                                    var_v0_33 = var_ra->unk0 << 8;
loop_445:
                                    sp4 = var_a0_14 | var_v0_33;
                                    sp6 = var_a3_8->unk1 | (var_a3_8->unk0 << 8);
                                    var_v1_16 += 2;
                                    temp_a3_17 = var_a1_10 + arg3;
                                    temp_t1->unk4077C = (s32) sp4;
                                    temp_a0_11 = arg3 + temp_a3_17;
                                    temp_a1_15 = var_a1_10->unk1;
                                    temp_v0_22 = var_a1_10->unk0 << 8;
                                    if (var_v1_16 != 0x20) {
                                        sp4 = temp_a1_15 | temp_v0_22;
                                        sp6 = temp_a3_17->unk1 | (temp_a3_17->unk0 << 8);
                                        var_a3_8 = temp_a0_11 + arg3;
                                        temp_t1->unk4077C = (s32) sp4;
                                        var_a1_10 = arg3 + var_a3_8;
                                        var_a0_14 = temp_a0_11->unk1;
                                        var_v0_33 = temp_a0_11->unk0 << 8;
                                        goto loop_445;
                                    }
                                    var_t1_2 += 0x40;
                                    sp4 = temp_a1_15 | temp_v0_22;
                                    sp6 = temp_a3_17->unk1 | (temp_a3_17->unk0 << 8);
                                    temp_t1->unk4077C = (s32) sp4;
                                    var_ra = (s64) temp_a0_11;
                                } while (var_t1_2 != ((sp140 << 6) + var_t8_4));
                                var_a0_15 = sp140;
                            } else {
                                var_a0_15 = 0;
                            }
                            temp_t1->unk407A8 = 0;
                            var_t8_4 += var_a0_15 << 6;
                        }
                        var_v1_17 = 0;
                        if (unkspC0 & 0x20 & 0xFF) {
                            var_a3_9 = var_ra + arg3;
                            var_a1_11 = arg3 + var_a3_9;
                            temp_t1->unk40510 = (s32) sp130->unk0;
                            temp_t1->unk4077C = (s32) var_t8_4;
                            temp_t1->unk4077C = (s32) var_s4;
                            temp_t1->unk4077C = 0x20;
                            var_v0_34 = var_ra->unk0;
                            var_a0_16 = var_ra->unk1;
loop_452:
                            sp4 = var_a0_16 | (var_v0_34 << 8);
                            sp6 = var_a3_9->unk1 | (var_a3_9->unk0 << 8);
                            var_v1_17 += 2;
                            temp_a3_18 = var_a1_11 + arg3;
                            temp_t1->unk4077C = (s32) sp4;
                            temp_a0_12 = arg3 + temp_a3_18;
                            temp_a1_16 = var_a1_11->unk1;
                            temp_v0_23 = var_a1_11->unk0 << 8;
                            if (var_v1_17 != 0x10) {
                                sp4 = temp_a1_16 | temp_v0_23;
                                sp6 = temp_a3_18->unk1 | (temp_a3_18->unk0 << 8);
                                var_a3_9 = temp_a0_12 + arg3;
                                temp_t1->unk4077C = (s32) sp4;
                                var_a1_11 = arg3 + var_a3_9;
                                var_v0_34 = temp_a0_12->unk0;
                                var_a0_16 = temp_a0_12->unk1;
                                goto loop_452;
                            }
                            sp4 = temp_a1_16 | temp_v0_23;
                            sp6 = temp_a3_18->unk1 | (temp_a3_18->unk0 << 8);
                            var_ra = (s64) temp_a0_12;
                            var_t8_4 += 0x20;
                            temp_t1->unk4077C = (s32) sp4;
                            temp_t1->unk407A8 = 0;
                        }
                        var_v1_18 = 0;
                        if (unkspC0 & 0x10 & 0xFF) {
                            var_a3_10 = var_ra + arg3;
                            var_a1_12 = arg3 + var_a3_10;
                            temp_t1->unk4050C = (s32) sp130->unk0;
                            temp_t1->unk4077C = (s32) var_t8_4;
                            temp_t1->unk4077C = (s32) var_s4;
                            temp_t1->unk4077C = 0x10;
                            var_v0_35 = var_ra->unk0;
                            var_a0_17 = var_ra->unk1;
loop_457:
                            sp4 = var_a0_17 | (var_v0_35 << 8);
                            sp6 = var_a3_10->unk1 | (var_a3_10->unk0 << 8);
                            var_v1_18 += 2;
                            temp_a3_19 = var_a1_12 + arg3;
                            temp_t1->unk4077C = (s32) sp4;
                            temp_a0_13 = arg3 + temp_a3_19;
                            temp_a1_17 = var_a1_12->unk1;
                            temp_v0_24 = var_a1_12->unk0 << 8;
                            if (var_v1_18 != 8) {
                                sp4 = temp_a1_17 | temp_v0_24;
                                sp6 = temp_a3_19->unk1 | (temp_a3_19->unk0 << 8);
                                var_a3_10 = temp_a0_13 + arg3;
                                temp_t1->unk4077C = (s32) sp4;
                                var_a1_12 = arg3 + var_a3_10;
                                var_v0_35 = temp_a0_13->unk0;
                                var_a0_17 = temp_a0_13->unk1;
                                goto loop_457;
                            }
                            sp4 = temp_a1_17 | temp_v0_24;
                            sp6 = temp_a3_19->unk1 | (temp_a3_19->unk0 << 8);
                            var_ra = (s64) temp_a0_13;
                            var_t8_4 += 0x10;
                            temp_t1->unk4077C = (s32) sp4;
                            temp_t1->unk407A8 = 0;
                        }
                        temp_t2_12 = unkspC0 & 0xF;
                        sp120 = temp_t2_12;
                        if (temp_t2_12 != 0) {
                            temp_s6_6 = (sp120 >> 1) & 0xFF;
                            temp_t1->unk4050C = (s32) sp130->unk0;
                            temp_t1->unk4077C = (s32) var_t8_4;
                            temp_t1->unk4077C = (s32) var_s4;
                            temp_t1->unk4077C = (s32) sp120;
                            if (temp_s6_6 > 0) {
                                var_a6_6 = 0;
                                if (temp_s6_6 >= 2) {
                                    var_v1_19 = var_ra->unk1;
                                    var_a4_7 = var_ra + arg3;
                                    var_a3_11 = arg3 + var_a4_7;
                                    var_v0_36 = var_ra->unk0 << 8;
loop_463:
                                    sp4 = var_v1_19 | var_v0_36;
                                    sp6 = var_a4_7->unk1 | (var_a4_7->unk0 << 8);
                                    var_a6_6 += 2;
                                    var_a4_7 = var_a3_11 + arg3;
                                    temp_t1->unk4077C = (s32) sp4;
                                    temp_a1_18 = arg3 + var_a4_7;
                                    temp_v1_19 = var_a3_11->unk1;
                                    temp_v0_25 = var_a3_11->unk0 << 8;
                                    if (var_a6_6 != temp_s6_6) {
                                        sp4 = temp_v1_19 | temp_v0_25;
                                        sp6 = var_a4_7->unk1 | (var_a4_7->unk0 << 8);
                                        var_a4_7 = temp_a1_18 + arg3;
                                        temp_t1->unk4077C = (s32) sp4;
                                        var_a3_11 = arg3 + var_a4_7;
                                        var_v1_19 = temp_a1_18->unk1;
                                        var_v0_36 = temp_a1_18->unk0 << 8;
                                        if (var_a6_6 == (temp_s6_6 - 1)) {
                                            var_a5_6 = var_v0_36;
                                            var_a7_3 = var_v1_19;
                                        } else {
                                            goto loop_463;
                                        }
                                    } else {
                                        var_a3_11 = temp_a1_18;
                                        var_a5_6 = temp_v0_25;
                                        var_a7_3 = temp_v1_19;
                                    }
                                    sp4 = var_a7_3 | var_a5_6;
                                    sp6 = var_a4_7->unk1 | (var_a4_7->unk0 << 8);
                                    var_ra = (s64) var_a3_11;
                                    temp_t1->unk4077C = (s32) sp4;
                                } else {
                                    temp_ra_9 = var_ra + arg3;
                                    sp4 = var_ra->unk1 | (var_ra->unk0 << 8);
                                    sp6 = temp_ra_9->unk1 | (temp_ra_9->unk0 << 8);
                                    var_ra = (s64) (arg3 + temp_ra_9);
                                    temp_t1->unk4077C = (s32) sp4;
                                }
                            }
                            if (sp120 & 1) {
                                sp4 = var_ra->unk1 | (var_ra->unk0 << 8);
                                sp6 = 0;
                                temp_t1->unk4077C = (s32) sp4;
                            }
                            temp_v0_26 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                            sp138 = temp_v0_26;
                            if (temp_v0_26 > 0) {
                                var_a1_13 = sp138 & 3;
                                var_a0_18 = 0;
                                if (var_a1_13 != 0) {
                                    do {
                                        var_a0_18 += 1;
                                        var_a1_13 -= 1;
                                        temp_t1->unk4077C = 0;
                                    } while (var_a1_13 != 0);
                                }
                                temp_a1_19 = sp138 >> 2;
                                if (temp_a1_19 != 0) {
                                    var_a0_19 = var_a0_18 + 4;
                                    if (temp_a1_19 >= 2) {
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
loop_475:
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        if (var_a0_19 != (sp138 - 4)) {
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            if (var_a0_19 != (sp138 - 8)) {
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                if (var_a0_19 != (sp138 - 0xC)) {
                                                    temp_t1->unk4077C = 0;
                                                    temp_t1->unk4077C = 0;
                                                    temp_t1->unk4077C = 0;
                                                    var_a0_19 += 0x10;
                                                    temp_t1->unk4077C = 0;
                                                    if (var_a0_19 != sp138) {
                                                        goto loop_475;
                                                    }
                                                }
                                            }
                                        }
                                        temp_t1->unk4077C = 0;
                                    } else {
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                    }
                                    temp_t1->unk4077C = 0;
                                }
                            }
                            goto block_214;
                        }
                    } else {
                        if (unkspC0 >= 0x80) {
                            var_t8_5 = 0;
                            if (unkspC0 >= 0x40) {
                                var_t3_5 = sp90;
                                var_s0_7 = unkspC0;
                                spD8 = (s64) var_gp;
                                do {
                                    var_a0_20 = 0;
                                    var_s0_7 -= 0x40;
                                    var_t8_5 += 1;
                                    var_a7_4 = var_ra + arg3;
                                    var_a4_8 = arg3 + var_a7_4;
                                    var_a3_12 = var_a4_8 + arg3;
                                    var_a1_14 = arg3 + var_a3_12;
                                    temp_t1->unk40514 = (s32) spD8;
                                    temp_t1->unk4077C = (s32) var_t3_5;
                                    temp_t1->unk4077C = (s32) var_s4;
                                    temp_t1->unk4077C = 0x40;
                                    var_v1_20 = *var_ra;
loop_646:
                                    sp0 = var_v1_20;
                                    sp2 = *var_a7_4;
                                    temp_t1->unk4077C = (s32) sp0;
                                    var_a0_20 += 4;
                                    temp_a7 = var_a1_14 + arg3;
                                    sp2 = *var_a3_12;
                                    sp0 = *var_a4_8;
                                    temp_a3_20 = arg3 + temp_a7;
                                    temp_a4_5 = temp_a3_20 + arg3;
                                    temp_v1_20 = arg3 + temp_a4_5;
                                    temp_t1->unk4077C = (s32) sp0;
                                    temp_v0_27 = *var_a1_14;
                                    if (var_a0_20 != 0x20) {
                                        sp0 = temp_v0_27;
                                        sp2 = *temp_a7;
                                        temp_t1->unk4077C = (s32) sp0;
                                        var_a7_4 = temp_v1_20 + arg3;
                                        sp2 = *temp_a4_5;
                                        sp0 = *temp_a3_20;
                                        var_a4_8 = arg3 + var_a7_4;
                                        var_a3_12 = var_a4_8 + arg3;
                                        var_a1_14 = arg3 + var_a3_12;
                                        temp_t1->unk4077C = (s32) sp0;
                                        var_v1_20 = *temp_v1_20;
                                        goto loop_646;
                                    }
                                    sp0 = temp_v0_27;
                                    sp2 = *temp_a7;
                                    temp_t1->unk4077C = (s32) sp0;
                                    var_t3_5 += 0x40;
                                    sp0 = *temp_a3_20;
                                    sp2 = *temp_a4_5;
                                    var_ra = (s64) temp_v1_20;
                                    temp_t1->unk4077C = (s32) sp0;
                                } while (var_s0_7 >= 0x40);
                            } else {
                                spD8 = (s64) var_gp;
                                var_t8_5 = 0;
                            }
                            temp_t1->unk407A8 = 0;
                            var_gp = (s16) spD8;
                            temp_a3_21 = var_t8_5 << 6;
                            var_a3_6 = temp_a3_21 + sp90;
                            unkspC0 -= temp_a3_21;
                        }
                        var_a2_5 = 0;
                        if (unkspC0 >= 0x10) {
                            var_a0_21 = var_a3_6;
                            var_a1_15 = unkspC0;
                            do {
                                temp_t1->unk40578 = (s32) var_gp;
                                temp_t1->unk4077C = (s32) var_a0_21;
                                temp_t1->unk4077C = (s32) var_s4;
                                temp_t1->unk4077C = 0x10;
                                temp_ra_10 = var_ra + arg3;
                                sp0 = *var_ra;
                                sp2 = *temp_ra_10;
                                temp_t1->unk4077C = (s32) sp0;
                                temp_ra_11 = arg3 + temp_ra_10;
                                temp_ra_12 = temp_ra_11 + arg3;
                                sp0 = *temp_ra_11;
                                sp2 = *temp_ra_12;
                                temp_t1->unk4077C = (s32) sp0;
                                temp_ra_13 = arg3 + temp_ra_12;
                                temp_ra_14 = temp_ra_13 + arg3;
                                sp0 = *temp_ra_13;
                                sp2 = *temp_ra_14;
                                temp_t1->unk4077C = (s32) sp0;
                                temp_ra_15 = arg3 + temp_ra_14;
                                temp_ra_16 = temp_ra_15 + arg3;
                                sp0 = *temp_ra_15;
                                sp2 = *temp_ra_16;
                                temp_t1->unk4077C = (s32) sp0;
                                temp_ra_17 = arg3 + temp_ra_16;
                                temp_ra_18 = temp_ra_17 + arg3;
                                sp0 = *temp_ra_17;
                                sp2 = *temp_ra_18;
                                temp_t1->unk4077C = (s32) sp0;
                                temp_ra_19 = arg3 + temp_ra_18;
                                temp_ra_20 = temp_ra_19 + arg3;
                                sp0 = *temp_ra_19;
                                sp2 = *temp_ra_20;
                                temp_t1->unk4077C = (s32) sp0;
                                temp_ra_21 = arg3 + temp_ra_20;
                                temp_ra_22 = temp_ra_21 + arg3;
                                sp0 = *temp_ra_21;
                                sp2 = *temp_ra_22;
                                var_a0_21 += 0x10;
                                temp_t1->unk4077C = (s32) sp0;
                                temp_ra_23 = arg3 + temp_ra_22;
                                temp_ra_24 = temp_ra_23 + arg3;
                                var_a2_5 += 1;
                                sp0 = *temp_ra_23;
                                sp2 = *temp_ra_24;
                                var_a1_15 -= 0x10;
                                var_ra = (s64) (arg3 + temp_ra_24);
                                temp_t1->unk4077C = (s32) sp0;
                            } while (var_a1_15 >= 0x10);
                        } else {
                            var_a2_5 = 0;
                        }
                        temp_a0_14 = var_a2_5 * 0x10;
                        temp_a1_20 = unkspC0 - temp_a0_14;
                        temp_a0_15 = temp_a0_14 + var_a3_6;
                        var_a4_9 = temp_a1_20;
                        var_a5_7 = temp_a0_15;
                        if (temp_a1_20 >= 8) {
                            temp_t1->unk40574 = (s32) var_gp;
                            temp_t1->unk4077C = temp_a0_15;
                            temp_t1->unk4077C = (s32) var_s4;
                            temp_t1->unk4077C = 8;
                            temp_ra_25 = var_ra + arg3;
                            sp0 = *var_ra;
                            sp2 = *temp_ra_25;
                            temp_t1->unk4077C = (s32) sp0;
                            temp_ra_26 = arg3 + temp_ra_25;
                            temp_ra_27 = temp_ra_26 + arg3;
                            sp0 = *temp_ra_26;
                            sp2 = *temp_ra_27;
                            temp_t1->unk4077C = (s32) sp0;
                            temp_ra_28 = arg3 + temp_ra_27;
                            temp_ra_29 = temp_ra_28 + arg3;
                            sp0 = *temp_ra_28;
                            sp2 = *temp_ra_29;
                            temp_t1->unk4077C = (s32) sp0;
                            temp_ra_30 = arg3 + temp_ra_29;
                            temp_ra_31 = temp_ra_30 + arg3;
                            sp0 = *temp_ra_30;
                            sp2 = *temp_ra_31;
                            var_ra = (s64) (arg3 + temp_ra_31);
                            temp_t1->unk4077C = (s32) sp0;
                            var_a4_9 = temp_a1_20 - 8;
                            var_a5_7 = temp_a0_15 + 8;
                        }
                        if (var_a4_9 != 0) {
                            var_a1_16 = 1;
                            temp_t1_5 = (s32) (var_a4_9 + 1) >> 1;
                            if (temp_t1_5 >= 1) {
                                var_a1_16 = temp_t1_5;
                            }
                            temp_t1->unk40574 = (s32) var_gp;
                            var_a0_22 = temp_t1_5;
                            temp_t1->unk4077C = var_a5_7;
                            temp_t1->unk4077C = (s32) var_s4;
                            temp_t1->unk4077C = var_a4_9;
                            if (var_a1_16 & 1) {
                                temp_ra_32 = arg3 + var_ra;
                                sp0 = *var_ra;
                                sp2 = *temp_ra_32;
                                var_a0_22 -= 1;
                                var_ra = (s64) (arg3 + temp_ra_32);
                                temp_t1->unk4077C = (s32) sp0;
                            }
                            temp_a4_6 = var_a1_16 >> 1;
                            if (temp_a4_6 != 0) {
                                if (temp_a4_6 >= 2) {
                                    var_a7_5 = var_a0_22;
                                    var_v1_21 = *var_ra;
                                    var_a6_7 = arg3 + var_ra;
                                    var_a3_13 = arg3 + var_a6_7;
                                    var_a1_17 = arg3 + var_a3_13;
                                    var_a4_10 = arg3 + var_a1_17;
loop_662:
                                    sp0 = var_v1_21;
                                    sp2 = *var_a6_7;
                                    temp_t1->unk4077C = (s32) sp0;
                                    var_a7_5 -= 4;
                                    var_a6_7 = arg3 + var_a4_10;
                                    sp2 = *var_a1_17;
                                    sp0 = *var_a3_13;
                                    var_a3_13 = arg3 + var_a6_7;
                                    var_a1_17 = arg3 + var_a3_13;
                                    temp_a0_16 = arg3 + var_a1_17;
                                    temp_t1->unk4077C = (s32) sp0;
                                    temp_v1_21 = *var_a4_10;
                                    if (var_a7_5 != 0) {
                                        sp0 = temp_v1_21;
                                        sp2 = *var_a6_7;
                                        temp_t1->unk4077C = (s32) sp0;
                                        var_a6_7 = arg3 + temp_a0_16;
                                        sp2 = *var_a1_17;
                                        sp0 = *var_a3_13;
                                        var_a3_13 = arg3 + var_a6_7;
                                        var_a1_17 = arg3 + var_a3_13;
                                        var_a4_10 = arg3 + var_a1_17;
                                        temp_t1->unk4077C = (s32) sp0;
                                        var_v1_21 = *temp_a0_16;
                                        if (var_a7_5 == 2) {
                                            var_a2_6 = var_v1_21;
                                        } else {
                                            goto loop_662;
                                        }
                                    } else {
                                        var_a2_6 = temp_v1_21;
                                    }
                                    sp0 = var_a2_6;
                                    sp2 = *var_a6_7;
                                    temp_t1->unk4077C = (s32) sp0;
                                    sp2 = *var_a1_17;
                                    sp0 = *var_a3_13;
                                } else {
                                    temp_v0_28 = arg3 + var_ra;
                                    sp0 = *var_ra;
                                    sp2 = *temp_v0_28;
                                    temp_t1->unk4077C = (s32) sp0;
                                    temp_v0_29 = arg3 + temp_v0_28;
                                    sp0 = *temp_v0_29;
                                    sp2 = *(arg3 + temp_v0_29);
                                }
                                temp_t1->unk4077C = (s32) sp0;
                            }
                            if (temp_t1_5 < 4) {
                                var_a0_23 = 0;
                                temp_a2_8 = 4 - temp_t1_5;
                                var_a1_18 = temp_a2_8 & 3;
                                if (var_a1_18 != 0) {
                                    do {
                                        var_a0_23 += 1;
                                        var_a1_18 -= 1;
                                        temp_t1->unk4077C = 0;
                                    } while (var_a1_18 != 0);
                                }
                                temp_a1_21 = temp_a2_8 >> 2;
                                if (temp_a1_21 != 0) {
                                    if (temp_a1_21 >= 2) {
                                        var_a0_24 = var_a0_23 + 4;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
loop_673:
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        if (var_a0_24 != (temp_a2_8 - 4)) {
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            if (var_a0_24 != (temp_a2_8 - 8)) {
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                if (var_a0_24 != (temp_a2_8 - 0xC)) {
                                                    temp_t1->unk4077C = 0;
                                                    temp_t1->unk4077C = 0;
                                                    temp_t1->unk4077C = 0;
                                                    var_a0_24 += 0x10;
                                                    temp_t1->unk4077C = 0;
                                                    if (var_a0_24 != temp_a2_8) {
                                                        goto loop_673;
                                                    }
                                                }
                                            }
                                        }
                                        temp_t1->unk4077C = 0;
                                    } else {
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                    }
                                    temp_t1->unk4077C = 0;
                                }
                            }
                        }
                    }
                }
            }
        } else if (var_s4 < 0x21) {
            temp_t2_13 = var_s3 >> 3;
            if (var_s3 >= 8U) {
                var_s3 &= 7;
                var_ra += temp_t2_13;
            }
            if (var_s3 != 0) {
                if (unkspC0 >= 0x10) {
                    var_s6_3 = 0;
                    var_s0_8 = sp90;
                    var_s5_4 = unkspC0;
                    sp158 = var_ra;
                    spE8 = arg3 * 0x10;
                    var_s1_7 = sp158;
                    var_v0_37 = 0;
                    do {
                        var_s6_3 += 1;
                        var_s5_4 -= 0x10;
                        var_a3_14 = var_s1_7;
                        temp_t1->unk4057C = (s32) var_gp;
                        temp_t1->unk4077C = (s32) var_s0_8;
                        temp_t1->unk4077C = (s32) var_s4;
                        temp_t1->unk4077C = 0x10;
                        temp_a7_2 = var_s1_7 & 3;
                        var_v1_22 = var_s1_7 - temp_a7_2;
                        var_a7_6 = (temp_a7_2 * 8) + var_s3;
                        var_t1_3 = ((u32) (var_s4 + var_a7_6) < 0x21U) != 0;
loop_223:
                        temp_a1_22 = *var_v1_22;
                        if (var_t1_3 != 0) {
                            var_v1_22 = &sp24;
                        }
                        temp_t0_3 = temp_a1_22 << var_a7_6;
                        var_a3_14 += arg3;
                        var_v1_23 = ((u32) var_v1_22->unk4 >> (0x20 - var_a7_6)) | temp_t0_3;
                        if (var_t1_3 != 0) {
                            var_v1_23 = temp_t0_3;
                        }
                        temp_t1->unk4077C = var_v1_23;
                        temp_a1_23 = var_a3_14 & 3;
                        var_a7_6 = (temp_a1_23 * 8) + var_s3;
                        var_t1_3 = ((u32) (var_s4 + var_a7_6) < 0x21U) != 0;
                        var_v0_37 += 1;
                        var_v1_22 = var_a3_14 - temp_a1_23;
                        if (var_v0_37 != 0x10) {
                            goto loop_223;
                        }
                        var_s1_7 += spE8;
                        var_s0_8 += 0x10;
                        var_v0_37 = 0;
                    } while (var_s5_4 >= 0x10);
                } else {
                    sp158 = var_ra;
                    var_s6_3 = 0;
                }
                temp_a0_17 = var_s6_3 * 0x10;
                temp_s5_10 = unkspC0 - temp_a0_17;
                if (temp_s5_10 != 0) {
                    temp_t1->unk4057C = (s32) var_gp;
                    temp_t1->unk4077C = (s32) (temp_a0_17 + sp90);
                    temp_t1->unk4077C = (s32) var_s4;
                    temp_t1->unk4077C = temp_s5_10;
                    if (temp_s5_10 > 0) {
                        var_v0_38 = 0;
                        var_a4_11 = (var_s6_3 * arg3 * 0x10) + sp158;
                        temp_a7_3 = var_a4_11 & 3;
                        var_v1_24 = var_a4_11 - temp_a7_3;
                        var_a7_7 = (temp_a7_3 * 8) + var_s3;
                        var_t1_4 = ((u32) (var_s4 + var_a7_7) < 0x21U) != 0;
                        do {
                            temp_a1_24 = *var_v1_24;
                            if (var_t1_4 != 0) {
                                var_v1_24 = &sp24;
                            }
                            temp_t0_4 = temp_a1_24 << var_a7_7;
                            var_a4_11 += arg3;
                            var_v1_25 = ((u32) var_v1_24->unk4 >> (0x20 - var_a7_7)) | temp_t0_4;
                            if (var_t1_4 != 0) {
                                var_v1_25 = temp_t0_4;
                            }
                            temp_t1->unk4077C = var_v1_25;
                            temp_a1_25 = var_a4_11 & 3;
                            var_a7_7 = (temp_a1_25 * 8) + var_s3;
                            var_t1_4 = ((u32) (var_s4 + var_a7_7) < 0x21U) != 0;
                            var_v0_38 += 1;
                            var_v1_24 = var_a4_11 - temp_a1_25;
                        } while (var_v0_38 != temp_s5_10);
                    }
                    if (temp_s5_10 < 0x10) {
                        var_a0_25 = temp_s5_10;
                        do {
                            var_a0_25 += 1;
                            temp_t1->unk4077C = 0;
                        } while (var_a0_25 < 0x10);
                    }
                }
            } else {
                temp_a0_18 = arg3 | var_ra;
                sp58 = sp90;
                if (temp_a0_18 & 3) {
                    if (temp_a0_18 & 1) {
                        var_t0_3 = 0;
                        if (unkspC0 >= 0x10) {
                            var_a6_8 = sp90;
                            var_a7_8 = unkspC0;
                            var_a5_8 = var_ra;
loop_575:
                            var_a3_15 = 0;
                            var_a2_7 = var_a5_8;
                            var_a5_8 += arg3 * 0x10;
                            var_a7_8 -= 0x10;
                            temp_t1->unk4057C = (s32) var_gp;
                            temp_t1->unk4077C = (s32) var_a6_8;
                            temp_t1->unk4077C = (s32) var_s4;
                            temp_t1->unk4077C = 0x10;
loop_578:
                            temp_v0_30 = -4 & var_a2_7;
                            temp_a0_19 = var_a2_7 & 3;
                            var_a3_15 += 2;
                            if (temp_a0_19 != 0) {
                                temp_v1_22 = temp_a0_19 * 8;
                                temp_t1->unk4077C = (s32) ((temp_v0_30->unk0 << temp_v1_22) | ((u32) temp_v0_30->unk4 >> (0x20 - temp_v1_22)));
                            } else {
                                temp_t1->unk4077C = (s32) *var_a2_7;
                            }
                            temp_a2_9 = var_a2_7 + arg3;
                            temp_a0_20 = temp_a2_9 & 3;
                            temp_t9_8 = temp_a0_20 * 8;
                            if (temp_a0_20 == 0) {
                                var_v1_26 = *temp_a2_9;
                            } else {
                                temp_t2_14 = -4 & temp_a2_9;
                                var_v1_26 = (temp_t2_14->unk0 << temp_t9_8) | ((u32) temp_t2_14->unk4 >> (0x20 - temp_t9_8));
                            }
                            temp_t1->unk4077C = var_v1_26;
                            var_a2_7 = temp_a2_9 + arg3;
                            if (var_a3_15 != 0x10) {
                                goto loop_578;
                            }
                            var_t0_3 += 1;
                            var_a6_8 += 0x10;
                            if (var_a7_8 >= 0x10) {
                                goto loop_575;
                            }
                        } else {
                            var_t0_3 = 0;
                        }
                        temp_a0_21 = var_t0_3 * 0x10;
                        temp_a7_4 = unkspC0 - temp_a0_21;
                        if (temp_a7_4 != 0) {
                            temp_t1->unk4057C = (s32) var_gp;
                            temp_t1->unk4077C = (s32) (temp_a0_21 + sp90);
                            temp_t1->unk4077C = (s32) var_s4;
                            temp_t1->unk4077C = temp_a7_4;
                            if (temp_a7_4 > 0) {
                                var_a3_16 = 0;
                                var_a1_19 = (var_t0_3 * arg3 * 0x10) + var_ra;
                                if (temp_a7_4 & 1) {
                                    temp_a2_10 = var_a1_19 & 3;
                                    temp_t9_9 = -4 & var_a1_19;
                                    if (temp_a2_10 != 0) {
                                        temp_v0_31 = temp_a2_10 * 8;
                                        var_t2_3 = (temp_t9_9->unk0 << temp_v0_31) | ((u32) temp_t9_9->unk4 >> (0x20 - temp_v0_31));
                                    } else {
                                        var_t2_3 = *var_a1_19;
                                    }
                                    temp_t1->unk4077C = var_t2_3;
                                    var_a1_19 += arg3;
                                    var_a3_16 = 1;
                                }
                                var_t2_4 = -4 & var_a1_19;
                                if ((temp_a7_4 >> 1) != 0) {
loop_598:
                                    temp_a2_11 = var_a1_19 & 3;
                                    var_a3_16 += 2;
                                    if (temp_a2_11 != 0) {
                                        temp_t9_10 = temp_a2_11 * 8;
                                        temp_t1->unk4077C = (s32) ((var_t2_4->unk0 << temp_t9_10) | ((u32) var_t2_4->unk4 >> (0x20 - temp_t9_10)));
                                    } else {
                                        temp_t1->unk4077C = (s32) *var_a1_19;
                                    }
                                    temp_a1_26 = var_a1_19 + arg3;
                                    temp_a2_12 = temp_a1_26 & 3;
                                    temp_v1_23 = temp_a2_12 * 8;
                                    if (temp_a2_12 == 0) {
                                        var_t9_9 = *temp_a1_26;
                                    } else {
                                        temp_v0_32 = -4 & temp_a1_26;
                                        var_t9_9 = (temp_v0_32->unk0 << temp_v1_23) | ((u32) temp_v0_32->unk4 >> (0x20 - temp_v1_23));
                                    }
                                    temp_t1->unk4077C = var_t9_9;
                                    var_a1_19 = temp_a1_26 + arg3;
                                    if (var_a3_16 != temp_a7_4) {
                                        var_t2_4 = -4 & var_a1_19;
                                        goto loop_598;
                                    }
                                }
                            }
                            if (temp_a7_4 < 0x10) {
                                var_a0_26 = temp_a7_4;
                                do {
                                    var_a0_26 += 1;
                                    temp_t1->unk4077C = 0;
                                } while (var_a0_26 < 0x10);
                            }
                        }
                    } else {
                        if (unkspC0 >= 0x80) {
                            var_t3_6 = 0;
                            if (unkspC0 >= 0x40) {
                                var_t1_5 = sp90;
                                var_t8_6 = unkspC0;
                                spD8 = (s64) var_gp;
                                var_t0_4 = var_ra;
                                do {
                                    var_v1_27 = 0;
                                    var_t3_6 += 1;
                                    var_a1_20 = var_t0_4;
                                    var_a3_17 = var_t0_4 + arg3;
                                    var_a4_12 = var_a3_17 + arg3;
                                    temp_t1->unk40518 = (s32) spD8;
                                    temp_t1->unk4077C = (s32) var_t1_5;
                                    temp_t1->unk4077C = (s32) var_s4;
                                    temp_t1->unk4077C = 0x40;
                                    var_a0_27 = *var_t0_4;
loop_722:
                                    sp8 = var_a0_27;
                                    spA = var_a1_20->unk2;
                                    temp_t1->unk4077C = (s32) sp8;
                                    spA = var_a3_17->unk2;
                                    sp8 = var_a3_17->unk0;
                                    var_v1_27 += 4;
                                    temp_a0_22 = var_a4_12 + arg3;
                                    var_a1_20 = temp_a0_22 + arg3;
                                    temp_t1->unk4077C = (s32) sp8;
                                    temp_v0_33 = var_a4_12->unk0;
                                    if (var_v1_27 != 0x40) {
                                        sp8 = temp_v0_33;
                                        spA = var_a4_12->unk2;
                                        temp_t1->unk4077C = (s32) sp8;
                                        spA = temp_a0_22->unk2;
                                        sp8 = temp_a0_22->unk0;
                                        var_a3_17 = var_a1_20 + arg3;
                                        var_a4_12 = var_a3_17 + arg3;
                                        temp_t1->unk4077C = (s32) sp8;
                                        var_a0_27 = *var_a1_20;
                                        goto loop_722;
                                    }
                                    sp8 = temp_v0_33;
                                    spA = var_a4_12->unk2;
                                    temp_t1->unk4077C = (s32) sp8;
                                    var_t1_5 += 0x40;
                                    var_t0_4 += arg3 << 6;
                                    sp8 = temp_a0_22->unk0;
                                    spA = temp_a0_22->unk2;
                                    var_t8_6 -= 0x40;
                                    temp_t1->unk4077C = (s32) sp8;
                                } while (var_t8_6 >= 0x40);
                            } else {
                                spD8 = (s64) var_gp;
                                var_t3_6 = 0;
                            }
                            temp_t1->unk407A8 = 0;
                            temp_t9_11 = var_t3_6 << 6;
                            var_gp = (s16) spD8;
                            unkspC0 -= temp_t9_11;
                            sp58 = temp_t9_11 + sp90;
                            var_ra += (var_t3_6 * arg3) << 6;
                        }
                        var_t8_7 = 0;
                        if (unkspC0 >= 0x20) {
                            var_t1_6 = sp58;
                            var_s0_9 = unkspC0;
                            var_t3_7 = var_ra;
                            do {
                                var_v1_28 = 0;
                                var_t8_7 += 1;
                                var_a1_21 = var_t3_7;
                                var_a3_18 = var_t3_7 + arg3;
                                var_a4_13 = var_a3_18 + arg3;
                                temp_t1->unk40580 = (s32) var_gp;
                                temp_t1->unk4077C = (s32) var_t1_6;
                                temp_t1->unk4077C = (s32) var_s4;
                                temp_t1->unk4077C = 0x20;
                                var_a0_28 = *var_t3_7;
loop_729:
                                sp8 = var_a0_28;
                                spA = var_a1_21->unk2;
                                temp_t1->unk4077C = (s32) sp8;
                                spA = var_a3_18->unk2;
                                sp8 = var_a3_18->unk0;
                                var_v1_28 += 4;
                                temp_a0_23 = var_a4_13 + arg3;
                                var_a1_21 = temp_a0_23 + arg3;
                                temp_t1->unk4077C = (s32) sp8;
                                temp_v0_34 = var_a4_13->unk0;
                                if (var_v1_28 != 0x20) {
                                    sp8 = temp_v0_34;
                                    spA = var_a4_13->unk2;
                                    temp_t1->unk4077C = (s32) sp8;
                                    spA = temp_a0_23->unk2;
                                    sp8 = temp_a0_23->unk0;
                                    var_a3_18 = var_a1_21 + arg3;
                                    var_a4_13 = var_a3_18 + arg3;
                                    temp_t1->unk4077C = (s32) sp8;
                                    var_a0_28 = *var_a1_21;
                                    goto loop_729;
                                }
                                sp8 = temp_v0_34;
                                spA = var_a4_13->unk2;
                                temp_t1->unk4077C = (s32) sp8;
                                var_t1_6 += 0x20;
                                var_t3_7 += arg3 << 5;
                                sp8 = temp_a0_23->unk0;
                                spA = temp_a0_23->unk2;
                                var_s0_9 -= 0x20;
                                temp_t1->unk4077C = (s32) sp8;
                            } while (var_s0_9 >= 0x20);
                        } else {
                            var_t8_7 = 0;
                        }
                        temp_t9_12 = var_t8_7 << 5;
                        temp_s0_14 = unkspC0 - temp_t9_12;
                        sp50 = temp_t9_12;
                        if (temp_s0_14 >= 0x10) {
                            var_s1_8 = 0;
                            var_t3_8 = temp_s0_14;
                            var_t0_5 = sp50 + sp58;
                            var_t1_7 = (var_t8_7 * arg3 * 2 * 0x10) + var_ra;
                            do {
                                var_v1_29 = 0;
                                var_s1_8 += 1;
                                var_a1_22 = var_t1_7;
                                var_a3_19 = var_t1_7 + arg3;
                                var_a4_14 = var_a3_19 + arg3;
                                temp_t1->unk4057C = (s32) var_gp;
                                temp_t1->unk4077C = var_t0_5;
                                temp_t1->unk4077C = (s32) var_s4;
                                temp_t1->unk4077C = 0x10;
                                var_a0_29 = *var_t1_7;
loop_735:
                                sp8 = var_a0_29;
                                spA = var_a1_22->unk2;
                                temp_t1->unk4077C = (s32) sp8;
                                spA = var_a3_19->unk2;
                                sp8 = var_a3_19->unk0;
                                var_v1_29 += 4;
                                temp_a0_24 = var_a4_14 + arg3;
                                var_a1_22 = temp_a0_24 + arg3;
                                temp_t1->unk4077C = (s32) sp8;
                                temp_v0_35 = var_a4_14->unk0;
                                if (var_v1_29 != 0x10) {
                                    sp8 = temp_v0_35;
                                    spA = var_a4_14->unk2;
                                    temp_t1->unk4077C = (s32) sp8;
                                    spA = temp_a0_24->unk2;
                                    sp8 = temp_a0_24->unk0;
                                    var_a3_19 = var_a1_22 + arg3;
                                    var_a4_14 = var_a3_19 + arg3;
                                    temp_t1->unk4077C = (s32) sp8;
                                    var_a0_29 = *var_a1_22;
                                    goto loop_735;
                                }
                                sp8 = temp_v0_35;
                                spA = var_a4_14->unk2;
                                temp_t1->unk4077C = (s32) sp8;
                                var_t0_5 += 0x10;
                                var_t1_7 += arg3 * 0x10;
                                sp8 = temp_a0_24->unk0;
                                spA = temp_a0_24->unk2;
                                var_t3_8 -= 0x10;
                                temp_t1->unk4077C = (s32) sp8;
                            } while (var_t3_8 >= 0x10);
                        } else {
                            var_s1_8 = 0;
                        }
                        temp_a0_25 = var_s1_8 * 0x10;
                        temp_t3_10 = temp_s0_14 - temp_a0_25;
                        if (temp_t3_10 != 0) {
                            temp_t1->unk4057C = (s32) var_gp;
                            temp_t1->unk4077C = (s32) (sp50 + sp58 + temp_a0_25);
                            temp_t1->unk4077C = (s32) var_s4;
                            temp_t1->unk4077C = temp_t3_10;
                            if (temp_t3_10 > 0) {
                                var_a2_8 = 0;
                                var_a0_30 = (((var_s1_8 * arg3) + (var_t8_7 * arg3 * 2)) * 0x10) + var_ra;
                                if (temp_t3_10 & 1) {
                                    sp8 = var_a0_30->unk0;
                                    spA = var_a0_30->unk2;
                                    var_a0_30 += arg3;
                                    var_a2_8 = 1;
                                    temp_t1->unk4077C = (s32) sp8;
                                }
                                temp_a4_7 = temp_t3_10 >> 1;
                                var_a6_9 = var_a0_30;
                                if (temp_a4_7 != 0) {
                                    if (temp_a4_7 >= 2) {
                                        var_v1_30 = var_a6_9->unk0;
                                        var_a4_15 = var_a2_8;
                                        var_a3_20 = var_a6_9 + arg3;
                                        var_a1_23 = var_a3_20 + arg3;
loop_744:
                                        sp8 = var_v1_30;
                                        spA = var_a6_9->unk2;
                                        temp_t1->unk4077C = (s32) sp8;
                                        spA = var_a3_20->unk2;
                                        sp8 = var_a3_20->unk0;
                                        var_a4_15 += 4;
                                        var_a3_20 = var_a1_23 + arg3;
                                        var_a6_9 = var_a3_20 + arg3;
                                        temp_t1->unk4077C = (s32) sp8;
                                        temp_v1_24 = var_a1_23->unk0;
                                        if (var_a4_15 != temp_t3_10) {
                                            sp8 = temp_v1_24;
                                            spA = var_a1_23->unk2;
                                            temp_t1->unk4077C = (s32) sp8;
                                            spA = var_a3_20->unk2;
                                            sp8 = var_a3_20->unk0;
                                            var_a3_20 = var_a6_9 + arg3;
                                            var_a1_23 = var_a3_20 + arg3;
                                            temp_t1->unk4077C = (s32) sp8;
                                            var_v1_30 = *var_a6_9;
                                            if (var_a4_15 == (temp_t3_10 - 2)) {
                                                var_a2_9 = var_v1_30;
                                            } else {
                                                goto loop_744;
                                            }
                                        } else {
                                            var_a6_9 = var_a1_23;
                                            var_a2_9 = temp_v1_24;
                                        }
                                        sp8 = var_a2_9;
                                        spA = var_a6_9->unk2;
                                        temp_t1->unk4077C = (s32) sp8;
                                        spA = var_a3_20->unk2;
                                        sp8 = var_a3_20->unk0;
                                        temp_t1->unk4077C = (s32) sp8;
                                    } else {
                                        sp8 = var_a6_9->unk0;
                                        spA = var_a6_9->unk2;
                                        temp_t1->unk4077C = (s32) sp8;
                                        temp_t2_15 = var_a6_9 + arg3;
                                        sp8 = temp_t2_15->unk0;
                                        spA = temp_t2_15->unk2;
                                        temp_t1->unk4077C = (s32) sp8;
                                    }
                                }
                            }
                            if (temp_t3_10 < 0x10) {
                                var_a1_24 = temp_t3_10;
                                do {
                                    var_a1_24 += 1;
                                    temp_t1->unk4077C = 0;
                                } while (var_a1_24 < 0x10);
                            }
                        }
                    }
                } else {
                    if (unkspC0 >= 0x80) {
                        var_t8_8 = 0;
                        if (unkspC0 >= 0x40) {
                            var_t3_9 = sp90;
                            var_s0_10 = unkspC0;
                            spD8 = (s64) var_gp;
                            var_t1_8 = var_ra;
                            var_v1_31 = 0;
                            do {
                                var_s0_10 -= 0x40;
                                var_a7_9 = var_t1_8 + arg3;
                                var_a3_21 = var_a7_9 + arg3;
                                var_a1_25 = var_a3_21 + arg3;
                                temp_t1->unk40518 = (s32) spD8;
                                temp_t1->unk4077C = (s32) var_t3_9;
                                temp_t1->unk4077C = (s32) var_s4;
                                temp_t1->unk4077C = 0x40;
                                var_a0_31 = var_a1_25 + arg3;
                                var_v0_39 = *var_t1_8;
                                var_t1_8 += arg3 << 6;
loop_687:
                                temp_t1->unk4077C = var_v0_39;
                                temp_t1->unk4077C = (s32) *var_a7_9;
                                var_v1_31 += 8;
                                temp_a7_5 = var_a0_31 + arg3;
                                temp_t1->unk4077C = (s32) *var_a3_21;
                                temp_a3_22 = temp_a7_5 + arg3;
                                temp_a1_27 = temp_a3_22 + arg3;
                                temp_a4_8 = temp_a1_27 + arg3;
                                temp_t1->unk4077C = (s32) *var_a1_25;
                                temp_v0_36 = *var_a0_31;
                                if (var_v1_31 != 0x40) {
                                    temp_t1->unk4077C = temp_v0_36;
                                    temp_t1->unk4077C = (s32) *temp_a7_5;
                                    var_a7_9 = temp_a4_8 + arg3;
                                    temp_t1->unk4077C = (s32) *temp_a3_22;
                                    var_a3_21 = var_a7_9 + arg3;
                                    var_a1_25 = var_a3_21 + arg3;
                                    var_a0_31 = var_a1_25 + arg3;
                                    temp_t1->unk4077C = (s32) *temp_a1_27;
                                    var_v0_39 = *temp_a4_8;
                                    goto loop_687;
                                }
                                var_t8_8 += 1;
                                temp_t1->unk4077C = temp_v0_36;
                                temp_t1->unk4077C = (s32) *temp_a7_5;
                                temp_t1->unk4077C = (s32) *temp_a3_22;
                                var_t3_9 += 0x40;
                                temp_t1->unk4077C = (s32) *temp_a1_27;
                                var_v1_31 = 0;
                            } while (var_s0_10 >= 0x40);
                        } else {
                            spD8 = (s64) var_gp;
                            var_t8_8 = 0;
                        }
                        temp_t1->unk407A8 = 0;
                        temp_t9_13 = var_t8_8 << 6;
                        var_gp = (s16) spD8;
                        unkspC0 -= temp_t9_13;
                        sp58 = temp_t9_13 + sp90;
                        var_ra += (var_t8_8 * arg3) << 6;
                    }
                    var_s0_11 = 0;
                    if (unkspC0 >= 0x20) {
                        var_t8_9 = sp58;
                        var_s1_9 = unkspC0;
                        var_t3_10 = var_ra;
                        var_v1_32 = 0;
                        do {
                            var_s1_9 -= 0x20;
                            var_a7_10 = var_t3_10 + arg3;
                            var_a3_22 = var_a7_10 + arg3;
                            var_a1_26 = var_a3_22 + arg3;
                            temp_t1->unk40580 = (s32) var_gp;
                            temp_t1->unk4077C = (s32) var_t8_9;
                            temp_t1->unk4077C = (s32) var_s4;
                            temp_t1->unk4077C = 0x20;
                            var_a0_32 = var_a1_26 + arg3;
                            var_v0_40 = *var_t3_10;
                            var_t3_10 += arg3 << 5;
loop_694:
                            temp_t1->unk4077C = var_v0_40;
                            temp_t1->unk4077C = (s32) *var_a7_10;
                            var_v1_32 += 8;
                            temp_a7_6 = var_a0_32 + arg3;
                            temp_t1->unk4077C = (s32) *var_a3_22;
                            temp_a3_23 = temp_a7_6 + arg3;
                            temp_a1_28 = temp_a3_23 + arg3;
                            temp_a4_9 = temp_a1_28 + arg3;
                            temp_t1->unk4077C = (s32) *var_a1_26;
                            temp_v0_37 = *var_a0_32;
                            if (var_v1_32 != 0x20) {
                                temp_t1->unk4077C = temp_v0_37;
                                temp_t1->unk4077C = (s32) *temp_a7_6;
                                var_a7_10 = temp_a4_9 + arg3;
                                temp_t1->unk4077C = (s32) *temp_a3_23;
                                var_a3_22 = var_a7_10 + arg3;
                                var_a1_26 = var_a3_22 + arg3;
                                var_a0_32 = var_a1_26 + arg3;
                                temp_t1->unk4077C = (s32) *temp_a1_28;
                                var_v0_40 = *temp_a4_9;
                                goto loop_694;
                            }
                            var_s0_11 += 1;
                            temp_t1->unk4077C = temp_v0_37;
                            temp_t1->unk4077C = (s32) *temp_a7_6;
                            temp_t1->unk4077C = (s32) *temp_a3_23;
                            var_t8_9 += 0x20;
                            temp_t1->unk4077C = (s32) *temp_a1_28;
                            var_v1_32 = 0;
                        } while (var_s1_9 >= 0x20);
                    } else {
                        var_s0_11 = 0;
                    }
                    temp_a5_4 = var_s0_11 << 5;
                    temp_s1_11 = unkspC0 - temp_a5_4;
                    if (temp_s1_11 < 0x10) {
                        var_a2_10 = 0;
                    } else {
                        var_a2_10 = 0;
                        var_t3_11 = temp_s1_11;
                        var_a1_27 = temp_a5_4 + sp58;
                        var_a0_33 = (var_s0_11 * arg3 * 2 * 0x10) + var_ra;
                        var_a3_23 = var_a0_33;
                        do {
                            temp_t1->unk4057C = (s32) var_gp;
                            temp_t1->unk4077C = var_a1_27;
                            temp_t1->unk4077C = (s32) var_s4;
                            temp_t1->unk4077C = 0x10;
                            temp_t1->unk4077C = (s32) *var_a3_23;
                            temp_t2_16 = var_a3_23 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_16;
                            temp_t2_17 = temp_t2_16 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_17;
                            temp_t2_18 = temp_t2_17 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_18;
                            temp_t2_19 = temp_t2_18 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_19;
                            temp_t2_20 = temp_t2_19 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_20;
                            temp_t2_21 = temp_t2_20 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_21;
                            temp_t2_22 = temp_t2_21 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_22;
                            temp_t2_23 = temp_t2_22 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_23;
                            temp_t2_24 = temp_t2_23 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_24;
                            temp_t2_25 = temp_t2_24 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_25;
                            temp_t2_26 = temp_t2_25 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_26;
                            temp_t2_27 = temp_t2_26 + arg3;
                            temp_t1->unk4077C = (s32) *temp_t2_27;
                            temp_t2_28 = temp_t2_27 + arg3;
                            var_a1_27 += 0x10;
                            temp_t1->unk4077C = (s32) *temp_t2_28;
                            temp_t2_29 = temp_t2_28 + arg3;
                            var_a0_33 += arg3 * 0x10;
                            var_a2_10 += 1;
                            temp_t1->unk4077C = (s32) *temp_t2_29;
                            var_t3_11 -= 0x10;
                            temp_t1->unk4077C = (s32) *(temp_t2_29 + arg3);
                            var_a3_23 = var_a0_33;
                        } while (var_t3_11 >= 0x10);
                    }
                    temp_a0_26 = var_a2_10 * 0x10;
                    temp_t3_11 = temp_s1_11 - temp_a0_26;
                    if (temp_t3_11 != 0) {
                        temp_t1->unk4057C = (s32) var_gp;
                        temp_t1->unk4077C = (s32) (temp_a5_4 + sp58 + temp_a0_26);
                        temp_t1->unk4077C = (s32) var_s4;
                        temp_t1->unk4077C = temp_t3_11;
                        if (temp_t3_11 > 0) {
                            var_a0_34 = 0;
                            var_a3_24 = temp_t3_11 & 3;
                            var_a1_28 = (((var_a2_10 * arg3) + (var_s0_11 * arg3 * 2)) * 0x10) + var_ra;
                            if (var_a3_24 != 0) {
                                do {
                                    temp_t9_14 = *var_a1_28;
                                    var_a1_28 += arg3;
                                    var_a0_34 += 1;
                                    var_a3_24 -= 1;
                                    temp_t1->unk4077C = temp_t9_14;
                                } while (var_a3_24 != 0);
                            }
                            temp_a5_5 = temp_t3_11 >> 2;
                            if (temp_a5_5 != 0) {
                                if (temp_a5_5 >= 2) {
                                    var_v0_41 = *var_a1_28;
                                    var_a6_10 = var_a1_28 + arg3;
                                    var_a7_11 = var_a0_34;
                                    var_a3_25 = var_a6_10 + arg3;
                                    var_a1_29 = var_a3_25 + arg3;
                                    var_a4_16 = var_a1_29 + arg3;
loop_708:
                                    temp_t1->unk4077C = var_v0_41;
                                    temp_t1->unk4077C = (s32) *var_a6_10;
                                    var_a7_11 += 8;
                                    var_a6_10 = var_a4_16 + arg3;
                                    temp_t1->unk4077C = (s32) *var_a3_25;
                                    var_a3_25 = var_a6_10 + arg3;
                                    temp_v0_38 = *var_a1_29;
                                    var_a1_29 = var_a3_25 + arg3;
                                    temp_a0_27 = var_a1_29 + arg3;
                                    temp_t1->unk4077C = temp_v0_38;
                                    temp_v0_39 = *var_a4_16;
                                    if (var_a7_11 != temp_t3_11) {
                                        temp_t1->unk4077C = temp_v0_39;
                                        temp_t1->unk4077C = (s32) *var_a6_10;
                                        var_a6_10 = temp_a0_27 + arg3;
                                        temp_t1->unk4077C = (s32) *var_a3_25;
                                        var_a3_25 = var_a6_10 + arg3;
                                        temp_v0_40 = *var_a1_29;
                                        var_a1_29 = var_a3_25 + arg3;
                                        var_a4_16 = var_a1_29 + arg3;
                                        temp_t1->unk4077C = temp_v0_40;
                                        var_v0_41 = *temp_a0_27;
                                        if (var_a7_11 == (temp_t3_11 - 4)) {
                                            var_a2_11 = var_v0_41;
                                        } else {
                                            goto loop_708;
                                        }
                                    } else {
                                        var_a2_11 = temp_v0_39;
                                    }
                                    temp_t1->unk4077C = var_a2_11;
                                    temp_t1->unk4077C = (s32) *var_a6_10;
                                    temp_t1->unk4077C = (s32) *var_a3_25;
                                    temp_t1->unk4077C = (s32) *var_a1_29;
                                } else {
                                    temp_t1->unk4077C = (s32) *var_a1_28;
                                    temp_t2_30 = var_a1_28 + arg3;
                                    temp_t1->unk4077C = (s32) *temp_t2_30;
                                    temp_t2_31 = temp_t2_30 + arg3;
                                    temp_t1->unk4077C = (s32) *temp_t2_31;
                                    temp_t1->unk4077C = (s32) *(temp_t2_31 + arg3);
                                }
                            }
                        }
                        if (temp_t3_11 < 0x10) {
                            var_a0_35 = temp_t3_11;
                            do {
                                var_a0_35 += 1;
                                temp_t1->unk4077C = 0;
                            } while (var_a0_35 < 0x10);
                        }
                    }
                }
            }
        } else {
            var_v1_33 = var_s3 < 0x10U;
            if (var_ra & 1) {
                var_ra -= 1;
                var_s3 += 8;
                var_v1_33 = var_s3 < 0x10U;
            }
            if (var_v1_33 == 0) {
                temp_t2_32 = var_s3 >> 4;
                var_s3 &= 0xF;
                var_ra += temp_t2_32 * 2;
            }
            var_t8_10 = sp130->unk0;
            temp_s5_11 = sp130->unk2;
            if (var_s3 != 0) {
                var_a5_9 = var_ra;
                sp100 = unkspC0 & 0x10;
                sp108 = unkspC0 & 0x20;
                sp120 = unkspC0 & 0xF;
                sp140 = (unkspC0 >> 6) & 0xFF;
                if (arg3 & 1) {
                    var_t0_6 = temp_s5_11;
                    if (sp140 != 0) {
                        if (sp140 > 0) {
                            var_t1_9 = temp_s5_11;
                            do {
                                var_v1_34 = 0;
                                var_a3_26 = var_a5_9 + arg3;
                                temp_t1->unk40514 = (s32) var_t8_10;
                                temp_t1->unk4077C = (s32) var_t1_9;
                                temp_t1->unk4077C = (s32) (0x10 - var_s3);
                                temp_t1->unk4077C = 0x40;
                                var_a1_30 = arg3 + var_a3_26;
                                var_v0_42 = *var_a5_9;
loop_252:
                                sp10 = var_v0_42 << var_s3;
                                sp12 = (var_a3_26->unk1 | (var_a3_26->unk0 << 8)) << var_s3;
                                var_v1_34 += 2;
                                temp_a3_24 = var_a1_30 + arg3;
                                temp_a0_28 = arg3 + temp_a3_24;
                                temp_t1->unk4077C = (s32) sp10;
                                temp_v0_41 = *var_a1_30;
                                if (var_v1_34 != 0x20) {
                                    sp10 = temp_v0_41 << var_s3;
                                    sp12 = (temp_a3_24->unk1 | (temp_a3_24->unk0 << 8)) << var_s3;
                                    var_a3_26 = temp_a0_28 + arg3;
                                    var_a1_30 = arg3 + var_a3_26;
                                    temp_t1->unk4077C = (s32) sp10;
                                    var_v0_42 = *temp_a0_28;
                                    goto loop_252;
                                }
                                var_t1_9 += 0x40;
                                sp10 = temp_v0_41 << var_s3;
                                sp12 = (temp_a3_24->unk1 | (temp_a3_24->unk0 << 8)) << var_s3;
                                temp_t1->unk4077C = (s32) sp10;
                                var_a5_9 = (s64) temp_a0_28;
                            } while (var_t1_9 != (temp_s5_11 + (sp140 << 6)));
                            var_a0_36 = sp140;
                        } else {
                            var_a0_36 = 0;
                        }
                        temp_t1->unk407A8 = 0;
                        var_t0_6 = (var_a0_36 << 6) + temp_s5_11;
                    }
                    var_v1_35 = 0;
                    if (sp108 != 0) {
                        var_a3_27 = var_a5_9 + arg3;
                        temp_t1->unk40510 = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_t0_6;
                        temp_t1->unk4077C = (s32) (0x10 - var_s3);
                        temp_t1->unk4077C = 0x20;
                        var_a1_31 = arg3 + var_a3_27;
                        var_v0_43 = *var_a5_9;
loop_259:
                        sp10 = var_v0_43 << var_s3;
                        sp12 = (var_a3_27->unk1 | (var_a3_27->unk0 << 8)) << var_s3;
                        var_v1_35 += 2;
                        temp_a3_25 = var_a1_31 + arg3;
                        temp_a0_29 = arg3 + temp_a3_25;
                        temp_t1->unk4077C = (s32) sp10;
                        temp_v0_42 = *var_a1_31;
                        if (var_v1_35 != 0x10) {
                            sp10 = temp_v0_42 << var_s3;
                            sp12 = (temp_a3_25->unk1 | (temp_a3_25->unk0 << 8)) << var_s3;
                            var_a3_27 = temp_a0_29 + arg3;
                            var_a1_31 = arg3 + var_a3_27;
                            temp_t1->unk4077C = (s32) sp10;
                            var_v0_43 = *temp_a0_29;
                            goto loop_259;
                        }
                        sp10 = temp_v0_42 << var_s3;
                        sp12 = (temp_a3_25->unk1 | (temp_a3_25->unk0 << 8)) << var_s3;
                        var_a5_9 = (s64) temp_a0_29;
                        var_t0_6 += 0x20;
                        temp_t1->unk4077C = (s32) sp10;
                        temp_t1->unk407A8 = 0;
                    }
                    var_v1_36 = 0;
                    if (sp100 != 0) {
                        var_a3_28 = var_a5_9 + arg3;
                        temp_t1->unk4050C = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_t0_6;
                        temp_t1->unk4077C = (s32) (0x10 - var_s3);
                        temp_t1->unk4077C = 0x10;
                        var_a1_32 = arg3 + var_a3_28;
                        var_v0_44 = *var_a5_9;
loop_264:
                        sp10 = var_v0_44 << var_s3;
                        sp12 = (var_a3_28->unk1 | (var_a3_28->unk0 << 8)) << var_s3;
                        var_v1_36 += 2;
                        temp_a3_26 = var_a1_32 + arg3;
                        temp_a0_30 = arg3 + temp_a3_26;
                        temp_t1->unk4077C = (s32) sp10;
                        temp_v0_43 = *var_a1_32;
                        if (var_v1_36 != 8) {
                            sp10 = temp_v0_43 << var_s3;
                            sp12 = (temp_a3_26->unk1 | (temp_a3_26->unk0 << 8)) << var_s3;
                            var_a3_28 = temp_a0_30 + arg3;
                            var_a1_32 = arg3 + var_a3_28;
                            temp_t1->unk4077C = (s32) sp10;
                            var_v0_44 = *temp_a0_30;
                            goto loop_264;
                        }
                        sp10 = temp_v0_43 << var_s3;
                        sp12 = (temp_a3_26->unk1 | (temp_a3_26->unk0 << 8)) << var_s3;
                        var_a5_9 = (s64) temp_a0_30;
                        var_t0_6 += 0x10;
                        temp_t1->unk4077C = (s32) sp10;
                        temp_t1->unk407A8 = 0;
                    }
                    if (sp120 != 0) {
                        temp_t1->unk4050C = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_t0_6;
                        temp_t1->unk4077C = (s32) (0x10 - var_s3);
                        temp_s6_7 = (sp120 >> 1) & 0xFF;
                        temp_t1->unk4077C = (s32) sp120;
                        if (temp_s6_7 > 0) {
                            var_a4_17 = 0;
                            if (temp_s6_7 >= 2) {
                                var_v0_45 = *var_a5_9;
                                var_a3_29 = var_a5_9 + arg3;
                                var_v1_37 = arg3 + var_a3_29;
loop_270:
                                sp10 = var_v0_45 << var_s3;
                                sp12 = (var_a3_29->unk1 | (var_a3_29->unk0 << 8)) << var_s3;
                                var_a4_17 += 2;
                                var_a3_29 = var_v1_37 + arg3;
                                temp_a1_29 = arg3 + var_a3_29;
                                temp_t1->unk4077C = (s32) sp10;
                                temp_v0_44 = *var_v1_37;
                                if (var_a4_17 != temp_s6_7) {
                                    sp10 = temp_v0_44 << var_s3;
                                    sp12 = (var_a3_29->unk1 | (var_a3_29->unk0 << 8)) << var_s3;
                                    var_a3_29 = temp_a1_29 + arg3;
                                    var_v1_37 = arg3 + var_a3_29;
                                    temp_t1->unk4077C = (s32) sp10;
                                    var_v0_45 = *temp_a1_29;
                                    if (var_a4_17 == (temp_s6_7 - 1)) {
                                        var_a2_12 = var_v1_37;
                                        var_a6_11 = var_v0_45;
                                    } else {
                                        goto loop_270;
                                    }
                                } else {
                                    var_a2_12 = temp_a1_29;
                                    var_a6_11 = temp_v0_44;
                                }
                                sp10 = var_a6_11 << var_s3;
                                sp12 = (var_a3_29->unk1 | (var_a3_29->unk0 << 8)) << var_s3;
                                var_a5_9 = (s64) var_a2_12;
                                temp_t1->unk4077C = (s32) sp10;
                            } else {
                                temp_a5_6 = var_a5_9 + arg3;
                                sp10 = *var_a5_9 << var_s3;
                                sp12 = (temp_a5_6->unk1 | (temp_a5_6->unk0 << 8)) << var_s3;
                                var_a5_9 = (s64) (arg3 + temp_a5_6);
                                temp_t1->unk4077C = (s32) sp10;
                            }
                        }
                        var_s6 = sp180;
                        if (sp120 & 1) {
                            sp10 = *var_a5_9 << var_s3;
                            sp12 = 0;
                            temp_t1->unk4077C = (s32) sp10;
                        }
                        var_s2 = sp160;
                        temp_t2_33 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                        sp138 = temp_t2_33;
                        if (temp_t2_33 > 0) {
                            var_a0_37 = 0;
                            var_a1_33 = sp138 & 3;
                            var_s2 = sp160;
                            if (var_a1_33 != 0) {
                                do {
                                    var_a0_37 += 1;
                                    var_a1_33 -= 1;
                                    temp_t1->unk4077C = 0;
                                } while (var_a1_33 != 0);
                            }
                            temp_a4_10 = sp138 >> 2;
                            if (temp_a4_10 != 0) {
                                if (temp_a4_10 >= 2) {
                                    var_a0_38 = var_a0_37 + 4;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
loop_282:
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    if (var_a0_38 != (sp138 - 4)) {
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        if (var_a0_38 != (sp138 - 8)) {
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            if (var_a0_38 != (sp138 - 0xC)) {
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                var_a0_38 += 0x10;
                                                temp_t1->unk4077C = 0;
                                                if (var_a0_38 != sp138) {
                                                    goto loop_282;
                                                }
                                            }
                                        }
                                    }
                                    temp_t1->unk4077C = 0;
                                } else {
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                }
                                temp_t1->unk4077C = 0;
                            }
                        }
                        goto block_288;
                    }
                } else {
                    var_t0_7 = temp_s5_11;
                    if (sp140 != 0) {
                        if (sp140 > 0) {
                            var_t1_10 = temp_s5_11;
                            do {
                                var_v1_38 = 0;
                                var_a3_30 = var_a5_9 + arg3;
                                temp_t1->unk40514 = (s32) var_t8_10;
                                temp_t1->unk4077C = (s32) var_t1_10;
                                temp_t1->unk4077C = (s32) (0x10 - var_s3);
                                temp_t1->unk4077C = 0x40;
                                var_a1_34 = arg3 + var_a3_30;
                                var_v0_46 = *var_a5_9;
loop_535:
                                spC = var_v0_46 << var_s3;
                                spE = *var_a3_30 << var_s3;
                                var_v1_38 += 2;
                                temp_a3_27 = var_a1_34 + arg3;
                                temp_a0_31 = arg3 + temp_a3_27;
                                temp_t1->unk4077C = (s32) spC;
                                temp_v0_45 = *var_a1_34;
                                if (var_v1_38 != 0x20) {
                                    spC = temp_v0_45 << var_s3;
                                    spE = *temp_a3_27 << var_s3;
                                    var_a3_30 = temp_a0_31 + arg3;
                                    var_a1_34 = arg3 + var_a3_30;
                                    temp_t1->unk4077C = (s32) spC;
                                    var_v0_46 = *temp_a0_31;
                                    goto loop_535;
                                }
                                var_t1_10 += 0x40;
                                spC = temp_v0_45 << var_s3;
                                spE = *temp_a3_27 << var_s3;
                                temp_t1->unk4077C = (s32) spC;
                                var_a5_9 = (s64) temp_a0_31;
                            } while (var_t1_10 != (temp_s5_11 + (sp140 << 6)));
                            var_a0_39 = sp140;
                        } else {
                            var_a0_39 = 0;
                        }
                        temp_t1->unk407A8 = 0;
                        var_t0_7 = (var_a0_39 << 6) + temp_s5_11;
                    }
                    var_v1_39 = 0;
                    if (sp108 != 0) {
                        var_a3_31 = var_a5_9 + arg3;
                        temp_t1->unk40510 = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_t0_7;
                        temp_t1->unk4077C = (s32) (0x10 - var_s3);
                        temp_t1->unk4077C = 0x20;
                        var_a1_35 = arg3 + var_a3_31;
                        var_v0_47 = *var_a5_9;
loop_542:
                        spC = var_v0_47 << var_s3;
                        spE = *var_a3_31 << var_s3;
                        var_v1_39 += 2;
                        temp_a3_28 = var_a1_35 + arg3;
                        temp_a0_32 = arg3 + temp_a3_28;
                        temp_t1->unk4077C = (s32) spC;
                        temp_v0_46 = *var_a1_35;
                        if (var_v1_39 != 0x10) {
                            spC = temp_v0_46 << var_s3;
                            spE = *temp_a3_28 << var_s3;
                            var_a3_31 = temp_a0_32 + arg3;
                            var_a1_35 = arg3 + var_a3_31;
                            temp_t1->unk4077C = (s32) spC;
                            var_v0_47 = *temp_a0_32;
                            goto loop_542;
                        }
                        spC = temp_v0_46 << var_s3;
                        spE = *temp_a3_28 << var_s3;
                        var_a5_9 = (s64) temp_a0_32;
                        var_t0_7 += 0x20;
                        temp_t1->unk4077C = (s32) spC;
                        temp_t1->unk407A8 = 0;
                    }
                    var_v1_40 = 0;
                    if (sp100 != 0) {
                        var_a3_32 = var_a5_9 + arg3;
                        temp_t1->unk4050C = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_t0_7;
                        temp_t1->unk4077C = (s32) (0x10 - var_s3);
                        temp_t1->unk4077C = 0x10;
                        var_a1_36 = arg3 + var_a3_32;
                        var_v0_48 = *var_a5_9;
loop_547:
                        spC = var_v0_48 << var_s3;
                        spE = *var_a3_32 << var_s3;
                        var_v1_40 += 2;
                        temp_a3_29 = var_a1_36 + arg3;
                        temp_a0_33 = arg3 + temp_a3_29;
                        temp_t1->unk4077C = (s32) spC;
                        temp_v0_47 = *var_a1_36;
                        if (var_v1_40 != 8) {
                            spC = temp_v0_47 << var_s3;
                            spE = *temp_a3_29 << var_s3;
                            var_a3_32 = temp_a0_33 + arg3;
                            var_a1_36 = arg3 + var_a3_32;
                            temp_t1->unk4077C = (s32) spC;
                            var_v0_48 = *temp_a0_33;
                            goto loop_547;
                        }
                        spC = temp_v0_47 << var_s3;
                        spE = *temp_a3_29 << var_s3;
                        var_a5_9 = (s64) temp_a0_33;
                        var_t0_7 += 0x10;
                        temp_t1->unk4077C = (s32) spC;
                        temp_t1->unk407A8 = 0;
                    }
                    if (sp120 != 0) {
                        temp_t1->unk4050C = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_t0_7;
                        temp_t1->unk4077C = (s32) (0x10 - var_s3);
                        temp_s6_8 = (sp120 >> 1) & 0xFF;
                        temp_t1->unk4077C = (s32) sp120;
                        if (temp_s6_8 > 0) {
                            var_a4_18 = 0;
                            if (temp_s6_8 >= 2) {
                                var_v0_49 = *var_a5_9;
                                var_a3_33 = var_a5_9 + arg3;
                                var_v1_41 = arg3 + var_a3_33;
loop_553:
                                spC = var_v0_49 << var_s3;
                                spE = *var_a3_33 << var_s3;
                                var_a4_18 += 2;
                                var_a3_33 = var_v1_41 + arg3;
                                temp_a1_30 = arg3 + var_a3_33;
                                temp_t1->unk4077C = (s32) spC;
                                temp_v0_48 = *var_v1_41;
                                if (var_a4_18 != temp_s6_8) {
                                    spC = temp_v0_48 << var_s3;
                                    spE = *var_a3_33 << var_s3;
                                    var_a3_33 = temp_a1_30 + arg3;
                                    var_v1_41 = arg3 + var_a3_33;
                                    temp_t1->unk4077C = (s32) spC;
                                    var_v0_49 = *temp_a1_30;
                                    if (var_a4_18 == (temp_s6_8 - 1)) {
                                        var_a2_13 = var_v1_41;
                                        var_a6_12 = var_v0_49;
                                    } else {
                                        goto loop_553;
                                    }
                                } else {
                                    var_a2_13 = temp_a1_30;
                                    var_a6_12 = temp_v0_48;
                                }
                                spC = var_a6_12 << var_s3;
                                spE = *var_a3_33 << var_s3;
                                var_a5_9 = (s64) var_a2_13;
                                temp_t1->unk4077C = (s32) spC;
                            } else {
                                temp_a5_7 = var_a5_9 + arg3;
                                spC = *var_a5_9 << var_s3;
                                spE = *temp_a5_7 << var_s3;
                                var_a5_9 = (s64) (arg3 + temp_a5_7);
                                temp_t1->unk4077C = (s32) spC;
                            }
                        }
                        var_s6 = sp180;
                        if (sp120 & 1) {
                            spC = *var_a5_9 << var_s3;
                            spE = 0;
                            temp_t1->unk4077C = (s32) spC;
                        }
                        var_s2 = sp160;
                        temp_v1_25 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                        sp138 = temp_v1_25;
                        if (temp_v1_25 > 0) {
                            var_a0_40 = 0;
                            var_a1_37 = sp138 & 3;
                            var_s2 = sp160;
                            if (var_a1_37 != 0) {
                                do {
                                    var_a0_40 += 1;
                                    var_a1_37 -= 1;
                                    temp_t1->unk4077C = 0;
                                } while (var_a1_37 != 0);
                            }
                            temp_a4_11 = sp138 >> 2;
                            if (temp_a4_11 != 0) {
                                if (temp_a4_11 >= 2) {
                                    var_a0_41 = var_a0_40 + 4;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
loop_565:
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    if (var_a0_41 != (sp138 - 4)) {
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        if (var_a0_41 != (sp138 - 8)) {
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            if (var_a0_41 != (sp138 - 0xC)) {
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                var_a0_41 += 0x10;
                                                temp_t1->unk4077C = 0;
                                                if (var_a0_41 != sp138) {
                                                    goto loop_565;
                                                }
                                            }
                                        }
                                    }
                                    temp_t1->unk4077C = 0;
                                } else {
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                }
                                temp_t1->unk4077C = 0;
                            }
                        }
block_288:
                        temp_t1->unk407A8 = 0;
                    }
                }
                var_ra += 2;
                var_t8_10 = (var_t8_10 - var_s3) + 0x10;
                var_s4 = (var_s4 + var_s3) - 0x10;
            }
            if (var_s4 < 0x10) {
                sp158 = var_ra;
                spF0 = (s64) var_t8_10;
                sp180 = var_s6;
                sp160 = var_s2;
                sp118 = 0;
                sp128 = 0;
                var_t3_12 = var_s4;
            } else {
                spF0 = (s64) var_t8_10;
                sp118 = 0;
                var_t3_12 = var_s4;
                var_s3_10 = var_ra;
                sp128 = 0;
                sp180 = var_s6;
                spF8 = arg3 & 1;
                sp160 = var_s2;
                sp100 = unkspC0 & 0x10;
                sp108 = unkspC0 & 0x20;
                temp_t9_15 = unkspC0 & 0xF;
                spE0 = temp_t9_15 & 1;
                temp_s6_9 = (temp_t9_15 >> 1) & 0xFF;
                temp_s0_15 = (unkspC0 >> 6) & 0xFF;
                sp140 = temp_s0_15;
                temp_s0_16 = temp_s5_11 + (temp_s0_15 << 6);
                sp120 = temp_t9_15;
                sp138 = ((s32) (0x10 - temp_t9_15) >> 1) & 0xFF;
loop_298:
                var_a7_12 = temp_s5_11;
                var_a5_10 = var_s3_10;
                if (spF8 != 0) {
                    if (sp140 != 0) {
                        var_a7_13 = temp_s5_11;
                        if (sp140 > 0) {
                            do {
                                var_v1_42 = 0;
                                var_a3_34 = var_a5_10 + arg3;
                                temp_t1->unk40514 = (s32) var_t8_10;
                                temp_t1->unk4077C = (s32) var_a7_13;
                                temp_t1->unk4077C = 0x10;
                                temp_t1->unk4077C = 0x40;
                                var_a1_38 = arg3 + var_a3_34;
                                var_v0_50 = *var_a5_10;
loop_303:
                                sp18 = var_v0_50;
                                sp1A = var_a3_34->unk1 | (var_a3_34->unk0 << 8);
                                var_v1_42 += 2;
                                temp_a3_30 = var_a1_38 + arg3;
                                temp_a0_34 = arg3 + temp_a3_30;
                                temp_t1->unk4077C = (s32) sp18;
                                temp_v0_49 = *var_a1_38;
                                if (var_v1_42 != 0x20) {
                                    sp18 = temp_v0_49;
                                    sp1A = temp_a3_30->unk1 | (temp_a3_30->unk0 << 8);
                                    var_a3_34 = temp_a0_34 + arg3;
                                    var_a1_38 = arg3 + var_a3_34;
                                    temp_t1->unk4077C = (s32) sp18;
                                    var_v0_50 = *temp_a0_34;
                                    goto loop_303;
                                }
                                var_a7_13 += 0x40;
                                sp18 = temp_v0_49;
                                sp1A = temp_a3_30->unk1 | (temp_a3_30->unk0 << 8);
                                temp_t1->unk4077C = (s32) sp18;
                                var_a5_10 = (s64) temp_a0_34;
                            } while (var_a7_13 != temp_s0_16);
                            var_a0_42 = sp140;
                        } else {
                            var_a0_42 = 0;
                        }
                        temp_t1->unk407A8 = 0;
                        var_a7_12 = (var_a0_42 << 6) + temp_s5_11;
                    }
                    if (sp108 != 0) {
                        var_v1_43 = 0;
                        var_a3_35 = var_a5_10 + arg3;
                        temp_t1->unk40510 = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_a7_12;
                        temp_t1->unk4077C = 0x10;
                        temp_t1->unk4077C = 0x20;
                        var_a1_39 = arg3 + var_a3_35;
                        var_v0_51 = *var_a5_10;
loop_310:
                        sp18 = var_v0_51;
                        sp1A = var_a3_35->unk1 | (var_a3_35->unk0 << 8);
                        var_v1_43 += 2;
                        temp_a3_31 = var_a1_39 + arg3;
                        temp_a0_35 = arg3 + temp_a3_31;
                        temp_t1->unk4077C = (s32) sp18;
                        temp_v0_50 = *var_a1_39;
                        if (var_v1_43 != 0x10) {
                            sp18 = temp_v0_50;
                            sp1A = temp_a3_31->unk1 | (temp_a3_31->unk0 << 8);
                            var_a3_35 = temp_a0_35 + arg3;
                            var_a1_39 = arg3 + var_a3_35;
                            temp_t1->unk4077C = (s32) sp18;
                            var_v0_51 = *temp_a0_35;
                            goto loop_310;
                        }
                        var_a7_12 += 0x20;
                        sp18 = temp_v0_50;
                        sp1A = temp_a3_31->unk1 | (temp_a3_31->unk0 << 8);
                        var_a5_10 = (s64) temp_a0_35;
                        temp_t1->unk4077C = (s32) sp18;
                        temp_t1->unk407A8 = 0;
                    }
                    var_v1_44 = 0;
                    if (sp100 != 0) {
                        var_a3_36 = var_a5_10 + arg3;
                        temp_t1->unk4050C = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_a7_12;
                        temp_t1->unk4077C = 0x10;
                        temp_t1->unk4077C = 0x10;
                        var_a1_40 = arg3 + var_a3_36;
                        var_v0_52 = *var_a5_10;
loop_315:
                        sp18 = var_v0_52;
                        sp1A = var_a3_36->unk1 | (var_a3_36->unk0 << 8);
                        var_v1_44 += 2;
                        temp_a3_32 = var_a1_40 + arg3;
                        temp_a0_36 = arg3 + temp_a3_32;
                        temp_t1->unk4077C = (s32) sp18;
                        temp_v0_51 = *var_a1_40;
                        if (var_v1_44 != 8) {
                            sp18 = temp_v0_51;
                            sp1A = temp_a3_32->unk1 | (temp_a3_32->unk0 << 8);
                            var_a3_36 = temp_a0_36 + arg3;
                            var_a1_40 = arg3 + var_a3_36;
                            temp_t1->unk4077C = (s32) sp18;
                            var_v0_52 = *temp_a0_36;
                            goto loop_315;
                        }
                        var_a7_12 += 0x10;
                        sp18 = temp_v0_51;
                        sp1A = temp_a3_32->unk1 | (temp_a3_32->unk0 << 8);
                        var_a5_10 = (s64) temp_a0_36;
                        temp_t1->unk4077C = (s32) sp18;
                        temp_t1->unk407A8 = 0;
                    }
                    var_a4_19 = 0;
                    if (sp120 != 0) {
                        temp_t1->unk4050C = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_a7_12;
                        temp_t1->unk4077C = 0x10;
                        temp_t1->unk4077C = (s32) sp120;
                        if (temp_s6_9 > 0) {
                            if (temp_s6_9 >= 2) {
                                var_v0_53 = *var_a5_10;
                                var_a3_37 = var_a5_10 + arg3;
                                var_v1_45 = arg3 + var_a3_37;
loop_321:
                                sp18 = var_v0_53;
                                sp1A = var_a3_37->unk1 | (var_a3_37->unk0 << 8);
                                var_a4_19 += 2;
                                var_a3_37 = var_v1_45 + arg3;
                                temp_a1_31 = arg3 + var_a3_37;
                                temp_t1->unk4077C = (s32) sp18;
                                temp_v0_52 = *var_v1_45;
                                if (var_a4_19 != temp_s6_9) {
                                    sp18 = temp_v0_52;
                                    sp1A = var_a3_37->unk1 | (var_a3_37->unk0 << 8);
                                    var_a3_37 = temp_a1_31 + arg3;
                                    var_v1_45 = arg3 + var_a3_37;
                                    temp_t1->unk4077C = (s32) sp18;
                                    var_v0_53 = *temp_a1_31;
                                    if (var_a4_19 == (temp_s6_9 - 1)) {
                                        var_a6_13 = var_v1_45;
                                        var_a2_14 = var_v0_53;
                                    } else {
                                        goto loop_321;
                                    }
                                } else {
                                    var_a6_13 = temp_a1_31;
                                    var_a2_14 = temp_v0_52;
                                }
                                sp18 = var_a2_14;
                                sp1A = var_a3_37->unk1 | (var_a3_37->unk0 << 8);
                                var_a5_10 = (s64) var_a6_13;
                            } else {
                                temp_a5_8 = var_a5_10 + arg3;
                                sp18 = *var_a5_10;
                                sp1A = temp_a5_8->unk1 | (temp_a5_8->unk0 << 8);
                                var_a5_10 = (s64) (arg3 + temp_a5_8);
                            }
                            temp_t1->unk4077C = (s32) sp18;
                        }
                        if (spE0 != 0) {
                            sp1A = 0;
                            sp18 = *var_a5_10;
                            temp_t1->unk4077C = (s32) sp18;
                        }
                        var_a1_41 = 0;
                        if (sp138 > 0) {
                            var_a3_38 = sp138 & 3;
                            if (var_a3_38 != 0) {
                                do {
                                    var_a1_41 += 1;
                                    var_a3_38 -= 1;
                                    temp_t1->unk4077C = 0;
                                } while (var_a3_38 != 0);
                            }
                            temp_a3_33 = sp138 >> 2;
                            if (temp_a3_33 != 0) {
                                if (temp_a3_33 >= 2) {
                                    var_a0_43 = var_a1_41 + 4;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
loop_334:
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    if (var_a0_43 != (sp138 - 4)) {
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        if (var_a0_43 != (sp138 - 8)) {
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            if (var_a0_43 != (sp138 - 0xC)) {
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                var_a0_43 += 0x10;
                                                temp_t1->unk4077C = 0;
                                                if (var_a0_43 == sp138) {

                                                } else {
                                                    goto loop_334;
                                                }
                                            }
                                        }
                                    }
                                    temp_t1->unk4077C = 0;
                                } else {
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                }
                                temp_t1->unk4077C = 0;
                            }
                        }
                        goto block_296;
                    }
                } else {
                    var_t1_11 = temp_s5_11;
                    if (sp140 != 0) {
                        var_a0_44 = 0;
                        if (sp140 > 0) {
                            var_t1_12 = temp_s5_11;
                            do {
                                var_a0_45 = 0;
                                var_t0_8 = var_a5_10 + arg3;
                                var_a7_14 = arg3 + var_t0_8;
                                var_a3_39 = var_a7_14 + arg3;
                                temp_t1->unk40514 = (s32) var_t8_10;
                                temp_t1->unk4077C = (s32) var_t1_12;
                                temp_t1->unk4077C = 0x10;
                                temp_t1->unk4077C = 0x40;
                                var_a1_42 = arg3 + var_a3_39;
                                var_v1_46 = *var_a5_10;
loop_345:
                                sp14 = var_v1_46;
                                sp16 = *var_t0_8;
                                temp_t1->unk4077C = (s32) sp14;
                                var_a0_45 += 4;
                                temp_t0_5 = var_a1_42 + arg3;
                                sp16 = *var_a3_39;
                                sp14 = *var_a7_14;
                                temp_a3_34 = arg3 + temp_t0_5;
                                temp_a7_7 = temp_a3_34 + arg3;
                                temp_v1_26 = arg3 + temp_a7_7;
                                temp_t1->unk4077C = (s32) sp14;
                                temp_v0_53 = *var_a1_42;
                                if (var_a0_45 != 0x20) {
                                    sp14 = temp_v0_53;
                                    sp16 = *temp_t0_5;
                                    temp_t1->unk4077C = (s32) sp14;
                                    var_t0_8 = temp_v1_26 + arg3;
                                    sp16 = *temp_a7_7;
                                    sp14 = *temp_a3_34;
                                    var_a7_14 = arg3 + var_t0_8;
                                    var_a3_39 = var_a7_14 + arg3;
                                    var_a1_42 = arg3 + var_a3_39;
                                    temp_t1->unk4077C = (s32) sp14;
                                    var_v1_46 = *temp_v1_26;
                                    goto loop_345;
                                }
                                var_t1_12 += 0x40;
                                sp14 = temp_v0_53;
                                sp16 = *temp_t0_5;
                                temp_t1->unk4077C = (s32) sp14;
                                sp16 = *temp_a7_7;
                                sp14 = *temp_a3_34;
                                temp_t1->unk4077C = (s32) sp14;
                                var_a5_10 = (s64) temp_v1_26;
                            } while (var_t1_12 != temp_s0_16);
                            var_a0_44 = sp140;
                        }
                        temp_t1->unk407A8 = 0;
                        var_t1_11 = (var_a0_44 << 6) + temp_s5_11;
                    }
                    var_a0_46 = 0;
                    if (sp108 != 0) {
                        var_a7_15 = var_a5_10 + arg3;
                        var_a4_20 = arg3 + var_a7_15;
                        var_a3_40 = var_a4_20 + arg3;
                        temp_t1->unk40510 = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_t1_11;
                        temp_t1->unk4077C = 0x10;
                        temp_t1->unk4077C = 0x20;
                        var_a1_43 = arg3 + var_a3_40;
                        var_v1_47 = *var_a5_10;
loop_352:
                        sp14 = var_v1_47;
                        sp16 = *var_a7_15;
                        temp_t1->unk4077C = (s32) sp14;
                        var_a0_46 += 4;
                        temp_a7_8 = var_a1_43 + arg3;
                        sp16 = *var_a3_40;
                        sp14 = *var_a4_20;
                        temp_a3_35 = arg3 + temp_a7_8;
                        temp_a4_12 = temp_a3_35 + arg3;
                        temp_v1_27 = arg3 + temp_a4_12;
                        temp_t1->unk4077C = (s32) sp14;
                        temp_v0_54 = *var_a1_43;
                        if (var_a0_46 != 0x10) {
                            sp14 = temp_v0_54;
                            sp16 = *temp_a7_8;
                            temp_t1->unk4077C = (s32) sp14;
                            var_a7_15 = temp_v1_27 + arg3;
                            sp16 = *temp_a4_12;
                            sp14 = *temp_a3_35;
                            var_a4_20 = arg3 + var_a7_15;
                            var_a3_40 = var_a4_20 + arg3;
                            var_a1_43 = arg3 + var_a3_40;
                            temp_t1->unk4077C = (s32) sp14;
                            var_v1_47 = *temp_v1_27;
                            goto loop_352;
                        }
                        var_t1_11 += 0x20;
                        sp14 = temp_v0_54;
                        sp16 = *temp_a7_8;
                        temp_t1->unk4077C = (s32) sp14;
                        sp16 = *temp_a4_12;
                        sp14 = *temp_a3_35;
                        var_a5_10 = (s64) temp_v1_27;
                        temp_t1->unk4077C = (s32) sp14;
                        temp_t1->unk407A8 = 0;
                    }
                    if (sp100 != 0) {
                        temp_t1->unk4050C = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_t1_11;
                        temp_t1->unk4077C = 0x10;
                        temp_t1->unk4077C = 0x10;
                        temp_a5_9 = var_a5_10 + arg3;
                        sp14 = *var_a5_10;
                        sp16 = *temp_a5_9;
                        temp_t1->unk4077C = (s32) sp14;
                        temp_a5_10 = arg3 + temp_a5_9;
                        temp_a5_11 = temp_a5_10 + arg3;
                        sp14 = *temp_a5_10;
                        sp16 = *temp_a5_11;
                        temp_t1->unk4077C = (s32) sp14;
                        temp_a5_12 = arg3 + temp_a5_11;
                        temp_a5_13 = temp_a5_12 + arg3;
                        sp14 = *temp_a5_12;
                        sp16 = *temp_a5_13;
                        temp_t1->unk4077C = (s32) sp14;
                        temp_a5_14 = arg3 + temp_a5_13;
                        temp_a5_15 = temp_a5_14 + arg3;
                        sp14 = *temp_a5_14;
                        sp16 = *temp_a5_15;
                        temp_t1->unk4077C = (s32) sp14;
                        temp_a5_16 = arg3 + temp_a5_15;
                        temp_a5_17 = temp_a5_16 + arg3;
                        sp14 = *temp_a5_16;
                        sp16 = *temp_a5_17;
                        temp_t1->unk4077C = (s32) sp14;
                        temp_a5_18 = arg3 + temp_a5_17;
                        temp_a5_19 = temp_a5_18 + arg3;
                        sp14 = *temp_a5_18;
                        sp16 = *temp_a5_19;
                        temp_t1->unk4077C = (s32) sp14;
                        temp_a5_20 = arg3 + temp_a5_19;
                        temp_a5_21 = temp_a5_20 + arg3;
                        sp14 = *temp_a5_20;
                        sp16 = *temp_a5_21;
                        temp_t1->unk4077C = (s32) sp14;
                        temp_a5_22 = arg3 + temp_a5_21;
                        temp_a5_23 = temp_a5_22 + arg3;
                        sp14 = *temp_a5_22;
                        sp16 = *temp_a5_23;
                        var_t1_11 += 0x10;
                        var_a5_10 = (s64) (arg3 + temp_a5_23);
                        temp_t1->unk4077C = (s32) sp14;
                        temp_t1->unk407A8 = 0;
                    }
                    if (sp120 != 0) {
                        temp_t1->unk4050C = (s32) var_t8_10;
                        temp_t1->unk4077C = (s32) var_t1_11;
                        temp_t1->unk4077C = 0x10;
                        temp_t1->unk4077C = (s32) sp120;
                        if (temp_s6_9 > 0) {
                            var_a2_15 = 0;
                            if (temp_s6_9 & 1) {
                                temp_a5_24 = var_a5_10 + arg3;
                                sp14 = *var_a5_10;
                                sp16 = *temp_a5_24;
                                var_a5_10 = (s64) (arg3 + temp_a5_24);
                                temp_t1->unk4077C = (s32) sp14;
                                var_a2_15 = 1;
                            }
                            temp_a6_2 = temp_s6_9 >> 1;
                            if (temp_a6_2 != 0) {
                                if (temp_a6_2 >= 2) {
                                    var_t0_9 = var_a2_15;
                                    var_v1_48 = *var_a5_10;
                                    var_a7_16 = var_a5_10 + arg3;
                                    var_a4_21 = arg3 + var_a7_16;
                                    var_a3_41 = var_a4_21 + arg3;
                                    var_a6_14 = arg3 + var_a3_41;
loop_363:
                                    sp14 = var_v1_48;
                                    sp16 = *var_a7_16;
                                    temp_t1->unk4077C = (s32) sp14;
                                    var_t0_9 += 4;
                                    var_a7_16 = var_a6_14 + arg3;
                                    sp16 = *var_a3_41;
                                    sp14 = *var_a4_21;
                                    var_a4_21 = arg3 + var_a7_16;
                                    var_a3_41 = var_a4_21 + arg3;
                                    temp_a1_32 = arg3 + var_a3_41;
                                    temp_t1->unk4077C = (s32) sp14;
                                    temp_v1_28 = *var_a6_14;
                                    if (var_t0_9 != temp_s6_9) {
                                        sp14 = temp_v1_28;
                                        sp16 = *var_a7_16;
                                        temp_t1->unk4077C = (s32) sp14;
                                        var_a7_16 = temp_a1_32 + arg3;
                                        sp16 = *var_a3_41;
                                        sp14 = *var_a4_21;
                                        var_a4_21 = arg3 + var_a7_16;
                                        var_a3_41 = var_a4_21 + arg3;
                                        var_a6_14 = arg3 + var_a3_41;
                                        temp_t1->unk4077C = (s32) sp14;
                                        var_v1_48 = *temp_a1_32;
                                        if (var_t0_9 == (temp_s6_9 - 2)) {
                                            var_a1_44 = var_v1_48;
                                        } else {
                                            goto loop_363;
                                        }
                                    } else {
                                        var_a6_14 = temp_a1_32;
                                        var_a1_44 = temp_v1_28;
                                    }
                                    sp14 = var_a1_44;
                                    sp16 = *var_a7_16;
                                    temp_t1->unk4077C = (s32) sp14;
                                    sp14 = *var_a4_21;
                                    sp16 = *var_a3_41;
                                    var_a5_10 = (s64) var_a6_14;
                                    temp_t1->unk4077C = (s32) sp14;
                                } else {
                                    temp_a0_37 = var_a5_10 + arg3;
                                    sp14 = *var_a5_10;
                                    sp16 = *temp_a0_37;
                                    temp_t1->unk4077C = (s32) sp14;
                                    temp_a0_38 = arg3 + temp_a0_37;
                                    temp_a0_39 = temp_a0_38 + arg3;
                                    sp14 = *temp_a0_38;
                                    sp16 = *temp_a0_39;
                                    temp_t1->unk4077C = (s32) sp14;
                                    var_a5_10 = (s64) (arg3 + temp_a0_39);
                                }
                            }
                        }
                        if (spE0 != 0) {
                            sp16 = 0;
                            sp14 = *var_a5_10;
                            temp_t1->unk4077C = (s32) sp14;
                        }
                        var_a0_47 = 0;
                        if (sp138 > 0) {
                            var_a1_45 = sp138 & 3;
                            var_a3_42 = sp138 >> 2;
                            if (var_a1_45 != 0) {
                                do {
                                    var_a0_47 += 1;
                                    var_a1_45 -= 1;
                                    temp_t1->unk4077C = 0;
                                } while (var_a1_45 != 0);
                                var_a3_42 = sp138 >> 2;
                            }
                            if (var_a3_42 != 0) {
                                if (var_a3_42 >= 2) {
                                    var_a0_48 = var_a0_47 + 4;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
loop_376:
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    if (var_a0_48 != (sp138 - 4)) {
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        if (var_a0_48 != (sp138 - 8)) {
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            if (var_a0_48 != (sp138 - 0xC)) {
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                var_a0_48 += 0x10;
                                                temp_t1->unk4077C = 0;
                                                if (var_a0_48 != sp138) {
                                                    goto loop_376;
                                                }
                                            }
                                        }
                                    }
                                    temp_t1->unk4077C = 0;
                                } else {
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                }
                                temp_t1->unk4077C = 0;
                            }
                        }
block_296:
                        temp_t1->unk407A8 = 0;
                    }
                }
                var_t3_12 -= 0x10;
                var_s3_10 += 2;
                var_t8_10 += 0x10;
                sp128 += 0x10;
                sp118 += 1;
                if (var_t3_12 >= 0x10) {
                    goto loop_298;
                }
            }
            sp158 = var_ra;
            if (var_t3_12 != 0) {
                sp100 = unkspC0 & 0x10;
                sp120 = unkspC0 & 0xF;
                sp140 = (unkspC0 >> 6) & 0xFF;
                sp108 = unkspC0 & 0x20;
                var_a5_11 = (sp118 * 2) + sp158;
                if (arg3 & 1) {
                    var_a7_17 = temp_s5_11;
                    if (sp140 != 0) {
                        if (sp140 > 0) {
                            var_t0_10 = temp_s5_11;
                            do {
                                var_v1_49 = 0;
                                var_a3_43 = var_a5_11 + arg3;
                                temp_t1->unk40514 = (s32) (spF0 + sp128);
                                temp_t1->unk4077C = (s32) var_t0_10;
                                temp_t1->unk4077C = (s32) var_t3_12;
                                temp_t1->unk4077C = 0x40;
                                var_a1_46 = arg3 + var_a3_43;
                                var_v0_54 = *var_a5_11;
loop_393:
                                sp20 = var_v0_54;
                                sp22 = var_a3_43->unk1 | (var_a3_43->unk0 << 8);
                                var_v1_49 += 2;
                                temp_a3_36 = var_a1_46 + arg3;
                                temp_a0_40 = arg3 + temp_a3_36;
                                temp_t1->unk4077C = (s32) sp20;
                                temp_v0_55 = *var_a1_46;
                                if (var_v1_49 != 0x20) {
                                    sp20 = temp_v0_55;
                                    sp22 = temp_a3_36->unk1 | (temp_a3_36->unk0 << 8);
                                    var_a3_43 = temp_a0_40 + arg3;
                                    var_a1_46 = arg3 + var_a3_43;
                                    temp_t1->unk4077C = (s32) sp20;
                                    var_v0_54 = *temp_a0_40;
                                    goto loop_393;
                                }
                                var_t0_10 += 0x40;
                                sp20 = temp_v0_55;
                                sp22 = temp_a3_36->unk1 | (temp_a3_36->unk0 << 8);
                                temp_t1->unk4077C = (s32) sp20;
                                var_a5_11 = temp_a0_40;
                            } while (var_t0_10 != (temp_s5_11 + (sp140 << 6)));
                            var_a0_49 = sp140;
                        } else {
                            var_a0_49 = 0;
                        }
                        temp_t1->unk407A8 = 0;
                        var_a7_17 = (var_a0_49 << 6) + temp_s5_11;
                    }
                    if (sp108 != 0) {
                        var_v1_50 = 0;
                        var_a3_44 = var_a5_11 + arg3;
                        temp_t1->unk40510 = (s32) (spF0 + sp128);
                        temp_t1->unk4077C = (s32) var_a7_17;
                        temp_t1->unk4077C = (s32) var_t3_12;
                        temp_t1->unk4077C = 0x20;
                        var_a1_47 = arg3 + var_a3_44;
                        var_v0_55 = *var_a5_11;
loop_400:
                        sp20 = var_v0_55;
                        sp22 = var_a3_44->unk1 | (var_a3_44->unk0 << 8);
                        var_v1_50 += 2;
                        temp_a3_37 = var_a1_47 + arg3;
                        temp_a0_41 = arg3 + temp_a3_37;
                        temp_t1->unk4077C = (s32) sp20;
                        temp_v0_56 = *var_a1_47;
                        if (var_v1_50 != 0x10) {
                            sp20 = temp_v0_56;
                            sp22 = temp_a3_37->unk1 | (temp_a3_37->unk0 << 8);
                            var_a3_44 = temp_a0_41 + arg3;
                            var_a1_47 = arg3 + var_a3_44;
                            temp_t1->unk4077C = (s32) sp20;
                            var_v0_55 = *temp_a0_41;
                            goto loop_400;
                        }
                        sp20 = temp_v0_56;
                        sp22 = temp_a3_37->unk1 | (temp_a3_37->unk0 << 8);
                        var_a5_11 = temp_a0_41;
                        var_a7_17 += 0x20;
                        temp_t1->unk4077C = (s32) sp20;
                        temp_t1->unk407A8 = 0;
                    }
                    var_v1_51 = 0;
                    if (sp100 != 0) {
                        var_a3_45 = var_a5_11 + arg3;
                        var_a1_48 = arg3 + var_a3_45;
                        temp_t1->unk4050C = (s32) (spF0 + sp128);
                        temp_t1->unk4077C = (s32) var_a7_17;
                        temp_t1->unk4077C = (s32) var_t3_12;
                        temp_t1->unk4077C = 0x10;
                        var_v0_56 = *var_a5_11;
loop_405:
                        sp20 = var_v0_56;
                        sp22 = var_a3_45->unk1 | (var_a3_45->unk0 << 8);
                        var_v1_51 += 2;
                        temp_a3_38 = var_a1_48 + arg3;
                        temp_a0_42 = arg3 + temp_a3_38;
                        temp_t1->unk4077C = (s32) sp20;
                        temp_v0_57 = *var_a1_48;
                        if (var_v1_51 != 8) {
                            sp20 = temp_v0_57;
                            sp22 = temp_a3_38->unk1 | (temp_a3_38->unk0 << 8);
                            var_a3_45 = temp_a0_42 + arg3;
                            var_a1_48 = arg3 + var_a3_45;
                            temp_t1->unk4077C = (s32) sp20;
                            var_v0_56 = *temp_a0_42;
                            goto loop_405;
                        }
                        sp20 = temp_v0_57;
                        sp22 = temp_a3_38->unk1 | (temp_a3_38->unk0 << 8);
                        var_a5_11 = temp_a0_42;
                        var_a7_17 += 0x10;
                        temp_t1->unk4077C = (s32) sp20;
                        temp_t1->unk407A8 = 0;
                    }
                    if (sp120 != 0) {
                        temp_s6_10 = (sp120 >> 1) & 0xFF;
                        temp_t1->unk4050C = (s32) (spF0 + sp128);
                        temp_t1->unk4077C = (s32) var_a7_17;
                        temp_t1->unk4077C = (s32) var_t3_12;
                        temp_t1->unk4077C = (s32) sp120;
                        if (temp_s6_10 > 0) {
                            var_a4_22 = 0;
                            if (temp_s6_10 >= 2) {
                                var_v0_57 = *var_a5_11;
                                var_a3_46 = var_a5_11 + arg3;
                                var_v1_52 = arg3 + var_a3_46;
loop_411:
                                sp20 = var_v0_57;
                                sp22 = var_a3_46->unk1 | (var_a3_46->unk0 << 8);
                                var_a4_22 += 2;
                                var_a3_46 = var_v1_52 + arg3;
                                temp_a1_33 = arg3 + var_a3_46;
                                temp_t1->unk4077C = (s32) sp20;
                                temp_v0_58 = *var_v1_52;
                                if (var_a4_22 != temp_s6_10) {
                                    sp20 = temp_v0_58;
                                    sp22 = var_a3_46->unk1 | (var_a3_46->unk0 << 8);
                                    var_a3_46 = temp_a1_33 + arg3;
                                    var_v1_52 = arg3 + var_a3_46;
                                    temp_t1->unk4077C = (s32) sp20;
                                    var_v0_57 = *temp_a1_33;
                                    if (var_a4_22 == (temp_s6_10 - 1)) {
                                        var_a2_16 = var_v1_52;
                                        var_a6_15 = var_v0_57;
                                    } else {
                                        goto loop_411;
                                    }
                                } else {
                                    var_a2_16 = temp_a1_33;
                                    var_a6_15 = temp_v0_58;
                                }
                                sp20 = var_a6_15;
                                sp22 = var_a3_46->unk1 | (var_a3_46->unk0 << 8);
                                var_a5_11 = var_a2_16;
                                temp_t1->unk4077C = (s32) sp20;
                            } else {
                                temp_a5_25 = var_a5_11 + arg3;
                                sp20 = *var_a5_11;
                                sp22 = temp_a5_25->unk1 | (temp_a5_25->unk0 << 8);
                                var_a5_11 = arg3 + temp_a5_25;
                                temp_t1->unk4077C = (s32) sp20;
                            }
                        }
                        if (sp120 & 1) {
                            sp20 = *var_a5_11;
                            sp22 = 0;
                            temp_t1->unk4077C = (s32) sp20;
                        }
                        temp_v1_29 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                        sp138 = temp_v1_29;
                        if (temp_v1_29 > 0) {
                            var_a1_49 = sp138 & 3;
                            var_a0_50 = 0;
                            if (var_a1_49 != 0) {
                                do {
                                    var_a0_50 += 1;
                                    var_a1_49 -= 1;
                                    temp_t1->unk4077C = 0;
                                } while (var_a1_49 != 0);
                            }
                            temp_a1_34 = sp138 >> 2;
                            if (temp_a1_34 != 0) {
                                var_a0_51 = var_a0_50 + 4;
                                if (temp_a1_34 >= 2) {
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
loop_423:
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    if (var_a0_51 != (sp138 - 4)) {
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        if (var_a0_51 != (sp138 - 8)) {
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            if (var_a0_51 != (sp138 - 0xC)) {
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                var_a0_51 += 0x10;
                                                temp_t1->unk4077C = 0;
                                                if (var_a0_51 != sp138) {
                                                    goto loop_423;
                                                }
                                            }
                                        }
                                    }
                                    temp_t1->unk4077C = 0;
                                } else {
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                }
                                temp_t1->unk4077C = 0;
                            }
                        }
                        goto block_214;
                    }
                } else {
                    var_t1_13 = temp_s5_11;
                    if (sp140 != 0) {
                        if (sp140 > 0) {
                            var_ra_5 = temp_s5_11;
                            do {
                                var_a0_52 = 0;
                                var_t0_11 = var_a5_11 + arg3;
                                var_a7_18 = arg3 + var_t0_11;
                                var_a3_47 = var_a7_18 + arg3;
                                temp_t1->unk40514 = (s32) (spF0 + sp128);
                                temp_t1->unk4077C = (s32) var_ra_5;
                                temp_t1->unk4077C = (s32) var_t3_12;
                                temp_t1->unk4077C = 0x40;
                                var_a1_50 = arg3 + var_a3_47;
                                var_v1_53 = *var_a5_11;
loop_493:
                                sp1C = var_v1_53;
                                sp1E = *var_t0_11;
                                temp_t1->unk4077C = (s32) sp1C;
                                var_a0_52 += 4;
                                temp_t0_6 = var_a1_50 + arg3;
                                sp1E = *var_a3_47;
                                sp1C = *var_a7_18;
                                temp_a3_39 = arg3 + temp_t0_6;
                                temp_a7_9 = temp_a3_39 + arg3;
                                temp_v1_30 = arg3 + temp_a7_9;
                                temp_t1->unk4077C = (s32) sp1C;
                                temp_v0_59 = *var_a1_50;
                                if (var_a0_52 != 0x20) {
                                    sp1C = temp_v0_59;
                                    sp1E = *temp_t0_6;
                                    temp_t1->unk4077C = (s32) sp1C;
                                    var_t0_11 = temp_v1_30 + arg3;
                                    sp1E = *temp_a7_9;
                                    sp1C = *temp_a3_39;
                                    var_a7_18 = arg3 + var_t0_11;
                                    var_a3_47 = var_a7_18 + arg3;
                                    var_a1_50 = arg3 + var_a3_47;
                                    temp_t1->unk4077C = (s32) sp1C;
                                    var_v1_53 = *temp_v1_30;
                                    goto loop_493;
                                }
                                var_ra_5 += 0x40;
                                sp1C = temp_v0_59;
                                sp1E = *temp_t0_6;
                                temp_t1->unk4077C = (s32) sp1C;
                                sp1E = *temp_a7_9;
                                sp1C = *temp_a3_39;
                                temp_t1->unk4077C = (s32) sp1C;
                                var_a5_11 = temp_v1_30;
                            } while (var_ra_5 != (temp_s5_11 + (sp140 << 6)));
                            var_a0_53 = sp140;
                        } else {
                            var_a0_53 = 0;
                        }
                        temp_t1->unk407A8 = 0;
                        var_t1_13 = (var_a0_53 << 6) + temp_s5_11;
                    }
                    if (sp108 != 0) {
                        var_a0_54 = 0;
                        var_a6_16 = var_a5_11 + arg3;
                        var_a4_23 = arg3 + var_a6_16;
                        var_a3_48 = var_a4_23 + arg3;
                        temp_t1->unk40510 = (s32) (spF0 + sp128);
                        temp_t1->unk4077C = (s32) var_t1_13;
                        temp_t1->unk4077C = (s32) var_t3_12;
                        temp_t1->unk4077C = 0x20;
                        var_a1_51 = arg3 + var_a3_48;
                        var_v1_54 = *var_a5_11;
loop_500:
                        sp1C = var_v1_54;
                        sp1E = *var_a6_16;
                        temp_t1->unk4077C = (s32) sp1C;
                        var_a0_54 += 4;
                        temp_a6_3 = var_a1_51 + arg3;
                        sp1E = *var_a3_48;
                        sp1C = *var_a4_23;
                        temp_a3_40 = arg3 + temp_a6_3;
                        temp_a4_13 = temp_a3_40 + arg3;
                        temp_v1_31 = arg3 + temp_a4_13;
                        temp_t1->unk4077C = (s32) sp1C;
                        temp_v0_60 = *var_a1_51;
                        if (var_a0_54 != 0x10) {
                            sp1C = temp_v0_60;
                            sp1E = *temp_a6_3;
                            temp_t1->unk4077C = (s32) sp1C;
                            var_a6_16 = temp_v1_31 + arg3;
                            sp1E = *temp_a4_13;
                            sp1C = *temp_a3_40;
                            var_a4_23 = arg3 + var_a6_16;
                            var_a3_48 = var_a4_23 + arg3;
                            var_a1_51 = arg3 + var_a3_48;
                            temp_t1->unk4077C = (s32) sp1C;
                            var_v1_54 = *temp_v1_31;
                            goto loop_500;
                        }
                        sp1C = temp_v0_60;
                        sp1E = *temp_a6_3;
                        temp_t1->unk4077C = (s32) sp1C;
                        sp1C = *temp_a3_40;
                        sp1E = *temp_a4_13;
                        var_a5_11 = temp_v1_31;
                        var_t1_13 += 0x20;
                        temp_t1->unk4077C = (s32) sp1C;
                        temp_t1->unk407A8 = 0;
                    }
                    if (sp100 != 0) {
                        temp_t1->unk4050C = (s32) (spF0 + sp128);
                        temp_t1->unk4077C = (s32) var_t1_13;
                        temp_t1->unk4077C = (s32) var_t3_12;
                        temp_t1->unk4077C = 0x10;
                        temp_a5_26 = var_a5_11 + arg3;
                        sp1C = *var_a5_11;
                        sp1E = *temp_a5_26;
                        temp_t1->unk4077C = (s32) sp1C;
                        temp_a5_27 = arg3 + temp_a5_26;
                        temp_a5_28 = temp_a5_27 + arg3;
                        sp1C = *temp_a5_27;
                        sp1E = *temp_a5_28;
                        temp_t1->unk4077C = (s32) sp1C;
                        temp_a5_29 = arg3 + temp_a5_28;
                        temp_a5_30 = temp_a5_29 + arg3;
                        sp1C = *temp_a5_29;
                        sp1E = *temp_a5_30;
                        temp_t1->unk4077C = (s32) sp1C;
                        temp_a5_31 = arg3 + temp_a5_30;
                        temp_a5_32 = temp_a5_31 + arg3;
                        sp1C = *temp_a5_31;
                        sp1E = *temp_a5_32;
                        temp_t1->unk4077C = (s32) sp1C;
                        temp_a5_33 = arg3 + temp_a5_32;
                        temp_a5_34 = temp_a5_33 + arg3;
                        sp1C = *temp_a5_33;
                        sp1E = *temp_a5_34;
                        temp_t1->unk4077C = (s32) sp1C;
                        temp_a5_35 = arg3 + temp_a5_34;
                        temp_a5_36 = temp_a5_35 + arg3;
                        sp1C = *temp_a5_35;
                        sp1E = *temp_a5_36;
                        temp_t1->unk4077C = (s32) sp1C;
                        temp_a5_37 = arg3 + temp_a5_36;
                        temp_a5_38 = temp_a5_37 + arg3;
                        sp1C = *temp_a5_37;
                        sp1E = *temp_a5_38;
                        temp_t1->unk4077C = (s32) sp1C;
                        temp_a5_39 = arg3 + temp_a5_38;
                        temp_a5_40 = temp_a5_39 + arg3;
                        sp1C = *temp_a5_39;
                        sp1E = *temp_a5_40;
                        var_a5_11 = arg3 + temp_a5_40;
                        temp_t1->unk4077C = (s32) sp1C;
                        temp_t1->unk407A8 = 0;
                        var_t1_13 += 0x10;
                    }
                    if (sp120 != 0) {
                        temp_s6_11 = (sp120 >> 1) & 0xFF;
                        temp_t1->unk4050C = (s32) (spF0 + sp128);
                        temp_t1->unk4077C = (s32) var_t1_13;
                        temp_t1->unk4077C = (s32) var_t3_12;
                        temp_t1->unk4077C = (s32) sp120;
                        if (temp_s6_11 > 0) {
                            var_a0_55 = 0;
                            if (temp_s6_11 & 1) {
                                temp_a5_41 = var_a5_11 + arg3;
                                sp1C = *var_a5_11;
                                sp1E = *temp_a5_41;
                                var_a0_55 = 1;
                                var_a5_11 = arg3 + temp_a5_41;
                                temp_t1->unk4077C = (s32) sp1C;
                            }
                            temp_a4_14 = temp_s6_11 >> 1;
                            if (temp_a4_14 != 0) {
                                if (temp_a4_14 >= 2) {
                                    var_t0_12 = var_a0_55;
                                    var_v1_55 = *var_a5_11;
                                    var_a7_19 = var_a5_11 + arg3;
                                    var_a4_24 = arg3 + var_a7_19;
                                    var_a3_49 = var_a4_24 + arg3;
                                    var_a6_17 = arg3 + var_a3_49;
loop_511:
                                    sp1C = var_v1_55;
                                    sp1E = *var_a7_19;
                                    temp_t1->unk4077C = (s32) sp1C;
                                    var_t0_12 += 4;
                                    var_a7_19 = var_a6_17 + arg3;
                                    sp1E = *var_a3_49;
                                    sp1C = *var_a4_24;
                                    var_a4_24 = arg3 + var_a7_19;
                                    var_a3_49 = var_a4_24 + arg3;
                                    temp_a1_35 = arg3 + var_a3_49;
                                    temp_t1->unk4077C = (s32) sp1C;
                                    temp_v1_32 = *var_a6_17;
                                    if (var_t0_12 != temp_s6_11) {
                                        sp1C = temp_v1_32;
                                        sp1E = *var_a7_19;
                                        temp_t1->unk4077C = (s32) sp1C;
                                        var_a7_19 = temp_a1_35 + arg3;
                                        sp1E = *var_a3_49;
                                        sp1C = *var_a4_24;
                                        var_a4_24 = arg3 + var_a7_19;
                                        var_a3_49 = var_a4_24 + arg3;
                                        var_a6_17 = arg3 + var_a3_49;
                                        temp_t1->unk4077C = (s32) sp1C;
                                        var_v1_55 = *temp_a1_35;
                                        if (var_t0_12 == (temp_s6_11 - 2)) {
                                            var_a1_52 = var_v1_55;
                                        } else {
                                            goto loop_511;
                                        }
                                    } else {
                                        var_a6_17 = temp_a1_35;
                                        var_a1_52 = temp_v1_32;
                                    }
                                    sp1C = var_a1_52;
                                    sp1E = *var_a7_19;
                                    temp_t1->unk4077C = (s32) sp1C;
                                    sp1C = *var_a4_24;
                                    sp1E = *var_a3_49;
                                    var_a5_11 = var_a6_17;
                                    temp_t1->unk4077C = (s32) sp1C;
                                } else {
                                    temp_a0_43 = var_a5_11 + arg3;
                                    sp1C = *var_a5_11;
                                    sp1E = *temp_a0_43;
                                    temp_t1->unk4077C = (s32) sp1C;
                                    temp_a0_44 = arg3 + temp_a0_43;
                                    temp_a0_45 = temp_a0_44 + arg3;
                                    sp1C = *temp_a0_44;
                                    sp1E = *temp_a0_45;
                                    temp_t1->unk4077C = (s32) sp1C;
                                    var_a5_11 = arg3 + temp_a0_45;
                                }
                            }
                        }
                        if (sp120 & 1) {
                            sp1C = *var_a5_11;
                            sp1E = 0;
                            temp_t1->unk4077C = (s32) sp1C;
                        }
                        temp_v0_61 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                        sp138 = temp_v0_61;
                        if (temp_v0_61 > 0) {
                            var_a1_53 = sp138 & 3;
                            var_a0_56 = 0;
                            if (var_a1_53 != 0) {
                                do {
                                    var_a0_56 += 1;
                                    var_a1_53 -= 1;
                                    temp_t1->unk4077C = 0;
                                } while (var_a1_53 != 0);
                            }
                            temp_a4_15 = sp138 >> 2;
                            if (temp_a4_15 != 0) {
                                if (temp_a4_15 >= 2) {
                                    var_a0_57 = var_a0_56 + 4;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
loop_523:
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    if (var_a0_57 != (sp138 - 4)) {
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        temp_t1->unk4077C = 0;
                                        if (var_a0_57 != (sp138 - 8)) {
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            temp_t1->unk4077C = 0;
                                            if (var_a0_57 != (sp138 - 0xC)) {
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                temp_t1->unk4077C = 0;
                                                var_a0_57 += 0x10;
                                                temp_t1->unk4077C = 0;
                                                if (var_a0_57 != sp138) {
                                                    goto loop_523;
                                                }
                                            }
                                        }
                                    }
                                    temp_t1->unk4077C = 0;
                                } else {
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                    temp_t1->unk4077C = 0;
                                }
                                temp_t1->unk4077C = 0;
                            }
                        }
block_214:
                        temp_t1->unk407A8 = 0;
                    }
                }
            }
        }
    }
}

void expDrawOpaqueMonoImage(s64 arg0, s64 arg1, u64 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, void *arg_sp4) {
    u64 sp1A8;
    s64 sp1A0;
    s64 sp198;
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
    s32 sp24;
    s16 sp22;
    s16 sp20;
    s16 sp1E;
    s16 sp1C;
    s16 sp1A;
    s16 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s16 spE;
    s16 spC;
    u16 spA;
    u16 sp8;
    s16 sp6;
    s16 sp4;
    u16 sp2;
    u16 sp0;
    s16 *temp_a0_26;
    s16 *temp_a0_27;
    s16 *temp_a0_28;
    s16 *temp_a0_29;
    s16 *temp_a0_30;
    s16 *temp_a0_31;
    s16 *temp_a0_32;
    s16 *temp_a0_33;
    s16 *temp_a0_34;
    s16 *temp_a0_35;
    s16 *temp_a0_36;
    s16 *temp_a0_37;
    s16 *temp_a0_38;
    s16 *temp_a0_39;
    s16 *temp_a0_40;
    s16 *temp_a0_41;
    s16 *temp_a0_42;
    s16 *temp_a0_43;
    s16 *temp_a1_30;
    s16 *temp_a1_32;
    s16 *temp_a1_33;
    s16 *temp_a1_34;
    s16 *temp_a1_35;
    s16 *temp_a1_37;
    s16 *temp_a3_30;
    s16 *temp_a3_31;
    s16 *temp_a3_32;
    s16 *temp_a3_37;
    s16 *temp_a3_38;
    s16 *temp_a3_42;
    s16 *temp_a3_43;
    s16 *temp_a4_13;
    s16 *temp_a4_14;
    s16 *temp_a5_10;
    s16 *temp_a5_11;
    s16 *temp_a5_12;
    s16 *temp_a5_13;
    s16 *temp_a5_14;
    s16 *temp_a5_15;
    s16 *temp_a5_16;
    s16 *temp_a5_17;
    s16 *temp_a5_18;
    s16 *temp_a5_19;
    s16 *temp_a5_20;
    s16 *temp_a5_21;
    s16 *temp_a5_22;
    s16 *temp_a5_23;
    s16 *temp_a5_25;
    s16 *temp_a5_26;
    s16 *temp_a5_27;
    s16 *temp_a5_28;
    s16 *temp_a5_29;
    s16 *temp_a5_30;
    s16 *temp_a5_31;
    s16 *temp_a5_32;
    s16 *temp_a5_33;
    s16 *temp_a5_34;
    s16 *temp_a5_35;
    s16 *temp_a5_36;
    s16 *temp_a5_37;
    s16 *temp_a5_38;
    s16 *temp_a5_39;
    s16 *temp_a5_40;
    s16 *temp_a5_6;
    s16 *temp_a5_8;
    s16 *temp_a5_9;
    s16 *temp_a6_4;
    s16 *temp_a7_7;
    s16 *temp_a7_8;
    s16 *temp_a7_9;
    s16 *temp_t0_6;
    s16 *temp_t0_7;
    s16 *temp_v1_26;
    s16 *temp_v1_27;
    s16 *temp_v1_30;
    s16 *temp_v1_31;
    s16 *var_a1_30;
    s16 *var_a1_31;
    s16 *var_a1_32;
    s16 *var_a1_34;
    s16 *var_a1_35;
    s16 *var_a1_36;
    s16 *var_a1_38;
    s16 *var_a1_39;
    s16 *var_a1_40;
    s16 *var_a1_42;
    s16 *var_a1_43;
    s16 *var_a1_46;
    s16 *var_a1_47;
    s16 *var_a1_48;
    s16 *var_a1_50;
    s16 *var_a1_51;
    s16 *var_a2_12;
    s16 *var_a2_13;
    s16 *var_a2_14;
    s16 *var_a2_16;
    s16 *var_a3_29;
    s16 *var_a3_30;
    s16 *var_a3_31;
    s16 *var_a3_32;
    s16 *var_a3_38;
    s16 *var_a3_39;
    s16 *var_a3_40;
    s16 *var_a3_46;
    s16 *var_a3_47;
    s16 *var_a3_48;
    s16 *var_a4_19;
    s16 *var_a4_20;
    s16 *var_a4_22;
    s16 *var_a4_23;
    s16 *var_a5_12;
    s16 *var_a6_14;
    s16 *var_a6_16;
    s16 *var_a6_17;
    s16 *var_a7_13;
    s16 *var_a7_14;
    s16 *var_a7_15;
    s16 *var_a7_17;
    s16 *var_a7_18;
    s16 *var_t0_12;
    s16 *var_t0_9;
    s16 *var_v1_35;
    s16 *var_v1_39;
    s16 *var_v1_43;
    s16 *var_v1_50;
    s16 temp_s5;
    s16 temp_s5_13;
    s16 temp_t3;
    s16 temp_v0_38;
    s16 temp_v0_39;
    s16 temp_v0_40;
    s16 temp_v0_41;
    s16 temp_v0_42;
    s16 temp_v0_43;
    s16 temp_v0_44;
    s16 temp_v0_45;
    s16 temp_v0_46;
    s16 temp_v0_47;
    s16 temp_v0_48;
    s16 temp_v0_49;
    s16 temp_v0_50;
    s16 temp_v0_51;
    s16 temp_v0_52;
    s16 temp_v0_53;
    s16 temp_v0_54;
    s16 temp_v0_55;
    s16 temp_v0_56;
    s16 temp_v0_57;
    s16 temp_v1_28;
    s16 temp_v1_32;
    s16 var_a1_44;
    s16 var_a2_17;
    s16 var_a6_11;
    s16 var_a6_12;
    s16 var_a6_13;
    s16 var_a6_15;
    s16 var_a7_11;
    s16 var_a7_12;
    s16 var_a7_16;
    s16 var_gp;
    s16 var_ra_5;
    s16 var_t0_11;
    s16 var_t0_7;
    s16 var_t0_8;
    s16 var_t1_10;
    s16 var_t1_11;
    s16 var_t1_12;
    s16 var_t1_13;
    s16 var_t1_2;
    s16 var_t1_9;
    s16 var_t8_2;
    s16 var_t8_8;
    s16 var_v0_44;
    s16 var_v0_45;
    s16 var_v0_46;
    s16 var_v0_47;
    s16 var_v0_48;
    s16 var_v0_49;
    s16 var_v0_50;
    s16 var_v0_51;
    s16 var_v0_52;
    s16 var_v0_53;
    s16 var_v0_54;
    s16 var_v0_55;
    s16 var_v0_56;
    s16 var_v0_57;
    s16 var_v0_58;
    s16 var_v0_59;
    s16 var_v1_44;
    s16 var_v1_45;
    s16 var_v1_46;
    s16 var_v1_51;
    s16 var_v1_52;
    s16 var_v1_53;
    s32 *temp_a0_25;
    s32 *temp_a1_28;
    s32 *temp_a1_29;
    s32 *temp_a3_25;
    s32 *temp_a3_26;
    s32 *temp_a4_10;
    s32 *temp_a4_9;
    s32 *temp_a7_5;
    s32 *temp_a7_6;
    s32 *temp_t2_16;
    s32 *temp_t2_17;
    s32 *temp_t2_18;
    s32 *temp_t2_19;
    s32 *temp_t2_20;
    s32 *temp_t2_21;
    s32 *temp_t2_22;
    s32 *temp_t2_23;
    s32 *temp_t2_24;
    s32 *temp_t2_25;
    s32 *temp_t2_26;
    s32 *temp_t2_27;
    s32 *temp_t2_28;
    s32 *temp_t2_29;
    s32 *temp_t2_30;
    s32 *temp_t2_31;
    s32 *var_a0_33;
    s32 *var_a0_34;
    s32 *var_a0_36;
    s32 *var_a1_25;
    s32 *var_a1_26;
    s32 *var_a1_27;
    s32 *var_a1_29;
    s32 *var_a2_2;
    s32 *var_a2_3;
    s32 *var_a3_20;
    s32 *var_a3_21;
    s32 *var_a3_22;
    s32 *var_a3_24;
    s32 *var_a4_15;
    s32 *var_a5_2;
    s32 *var_a6_10;
    s32 *var_a6_2;
    s32 *var_a7_8;
    s32 *var_a7_9;
    s32 *var_s0_4;
    s32 *var_s1_2;
    s32 *var_s3_2;
    s32 *var_s3_3;
    s32 *var_s3_5;
    s32 *var_s3_6;
    s32 *var_s3_7;
    s32 *var_s3_8;
    s32 *var_s4_3;
    s32 *var_s4_5;
    s32 *var_s4_6;
    s32 *var_s4_7;
    s32 *var_s4_8;
    s32 *var_t0_2;
    s32 *var_t2_2;
    s32 *var_v0_12;
    s32 *var_v0_15;
    s32 *var_v0_30;
    s32 *var_v1;
    s32 *var_v1_10;
    s32 *var_v1_11;
    s32 *var_v1_12;
    s32 *var_v1_21;
    s32 *var_v1_23;
    s32 *var_v1_2;
    s32 *var_v1_3;
    s32 *var_v1_4;
    s32 *var_v1_5;
    s32 *var_v1_6;
    s32 *var_v1_7;
    s32 *var_v1_9;
    s32 temp_a0_12;
    s32 temp_a0_13;
    s32 temp_a0_15;
    s32 temp_a0_16;
    s32 temp_a0_17;
    s32 temp_a0_18;
    s32 temp_a0_19;
    s32 temp_a0_23;
    s32 temp_a0_24;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a1;
    s32 temp_a1_11;
    s32 temp_a1_12;
    s32 temp_a1_13;
    s32 temp_a1_14;
    s32 temp_a1_15;
    s32 temp_a1_16;
    s32 temp_a1_21;
    s32 temp_a1_22;
    s32 temp_a1_23;
    s32 temp_a1_24;
    s32 temp_a1_25;
    s32 temp_a1_26;
    s32 temp_a1_27;
    s32 temp_a1_2;
    s32 temp_a1_31;
    s32 temp_a1_36;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a1_8;
    s32 temp_a1_9;
    s32 temp_a2;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_12;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 temp_a3;
    s32 temp_a3_10;
    s32 temp_a3_11;
    s32 temp_a3_12;
    s32 temp_a3_13;
    s32 temp_a3_14;
    s32 temp_a3_15;
    s32 temp_a3_17;
    s32 temp_a3_18;
    s32 temp_a3_23;
    s32 temp_a3_24;
    s32 temp_a3_36;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_8;
    s32 temp_a3_9;
    s32 temp_a4;
    s32 temp_a4_11;
    s32 temp_a4_12;
    s32 temp_a4_15;
    s32 temp_a4_16;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_5;
    s32 temp_a4_7;
    s32 temp_a4_8;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_gp;
    s32 temp_gp_2;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 temp_ra_4;
    s32 temp_s0_10;
    s32 temp_s0_11;
    s32 temp_s0_12;
    s32 temp_s0_13;
    s32 temp_s0_14;
    s32 temp_s0_16;
    s32 temp_s0_2;
    s32 temp_s0_4;
    s32 temp_s0_5;
    s32 temp_s0_6;
    s32 temp_s0_7;
    s32 temp_s0_8;
    s32 temp_s1;
    s32 temp_s1_10;
    s32 temp_s1_12;
    s32 temp_s1_2;
    s32 temp_s1_4;
    s32 temp_s1_5;
    s32 temp_s1_6;
    s32 temp_s1_7;
    s32 temp_s1_8;
    s32 temp_s1_9;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s2_3;
    s32 temp_s2_4;
    s32 temp_s2_5;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_s3_4;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s4_3;
    s32 temp_s5_10;
    s32 temp_s5_11;
    s32 temp_s5_12;
    s32 temp_s5_2;
    s32 temp_s5_3;
    s32 temp_s5_4;
    s32 temp_s5_5;
    s32 temp_s5_6;
    s32 temp_s5_7;
    s32 temp_s5_8;
    s32 temp_s6;
    s32 temp_s6_10;
    s32 temp_s6_11;
    s32 temp_s6_2;
    s32 temp_s6_3;
    s32 temp_s6_4;
    s32 temp_s6_5;
    s32 temp_s6_6;
    s32 temp_s6_7;
    s32 temp_s6_8;
    s32 temp_s6_9;
    s32 temp_s7;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t0_4;
    s32 temp_t0_5;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t1_5;
    s32 temp_t1_6;
    s32 temp_t2_10;
    s32 temp_t2_11;
    s32 temp_t2_13;
    s32 temp_t2_14;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_t2_5;
    s32 temp_t2_6;
    s32 temp_t2_7;
    s32 temp_t2_9;
    s32 temp_t3_10;
    s32 temp_t3_11;
    s32 temp_t3_12;
    s32 temp_t3_2;
    s32 temp_t3_3;
    s32 temp_t3_4;
    s32 temp_t3_5;
    s32 temp_t3_7;
    s32 temp_t3_8;
    s32 temp_t8;
    s32 temp_t8_11;
    s32 temp_t8_13;
    s32 temp_t8_14;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t8_4;
    s32 temp_t8_5;
    s32 temp_t8_6;
    s32 temp_t8_7;
    s32 temp_t8_8;
    s32 temp_t8_9;
    s32 temp_t9;
    s32 temp_t9_10;
    s32 temp_t9_13;
    s32 temp_t9_14;
    s32 temp_t9_15;
    s32 temp_t9_16;
    s32 temp_t9_18;
    s32 temp_t9_19;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_t9_4;
    s32 temp_t9_5;
    s32 temp_t9_8;
    s32 temp_t9_9;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_13;
    s32 temp_v0_14;
    s32 temp_v0_15;
    s32 temp_v0_16;
    s32 temp_v0_18;
    s32 temp_v0_19;
    s32 temp_v0_20;
    s32 temp_v0_21;
    s32 temp_v0_22;
    s32 temp_v0_23;
    s32 temp_v0_26;
    s32 temp_v0_27;
    s32 temp_v0_28;
    s32 temp_v0_2;
    s32 temp_v0_32;
    s32 temp_v0_33;
    s32 temp_v0_34;
    s32 temp_v0_35;
    s32 temp_v0_36;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1;
    s32 temp_v1_10;
    s32 temp_v1_11;
    s32 temp_v1_12;
    s32 temp_v1_13;
    s32 temp_v1_14;
    s32 temp_v1_15;
    s32 temp_v1_16;
    s32 temp_v1_17;
    s32 temp_v1_23;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 temp_v1_9;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_12;
    s32 var_a0_13;
    s32 var_a0_14;
    s32 var_a0_15;
    s32 var_a0_20;
    s32 var_a0_21;
    s32 var_a0_22;
    s32 var_a0_24;
    s32 var_a0_25;
    s32 var_a0_26;
    s32 var_a0_27;
    s32 var_a0_28;
    s32 var_a0_35;
    s32 var_a0_37;
    s32 var_a0_39;
    s32 var_a0_40;
    s32 var_a0_42;
    s32 var_a0_43;
    s32 var_a0_45;
    s32 var_a0_47;
    s32 var_a0_48;
    s32 var_a0_49;
    s32 var_a0_50;
    s32 var_a0_52;
    s32 var_a0_53;
    s32 var_a0_54;
    s32 var_a0_56;
    s32 var_a0_57;
    s32 var_a0_58;
    s32 var_a0_59;
    s32 var_a0_6;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_12;
    s32 var_a1_15;
    s32 var_a1_17;
    s32 var_a1_18;
    s32 var_a1_24;
    s32 var_a1_28;
    s32 var_a1_33;
    s32 var_a1_37;
    s32 var_a1_3;
    s32 var_a1_41;
    s32 var_a1_45;
    s32 var_a1_49;
    s32 var_a1_52;
    s32 var_a1_5;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a2_10;
    s32 var_a2_11;
    s32 var_a2_15;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_9;
    s32 var_a3;
    s32 var_a3_14;
    s32 var_a3_15;
    s32 var_a3_23;
    s32 var_a3_2;
    s32 var_a3_37;
    s32 var_a3_3;
    s32 var_a3_41;
    s32 var_a3_4;
    s32 var_a4_10;
    s32 var_a4_14;
    s32 var_a4_16;
    s32 var_a4_17;
    s32 var_a4_18;
    s32 var_a4_21;
    s32 var_a4_2;
    s32 var_a4_5;
    s32 var_a4_8;
    s32 var_a5_4;
    s32 var_a5_5;
    s32 var_a5_6;
    s32 var_a5_8;
    s32 var_a6;
    s32 var_a6_3;
    s32 var_a6_5;
    s32 var_a6_6;
    s32 var_a7;
    s32 var_a7_10;
    s32 var_a7_2;
    s32 var_a7_4;
    s32 var_a7_5;
    s32 var_a7_6;
    s32 var_ra_2;
    s32 var_s0;
    s32 var_s0_12;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_5;
    s32 var_s0_7;
    s32 var_s1;
    s32 var_s1_4;
    s32 var_s1_5;
    s32 var_s1_6;
    s32 var_s1_8;
    s32 var_s2_2;
    s32 var_s2_3;
    s32 var_s2_4;
    s32 var_s3_4;
    s32 var_s3_9;
    s32 var_s4_2;
    s32 var_s4_4;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_s5_3;
    s32 var_s6_2;
    s32 var_s7;
    s32 var_t0_10;
    s32 var_t0_13;
    s32 var_t0_4;
    s32 var_t0_6;
    s32 var_t1_3;
    s32 var_t1_4;
    s32 var_t2;
    s32 var_t2_4;
    s32 var_t2_6;
    s32 var_t3;
    s32 var_t3_10;
    s32 var_t3_2;
    s32 var_t3_3;
    s32 var_t3_5;
    s32 var_t3_7;
    s32 var_t8;
    s32 var_t8_3;
    s32 var_t8_5;
    s32 var_t8_6;
    s32 var_t9;
    s32 var_t9_2;
    s32 var_t9_3;
    s32 var_t9_5;
    s32 var_t9_6;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_13;
    s32 var_v0_16;
    s32 var_v0_18;
    s32 var_v0_20;
    s32 var_v0_23;
    s32 var_v0_25;
    s32 var_v0_27;
    s32 var_v0_2;
    s32 var_v0_31;
    s32 var_v0_32;
    s32 var_v0_33;
    s32 var_v0_34;
    s32 var_v0_37;
    s32 var_v0_38;
    s32 var_v0_39;
    s32 var_v0_40;
    s32 var_v0_41;
    s32 var_v0_42;
    s32 var_v0_43;
    s32 var_v0_4;
    s32 var_v0_6;
    s32 var_v0_8;
    s32 var_v1_15;
    s32 var_v1_16;
    s32 var_v1_17;
    s32 var_v1_22;
    s32 var_v1_24;
    s32 var_v1_25;
    s32 var_v1_26;
    s32 var_v1_27;
    s32 var_v1_28;
    s32 var_v1_30;
    s32 var_v1_31;
    s32 var_v1_32;
    s32 var_v1_33;
    s32 var_v1_34;
    s32 var_v1_36;
    s32 var_v1_37;
    s32 var_v1_38;
    s32 var_v1_40;
    s32 var_v1_41;
    s32 var_v1_42;
    s32 var_v1_47;
    s32 var_v1_48;
    s32 var_v1_49;
    s32 var_v1_8;
    s64 temp_a0;
    s64 temp_a0_5;
    s64 temp_a1_10;
    s64 temp_a4_4;
    s64 temp_s0_15;
    s64 temp_s0_3;
    s64 temp_s0_9;
    s64 temp_s1_3;
    s64 temp_s5_9;
    s64 temp_t2;
    s64 temp_t2_12;
    s64 temp_t2_32;
    s64 temp_t9_17;
    s64 temp_t9_20;
    s64 temp_t9_6;
    s64 temp_t9_7;
    s64 temp_v0;
    s64 temp_v0_17;
    s64 temp_v0_24;
    s64 temp_v0_58;
    s64 temp_v1_18;
    s64 temp_v1_25;
    s64 temp_v1_29;
    s64 var_a0_11;
    s64 var_a0_17;
    s64 var_a0_23;
    s64 var_a0_2;
    s64 var_a0_38;
    s64 var_a0_3;
    s64 var_a0_41;
    s64 var_a0_44;
    s64 var_a0_46;
    s64 var_a0_51;
    s64 var_a0_55;
    s64 var_a1_14;
    s64 var_a1_19;
    s64 var_a1_20;
    s64 var_a1_2;
    s64 var_a1_4;
    s64 var_a1_6;
    s64 var_a2_4;
    s64 var_a2_8;
    s64 var_a3_13;
    s64 var_a3_5;
    s64 var_a3_6;
    s64 var_a4;
    s64 var_a4_4;
    s64 var_a5;
    s64 var_a5_10;
    s64 var_a5_11;
    s64 var_a5_3;
    s64 var_a5_9;
    s64 var_a6_4;
    s64 var_a6_8;
    s64 var_a7_7;
    s64 var_gp_2;
    s64 var_ra;
    s64 var_ra_3;
    s64 var_s0_10;
    s64 var_s0_11;
    s64 var_s0_8;
    s64 var_s0_9;
    s64 var_s1_7;
    s64 var_s1_9;
    s64 var_s2;
    s64 var_s3_10;
    s64 var_s4;
    s64 var_s5_4;
    s64 var_s6;
    s64 var_t0;
    s64 var_t0_3;
    s64 var_t0_5;
    s64 var_t1;
    s64 var_t1_5;
    s64 var_t1_6;
    s64 var_t1_8;
    s64 var_t2_5;
    s64 var_t3_11;
    s64 var_t3_4;
    s64 var_t3_6;
    s64 var_t3_8;
    s64 var_t3_9;
    s64 var_t8_4;
    s64 var_t8_7;
    s64 var_t9_4;
    s64 var_v0_22;
    s64 var_v1_13;
    u16 *temp_a0_14;
    u16 *temp_a3_22;
    u16 *temp_a4_6;
    u16 *temp_a7;
    u16 *temp_ra_10;
    u16 *temp_ra_11;
    u16 *temp_ra_12;
    u16 *temp_ra_13;
    u16 *temp_ra_14;
    u16 *temp_ra_15;
    u16 *temp_ra_16;
    u16 *temp_ra_17;
    u16 *temp_ra_18;
    u16 *temp_ra_19;
    u16 *temp_ra_20;
    u16 *temp_ra_21;
    u16 *temp_ra_22;
    u16 *temp_ra_23;
    u16 *temp_ra_24;
    u16 *temp_ra_25;
    u16 *temp_ra_26;
    u16 *temp_ra_27;
    u16 *temp_ra_28;
    u16 *temp_ra_6;
    u16 *temp_ra_7;
    u16 *temp_ra_8;
    u16 *temp_ra_9;
    u16 *temp_t9_11;
    u16 *temp_t9_12;
    u16 *temp_v1_20;
    u16 *var_a0_32;
    u16 *var_a1_13;
    u16 *var_a1_16;
    u16 *var_a1_21;
    u16 *var_a1_22;
    u16 *var_a3_11;
    u16 *var_a3_12;
    u16 *var_a4_7;
    u16 *var_a4_9;
    u16 *var_a6_7;
    u16 *var_a6_9;
    u16 *var_a7_3;
    u16 *var_t1_7;
    u16 temp_v0_25;
    u16 temp_v0_29;
    u16 temp_v0_30;
    u16 temp_v0_31;
    u16 temp_v1_21;
    u16 temp_v1_24;
    u16 var_a0_29;
    u16 var_a0_30;
    u16 var_a0_31;
    u16 var_a1_23;
    u16 var_a2_7;
    u16 var_v1_19;
    u16 var_v1_20;
    u16 var_v1_29;
    u32 temp_a3_16;
    u32 temp_a3_2;
    u32 temp_a3_3;
    u32 temp_a3_4;
    u32 temp_a3_7;
    u32 temp_s1_11;
    u32 temp_t2_4;
    u32 temp_t2_8;
    u32 temp_t3_6;
    u32 temp_t3_9;
    u32 temp_t8_10;
    u32 temp_t8_12;
    u32 temp_v0_37;
    u32 temp_v1_22;
    u32 var_a0_4;
    u32 var_a0_5;
    u32 var_a0_7;
    u32 var_a2;
    u32 var_a4_3;
    u32 var_s0_6;
    u32 var_s1_3;
    u32 var_t2_3;
    u32 var_v0_11;
    u32 var_v0_14;
    u32 var_v0_17;
    u32 var_v0_19;
    u32 var_v0_21;
    u32 var_v0_24;
    u32 var_v0_26;
    u32 var_v0_28;
    u32 var_v0_29;
    u32 var_v0_3;
    u32 var_v0_5;
    u32 var_v0_7;
    u32 var_v0_9;
    u64 var_s3;
    u8 temp_a1_17;
    u8 temp_a1_18;
    u8 temp_a1_19;
    u8 temp_v1_19;
    u8 var_a0_16;
    u8 var_a0_18;
    u8 var_a0_19;
    u8 var_a5_7;
    u8 var_v0_35;
    u8 var_v0_36;
    u8 var_v1_18;
    void *temp_a0_10;
    void *temp_a0_11;
    void *temp_a0_20;
    void *temp_a0_21;
    void *temp_a0_22;
    void *temp_a0_9;
    void *temp_a1_20;
    void *temp_a2_5;
    void *temp_a3_19;
    void *temp_a3_20;
    void *temp_a3_21;
    void *temp_a3_27;
    void *temp_a3_28;
    void *temp_a3_29;
    void *temp_a3_33;
    void *temp_a3_34;
    void *temp_a3_35;
    void *temp_a3_39;
    void *temp_a3_40;
    void *temp_a3_41;
    void *temp_a5_24;
    void *temp_a5_5;
    void *temp_a5_7;
    void *temp_ra_5;
    void *temp_s0;
    void *temp_t0;
    void *temp_t2_15;
    void *var_a1_10;
    void *var_a1_11;
    void *var_a1_9;
    void *var_a3_10;
    void *var_a3_16;
    void *var_a3_17;
    void *var_a3_18;
    void *var_a3_19;
    void *var_a3_25;
    void *var_a3_26;
    void *var_a3_27;
    void *var_a3_28;
    void *var_a3_33;
    void *var_a3_34;
    void *var_a3_35;
    void *var_a3_36;
    void *var_a3_42;
    void *var_a3_43;
    void *var_a3_44;
    void *var_a3_45;
    void *var_a3_7;
    void *var_a3_8;
    void *var_a3_9;
    void *var_a4_11;
    void *var_a4_12;
    void *var_a4_13;
    void *var_a4_6;
    void *var_ra_4;
    void *var_v1_14;

    temp_s1 = expScreenPrivateIndex * 4;
    temp_s0 = **(arg_sp4->unk10->unk1B4 + temp_s1);
    temp_s0->unk404E4 = 1;
    sp130 = arg0;
    temp_t1 = (*(arg_sp4->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
    spD8 = temp_s0 + 0x40000;
    if ((temp_t1 != 0xD) && (temp_t1 != 0xE)) {
        if (temp_t1 == 0xC) {
            spD8->unk52C = 8;
        } else {
            spD8->unk52C = temp_t1;
        }
    } else {
        spD8->unk52C = 0xB;
    }
    var_ra = arg1;
    var_s3 = arg2;
    spD8->unk4DC = arg5;
    temp_s5 = sp130->unk0;
    temp_a3 = arg_sp4->unk84;
    var_s4 = sp130->unk4 - temp_s5;
    temp_t3 = sp130->unk2;
    temp_t2 = sp130->unk6 - temp_t3;
    unkspB8 = temp_t2;
    temp_t0 = **(arg_sp4->unk10->unk1B4 + temp_s1);
    if ((temp_t2 != 0) && (var_s4 != 0)) {
        var_gp = temp_s5;
        temp_t1_2 = (*(temp_a3 + (nfbWindowPrivateIndex * 4)))->unk14;
        sp98 = (s64) temp_t3;
        switch (temp_t1_2) {                        /* irregular */
        default:
            temp_t0->unk4052C = (s32) (temp_t1_2 | 0x1000);
            temp_t0->unk404D4 = 0;
            var_a0 = arg7;
            var_a3 = ((dbcWindowPrivateIndex * 4) + temp_a3)->unk1 * 8;
            break;
        case 13:
            var_a3 = 1;
            var_a0 = 0;
            temp_t0->unk4052C = 0x100B;
            temp_t0->unk404D4 = (s32) (arg7 & 3);
            break;
        case 12:
            var_a3 = 1;
            var_a0 = 0;
            temp_t0->unk4052C = 0x1008;
            temp_t0->unk404D4 = (s32) (arg7 & 0xF);
            break;
        case 14:
            var_a3 = 9;
            var_a0 = 0;
            temp_t0->unk4052C = 0x100B;
            temp_t0->unk404D4 = (s32) (arg7 & 0xC);
            break;
        }
        temp_t0->unk40530 = arg4;
        temp_t0->unk4077C = (s32) (var_a0 & 0xFFFFFF);
        temp_t0->unk4077C = arg6;
        temp_t0->unk4077C = var_a3;
        temp_t0->unk404E0 = arg4;
        if (var_s4 < 0x11) {
            if (arg2 >= 8U) {
                var_s3 = arg2 & 7;
                var_ra = (arg2 >> 3) + arg1;
            }
            if (var_s3 != 0) {
                temp_v0 = (unkspB8 >> 6) & 0xFF;
                sp140 = temp_v0;
                spC8 = (s64) sp130->unk2;
                if (temp_v0 != 0) {
                    if (sp140 > 0) {
                        var_a5 = spC8;
                        sp110 = (sp140 << 6) + spC8;
                        do {
                            var_t9 = 2;
                            sp1A0 = var_s4;
                            sp198 = var_a5;
                            sp1A8 = var_s3;
                            sp150 = (s64) &sp24;
                            sp148 = (s64) &sp24;
                            temp_t3_2 = var_ra & 3;
                            var_v1 = var_ra - temp_t3_2;
                            temp_t3_3 = (temp_t3_2 * 8) + var_s3;
                            var_s0 = 0x20 - temp_t3_3;
                            temp_t2_2 = var_ra + arg3;
                            temp_ra = temp_t2_2 & 3;
                            var_ra_2 = (temp_ra * 8) + var_s3;
                            var_s3_2 = temp_t2_2 - temp_ra;
                            var_t2 = arg3 + temp_t2_2;
                            var_s1 = var_t2 + arg3;
                            var_s2 = arg3 + var_s1;
                            var_v0 = (u32) (var_s4 + var_ra_2) < 0x21U;
                            var_a3_2 = ((u32) (var_s4 + temp_t3_3) < 0x21U) != 0;
                            temp_t0->unk40514 = (s32) sp130->unk0;
                            temp_t0->unk4077C = (s32) var_a5;
                            temp_t0->unk4077C = (s32) var_s4;
                            var_s4_2 = temp_t3_3;
                            temp_t0->unk4077C = 0x40;
loop_20:
                            temp_a1 = *var_v1;
                            if (var_a3_2 != 0) {
                                var_v1 = &sp24;
                            }
                            temp_t8 = temp_a1 << var_s4_2;
                            temp_t3_4 = var_v0 != 0;
                            var_v0_2 = ((u32) var_v1->unk4 >> var_s0) | temp_t8;
                            if (var_a3_2 != 0) {
                                var_v0_2 = temp_t8;
                            }
                            temp_a3_2 = *var_s3_2 << var_ra_2;
                            if (temp_t3_4 != 0) {
                                var_s3_2 = &sp24;
                            }
                            var_v0_3 = ((u32) var_s3_2->unk4 >> (0x20 - var_ra_2)) | temp_a3_2;
                            if (temp_t3_4 != 0) {
                                var_v0_3 = temp_a3_2;
                            }
                            temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_2) | (var_v0_3 >> 0x10));
                            temp_s4 = var_t2 & 3;
                            temp_a1_2 = (temp_s4 * 8) + var_s3;
                            temp_ra_2 = ((u32) (var_s4 + temp_a1_2) < 0x21U) != 0;
                            temp_v1 = var_s1 & 3;
                            temp_t8_2 = (temp_v1 * 8) + var_s3;
                            temp_s3 = var_s2 + arg3;
                            temp_t3_5 = arg3 + temp_s3;
                            var_s1_2 = var_s1 - temp_v1;
                            var_v1_2 = var_t2 - temp_s4;
                            temp_v0_2 = *var_v1_2;
                            if (temp_ra_2 != 0) {
                                var_v1_2 = &sp24;
                            }
                            temp_a1_3 = temp_v0_2 << temp_a1_2;
                            temp_t2_3 = ((u32) (var_s4 + temp_t8_2) < 0x21U) != 0;
                            var_v0_4 = ((u32) var_v1_2->unk4 >> (0x20 - temp_a1_2)) | temp_a1_3;
                            if (temp_ra_2 != 0) {
                                var_v0_4 = temp_a1_3;
                            }
                            temp_a3_3 = *var_s1_2 << temp_t8_2;
                            if (temp_t2_3 != 0) {
                                var_s1_2 = &sp24;
                            }
                            var_v0_5 = ((u32) var_s1_2->unk4 >> (0x20 - temp_t8_2)) | temp_a3_3;
                            if (temp_t2_3 != 0) {
                                var_v0_5 = temp_a3_3;
                            }
                            temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_4) | (var_v0_5 >> 0x10));
                            temp_s4_2 = var_s2 & 3;
                            temp_a1_4 = (temp_s4_2 * 8) + var_s3;
                            temp_s1_2 = ((u32) (var_s4 + temp_a1_4) < 0x21U) != 0;
                            temp_v1_2 = temp_s3 & 3;
                            temp_ra_3 = (temp_v1_2 * 8) + var_s3;
                            temp_t8_3 = temp_t3_5 + arg3;
                            var_t2 = arg3 + temp_t8_3;
                            var_s3_3 = temp_s3 - temp_v1_2;
                            var_v1_3 = var_s2 - temp_s4_2;
                            temp_v0_3 = *var_v1_3;
                            if (temp_s1_2 != 0) {
                                var_v1_3 = &sp24;
                            }
                            temp_a1_5 = temp_v0_3 << temp_a1_4;
                            temp_s2 = ((u32) (var_s4 + temp_ra_3) < 0x21U) != 0;
                            var_v0_6 = ((u32) var_v1_3->unk4 >> (0x20 - temp_a1_4)) | temp_a1_5;
                            if (temp_s1_2 != 0) {
                                var_v0_6 = temp_a1_5;
                            }
                            temp_a3_4 = *var_s3_3 << temp_ra_3;
                            if (temp_s2 != 0) {
                                var_s3_3 = &sp24;
                            }
                            var_v0_7 = ((u32) var_s3_3->unk4 >> (0x20 - temp_ra_3)) | temp_a3_4;
                            if (temp_s2 != 0) {
                                var_v0_7 = temp_a3_4;
                            }
                            temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_6) | (var_v0_7 >> 0x10));
                            temp_a1_6 = temp_t3_5 & 3;
                            var_s4_2 = (temp_a1_6 * 8) + var_s3;
                            var_s0 = 0x20 - var_s4_2;
                            var_a3_2 = ((u32) (var_s4 + var_s4_2) < 0x21U) != 0;
                            temp_v1_3 = temp_t8_3 & 3;
                            var_ra_2 = (temp_v1_3 * 8) + var_s3;
                            var_v0 = (u32) (var_s4 + var_ra_2) < 0x21U;
                            var_s1 = var_t2 + arg3;
                            var_s2 = arg3 + var_s1;
                            var_s3_2 = temp_t8_3 - temp_v1_3;
                            var_t9 += 3;
                            var_v1 = temp_t3_5 - temp_a1_6;
                            if (var_t9 != 0x20) {
                                goto loop_20;
                            }
                            var_a0_2 = sp148;
                            var_t2_2 = var_v1;
                            temp_a1_7 = *var_t2_2;
                            if (var_a3_2 != 0) {
                                var_t2_2 = (s32 *) var_a0_2;
                            }
                            var_s4 = sp1A0;
                            var_a5_2 = var_s3_2;
                            var_s3 = sp1A8;
                            temp_s0_2 = var_t2 & 3;
                            temp_t9 = (temp_s0_2 * 8) + var_s3;
                            temp_v1_4 = ((u32) (var_s4 + temp_t9) < 0x21U) != 0;
                            temp_s0_3 = var_t2 - temp_s0_2;
                            if (temp_v1_4 == 0) {
                                var_a0_2 = temp_s0_3;
                            }
                            var_ra_3 = sp150;
                            temp_a4 = var_v0 != 0;
                            var_a1 = temp_a1_7 << var_s4_2;
                            temp_a2 = *var_a5_2;
                            if (temp_a4 != 0) {
                                var_a5_2 = (s32 *) var_ra_3;
                            }
                            if (var_a3_2 == 0) {
                                var_a1 |= (u32) var_t2_2->unk4 >> var_s0;
                            }
                            var_a2 = temp_a2 << var_ra_2;
                            if (temp_a4 == 0) {
                                var_a2 |= (u32) var_a5_2->unk4 >> (0x20 - var_ra_2);
                            }
                            temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_a1) | (var_a2 >> 0x10));
                            var_s0_2 = *temp_s0_3 << temp_t9;
                            if (temp_v1_4 == 0) {
                                var_s0_2 |= (u32) var_a0_2->unk4 >> (0x20 - temp_t9);
                            }
                            temp_v1_5 = var_s1 & 3;
                            temp_s1_3 = var_s1 - temp_v1_5;
                            temp_v0_4 = (temp_v1_5 * 8) + var_s3;
                            temp_t9_2 = ((u32) (var_s4 + temp_v0_4) < 0x21U) != 0;
                            if (temp_t9_2 == 0) {
                                var_ra_3 = temp_s1_3;
                            }
                            var_s1_3 = *temp_s1_3 << temp_v0_4;
                            if (temp_t9_2 == 0) {
                                var_s1_3 |= (u32) var_ra_3->unk4 >> (0x20 - temp_v0_4);
                            }
                            var_a5 = sp198 + 0x40;
                            temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_s0_2) | (var_s1_3 >> 0x10));
                            var_ra = var_s2;
                        } while (var_a5 != sp110);
                        var_a0_3 = sp140;
                    } else {
                        var_a0_3 = 0;
                    }
                    temp_t0->unk407A8 = 0;
                    spC8 += var_a0_3 << 6;
                }
                var_t8 = 2;
                if (unkspB8 & 0x20 & 0xFF) {
                    sp1A0 = var_s4;
                    sp1A8 = var_s3;
                    sp80 = (s64) &sp24;
                    sp68 = (s64) &sp24;
                    temp_a1_8 = var_ra + arg3;
                    temp_a3_5 = var_ra & 3;
                    var_v1_4 = var_ra - temp_a3_5;
                    var_a3_3 = (temp_a3_5 * 8) + var_s3;
                    var_s2_2 = 0x20 - var_a3_3;
                    temp_t9_3 = temp_a1_8 & 3;
                    var_a1_2 = arg3 + temp_a1_8;
                    temp_s5_2 = var_a1_2 + arg3;
                    var_t3 = arg3 + temp_s5_2;
                    var_t9_2 = (temp_t9_3 * 8) + var_s3;
                    var_s3_4 = temp_s5_2;
                    var_s1_4 = (u32) (var_s4 + var_t9_2) < 0x21U;
                    var_s0_3 = ((u32) (var_s4 + var_a3_3) < 0x21U) != 0;
                    temp_t0->unk40510 = (s32) sp130->unk0;
                    temp_t0->unk4077C = (s32) spC8;
                    temp_t0->unk4077C = (s32) var_s4;
                    var_s4_3 = temp_a1_8 - temp_t9_3;
                    temp_t0->unk4077C = 0x20;
loop_75:
                    temp_v0_5 = *var_v1_4;
                    if (var_s0_3 != 0) {
                        var_v1_4 = &sp24;
                    }
                    temp_a3_6 = temp_v0_5 << var_a3_3;
                    temp_s1_4 = var_s1_4 != 0;
                    var_v0_8 = ((u32) var_v1_4->unk4 >> var_s2_2) | temp_a3_6;
                    if (var_s0_3 != 0) {
                        var_v0_8 = temp_a3_6;
                    }
                    temp_t2_4 = *var_s4_3 << var_t9_2;
                    if (temp_s1_4 != 0) {
                        var_s4_3 = &sp24;
                    }
                    var_v0_9 = ((u32) var_s4_3->unk4 >> (0x20 - var_t9_2)) | temp_t2_4;
                    if (temp_s1_4 != 0) {
                        var_v0_9 = temp_t2_4;
                    }
                    temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_8) | (var_v0_9 >> 0x10));
                    temp_s5_3 = var_a1_2 & 3;
                    temp_s1_5 = (temp_s5_3 * 8) + var_s3;
                    temp_s2_2 = ((u32) (var_s4 + temp_s1_5) < 0x21U) != 0;
                    temp_v1_6 = var_s3_4 & 3;
                    temp_s0_4 = (temp_v1_6 * 8) + var_s3;
                    temp_t9_4 = var_t3 + arg3;
                    temp_t2_5 = arg3 + temp_t9_4;
                    var_s3_5 = var_s3_4 - temp_v1_6;
                    var_v1_5 = var_a1_2 - temp_s5_3;
                    temp_v0_6 = *var_v1_5;
                    if (temp_s2_2 != 0) {
                        var_v1_5 = &sp24;
                    }
                    temp_a1_9 = temp_v0_6 << temp_s1_5;
                    temp_s1_6 = ((u32) (var_s4 + temp_s0_4) < 0x21U) != 0;
                    var_v0_10 = ((u32) var_v1_5->unk4 >> (0x20 - temp_s1_5)) | temp_a1_9;
                    if (temp_s2_2 != 0) {
                        var_v0_10 = temp_a1_9;
                    }
                    temp_a3_7 = *var_s3_5 << temp_s0_4;
                    if (temp_s1_6 != 0) {
                        var_s3_5 = &sp24;
                    }
                    var_v0_11 = ((u32) var_s3_5->unk4 >> (0x20 - temp_s0_4)) | temp_a3_7;
                    if (temp_s1_6 != 0) {
                        var_v0_11 = temp_a3_7;
                    }
                    temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_10) | (var_v0_11 >> 0x10));
                    temp_s6 = var_t3 & 3;
                    temp_a3_8 = (temp_s6 * 8) + var_s3;
                    temp_s2_3 = 0x20 - temp_a3_8;
                    temp_s1_7 = ((u32) (var_s4 + temp_a3_8) < 0x21U) != 0;
                    temp_v1_7 = temp_t9_4 & 3;
                    temp_s0_5 = (temp_v1_7 * 8) + var_s3;
                    temp_s5_4 = (u32) (var_s4 + temp_s0_5) < 0x21U;
                    temp_s4_3 = temp_t2_5 + arg3;
                    var_a1_2 = arg3 + temp_s4_3;
                    var_s3_6 = temp_t9_4 - temp_v1_7;
                    var_v0_12 = var_t3 - temp_s6;
                    if (var_t8 != 0xE) {
                        temp_v1_8 = *var_v0_12;
                        if (temp_s1_7 != 0) {
                            var_v0_12 = &sp24;
                        }
                        temp_a3_9 = temp_v1_8 << temp_a3_8;
                        temp_t9_5 = temp_s5_4 != 0;
                        var_v0_13 = ((u32) var_v0_12->unk4 >> temp_s2_3) | temp_a3_9;
                        if (temp_s1_7 != 0) {
                            var_v0_13 = temp_a3_9;
                        }
                        temp_t3_6 = *var_s3_6 << temp_s0_5;
                        if (temp_t9_5 != 0) {
                            var_s3_6 = &sp24;
                        }
                        var_v0_14 = ((u32) var_s3_6->unk4 >> (0x20 - temp_s0_5)) | temp_t3_6;
                        if (temp_t9_5 != 0) {
                            var_v0_14 = temp_t3_6;
                        }
                        temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_13) | (var_v0_14 >> 0x10));
                        temp_s5_5 = temp_t2_5 & 3;
                        var_a3_3 = (temp_s5_5 * 8) + var_s3;
                        var_s2_2 = 0x20 - var_a3_3;
                        var_s0_3 = ((u32) (var_s4 + var_a3_3) < 0x21U) != 0;
                        temp_v1_9 = temp_s4_3 & 3;
                        var_t9_2 = (temp_v1_9 * 8) + var_s3;
                        var_s1_4 = (u32) (var_s4 + var_t9_2) < 0x21U;
                        var_s3_4 = var_a1_2 + arg3;
                        var_t3 = arg3 + var_s3_4;
                        var_s4_3 = temp_s4_3 - temp_v1_9;
                        var_t8 += 3;
                        var_v1_4 = temp_t2_5 - temp_s5_5;
                        goto loop_75;
                    }
                    temp_a6 = *var_v0_12;
                    var_a5_3 = sp68;
                    if (temp_s1_7 != 0) {
                        var_v0_12 = (s32 *) var_a5_3;
                    }
                    var_s4 = sp1A0;
                    var_s0_4 = var_s3_6;
                    var_s3 = sp1A8;
                    var_ra = var_a1_2;
                    temp_a4_2 = temp_t2_5 & 3;
                    temp_a2_2 = (temp_a4_2 * 8) + var_s3;
                    temp_a3_10 = ((u32) (var_s4 + temp_a2_2) < 0x21U) != 0;
                    temp_a1_10 = temp_t2_5 - temp_a4_2;
                    if (temp_a3_10 == 0) {
                        var_a5_3 = temp_a1_10;
                    }
                    temp_t3_7 = temp_s5_4 != 0;
                    var_a6 = temp_a6 << temp_a3_8;
                    var_a4 = sp80;
                    temp_t2_6 = *var_s0_4;
                    if (temp_t3_7 != 0) {
                        var_s0_4 = (s32 *) var_a4;
                    }
                    if (temp_s1_7 == 0) {
                        var_a6 |= (u32) var_v0_12->unk4 >> temp_s2_3;
                    }
                    var_t2_3 = temp_t2_6 << temp_s0_5;
                    if (temp_t3_7 == 0) {
                        var_t2_3 |= (u32) var_s0_4->unk4 >> (0x20 - temp_s0_5);
                    }
                    temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_a6) | (var_t2_3 >> 0x10));
                    var_a1_3 = *temp_a1_10 << temp_a2_2;
                    if (temp_a3_10 == 0) {
                        var_a1_3 |= (u32) var_a5_3->unk4 >> (0x20 - temp_a2_2);
                    }
                    temp_a5 = temp_s4_3 & 3;
                    temp_a0 = temp_s4_3 - temp_a5;
                    temp_a2_3 = (temp_a5 * 8) + var_s3;
                    temp_a3_11 = ((u32) (var_s4 + temp_a2_3) < 0x21U) != 0;
                    if (temp_a3_11 == 0) {
                        var_a4 = temp_a0;
                    }
                    var_a0_4 = *temp_a0 << temp_a2_3;
                    if (temp_a3_11 == 0) {
                        var_a0_4 |= (u32) var_a4->unk4 >> (0x20 - temp_a2_3);
                    }
                    spC8 += 0x20;
                    temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_a1_3) | (var_a0_4 >> 0x10));
                    temp_t0->unk407A8 = 0;
                }
                var_t9_3 = 2;
                if (unkspB8 & 0x10 & 0xFF) {
                    sp1A0 = var_s4;
                    sp1A8 = var_s3;
                    sp70 = (s64) &sp24;
                    sp78 = (s64) &sp24;
                    temp_t2_7 = var_ra + arg3;
                    temp_a3_12 = var_ra & 3;
                    var_v0_15 = var_ra - temp_a3_12;
                    var_a3_4 = (temp_a3_12 * 8) + var_s3;
                    var_s2_3 = 0x20 - var_a3_4;
                    temp_s0_6 = temp_t2_7 & 3;
                    var_s0_5 = (temp_s0_6 * 8) + var_s3;
                    var_s3_7 = temp_t2_7 - temp_s0_6;
                    var_t2_4 = arg3 + temp_t2_7;
                    temp_t3_8 = var_t2_4 + arg3;
                    var_a1_4 = arg3 + temp_t3_8;
                    var_s5 = (u32) (var_s4 + var_s0_5) < 0x21U;
                    var_s1_5 = ((u32) (var_s4 + var_a3_4) < 0x21U) != 0;
                    temp_t0->unk4050C = (s32) sp130->unk0;
                    temp_t0->unk4077C = (s32) spC8;
                    temp_t0->unk4077C = (s32) var_s4;
                    var_s4_4 = temp_t3_8;
                    temp_t0->unk4077C = 0x10;
                    do {
                        temp_v1_10 = *var_v0_15;
                        if (var_s1_5 != 0) {
                            var_v0_15 = &sp24;
                        }
                        temp_a3_13 = temp_v1_10 << var_a3_4;
                        temp_t8_4 = var_s5 != 0;
                        var_v0_16 = ((u32) var_v0_15->unk4 >> var_s2_3) | temp_a3_13;
                        if (var_s1_5 != 0) {
                            var_v0_16 = temp_a3_13;
                        }
                        temp_t3_9 = *var_s3_7 << var_s0_5;
                        if (temp_t8_4 != 0) {
                            var_s3_7 = &sp24;
                        }
                        var_v0_17 = ((u32) var_s3_7->unk4 >> (0x20 - var_s0_5)) | temp_t3_9;
                        if (temp_t8_4 != 0) {
                            var_v0_17 = temp_t3_9;
                        }
                        temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_16) | (var_v0_17 >> 0x10));
                        temp_s5_6 = var_t2_4 & 3;
                        temp_a3_14 = (temp_s5_6 * 8) + var_s3;
                        temp_s0_7 = ((u32) (var_s4 + temp_a3_14) < 0x21U) != 0;
                        temp_v1_11 = var_s4_4 & 3;
                        temp_t8_5 = (temp_v1_11 * 8) + var_s3;
                        temp_s3_2 = var_a1_4 + arg3;
                        temp_t3_10 = arg3 + temp_s3_2;
                        var_s4_5 = var_s4_4 - temp_v1_11;
                        var_v1_6 = var_t2_4 - temp_s5_6;
                        temp_v0_7 = *var_v1_6;
                        if (temp_s0_7 != 0) {
                            var_v1_6 = &sp24;
                        }
                        temp_a3_15 = temp_v0_7 << temp_a3_14;
                        temp_s1_8 = ((u32) (var_s4 + temp_t8_5) < 0x21U) != 0;
                        var_v0_18 = ((u32) var_v1_6->unk4 >> (0x20 - temp_a3_14)) | temp_a3_15;
                        if (temp_s0_7 != 0) {
                            var_v0_18 = temp_a3_15;
                        }
                        temp_t2_8 = *var_s4_5 << temp_t8_5;
                        if (temp_s1_8 != 0) {
                            var_s4_5 = &sp24;
                        }
                        var_v0_19 = ((u32) var_s4_5->unk4 >> (0x20 - temp_t8_5)) | temp_t2_8;
                        if (temp_s1_8 != 0) {
                            var_v0_19 = temp_t2_8;
                        }
                        temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_18) | (var_v0_19 >> 0x10));
                        temp_s5_7 = var_a1_4 & 3;
                        temp_s1_9 = (temp_s5_7 * 8) + var_s3;
                        temp_s2_4 = ((u32) (var_s4 + temp_s1_9) < 0x21U) != 0;
                        temp_v1_12 = temp_s3_2 & 3;
                        temp_s0_8 = (temp_v1_12 * 8) + var_s3;
                        temp_t8_6 = temp_t3_10 + arg3;
                        var_t2_4 = arg3 + temp_t8_6;
                        var_s3_8 = temp_s3_2 - temp_v1_12;
                        var_v1_7 = var_a1_4 - temp_s5_7;
                        temp_v0_8 = *var_v1_7;
                        if (temp_s2_4 != 0) {
                            var_v1_7 = &sp24;
                        }
                        temp_a1_11 = temp_v0_8 << temp_s1_9;
                        temp_s1_10 = ((u32) (var_s4 + temp_s0_8) < 0x21U) != 0;
                        var_v0_20 = ((u32) var_v1_7->unk4 >> (0x20 - temp_s1_9)) | temp_a1_11;
                        if (temp_s2_4 != 0) {
                            var_v0_20 = temp_a1_11;
                        }
                        temp_a3_16 = *var_s3_8 << temp_s0_8;
                        if (temp_s1_10 != 0) {
                            var_s3_8 = &sp24;
                        }
                        var_v0_21 = ((u32) var_s3_8->unk4 >> (0x20 - temp_s0_8)) | temp_a3_16;
                        if (temp_s1_10 != 0) {
                            var_v0_21 = temp_a3_16;
                        }
                        temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_20) | (var_v0_21 >> 0x10));
                        temp_s6_2 = temp_t3_10 & 3;
                        var_a3_4 = (temp_s6_2 * 8) + var_s3;
                        var_s2_3 = 0x20 - var_a3_4;
                        var_s1_5 = ((u32) (var_s4 + var_a3_4) < 0x21U) != 0;
                        temp_v1_13 = temp_t8_6 & 3;
                        var_s0_5 = (temp_v1_13 * 8) + var_s3;
                        var_s5 = (u32) (var_s4 + var_s0_5) < 0x21U;
                        var_s4_4 = var_t2_4 + arg3;
                        var_a1_4 = arg3 + var_s4_4;
                        var_s3_7 = temp_t8_6 - temp_v1_13;
                        var_t9_3 += 3;
                        var_v0_15 = temp_t3_10 - temp_s6_2;
                    } while (var_t9_3 != 8);
                    var_a6_2 = var_v0_15;
                    var_v0_22 = sp78;
                    temp_v1_14 = *var_a6_2;
                    if (var_s1_5 != 0) {
                        var_a6_2 = (s32 *) var_v0_22;
                    }
                    var_s4 = sp1A0;
                    var_a2_2 = var_s3_7;
                    var_s3 = sp1A8;
                    var_ra = var_a1_4;
                    temp_s5_8 = var_t2_4 & 3;
                    temp_s6_3 = (temp_s5_8 * 8) + var_s3;
                    temp_t8_7 = ((u32) (var_s4 + temp_s6_3) < 0x21U) != 0;
                    temp_s5_9 = var_t2_4 - temp_s5_8;
                    if (temp_t8_7 == 0) {
                        var_v0_22 = temp_s5_9;
                    }
                    var_v1_8 = temp_v1_14 << var_a3_4;
                    if (var_s1_5 == 0) {
                        var_v1_8 |= (u32) var_a6_2->unk4 >> var_s2_3;
                    }
                    temp_a0_2 = *var_a2_2;
                    var_t9_4 = sp70;
                    temp_a1_12 = var_s5 != 0;
                    if (temp_a1_12 != 0) {
                        var_a2_2 = (s32 *) var_t9_4;
                    }
                    var_a0_5 = temp_a0_2 << var_s0_5;
                    if (temp_a1_12 == 0) {
                        var_a0_5 |= (u32) var_a2_2->unk4 >> (0x20 - var_s0_5);
                    }
                    temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v1_8) | (var_a0_5 >> 0x10));
                    var_s5_2 = *temp_s5_9 << temp_s6_3;
                    if (temp_t8_7 == 0) {
                        var_s5_2 |= (u32) var_v0_22->unk4 >> (0x20 - temp_s6_3);
                    }
                    temp_v0_9 = var_s4_4 & 3;
                    temp_s0_9 = var_s4_4 - temp_v0_9;
                    temp_s6_4 = (temp_v0_9 * 8) + var_s3;
                    temp_t8_8 = ((u32) (var_s4 + temp_s6_4) < 0x21U) != 0;
                    if (temp_t8_8 == 0) {
                        var_t9_4 = temp_s0_9;
                    }
                    var_s0_6 = *temp_s0_9 << temp_s6_4;
                    if (temp_t8_8 == 0) {
                        var_s0_6 |= (u32) var_t9_4->unk4 >> (0x20 - temp_s6_4);
                    }
                    spC8 += 0x10;
                    temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_s5_2) | (var_s0_6 >> 0x10));
                    temp_t0->unk407A8 = 0;
                }
                temp_t9_6 = unkspB8 & 0xF;
                sp120 = temp_t9_6;
                if (temp_t9_6 != 0) {
                    temp_s6_5 = (sp120 >> 1) & 0xFF;
                    temp_t0->unk4050C = (s32) sp130->unk0;
                    temp_t0->unk4077C = (s32) spC8;
                    temp_t0->unk4077C = (s32) var_s4;
                    temp_t0->unk4077C = (s32) sp120;
                    if (temp_s6_5 > 0) {
                        var_a0_6 = 0;
                        sp88 = (s64) &sp24;
                        sp90 = (s64) &sp24;
                        if (temp_s6_5 >= 3) {
                            sp1A8 = var_s3;
                            sp1A0 = var_s4;
                            var_t3_2 = 2;
                            temp_t0_2 = var_ra + arg3;
                            temp_s0_10 = var_ra & 3;
                            var_v1_9 = var_ra - temp_s0_10;
                            var_s0_7 = (temp_s0_10 * 8) + var_s3;
                            var_s5_3 = 0x20 - var_s0_7;
                            temp_t1_3 = temp_t0_2 & 3;
                            temp_t1_4 = (temp_t1_3 * 8) + var_s3;
                            var_s4_6 = temp_t0_2 - temp_t1_3;
                            var_t0 = arg3 + temp_t0_2;
                            temp_t8_9 = var_t0 + arg3;
                            var_s7 = temp_t8_9;
                            var_s3_9 = temp_t1_4;
                            var_s2_4 = (u32) (var_s4 + temp_t1_4) < 0x21U;
                            var_s1_6 = ((u32) (var_s4 + var_s0_7) < 0x21U) != 0;
                            var_s6 = arg3 + temp_t8_9;
loop_157:
                            temp_v0_10 = *var_v1_9;
                            if (var_s1_6 != 0) {
                                var_v1_9 = (s32 *) sp90;
                            }
                            temp_t1_5 = temp_v0_10 << var_s0_7;
                            temp_s0_11 = var_s2_4 != 0;
                            var_v0_23 = ((u32) var_v1_9->unk4 >> var_s5_3) | temp_t1_5;
                            if (var_s1_6 != 0) {
                                var_v0_23 = temp_t1_5;
                            }
                            temp_t8_10 = *var_s4_6 << var_s3_9;
                            if (temp_s0_11 != 0) {
                                var_s4_6 = (s32 *) sp88;
                            }
                            var_v0_24 = ((u32) var_s4_6->unk4 >> (0x20 - var_s3_9)) | temp_t8_10;
                            if (temp_s0_11 != 0) {
                                var_v0_24 = temp_t8_10;
                            }
                            temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_23) | (var_v0_24 >> 0x10));
                            temp_v1_15 = var_t0 & 3;
                            var_s0_7 = (temp_v1_15 * 8) + var_s3;
                            temp_s5_10 = 0x20 - var_s0_7;
                            var_s1_6 = ((u32) (var_s4 + var_s0_7) < 0x21U) != 0;
                            temp_t8_11 = var_s7 & 3;
                            temp_s3_3 = (temp_t8_11 * 8) + var_s3;
                            var_s2_4 = (u32) (var_s4 + temp_s3_3) < 0x21U;
                            temp_gp = var_s6 + arg3;
                            var_t1 = arg3 + temp_gp;
                            var_s4_7 = var_s7 - temp_t8_11;
                            var_v1_10 = var_t0 - temp_v1_15;
                            if (var_t3_2 != (temp_s6_5 - 1)) {
                                temp_v0_11 = *var_v1_10;
                                if (var_s1_6 != 0) {
                                    var_v1_10 = (s32 *) sp90;
                                }
                                temp_t0_3 = temp_v0_11 << var_s0_7;
                                temp_s0_12 = var_s2_4 != 0;
                                var_v0_25 = ((u32) var_v1_10->unk4 >> temp_s5_10) | temp_t0_3;
                                if (var_s1_6 != 0) {
                                    var_v0_25 = temp_t0_3;
                                }
                                temp_t8_12 = *var_s4_7 << temp_s3_3;
                                if (temp_s0_12 != 0) {
                                    var_s4_7 = (s32 *) sp88;
                                }
                                var_v0_26 = ((u32) var_s4_7->unk4 >> (0x20 - temp_s3_3)) | temp_t8_12;
                                if (temp_s0_12 != 0) {
                                    var_v0_26 = temp_t8_12;
                                }
                                temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_25) | (var_v0_26 >> 0x10));
                                temp_s7 = var_s6 & 3;
                                var_s0_7 = (temp_s7 * 8) + var_s3;
                                temp_s5_11 = 0x20 - var_s0_7;
                                var_s1_6 = ((u32) (var_s4 + var_s0_7) < 0x21U) != 0;
                                temp_v1_16 = temp_gp & 3;
                                temp_s3_4 = (temp_v1_16 * 8) + var_s3;
                                var_s2_4 = (u32) (var_s4 + temp_s3_4) < 0x21U;
                                temp_t8_13 = var_t1 + arg3;
                                var_t0 = arg3 + temp_t8_13;
                                var_s4_8 = temp_gp - temp_v1_16;
                                var_v1_11 = var_s6 - temp_s7;
                                if (var_t3_2 != (temp_s6_5 - 2)) {
                                    temp_v0_12 = *var_v1_11;
                                    if (var_s1_6 != 0) {
                                        var_v1_11 = (s32 *) sp90;
                                    }
                                    temp_s0_13 = temp_v0_12 << var_s0_7;
                                    temp_s2_5 = var_s2_4 != 0;
                                    var_v0_27 = ((u32) var_v1_11->unk4 >> temp_s5_11) | temp_s0_13;
                                    if (var_s1_6 != 0) {
                                        var_v0_27 = temp_s0_13;
                                    }
                                    temp_s1_11 = *var_s4_8 << temp_s3_4;
                                    if (temp_s2_5 != 0) {
                                        var_s4_8 = (s32 *) sp88;
                                    }
                                    var_v0_28 = ((u32) var_s4_8->unk4 >> (0x20 - temp_s3_4)) | temp_s1_11;
                                    if (temp_s2_5 != 0) {
                                        var_v0_28 = temp_s1_11;
                                    }
                                    temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_v0_27) | (var_v0_28 >> 0x10));
                                    temp_gp_2 = var_t1 & 3;
                                    var_s0_7 = (temp_gp_2 * 8) + var_s3;
                                    var_s5_3 = 0x20 - var_s0_7;
                                    var_s1_6 = ((u32) (var_s4 + var_s0_7) < 0x21U) != 0;
                                    temp_v1_17 = temp_t8_13 & 3;
                                    var_s3_9 = (temp_v1_17 * 8) + var_s3;
                                    var_s2_4 = (u32) (var_s4 + var_s3_9) < 0x21U;
                                    var_s7 = var_t0 + arg3;
                                    var_s6 = arg3 + var_s7;
                                    var_s4_6 = temp_t8_13 - temp_v1_17;
                                    var_t3_2 += 3;
                                    var_v1_9 = var_t1 - temp_gp_2;
                                    if (var_t3_2 == temp_s6_5) {
                                        var_a2_3 = var_v1_9;
                                        var_t3_3 = var_s5_3;
                                        var_t1 = var_t0;
                                        var_t0_2 = var_s4_6;
                                        var_s4 = sp1A0;
                                        var_a5_4 = var_s3_9;
                                        goto block_185;
                                    }
                                    goto loop_157;
                                }
                                var_s7 = temp_t8_13;
                                var_a2_3 = var_v1_11;
                                var_t3_3 = temp_s5_11;
                                var_s6 = var_t0;
                                var_t0_2 = var_s4_8;
                                var_s4 = sp1A0;
                                var_a5_4 = temp_s3_4;
block_185:
                                var_s3 = sp1A8;
                            } else {
                                var_s7 = temp_gp;
                                var_a2_3 = var_v1_10;
                                var_t3_3 = temp_s5_10;
                                var_t0_2 = var_s4_7;
                                var_s4 = sp1A0;
                                var_a5_4 = temp_s3_3;
                                var_s3 = sp1A8;
                                temp_t9_7 = var_s6;
                                var_s6 = var_t1;
                                var_t1 = temp_t9_7;
                            }
                            temp_v0_13 = *var_t0_2;
                            var_gp_2 = sp88;
                            temp_a0_3 = var_s2_4 != 0;
                            if (temp_a0_3 != 0) {
                                var_t0_2 = (s32 *) var_gp_2;
                            }
                            var_t2_5 = sp90;
                            temp_t9_8 = *var_a2_3;
                            if (var_s1_6 != 0) {
                                var_a2_3 = (s32 *) var_t2_5;
                            }
                            var_t9_5 = temp_t9_8 << var_s0_7;
                            if (var_s1_6 == 0) {
                                var_t9_5 |= (u32) var_a2_3->unk4 >> var_t3_3;
                            }
                            var_v0_29 = temp_v0_13 << var_a5_4;
                            if (temp_a0_3 == 0) {
                                var_v0_29 |= (u32) var_t0_2->unk4 >> (0x20 - var_a5_4);
                            }
                            temp_a4_3 = var_t1 & 3;
                            temp_a4_4 = var_t1 - temp_a4_3;
                            temp_t8_14 = (temp_a4_3 * 8) + var_s3;
                            temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_t9_5) | (var_v0_29 >> 0x10));
                            temp_a6_2 = ((u32) (var_s4 + temp_t8_14) < 0x21U) != 0;
                            if (temp_a6_2 == 0) {
                                var_t2_5 = temp_a4_4;
                            }
                            var_a4_2 = *temp_a4_4 << temp_t8_14;
                            if (temp_a6_2 == 0) {
                                var_a4_2 |= (u32) var_t2_5->unk4 >> (0x20 - temp_t8_14);
                            }
                            temp_a0_4 = var_s7 & 3;
                            temp_a0_5 = var_s7 - temp_a0_4;
                            temp_v0_14 = (temp_a0_4 * 8) + var_s3;
                            temp_t9_9 = ((u32) (var_s4 + temp_v0_14) < 0x21U) != 0;
                            if (temp_t9_9 == 0) {
                                var_gp_2 = temp_a0_5;
                            }
                            var_a0_7 = *temp_a0_5 << temp_v0_14;
                            if (temp_t9_9 == 0) {
                                var_a0_7 |= (u32) var_gp_2->unk4 >> (0x20 - temp_v0_14);
                            }
                            var_ra = var_s6;
                            temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_a4_2) | (var_a0_7 >> 0x10));
                        } else {
                            do {
                                temp_t2_9 = var_ra & 3;
                                var_v1_12 = var_ra - temp_t2_9;
                                temp_ra_4 = var_ra + arg3;
                                temp_v0_15 = temp_ra_4 & 3;
                                var_v0_30 = temp_ra_4 - temp_v0_15;
                                temp_a4_5 = *var_v0_30;
                                temp_a5_2 = (temp_v0_15 * 8) + var_s3;
                                temp_t9_10 = ((u32) (var_s4 + temp_a5_2) < 0x21U) != 0;
                                if (temp_t9_10 != 0) {
                                    var_v0_30 = (s32 *) sp88;
                                }
                                var_a4_3 = temp_a4_5 << temp_a5_2;
                                if (temp_t9_10 == 0) {
                                    var_a4_3 |= (u32) var_v0_30->unk4 >> (0x20 - temp_a5_2);
                                }
                                temp_t2_10 = (temp_t2_9 * 8) + var_s3;
                                temp_a5_3 = *var_v1_12;
                                temp_v0_16 = ((u32) (var_s4 + temp_t2_10) < 0x21U) != 0;
                                if (temp_v0_16 != 0) {
                                    var_v1_12 = (s32 *) sp90;
                                }
                                var_a5_5 = temp_a5_3 << temp_t2_10;
                                if (temp_v0_16 == 0) {
                                    var_a5_5 |= (u32) var_v1_12->unk4 >> (0x20 - temp_t2_10);
                                }
                                var_a0_6 += 1;
                                var_ra = arg3 + temp_ra_4;
                                temp_t0->unk4077C = (s32) ((0xFFFF0000 & var_a5_5) | (var_a4_3 >> 0x10));
                            } while (var_a0_6 != temp_s6_5);
                        }
                    }
                    if (sp120 & 1) {
                        temp_a2_4 = var_ra & 3;
                        temp_a2_5 = var_ra - temp_a2_4;
                        temp_a1_13 = (temp_a2_4 * 8) + var_s3;
                        var_a0_8 = temp_a2_5->unk0 << temp_a1_13;
                        if ((u32) (var_s4 + temp_a1_13) >= 0x21U) {
                            var_a0_8 |= (u32) temp_a2_5->unk4 >> (0x20 - temp_a1_13);
                        }
                        temp_t0->unk4077C = (s32) (var_a0_8 & 0xFFFF0000);
                    }
                    temp_v0_17 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                    sp138 = temp_v0_17;
                    if (temp_v0_17 > 0) {
                        var_a1_5 = sp138 & 3;
                        var_a0_9 = 0;
                        if (var_a1_5 != 0) {
                            do {
                                var_a0_9 += 1;
                                var_a1_5 -= 1;
                                temp_t0->unk4077C = 0;
                            } while (var_a1_5 != 0);
                        }
                        temp_a1_14 = sp138 >> 2;
                        if (temp_a1_14 != 0) {
                            var_a0_10 = var_a0_9 + 4;
                            if (temp_a1_14 >= 2) {
                                temp_t0->unk4077C = 0;
                                temp_t0->unk4077C = 0;
loop_213:
                                temp_t0->unk4077C = 0;
                                temp_t0->unk4077C = 0;
                                temp_t0->unk4077C = 0;
                                temp_t0->unk4077C = 0;
                                if (var_a0_10 != (sp138 - 4)) {
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    if (var_a0_10 != (sp138 - 8)) {
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        if (var_a0_10 != (sp138 - 0xC)) {
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            var_a0_10 += 0x10;
                                            temp_t0->unk4077C = 0;
                                            if (var_a0_10 != sp138) {
                                                goto loop_213;
                                            }
                                        }
                                    }
                                }
                                temp_t0->unk4077C = 0;
                            } else {
                                temp_t0->unk4077C = 0;
                                temp_t0->unk4077C = 0;
                                temp_t0->unk4077C = 0;
                            }
                            temp_t0->unk4077C = 0;
                        }
                    }
                    goto block_219;
                }
            } else {
                var_a3_5 = sp98;
                if (var_ra & 3) {
                    var_v0_31 = var_ra | arg3;
                    goto block_446;
                }
                var_v0_31 = var_ra | arg3;
                if (arg3 == 2) {
                    if (unkspB8 >= 0x80) {
                        var_a7 = 0;
                        if (unkspB8 >= 0x40) {
                            var_a3_6 = sp98;
                            var_t0_3 = unkspB8;
                            var_a4_4 = var_ra;
                            spD0 = (s64) var_gp;
                            var_a6_3 = var_ra + 0x80;
                            do {
                                temp_a0_6 = var_a6_3 - 0x10;
                                var_a6_3 += 0x80;
                                var_v1_13 = var_a4_4;
                                var_t0_3 -= 0x40;
                                temp_t0->unk40514 = (s32) spD0;
                                temp_t0->unk4077C = (s32) var_a3_6;
                                temp_t0->unk4077C = (s32) var_s4;
                                temp_t0->unk4077C = 0x40;
                                var_a7 += 1;
                                var_v0_32 = *var_a4_4;
loop_616:
                                temp_t0->unk4077C = var_v0_32;
                                temp_t0->unk4077C = (s32) var_v1_13->unk4;
                                temp_t0->unk4077C = (s32) var_v1_13->unk8;
                                temp_v0_18 = var_v1_13->unkC;
                                var_v1_13 += 0x10;
                                temp_t0->unk4077C = temp_v0_18;
                                var_v0_32 = var_v1_13->unk0;
                                if (var_v1_13 != temp_a0_6) {
                                    goto loop_616;
                                }
                                temp_t0->unk4077C = var_v0_32;
                                temp_t0->unk4077C = (s32) var_v1_13->unk4;
                                var_a4_4 += 0x80;
                                temp_t0->unk4077C = (s32) var_v1_13->unk8;
                                var_a3_6 += 0x40;
                                temp_t0->unk4077C = (s32) var_v1_13->unkC;
                            } while (var_t0_3 >= 0x40);
                        } else {
                            spD0 = (s64) var_gp;
                            var_a7 = 0;
                        }
                        temp_t0->unk407A8 = 0;
                        var_ra += var_a7 << 7;
                        var_gp = (s16) spD0;
                        temp_a3_17 = var_a7 << 6;
                        var_a3_5 = temp_a3_17 + sp98;
                        unkspB8 -= temp_a3_17;
                    }
                    var_a4_5 = 0;
                    if (unkspB8 >= 0x10) {
                        var_a0_11 = var_a3_5;
                        var_a2_4 = unkspB8;
                        var_a1_6 = var_ra;
                        var_a6_4 = var_a1_6;
                        do {
                            temp_t0->unk40578 = (s32) var_gp;
                            temp_t0->unk4077C = (s32) var_a0_11;
                            temp_t0->unk4077C = (s32) var_s4;
                            temp_t0->unk4077C = 0x10;
                            temp_t0->unk4077C = (s32) var_a6_4->unk0;
                            temp_t0->unk4077C = (s32) var_a6_4->unk4;
                            temp_t0->unk4077C = (s32) var_a6_4->unk8;
                            temp_t0->unk4077C = (s32) var_a6_4->unkC;
                            temp_t0->unk4077C = (s32) var_a6_4->unk10;
                            temp_t0->unk4077C = (s32) var_a6_4->unk14;
                            var_a0_11 += 0x10;
                            temp_t0->unk4077C = (s32) var_a6_4->unk18;
                            var_a1_6 += 0x20;
                            var_a2_4 -= 0x10;
                            var_a4_5 += 1;
                            temp_t0->unk4077C = (s32) var_a6_4->unk1C;
                            var_a6_4 = var_a1_6;
                        } while (var_a2_4 >= 0x10);
                    } else {
                        var_a4_5 = 0;
                    }
                    var_ra_4 = (var_a4_5 << 5) + var_ra;
                    temp_a0_7 = var_a4_5 * 0x10;
                    temp_a2_6 = unkspB8 - temp_a0_7;
                    temp_a0_8 = temp_a0_7 + var_a3_5;
                    var_a5_6 = temp_a2_6;
                    var_a6_5 = temp_a0_8;
                    if (temp_a2_6 >= 8) {
                        temp_t0->unk40574 = (s32) var_gp;
                        temp_t0->unk4077C = temp_a0_8;
                        temp_t0->unk4077C = (s32) var_s4;
                        temp_t0->unk4077C = 8;
                        temp_t0->unk4077C = (s32) var_ra_4->unk0;
                        temp_t0->unk4077C = (s32) var_ra_4->unk4;
                        temp_t0->unk4077C = (s32) var_ra_4->unk8;
                        var_a5_6 = temp_a2_6 - 8;
                        temp_t2_11 = var_ra_4->unkC;
                        var_a6_5 = temp_a0_8 + 8;
                        var_ra_4 += 0x10;
                        temp_t0->unk4077C = temp_t2_11;
                    }
                    var_a2_5 = 1;
                    if (var_a5_6 != 0) {
                        temp_a3_18 = (s32) (var_a5_6 + 1) >> 1;
                        if (temp_a3_18 >= 1) {
                            var_a2_5 = temp_a3_18;
                        }
                        temp_t0->unk40574 = (s32) var_gp;
                        var_a0_12 = temp_a3_18;
                        temp_t0->unk4077C = var_a6_5;
                        temp_t0->unk4077C = (s32) var_s4;
                        var_a1_7 = var_a2_5 & 3;
                        temp_t0->unk4077C = var_a5_6;
                        if (var_a1_7 != 0) {
                            do {
                                var_a0_12 -= 1;
                                var_ra_4 += 4;
                                var_a1_7 -= 1;
                                temp_t0->unk4077C = (s32) var_ra_4->unk-4;
                            } while (var_a1_7 != 0);
                        }
                        temp_a1_15 = var_a2_5 >> 2;
                        if (temp_a1_15 != 0) {
                            if (temp_a1_15 >= 2) {
                                var_a0_13 = var_a0_12 - 4;
                                var_v0_33 = var_ra_4->unk0;
                                var_v1_14 = var_ra_4;
                                do {
                                    temp_t0->unk4077C = var_v0_33;
                                    temp_t0->unk4077C = (s32) var_v1_14->unk4;
                                    temp_t0->unk4077C = (s32) var_v1_14->unk8;
                                    temp_v0_19 = var_v1_14->unkC;
                                    var_a0_13 -= 4;
                                    var_v1_14 += 0x10;
                                    temp_t0->unk4077C = temp_v0_19;
                                    var_v0_33 = var_v1_14->unk0;
                                } while (var_a0_13 != 0);
                                temp_t0->unk4077C = var_v0_33;
                                temp_t0->unk4077C = (s32) var_v1_14->unk4;
                                temp_t0->unk4077C = (s32) var_v1_14->unk8;
                                temp_t0->unk4077C = (s32) var_v1_14->unkC;
                            } else {
                                temp_t0->unk4077C = (s32) var_ra_4->unk0;
                                temp_t0->unk4077C = (s32) var_ra_4->unk4;
                                temp_t0->unk4077C = (s32) var_ra_4->unk8;
                                temp_t0->unk4077C = (s32) var_ra_4->unkC;
                            }
                        }
                        var_a0_14 = 0;
                        if (temp_a3_18 < 4) {
                            temp_a2_7 = 4 - temp_a3_18;
                            var_a1_8 = temp_a2_7 & 3;
                            if (var_a1_8 != 0) {
                                do {
                                    var_a0_14 += 1;
                                    var_a1_8 -= 1;
                                    temp_t0->unk4077C = 0;
                                } while (var_a1_8 != 0);
                            }
                            temp_a1_16 = temp_a2_7 >> 2;
                            if (temp_a1_16 != 0) {
                                if (temp_a1_16 >= 2) {
                                    var_a0_15 = var_a0_14 + 4;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
loop_640:
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    if (var_a0_15 != (temp_a2_7 - 4)) {
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        if (var_a0_15 != (temp_a2_7 - 8)) {
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            if (var_a0_15 != (temp_a2_7 - 0xC)) {
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                var_a0_15 += 0x10;
                                                temp_t0->unk4077C = 0;
                                                if (var_a0_15 != temp_a2_7) {
                                                    goto loop_640;
                                                }
                                            }
                                        }
                                    }
                                    temp_t0->unk4077C = 0;
                                } else {
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                }
                                temp_t0->unk4077C = 0;
                            }
                        }
                    }
                } else {
block_446:
                    if (var_v0_31 & 1) {
                        var_t8_2 = sp130->unk2;
                        temp_v1_18 = (unkspB8 >> 6) & 0xFF;
                        sp140 = temp_v1_18;
                        if (temp_v1_18 != 0) {
                            var_t1_2 = var_t8_2;
                            if (sp140 > 0) {
                                do {
                                    var_v1_15 = 0;
                                    temp_t0->unk40514 = (s32) sp130->unk0;
                                    temp_t0->unk4077C = (s32) var_t1_2;
                                    temp_t0->unk4077C = (s32) var_s4;
                                    temp_t0->unk4077C = 0x40;
                                    var_a3_7 = var_ra + arg3;
                                    var_a1_9 = arg3 + var_a3_7;
                                    var_a0_16 = var_ra->unk1;
                                    var_v0_34 = var_ra->unk0 << 8;
loop_452:
                                    sp4 = var_a0_16 | var_v0_34;
                                    sp6 = var_a3_7->unk1 | (var_a3_7->unk0 << 8);
                                    var_v1_15 += 2;
                                    temp_a3_19 = var_a1_9 + arg3;
                                    temp_t0->unk4077C = (s32) sp4;
                                    temp_a0_9 = arg3 + temp_a3_19;
                                    temp_a1_17 = var_a1_9->unk1;
                                    temp_v0_20 = var_a1_9->unk0 << 8;
                                    if (var_v1_15 != 0x20) {
                                        sp4 = temp_a1_17 | temp_v0_20;
                                        sp6 = temp_a3_19->unk1 | (temp_a3_19->unk0 << 8);
                                        var_a3_7 = temp_a0_9 + arg3;
                                        temp_t0->unk4077C = (s32) sp4;
                                        var_a1_9 = arg3 + var_a3_7;
                                        var_a0_16 = temp_a0_9->unk1;
                                        var_v0_34 = temp_a0_9->unk0 << 8;
                                        goto loop_452;
                                    }
                                    var_t1_2 += 0x40;
                                    sp4 = temp_a1_17 | temp_v0_20;
                                    sp6 = temp_a3_19->unk1 | (temp_a3_19->unk0 << 8);
                                    temp_t0->unk4077C = (s32) sp4;
                                    var_ra = (s64) temp_a0_9;
                                } while (var_t1_2 != ((sp140 << 6) + var_t8_2));
                                var_a0_17 = sp140;
                            } else {
                                var_a0_17 = 0;
                            }
                            temp_t0->unk407A8 = 0;
                            var_t8_2 += var_a0_17 << 6;
                        }
                        var_v1_16 = 0;
                        if (unkspB8 & 0x20 & 0xFF) {
                            var_a3_8 = var_ra + arg3;
                            var_a1_10 = arg3 + var_a3_8;
                            temp_t0->unk40510 = (s32) sp130->unk0;
                            temp_t0->unk4077C = (s32) var_t8_2;
                            temp_t0->unk4077C = (s32) var_s4;
                            temp_t0->unk4077C = 0x20;
                            var_v0_35 = var_ra->unk0;
                            var_a0_18 = var_ra->unk1;
loop_459:
                            sp4 = var_a0_18 | (var_v0_35 << 8);
                            sp6 = var_a3_8->unk1 | (var_a3_8->unk0 << 8);
                            var_v1_16 += 2;
                            temp_a3_20 = var_a1_10 + arg3;
                            temp_t0->unk4077C = (s32) sp4;
                            temp_a0_10 = arg3 + temp_a3_20;
                            temp_a1_18 = var_a1_10->unk1;
                            temp_v0_21 = var_a1_10->unk0 << 8;
                            if (var_v1_16 != 0x10) {
                                sp4 = temp_a1_18 | temp_v0_21;
                                sp6 = temp_a3_20->unk1 | (temp_a3_20->unk0 << 8);
                                var_a3_8 = temp_a0_10 + arg3;
                                temp_t0->unk4077C = (s32) sp4;
                                var_a1_10 = arg3 + var_a3_8;
                                var_v0_35 = temp_a0_10->unk0;
                                var_a0_18 = temp_a0_10->unk1;
                                goto loop_459;
                            }
                            sp4 = temp_a1_18 | temp_v0_21;
                            sp6 = temp_a3_20->unk1 | (temp_a3_20->unk0 << 8);
                            var_ra = (s64) temp_a0_10;
                            var_t8_2 += 0x20;
                            temp_t0->unk4077C = (s32) sp4;
                            temp_t0->unk407A8 = 0;
                        }
                        var_v1_17 = 0;
                        if (unkspB8 & 0x10 & 0xFF) {
                            var_a3_9 = var_ra + arg3;
                            var_a1_11 = arg3 + var_a3_9;
                            temp_t0->unk4050C = (s32) sp130->unk0;
                            temp_t0->unk4077C = (s32) var_t8_2;
                            temp_t0->unk4077C = (s32) var_s4;
                            temp_t0->unk4077C = 0x10;
                            var_v0_36 = var_ra->unk0;
                            var_a0_19 = var_ra->unk1;
loop_464:
                            sp4 = var_a0_19 | (var_v0_36 << 8);
                            sp6 = var_a3_9->unk1 | (var_a3_9->unk0 << 8);
                            var_v1_17 += 2;
                            temp_a3_21 = var_a1_11 + arg3;
                            temp_t0->unk4077C = (s32) sp4;
                            temp_a0_11 = arg3 + temp_a3_21;
                            temp_a1_19 = var_a1_11->unk1;
                            temp_v0_22 = var_a1_11->unk0 << 8;
                            if (var_v1_17 != 8) {
                                sp4 = temp_a1_19 | temp_v0_22;
                                sp6 = temp_a3_21->unk1 | (temp_a3_21->unk0 << 8);
                                var_a3_9 = temp_a0_11 + arg3;
                                temp_t0->unk4077C = (s32) sp4;
                                var_a1_11 = arg3 + var_a3_9;
                                var_v0_36 = temp_a0_11->unk0;
                                var_a0_19 = temp_a0_11->unk1;
                                goto loop_464;
                            }
                            sp4 = temp_a1_19 | temp_v0_22;
                            sp6 = temp_a3_21->unk1 | (temp_a3_21->unk0 << 8);
                            var_ra = (s64) temp_a0_11;
                            var_t8_2 += 0x10;
                            temp_t0->unk4077C = (s32) sp4;
                            temp_t0->unk407A8 = 0;
                        }
                        temp_t2_12 = unkspB8 & 0xF;
                        sp120 = temp_t2_12;
                        if (temp_t2_12 != 0) {
                            temp_s6_6 = (sp120 >> 1) & 0xFF;
                            temp_t0->unk4050C = (s32) sp130->unk0;
                            temp_t0->unk4077C = (s32) var_t8_2;
                            temp_t0->unk4077C = (s32) var_s4;
                            temp_t0->unk4077C = (s32) sp120;
                            if (temp_s6_6 > 0) {
                                var_a6_6 = 0;
                                if (temp_s6_6 >= 2) {
                                    var_v1_18 = var_ra->unk1;
                                    var_a4_6 = var_ra + arg3;
                                    var_a3_10 = arg3 + var_a4_6;
                                    var_v0_37 = var_ra->unk0 << 8;
loop_470:
                                    sp4 = var_v1_18 | var_v0_37;
                                    sp6 = var_a4_6->unk1 | (var_a4_6->unk0 << 8);
                                    var_a6_6 += 2;
                                    var_a4_6 = var_a3_10 + arg3;
                                    temp_t0->unk4077C = (s32) sp4;
                                    temp_a1_20 = arg3 + var_a4_6;
                                    temp_v1_19 = var_a3_10->unk1;
                                    temp_v0_23 = var_a3_10->unk0 << 8;
                                    if (var_a6_6 != temp_s6_6) {
                                        sp4 = temp_v1_19 | temp_v0_23;
                                        sp6 = var_a4_6->unk1 | (var_a4_6->unk0 << 8);
                                        var_a4_6 = temp_a1_20 + arg3;
                                        temp_t0->unk4077C = (s32) sp4;
                                        var_a3_10 = arg3 + var_a4_6;
                                        var_v1_18 = temp_a1_20->unk1;
                                        var_v0_37 = temp_a1_20->unk0 << 8;
                                        if (var_a6_6 == (temp_s6_6 - 1)) {
                                            var_a7_2 = var_v0_37;
                                            var_a5_7 = var_v1_18;
                                        } else {
                                            goto loop_470;
                                        }
                                    } else {
                                        var_a3_10 = temp_a1_20;
                                        var_a7_2 = temp_v0_23;
                                        var_a5_7 = temp_v1_19;
                                    }
                                    sp4 = var_a5_7 | var_a7_2;
                                    sp6 = var_a4_6->unk1 | (var_a4_6->unk0 << 8);
                                    var_ra = (s64) var_a3_10;
                                    temp_t0->unk4077C = (s32) sp4;
                                } else {
                                    temp_ra_5 = var_ra + arg3;
                                    sp4 = var_ra->unk1 | (var_ra->unk0 << 8);
                                    sp6 = temp_ra_5->unk1 | (temp_ra_5->unk0 << 8);
                                    var_ra = (s64) (arg3 + temp_ra_5);
                                    temp_t0->unk4077C = (s32) sp4;
                                }
                            }
                            if (sp120 & 1) {
                                sp4 = var_ra->unk1 | (var_ra->unk0 << 8);
                                sp6 = 0;
                                temp_t0->unk4077C = (s32) sp4;
                            }
                            temp_v0_24 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                            sp138 = temp_v0_24;
                            if (temp_v0_24 > 0) {
                                var_a1_12 = sp138 & 3;
                                var_a0_20 = 0;
                                if (var_a1_12 != 0) {
                                    do {
                                        var_a0_20 += 1;
                                        var_a1_12 -= 1;
                                        temp_t0->unk4077C = 0;
                                    } while (var_a1_12 != 0);
                                }
                                temp_a1_21 = sp138 >> 2;
                                if (temp_a1_21 != 0) {
                                    var_a0_21 = var_a0_20 + 4;
                                    if (temp_a1_21 >= 2) {
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
loop_482:
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        if (var_a0_21 != (sp138 - 4)) {
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            if (var_a0_21 != (sp138 - 8)) {
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                if (var_a0_21 != (sp138 - 0xC)) {
                                                    temp_t0->unk4077C = 0;
                                                    temp_t0->unk4077C = 0;
                                                    temp_t0->unk4077C = 0;
                                                    var_a0_21 += 0x10;
                                                    temp_t0->unk4077C = 0;
                                                    if (var_a0_21 != sp138) {
                                                        goto loop_482;
                                                    }
                                                }
                                            }
                                        }
                                        temp_t0->unk4077C = 0;
                                    } else {
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                    }
                                    temp_t0->unk4077C = 0;
                                }
                            }
                            goto block_219;
                        }
                    } else {
                        if (unkspB8 >= 0x80) {
                            var_t8_3 = 0;
                            if (unkspB8 >= 0x40) {
                                var_t3_4 = sp98;
                                var_s0_8 = unkspB8;
                                spD0 = (s64) var_gp;
                                do {
                                    var_a0_22 = 0;
                                    var_s0_8 -= 0x40;
                                    var_t8_3 += 1;
                                    var_a7_3 = var_ra + arg3;
                                    var_a4_7 = arg3 + var_a7_3;
                                    var_a3_11 = var_a4_7 + arg3;
                                    var_a1_13 = arg3 + var_a3_11;
                                    temp_t0->unk40514 = (s32) spD0;
                                    temp_t0->unk4077C = (s32) var_t3_4;
                                    temp_t0->unk4077C = (s32) var_s4;
                                    temp_t0->unk4077C = 0x40;
                                    var_v1_19 = *var_ra;
loop_653:
                                    sp0 = var_v1_19;
                                    sp2 = *var_a7_3;
                                    temp_t0->unk4077C = (s32) sp0;
                                    var_a0_22 += 4;
                                    temp_a7 = var_a1_13 + arg3;
                                    sp2 = *var_a3_11;
                                    sp0 = *var_a4_7;
                                    temp_a3_22 = arg3 + temp_a7;
                                    temp_a4_6 = temp_a3_22 + arg3;
                                    temp_v1_20 = arg3 + temp_a4_6;
                                    temp_t0->unk4077C = (s32) sp0;
                                    temp_v0_25 = *var_a1_13;
                                    if (var_a0_22 != 0x20) {
                                        sp0 = temp_v0_25;
                                        sp2 = *temp_a7;
                                        temp_t0->unk4077C = (s32) sp0;
                                        var_a7_3 = temp_v1_20 + arg3;
                                        sp2 = *temp_a4_6;
                                        sp0 = *temp_a3_22;
                                        var_a4_7 = arg3 + var_a7_3;
                                        var_a3_11 = var_a4_7 + arg3;
                                        var_a1_13 = arg3 + var_a3_11;
                                        temp_t0->unk4077C = (s32) sp0;
                                        var_v1_19 = *temp_v1_20;
                                        goto loop_653;
                                    }
                                    sp0 = temp_v0_25;
                                    sp2 = *temp_a7;
                                    temp_t0->unk4077C = (s32) sp0;
                                    var_t3_4 += 0x40;
                                    sp0 = *temp_a3_22;
                                    sp2 = *temp_a4_6;
                                    var_ra = (s64) temp_v1_20;
                                    temp_t0->unk4077C = (s32) sp0;
                                } while (var_s0_8 >= 0x40);
                            } else {
                                spD0 = (s64) var_gp;
                                var_t8_3 = 0;
                            }
                            temp_t0->unk407A8 = 0;
                            var_gp = (s16) spD0;
                            temp_a3_23 = var_t8_3 << 6;
                            var_a3_5 = temp_a3_23 + sp98;
                            unkspB8 -= temp_a3_23;
                        }
                        var_a2_6 = 0;
                        if (unkspB8 >= 0x10) {
                            var_a0_23 = var_a3_5;
                            var_a1_14 = unkspB8;
                            do {
                                temp_t0->unk40578 = (s32) var_gp;
                                temp_t0->unk4077C = (s32) var_a0_23;
                                temp_t0->unk4077C = (s32) var_s4;
                                temp_t0->unk4077C = 0x10;
                                temp_ra_6 = var_ra + arg3;
                                sp0 = *var_ra;
                                sp2 = *temp_ra_6;
                                temp_t0->unk4077C = (s32) sp0;
                                temp_ra_7 = arg3 + temp_ra_6;
                                temp_ra_8 = temp_ra_7 + arg3;
                                sp0 = *temp_ra_7;
                                sp2 = *temp_ra_8;
                                temp_t0->unk4077C = (s32) sp0;
                                temp_ra_9 = arg3 + temp_ra_8;
                                temp_ra_10 = temp_ra_9 + arg3;
                                sp0 = *temp_ra_9;
                                sp2 = *temp_ra_10;
                                temp_t0->unk4077C = (s32) sp0;
                                temp_ra_11 = arg3 + temp_ra_10;
                                temp_ra_12 = temp_ra_11 + arg3;
                                sp0 = *temp_ra_11;
                                sp2 = *temp_ra_12;
                                temp_t0->unk4077C = (s32) sp0;
                                temp_ra_13 = arg3 + temp_ra_12;
                                temp_ra_14 = temp_ra_13 + arg3;
                                sp0 = *temp_ra_13;
                                sp2 = *temp_ra_14;
                                temp_t0->unk4077C = (s32) sp0;
                                temp_ra_15 = arg3 + temp_ra_14;
                                temp_ra_16 = temp_ra_15 + arg3;
                                sp0 = *temp_ra_15;
                                sp2 = *temp_ra_16;
                                temp_t0->unk4077C = (s32) sp0;
                                temp_ra_17 = arg3 + temp_ra_16;
                                temp_ra_18 = temp_ra_17 + arg3;
                                sp0 = *temp_ra_17;
                                sp2 = *temp_ra_18;
                                var_a0_23 += 0x10;
                                temp_t0->unk4077C = (s32) sp0;
                                temp_ra_19 = arg3 + temp_ra_18;
                                temp_ra_20 = temp_ra_19 + arg3;
                                var_a2_6 += 1;
                                sp0 = *temp_ra_19;
                                sp2 = *temp_ra_20;
                                var_a1_14 -= 0x10;
                                var_ra = (s64) (arg3 + temp_ra_20);
                                temp_t0->unk4077C = (s32) sp0;
                            } while (var_a1_14 >= 0x10);
                        } else {
                            var_a2_6 = 0;
                        }
                        temp_a0_12 = var_a2_6 * 0x10;
                        temp_a1_22 = unkspB8 - temp_a0_12;
                        temp_a0_13 = temp_a0_12 + var_a3_5;
                        var_a4_8 = temp_a1_22;
                        var_a5_8 = temp_a0_13;
                        if (temp_a1_22 >= 8) {
                            temp_t0->unk40574 = (s32) var_gp;
                            temp_t0->unk4077C = temp_a0_13;
                            temp_t0->unk4077C = (s32) var_s4;
                            temp_t0->unk4077C = 8;
                            temp_ra_21 = var_ra + arg3;
                            sp0 = *var_ra;
                            sp2 = *temp_ra_21;
                            temp_t0->unk4077C = (s32) sp0;
                            temp_ra_22 = arg3 + temp_ra_21;
                            temp_ra_23 = temp_ra_22 + arg3;
                            sp0 = *temp_ra_22;
                            sp2 = *temp_ra_23;
                            temp_t0->unk4077C = (s32) sp0;
                            temp_ra_24 = arg3 + temp_ra_23;
                            temp_ra_25 = temp_ra_24 + arg3;
                            sp0 = *temp_ra_24;
                            sp2 = *temp_ra_25;
                            temp_t0->unk4077C = (s32) sp0;
                            temp_ra_26 = arg3 + temp_ra_25;
                            temp_ra_27 = temp_ra_26 + arg3;
                            sp0 = *temp_ra_26;
                            sp2 = *temp_ra_27;
                            var_ra = (s64) (arg3 + temp_ra_27);
                            temp_t0->unk4077C = (s32) sp0;
                            var_a4_8 = temp_a1_22 - 8;
                            var_a5_8 = temp_a0_13 + 8;
                        }
                        var_a1_15 = 1;
                        if (var_a4_8 != 0) {
                            temp_t1_6 = (s32) (var_a4_8 + 1) >> 1;
                            if (temp_t1_6 >= 1) {
                                var_a1_15 = temp_t1_6;
                            }
                            temp_t0->unk40574 = (s32) var_gp;
                            var_a0_24 = temp_t1_6;
                            temp_t0->unk4077C = var_a5_8;
                            temp_t0->unk4077C = (s32) var_s4;
                            temp_t0->unk4077C = var_a4_8;
                            if (var_a1_15 & 1) {
                                temp_ra_28 = arg3 + var_ra;
                                var_a0_24 -= 1;
                                sp0 = *var_ra;
                                sp2 = *temp_ra_28;
                                var_ra = (s64) (arg3 + temp_ra_28);
                                temp_t0->unk4077C = (s32) sp0;
                            }
                            temp_a3_24 = var_a1_15 >> 1;
                            if (temp_a3_24 != 0) {
                                if (temp_a3_24 >= 2) {
                                    var_v1_20 = *var_ra;
                                    var_a6_7 = arg3 + var_ra;
                                    var_a7_4 = var_a0_24;
                                    var_a3_12 = arg3 + var_a6_7;
                                    var_a1_16 = arg3 + var_a3_12;
                                    var_a4_9 = arg3 + var_a1_16;
loop_669:
                                    sp0 = var_v1_20;
                                    sp2 = *var_a6_7;
                                    temp_t0->unk4077C = (s32) sp0;
                                    var_a7_4 -= 4;
                                    var_a6_7 = arg3 + var_a4_9;
                                    sp2 = *var_a1_16;
                                    sp0 = *var_a3_12;
                                    var_a3_12 = arg3 + var_a6_7;
                                    var_a1_16 = arg3 + var_a3_12;
                                    temp_a0_14 = arg3 + var_a1_16;
                                    temp_t0->unk4077C = (s32) sp0;
                                    temp_v1_21 = *var_a4_9;
                                    if (var_a7_4 != 0) {
                                        sp0 = temp_v1_21;
                                        sp2 = *var_a6_7;
                                        temp_t0->unk4077C = (s32) sp0;
                                        var_a6_7 = arg3 + temp_a0_14;
                                        sp2 = *var_a1_16;
                                        sp0 = *var_a3_12;
                                        var_a3_12 = arg3 + var_a6_7;
                                        var_a1_16 = arg3 + var_a3_12;
                                        var_a4_9 = arg3 + var_a1_16;
                                        temp_t0->unk4077C = (s32) sp0;
                                        var_v1_20 = *temp_a0_14;
                                        if (var_a7_4 == 2) {
                                            var_a2_7 = var_v1_20;
                                        } else {
                                            goto loop_669;
                                        }
                                    } else {
                                        var_a2_7 = temp_v1_21;
                                    }
                                    sp0 = var_a2_7;
                                    sp2 = *var_a6_7;
                                    temp_t0->unk4077C = (s32) sp0;
                                    sp2 = *var_a1_16;
                                    sp0 = *var_a3_12;
                                    temp_t0->unk4077C = (s32) sp0;
                                } else {
                                    temp_t9_11 = arg3 + var_ra;
                                    sp0 = *var_ra;
                                    sp2 = *temp_t9_11;
                                    temp_t0->unk4077C = (s32) sp0;
                                    temp_t9_12 = arg3 + temp_t9_11;
                                    sp0 = *temp_t9_12;
                                    sp2 = *(arg3 + temp_t9_12);
                                    temp_t0->unk4077C = (s32) sp0;
                                }
                            }
                            var_a0_25 = 0;
                            if (temp_t1_6 < 4) {
                                temp_a2_8 = 4 - temp_t1_6;
                                var_a1_17 = temp_a2_8 & 3;
                                if (var_a1_17 != 0) {
                                    do {
                                        var_a0_25 += 1;
                                        var_a1_17 -= 1;
                                        temp_t0->unk4077C = 0;
                                    } while (var_a1_17 != 0);
                                }
                                temp_a4_7 = temp_a2_8 >> 2;
                                if (temp_a4_7 != 0) {
                                    if (temp_a4_7 >= 2) {
                                        var_a0_26 = var_a0_25 + 4;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
loop_679:
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        if (var_a0_26 != (temp_a2_8 - 4)) {
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            if (var_a0_26 != (temp_a2_8 - 8)) {
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                if (var_a0_26 != (temp_a2_8 - 0xC)) {
                                                    temp_t0->unk4077C = 0;
                                                    temp_t0->unk4077C = 0;
                                                    temp_t0->unk4077C = 0;
                                                    var_a0_26 += 0x10;
                                                    temp_t0->unk4077C = 0;
                                                    if (var_a0_26 != temp_a2_8) {
                                                        goto loop_679;
                                                    }
                                                }
                                            }
                                        }
                                        temp_t0->unk4077C = 0;
                                    } else {
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                    }
                                    temp_t0->unk4077C = 0;
                                }
                            }
                        }
                    }
                }
            }
        } else if (var_s4 < 0x21) {
            temp_v1_22 = var_s3 >> 3;
            if (var_s3 >= 8U) {
                var_s3 &= 7;
                var_ra += temp_v1_22;
            }
            if (var_s3 != 0) {
                var_s6_2 = 0;
                if (unkspB8 >= 0x10) {
                    var_s0_9 = sp98;
                    var_s5_4 = unkspB8;
                    sp158 = var_ra;
                    spE8 = arg3 * 0x10;
                    var_s1_7 = sp158;
                    do {
                        var_v0_38 = 0;
                        var_a3_13 = var_s1_7;
                        var_s6_2 += 1;
                        var_s5_4 -= 0x10;
                        temp_t0->unk4057C = (s32) var_gp;
                        temp_t0->unk4077C = (s32) var_s0_9;
                        temp_t0->unk4077C = (s32) var_s4;
                        temp_t0->unk4077C = 0x10;
                        temp_a7_2 = var_s1_7 & 3;
                        var_v1_21 = var_s1_7 - temp_a7_2;
                        var_a7_5 = (temp_a7_2 * 8) + var_s3;
                        var_t1_3 = ((u32) (var_s4 + var_a7_5) < 0x21U) != 0;
loop_229:
                        temp_a1_23 = *var_v1_21;
                        if (var_t1_3 != 0) {
                            var_v1_21 = &sp24;
                        }
                        temp_t0_4 = temp_a1_23 << var_a7_5;
                        var_a3_13 += arg3;
                        var_v1_22 = ((u32) var_v1_21->unk4 >> (0x20 - var_a7_5)) | temp_t0_4;
                        if (var_t1_3 != 0) {
                            var_v1_22 = temp_t0_4;
                        }
                        temp_t0->unk4077C = var_v1_22;
                        temp_a1_24 = var_a3_13 & 3;
                        var_a7_5 = (temp_a1_24 * 8) + var_s3;
                        var_t1_3 = ((u32) (var_s4 + var_a7_5) < 0x21U) != 0;
                        var_v0_38 += 1;
                        var_v1_21 = var_a3_13 - temp_a1_24;
                        if (var_v0_38 != 0x10) {
                            goto loop_229;
                        }
                        var_s0_9 += 0x10;
                        var_s1_7 += spE8;
                    } while (var_s5_4 >= 0x10);
                } else {
                    sp158 = var_ra;
                    var_s6_2 = 0;
                }
                temp_a0_15 = var_s6_2 * 0x10;
                temp_s5_12 = unkspB8 - temp_a0_15;
                if (temp_s5_12 != 0) {
                    temp_t0->unk4057C = (s32) var_gp;
                    temp_t0->unk4077C = (s32) (temp_a0_15 + sp98);
                    temp_t0->unk4077C = (s32) var_s4;
                    temp_t0->unk4077C = temp_s5_12;
                    if (temp_s5_12 > 0) {
                        var_v0_39 = 0;
                        var_a4_10 = (var_s6_2 * arg3 * 0x10) + sp158;
                        temp_a7_3 = var_a4_10 & 3;
                        var_v1_23 = var_a4_10 - temp_a7_3;
                        var_a7_6 = (temp_a7_3 * 8) + var_s3;
                        var_t1_4 = ((u32) (var_s4 + var_a7_6) < 0x21U) != 0;
                        do {
                            temp_a1_25 = *var_v1_23;
                            if (var_t1_4 != 0) {
                                var_v1_23 = &sp24;
                            }
                            temp_t0_5 = temp_a1_25 << var_a7_6;
                            var_a4_10 += arg3;
                            var_v1_24 = ((u32) var_v1_23->unk4 >> (0x20 - var_a7_6)) | temp_t0_5;
                            if (var_t1_4 != 0) {
                                var_v1_24 = temp_t0_5;
                            }
                            temp_t0->unk4077C = var_v1_24;
                            temp_a1_26 = var_a4_10 & 3;
                            var_a7_6 = (temp_a1_26 * 8) + var_s3;
                            var_t1_4 = ((u32) (var_s4 + var_a7_6) < 0x21U) != 0;
                            var_v0_39 += 1;
                            var_v1_23 = var_a4_10 - temp_a1_26;
                        } while (var_v0_39 != temp_s5_12);
                    }
                    if (temp_s5_12 < 0x10) {
                        var_a0_27 = temp_s5_12;
                        do {
                            var_a0_27 += 1;
                            temp_t0->unk4077C = 0;
                        } while (var_a0_27 < 0x10);
                    }
                }
            } else {
                temp_a0_16 = arg3 | var_ra;
                sp58 = sp98;
                if (temp_a0_16 & 3) {
                    if (temp_a0_16 & 1) {
                        var_t0_4 = 0;
                        if (unkspB8 >= 0x10) {
                            var_a5_9 = sp98;
                            var_a7_7 = unkspB8;
                            var_a6_8 = var_ra;
loop_582:
                            var_a3_14 = 0;
                            var_a2_8 = var_a6_8;
                            var_a6_8 += arg3 * 0x10;
                            var_a7_7 -= 0x10;
                            var_t0_4 += 1;
                            temp_t0->unk4057C = (s32) var_gp;
                            temp_t0->unk4077C = (s32) var_a5_9;
                            temp_t0->unk4077C = (s32) var_s4;
                            temp_t0->unk4077C = 0x10;
loop_585:
                            temp_t9_13 = -4 & var_a2_8;
                            temp_a0_17 = var_a2_8 & 3;
                            var_a3_14 += 2;
                            if (temp_a0_17 != 0) {
                                temp_v0_26 = temp_a0_17 * 8;
                                var_t2_6 = (temp_t9_13->unk0 << temp_v0_26) | ((u32) temp_t9_13->unk4 >> (0x20 - temp_v0_26));
                            } else {
                                var_t2_6 = *var_a2_8;
                            }
                            temp_t0->unk4077C = var_t2_6;
                            temp_a2_9 = var_a2_8 + arg3;
                            temp_a0_18 = temp_a2_9 & 3;
                            temp_t2_13 = temp_a0_18 * 8;
                            if (temp_a0_18 != 0) {
                                temp_v1_23 = -4 & temp_a2_9;
                                temp_t0->unk4077C = (s32) ((temp_v1_23->unk0 << temp_t2_13) | ((u32) temp_v1_23->unk4 >> (0x20 - temp_t2_13)));
                            } else {
                                temp_t0->unk4077C = (s32) *temp_a2_9;
                            }
                            var_a2_8 = temp_a2_9 + arg3;
                            if (var_a3_14 != 0x10) {
                                goto loop_585;
                            }
                            var_a5_9 += 0x10;
                            if (var_a7_7 >= 0x10) {
                                goto loop_582;
                            }
                        } else {
                            var_t0_4 = 0;
                        }
                        temp_a0_19 = var_t0_4 * 0x10;
                        temp_a7_4 = unkspB8 - temp_a0_19;
                        if (temp_a7_4 != 0) {
                            temp_t0->unk4057C = (s32) var_gp;
                            temp_t0->unk4077C = (s32) (temp_a0_19 + sp98);
                            temp_t0->unk4077C = (s32) var_s4;
                            temp_t0->unk4077C = temp_a7_4;
                            if (temp_a7_4 > 0) {
                                var_a3_15 = 0;
                                var_a1_18 = (var_t0_4 * arg3 * 0x10) + var_ra;
                                if (temp_a7_4 & 1) {
                                    temp_a2_10 = var_a1_18 & 3;
                                    if (temp_a2_10 != 0) {
                                        temp_t9_14 = -4 & var_a1_18;
                                        temp_v0_27 = temp_a2_10 * 8;
                                        temp_t0->unk4077C = (s32) ((temp_t9_14->unk0 << temp_v0_27) | ((u32) temp_t9_14->unk4 >> (0x20 - temp_v0_27)));
                                    } else {
                                        temp_t0->unk4077C = (s32) *var_a1_18;
                                    }
                                    var_a1_18 += arg3;
                                    var_a3_15 = 1;
                                }
                                var_v1_25 = -4 & var_a1_18;
                                if ((temp_a7_4 >> 1) != 0) {
loop_605:
                                    temp_a2_11 = var_a1_18 & 3;
                                    var_a3_15 += 2;
                                    if (temp_a2_11 != 0) {
                                        temp_t2_14 = temp_a2_11 * 8;
                                        var_v0_40 = (var_v1_25->unk0 << temp_t2_14) | ((u32) var_v1_25->unk4 >> (0x20 - temp_t2_14));
                                    } else {
                                        var_v0_40 = *var_a1_18;
                                    }
                                    temp_t0->unk4077C = var_v0_40;
                                    temp_a1_27 = var_a1_18 + arg3;
                                    temp_a2_12 = temp_a1_27 & 3;
                                    temp_v0_28 = temp_a2_12 * 8;
                                    if (temp_a2_12 != 0) {
                                        temp_t9_15 = -4 & temp_a1_27;
                                        temp_t0->unk4077C = (s32) ((temp_t9_15->unk0 << temp_v0_28) | ((u32) temp_t9_15->unk4 >> (0x20 - temp_v0_28)));
                                    } else {
                                        temp_t0->unk4077C = (s32) *temp_a1_27;
                                    }
                                    var_a1_18 = temp_a1_27 + arg3;
                                    if (var_a3_15 != temp_a7_4) {
                                        var_v1_25 = -4 & var_a1_18;
                                        goto loop_605;
                                    }
                                }
                            }
                            if (temp_a7_4 < 0x10) {
                                var_a0_28 = temp_a7_4;
                                do {
                                    var_a0_28 += 1;
                                    temp_t0->unk4077C = 0;
                                } while (var_a0_28 < 0x10);
                            }
                        }
                    } else {
                        if (unkspB8 >= 0x80) {
                            var_t3_5 = 0;
                            if (unkspB8 >= 0x40) {
                                var_t0_5 = sp98;
                                var_t8_4 = unkspB8;
                                spD0 = (s64) var_gp;
                                var_t1_5 = var_ra;
                                do {
                                    var_v1_26 = 0;
                                    var_t3_5 += 1;
                                    var_a1_19 = var_t1_5;
                                    var_a3_16 = var_t1_5 + arg3;
                                    var_a4_11 = var_a3_16 + arg3;
                                    temp_t0->unk40518 = (s32) spD0;
                                    temp_t0->unk4077C = (s32) var_t0_5;
                                    temp_t0->unk4077C = (s32) var_s4;
                                    temp_t0->unk4077C = 0x40;
                                    var_a0_29 = *var_t1_5;
loop_726:
                                    sp8 = var_a0_29;
                                    spA = var_a1_19->unk2;
                                    temp_t0->unk4077C = (s32) sp8;
                                    spA = var_a3_16->unk2;
                                    sp8 = var_a3_16->unk0;
                                    var_v1_26 += 4;
                                    temp_a0_20 = var_a4_11 + arg3;
                                    var_a1_19 = temp_a0_20 + arg3;
                                    temp_t0->unk4077C = (s32) sp8;
                                    temp_v0_29 = var_a4_11->unk0;
                                    if (var_v1_26 != 0x40) {
                                        sp8 = temp_v0_29;
                                        spA = var_a4_11->unk2;
                                        temp_t0->unk4077C = (s32) sp8;
                                        spA = temp_a0_20->unk2;
                                        sp8 = temp_a0_20->unk0;
                                        var_a3_16 = var_a1_19 + arg3;
                                        var_a4_11 = var_a3_16 + arg3;
                                        temp_t0->unk4077C = (s32) sp8;
                                        var_a0_29 = *var_a1_19;
                                        goto loop_726;
                                    }
                                    sp8 = temp_v0_29;
                                    spA = var_a4_11->unk2;
                                    temp_t0->unk4077C = (s32) sp8;
                                    var_t0_5 += 0x40;
                                    var_t1_5 += arg3 << 6;
                                    sp8 = temp_a0_20->unk0;
                                    spA = temp_a0_20->unk2;
                                    var_t8_4 -= 0x40;
                                    temp_t0->unk4077C = (s32) sp8;
                                } while (var_t8_4 >= 0x40);
                            } else {
                                spD0 = (s64) var_gp;
                                var_t3_5 = 0;
                            }
                            temp_t0->unk407A8 = 0;
                            temp_t9_16 = var_t3_5 << 6;
                            var_gp = (s16) spD0;
                            unkspB8 -= temp_t9_16;
                            sp58 = temp_t9_16 + sp98;
                            var_ra += (var_t3_5 * arg3) << 6;
                        }
                        var_t8_5 = 0;
                        if (unkspB8 >= 0x20) {
                            var_t3_6 = sp58;
                            var_s0_10 = unkspB8;
                            var_t1_6 = var_ra;
                            do {
                                var_v1_27 = 0;
                                var_t8_5 += 1;
                                var_a1_20 = var_t1_6;
                                var_a3_17 = var_t1_6 + arg3;
                                var_a4_12 = var_a3_17 + arg3;
                                temp_t0->unk40580 = (s32) var_gp;
                                temp_t0->unk4077C = (s32) var_t3_6;
                                temp_t0->unk4077C = (s32) var_s4;
                                temp_t0->unk4077C = 0x20;
                                var_a0_30 = *var_t1_6;
loop_733:
                                sp8 = var_a0_30;
                                spA = var_a1_20->unk2;
                                temp_t0->unk4077C = (s32) sp8;
                                spA = var_a3_17->unk2;
                                sp8 = var_a3_17->unk0;
                                var_v1_27 += 4;
                                temp_a0_21 = var_a4_12 + arg3;
                                var_a1_20 = temp_a0_21 + arg3;
                                temp_t0->unk4077C = (s32) sp8;
                                temp_v0_30 = var_a4_12->unk0;
                                if (var_v1_27 != 0x20) {
                                    sp8 = temp_v0_30;
                                    spA = var_a4_12->unk2;
                                    temp_t0->unk4077C = (s32) sp8;
                                    spA = temp_a0_21->unk2;
                                    sp8 = temp_a0_21->unk0;
                                    var_a3_17 = var_a1_20 + arg3;
                                    var_a4_12 = var_a3_17 + arg3;
                                    temp_t0->unk4077C = (s32) sp8;
                                    var_a0_30 = *var_a1_20;
                                    goto loop_733;
                                }
                                sp8 = temp_v0_30;
                                spA = var_a4_12->unk2;
                                temp_t0->unk4077C = (s32) sp8;
                                var_t3_6 += 0x20;
                                var_t1_6 += arg3 << 5;
                                sp8 = temp_a0_21->unk0;
                                spA = temp_a0_21->unk2;
                                var_s0_10 -= 0x20;
                                temp_t0->unk4077C = (s32) sp8;
                            } while (var_s0_10 >= 0x20);
                        } else {
                            var_t8_5 = 0;
                        }
                        temp_t9_17 = var_t8_5 << 5;
                        temp_s0_14 = unkspB8 - temp_t9_17;
                        sp50 = temp_t9_17;
                        if (temp_s0_14 >= 0x10) {
                            var_s1_8 = 0;
                            var_t3_7 = temp_s0_14;
                            sp60 = arg3 * 0x10;
                            var_t0_6 = sp50 + sp58;
                            var_t1_7 = (var_t8_5 * arg3 * 2 * 0x10) + var_ra;
                            do {
                                var_v1_28 = 0;
                                var_s1_8 += 1;
                                var_a1_21 = var_t1_7;
                                var_a3_18 = var_t1_7 + arg3;
                                var_a4_13 = var_a3_18 + arg3;
                                temp_t0->unk4057C = (s32) var_gp;
                                temp_t0->unk4077C = var_t0_6;
                                temp_t0->unk4077C = (s32) var_s4;
                                temp_t0->unk4077C = 0x10;
                                var_a0_31 = *var_t1_7;
loop_739:
                                sp8 = var_a0_31;
                                spA = var_a1_21->unk2;
                                temp_t0->unk4077C = (s32) sp8;
                                spA = var_a3_18->unk2;
                                sp8 = var_a3_18->unk0;
                                var_v1_28 += 4;
                                temp_a0_22 = var_a4_13 + arg3;
                                var_a1_21 = temp_a0_22 + arg3;
                                temp_t0->unk4077C = (s32) sp8;
                                temp_v0_31 = var_a4_13->unk0;
                                if (var_v1_28 != 0x10) {
                                    sp8 = temp_v0_31;
                                    spA = var_a4_13->unk2;
                                    temp_t0->unk4077C = (s32) sp8;
                                    spA = temp_a0_22->unk2;
                                    sp8 = temp_a0_22->unk0;
                                    var_a3_18 = var_a1_21 + arg3;
                                    var_a4_13 = var_a3_18 + arg3;
                                    temp_t0->unk4077C = (s32) sp8;
                                    var_a0_31 = *var_a1_21;
                                    goto loop_739;
                                }
                                sp8 = temp_v0_31;
                                spA = var_a4_13->unk2;
                                temp_t0->unk4077C = (s32) sp8;
                                var_t1_7 += sp60;
                                var_t0_6 += 0x10;
                                sp8 = temp_a0_22->unk0;
                                spA = temp_a0_22->unk2;
                                var_t3_7 -= 0x10;
                                temp_t0->unk4077C = (s32) sp8;
                            } while (var_t3_7 >= 0x10);
                        } else {
                            var_s1_8 = 0;
                        }
                        temp_a0_23 = var_s1_8 * 0x10;
                        temp_t3_11 = temp_s0_14 - temp_a0_23;
                        if (temp_t3_11 != 0) {
                            temp_t0->unk4057C = (s32) var_gp;
                            temp_t0->unk4077C = (s32) (sp50 + sp58 + temp_a0_23);
                            temp_t0->unk4077C = (s32) var_s4;
                            temp_t0->unk4077C = temp_t3_11;
                            if (temp_t3_11 > 0) {
                                var_a2_9 = 0;
                                var_a0_32 = (((var_s1_8 * arg3) + (var_t8_5 * arg3 * 2)) * 0x10) + var_ra;
                                if (temp_t3_11 & 1) {
                                    spA = var_a0_32->unk2;
                                    sp8 = var_a0_32->unk0;
                                    var_a0_32 += arg3;
                                    var_a2_9 = 1;
                                    temp_t0->unk4077C = (s32) sp8;
                                }
                                temp_a4_8 = temp_t3_11 >> 1;
                                var_a6_9 = var_a0_32;
                                if (temp_a4_8 != 0) {
                                    if (temp_a4_8 >= 2) {
                                        var_v1_29 = var_a6_9->unk0;
                                        var_a4_14 = var_a2_9;
                                        var_a3_19 = var_a6_9 + arg3;
                                        var_a1_22 = var_a3_19 + arg3;
loop_748:
                                        sp8 = var_v1_29;
                                        spA = var_a6_9->unk2;
                                        temp_t0->unk4077C = (s32) sp8;
                                        spA = var_a3_19->unk2;
                                        sp8 = var_a3_19->unk0;
                                        var_a4_14 += 4;
                                        var_a3_19 = var_a1_22 + arg3;
                                        var_a6_9 = var_a3_19 + arg3;
                                        temp_t0->unk4077C = (s32) sp8;
                                        temp_v1_24 = var_a1_22->unk0;
                                        if (var_a4_14 != temp_t3_11) {
                                            sp8 = temp_v1_24;
                                            spA = var_a1_22->unk2;
                                            temp_t0->unk4077C = (s32) sp8;
                                            spA = var_a3_19->unk2;
                                            sp8 = var_a3_19->unk0;
                                            var_a3_19 = var_a6_9 + arg3;
                                            var_a1_22 = var_a3_19 + arg3;
                                            temp_t0->unk4077C = (s32) sp8;
                                            var_v1_29 = *var_a6_9;
                                            if (var_a4_14 == (temp_t3_11 - 2)) {
                                                var_a1_23 = var_v1_29;
                                            } else {
                                                goto loop_748;
                                            }
                                        } else {
                                            var_a6_9 = var_a1_22;
                                            var_a1_23 = temp_v1_24;
                                        }
                                        sp8 = var_a1_23;
                                        spA = var_a6_9->unk2;
                                        temp_t0->unk4077C = (s32) sp8;
                                        spA = var_a3_19->unk2;
                                        sp8 = var_a3_19->unk0;
                                        temp_t0->unk4077C = (s32) sp8;
                                    } else {
                                        sp8 = var_a6_9->unk0;
                                        spA = var_a6_9->unk2;
                                        temp_t0->unk4077C = (s32) sp8;
                                        temp_t2_15 = var_a6_9 + arg3;
                                        sp8 = temp_t2_15->unk0;
                                        spA = temp_t2_15->unk2;
                                        temp_t0->unk4077C = (s32) sp8;
                                    }
                                }
                            }
                            if (temp_t3_11 < 0x10) {
                                var_a1_24 = temp_t3_11;
                                do {
                                    var_a1_24 += 1;
                                    temp_t0->unk4077C = 0;
                                } while (var_a1_24 < 0x10);
                            }
                        }
                    }
                } else {
                    if (unkspB8 >= 0x80) {
                        var_t8_6 = 0;
                        if (unkspB8 >= 0x40) {
                            var_t1_8 = sp98;
                            var_s0_11 = unkspB8;
                            spD0 = (s64) var_gp;
                            var_t3_8 = var_ra;
                            var_v1_30 = 0;
                            do {
                                var_s0_11 -= 0x40;
                                var_a7_8 = var_t3_8 + arg3;
                                var_a3_20 = var_a7_8 + arg3;
                                var_a1_25 = var_a3_20 + arg3;
                                temp_t0->unk40518 = (s32) spD0;
                                temp_t0->unk4077C = (s32) var_t1_8;
                                temp_t0->unk4077C = (s32) var_s4;
                                temp_t0->unk4077C = 0x40;
                                var_a0_33 = var_a1_25 + arg3;
                                var_v0_41 = *var_t3_8;
                                var_t3_8 += arg3 << 6;
loop_693:
                                temp_t0->unk4077C = var_v0_41;
                                temp_t0->unk4077C = (s32) *var_a7_8;
                                var_v1_30 += 8;
                                temp_a7_5 = var_a0_33 + arg3;
                                temp_t0->unk4077C = (s32) *var_a3_20;
                                temp_a3_25 = temp_a7_5 + arg3;
                                temp_a1_28 = temp_a3_25 + arg3;
                                temp_a4_9 = temp_a1_28 + arg3;
                                temp_t0->unk4077C = (s32) *var_a1_25;
                                temp_v0_32 = *var_a0_33;
                                if (var_v1_30 != 0x40) {
                                    temp_t0->unk4077C = temp_v0_32;
                                    temp_t0->unk4077C = (s32) *temp_a7_5;
                                    var_a7_8 = temp_a4_9 + arg3;
                                    temp_t0->unk4077C = (s32) *temp_a3_25;
                                    var_a3_20 = var_a7_8 + arg3;
                                    var_a1_25 = var_a3_20 + arg3;
                                    var_a0_33 = var_a1_25 + arg3;
                                    temp_t0->unk4077C = (s32) *temp_a1_28;
                                    var_v0_41 = *temp_a4_9;
                                    goto loop_693;
                                }
                                var_t8_6 += 1;
                                temp_t0->unk4077C = temp_v0_32;
                                temp_t0->unk4077C = (s32) *temp_a7_5;
                                temp_t0->unk4077C = (s32) *temp_a3_25;
                                var_t1_8 += 0x40;
                                temp_t0->unk4077C = (s32) *temp_a1_28;
                                var_v1_30 = 0;
                            } while (var_s0_11 >= 0x40);
                        } else {
                            spD0 = (s64) var_gp;
                            var_t8_6 = 0;
                        }
                        temp_t0->unk407A8 = 0;
                        temp_t9_18 = var_t8_6 << 6;
                        var_gp = (s16) spD0;
                        unkspB8 -= temp_t9_18;
                        sp58 = temp_t9_18 + sp98;
                        var_ra += (var_t8_6 * arg3) << 6;
                    }
                    var_s0_12 = 0;
                    if (unkspB8 >= 0x20) {
                        var_t8_7 = sp58;
                        var_s1_9 = unkspB8;
                        var_t3_9 = var_ra;
                        var_v1_31 = 0;
                        do {
                            var_s1_9 -= 0x20;
                            var_a7_9 = var_t3_9 + arg3;
                            var_a3_21 = var_a7_9 + arg3;
                            var_a1_26 = var_a3_21 + arg3;
                            temp_t0->unk40580 = (s32) var_gp;
                            temp_t0->unk4077C = (s32) var_t8_7;
                            temp_t0->unk4077C = (s32) var_s4;
                            temp_t0->unk4077C = 0x20;
                            var_a0_34 = var_a1_26 + arg3;
                            var_v0_42 = *var_t3_9;
                            var_t3_9 += arg3 << 5;
loop_700:
                            temp_t0->unk4077C = var_v0_42;
                            temp_t0->unk4077C = (s32) *var_a7_9;
                            var_v1_31 += 8;
                            temp_a7_6 = var_a0_34 + arg3;
                            temp_t0->unk4077C = (s32) *var_a3_21;
                            temp_a3_26 = temp_a7_6 + arg3;
                            temp_a1_29 = temp_a3_26 + arg3;
                            temp_a4_10 = temp_a1_29 + arg3;
                            temp_t0->unk4077C = (s32) *var_a1_26;
                            temp_v0_33 = *var_a0_34;
                            if (var_v1_31 != 0x20) {
                                temp_t0->unk4077C = temp_v0_33;
                                temp_t0->unk4077C = (s32) *temp_a7_6;
                                var_a7_9 = temp_a4_10 + arg3;
                                temp_t0->unk4077C = (s32) *temp_a3_26;
                                var_a3_21 = var_a7_9 + arg3;
                                var_a1_26 = var_a3_21 + arg3;
                                var_a0_34 = var_a1_26 + arg3;
                                temp_t0->unk4077C = (s32) *temp_a1_29;
                                var_v0_42 = *temp_a4_10;
                                goto loop_700;
                            }
                            var_s0_12 += 1;
                            temp_t0->unk4077C = temp_v0_33;
                            temp_t0->unk4077C = (s32) *temp_a7_6;
                            temp_t0->unk4077C = (s32) *temp_a3_26;
                            var_t8_7 += 0x20;
                            temp_t0->unk4077C = (s32) *temp_a1_29;
                            var_v1_31 = 0;
                        } while (var_s1_9 >= 0x20);
                    } else {
                        var_s0_12 = 0;
                    }
                    temp_a4_11 = var_s0_12 << 5;
                    temp_s1_12 = unkspB8 - temp_a4_11;
                    if (temp_s1_12 >= 0x10) {
                        var_a2_10 = 0;
                        var_t3_10 = temp_s1_12;
                        var_a0_35 = temp_a4_11 + sp58;
                        var_a1_27 = (var_s0_12 * arg3 * 2 * 0x10) + var_ra;
                        var_a3_22 = var_a1_27;
                        do {
                            temp_t0->unk4057C = (s32) var_gp;
                            temp_t0->unk4077C = var_a0_35;
                            temp_t0->unk4077C = (s32) var_s4;
                            temp_t0->unk4077C = 0x10;
                            temp_t0->unk4077C = (s32) *var_a3_22;
                            temp_t2_16 = var_a3_22 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_16;
                            temp_t2_17 = temp_t2_16 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_17;
                            temp_t2_18 = temp_t2_17 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_18;
                            temp_t2_19 = temp_t2_18 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_19;
                            temp_t2_20 = temp_t2_19 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_20;
                            temp_t2_21 = temp_t2_20 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_21;
                            temp_t2_22 = temp_t2_21 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_22;
                            temp_t2_23 = temp_t2_22 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_23;
                            temp_t2_24 = temp_t2_23 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_24;
                            temp_t2_25 = temp_t2_24 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_25;
                            temp_t2_26 = temp_t2_25 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_26;
                            temp_t2_27 = temp_t2_26 + arg3;
                            temp_t0->unk4077C = (s32) *temp_t2_27;
                            temp_t2_28 = temp_t2_27 + arg3;
                            var_a0_35 += 0x10;
                            temp_t0->unk4077C = (s32) *temp_t2_28;
                            temp_t2_29 = temp_t2_28 + arg3;
                            var_a1_27 += arg3 * 0x10;
                            var_a2_10 += 1;
                            temp_t0->unk4077C = (s32) *temp_t2_29;
                            var_t3_10 -= 0x10;
                            temp_t0->unk4077C = (s32) *(temp_t2_29 + arg3);
                            var_a3_22 = var_a1_27;
                        } while (var_t3_10 >= 0x10);
                    } else {
                        var_a2_10 = 0;
                    }
                    temp_a0_24 = var_a2_10 * 0x10;
                    temp_t3_12 = temp_s1_12 - temp_a0_24;
                    if (temp_t3_12 != 0) {
                        temp_t0->unk4057C = (s32) var_gp;
                        temp_t0->unk4077C = (s32) (temp_a4_11 + sp58 + temp_a0_24);
                        temp_t0->unk4077C = (s32) var_s4;
                        temp_t0->unk4077C = temp_t3_12;
                        if (temp_t3_12 > 0) {
                            var_a1_28 = 0;
                            var_a3_23 = temp_t3_12 & 3;
                            var_a0_36 = (((var_a2_10 * arg3) + (var_s0_12 * arg3 * 2)) * 0x10) + var_ra;
                            if (var_a3_23 != 0) {
                                do {
                                    temp_t9_19 = *var_a0_36;
                                    var_a0_36 += arg3;
                                    var_a1_28 += 1;
                                    var_a3_23 -= 1;
                                    temp_t0->unk4077C = temp_t9_19;
                                } while (var_a3_23 != 0);
                            }
                            temp_a5_4 = temp_t3_12 >> 2;
                            if (temp_a5_4 != 0) {
                                if (temp_a5_4 >= 2) {
                                    var_a7_10 = var_a1_28;
                                    var_v0_43 = *var_a0_36;
                                    var_a6_10 = var_a0_36 + arg3;
                                    var_a3_24 = var_a6_10 + arg3;
                                    var_a1_29 = var_a3_24 + arg3;
                                    var_a4_15 = var_a1_29 + arg3;
loop_712:
                                    temp_t0->unk4077C = var_v0_43;
                                    temp_t0->unk4077C = (s32) *var_a6_10;
                                    var_a7_10 += 8;
                                    var_a6_10 = var_a4_15 + arg3;
                                    temp_t0->unk4077C = (s32) *var_a3_24;
                                    var_a3_24 = var_a6_10 + arg3;
                                    temp_v0_34 = *var_a1_29;
                                    var_a1_29 = var_a3_24 + arg3;
                                    temp_a0_25 = var_a1_29 + arg3;
                                    temp_t0->unk4077C = temp_v0_34;
                                    temp_v0_35 = *var_a4_15;
                                    if (var_a7_10 != temp_t3_12) {
                                        temp_t0->unk4077C = temp_v0_35;
                                        temp_t0->unk4077C = (s32) *var_a6_10;
                                        var_a6_10 = temp_a0_25 + arg3;
                                        temp_t0->unk4077C = (s32) *var_a3_24;
                                        var_a3_24 = var_a6_10 + arg3;
                                        temp_v0_36 = *var_a1_29;
                                        var_a1_29 = var_a3_24 + arg3;
                                        var_a4_15 = var_a1_29 + arg3;
                                        temp_t0->unk4077C = temp_v0_36;
                                        var_v0_43 = *temp_a0_25;
                                        if (var_a7_10 == (temp_t3_12 - 4)) {
                                            var_a2_11 = var_v0_43;
                                        } else {
                                            goto loop_712;
                                        }
                                    } else {
                                        var_a2_11 = temp_v0_35;
                                    }
                                    temp_t0->unk4077C = var_a2_11;
                                    temp_t0->unk4077C = (s32) *var_a6_10;
                                    temp_t0->unk4077C = (s32) *var_a3_24;
                                    temp_t0->unk4077C = (s32) *var_a1_29;
                                } else {
                                    temp_t0->unk4077C = (s32) *var_a0_36;
                                    temp_t2_30 = var_a0_36 + arg3;
                                    temp_t0->unk4077C = (s32) *temp_t2_30;
                                    temp_t2_31 = temp_t2_30 + arg3;
                                    temp_t0->unk4077C = (s32) *temp_t2_31;
                                    temp_t0->unk4077C = (s32) *(temp_t2_31 + arg3);
                                }
                            }
                        }
                        if (temp_t3_12 < 0x10) {
                            var_a0_37 = temp_t3_12;
                            do {
                                var_a0_37 += 1;
                                temp_t0->unk4077C = 0;
                            } while (var_a0_37 < 0x10);
                        }
                    }
                }
            }
        } else {
            var_t9_6 = var_s3 < 0x10U;
            if (var_ra & 1) {
                var_ra -= 1;
                var_s3 += 8;
                var_t9_6 = var_s3 < 0x10U;
            }
            temp_v0_37 = var_s3 >> 4;
            if (var_t9_6 == 0) {
                var_s3 &= 0xF;
                var_ra += temp_v0_37 * 2;
            }
            var_t8_8 = sp130->unk0;
            temp_s5_13 = sp130->unk2;
            if (var_s3 != 0) {
                var_a5_10 = var_ra;
                sp108 = unkspB8 & 0x10;
                sp100 = unkspB8 & 0x20;
                sp120 = unkspB8 & 0xF;
                sp140 = (unkspB8 >> 6) & 0xFF;
                if (arg3 & 1) {
                    var_t0_7 = temp_s5_13;
                    if (sp140 != 0) {
                        if (sp140 > 0) {
                            var_t1_9 = temp_s5_13;
                            do {
                                var_v1_32 = 0;
                                var_a3_25 = var_a5_10 + arg3;
                                temp_t0->unk40514 = (s32) var_t8_8;
                                temp_t0->unk4077C = (s32) var_t1_9;
                                temp_t0->unk4077C = (s32) (0x10 - var_s3);
                                temp_t0->unk4077C = 0x40;
                                var_a1_30 = arg3 + var_a3_25;
                                var_v0_44 = *var_a5_10;
loop_259:
                                sp10 = var_v0_44 << var_s3;
                                sp12 = (var_a3_25->unk1 | (var_a3_25->unk0 << 8)) << var_s3;
                                var_v1_32 += 2;
                                temp_a3_27 = var_a1_30 + arg3;
                                temp_a0_26 = arg3 + temp_a3_27;
                                temp_t0->unk4077C = (s32) sp10;
                                temp_v0_38 = *var_a1_30;
                                if (var_v1_32 != 0x20) {
                                    sp10 = temp_v0_38 << var_s3;
                                    sp12 = (temp_a3_27->unk1 | (temp_a3_27->unk0 << 8)) << var_s3;
                                    var_a3_25 = temp_a0_26 + arg3;
                                    var_a1_30 = arg3 + var_a3_25;
                                    temp_t0->unk4077C = (s32) sp10;
                                    var_v0_44 = *temp_a0_26;
                                    goto loop_259;
                                }
                                var_t1_9 += 0x40;
                                sp10 = temp_v0_38 << var_s3;
                                sp12 = (temp_a3_27->unk1 | (temp_a3_27->unk0 << 8)) << var_s3;
                                temp_t0->unk4077C = (s32) sp10;
                                var_a5_10 = (s64) temp_a0_26;
                            } while (var_t1_9 != (temp_s5_13 + (sp140 << 6)));
                            var_a0_38 = sp140;
                        } else {
                            var_a0_38 = 0;
                        }
                        temp_t0->unk407A8 = 0;
                        var_t0_7 = (var_a0_38 << 6) + temp_s5_13;
                    }
                    var_v1_33 = 0;
                    if (sp100 != 0) {
                        var_a3_26 = var_a5_10 + arg3;
                        temp_t0->unk40510 = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_t0_7;
                        temp_t0->unk4077C = (s32) (0x10 - var_s3);
                        temp_t0->unk4077C = 0x20;
                        var_a1_31 = arg3 + var_a3_26;
                        var_v0_45 = *var_a5_10;
loop_266:
                        sp10 = var_v0_45 << var_s3;
                        sp12 = (var_a3_26->unk1 | (var_a3_26->unk0 << 8)) << var_s3;
                        var_v1_33 += 2;
                        temp_a3_28 = var_a1_31 + arg3;
                        temp_a0_27 = arg3 + temp_a3_28;
                        temp_t0->unk4077C = (s32) sp10;
                        temp_v0_39 = *var_a1_31;
                        if (var_v1_33 != 0x10) {
                            sp10 = temp_v0_39 << var_s3;
                            sp12 = (temp_a3_28->unk1 | (temp_a3_28->unk0 << 8)) << var_s3;
                            var_a3_26 = temp_a0_27 + arg3;
                            var_a1_31 = arg3 + var_a3_26;
                            temp_t0->unk4077C = (s32) sp10;
                            var_v0_45 = *temp_a0_27;
                            goto loop_266;
                        }
                        sp10 = temp_v0_39 << var_s3;
                        sp12 = (temp_a3_28->unk1 | (temp_a3_28->unk0 << 8)) << var_s3;
                        var_a5_10 = (s64) temp_a0_27;
                        var_t0_7 += 0x20;
                        temp_t0->unk4077C = (s32) sp10;
                        temp_t0->unk407A8 = 0;
                    }
                    var_v1_34 = 0;
                    if (sp108 != 0) {
                        var_a3_27 = var_a5_10 + arg3;
                        temp_t0->unk4050C = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_t0_7;
                        temp_t0->unk4077C = (s32) (0x10 - var_s3);
                        temp_t0->unk4077C = 0x10;
                        var_a1_32 = arg3 + var_a3_27;
                        var_v0_46 = *var_a5_10;
loop_271:
                        sp10 = var_v0_46 << var_s3;
                        sp12 = (var_a3_27->unk1 | (var_a3_27->unk0 << 8)) << var_s3;
                        var_v1_34 += 2;
                        temp_a3_29 = var_a1_32 + arg3;
                        temp_a0_28 = arg3 + temp_a3_29;
                        temp_t0->unk4077C = (s32) sp10;
                        temp_v0_40 = *var_a1_32;
                        if (var_v1_34 != 8) {
                            sp10 = temp_v0_40 << var_s3;
                            sp12 = (temp_a3_29->unk1 | (temp_a3_29->unk0 << 8)) << var_s3;
                            var_a3_27 = temp_a0_28 + arg3;
                            var_a1_32 = arg3 + var_a3_27;
                            temp_t0->unk4077C = (s32) sp10;
                            var_v0_46 = *temp_a0_28;
                            goto loop_271;
                        }
                        sp10 = temp_v0_40 << var_s3;
                        sp12 = (temp_a3_29->unk1 | (temp_a3_29->unk0 << 8)) << var_s3;
                        var_a5_10 = (s64) temp_a0_28;
                        var_t0_7 += 0x10;
                        temp_t0->unk4077C = (s32) sp10;
                        temp_t0->unk407A8 = 0;
                    }
                    if (sp120 != 0) {
                        temp_t0->unk4050C = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_t0_7;
                        temp_t0->unk4077C = (s32) (0x10 - var_s3);
                        temp_s6_7 = (sp120 >> 1) & 0xFF;
                        temp_t0->unk4077C = (s32) sp120;
                        if (temp_s6_7 > 0) {
                            var_a4_16 = 0;
                            if (temp_s6_7 >= 2) {
                                var_v0_47 = *var_a5_10;
                                var_a3_28 = var_a5_10 + arg3;
                                var_v1_35 = arg3 + var_a3_28;
loop_277:
                                sp10 = var_v0_47 << var_s3;
                                sp12 = (var_a3_28->unk1 | (var_a3_28->unk0 << 8)) << var_s3;
                                var_a4_16 += 2;
                                var_a3_28 = var_v1_35 + arg3;
                                temp_a1_30 = arg3 + var_a3_28;
                                temp_t0->unk4077C = (s32) sp10;
                                temp_v0_41 = *var_v1_35;
                                if (var_a4_16 != temp_s6_7) {
                                    sp10 = temp_v0_41 << var_s3;
                                    sp12 = (var_a3_28->unk1 | (var_a3_28->unk0 << 8)) << var_s3;
                                    var_a3_28 = temp_a1_30 + arg3;
                                    var_v1_35 = arg3 + var_a3_28;
                                    temp_t0->unk4077C = (s32) sp10;
                                    var_v0_47 = *temp_a1_30;
                                    if (var_a4_16 == (temp_s6_7 - 1)) {
                                        var_a2_12 = var_v1_35;
                                        var_a6_11 = var_v0_47;
                                    } else {
                                        goto loop_277;
                                    }
                                } else {
                                    var_a2_12 = temp_a1_30;
                                    var_a6_11 = temp_v0_41;
                                }
                                sp10 = var_a6_11 << var_s3;
                                sp12 = (var_a3_28->unk1 | (var_a3_28->unk0 << 8)) << var_s3;
                                var_a5_10 = (s64) var_a2_12;
                                temp_t0->unk4077C = (s32) sp10;
                            } else {
                                temp_a5_5 = var_a5_10 + arg3;
                                sp10 = *var_a5_10 << var_s3;
                                sp12 = (temp_a5_5->unk1 | (temp_a5_5->unk0 << 8)) << var_s3;
                                var_a5_10 = (s64) (arg3 + temp_a5_5);
                                temp_t0->unk4077C = (s32) sp10;
                            }
                        }
                        if (sp120 & 1) {
                            sp10 = *var_a5_10 << var_s3;
                            sp12 = 0;
                            temp_t0->unk4077C = (s32) sp10;
                        }
                        temp_t2_32 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                        sp138 = temp_t2_32;
                        if (temp_t2_32 > 0) {
                            var_a1_33 = sp138 & 3;
                            var_a0_39 = 0;
                            if (var_a1_33 != 0) {
                                do {
                                    var_a0_39 += 1;
                                    var_a1_33 -= 1;
                                    temp_t0->unk4077C = 0;
                                } while (var_a1_33 != 0);
                            }
                            temp_a1_31 = sp138 >> 2;
                            if (temp_a1_31 != 0) {
                                var_a0_40 = var_a0_39 + 4;
                                if (temp_a1_31 >= 2) {
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
loop_289:
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    if (var_a0_40 != (sp138 - 4)) {
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        if (var_a0_40 != (sp138 - 8)) {
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            if (var_a0_40 != (sp138 - 0xC)) {
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                var_a0_40 += 0x10;
                                                temp_t0->unk4077C = 0;
                                                if (var_a0_40 != sp138) {
                                                    goto loop_289;
                                                }
                                            }
                                        }
                                    }
                                    temp_t0->unk4077C = 0;
                                } else {
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                }
                                temp_t0->unk4077C = 0;
                            }
                        }
                        goto block_295;
                    }
                } else {
                    var_t0_8 = temp_s5_13;
                    if (sp140 != 0) {
                        if (sp140 > 0) {
                            var_t1_10 = temp_s5_13;
                            do {
                                var_v1_36 = 0;
                                var_a3_29 = var_a5_10 + arg3;
                                temp_t0->unk40514 = (s32) var_t8_8;
                                temp_t0->unk4077C = (s32) var_t1_10;
                                temp_t0->unk4077C = (s32) (0x10 - var_s3);
                                temp_t0->unk4077C = 0x40;
                                var_a1_34 = arg3 + var_a3_29;
                                var_v0_48 = *var_a5_10;
loop_542:
                                spC = var_v0_48 << var_s3;
                                spE = *var_a3_29 << var_s3;
                                var_v1_36 += 2;
                                temp_a3_30 = var_a1_34 + arg3;
                                temp_a0_29 = arg3 + temp_a3_30;
                                temp_t0->unk4077C = (s32) spC;
                                temp_v0_42 = *var_a1_34;
                                if (var_v1_36 != 0x20) {
                                    spC = temp_v0_42 << var_s3;
                                    spE = *temp_a3_30 << var_s3;
                                    var_a3_29 = temp_a0_29 + arg3;
                                    var_a1_34 = arg3 + var_a3_29;
                                    temp_t0->unk4077C = (s32) spC;
                                    var_v0_48 = *temp_a0_29;
                                    goto loop_542;
                                }
                                var_t1_10 += 0x40;
                                spC = temp_v0_42 << var_s3;
                                spE = *temp_a3_30 << var_s3;
                                temp_t0->unk4077C = (s32) spC;
                                var_a5_10 = (s64) temp_a0_29;
                            } while (var_t1_10 != (temp_s5_13 + (sp140 << 6)));
                            var_a0_41 = sp140;
                        } else {
                            var_a0_41 = 0;
                        }
                        temp_t0->unk407A8 = 0;
                        var_t0_8 = (var_a0_41 << 6) + temp_s5_13;
                    }
                    var_v1_37 = 0;
                    if (sp100 != 0) {
                        var_a3_30 = var_a5_10 + arg3;
                        temp_t0->unk40510 = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_t0_8;
                        temp_t0->unk4077C = (s32) (0x10 - var_s3);
                        temp_t0->unk4077C = 0x20;
                        var_a1_35 = arg3 + var_a3_30;
                        var_v0_49 = *var_a5_10;
loop_549:
                        spC = var_v0_49 << var_s3;
                        spE = *var_a3_30 << var_s3;
                        var_v1_37 += 2;
                        temp_a3_31 = var_a1_35 + arg3;
                        temp_a0_30 = arg3 + temp_a3_31;
                        temp_t0->unk4077C = (s32) spC;
                        temp_v0_43 = *var_a1_35;
                        if (var_v1_37 != 0x10) {
                            spC = temp_v0_43 << var_s3;
                            spE = *temp_a3_31 << var_s3;
                            var_a3_30 = temp_a0_30 + arg3;
                            var_a1_35 = arg3 + var_a3_30;
                            temp_t0->unk4077C = (s32) spC;
                            var_v0_49 = *temp_a0_30;
                            goto loop_549;
                        }
                        spC = temp_v0_43 << var_s3;
                        spE = *temp_a3_31 << var_s3;
                        var_a5_10 = (s64) temp_a0_30;
                        var_t0_8 += 0x20;
                        temp_t0->unk4077C = (s32) spC;
                        temp_t0->unk407A8 = 0;
                    }
                    var_v1_38 = 0;
                    if (sp108 != 0) {
                        var_a3_31 = var_a5_10 + arg3;
                        temp_t0->unk4050C = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_t0_8;
                        temp_t0->unk4077C = (s32) (0x10 - var_s3);
                        temp_t0->unk4077C = 0x10;
                        var_a1_36 = arg3 + var_a3_31;
                        var_v0_50 = *var_a5_10;
loop_554:
                        spC = var_v0_50 << var_s3;
                        spE = *var_a3_31 << var_s3;
                        var_v1_38 += 2;
                        temp_a3_32 = var_a1_36 + arg3;
                        temp_a0_31 = arg3 + temp_a3_32;
                        temp_t0->unk4077C = (s32) spC;
                        temp_v0_44 = *var_a1_36;
                        if (var_v1_38 != 8) {
                            spC = temp_v0_44 << var_s3;
                            spE = *temp_a3_32 << var_s3;
                            var_a3_31 = temp_a0_31 + arg3;
                            var_a1_36 = arg3 + var_a3_31;
                            temp_t0->unk4077C = (s32) spC;
                            var_v0_50 = *temp_a0_31;
                            goto loop_554;
                        }
                        spC = temp_v0_44 << var_s3;
                        spE = *temp_a3_32 << var_s3;
                        var_a5_10 = (s64) temp_a0_31;
                        var_t0_8 += 0x10;
                        temp_t0->unk4077C = (s32) spC;
                        temp_t0->unk407A8 = 0;
                    }
                    if (sp120 != 0) {
                        temp_t0->unk4050C = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_t0_8;
                        temp_t0->unk4077C = (s32) (0x10 - var_s3);
                        temp_s6_8 = (sp120 >> 1) & 0xFF;
                        temp_t0->unk4077C = (s32) sp120;
                        if (temp_s6_8 > 0) {
                            var_a4_17 = 0;
                            if (temp_s6_8 >= 2) {
                                var_v0_51 = *var_a5_10;
                                var_a3_32 = var_a5_10 + arg3;
                                var_v1_39 = arg3 + var_a3_32;
loop_560:
                                spC = var_v0_51 << var_s3;
                                spE = *var_a3_32 << var_s3;
                                var_a4_17 += 2;
                                var_a3_32 = var_v1_39 + arg3;
                                temp_a1_32 = arg3 + var_a3_32;
                                temp_t0->unk4077C = (s32) spC;
                                temp_v0_45 = *var_v1_39;
                                if (var_a4_17 != temp_s6_8) {
                                    spC = temp_v0_45 << var_s3;
                                    spE = *var_a3_32 << var_s3;
                                    var_a3_32 = temp_a1_32 + arg3;
                                    var_v1_39 = arg3 + var_a3_32;
                                    temp_t0->unk4077C = (s32) spC;
                                    var_v0_51 = *temp_a1_32;
                                    if (var_a4_17 == (temp_s6_8 - 1)) {
                                        var_a2_13 = var_v1_39;
                                        var_a6_12 = var_v0_51;
                                    } else {
                                        goto loop_560;
                                    }
                                } else {
                                    var_a2_13 = temp_a1_32;
                                    var_a6_12 = temp_v0_45;
                                }
                                spC = var_a6_12 << var_s3;
                                spE = *var_a3_32 << var_s3;
                                var_a5_10 = (s64) var_a2_13;
                                temp_t0->unk4077C = (s32) spC;
                            } else {
                                temp_a5_6 = var_a5_10 + arg3;
                                spC = *var_a5_10 << var_s3;
                                spE = *temp_a5_6 << var_s3;
                                var_a5_10 = (s64) (arg3 + temp_a5_6);
                                temp_t0->unk4077C = (s32) spC;
                            }
                        }
                        if (sp120 & 1) {
                            spC = *var_a5_10 << var_s3;
                            spE = 0;
                            temp_t0->unk4077C = (s32) spC;
                        }
                        temp_v1_25 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                        sp138 = temp_v1_25;
                        if (temp_v1_25 > 0) {
                            var_a1_37 = sp138 & 3;
                            var_a0_42 = 0;
                            if (var_a1_37 != 0) {
                                do {
                                    var_a0_42 += 1;
                                    var_a1_37 -= 1;
                                    temp_t0->unk4077C = 0;
                                } while (var_a1_37 != 0);
                            }
                            temp_a4_12 = sp138 >> 2;
                            if (temp_a4_12 != 0) {
                                if (temp_a4_12 >= 2) {
                                    var_a0_43 = var_a0_42 + 4;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
loop_572:
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    if (var_a0_43 != (sp138 - 4)) {
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        if (var_a0_43 != (sp138 - 8)) {
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            if (var_a0_43 != (sp138 - 0xC)) {
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                var_a0_43 += 0x10;
                                                temp_t0->unk4077C = 0;
                                                if (var_a0_43 != sp138) {
                                                    goto loop_572;
                                                }
                                            }
                                        }
                                    }
                                    temp_t0->unk4077C = 0;
                                } else {
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                }
                                temp_t0->unk4077C = 0;
                            }
                        }
block_295:
                        temp_t0->unk407A8 = 0;
                    }
                }
                var_ra += 2;
                var_t8_8 = (var_t8_8 - var_s3) + 0x10;
                var_s4 = (var_s4 + var_s3) - 0x10;
            }
            if (var_s4 < 0x10) {
                sp158 = var_ra;
                spF0 = (s64) var_t8_8;
                sp118 = 0;
                sp128 = 0;
                var_t3_11 = var_s4;
            } else {
                spF0 = (s64) var_t8_8;
                sp118 = 0;
                var_t3_11 = var_s4;
                var_s3_10 = var_ra;
                spF8 = arg3 & 1;
                sp128 = 0;
                sp108 = unkspB8 & 0x10;
                sp100 = unkspB8 & 0x20;
                temp_t9_20 = unkspB8 & 0xF;
                spE0 = temp_t9_20 & 1;
                temp_s6_9 = (temp_t9_20 >> 1) & 0xFF;
                temp_s0_15 = (unkspB8 >> 6) & 0xFF;
                sp140 = temp_s0_15;
                temp_s0_16 = temp_s5_13 + (temp_s0_15 << 6);
                sp120 = temp_t9_20;
                sp138 = ((s32) (0x10 - temp_t9_20) >> 1) & 0xFF;
loop_305:
                var_a7_11 = temp_s5_13;
                var_a5_11 = var_s3_10;
                if (spF8 != 0) {
                    if (sp140 != 0) {
                        var_a7_12 = temp_s5_13;
                        if (sp140 > 0) {
                            do {
                                var_v1_40 = 0;
                                var_a3_33 = var_a5_11 + arg3;
                                temp_t0->unk40514 = (s32) var_t8_8;
                                temp_t0->unk4077C = (s32) var_a7_12;
                                temp_t0->unk4077C = 0x10;
                                temp_t0->unk4077C = 0x40;
                                var_a1_38 = arg3 + var_a3_33;
                                var_v0_52 = *var_a5_11;
loop_310:
                                sp18 = var_v0_52;
                                sp1A = var_a3_33->unk1 | (var_a3_33->unk0 << 8);
                                var_v1_40 += 2;
                                temp_a3_33 = var_a1_38 + arg3;
                                temp_a0_32 = arg3 + temp_a3_33;
                                temp_t0->unk4077C = (s32) sp18;
                                temp_v0_46 = *var_a1_38;
                                if (var_v1_40 != 0x20) {
                                    sp18 = temp_v0_46;
                                    sp1A = temp_a3_33->unk1 | (temp_a3_33->unk0 << 8);
                                    var_a3_33 = temp_a0_32 + arg3;
                                    var_a1_38 = arg3 + var_a3_33;
                                    temp_t0->unk4077C = (s32) sp18;
                                    var_v0_52 = *temp_a0_32;
                                    goto loop_310;
                                }
                                var_a7_12 += 0x40;
                                sp18 = temp_v0_46;
                                sp1A = temp_a3_33->unk1 | (temp_a3_33->unk0 << 8);
                                temp_t0->unk4077C = (s32) sp18;
                                var_a5_11 = (s64) temp_a0_32;
                            } while (var_a7_12 != temp_s0_16);
                            var_a0_44 = sp140;
                        } else {
                            var_a0_44 = 0;
                        }
                        temp_t0->unk407A8 = 0;
                        var_a7_11 = (var_a0_44 << 6) + temp_s5_13;
                    }
                    if (sp100 != 0) {
                        var_v1_41 = 0;
                        var_a3_34 = var_a5_11 + arg3;
                        temp_t0->unk40510 = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_a7_11;
                        temp_t0->unk4077C = 0x10;
                        temp_t0->unk4077C = 0x20;
                        var_a1_39 = arg3 + var_a3_34;
                        var_v0_53 = *var_a5_11;
loop_317:
                        sp18 = var_v0_53;
                        sp1A = var_a3_34->unk1 | (var_a3_34->unk0 << 8);
                        var_v1_41 += 2;
                        temp_a3_34 = var_a1_39 + arg3;
                        temp_a0_33 = arg3 + temp_a3_34;
                        temp_t0->unk4077C = (s32) sp18;
                        temp_v0_47 = *var_a1_39;
                        if (var_v1_41 != 0x10) {
                            sp18 = temp_v0_47;
                            sp1A = temp_a3_34->unk1 | (temp_a3_34->unk0 << 8);
                            var_a3_34 = temp_a0_33 + arg3;
                            var_a1_39 = arg3 + var_a3_34;
                            temp_t0->unk4077C = (s32) sp18;
                            var_v0_53 = *temp_a0_33;
                            goto loop_317;
                        }
                        var_a7_11 += 0x20;
                        sp18 = temp_v0_47;
                        sp1A = temp_a3_34->unk1 | (temp_a3_34->unk0 << 8);
                        var_a5_11 = (s64) temp_a0_33;
                        temp_t0->unk4077C = (s32) sp18;
                        temp_t0->unk407A8 = 0;
                    }
                    var_v1_42 = 0;
                    if (sp108 != 0) {
                        var_a3_35 = var_a5_11 + arg3;
                        temp_t0->unk4050C = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_a7_11;
                        temp_t0->unk4077C = 0x10;
                        temp_t0->unk4077C = 0x10;
                        var_a1_40 = arg3 + var_a3_35;
                        var_v0_54 = *var_a5_11;
loop_322:
                        sp18 = var_v0_54;
                        sp1A = var_a3_35->unk1 | (var_a3_35->unk0 << 8);
                        var_v1_42 += 2;
                        temp_a3_35 = var_a1_40 + arg3;
                        temp_a0_34 = arg3 + temp_a3_35;
                        temp_t0->unk4077C = (s32) sp18;
                        temp_v0_48 = *var_a1_40;
                        if (var_v1_42 != 8) {
                            sp18 = temp_v0_48;
                            sp1A = temp_a3_35->unk1 | (temp_a3_35->unk0 << 8);
                            var_a3_35 = temp_a0_34 + arg3;
                            var_a1_40 = arg3 + var_a3_35;
                            temp_t0->unk4077C = (s32) sp18;
                            var_v0_54 = *temp_a0_34;
                            goto loop_322;
                        }
                        var_a7_11 += 0x10;
                        sp18 = temp_v0_48;
                        sp1A = temp_a3_35->unk1 | (temp_a3_35->unk0 << 8);
                        var_a5_11 = (s64) temp_a0_34;
                        temp_t0->unk4077C = (s32) sp18;
                        temp_t0->unk407A8 = 0;
                    }
                    var_a4_18 = 0;
                    if (sp120 != 0) {
                        temp_t0->unk4050C = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_a7_11;
                        temp_t0->unk4077C = 0x10;
                        temp_t0->unk4077C = (s32) sp120;
                        if (temp_s6_9 > 0) {
                            if (temp_s6_9 >= 2) {
                                var_v0_55 = *var_a5_11;
                                var_a3_36 = var_a5_11 + arg3;
                                var_v1_43 = arg3 + var_a3_36;
loop_328:
                                sp18 = var_v0_55;
                                sp1A = var_a3_36->unk1 | (var_a3_36->unk0 << 8);
                                var_a4_18 += 2;
                                var_a3_36 = var_v1_43 + arg3;
                                temp_a1_33 = arg3 + var_a3_36;
                                temp_t0->unk4077C = (s32) sp18;
                                temp_v0_49 = *var_v1_43;
                                if (var_a4_18 != temp_s6_9) {
                                    sp18 = temp_v0_49;
                                    sp1A = var_a3_36->unk1 | (var_a3_36->unk0 << 8);
                                    var_a3_36 = temp_a1_33 + arg3;
                                    var_v1_43 = arg3 + var_a3_36;
                                    temp_t0->unk4077C = (s32) sp18;
                                    var_v0_55 = *temp_a1_33;
                                    if (var_a4_18 == (temp_s6_9 - 1)) {
                                        var_a2_14 = var_v1_43;
                                        var_a6_13 = var_v0_55;
                                    } else {
                                        goto loop_328;
                                    }
                                } else {
                                    var_a2_14 = temp_a1_33;
                                    var_a6_13 = temp_v0_49;
                                }
                                sp18 = var_a6_13;
                                sp1A = var_a3_36->unk1 | (var_a3_36->unk0 << 8);
                                var_a5_11 = (s64) var_a2_14;
                            } else {
                                temp_a5_7 = var_a5_11 + arg3;
                                sp18 = *var_a5_11;
                                sp1A = temp_a5_7->unk1 | (temp_a5_7->unk0 << 8);
                                var_a5_11 = (s64) (arg3 + temp_a5_7);
                            }
                            temp_t0->unk4077C = (s32) sp18;
                        }
                        if (spE0 != 0) {
                            sp1A = 0;
                            sp18 = *var_a5_11;
                            temp_t0->unk4077C = (s32) sp18;
                        }
                        var_a1_41 = 0;
                        if (sp138 > 0) {
                            var_a3_37 = sp138 & 3;
                            if (var_a3_37 != 0) {
                                do {
                                    var_a1_41 += 1;
                                    var_a3_37 -= 1;
                                    temp_t0->unk4077C = 0;
                                } while (var_a3_37 != 0);
                            }
                            temp_a3_36 = sp138 >> 2;
                            if (temp_a3_36 != 0) {
                                if (temp_a3_36 >= 2) {
                                    var_a0_45 = var_a1_41 + 4;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
loop_341:
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    if (var_a0_45 != (sp138 - 4)) {
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        if (var_a0_45 != (sp138 - 8)) {
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            if (var_a0_45 != (sp138 - 0xC)) {
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                var_a0_45 += 0x10;
                                                temp_t0->unk4077C = 0;
                                                if (var_a0_45 == sp138) {

                                                } else {
                                                    goto loop_341;
                                                }
                                            }
                                        }
                                    }
                                    temp_t0->unk4077C = 0;
                                } else {
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                }
                                temp_t0->unk4077C = 0;
                            }
                        }
                        goto block_303;
                    }
                } else {
                    var_t1_11 = temp_s5_13;
                    if (sp140 != 0) {
                        var_a0_46 = 0;
                        if (sp140 > 0) {
                            var_t1_12 = temp_s5_13;
                            do {
                                var_a0_47 = 0;
                                var_t0_9 = var_a5_11 + arg3;
                                var_a7_13 = arg3 + var_t0_9;
                                var_a3_38 = var_a7_13 + arg3;
                                temp_t0->unk40514 = (s32) var_t8_8;
                                temp_t0->unk4077C = (s32) var_t1_12;
                                temp_t0->unk4077C = 0x10;
                                temp_t0->unk4077C = 0x40;
                                var_a1_42 = arg3 + var_a3_38;
                                var_v1_44 = *var_a5_11;
loop_352:
                                sp14 = var_v1_44;
                                sp16 = *var_t0_9;
                                temp_t0->unk4077C = (s32) sp14;
                                var_a0_47 += 4;
                                temp_t0_6 = var_a1_42 + arg3;
                                sp16 = *var_a3_38;
                                sp14 = *var_a7_13;
                                temp_a3_37 = arg3 + temp_t0_6;
                                temp_a7_7 = temp_a3_37 + arg3;
                                temp_v1_26 = arg3 + temp_a7_7;
                                temp_t0->unk4077C = (s32) sp14;
                                temp_v0_50 = *var_a1_42;
                                if (var_a0_47 != 0x20) {
                                    sp14 = temp_v0_50;
                                    sp16 = *temp_t0_6;
                                    temp_t0->unk4077C = (s32) sp14;
                                    var_t0_9 = temp_v1_26 + arg3;
                                    sp16 = *temp_a7_7;
                                    sp14 = *temp_a3_37;
                                    var_a7_13 = arg3 + var_t0_9;
                                    var_a3_38 = var_a7_13 + arg3;
                                    var_a1_42 = arg3 + var_a3_38;
                                    temp_t0->unk4077C = (s32) sp14;
                                    var_v1_44 = *temp_v1_26;
                                    goto loop_352;
                                }
                                var_t1_12 += 0x40;
                                sp14 = temp_v0_50;
                                sp16 = *temp_t0_6;
                                temp_t0->unk4077C = (s32) sp14;
                                sp16 = *temp_a7_7;
                                sp14 = *temp_a3_37;
                                temp_t0->unk4077C = (s32) sp14;
                                var_a5_11 = (s64) temp_v1_26;
                            } while (var_t1_12 != temp_s0_16);
                            var_a0_46 = sp140;
                        }
                        temp_t0->unk407A8 = 0;
                        var_t1_11 = (var_a0_46 << 6) + temp_s5_13;
                    }
                    var_a0_48 = 0;
                    if (sp100 != 0) {
                        var_a7_14 = var_a5_11 + arg3;
                        var_a4_19 = arg3 + var_a7_14;
                        var_a3_39 = var_a4_19 + arg3;
                        temp_t0->unk40510 = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_t1_11;
                        temp_t0->unk4077C = 0x10;
                        temp_t0->unk4077C = 0x20;
                        var_a1_43 = arg3 + var_a3_39;
                        var_v1_45 = *var_a5_11;
loop_359:
                        sp14 = var_v1_45;
                        sp16 = *var_a7_14;
                        temp_t0->unk4077C = (s32) sp14;
                        var_a0_48 += 4;
                        temp_a7_8 = var_a1_43 + arg3;
                        sp16 = *var_a3_39;
                        sp14 = *var_a4_19;
                        temp_a3_38 = arg3 + temp_a7_8;
                        temp_a4_13 = temp_a3_38 + arg3;
                        temp_v1_27 = arg3 + temp_a4_13;
                        temp_t0->unk4077C = (s32) sp14;
                        temp_v0_51 = *var_a1_43;
                        if (var_a0_48 != 0x10) {
                            sp14 = temp_v0_51;
                            sp16 = *temp_a7_8;
                            temp_t0->unk4077C = (s32) sp14;
                            var_a7_14 = temp_v1_27 + arg3;
                            sp16 = *temp_a4_13;
                            sp14 = *temp_a3_38;
                            var_a4_19 = arg3 + var_a7_14;
                            var_a3_39 = var_a4_19 + arg3;
                            var_a1_43 = arg3 + var_a3_39;
                            temp_t0->unk4077C = (s32) sp14;
                            var_v1_45 = *temp_v1_27;
                            goto loop_359;
                        }
                        var_t1_11 += 0x20;
                        sp14 = temp_v0_51;
                        sp16 = *temp_a7_8;
                        temp_t0->unk4077C = (s32) sp14;
                        sp16 = *temp_a4_13;
                        sp14 = *temp_a3_38;
                        var_a5_11 = (s64) temp_v1_27;
                        temp_t0->unk4077C = (s32) sp14;
                        temp_t0->unk407A8 = 0;
                    }
                    if (sp108 != 0) {
                        temp_t0->unk4050C = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_t1_11;
                        temp_t0->unk4077C = 0x10;
                        temp_t0->unk4077C = 0x10;
                        temp_a5_8 = var_a5_11 + arg3;
                        sp14 = *var_a5_11;
                        sp16 = *temp_a5_8;
                        temp_t0->unk4077C = (s32) sp14;
                        temp_a5_9 = arg3 + temp_a5_8;
                        temp_a5_10 = temp_a5_9 + arg3;
                        sp14 = *temp_a5_9;
                        sp16 = *temp_a5_10;
                        temp_t0->unk4077C = (s32) sp14;
                        temp_a5_11 = arg3 + temp_a5_10;
                        temp_a5_12 = temp_a5_11 + arg3;
                        sp14 = *temp_a5_11;
                        sp16 = *temp_a5_12;
                        temp_t0->unk4077C = (s32) sp14;
                        temp_a5_13 = arg3 + temp_a5_12;
                        temp_a5_14 = temp_a5_13 + arg3;
                        sp14 = *temp_a5_13;
                        sp16 = *temp_a5_14;
                        temp_t0->unk4077C = (s32) sp14;
                        temp_a5_15 = arg3 + temp_a5_14;
                        temp_a5_16 = temp_a5_15 + arg3;
                        sp14 = *temp_a5_15;
                        sp16 = *temp_a5_16;
                        temp_t0->unk4077C = (s32) sp14;
                        temp_a5_17 = arg3 + temp_a5_16;
                        temp_a5_18 = temp_a5_17 + arg3;
                        sp14 = *temp_a5_17;
                        sp16 = *temp_a5_18;
                        temp_t0->unk4077C = (s32) sp14;
                        temp_a5_19 = arg3 + temp_a5_18;
                        temp_a5_20 = temp_a5_19 + arg3;
                        sp14 = *temp_a5_19;
                        sp16 = *temp_a5_20;
                        temp_t0->unk4077C = (s32) sp14;
                        temp_a5_21 = arg3 + temp_a5_20;
                        temp_a5_22 = temp_a5_21 + arg3;
                        sp14 = *temp_a5_21;
                        sp16 = *temp_a5_22;
                        var_t1_11 += 0x10;
                        var_a5_11 = (s64) (arg3 + temp_a5_22);
                        temp_t0->unk4077C = (s32) sp14;
                        temp_t0->unk407A8 = 0;
                    }
                    if (sp120 != 0) {
                        temp_t0->unk4050C = (s32) var_t8_8;
                        temp_t0->unk4077C = (s32) var_t1_11;
                        temp_t0->unk4077C = 0x10;
                        temp_t0->unk4077C = (s32) sp120;
                        if (temp_s6_9 > 0) {
                            var_a2_15 = 0;
                            if (temp_s6_9 & 1) {
                                temp_a5_23 = var_a5_11 + arg3;
                                sp14 = *var_a5_11;
                                sp16 = *temp_a5_23;
                                var_a5_11 = (s64) (arg3 + temp_a5_23);
                                temp_t0->unk4077C = (s32) sp14;
                                var_a2_15 = 1;
                            }
                            temp_a6_3 = temp_s6_9 >> 1;
                            if (temp_a6_3 != 0) {
                                if (temp_a6_3 >= 2) {
                                    var_t0_10 = var_a2_15;
                                    var_v1_46 = *var_a5_11;
                                    var_a7_15 = var_a5_11 + arg3;
                                    var_a4_20 = arg3 + var_a7_15;
                                    var_a3_40 = var_a4_20 + arg3;
                                    var_a6_14 = arg3 + var_a3_40;
loop_370:
                                    sp14 = var_v1_46;
                                    sp16 = *var_a7_15;
                                    temp_t0->unk4077C = (s32) sp14;
                                    var_t0_10 += 4;
                                    var_a7_15 = var_a6_14 + arg3;
                                    sp16 = *var_a3_40;
                                    sp14 = *var_a4_20;
                                    var_a4_20 = arg3 + var_a7_15;
                                    var_a3_40 = var_a4_20 + arg3;
                                    temp_a1_34 = arg3 + var_a3_40;
                                    temp_t0->unk4077C = (s32) sp14;
                                    temp_v1_28 = *var_a6_14;
                                    if (var_t0_10 != temp_s6_9) {
                                        sp14 = temp_v1_28;
                                        sp16 = *var_a7_15;
                                        temp_t0->unk4077C = (s32) sp14;
                                        var_a7_15 = temp_a1_34 + arg3;
                                        sp16 = *var_a3_40;
                                        sp14 = *var_a4_20;
                                        var_a4_20 = arg3 + var_a7_15;
                                        var_a3_40 = var_a4_20 + arg3;
                                        var_a6_14 = arg3 + var_a3_40;
                                        temp_t0->unk4077C = (s32) sp14;
                                        var_v1_46 = *temp_a1_34;
                                        if (var_t0_10 == (temp_s6_9 - 2)) {
                                            var_a1_44 = var_v1_46;
                                        } else {
                                            goto loop_370;
                                        }
                                    } else {
                                        var_a6_14 = temp_a1_34;
                                        var_a1_44 = temp_v1_28;
                                    }
                                    sp14 = var_a1_44;
                                    sp16 = *var_a7_15;
                                    temp_t0->unk4077C = (s32) sp14;
                                    sp14 = *var_a4_20;
                                    sp16 = *var_a3_40;
                                    var_a5_11 = (s64) var_a6_14;
                                    temp_t0->unk4077C = (s32) sp14;
                                } else {
                                    temp_a0_35 = var_a5_11 + arg3;
                                    sp14 = *var_a5_11;
                                    sp16 = *temp_a0_35;
                                    temp_t0->unk4077C = (s32) sp14;
                                    temp_a0_36 = arg3 + temp_a0_35;
                                    temp_a0_37 = temp_a0_36 + arg3;
                                    sp14 = *temp_a0_36;
                                    sp16 = *temp_a0_37;
                                    temp_t0->unk4077C = (s32) sp14;
                                    var_a5_11 = (s64) (arg3 + temp_a0_37);
                                }
                            }
                        }
                        if (spE0 != 0) {
                            sp16 = 0;
                            sp14 = *var_a5_11;
                            temp_t0->unk4077C = (s32) sp14;
                        }
                        var_a0_49 = 0;
                        if (sp138 > 0) {
                            var_a1_45 = sp138 & 3;
                            var_a3_41 = sp138 >> 2;
                            if (var_a1_45 != 0) {
                                do {
                                    var_a0_49 += 1;
                                    var_a1_45 -= 1;
                                    temp_t0->unk4077C = 0;
                                } while (var_a1_45 != 0);
                                var_a3_41 = sp138 >> 2;
                            }
                            if (var_a3_41 != 0) {
                                if (var_a3_41 >= 2) {
                                    var_a0_50 = var_a0_49 + 4;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
loop_383:
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    if (var_a0_50 != (sp138 - 4)) {
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        if (var_a0_50 != (sp138 - 8)) {
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            if (var_a0_50 != (sp138 - 0xC)) {
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                var_a0_50 += 0x10;
                                                temp_t0->unk4077C = 0;
                                                if (var_a0_50 != sp138) {
                                                    goto loop_383;
                                                }
                                            }
                                        }
                                    }
                                    temp_t0->unk4077C = 0;
                                } else {
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                }
                                temp_t0->unk4077C = 0;
                            }
                        }
block_303:
                        temp_t0->unk407A8 = 0;
                    }
                }
                var_t3_11 -= 0x10;
                var_s3_10 += 2;
                var_t8_8 += 0x10;
                sp128 += 0x10;
                sp118 += 1;
                if (var_t3_11 >= 0x10) {
                    goto loop_305;
                }
            }
            sp158 = var_ra;
            if (var_t3_11 != 0) {
                sp120 = unkspB8 & 0xF;
                sp108 = unkspB8 & 0x10;
                sp140 = (unkspB8 >> 6) & 0xFF;
                sp100 = unkspB8 & 0x20;
                var_a5_12 = (sp118 * 2) + sp158;
                if (arg3 & 1) {
                    var_a7_16 = temp_s5_13;
                    if (sp140 != 0) {
                        if (sp140 > 0) {
                            var_t0_11 = temp_s5_13;
                            do {
                                var_v1_47 = 0;
                                var_a3_42 = var_a5_12 + arg3;
                                temp_t0->unk40514 = (s32) (spF0 + sp128);
                                temp_t0->unk4077C = (s32) var_t0_11;
                                temp_t0->unk4077C = (s32) var_t3_11;
                                temp_t0->unk4077C = 0x40;
                                var_a1_46 = arg3 + var_a3_42;
                                var_v0_56 = *var_a5_12;
loop_400:
                                sp20 = var_v0_56;
                                sp22 = var_a3_42->unk1 | (var_a3_42->unk0 << 8);
                                var_v1_47 += 2;
                                temp_a3_39 = var_a1_46 + arg3;
                                temp_a0_38 = arg3 + temp_a3_39;
                                temp_t0->unk4077C = (s32) sp20;
                                temp_v0_52 = *var_a1_46;
                                if (var_v1_47 != 0x20) {
                                    sp20 = temp_v0_52;
                                    sp22 = temp_a3_39->unk1 | (temp_a3_39->unk0 << 8);
                                    var_a3_42 = temp_a0_38 + arg3;
                                    var_a1_46 = arg3 + var_a3_42;
                                    temp_t0->unk4077C = (s32) sp20;
                                    var_v0_56 = *temp_a0_38;
                                    goto loop_400;
                                }
                                var_t0_11 += 0x40;
                                sp20 = temp_v0_52;
                                sp22 = temp_a3_39->unk1 | (temp_a3_39->unk0 << 8);
                                temp_t0->unk4077C = (s32) sp20;
                                var_a5_12 = temp_a0_38;
                            } while (var_t0_11 != (temp_s5_13 + (sp140 << 6)));
                            var_a0_51 = sp140;
                        } else {
                            var_a0_51 = 0;
                        }
                        temp_t0->unk407A8 = 0;
                        var_a7_16 = (var_a0_51 << 6) + temp_s5_13;
                    }
                    if (sp100 != 0) {
                        var_v1_48 = 0;
                        var_a3_43 = var_a5_12 + arg3;
                        temp_t0->unk40510 = (s32) (spF0 + sp128);
                        temp_t0->unk4077C = (s32) var_a7_16;
                        temp_t0->unk4077C = (s32) var_t3_11;
                        temp_t0->unk4077C = 0x20;
                        var_a1_47 = arg3 + var_a3_43;
                        var_v0_57 = *var_a5_12;
loop_407:
                        sp20 = var_v0_57;
                        sp22 = var_a3_43->unk1 | (var_a3_43->unk0 << 8);
                        var_v1_48 += 2;
                        temp_a3_40 = var_a1_47 + arg3;
                        temp_a0_39 = arg3 + temp_a3_40;
                        temp_t0->unk4077C = (s32) sp20;
                        temp_v0_53 = *var_a1_47;
                        if (var_v1_48 != 0x10) {
                            sp20 = temp_v0_53;
                            sp22 = temp_a3_40->unk1 | (temp_a3_40->unk0 << 8);
                            var_a3_43 = temp_a0_39 + arg3;
                            var_a1_47 = arg3 + var_a3_43;
                            temp_t0->unk4077C = (s32) sp20;
                            var_v0_57 = *temp_a0_39;
                            goto loop_407;
                        }
                        sp20 = temp_v0_53;
                        sp22 = temp_a3_40->unk1 | (temp_a3_40->unk0 << 8);
                        var_a5_12 = temp_a0_39;
                        var_a7_16 += 0x20;
                        temp_t0->unk4077C = (s32) sp20;
                        temp_t0->unk407A8 = 0;
                    }
                    var_v1_49 = 0;
                    if (sp108 != 0) {
                        var_a3_44 = var_a5_12 + arg3;
                        var_a1_48 = arg3 + var_a3_44;
                        temp_t0->unk4050C = (s32) (spF0 + sp128);
                        temp_t0->unk4077C = (s32) var_a7_16;
                        temp_t0->unk4077C = (s32) var_t3_11;
                        temp_t0->unk4077C = 0x10;
                        var_v0_58 = *var_a5_12;
loop_412:
                        sp20 = var_v0_58;
                        sp22 = var_a3_44->unk1 | (var_a3_44->unk0 << 8);
                        var_v1_49 += 2;
                        temp_a3_41 = var_a1_48 + arg3;
                        temp_a0_40 = arg3 + temp_a3_41;
                        temp_t0->unk4077C = (s32) sp20;
                        temp_v0_54 = *var_a1_48;
                        if (var_v1_49 != 8) {
                            sp20 = temp_v0_54;
                            sp22 = temp_a3_41->unk1 | (temp_a3_41->unk0 << 8);
                            var_a3_44 = temp_a0_40 + arg3;
                            var_a1_48 = arg3 + var_a3_44;
                            temp_t0->unk4077C = (s32) sp20;
                            var_v0_58 = *temp_a0_40;
                            goto loop_412;
                        }
                        sp20 = temp_v0_54;
                        sp22 = temp_a3_41->unk1 | (temp_a3_41->unk0 << 8);
                        var_a5_12 = temp_a0_40;
                        var_a7_16 += 0x10;
                        temp_t0->unk4077C = (s32) sp20;
                        temp_t0->unk407A8 = 0;
                    }
                    if (sp120 != 0) {
                        temp_s6_10 = (sp120 >> 1) & 0xFF;
                        temp_t0->unk4050C = (s32) (spF0 + sp128);
                        temp_t0->unk4077C = (s32) var_a7_16;
                        temp_t0->unk4077C = (s32) var_t3_11;
                        temp_t0->unk4077C = (s32) sp120;
                        if (temp_s6_10 > 0) {
                            var_a4_21 = 0;
                            if (temp_s6_10 >= 2) {
                                var_v0_59 = *var_a5_12;
                                var_a3_45 = var_a5_12 + arg3;
                                var_v1_50 = arg3 + var_a3_45;
loop_418:
                                sp20 = var_v0_59;
                                sp22 = var_a3_45->unk1 | (var_a3_45->unk0 << 8);
                                var_a4_21 += 2;
                                var_a3_45 = var_v1_50 + arg3;
                                temp_a1_35 = arg3 + var_a3_45;
                                temp_t0->unk4077C = (s32) sp20;
                                temp_v0_55 = *var_v1_50;
                                if (var_a4_21 != temp_s6_10) {
                                    sp20 = temp_v0_55;
                                    sp22 = var_a3_45->unk1 | (var_a3_45->unk0 << 8);
                                    var_a3_45 = temp_a1_35 + arg3;
                                    var_v1_50 = arg3 + var_a3_45;
                                    temp_t0->unk4077C = (s32) sp20;
                                    var_v0_59 = *temp_a1_35;
                                    if (var_a4_21 == (temp_s6_10 - 1)) {
                                        var_a2_16 = var_v1_50;
                                        var_a6_15 = var_v0_59;
                                    } else {
                                        goto loop_418;
                                    }
                                } else {
                                    var_a2_16 = temp_a1_35;
                                    var_a6_15 = temp_v0_55;
                                }
                                sp20 = var_a6_15;
                                sp22 = var_a3_45->unk1 | (var_a3_45->unk0 << 8);
                                var_a5_12 = var_a2_16;
                                temp_t0->unk4077C = (s32) sp20;
                            } else {
                                temp_a5_24 = var_a5_12 + arg3;
                                sp20 = *var_a5_12;
                                sp22 = temp_a5_24->unk1 | (temp_a5_24->unk0 << 8);
                                var_a5_12 = arg3 + temp_a5_24;
                                temp_t0->unk4077C = (s32) sp20;
                            }
                        }
                        if (sp120 & 1) {
                            sp20 = *var_a5_12;
                            sp22 = 0;
                            temp_t0->unk4077C = (s32) sp20;
                        }
                        temp_v1_29 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                        sp138 = temp_v1_29;
                        if (temp_v1_29 > 0) {
                            var_a1_49 = sp138 & 3;
                            var_a0_52 = 0;
                            if (var_a1_49 != 0) {
                                do {
                                    var_a0_52 += 1;
                                    var_a1_49 -= 1;
                                    temp_t0->unk4077C = 0;
                                } while (var_a1_49 != 0);
                            }
                            temp_a1_36 = sp138 >> 2;
                            if (temp_a1_36 != 0) {
                                var_a0_53 = var_a0_52 + 4;
                                if (temp_a1_36 >= 2) {
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
loop_430:
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    if (var_a0_53 != (sp138 - 4)) {
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        if (var_a0_53 != (sp138 - 8)) {
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            if (var_a0_53 != (sp138 - 0xC)) {
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                var_a0_53 += 0x10;
                                                temp_t0->unk4077C = 0;
                                                if (var_a0_53 != sp138) {
                                                    goto loop_430;
                                                }
                                            }
                                        }
                                    }
                                    temp_t0->unk4077C = 0;
                                } else {
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                }
                                temp_t0->unk4077C = 0;
                            }
                        }
                        goto block_219;
                    }
                } else {
                    var_t1_13 = temp_s5_13;
                    if (sp140 != 0) {
                        if (sp140 > 0) {
                            var_ra_5 = temp_s5_13;
                            do {
                                var_a0_54 = 0;
                                var_t0_12 = var_a5_12 + arg3;
                                var_a7_17 = arg3 + var_t0_12;
                                var_a3_46 = var_a7_17 + arg3;
                                temp_t0->unk40514 = (s32) (spF0 + sp128);
                                temp_t0->unk4077C = (s32) var_ra_5;
                                temp_t0->unk4077C = (s32) var_t3_11;
                                temp_t0->unk4077C = 0x40;
                                var_a1_50 = arg3 + var_a3_46;
                                var_v1_51 = *var_a5_12;
loop_500:
                                sp1C = var_v1_51;
                                sp1E = *var_t0_12;
                                temp_t0->unk4077C = (s32) sp1C;
                                var_a0_54 += 4;
                                temp_t0_7 = var_a1_50 + arg3;
                                sp1E = *var_a3_46;
                                sp1C = *var_a7_17;
                                temp_a3_42 = arg3 + temp_t0_7;
                                temp_a7_9 = temp_a3_42 + arg3;
                                temp_v1_30 = arg3 + temp_a7_9;
                                temp_t0->unk4077C = (s32) sp1C;
                                temp_v0_56 = *var_a1_50;
                                if (var_a0_54 != 0x20) {
                                    sp1C = temp_v0_56;
                                    sp1E = *temp_t0_7;
                                    temp_t0->unk4077C = (s32) sp1C;
                                    var_t0_12 = temp_v1_30 + arg3;
                                    sp1E = *temp_a7_9;
                                    sp1C = *temp_a3_42;
                                    var_a7_17 = arg3 + var_t0_12;
                                    var_a3_46 = var_a7_17 + arg3;
                                    var_a1_50 = arg3 + var_a3_46;
                                    temp_t0->unk4077C = (s32) sp1C;
                                    var_v1_51 = *temp_v1_30;
                                    goto loop_500;
                                }
                                var_ra_5 += 0x40;
                                sp1C = temp_v0_56;
                                sp1E = *temp_t0_7;
                                temp_t0->unk4077C = (s32) sp1C;
                                sp1E = *temp_a7_9;
                                sp1C = *temp_a3_42;
                                temp_t0->unk4077C = (s32) sp1C;
                                var_a5_12 = temp_v1_30;
                            } while (var_ra_5 != (temp_s5_13 + (sp140 << 6)));
                            var_a0_55 = sp140;
                        } else {
                            var_a0_55 = 0;
                        }
                        temp_t0->unk407A8 = 0;
                        var_t1_13 = (var_a0_55 << 6) + temp_s5_13;
                    }
                    if (sp100 != 0) {
                        var_a0_56 = 0;
                        var_a6_16 = var_a5_12 + arg3;
                        var_a4_22 = arg3 + var_a6_16;
                        var_a3_47 = var_a4_22 + arg3;
                        temp_t0->unk40510 = (s32) (spF0 + sp128);
                        temp_t0->unk4077C = (s32) var_t1_13;
                        temp_t0->unk4077C = (s32) var_t3_11;
                        temp_t0->unk4077C = 0x20;
                        var_a1_51 = arg3 + var_a3_47;
                        var_v1_52 = *var_a5_12;
loop_507:
                        sp1C = var_v1_52;
                        sp1E = *var_a6_16;
                        temp_t0->unk4077C = (s32) sp1C;
                        var_a0_56 += 4;
                        temp_a6_4 = var_a1_51 + arg3;
                        sp1E = *var_a3_47;
                        sp1C = *var_a4_22;
                        temp_a3_43 = arg3 + temp_a6_4;
                        temp_a4_14 = temp_a3_43 + arg3;
                        temp_v1_31 = arg3 + temp_a4_14;
                        temp_t0->unk4077C = (s32) sp1C;
                        temp_v0_57 = *var_a1_51;
                        if (var_a0_56 != 0x10) {
                            sp1C = temp_v0_57;
                            sp1E = *temp_a6_4;
                            temp_t0->unk4077C = (s32) sp1C;
                            var_a6_16 = temp_v1_31 + arg3;
                            sp1E = *temp_a4_14;
                            sp1C = *temp_a3_43;
                            var_a4_22 = arg3 + var_a6_16;
                            var_a3_47 = var_a4_22 + arg3;
                            var_a1_51 = arg3 + var_a3_47;
                            temp_t0->unk4077C = (s32) sp1C;
                            var_v1_52 = *temp_v1_31;
                            goto loop_507;
                        }
                        sp1C = temp_v0_57;
                        sp1E = *temp_a6_4;
                        temp_t0->unk4077C = (s32) sp1C;
                        sp1C = *temp_a3_43;
                        sp1E = *temp_a4_14;
                        var_a5_12 = temp_v1_31;
                        var_t1_13 += 0x20;
                        temp_t0->unk4077C = (s32) sp1C;
                        temp_t0->unk407A8 = 0;
                    }
                    if (sp108 != 0) {
                        temp_t0->unk4050C = (s32) (spF0 + sp128);
                        temp_t0->unk4077C = (s32) var_t1_13;
                        temp_t0->unk4077C = (s32) var_t3_11;
                        temp_t0->unk4077C = 0x10;
                        temp_a5_25 = var_a5_12 + arg3;
                        sp1C = *var_a5_12;
                        sp1E = *temp_a5_25;
                        temp_t0->unk4077C = (s32) sp1C;
                        temp_a5_26 = arg3 + temp_a5_25;
                        temp_a5_27 = temp_a5_26 + arg3;
                        sp1C = *temp_a5_26;
                        sp1E = *temp_a5_27;
                        temp_t0->unk4077C = (s32) sp1C;
                        temp_a5_28 = arg3 + temp_a5_27;
                        temp_a5_29 = temp_a5_28 + arg3;
                        sp1C = *temp_a5_28;
                        sp1E = *temp_a5_29;
                        temp_t0->unk4077C = (s32) sp1C;
                        temp_a5_30 = arg3 + temp_a5_29;
                        temp_a5_31 = temp_a5_30 + arg3;
                        sp1C = *temp_a5_30;
                        sp1E = *temp_a5_31;
                        temp_t0->unk4077C = (s32) sp1C;
                        temp_a5_32 = arg3 + temp_a5_31;
                        temp_a5_33 = temp_a5_32 + arg3;
                        sp1C = *temp_a5_32;
                        sp1E = *temp_a5_33;
                        temp_t0->unk4077C = (s32) sp1C;
                        temp_a5_34 = arg3 + temp_a5_33;
                        temp_a5_35 = temp_a5_34 + arg3;
                        sp1C = *temp_a5_34;
                        sp1E = *temp_a5_35;
                        temp_t0->unk4077C = (s32) sp1C;
                        temp_a5_36 = arg3 + temp_a5_35;
                        temp_a5_37 = temp_a5_36 + arg3;
                        sp1C = *temp_a5_36;
                        sp1E = *temp_a5_37;
                        temp_t0->unk4077C = (s32) sp1C;
                        temp_a5_38 = arg3 + temp_a5_37;
                        temp_a5_39 = temp_a5_38 + arg3;
                        sp1C = *temp_a5_38;
                        sp1E = *temp_a5_39;
                        var_a5_12 = arg3 + temp_a5_39;
                        temp_t0->unk4077C = (s32) sp1C;
                        temp_t0->unk407A8 = 0;
                        var_t1_13 += 0x10;
                    }
                    if (sp120 != 0) {
                        temp_s6_11 = (sp120 >> 1) & 0xFF;
                        temp_t0->unk4050C = (s32) (spF0 + sp128);
                        temp_t0->unk4077C = (s32) var_t1_13;
                        temp_t0->unk4077C = (s32) var_t3_11;
                        temp_t0->unk4077C = (s32) sp120;
                        if (temp_s6_11 > 0) {
                            var_a0_57 = 0;
                            if (temp_s6_11 & 1) {
                                temp_a5_40 = var_a5_12 + arg3;
                                sp1C = *var_a5_12;
                                sp1E = *temp_a5_40;
                                var_a0_57 = 1;
                                var_a5_12 = arg3 + temp_a5_40;
                                temp_t0->unk4077C = (s32) sp1C;
                            }
                            temp_a4_15 = temp_s6_11 >> 1;
                            if (temp_a4_15 != 0) {
                                if (temp_a4_15 >= 2) {
                                    var_v1_53 = *var_a5_12;
                                    var_a7_18 = var_a5_12 + arg3;
                                    var_t0_13 = var_a0_57;
                                    var_a4_23 = arg3 + var_a7_18;
                                    var_a3_48 = var_a4_23 + arg3;
                                    var_a6_17 = arg3 + var_a3_48;
loop_518:
                                    sp1C = var_v1_53;
                                    sp1E = *var_a7_18;
                                    temp_t0->unk4077C = (s32) sp1C;
                                    var_t0_13 += 4;
                                    var_a7_18 = var_a6_17 + arg3;
                                    sp1E = *var_a3_48;
                                    sp1C = *var_a4_23;
                                    var_a4_23 = arg3 + var_a7_18;
                                    var_a3_48 = var_a4_23 + arg3;
                                    temp_a1_37 = arg3 + var_a3_48;
                                    temp_t0->unk4077C = (s32) sp1C;
                                    temp_v1_32 = *var_a6_17;
                                    if (var_t0_13 != temp_s6_11) {
                                        sp1C = temp_v1_32;
                                        sp1E = *var_a7_18;
                                        temp_t0->unk4077C = (s32) sp1C;
                                        var_a7_18 = temp_a1_37 + arg3;
                                        sp1E = *var_a3_48;
                                        sp1C = *var_a4_23;
                                        var_a4_23 = arg3 + var_a7_18;
                                        var_a3_48 = var_a4_23 + arg3;
                                        var_a6_17 = arg3 + var_a3_48;
                                        temp_t0->unk4077C = (s32) sp1C;
                                        var_v1_53 = *temp_a1_37;
                                        if (var_t0_13 == (temp_s6_11 - 2)) {
                                            var_a2_17 = var_v1_53;
                                        } else {
                                            goto loop_518;
                                        }
                                    } else {
                                        var_a6_17 = temp_a1_37;
                                        var_a2_17 = temp_v1_32;
                                    }
                                    sp1C = var_a2_17;
                                    sp1E = *var_a7_18;
                                    temp_t0->unk4077C = (s32) sp1C;
                                    sp1C = *var_a4_23;
                                    sp1E = *var_a3_48;
                                    var_a5_12 = var_a6_17;
                                    temp_t0->unk4077C = (s32) sp1C;
                                } else {
                                    temp_a0_41 = var_a5_12 + arg3;
                                    sp1C = *var_a5_12;
                                    sp1E = *temp_a0_41;
                                    temp_t0->unk4077C = (s32) sp1C;
                                    temp_a0_42 = arg3 + temp_a0_41;
                                    temp_a0_43 = temp_a0_42 + arg3;
                                    sp1C = *temp_a0_42;
                                    sp1E = *temp_a0_43;
                                    temp_t0->unk4077C = (s32) sp1C;
                                    var_a5_12 = arg3 + temp_a0_43;
                                }
                            }
                        }
                        if (sp120 & 1) {
                            sp1C = *var_a5_12;
                            sp1E = 0;
                            temp_t0->unk4077C = (s32) sp1C;
                        }
                        temp_v0_58 = ((s32) (0x10 - sp120) >> 1) & 0xFF;
                        sp138 = temp_v0_58;
                        if (temp_v0_58 > 0) {
                            var_a1_52 = sp138 & 3;
                            var_a0_58 = 0;
                            if (var_a1_52 != 0) {
                                do {
                                    var_a0_58 += 1;
                                    var_a1_52 -= 1;
                                    temp_t0->unk4077C = 0;
                                } while (var_a1_52 != 0);
                            }
                            temp_a4_16 = sp138 >> 2;
                            if (temp_a4_16 != 0) {
                                if (temp_a4_16 >= 2) {
                                    var_a0_59 = var_a0_58 + 4;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
loop_530:
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    if (var_a0_59 != (sp138 - 4)) {
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        temp_t0->unk4077C = 0;
                                        if (var_a0_59 != (sp138 - 8)) {
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            temp_t0->unk4077C = 0;
                                            if (var_a0_59 != (sp138 - 0xC)) {
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                temp_t0->unk4077C = 0;
                                                var_a0_59 += 0x10;
                                                temp_t0->unk4077C = 0;
                                                if (var_a0_59 != sp138) {
                                                    goto loop_530;
                                                }
                                            }
                                        }
                                    }
                                    temp_t0->unk4077C = 0;
                                } else {
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                    temp_t0->unk4077C = 0;
                                }
                                temp_t0->unk4077C = 0;
                            }
                        }
block_219:
                        temp_t0->unk407A8 = 0;
                    }
                }
            }
        }
    }
    spD8->unk4E4 = 0;
}

void expReadConvertPixels(void *arg0, u32 arg1, void *arg2, s64 arg3, s32 *arg4, s32 arg5, u16 arg7) {
    s64 spE8;
    s64 spE0;
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
    u16 sp8;
    u16 sp6;
    u16 sp4;
    s32 sp0;
    s32 *temp_a3_2;
    s32 *var_a3_3;
    s32 *var_a5;
    s32 *var_s2_2;
    s32 *var_t2_3;
    s32 *var_t8_2;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a5_4;
    s32 temp_a6;
    s32 temp_a6_3;
    s32 temp_a7_3;
    s32 temp_ra;
    s32 temp_s0_2;
    s32 temp_s6;
    s32 temp_s6_2;
    s32 temp_t1;
    s32 temp_t8_2;
    s32 temp_t9_3;
    s32 temp_v1_2;
    s32 temp_v1_4;
    s32 var_a1;
    s32 var_a2;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_at;
    s32 var_s0;
    s32 var_s2;
    s32 var_s2_4;
    s32 var_s3;
    s32 var_s8_2;
    s32 var_t0_2;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t3_3;
    s32 var_t8;
    s32 var_t8_3;
    s32 var_t9;
    s32 var_t9_2;
    s64 temp_a1;
    s64 temp_at_3;
    s64 temp_t8;
    s64 temp_t9;
    s64 temp_t9_2;
    s64 temp_v0_2;
    s64 temp_v1_6;
    s64 var_a2_2;
    s64 var_a4;
    s64 var_a4_2;
    s64 var_a4_3;
    s64 var_s0_2;
    s64 var_s1;
    s64 var_s1_2;
    s64 var_s5;
    s64 var_s7;
    s64 var_t0;
    s64 var_t3;
    s64 var_t3_2;
    s64 var_t3_4;
    u16 temp_s3;
    u16 temp_v1_5;
    u16 var_a2_4;
    u16 var_a6;
    u16 var_a7;
    u16 var_s2_3;
    u16 var_s2_5;
    u32 temp_v0;
    u32 var_s6;
    u8 temp_a5;
    u8 temp_a5_2;
    u8 temp_a5_3;
    u8 temp_a6_2;
    u8 temp_a7;
    u8 temp_a7_2;
    u8 temp_at_2;
    u8 temp_s3_2;
    u8 temp_v1;
    u8 temp_v1_3;
    void *temp_at;
    void *temp_s0;
    void *temp_s0_3;
    void *temp_s7;
    void *var_s8;

    var_a7 = arg7;
    var_s2 = 0;
    var_s6 = 0;
    temp_s7 = arg0->unk10;
    temp_s0 = *(temp_s7->unk1B4 + (expScreenPrivateIndex * 4));
    sp98 = (s64) temp_s0;
    temp_s0_2 = temp_s0->unk358;
    if (arg1 < 0x20U) {
        var_s6 = ((arg1 * 0xC) + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x15B050) - 0x5384))->unk4;
        temp_v0 = var_s6 >> 0x18;
        var_a6 = (var_s6 >> 0x1F) << 0xC;
        sp0 = var_s6 & 0x10000;
        temp_s3 = temp_v0 & 7;
        var_a7 = (var_s6 >> 0x1B) << 8;
        sp6 = var_a7;
        sp4 = var_a6;
        if (temp_s3 != 7) {
            sp8 = temp_v0 & 6 & 0xFFFF;
        } else {
            sp8 = temp_s3;
        }
    } else {
        var_s2 = 0xF;
        if (arg5 & 0x02000000) {
            var_s2 = 3;
        }
        var_a6 = arg5 & 0x04000000;
        if (var_a6 != 0) {
            var_s2 = var_s2 & 0xC & 0xFFFF;
        }
    }
    temp_t9 = arg2->unk4 - arg2->unk0;
    temp_s3_2 = arg0->unk2;
    sp68 = temp_t9;
    temp_at = (temp_s3_2 * 0xC) + &PixmapWidthPaddingInfo;
    temp_t8 = ((s32) (temp_at->unk0 + temp_t9) >> temp_at->unk4) << temp_at->unk8;
    temp_t9_2 = arg2->unk6 - arg2->unk2;
    sp70 = temp_t9_2;
    sp60 = temp_t8;
    temp_v0_2 = Xalloc(temp_t8 * temp_t9_2, (s32) var_a6, var_a7);
    sp58 = temp_v0_2;
    if (temp_v0_2 != 0) {
        (**(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14(arg2, sp58, sp60, arg0);
        var_t9 = 0;
        temp_a2 = arg3 * 4;
        var_t3 = sp58;
        if (var_s2 != 0) {
            if (sp70 <= 0) {

            } else {
                var_t2 = sp68 * 4;
                if (sp68 > 0) {
                    var_t8 = 0;
                    temp_t1 = ((var_s6 >> 9) & 0x1F) * 0x10;
loop_15:
                    var_a4 = var_t3;
                    var_a3 = var_t8;
                    if (sp68 & 1) {
                        temp_a5 = *var_a4;
                        var_a4 += 1;
                        if (temp_a5 != 0) {
                            *(var_a3 + arg4) = *(((((var_s2 & temp_a5) | temp_t1 | 0x1C00) & 0xFFFF) * 4) + temp_s0_2) | 0xFF000000;
                        }
                        var_a3 += 4;
                    }
                    var_t9 += 1;
                    if ((sp68 >> 1) != 0) {
loop_25:
                        temp_a5_2 = var_a4->unk0;
                        if (temp_a5_2 != 0) {
                            *(var_a3 + arg4) = *(((((var_s2 & temp_a5_2) | temp_t1 | 0x1C00) & 0xFFFF) * 4) + temp_s0_2) | 0xFF000000;
                        }
                        temp_a5_3 = var_a4->unk1;
                        var_a4 += 2;
                        temp_a3 = var_a3 + 4;
                        if (temp_a5_3 != 0) {
                            *(temp_a3 + arg4) = *(((((var_s2 & temp_a5_3) | temp_t1 | 0x1C00) & 0xFFFF) * 4) + temp_s0_2) | 0xFF000000;
                        }
                        var_a3 = temp_a3 + 4;
                        if (var_a3 != var_t2) {
                            goto loop_25;
                        }
                    }
                    var_t8 += temp_a2;
                    var_t2 += temp_a2;
                    var_t3 += sp60;
                    if (var_t9 != sp70) {
                        goto loop_15;
                    }
                }
            }
        } else if (sp0 != 0) {
            temp_a3_2 = arg0->unk78;
            temp_s0_3 = temp_s7->unk74;
            if (temp_a3_2 != NULL) {
                var_a2 = *temp_a3_2;
            } else {
                var_a2 = *FindWindowWithOptional(arg0)->unk78;
            }
            var_t8_2 = arg4;
            if ((temp_s7->unk7C + ((var_a2 - temp_s0_3->unk50) * 0x24))->unk4 != 4) {
                temp_ra = sp98->unk358 + 0x8000;
                if (sp70 > 0) {
                    temp_s6 = sp68 * 4;
                    if (sp68 > 0) {
                        var_t3_2 = sp58;
                        var_s0 = 0;
                        var_t9_2 = var_t3_2 + (sp68 * 4);
                        do {
                            var_a2_2 = var_t3_2;
                            var_t3_2 += temp_s6;
                            var_a5 = var_t8_2;
                            if (sp68 >= 2) {
                                var_a1 = *var_a2_2;
                                do {
                                    var_a2_2 += 4;
                                    var_a5 += 4;
                                    var_a5->unk-4 = (s32) ((*(((((u32) (0xFF0000 & var_a1) >> 0x10) & 0xFF) * 4) + temp_ra) & 0xFF0000) | 0xFF000000 | ((*(((var_a1 & 0xFF) * 4) + temp_ra) & 0xFF) | (*((((u32) (var_a1 & 0xFF00) >> 8) * 4) + temp_ra) & 0xFF00)));
                                    var_a1 = *var_a2_2;
                                } while (var_a2_2 != (var_t9_2 - 4));
                                var_a5->unk0 = (*(((((u32) (0xFF0000 & var_a1) >> 0x10) & 0xFF) * 4) + temp_ra) & 0xFF0000) | 0xFF000000 | ((*(((var_a1 & 0xFF) * 4) + temp_ra) & 0xFF) | (*((((u32) (var_a1 & 0xFF00) >> 8) * 4) + temp_ra) & 0xFF00));
                            } else {
                                temp_a6 = *var_a2_2;
                                *var_a5 = (*(((((u32) (0xFF0000 & temp_a6) >> 0x10) & 0xFF) * 4) + temp_ra) & 0xFF0000) | 0xFF000000 | ((*(((temp_a6 & 0xFF) * 4) + temp_ra) & 0xFF) | (*((((u32) (temp_a6 & 0xFF00) >> 8) * 4) + temp_ra) & 0xFF00));
                            }
                            var_t8_2 += arg3 * 4;
                            var_s0 += 1;
                            var_t9_2 += temp_s6;
                        } while (var_s0 != sp70);
                    }
                }
            } else {
                switch (temp_s3_2) {                /* switch 1; irregular */
                default:                            /* switch 1 */
                    var_s3 = 0;
                    if (sp70 > 0) {
                        var_s0_2 = sp58;
                        var_s2_2 = arg4;
                        temp_s6_2 = sp68 * 4;
                        do {
                            var_s3 += 1;
                            temp_a1 = var_s0_2;
                            var_s0_2 += temp_s6_2;
                            memmove((s64) var_s2_2, temp_a1, temp_s6_2);
                            var_s2_2 += arg3 * 4;
                        } while (var_s3 != sp70);
                    }
                    break;
                case 4:                             /* switch 1 */
                case 8:                             /* switch 1 */
                    if (sp70 > 0) {
                        var_t3_3 = 0;
                        if (sp68 > 0) {
                            var_t0 = sp58;
                            var_t2_2 = 0;
                            temp_t8_2 = arg3 * 4;
                            var_a2_3 = sp68 * 4;
loop_95:
                            var_a4_2 = var_t0;
                            var_a3_2 = var_t2_2;
                            if (sp68 & 1) {
                                switch (sp8) {      /* switch 5; irregular */
                                case 0:             /* switch 5 */
                                case 1:             /* switch 5 */
                                    temp_a7 = *var_a4_2;
                                    *(var_a3_2 + arg4) = (((((s32) temp_a7 >> 3) & 1) * 0xFF) & 0xFFFF) | 0xFF000000 | (((((((s32) temp_a7 >> 1) & 3) * 0x55) & 0xFFFF) << 8) | ((((temp_a7 & 1) * 0xFF) & 0xFFFF) << 0x10));
                                    break;
                                case 2:             /* switch 5 */
                                case 3:             /* switch 5 */
                                    temp_v1 = *var_a4_2;
                                    temp_t9_3 = ((s32) temp_v1 >> 5) & 7;
                                    temp_v1_2 = temp_v1 & 7;
                                    *(var_a3_2 + arg4) = (((((s32) temp_v1 >> 6) & 3) | ((temp_t9_3 * 4) | (temp_t9_3 << 5))) & 0xFFFF) | 0xFF000000 | (((((((s32) temp_v1 >> 3) & 3) * 0x55) & 0xFFFF) << 0x10) | ((((((s32) temp_v1 >> 1) & 3) | ((temp_v1_2 * 4) | (temp_v1_2 << 5))) & 0xFFFF) << 8));
                                    break;
                                }
                                var_a3_2 += 4;
                                var_a4_2 += 1;
                            }
                            var_t3_3 += 1;
                            if ((sp68 >> 1) != 0) {
loop_109:
                                switch (sp8) {      /* switch 7; irregular */
                                case 0:             /* switch 7 */
                                case 1:             /* switch 7 */
                                    temp_v1_3 = var_a4_2->unk0;
                                    *(var_a3_2 + arg4) = (((((s32) temp_v1_3 >> 3) & 1) * 0xFF) & 0xFFFF) | 0xFF000000 | (((((((s32) temp_v1_3 >> 1) & 3) * 0x55) & 0xFFFF) << 8) | ((((temp_v1_3 & 1) * 0xFF) & 0xFFFF) << 0x10));
                                    break;
                                case 2:             /* switch 7 */
                                case 3:             /* switch 7 */
                                    temp_a7_2 = var_a4_2->unk0;
                                    temp_a5_4 = ((s32) temp_a7_2 >> 5) & 7;
                                    temp_a7_3 = temp_a7_2 & 7;
                                    *(var_a3_2 + arg4) = (((((s32) temp_a7_2 >> 6) & 3) | ((temp_a5_4 * 4) | (temp_a5_4 << 5))) & 0xFFFF) | 0xFF000000 | (((((((s32) temp_a7_2 >> 3) & 3) * 0x55) & 0xFFFF) << 0x10) | ((((((s32) temp_a7_2 >> 1) & 3) | ((temp_a7_3 * 4) | (temp_a7_3 << 5))) & 0xFFFF) << 8));
                                    break;
                                }
                                temp_a3_3 = var_a3_2 + 4;
                                switch (sp8) {      /* switch 6; irregular */
                                case 0:             /* switch 6 */
                                case 1:             /* switch 6 */
                                    temp_at_2 = var_a4_2->unk1;
                                    *(temp_a3_3 + arg4) = (((((s32) temp_at_2 >> 3) & 1) * 0xFF) & 0xFFFF) | 0xFF000000 | (((((((s32) temp_at_2 >> 1) & 3) * 0x55) & 0xFFFF) << 8) | ((((temp_at_2 & 1) * 0xFF) & 0xFFFF) << 0x10));
                                    break;
                                case 2:             /* switch 6 */
                                case 3:             /* switch 6 */
                                    temp_a6_2 = var_a4_2->unk1;
                                    temp_v1_4 = ((s32) temp_a6_2 >> 5) & 7;
                                    temp_a6_3 = temp_a6_2 & 7;
                                    *(temp_a3_3 + arg4) = (((((s32) temp_a6_2 >> 6) & 3) | ((temp_v1_4 * 4) | (temp_v1_4 << 5))) & 0xFFFF) | 0xFF000000 | (((((((s32) temp_a6_2 >> 3) & 3) * 0x55) & 0xFFFF) << 0x10) | ((((((s32) temp_a6_2 >> 1) & 3) | ((temp_a6_3 * 4) | (temp_a6_3 << 5))) & 0xFFFF) << 8));
                                    break;
                                }
                                var_a3_2 = temp_a3_3 + 4;
                                var_a4_2 += 2;
                                if (var_a3_2 != var_a2_3) {
                                    goto loop_109;
                                }
                            }
                            var_t2_2 += temp_t8_2;
                            var_a2_3 += temp_t8_2;
                            var_t0 += sp60;
                            if (var_t3_3 != sp70) {
                                goto loop_95;
                            }
                        }
                    }
                    break;
                case 12:                            /* switch 1 */
                    if (sp70 > 0) {
                        var_t8_3 = 0;
                        if (sp68 > 0) {
                            var_t2_3 = arg4;
                            var_t3_4 = sp58;
                            var_t0_2 = sp58 + (sp68 * 2);
                            do {
                                var_a4_3 = var_t3_4;
                                var_a3_3 = var_t2_3;
                                if (sp68 >= 2) {
                                    var_a2_4 = *var_a4_3;
                                    do {
                                        var_a4_3 += 2;
                                        var_a3_3 += 4;
                                        var_a3_3->unk-4 = (s32) ((((var_a2_4 & 0xF) * 0x11) & 0xFFFF) | 0xFF000000 | (((((((s32) var_a2_4 >> 4) & 0xF) * 0x11) & 0xFFFF) << 8) | ((((((s32) var_a2_4 >> 8) & 0xF) * 0x11) & 0xFFFF) << 0x10)));
                                        var_a2_4 = *var_a4_3;
                                    } while (var_a4_3 != (var_t0_2 - 2));
                                    var_a3_3->unk0 = (((var_a2_4 & 0xF) * 0x11) & 0xFFFF) | 0xFF000000 | (((((((s32) var_a2_4 >> 4) & 0xF) * 0x11) & 0xFFFF) << 8) | ((((((s32) var_a2_4 >> 8) & 0xF) * 0x11) & 0xFFFF) << 0x10));
                                } else {
                                    temp_v1_5 = *var_a4_3;
                                    *var_a3_3 = (((temp_v1_5 & 0xF) * 0x11) & 0xFFFF) | 0xFF000000 | (((((((s32) temp_v1_5 >> 4) & 0xF) * 0x11) & 0xFFFF) << 8) | ((((((s32) temp_v1_5 >> 8) & 0xF) * 0x11) & 0xFFFF) << 0x10));
                                }
                                var_t8_3 += 1;
                                var_t2_3 += arg3 * 4;
                                var_t0_2 += sp60;
                                var_t3_4 += sp60;
                            } while (var_t8_3 != sp70);
                        }
                    }
                    break;
                }
            }
        } else if (temp_s3_2 != 0xC) {
            if (sp70 > 0) {
                spE0 = arg3;
                if (sp68 > 0) {
                    spA8 = 0;
                    var_s2_3 = spA;
                    spB8 = (s64) arg4;
                    spB0 = sp58;
                    spC8 = (s64) sp6;
                    spA0 = spE0 * 4;
                    var_s8 = (sp68 * 4) + arg4;
loop_55:
                    var_s1 = spB0;
                    var_s5 = spB8;
                    if (sp68 & 1) {
                        switch (sp8) {              /* switch 2; irregular */
                        case 0:                     /* switch 2 */
                        case 1:                     /* switch 2 */
                            var_s2_3 = ((*var_s1 & 0xF) | spC8) & 0xFFFF;
                            break;
                        case 2:                     /* switch 2 */
                        case 3:                     /* switch 2 */
                            var_s2_3 = ((*var_s1 & 0xFF) | spC8) & 0xFFFF;
                            break;
                        case 6:                     /* switch 2 */
                        case 7:                     /* switch 2 */
                            spE8 = sp68;
                            printf(&local_0x5f0a0000 - 0x648);
                            break;
                        }
                        var_s5 += 4;
                        var_s1 += 1;
                        var_s5->unk-4 = (s32) (*((var_s2_3 * 4) + temp_s0_2) | 0xFF000000);
                    }
                    if ((sp68 >> 1) != 0) {
loop_76:
                        switch (sp8) {              /* switch 4; irregular */
                        case 0:                     /* switch 4 */
                        case 1:                     /* switch 4 */
                            var_s2_4 = (var_s1->unk0 & 0xF) | spC8;
block_67:
                            var_s2_3 = var_s2_4 & 0xFFFF;
block_68:
                            var_at = var_s2_3 * 4;
                            break;
                        default:                    /* switch 4 */
                            if ((sp8 == 6) || (var_at = var_s2_3 * 4, (sp8 == 7))) {
                                printf(&local_0x5f0a0000 - 0x648);
                                goto block_68;
                            }
                            break;
                        case 2:                     /* switch 4 */
                        case 3:                     /* switch 4 */
                            var_s2_4 = (var_s1->unk0 & 0xFF) | spC8;
                            goto block_67;
                        }
                        *var_s5 = (s32) (*(var_at + temp_s0_2) | 0xFF000000);
                        switch (sp8) {              /* switch 3; irregular */
                        default:                    /* switch 3 */
                            if ((sp8 == 6) || (sp8 == 7)) {
                                printf(&local_0x5f0a0000 - 0x648);
                            }
                            break;
                        case 0:                     /* switch 3 */
                        case 1:                     /* switch 3 */
                            var_s2_3 = ((var_s1->unk1 & 0xF) | spC8) & 0xFFFF;
                            break;
                        case 2:                     /* switch 3 */
                        case 3:                     /* switch 3 */
                            var_s2_3 = ((var_s1->unk1 & 0xFF) | spC8) & 0xFFFF;
                            break;
                        }
                        var_s1 += 2;
                        var_s5 += 8;
                        var_s5->unk-4 = (s32) (*((var_s2_3 * 4) + temp_s0_2) | 0xFF000000);
                        if (var_s5 != var_s8) {
                            goto loop_76;
                        }
                    }
                    var_s8 += spA0;
                    spB0 += sp60;
                    spB8 += spA0;
                    temp_v1_6 = spA8 + 1;
                    spA8 = temp_v1_6;
                    if (temp_v1_6 != sp70) {
                        goto loop_55;
                    }
                }
            }
        } else if (sp70 > 0) {
            spE0 = arg3;
            if (sp68 > 0) {
                sp80 = 0;
                sp90 = (s64) arg4;
                spC0 = (s64) sp4;
                var_s2_5 = spA;
                sp88 = sp58;
                sp78 = spE0 * 4;
                var_s8_2 = sp58 + (sp68 * 2);
loop_122:
                var_s1_2 = sp88;
                var_s7 = sp90;
loop_125:
                if (sp8 != 4) {
                    if (sp8 == 5) {
                        goto block_128;
                    }
                    printf(&local_0x5f0a0000 - 0x648);
                } else {
block_128:
                    var_s2_5 = ((*var_s1_2 & 0xFFF) | spC0) & 0xFFFF;
                }
                var_s7 += 4;
                var_s1_2 += 2;
                var_s7->unk-4 = (s32) (*((var_s2_5 * 4) + temp_s0_2) | 0xFF000000);
                if (var_s1_2 != var_s8_2) {
                    goto loop_125;
                }
                var_s8_2 += sp60;
                sp88 += sp60;
                sp90 += sp78;
                temp_at_3 = sp80 + 1;
                sp80 = temp_at_3;
                if (temp_at_3 != sp70) {
                    goto loop_122;
                }
            }
        }
        Xfree(sp58);
        return;
    }
    ErrorF(&local_0x5f0a0000 - 0x670);
}
