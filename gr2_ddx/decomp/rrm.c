? .L5ef6ca0c(void *, s32, s32, void *, s32);        /* extern */
s32 AllocColor(void **, s16 *, s16 *, s16 *, s32 *, ?, s16, s16); /* extern */
s32 CreateColormap(s32, void *, s32 *, void ***, s32, ?, s32 *); /* extern */
? ErrorF(void *, s32, u16 *, s32 *, s64, ?);        /* extern */
void *FindWindowWithOptional(void *, s32 *);        /* extern */
? FlushClientCaches(s32, u32, s32, s32);            /* extern */
s64 GetTimeInMillis();                              /* extern */
void *LookupIDByType(s32, ?);                       /* extern */
? TimerFree(s32);                                   /* extern */
s64 Xalloc(?, u16 *, s32 *);                        /* extern */
? Xfree(s64, void *, s32);                          /* extern */
s32 ioctl(s32, ?, void *, s32, s32, s32, u8);       /* extern */
? memset(s64, ?, ?, s64);                           /* extern */
void AssignID__LIC(s64 arg0, s32 arg1, s32, s32, u16, u16, void *, s32); /* static */
void NewID__FIC(s64 arg0, s32 arg2, s32 arg3, s32 arg5, u16 arg6); /* static */
void SetDIDMode(void *arg0, void *arg4, void *, s32, void *, void *, void *, void *); /* static */
s32 cmapDID(void *arg0, s32, s32, s32, u16, u16, void *, s32); /* static */
s32 incrRRMpriv(void *arg0, s32, s32, s32, ?);      /* static */
void nfbSetDidFlags(s64 arg0, s32);                 /* static */
void rrmUnmapWindow(void *arg0, void *arg1, s32 *); /* static */
extern s32 dbcWindowPrivateIndex;
extern u16 *errno;
extern u32 globalSerialNumber;
extern s32 glxWindowPrivateIndex;
extern ? local_0x5f0a0000;
extern ? local_0x5f0b0000;
extern s32 nfbWindowPrivateIndex;
extern s32 rrmScreenPrivateIndex;
extern s32 rrmWindowPrivateIndex;
extern ? screenInfo;
extern s32 sgiOverrideColorCompare;
extern s32 var_5f0b8ae8;
extern s32 var_5f0b8aec;

void rrmValidateCID(void *arg0) {
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a5;
    s32 temp_s5;
    s32 temp_s6;
    s32 var_s3;
    u16 temp_a0_2;
    u16 temp_s7;
    u16 var_a0;
    u16 var_a1_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 var_s0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a6;
    void *temp_a7;
    void *temp_a7_2;
    void *temp_a7_3;
    void *temp_s1;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s4;
    void *var_a1;

    temp_s2 = arg0->unk10;
    sp0 = (s64) temp_s2;
    temp_s1 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    temp_s2_2 = *(temp_s2->unk1B4 + (rrmScreenPrivateIndex * 4));
    temp_v0 = temp_s1->unk18;
    sp8 = temp_s2_2->unk94 + (temp_v0 * 0x1C);
    if (temp_s2_2->unk4 == temp_v0) {
        return;
    }
    if (temp_s2_2->unk5C(arg0) != 0) {
        if (temp_s2_2->unkC & 2) {
            temp_s7 = temp_s1->unk2;
            temp_s6 = temp_s2_2->unk94;
            if ((u32) temp_s2_2->unk4 >= 2U) {
                var_s3 = 0;
                var_s0 = 1;
loop_14:
                if (temp_s1->unk18 != var_s0) {
                    temp_s4 = (var_s3 + temp_s6)->unk1C;
                    if (temp_s4 != NULL) {
                        temp_a1 = *(temp_s4->unk84 + (rrmWindowPrivateIndex * 4));
                        if ((temp_a1->unk2 != temp_s7) && (temp_a1->unk4 & 2)) {
                            temp_s2_2->unk20(temp_s4, 2, 0);
                            temp_a0 = rrmWindowPrivateIndex * 4;
                            var_a1 = *(temp_a0 + temp_s4->unk84);
                            temp_a5 = rrmScreenPrivateIndex * 4;
                            if (var_a1->unk18 >= 0) {
                                temp_a4 = (*(temp_s4->unk10->unk1B4 + temp_a5))->unk94 + (var_a1->unk18 * 0x1C);
                                if (var_a1->unk0 & 0x40) {
                                    temp_a7 = var_a1->unk3C;
                                    temp_a1_2 = var_a1->unk40;
                                    if (temp_a7 != NULL) {
                                        (*(temp_a7->unk84 + temp_a0))->unk40 = temp_a1_2;
                                    } else {
                                        temp_a4->unk0 = temp_a1_2;
                                    }
                                    temp_a1_3 = var_a1->unk40;
                                    temp_a7_2 = var_a1->unk3C;
                                    if (temp_a1_3 != NULL) {
                                        (*(temp_a1_3->unk84 + temp_a0))->unk3C = temp_a7_2;
                                        var_a1->unk40 = NULL;
                                    } else {
                                        temp_a4->unk4 = temp_a7_2;
                                    }
                                    var_a1->unk3C = NULL;
                                    temp_a7_3 = temp_a4->unk0;
                                    var_a1_2 = temp_a4->unk8 & 1 & 0xFFFF;
                                    temp_a4->unkC = (s32) (temp_a4->unkC - 1);
                                    if (var_a1_2 != 0) {
                                        var_a1_2 |= 4;
                                    }
                                    if (temp_a7_3 != NULL) {
                                        var_a1_2 |= 2;
                                        if (temp_a4->unk4 != temp_a7_3) {
                                            var_a1_2 |= 4;
                                        }
                                    }
                                    temp_a4->unk8 = var_a1_2;
                                    var_a1->unk0 = (u16) (var_a1->unk0 & ~0x40);
                                }
                                var_a1->unk18 = 0;
                                var_a1 = *(temp_a0 + temp_s4->unk84);
                            }
                            temp_a3 = (*(temp_s4->unk10->unk1B4 + temp_a5))->unk94;
                            var_a1->unk18 = 0;
                            temp_a4_2 = *(temp_s4->unk84 + temp_a0);
                            temp_a4_2->unk40 = 0;
                            temp_a2 = temp_a3->unk4;
                            temp_a4_2->unk3C = temp_a2;
                            if (temp_a2 != NULL) {
                                (*(temp_a3->unk4->unk84 + temp_a0))->unk40 = temp_s4;
                            } else {
                                temp_a3->unk0 = temp_s4;
                            }
                            temp_a3->unk4 = temp_s4;
                            temp_a4_2->unk0 = (u16) (temp_a4_2->unk0 | 0x40);
                            temp_a0_2 = temp_a3->unk8 | 2;
                            temp_v0_2 = temp_a3->unkC + 1;
                            temp_a3->unkC = temp_v0_2;
                            temp_a3->unk8 = temp_a0_2;
                            if (temp_v0_2 >= 2U) {
                                temp_a3->unk8 = (u16) (temp_a0_2 | 4);
                            }
                        }
                    }
                }
                var_s0 += 1;
                var_s3 += 0x1C;
                if (var_s0 < temp_s2_2->unk4) {
                    goto loop_14;
                }
            }
        }
        temp_s5 = sp8 + 0x10;
        sp0->unk158(temp_s5, arg0 + 0x2C);
        temp_s2_2->unk4C(arg0, temp_s5, temp_s1->unk18);
        return;
    }
    temp_a0_3 = rrmWindowPrivateIndex * 4;
    temp_a6 = *(arg0->unk84 + temp_a0_3);
    temp_a3_2 = (*(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk94 + (temp_a6->unk18 * 0x1C);
    if (temp_a6->unk0 & 0x40) {
        temp_a4_3 = temp_a6->unk3C;
        temp_a5_2 = temp_a6->unk40;
        if (temp_a4_3 != NULL) {
            (*(temp_a4_3->unk84 + temp_a0_3))->unk40 = temp_a5_2;
        } else {
            temp_a3_2->unk0 = temp_a5_2;
        }
        temp_a5_3 = temp_a6->unk40;
        temp_a4_4 = temp_a6->unk3C;
        if (temp_a5_3 != NULL) {
            (*(temp_a5_3->unk84 + temp_a0_3))->unk3C = temp_a4_4;
            temp_a6->unk40 = NULL;
        } else {
            temp_a3_2->unk4 = temp_a4_4;
        }
        temp_a6->unk3C = NULL;
        temp_a4_5 = temp_a3_2->unk0;
        var_a0 = temp_a3_2->unk8 & 1 & 0xFFFF;
        temp_a3_2->unkC = (s32) (temp_a3_2->unkC - 1);
        if (var_a0 != 0) {
            var_a0 |= 4;
        }
        if (temp_a4_5 != NULL) {
            var_a0 |= 2;
            if (temp_a3_2->unk4 != temp_a4_5) {
                var_a0 |= 4;
            }
        }
        temp_a3_2->unk8 = var_a0;
        temp_a6->unk0 = (u16) (temp_a6->unk0 & ~0x40);
    }
    temp_a6->unk18 = 0;
    temp_s1->unk18 = (u32) temp_s2_2->unk4;
}

void FindFreeCID(void *arg0) {
    s64 sp30;
    ? (*temp_t9)(void *, ?, ?, s32, u32, s32 *);
    s32 *var_a5;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_5;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_s0;
    s32 temp_s4_2;
    s32 var_a0;
    s32 var_a2;
    s32 var_s3;
    s64 temp_s3;
    u16 temp_a0;
    u16 temp_a0_4;
    u16 temp_a0_8;
    u16 temp_a2_5;
    u16 temp_a3_4;
    u16 temp_a7;
    u16 var_a0_3;
    u16 var_a0_4;
    u16 var_a2_3;
    u16 var_a2_4;
    u16 var_a4_2;
    u32 temp_a4;
    u32 temp_at_3;
    u32 temp_v0;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 var_s4;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_a1;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_a2_6;
    void *temp_a2_7;
    void *temp_a2_8;
    void *temp_a4_10;
    void *temp_a4_11;
    void *temp_a4_12;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a4_6;
    void *temp_a4_7;
    void *temp_a4_8;
    void *temp_a4_9;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_a6_5;
    void *temp_a6_6;
    void *temp_a6_7;
    void *temp_a6_8;
    void *temp_a6_9;
    void *temp_a7_2;
    void *temp_a7_3;
    void *temp_a7_4;
    void *temp_a7_5;
    void *temp_a7_6;
    void *temp_a7_7;
    void *temp_at;
    void *temp_at_2;
    void *temp_at_4;
    void *temp_at_5;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s3_2;
    void *temp_s4;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_v0_2;
    void *var_a0_2;
    void *var_a2_2;
    void *var_a4;
    void *var_a4_3;
    void *var_a4_4;

    var_s3 = 0;
    temp_s2 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    temp_s4 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    temp_s0 = temp_s2->unk94;
    var_a2 = 0;
    if (temp_s2->unk5C() != 0) {
        temp_a3 = temp_s4->unk18;
        if (temp_a3 >= 0) {
            if (!(((temp_a3 * 0x1C) + temp_s0)->unk8 & 4)) {
                return;
            }
            goto block_5;
        }
block_5:
        temp_a4 = temp_s2->unk4;
        var_a5 = &rrmWindowPrivateIndex;
        if (temp_a4 != 0) {
            var_a0 = 0;
            var_a5 = (s32 *) (rrmWindowPrivateIndex * 4);
loop_11:
            if (var_a0 != temp_a3) {
                temp_a7 = temp_s4->unk2;
                temp_a6 = var_a2 + temp_s0;
                if (temp_a6->unkA != temp_a7) {
                    if ((temp_a7 == 1) && (temp_s2->unkC & 2)) {
                        goto block_7;
                    }
                    goto block_10;
                }
block_7:
                if (!(temp_a6->unk8 & 1)) {
                    if (temp_a6->unkC == 0) {
                        var_a4 = *(arg0->unk84 + var_a5);
                        temp_a3_2 = rrmScreenPrivateIndex * 4;
                        if (var_a4->unk18 >= 0) {
                            temp_a7_2 = (*(arg0->unk10->unk1B4 + temp_a3_2))->unk94 + (var_a4->unk18 * 0x1C);
                            if (var_a4->unk0 & 0x40) {
                                temp_t0 = var_a4->unk3C;
                                temp_a4_2 = var_a4->unk40;
                                if (temp_t0 != NULL) {
                                    (*(temp_t0->unk84 + var_a5))->unk40 = temp_a4_2;
                                } else {
                                    temp_a7_2->unk0 = temp_a4_2;
                                }
                                temp_a4_3 = var_a4->unk40;
                                temp_t0_2 = var_a4->unk3C;
                                if (temp_a4_3 != NULL) {
                                    (*(temp_a4_3->unk84 + var_a5))->unk3C = temp_t0_2;
                                    var_a4->unk40 = NULL;
                                } else {
                                    temp_a7_2->unk4 = temp_t0_2;
                                }
                                var_a4->unk3C = NULL;
                                var_a4_2 = temp_a7_2->unk8 & 1 & 0xFFFF;
                                temp_a7_2->unkC = (s32) (temp_a7_2->unkC - 1);
                                if (var_a4_2 != 0) {
                                    var_a4_2 |= 4;
                                }
                                temp_t0_3 = temp_a7_2->unk0;
                                if (temp_t0_3 != NULL) {
                                    var_a4_2 |= 2;
                                    if (temp_a7_2->unk4 != temp_t0_3) {
                                        var_a4_2 |= 4;
                                    }
                                }
                                temp_a7_2->unk8 = var_a4_2;
                                var_a4->unk0 = (u16) (var_a4->unk0 & ~0x40);
                            }
                            var_a4->unk18 = 0;
                            var_a4 = *(arg0->unk84 + var_a5);
                        }
                        var_a4->unk18 = var_a0;
                        temp_a7_3 = *(arg0->unk84 + var_a5);
                        temp_a7_3->unk40 = 0;
                        temp_a6_2 = (*(arg0->unk10->unk1B4 + temp_a3_2))->unk94 + var_a2;
                        temp_at = temp_a6_2->unk4;
                        temp_a7_3->unk3C = temp_at;
                        if (temp_at != NULL) {
                            (*(temp_a6_2->unk4->unk84 + var_a5))->unk40 = arg0;
                        } else {
                            temp_a6_2->unk0 = arg0;
                        }
                        temp_a6_2->unk4 = arg0;
                        temp_a7_3->unk0 = (u16) (temp_a7_3->unk0 | 0x40);
                        temp_v0 = temp_a6_2->unkC + 1;
                        temp_a6_2->unkC = temp_v0;
                        temp_a0 = temp_a6_2->unk8 | 2;
                        temp_a6_2->unk8 = temp_a0;
                        if (temp_v0 >= 2U) {
                            temp_a6_2->unk8 = (u16) (temp_a0 | 4);
                        }
                        return;
                    }
                    temp_v0_2 = *(temp_a6->unk0->unk84 + var_a5);
                    if (temp_v0_2->unk4 != temp_v0_2->unk6) {
                        var_s3 = var_a0;
                    }
                    goto block_10;
                }
                goto block_10;
            }
block_10:
            var_a0 += 1;
            var_a2 += 0x1C;
            if (var_a0 != temp_a4) {
                goto loop_11;
            }
            goto block_21;
        }
block_21:
        temp_t9 = temp_s2->unk20;
        if (var_s3 != 0) {
            temp_s4_2 = var_s3 * 0x1C;
            temp_s2_2 = *(temp_s4_2 + temp_s0);
            temp_t9(temp_s2_2, 2, 0, temp_a3, temp_a4, var_a5);
            temp_a5 = rrmWindowPrivateIndex * 4;
            var_a0_2 = *(temp_a5 + temp_s2_2->unk84);
            temp_a3_3 = rrmScreenPrivateIndex * 4;
            if (var_a0_2->unk18 >= 0) {
                temp_a4_4 = (*(temp_s2_2->unk10->unk1B4 + temp_a3_3))->unk94 + (var_a0_2->unk18 * 0x1C);
                if (var_a0_2->unk0 & 0x40) {
                    temp_a6_3 = var_a0_2->unk3C;
                    temp_a0_2 = var_a0_2->unk40;
                    if (temp_a6_3 != NULL) {
                        (*(temp_a6_3->unk84 + temp_a5))->unk40 = temp_a0_2;
                    } else {
                        temp_a4_4->unk0 = temp_a0_2;
                    }
                    temp_a0_3 = var_a0_2->unk40;
                    temp_a6_4 = var_a0_2->unk3C;
                    if (temp_a0_3 != NULL) {
                        (*(temp_a0_3->unk84 + temp_a5))->unk3C = temp_a6_4;
                        var_a0_2->unk40 = NULL;
                    } else {
                        temp_a4_4->unk4 = temp_a6_4;
                    }
                    var_a0_2->unk3C = NULL;
                    var_a0_3 = temp_a4_4->unk8 & 1 & 0xFFFF;
                    temp_a4_4->unkC = (s32) (temp_a4_4->unkC - 1);
                    if (var_a0_3 != 0) {
                        var_a0_3 = (var_a0_3 | 4) & 0xFFFF;
                    }
                    temp_a6_5 = temp_a4_4->unk0;
                    if (temp_a6_5 != NULL) {
                        var_a0_3 = (var_a0_3 | 2) & 0xFFFF;
                        if (temp_a4_4->unk4 != temp_a6_5) {
                            var_a0_3 = (var_a0_3 | 4) & 0xFFFF;
                        }
                    }
                    temp_a4_4->unk8 = var_a0_3;
                    var_a0_2->unk0 = (u16) (var_a0_2->unk0 & ~0x40);
                }
                var_a0_2->unk18 = 0;
                var_a0_2 = *(temp_a5 + temp_s2_2->unk84);
            }
            temp_a2 = (*(temp_s2_2->unk10->unk1B4 + temp_a3_3))->unk94;
            var_a0_2->unk18 = 0;
            temp_a4_5 = *(temp_s2_2->unk84 + temp_a5);
            temp_a4_5->unk40 = 0;
            temp_a1 = temp_a2->unk4;
            temp_a4_5->unk3C = temp_a1;
            if (temp_a1 != NULL) {
                (*(temp_a2->unk4->unk84 + temp_a5))->unk40 = temp_s2_2;
            } else {
                temp_a2->unk0 = temp_s2_2;
            }
            temp_a2->unk4 = temp_s2_2;
            temp_a4_5->unk0 = (u16) (temp_a4_5->unk0 | 0x40);
            temp_a0_4 = temp_a2->unk8 | 2;
            temp_v0_3 = temp_a2->unkC + 1;
            temp_a2->unkC = temp_v0_3;
            temp_a2->unk8 = temp_a0_4;
            if (temp_v0_3 >= 2U) {
                temp_a2->unk8 = (u16) (temp_a0_4 | 4);
            }
            var_a4_3 = *(arg0->unk84 + temp_a5);
            if (var_a4_3->unk18 >= 0) {
                temp_a6_6 = (*(arg0->unk10->unk1B4 + temp_a3_3))->unk94 + (var_a4_3->unk18 * 0x1C);
                if (var_a4_3->unk0 & 0x40) {
                    temp_a4_6 = var_a4_3->unk3C;
                    temp_a0_5 = var_a4_3->unk40;
                    if (temp_a4_6 != NULL) {
                        (*(temp_a4_6->unk84 + temp_a5))->unk40 = temp_a0_5;
                    } else {
                        temp_a6_6->unk0 = temp_a0_5;
                    }
                    temp_a0_6 = var_a4_3->unk40;
                    temp_a4_7 = var_a4_3->unk3C;
                    if (temp_a0_6 != NULL) {
                        (*(temp_a0_6->unk84 + temp_a5))->unk3C = temp_a4_7;
                        var_a4_3->unk40 = NULL;
                    } else {
                        temp_a6_6->unk4 = temp_a4_7;
                    }
                    var_a4_3->unk3C = NULL;
                    temp_a4_8 = temp_a6_6->unk0;
                    var_a0_4 = temp_a6_6->unk8 & 1 & 0xFFFF;
                    temp_a6_6->unkC = (s32) (temp_a6_6->unkC - 1);
                    if (var_a0_4 != 0) {
                        var_a0_4 = (var_a0_4 | 4) & 0xFFFF;
                    }
                    if (temp_a4_8 != NULL) {
                        var_a0_4 = (var_a0_4 | 2) & 0xFFFF;
                        if (temp_a6_6->unk4 != temp_a4_8) {
                            var_a0_4 = (var_a0_4 | 4) & 0xFFFF;
                        }
                    }
                    temp_a6_6->unk8 = var_a0_4;
                    var_a4_3->unk0 = (u16) (var_a4_3->unk0 & ~0x40);
                }
                var_a4_3->unk18 = 0;
                var_a4_3 = *(arg0->unk84 + temp_a5);
            }
            var_a4_3->unk18 = var_s3;
            temp_a2_2 = *(arg0->unk84 + temp_a5);
            temp_a2_2->unk40 = 0;
            temp_a0_7 = (*(arg0->unk10->unk1B4 + temp_a3_3))->unk94 + temp_s4_2;
            temp_at_2 = temp_a0_7->unk4;
            temp_a2_2->unk3C = temp_at_2;
            if (temp_at_2 != NULL) {
                (*(temp_a0_7->unk4->unk84 + temp_a5))->unk40 = arg0;
            } else {
                temp_a0_7->unk0 = arg0;
            }
            temp_a0_7->unk4 = arg0;
            temp_a2_2->unk0 = (u16) (temp_a2_2->unk0 | 0x40);
            temp_a3_4 = temp_a0_7->unk8 | 2;
            temp_at_3 = temp_a0_7->unkC + 1;
            temp_a0_7->unkC = temp_at_3;
            temp_a0_7->unk8 = temp_a3_4;
            if (temp_at_3 >= 2U) {
                temp_a0_7->unk8 = (u16) (temp_a3_4 | 4);
            }
            return;
        }
        var_s4 = temp_s2->unk88 + 1;
        if (var_s4 >= temp_a4) {
            var_s4 = 1;
        }
        temp_s2->unk88 = var_s4;
        temp_s3 = var_s4 * 0x1C;
        sp30 = temp_s3;
        temp_s3_2 = *(temp_s3 + temp_s0);
        temp_t9(temp_s3_2, 2, 0, temp_a3, temp_a4, var_a5);
        temp_a5_2 = rrmWindowPrivateIndex * 4;
        var_a2_2 = *(temp_a5_2 + temp_s3_2->unk84);
        temp_a3_5 = rrmScreenPrivateIndex * 4;
        if (var_a2_2->unk18 >= 0) {
            temp_a6_7 = (*(temp_s3_2->unk10->unk1B4 + temp_a3_5))->unk94 + (var_a2_2->unk18 * 0x1C);
            if (var_a2_2->unk0 & 0x40) {
                temp_a7_4 = var_a2_2->unk3C;
                temp_a2_3 = var_a2_2->unk40;
                if (temp_a7_4 != NULL) {
                    (*(temp_a7_4->unk84 + temp_a5_2))->unk40 = temp_a2_3;
                } else {
                    temp_a6_7->unk0 = temp_a2_3;
                }
                temp_a2_4 = var_a2_2->unk40;
                temp_a7_5 = var_a2_2->unk3C;
                if (temp_a2_4 != NULL) {
                    (*(temp_a2_4->unk84 + temp_a5_2))->unk3C = temp_a7_5;
                    var_a2_2->unk40 = NULL;
                } else {
                    temp_a6_7->unk4 = temp_a7_5;
                }
                var_a2_2->unk3C = NULL;
                var_a2_3 = temp_a6_7->unk8 & 1 & 0xFFFF;
                temp_a6_7->unkC = (s32) (temp_a6_7->unkC - 1);
                if (var_a2_3 != 0) {
                    var_a2_3 = (var_a2_3 | 4) & 0xFFFF;
                }
                temp_a7_6 = temp_a6_7->unk0;
                if (temp_a7_6 != NULL) {
                    var_a2_3 = (var_a2_3 | 2) & 0xFFFF;
                    if (temp_a6_7->unk4 != temp_a7_6) {
                        var_a2_3 = (var_a2_3 | 4) & 0xFFFF;
                    }
                }
                temp_a6_7->unk8 = var_a2_3;
                var_a2_2->unk0 = (u16) (var_a2_2->unk0 & ~0x40);
            }
            var_a2_2->unk18 = 0;
            var_a2_2 = *(temp_a5_2 + temp_s3_2->unk84);
        }
        temp_a4_9 = (*(temp_s3_2->unk10->unk1B4 + temp_a3_5))->unk94;
        var_a2_2->unk18 = 0;
        temp_a6_8 = *(temp_s3_2->unk84 + temp_a5_2);
        temp_a6_8->unk40 = 0;
        temp_at_4 = temp_a4_9->unk4;
        temp_a6_8->unk3C = temp_at_4;
        if (temp_at_4 != NULL) {
            (*(temp_a4_9->unk4->unk84 + temp_a5_2))->unk40 = temp_s3_2;
        } else {
            temp_a4_9->unk0 = temp_s3_2;
        }
        temp_a4_9->unk4 = temp_s3_2;
        temp_a6_8->unk0 = (u16) (temp_a6_8->unk0 | 0x40);
        temp_v0_4 = temp_a4_9->unkC + 1;
        temp_a4_9->unkC = temp_v0_4;
        temp_a2_5 = temp_a4_9->unk8 | 2;
        temp_a4_9->unk8 = temp_a2_5;
        if (temp_v0_4 >= 2U) {
            temp_a4_9->unk8 = (u16) (temp_a2_5 | 4);
        }
        var_a4_4 = *(arg0->unk84 + temp_a5_2);
        if (var_a4_4->unk18 >= 0) {
            temp_a7_7 = (*(arg0->unk10->unk1B4 + temp_a3_5))->unk94 + (var_a4_4->unk18 * 0x1C);
            if (var_a4_4->unk0 & 0x40) {
                temp_a4_10 = var_a4_4->unk3C;
                temp_a2_6 = var_a4_4->unk40;
                if (temp_a4_10 != NULL) {
                    (*(temp_a4_10->unk84 + temp_a5_2))->unk40 = temp_a2_6;
                } else {
                    temp_a7_7->unk0 = temp_a2_6;
                }
                temp_a2_7 = var_a4_4->unk40;
                temp_a4_11 = var_a4_4->unk3C;
                if (temp_a2_7 != NULL) {
                    (*(temp_a2_7->unk84 + temp_a5_2))->unk3C = temp_a4_11;
                    var_a4_4->unk40 = NULL;
                } else {
                    temp_a7_7->unk4 = temp_a4_11;
                }
                var_a4_4->unk3C = NULL;
                var_a2_4 = temp_a7_7->unk8 & 1 & 0xFFFF;
                temp_a7_7->unkC = (s32) (temp_a7_7->unkC - 1);
                if (var_a2_4 != 0) {
                    var_a2_4 = (var_a2_4 | 4) & 0xFFFF;
                }
                temp_a4_12 = temp_a7_7->unk0;
                if (temp_a4_12 != NULL) {
                    var_a2_4 = (var_a2_4 | 2) & 0xFFFF;
                    if (temp_a7_7->unk4 != temp_a4_12) {
                        var_a2_4 = (var_a2_4 | 4) & 0xFFFF;
                    }
                }
                temp_a7_7->unk8 = var_a2_4;
                var_a4_4->unk0 = (u16) (var_a4_4->unk0 & ~0x40);
            }
            var_a4_4->unk18 = 0;
            var_a4_4 = *(arg0->unk84 + temp_a5_2);
        }
        var_a4_4->unk18 = var_s4;
        temp_a6_9 = *(arg0->unk84 + temp_a5_2);
        temp_a6_9->unk40 = 0;
        temp_a2_8 = (*(arg0->unk10->unk1B4 + temp_a3_5))->unk94 + sp30;
        temp_at_5 = temp_a2_8->unk4;
        temp_a6_9->unk3C = temp_at_5;
        if (temp_at_5 != NULL) {
            (*(temp_a2_8->unk4->unk84 + temp_a5_2))->unk40 = arg0;
        } else {
            temp_a2_8->unk0 = arg0;
        }
        temp_a2_8->unk4 = arg0;
        temp_a6_9->unk0 = (u16) (temp_a6_9->unk0 | 0x40);
        temp_v0_5 = temp_a2_8->unkC + 1;
        temp_a2_8->unkC = temp_v0_5;
        temp_a0_8 = temp_a2_8->unk8 | 2;
        temp_a2_8->unk8 = temp_a0_8;
        if (temp_v0_5 >= 2U) {
            temp_a2_8->unk8 = (u16) (temp_a0_8 | 4);
        }
        return;
    }
    temp_s4->unk18 = (s32) temp_s2->unk4;
}

void FindBestID(s64 arg0, s32 arg1, s32 arg2, s32 arg3, u16 arg4, u16 arg5, s32 arg7) {
    s64 sp0;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a7;
    s32 var_s0;
    s32 var_t8;
    u16 var_a4;
    u16 var_a5;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_t0;
    void *temp_t2;
    void *var_a6;
    void *var_s1;
    void *var_v0;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a7 = arg7;
    sp0 = arg0;
    var_s0 = -1;
    temp_t1 = rrmWindowPrivateIndex * 4;
    temp_t2 = *((rrmScreenPrivateIndex * 4) + arg0->unk10->unk1B4);
    temp_t0 = *(arg0->unk84 + temp_t1);
    var_a6 = temp_t2->unk0;
    var_v0 = temp_t2;
    if (var_a6 != NULL) {
        var_a1 = 0;
        var_a4 = temp_t0->unk2;
        temp_t3 = temp_t2->unk14;
        var_a7 = temp_t2->unk10;
loop_8:
        var_a5 = var_v0->unkAA;
        if (var_a4 != var_a5) {
            var_a0 = 0;
        } else {
            var_a2 = var_v0->unkA0 & var_a7;
            if (((temp_t0->unk20 & var_a7) == var_a2) && (var_a3 = var_v0->unkA4 & temp_t3, var_a2 = temp_t0->unk24 & temp_t3, var_t8 = 1, (var_a2 == var_a3))) {

            } else {
                var_t8 = 0;
            }
            var_a0 = var_t8;
        }
        if ((var_a0 == 0) || (var_s0 = var_a1, (var_a4 != var_a5)) || (var_s0 = var_a1, ((var_v0->unkA8 & 4) == 0))) {
            var_a1 += 1;
            var_v0 += 0x24;
            if (var_a1 != var_a6) {
                goto loop_8;
            }
            goto block_13;
        }
        if (temp_t0->unk14 != var_a1) {
            var_a2_2 = temp_t0->unk14;
            if (var_a2_2 >= 0) {
                var_a3 = temp_t0->unk0 & 8;
                temp_a0 = (temp_t0->unk14 * 0x24) + temp_t2;
                temp_a0_2 = temp_a0 + 0x98;
                if (var_a3 != 0) {
                    temp_a4 = temp_t0->unk2C;
                    temp_a5 = temp_t0->unk30;
                    if (temp_a4 != NULL) {
                        (*(temp_a4->unk84 + temp_t1))->unk30 = temp_a5;
                    } else {
                        temp_a0->unk98 = temp_a5;
                    }
                    temp_a5_2 = temp_t0->unk30;
                    temp_a4_2 = temp_t0->unk2C;
                    if (temp_a5_2 != NULL) {
                        (*(temp_a5_2->unk84 + temp_t1))->unk2C = temp_a4_2;
                        temp_t0->unk30 = NULL;
                    } else {
                        temp_a0_2->unk4 = (s32) temp_a4_2;
                    }
                    temp_t0->unk2C = NULL;
                    var_a6 = temp_a0->unk98;
                    var_a4 = temp_a0_2->unk10 & 0x31 & 0xFFFF;
                    var_a3 = var_a4 & 1;
                    temp_a0_2->unk14 = (s32) (temp_a0_2->unk14 - 1);
                    if (var_a3 != 0) {
                        var_a4 |= 6;
                    }
                    if (var_a6 != NULL) {
                        var_a3 = temp_a0_2->unk4;
                        var_a5 = var_a4 | 2;
                        if (var_a3 != var_a6) {
                            var_a5 = var_a4 | 6;
                        }
                    } else {
                        var_a5 = var_a4 & ~0x10;
                    }
                    temp_a0_2->unk10 = var_a5;
                    temp_t0->unk0 = (u16) (temp_t0->unk0 & ~8);
                }
                var_a2_2 = -1;
                temp_t0->unk14 = -1;
            }
            AssignID__LIC(sp0, var_a1, var_a2_2, var_a3, var_a4, var_a5, var_a6, var_a7);
        }
        return;
    }
block_13:
    if (var_s0 >= 0) {
        var_s1 = ((var_s0 * 0x24) + temp_t2)->unk98;
        if (var_s1 != NULL) {
            do {
                cmapDID(var_s1, 0, 1);
                var_s1 = (*(var_s1->unk84 + (rrmWindowPrivateIndex * 4)))->unk30;
            } while (var_s1 != NULL);
        }
        NewID__FIC(sp0, var_s0);
    } else {
        temp_v0 = cmapDID((void *) sp0, var_a1, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
        if (temp_t0->unk14 != temp_v0) {
            NewID__FIC(sp0, temp_v0);
        }
    }
}

s32 FindFreeID(void *arg0) {
    s32 temp_a3;
    s32 temp_t0;
    s32 temp_t2;
    s32 var_a2;
    s32 var_a2_2;
    s64 var_a1;
    s64 var_a1_2;
    u16 var_a5;
    u16 var_a6_2;
    void *temp_a3_2;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_t1;
    void *var_a3;
    void *var_a3_2;
    void *var_a4;
    void *var_a6;
    void *var_a7;
    void *var_a7_2;

    temp_t0 = rrmWindowPrivateIndex * 4;
    var_a7 = *(arg0->unk84 + temp_t0);
    temp_t2 = rrmScreenPrivateIndex * 4;
    var_a5 = var_a7->unk2;
    temp_t1 = *(temp_t2 + arg0->unk10->unk1B4);
    var_a6 = temp_t1;
    if (var_a5 != 1) {
        goto block_1;
    }
    if (var_a6->unkC & 1) {
        var_a7->unk14 = (s32) var_a6->unk0;
        return 1;
    }
block_1:
    temp_a3 = var_a7->unk14;
    if ((temp_a3 < 0) || (((temp_a3 * 0x24) + var_a6)->unkA8 & 4)) {
        var_a4 = var_a6->unk0;
        var_a1 = 0;
        if (var_a4 != NULL) {
            var_a3 = var_a6;
loop_6:
            if ((var_a3->unkAA == var_a5) && !(var_a3->unkA8 & 1)) {
                var_a2 = var_a3->unkAC;
                if (var_a2 == 0) {
                    if (var_a7->unk14 >= 0) {
                        var_a3 = var_a7;
                        temp_a4 = (var_a7->unk14 * 0x24) + temp_t1;
                        var_a4 = temp_a4 + 0x98;
                        if (var_a7->unk0 & 8) {
                            temp_a6 = var_a3->unk2C;
                            temp_a5 = var_a3->unk30;
                            if (temp_a6 != NULL) {
                                (*(temp_a6->unk84 + temp_t0))->unk30 = temp_a5;
                            } else {
                                temp_a4->unk98 = temp_a5;
                            }
                            temp_a5_2 = var_a3->unk30;
                            temp_a6_2 = var_a3->unk2C;
                            if (temp_a5_2 != NULL) {
                                (*(temp_a5_2->unk84 + temp_t0))->unk2C = temp_a6_2;
                                var_a3->unk30 = NULL;
                            } else {
                                var_a4->unk4 = temp_a6_2;
                            }
                            var_a3->unk2C = NULL;
                            var_a2 = -9;
                            var_a7 = temp_a4->unk98;
                            var_a5 = var_a4->unk10 & 0x31 & 0xFFFF;
                            var_a4->unk14 = (s32) (var_a4->unk14 - 1);
                            if (var_a5 & 1) {
                                var_a5 |= 6;
                            }
                            var_a6 = (void *) (var_a5 | 2);
                            if (var_a7 != NULL) {
                                if (var_a4->unk4 != var_a7) {
                                    var_a6 = (void *) (var_a5 | 6);
                                }
                            } else {
                                var_a6 = (void *) (var_a5 & ~0x10);
                            }
                            var_a4->unk10 = (u16) var_a6;
                            var_a3->unk0 = (u16) (var_a3->unk0 & ~8);
                        }
                        var_a3->unk14 = -1;
                    }
                    AssignID__LIC(var_a1, var_a2, (s32) var_a3, (s32) var_a4, var_a5, (u16) var_a6, var_a7);
                    return 1;
                }
            }
            var_a1 += 1;
            var_a3 += 0x24;
            if (var_a1 != var_a4) {
                goto loop_6;
            }
            goto block_23;
        }
block_23:
        var_a3_2 = var_a6;
        var_a1_2 = 0;
        if (var_a6->unk30 != 0) {
            if (var_a4 != NULL) {
loop_27:
                if (var_a3_2->unkAA == var_a5) {
                    var_a6_2 = var_a3_2->unkA8;
                    if ((var_a6_2 & 1) && !(var_a6_2 & 0x20) && !(var_a6_2 & 2) && (var_a3_2->unkAC == 0)) {
                        var_a3_2->unkA8 = 0U;
                        var_a7_2 = *(arg0->unk84 + temp_t0);
                        var_a2_2 = var_a7_2->unk14;
                        temp_a3_2 = var_a7_2;
                        if (var_a2_2 >= 0) {
                            temp_a4_2 = *(arg0->unk10->unk1B4 + temp_t2) + (var_a7_2->unk14 * 0x24);
                            var_a4 = temp_a4_2 + 0x98;
                            if (var_a7_2->unk0 & 8) {
                                temp_a6_3 = temp_a3_2->unk2C;
                                temp_a5_3 = temp_a3_2->unk30;
                                if (temp_a6_3 != NULL) {
                                    (*(temp_a6_3->unk84 + temp_t0))->unk30 = temp_a5_3;
                                } else {
                                    temp_a4_2->unk98 = temp_a5_3;
                                }
                                temp_a5_4 = temp_a3_2->unk30;
                                temp_a6_4 = temp_a3_2->unk2C;
                                if (temp_a5_4 != NULL) {
                                    (*(temp_a5_4->unk84 + temp_t0))->unk2C = temp_a6_4;
                                    temp_a3_2->unk30 = NULL;
                                } else {
                                    var_a4->unk4 = (s32) temp_a6_4;
                                }
                                temp_a3_2->unk2C = NULL;
                                var_a5 = var_a4->unk10 & 0x31 & 0xFFFF;
                                var_a2_2 = var_a5 & 1;
                                var_a4->unk14 = (s32) (var_a4->unk14 - 1);
                                if (var_a2_2 != 0) {
                                    var_a5 |= 6;
                                }
                                var_a7_2 = temp_a4_2->unk98;
                                if (var_a7_2 != NULL) {
                                    var_a2_2 = var_a4->unk4;
                                    var_a6_2 = var_a5 | 2;
                                    if (var_a2_2 != var_a7_2) {
                                        var_a6_2 = var_a5 | 6;
                                    }
                                } else {
                                    var_a6_2 = var_a5 & ~0x10;
                                }
                                var_a4->unk10 = var_a6_2;
                                temp_a3_2->unk0 = (u16) (temp_a3_2->unk0 & ~8);
                            }
                            temp_a3_2->unk14 = -1;
                        }
                        AssignID__LIC(var_a1_2, var_a2_2, (s32) temp_a3_2, (s32) var_a4, var_a5, var_a6_2, var_a7_2);
                        return 1;
                    }
                }
                var_a1_2 += 1;
                var_a3_2 += 0x24;
                if (var_a1_2 != var_a4) {
                    goto loop_27;
                }
                goto block_46;
            }
            /* Duplicate return node #47. Try simplifying control flow for better match */
            return 0;
        }
block_46:
        return 0;
    }
    return 1;
}

void AssignID__LIC(void *arg0, s32 arg1) {
    s32 temp_a5;
    s32 temp_s8;
    s32 temp_v0;
    u16 temp_a0;
    u32 temp_v0_2;
    void *temp_a3;
    void *temp_a4;
    void *temp_at;
    void *temp_at_2;
    void *temp_s7;

    temp_v0 = arg0->unk84;
    temp_at = *((nfbWindowPrivateIndex * 4) + temp_v0);
    temp_a5 = rrmWindowPrivateIndex * 4;
    temp_a4 = *(temp_v0 + temp_a5);
    temp_s8 = temp_at->unk4;
    temp_s7 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    temp_a4->unk14 = arg1;
    temp_at->unk4 = arg1;
    temp_a4->unk30 = 0;
    temp_a3 = (arg1 * 0x24) + temp_s7;
    temp_at_2 = temp_a3->unk9C;
    temp_a4->unk2C = temp_at_2;
    if (temp_at_2 != NULL) {
        (*(temp_a3->unk9C->unk84 + temp_a5))->unk30 = arg0;
    } else {
        temp_a3->unk98 = arg0;
    }
    temp_a3->unk9C = arg0;
    temp_a4->unk0 = (u16) (temp_a4->unk0 | 8);
    temp_a0 = temp_a3->unkA8 | 2;
    temp_v0_2 = temp_a3->unkAC + 1;
    temp_a3->unkAC = temp_v0_2;
    temp_a3->unkA8 = temp_a0;
    if (temp_v0_2 >= 2U) {
        temp_a3->unkA8 = (u16) (temp_a0 | 4);
    } else if (!(temp_a0 & 1)) {
        SetDIDMode(arg0, temp_a3, temp_a4, temp_a5);
    }
    temp_s7->unk48(arg0, temp_s8);
}

void NewID__FIC(void *arg0, s64 arg2, void *arg3, void *arg5, void *arg6) {
    s32 var_a4_2;
    s64 var_a2;
    u16 temp_a7;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a5;
    void *temp_a6;
    void *temp_a6_2;
    void *var_a3;
    void *var_a4;
    void *var_a5;
    void *var_a6;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a5 = arg5;
    var_a6 = arg6;
    temp_a7 = rrmWindowPrivateIndex * 4;
    var_a4 = *(arg0->unk84 + temp_a7);
    if (var_a4->unk14 >= 0) {
        var_a3 = var_a4;
        temp_a5 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (var_a4->unk14 * 0x24);
        var_a5 = temp_a5 + 0x98;
        if (var_a4->unk0 & 8) {
            temp_a6 = var_a3->unk2C;
            temp_a4 = var_a3->unk30;
            if (temp_a6 != NULL) {
                (*(temp_a6->unk84 + temp_a7))->unk30 = temp_a4;
            } else {
                temp_a5->unk98 = temp_a4;
            }
            temp_a4_2 = var_a3->unk30;
            temp_a6_2 = var_a3->unk2C;
            if (temp_a4_2 != NULL) {
                (*(temp_a4_2->unk84 + temp_a7))->unk2C = temp_a6_2;
                var_a3->unk30 = NULL;
            } else {
                var_a5->unk4 = temp_a6_2;
            }
            var_a3->unk2C = NULL;
            var_a2 = -9;
            var_a6 = temp_a5->unk98;
            var_a4_2 = var_a5->unk10 & 0x31 & 0xFFFF;
            var_a5->unk14 = (s32) (var_a5->unk14 - 1);
            if (var_a4_2 & 1) {
                var_a4_2 |= 6;
            }
            if (var_a6 != NULL) {
                var_a4 = (void *) (var_a4_2 | 2);
                if (var_a5->unk4 != var_a6) {
                    var_a4 = (void *) ((s32) var_a4 | 4);
                }
            } else {
                var_a4 = (void *) (var_a4_2 & ~0x10);
            }
            var_a5->unk10 = (u16) var_a4;
            var_a3->unk0 = (u16) (var_a3->unk0 & ~8);
        }
        var_a3->unk14 = -1;
    }
    AssignID__LIC(var_a2, (s32) var_a3, (s32) var_a4, (s32) var_a5, (u16) var_a6, temp_a7);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x60, 0x64, 0x68, 0x6c], gap at: 0x50. */
void StealID(s64 arg0) {
    s64 sp88;
    s64 sp78;
    s64 sp70;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a0_4;
    s32 temp_a1_7;
    s32 temp_a1_8;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a4_14;
    s32 temp_a4_5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t1;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_6;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a2;
    s32 var_a2_10;
    s32 var_a2_11;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a2_8;
    s32 var_a2_9;
    s32 var_a3;
    s32 var_a3_10;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_a3_9;
    s32 var_a4_3;
    s32 var_a4_8;
    s32 var_a4_9;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_5;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_s0;
    s32 var_s1;
    s32 var_s4;
    s32 var_s8;
    s32 var_s8_2;
    s64 var_a0_2;
    s64 var_a1_2;
    s64 var_a4_6;
    s64 var_ra;
    u16 temp_a3;
    u16 temp_s6;
    u16 var_a4_5;
    u16 var_a5_2;
    u16 var_a5_3;
    u16 var_a5_4;
    u16 var_a6_4;
    u32 temp_a1;
    u32 temp_a5_2;
    u32 temp_s0;
    u32 var_a1;
    u32 var_s0_2;
    u32 var_s1_2;
    u32 var_s4_2;
    u32 var_s7;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_5;
    void *temp_a1_10;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_a1_9;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_a2_5;
    void *temp_a4;
    void *temp_a4_10;
    void *temp_a4_11;
    void *temp_a4_12;
    void *temp_a4_13;
    void *temp_a4_15;
    void *temp_a4_16;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_6;
    void *temp_a4_7;
    void *temp_a4_8;
    void *temp_a4_9;
    void *temp_a5;
    void *temp_a5_10;
    void *temp_a5_11;
    void *temp_a5_12;
    void *temp_a5_13;
    void *temp_a5_14;
    void *temp_a5_15;
    void *temp_a5_16;
    void *temp_a5_17;
    void *temp_a5_18;
    void *temp_a5_19;
    void *temp_a5_20;
    void *temp_a5_21;
    void *temp_a5_22;
    void *temp_a5_23;
    void *temp_a5_24;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a5_5;
    void *temp_a5_6;
    void *temp_a5_7;
    void *temp_a5_8;
    void *temp_a5_9;
    void *temp_a6_10;
    void *temp_a6_11;
    void *temp_a6_12;
    void *temp_a6_13;
    void *temp_a6_14;
    void *temp_a6_15;
    void *temp_a6_16;
    void *temp_a6_17;
    void *temp_a6_18;
    void *temp_a6_19;
    void *temp_a6_20;
    void *temp_a6_6;
    void *temp_a6_7;
    void *temp_a6_8;
    void *temp_a6_9;
    void *temp_a7_2;
    void *temp_a7_3;
    void *temp_a7_4;
    void *temp_s0_2;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_s2_4;
    void *temp_s3;
    void *temp_s3_2;
    void *temp_s3_3;
    void *temp_s5;
    void *temp_s8;
    void *temp_t0_2;
    void *var_a0_5;
    void *var_a4;
    void *var_a4_2;
    void *var_a4_4;
    void *var_a4_7;
    void *var_a5;
    void *var_a6;
    void *var_t0;
    void *var_t1;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    var_ra = saved_reg_ra;
    sp0 = arg0;
    temp_s5 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    var_a2 = rrmWindowPrivateIndex * 4;
    temp_a1 = temp_s5->unk0;
    var_a4 = temp_s5;
    temp_s6 = (*(arg0->unk84 + var_a2))->unk2;
    if (temp_a1 == 0) {
        goto block_23;
    }
    var_s1 = 0;
    goto loop_3;
block_2:
    var_s1 += 1;
    var_a4 += 0x24;
    if (var_s1 == temp_a1) {
        goto block_23;
    }
loop_3:
    var_a0 = 0;
    var_s0 = 0;
    if (var_a4->unkAA != temp_s6) {
        goto block_2;
    }
    if (var_a4->unkA8 & 0x14) {
        goto block_2;
    }
    temp_s3 = var_a4->unk98;
    var_t0 = *(var_a2 + temp_s3->unk84);
    if (var_t0->unk4 & 8) {
        goto block_2;
    }
    goto loop_17;
block_7:
    var_t1 = NULL;
block_8:
    var_a6 = var_t1;
block_9:
    if (var_a6 == NULL) {
        goto block_16;
    }
    if (!(temp_a5->unkA8 & 4)) {
        goto block_12;
    }
    goto block_131;
block_12:
    temp_s2 = temp_a5->unk98;
    if ((*(temp_s2->unk84 + var_a2))->unk4 & 8) {
        goto block_15;
    }
    goto block_161;
block_15:
block_16:
    var_s0 += 1;
    var_a0 += 0x24;
    if (var_s0 == temp_a1) {
        goto block_2;
    }
loop_17:
    if (var_s0 == var_s1) {
        goto block_16;
    }
    temp_a5 = var_a0 + temp_s5;
    temp_a3 = temp_a5->unkAA;
    temp_t1 = temp_s5->unk14;
    temp_a6 = temp_s5->unk10;
    if (var_t0->unk2 == temp_a3) {
        goto block_20;
    }
    var_a6 = NULL;
    goto block_9;
block_20:
    if ((var_t0->unk20 & temp_a6) != (temp_a5->unkA0 & temp_a6)) {
        goto block_7;
    }
    var_t1 = (void *)1;
    if ((var_t0->unk24 & temp_t1) != (temp_a5->unkA4 & temp_t1)) {
        goto block_7;
    }
    goto block_8;
block_23:
    var_s7 = 0;
    var_s1_2 = temp_s5->unk84;
    if (temp_a1 == 0) {
        goto block_188;
    }
    goto loop_35;
block_25:
    var_a2_2 = 0;
    var_a0_2 = 0;
    if (var_s8 < 0) {
        goto block_84;
    }
    if (unksp48 == 0) {
        goto block_28;
    }
    NewID__FIC(sp8, 0, 0);
block_28:
    NewID__FIC(sp8, var_s8);
block_29:
    var_a1 = temp_s0;
block_30:
    if ((s32) var_a1 >= 0) {
        goto block_192;
    }
block_32:
    if (var_s7 >= temp_s5->unk0) {
        goto block_34;
    }
    goto loop_35;
block_34:
    goto block_74;
loop_35:
    var_s1_2 += 1;
    var_a0_3 = var_s1_2 * 8;
    if (var_s1_2 < temp_s5->unk0) {
        goto block_37;
    }
    var_s1_2 = 0;
    var_a0_3 = 0 * 8;
block_37:
    temp_a0 = ((var_a0_3 + var_s1_2) * 4) + temp_s5;
    var_s7 += 1;
    if (temp_a0->unkAA != temp_s6) {
        goto block_32;
    }
    temp_a3_2 = temp_a0->unkA8 & 0x14;
    if (temp_a3_2 != 0) {
        goto block_32;
    }
    unksp48 = 0;
    temp_s2_2 = temp_a0->unk98;
    var_a1_2 = -1;
    sp8 = (s64) temp_s2_2;
    temp_s3_2 = *(temp_s2_2->unk84 + (rrmWindowPrivateIndex * 4));
    var_s8 = -1;
    temp_s2_3 = *(temp_s2_2->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    temp_s0 = temp_s3_2->unk14;
    if (!(temp_s3_2->unk6 & 8)) {
        goto block_56;
    }
    sp88 = -1;
    NewID__FIC(sp8, 0, 0, temp_a3_2);
    var_a1_2 = -1;
block_41:
    temp_a5_2 = temp_s2_3->unk0;
    var_s4 = 0;
    if (temp_a5_2 == 0) {
        goto block_25;
    }
    var_a0_4 = 0;
    var_a2_3 = rrmWindowPrivateIndex * 4;
    goto loop_49;
block_43:
    var_a7 = 0;
block_44:
    var_a6_2 = var_a7;
block_45:
    if (var_a6_2 == 0) {
        goto block_48;
    }
    if (temp_a4->unkA8 & 4) {
        goto block_58;
    }
    if (!((*(temp_a4->unk98->unk84 + var_a2_3))->unk4 & 8)) {
        goto block_55;
    }
block_48:
    var_s4 += 1;
    var_a0_4 += 0x24;
    if (var_s4 == temp_a5_2) {
        goto block_25;
    }
loop_49:
    if (var_s4 == temp_s0) {
        goto block_48;
    }
    temp_a4 = var_a0_4 + temp_s2_3;
    var_a7 = temp_s2_3->unk14;
    temp_a6_2 = temp_s2_3->unk10;
    if (temp_s3_2->unk2 == temp_a4->unkAA) {
        goto block_52;
    }
    var_a6_2 = 0;
    goto block_45;
block_52:
    if ((temp_s3_2->unk20 & temp_a6_2) != (temp_a4->unkA0 & temp_a6_2)) {
        goto block_43;
    }
    var_a7 = 1;
    if ((temp_s3_2->unk24 & var_a7) != (temp_a4->unkA4 & var_a7)) {
        goto block_43;
    }
    goto block_44;
block_55:
    var_s8 = var_s4;
    goto block_48;
block_56:
    if (temp_s2_3->unk4 != 0) {
        goto block_41;
    }
    unksp48 = 1;
    goto block_41;
block_58:
    if (unksp48 == 0) {
        goto block_60;
    }
    temp_s2_3->unk20((void *) sp8, 0, 0, unksp48, sp8, temp_a5_2, var_a6_2, var_a7);
    var_a2_3 = rrmWindowPrivateIndex * 4;
block_60:
    var_a4_2 = *(var_a2_3 + sp8->unk84);
    var_a3 = var_a4_2->unk14;
    temp_a0_2 = var_a4_2;
    if (var_a3 < 0) {
        goto block_73;
    }
    var_a3 = var_a4_2->unk14 * 0x24;
    temp_a1_2 = *(sp8->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + var_a3;
    temp_a1_3 = temp_a1_2 + 0x98;
    if (!(var_a4_2->unk0 & 8)) {
        goto block_72;
    }
    temp_a5_3 = temp_a0_2->unk2C;
    temp_a4_2 = temp_a0_2->unk30;
    if (temp_a5_3 == NULL) {
        goto block_189;
    }
    (*(temp_a5_3->unk84 + var_a2_3))->unk30 = temp_a4_2;
block_64:
    temp_a4_3 = temp_a0_2->unk30;
    temp_a5_4 = temp_a0_2->unk2C;
    if (temp_a4_3 == NULL) {
        goto block_190;
    }
    (*(temp_a4_3->unk84 + var_a2_3))->unk2C = temp_a5_4;
    temp_a0_2->unk30 = NULL;
block_66:
    temp_a0_2->unk2C = NULL;
    temp_a5_5 = temp_a1_2->unk98;
    var_a2_3 = temp_a1_3->unk10 & 0x31 & 0xFFFF;
    temp_a1_3->unk14 = (s32) (temp_a1_3->unk14 - 1);
    if (!(var_a2_3 & 1)) {
        goto block_68;
    }
    var_a2_3 |= 6;
block_68:
    var_a4_2 = (void *) (-0x11 & var_a2_3);
    if (temp_a5_5 == NULL) {
        goto block_71;
    }
    var_a4_2 = (void *) (var_a2_3 | 2);
    if (temp_a1_3->unk4 == temp_a5_5) {
        goto block_71;
    }
    var_a4_2 = (void *) (var_a2_3 | 6);
block_71:
    temp_a1_3->unk10 = (u16) var_a4_2;
    var_a3 = temp_a0_2->unk0 & ~8;
    temp_a0_2->unk0 = (u16) var_a3;
block_72:
    temp_a0_2->unk14 = -1;
block_73:
    AssignID__LIC(sp8, var_s4, var_a2_3, var_a3, (u16) var_a4_2);
    goto block_29;
block_74:
    var_ra = sp70;
block_75:
    var_s0_2 = temp_s5->unk84;
    goto loop_80;
block_76:
    var_a2_4 = 0 * 8;
block_77:
    temp_a2 = ((var_a2_4 + var_s0_2) * 4) + temp_s5;
    if (temp_a2->unkAA != temp_s6) {
        goto block_79;
    }
    goto block_82;
block_79:
loop_80:
    var_s0_2 += 1;
    temp_a3_3 = var_s0_2 < temp_s5->unk0;
    var_a2_4 = var_s0_2 * 8;
    if (temp_a3_3 != 0) {
        goto block_77;
    }
    var_s0_2 = 0;
    goto block_76;
block_82:
    if (temp_a2->unkA8 & 1) {
        goto loop_80;
    }
    sp70 = var_ra;
    SetDIDMode(temp_s5, temp_s5 + 0x98, (void *) var_s0_2, cmapDID(temp_a2->unk98, (s32) temp_s5->unk0, (s32) temp_a2, temp_a3_3));
    NewID__FIC(sp0, (s32) var_s0_2);
    temp_s5->unk84 = var_s0_2;
    return;
block_84:
    var_s8_2 = 0;
    if (temp_a5_2 == 0) {
        goto block_95;
    }
    goto loop_88;
block_86:
    if (0 != 0) {
        goto block_94;
    }
block_87:
    var_a0_2 += 1;
    var_a2_2 += 0x24;
    if (var_a0_2 == temp_a5_2) {
        goto block_95;
    }
loop_88:
    temp_a4_4 = var_a2_2 + temp_s2_3;
    if (var_a0_2 == temp_s0) {
        goto block_87;
    }
    if (!(temp_a4_4->unkA8 & 4)) {
        goto block_87;
    }
    temp_a6_3 = temp_s2_3->unk10;
    temp_t0 = temp_s2_3->unk14;
    if (temp_s3_2->unk2 == temp_a4_4->unkAA) {
        goto block_92;
    }
    goto block_87;
block_92:
    if ((temp_s3_2->unk20 & temp_a6_3 & ~4) != (temp_a4_4->unkA0 & temp_a6_3 & ~4)) {
        goto block_86;
    }
    if ((temp_s3_2->unk24 & temp_t0) != (temp_a4_4->unkA4 & temp_t0)) {
        goto block_86;
    }
block_94:
    var_a1_2 = var_a0_2;
block_95:
    var_s4_2 = 0;
    if (temp_a5_2 == 0) {
        goto block_122;
    }
    if (temp_s0 != 0) {
        goto block_101;
    }
block_97:
block_98:
    var_a0_5 = var_s8_2 + temp_s2_3;
    if (1 == 0) {
        goto block_103;
    }
block_99:
    var_s4_2 += 1;
    var_s8_2 += 0x24;
    if (var_s4_2 >= temp_s2_3->unk0) {
        goto block_122;
    }
    if (var_s4_2 == temp_s0) {
        goto block_98;
    }
block_101:
    if (var_s4_2 == var_a1_2) {
        goto block_97;
    }
    var_a0_5 = var_s8_2 + temp_s2_3;
block_103:
    if (var_a0_5->unkA8 & 4) {
        goto block_99;
    }
    temp_a6_4 = temp_s2_3->unk10;
    temp_a4_5 = temp_s2_3->unk14;
    if (temp_s3_2->unk2 == var_a0_5->unkAA) {
        goto block_106;
    }
    var_a2_5 = 0;
    goto block_112;
block_106:
    if ((temp_s3_2->unk20 & temp_a6_4 & ~4) == (var_a0_5->unkA0 & temp_a6_4 & ~4)) {
        goto block_108;
    }
    var_a4_3 = 0;
    goto block_111;
block_108:
    var_a4_3 = 0;
    if ((temp_s3_2->unk24 & temp_a4_5) != (var_a0_5->unkA4 & temp_a4_5)) {
        goto block_111;
    }
    var_a4_3 = 1;
block_111:
    var_a2_5 = var_a4_3;
block_112:
    if (var_a2_5 == 0) {
        goto block_99;
    }
    var_a4_4 = var_a0_5->unk98;
    temp_a3_4 = rrmWindowPrivateIndex * 4;
    temp_a2_2 = *(var_a4_4->unk84 + temp_a3_4);
    if (!(temp_a2_2->unk6 & 8)) {
        goto block_115;
    }
    sp20 = (s64) var_a4_4;
    sp88 = var_a1_2;
    sp78 = (s64) temp_a2_2;
    SetDIDMode(var_a4_4, NULL, NULL, temp_a3_4, var_a4_4, (void *) temp_s2_3->unk0, (void *) temp_a6_4);
block_115:
    if ((temp_s3_2->unk20 & 4) != (temp_a2_2->unk20 & 4)) {
        goto block_117;
    }
    goto block_218;
block_117:
    if (var_a1_2 >= 0) {
        goto block_221;
    }
    temp_a0_3 = *(var_a4_4->unk84 + (rrmWindowPrivateIndex * 4));
    var_a3_2 = temp_a0_3->unk14;
    temp_a5_6 = *(var_a4_4->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    temp_a2_3 = (var_a3_2 * 0x24) + temp_a5_6 + 0x98;
    var_a1_2 = (s64) var_s4_2;
    if (!(temp_a2_3->unk10 & 8)) {
        goto block_191;
    }
    var_a3_2 = (s32) temp_a0_3->unk2;
    temp_a7 = temp_a5_6->unk14;
    temp_a6_5 = temp_a5_6->unk10;
    if (var_a3_2 == temp_a2_3->unk12) {
        goto block_123;
    }
    var_a6_3 = 0;
    goto block_129;
block_122:
    SetDIDMode((void *) sp8, (void *) var_a1_2);
    var_a1 = -1U;
    goto block_30;
block_123:
    if ((temp_a2_3->unk8 & temp_a6_5) == (temp_a0_3->unk20 & temp_a6_5)) {
        goto block_125;
    }
    var_a7_2 = 0;
    goto block_128;
block_125:
    var_a7_2 = 0;
    if ((temp_a2_3->unkC & temp_a7) != (temp_a0_3->unk24 & temp_a7)) {
        goto block_128;
    }
    var_a7_2 = 1;
block_128:
    var_a6_3 = var_a7_2;
block_129:
    sp10 = (s64) temp_a0_3;
    sp18 = (s64) temp_a2_3;
    if (var_a6_3 == 0) {
        goto block_191;
    }
block_130:
    goto block_99;
block_131:
    if (!(var_t0->unk6 & 8)) {
        goto block_134;
    }
    temp_a3_5 = temp_s5->unk4;
    if (temp_a3_5 == 0) {
        goto block_134;
    }
    SetDIDMode(temp_s3, NULL, NULL, temp_a3_5, var_a4, temp_a5, var_a6, var_t0);
    var_ra = sp70;
    var_a2 = rrmWindowPrivateIndex * 4;
    var_t0 = *(var_a2 + temp_s3->unk84);
block_134:
    var_a3_3 = var_t0->unk14;
    if (var_a3_3 < 0) {
        goto block_147;
    }
    var_a3_3 = var_t0->unk14 * 0x24;
    temp_a1_4 = *(temp_s3->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + var_a3_3;
    temp_a1_5 = temp_a1_4 + 0x98;
    if (!(var_t0->unk0 & 8)) {
        goto block_146;
    }
    temp_a5_7 = var_t0->unk2C;
    temp_a4_6 = var_t0->unk30;
    if (temp_a5_7 == NULL) {
        goto block_212;
    }
    (*(temp_a5_7->unk84 + var_a2))->unk30 = temp_a4_6;
block_138:
    temp_a4_7 = var_t0->unk30;
    temp_a5_8 = var_t0->unk2C;
    if (temp_a4_7 == NULL) {
        goto block_213;
    }
    (*(temp_a4_7->unk84 + var_a2))->unk2C = temp_a5_8;
    var_t0->unk30 = NULL;
block_140:
    var_t0->unk2C = NULL;
    var_a2 = temp_a1_5->unk10 & 0x31 & 0xFFFF;
    var_a3_3 = var_a2 & 1;
    temp_a1_5->unk14 = (s32) (temp_a1_5->unk14 - 1);
    if (var_a3_3 == 0) {
        goto block_142;
    }
    var_a2 |= 6;
block_142:
    temp_a5_9 = temp_a1_4->unk98;
    if (temp_a5_9 == NULL) {
        goto block_214;
    }
    var_a3_3 = temp_a1_5->unk4;
    var_a4_5 = var_a2 | 2;
    if (var_a3_3 == temp_a5_9) {
        goto block_145;
    }
    var_a4_5 = var_a2 | 6;
block_145:
    temp_a1_5->unk10 = var_a4_5;
    var_t0->unk0 = (u16) (var_t0->unk0 & ~8);
block_146:
    sp70 = var_ra;
    var_t0->unk14 = -1;
block_147:
    sp70 = var_ra;
    AssignID__LIC((s64) temp_s3, var_s0, var_a2, var_a3_3);
    var_a2_6 = rrmWindowPrivateIndex * 4;
    var_a5 = *(sp0->unk84 + var_a2_6);
    var_a4_6 = sp0;
    var_a3_4 = var_a5->unk14;
    if (var_a3_4 < 0) {
        goto block_160;
    }
    temp_a1_6 = var_a5;
    var_a3_4 = var_a5->unk0 & 8;
    var_a4_6 = *(var_a4_6->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (var_a5->unk14 * 0x24) + 0x98;
    if (var_a3_4 == 0) {
        goto block_159;
    }
    temp_a5_10 = temp_a1_6->unk2C;
    temp_a6_6 = temp_a1_6->unk30;
    if (temp_a5_10 == NULL) {
        goto block_206;
    }
    (*(temp_a5_10->unk84 + var_a2_6))->unk30 = temp_a6_6;
block_151:
    temp_a6_7 = temp_a1_6->unk30;
    temp_a5_11 = temp_a1_6->unk2C;
    if (temp_a6_7 == NULL) {
        goto block_207;
    }
    (*(temp_a6_7->unk84 + var_a2_6))->unk2C = temp_a5_11;
    temp_a1_6->unk30 = NULL;
block_153:
    temp_a1_6->unk2C = NULL;
    var_a2_6 = var_a4_6->unk10 & 0x31 & 0xFFFF;
    var_a3_4 = var_a2_6 & 1;
    var_a4_6->unk14 = (s32) (var_a4_6->unk14 - 1);
    if (var_a3_4 == 0) {
        goto block_155;
    }
    var_a2_6 |= 6;
block_155:
    temp_a6_8 = var_a4_6->unk0;
    if (temp_a6_8 == NULL) {
        goto block_208;
    }
    var_a3_4 = var_a4_6->unk4;
    var_a5 = (void *) (var_a2_6 | 2);
    if (var_a3_4 == temp_a6_8) {
        goto block_158;
    }
    var_a5 = (void *) (var_a2_6 | 6);
block_158:
    var_a4_6->unk10 = (u16) var_a5;
    temp_a1_6->unk0 = (u16) (temp_a1_6->unk0 & ~8);
block_159:
    temp_a1_6->unk14 = -1;
block_160:
    AssignID__LIC(sp0, var_s1, var_a2_6, var_a3_4, (u16) var_a4_6, (u16) var_a5);
    return;
block_161:
    AssignID__LIC((s64) temp_s3, 0, 0, (s32) temp_a3, (u16) var_a4, (u16) temp_a5, var_a6, (s32) var_t0);
    temp_s5->unk20(temp_s2, 0, 1);
    var_a2_7 = rrmWindowPrivateIndex * 4;
    temp_t0_2 = *(var_a2_7 + temp_s3->unk84);
    var_a3_5 = temp_t0_2->unk14;
    if (var_a3_5 < 0) {
        goto block_174;
    }
    var_a3_5 = temp_t0_2->unk0 & 8;
    temp_a4_8 = *(temp_s3->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_t0_2->unk14 * 0x24);
    temp_a4_9 = temp_a4_8 + 0x98;
    if (var_a3_5 == 0) {
        goto block_173;
    }
    temp_a6_9 = temp_t0_2->unk2C;
    temp_a5_12 = temp_t0_2->unk30;
    if (temp_a6_9 == NULL) {
        goto block_215;
    }
    (*(temp_a6_9->unk84 + var_a2_7))->unk30 = temp_a5_12;
block_165:
    temp_a5_13 = temp_t0_2->unk30;
    temp_a6_10 = temp_t0_2->unk2C;
    if (temp_a5_13 == NULL) {
        goto block_216;
    }
    (*(temp_a5_13->unk84 + var_a2_7))->unk2C = temp_a6_10;
    temp_t0_2->unk30 = NULL;
block_167:
    temp_t0_2->unk2C = NULL;
    var_a3_5 = temp_a4_9->unk14 - 1;
    var_a2_7 = temp_a4_9->unk10 & 0x31 & 0xFFFF;
    temp_a4_9->unk14 = var_a3_5;
    if (!(var_a2_7 & 1)) {
        goto block_169;
    }
    var_a2_7 |= 6;
block_169:
    temp_a6_11 = temp_a4_8->unk98;
    if (temp_a6_11 == NULL) {
        goto block_217;
    }
    var_a5_2 = var_a2_7 | 2;
    if (temp_a4_9->unk4 == temp_a6_11) {
        goto block_172;
    }
    var_a5_2 = var_a2_7 | 6;
block_172:
    temp_a4_9->unk10 = var_a5_2;
    temp_t0_2->unk0 = (u16) (temp_t0_2->unk0 & ~8);
block_173:
    temp_t0_2->unk14 = -1;
block_174:
    AssignID__LIC((s64) temp_s3, var_s0, var_a2_7, var_a3_5);
    var_a2_8 = rrmWindowPrivateIndex * 4;
    temp_a5_14 = *(sp0->unk84 + var_a2_8);
    var_a3_6 = temp_a5_14->unk14;
    if (var_a3_6 < 0) {
        goto block_187;
    }
    var_a3_6 = temp_a5_14->unk0 & 8;
    temp_a4_10 = *(sp0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a5_14->unk14 * 0x24);
    temp_a4_11 = temp_a4_10 + 0x98;
    if (var_a3_6 == 0) {
        goto block_186;
    }
    temp_a6_12 = temp_a5_14->unk2C;
    temp_a5_15 = temp_a5_14->unk30;
    if (temp_a6_12 == NULL) {
        goto block_209;
    }
    (*(temp_a6_12->unk84 + var_a2_8))->unk30 = temp_a5_15;
block_178:
    temp_a5_16 = temp_a5_14->unk30;
    temp_a6_13 = temp_a5_14->unk2C;
    if (temp_a5_16 == NULL) {
        goto block_210;
    }
    (*(temp_a5_16->unk84 + var_a2_8))->unk2C = temp_a6_13;
    temp_a5_14->unk30 = NULL;
block_180:
    temp_a5_14->unk2C = NULL;
    var_a2_8 = temp_a4_11->unk10 & 0x31 & 0xFFFF;
    var_a3_6 = var_a2_8 & 1;
    temp_a4_11->unk14 = (s32) (temp_a4_11->unk14 - 1);
    if (var_a3_6 == 0) {
        goto block_182;
    }
    var_a2_8 |= 6;
block_182:
    temp_a6_14 = temp_a4_10->unk98;
    if (temp_a6_14 == NULL) {
        goto block_211;
    }
    var_a3_6 = temp_a4_11->unk4;
    var_a5_3 = var_a2_8 | 2;
    if (var_a3_6 == temp_a6_14) {
        goto block_185;
    }
    var_a5_3 = var_a2_8 | 6;
block_185:
    temp_a4_11->unk10 = var_a5_3;
    temp_a5_14->unk0 = (u16) (temp_a5_14->unk0 & ~8);
block_186:
    temp_a5_14->unk14 = -1;
block_187:
    AssignID__LIC(sp0, var_s1, var_a2_8, var_a3_6);
    return;
block_188:
    goto block_75;
block_189:
    temp_a1_2->unk98 = temp_a4_2;
    goto block_64;
block_190:
    temp_a1_3->unk4 = temp_a5_4;
    goto block_66;
block_191:
    sp10 = (s64) temp_a0_3;
    sp18 = (s64) temp_a2_3;
    sp88 = var_a1_2;
    AssignID__LIC((s64) var_a4_4, (s32) sp10, (s32) temp_a5_6, var_a3_2, (u16) var_a4_4, (u16) temp_a5_6);
    sp18->unk10 = (u16) (sp18->unk10 | 8);
    sp18->unk8 = (s32) sp10->unk20;
    sp18->unkC = (s32) sp10->unk24;
    goto block_130;
block_192:
    var_a2_9 = rrmWindowPrivateIndex * 4;
    temp_a5_17 = *(sp0->unk84 + var_a2_9);
    var_a3_7 = temp_a5_17->unk14;
    if (var_a3_7 < 0) {
        goto block_205;
    }
    var_a3_7 = temp_a5_17->unk0 & 8;
    temp_a4_12 = *(sp0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a5_17->unk14 * 0x24);
    temp_a4_13 = temp_a4_12 + 0x98;
    if (var_a3_7 == 0) {
        goto block_204;
    }
    temp_a6_15 = temp_a5_17->unk2C;
    temp_a5_18 = temp_a5_17->unk30;
    if (temp_a6_15 == NULL) {
        goto block_239;
    }
    (*(temp_a6_15->unk84 + var_a2_9))->unk30 = temp_a5_18;
block_196:
    temp_a5_19 = temp_a5_17->unk30;
    temp_a6_16 = temp_a5_17->unk2C;
    if (temp_a5_19 == NULL) {
        goto block_240;
    }
    (*(temp_a5_19->unk84 + var_a2_9))->unk2C = temp_a6_16;
    temp_a5_17->unk30 = NULL;
block_198:
    temp_a5_17->unk2C = NULL;
    var_a2_9 = temp_a4_13->unk10 & 0x31 & 0xFFFF;
    var_a3_7 = var_a2_9 & 1;
    temp_a4_13->unk14 = (s32) (temp_a4_13->unk14 - 1);
    if (var_a3_7 == 0) {
        goto block_200;
    }
    var_a2_9 |= 6;
block_200:
    temp_a6_17 = temp_a4_12->unk98;
    if (temp_a6_17 == NULL) {
        goto block_241;
    }
    var_a3_7 = temp_a4_13->unk4;
    var_a5_4 = var_a2_9 | 2;
    if (var_a3_7 == temp_a6_17) {
        goto block_203;
    }
    var_a5_4 = var_a2_9 | 6;
block_203:
    temp_a4_13->unk10 = var_a5_4;
    temp_a5_17->unk0 = (u16) (temp_a5_17->unk0 & ~8);
block_204:
    temp_a5_17->unk14 = -1;
block_205:
    AssignID__LIC(sp0, (s32) var_a1, var_a2_9, var_a3_7);
    temp_s5->unk84 = var_s1_2;
    return;
block_206:
    var_a4_6->unk0 = temp_a6_6;
    goto block_151;
block_207:
    var_a4_6->unk4 = (s32) temp_a5_11;
    goto block_153;
block_208:
    var_a5 = (void *) (var_a2_6 & ~0x10);
    goto block_158;
block_209:
    temp_a4_10->unk98 = temp_a5_15;
    goto block_178;
block_210:
    temp_a4_11->unk4 = (s32) temp_a6_13;
    goto block_180;
block_211:
    var_a5_3 = var_a2_8 & ~0x10;
    goto block_185;
block_212:
    temp_a1_4->unk98 = temp_a4_6;
    goto block_138;
block_213:
    temp_a1_5->unk4 = (s32) temp_a5_8;
    goto block_140;
block_214:
    var_a4_5 = var_a2 & ~0x10;
    goto block_145;
block_215:
    temp_a4_8->unk98 = temp_a5_12;
    goto block_165;
block_216:
    temp_a4_9->unk4 = temp_a6_10;
    goto block_167;
block_217:
    var_a5_2 = var_a2_7 & ~0x10;
    goto block_172;
block_218:
    temp_s3_3 = *(var_a4_4->unk84 + (rrmWindowPrivateIndex * 4));
    temp_a3_6 = rrmScreenPrivateIndex * 4;
    temp_a2_4 = *(var_a4_4->unk10->unk1B4 + temp_a3_6);
    temp_s8 = (temp_s3_3->unk14 * 0x24) + temp_a2_4 + 0x98;
    if (!(temp_s8->unk10 & 8)) {
        goto block_280;
    }
    temp_a1_7 = temp_a2_4->unk14;
    temp_a0_4 = temp_a2_4->unk10;
    if (temp_s3_3->unk2 == temp_s8->unk12) {
        goto block_242;
    }
    var_a0_6 = 0;
    goto block_248;
block_221:
    if (temp_s2_3->unk4 == 0) {
        goto block_282;
    }
block_222:
    var_a2_10 = rrmWindowPrivateIndex * 4;
    temp_a6_18 = *(var_a2_10 + var_a4_4->unk84);
    var_a3_8 = temp_a6_18->unk14;
    if (var_a3_8 < 0) {
        goto block_236;
    }
    var_a3_8 = temp_a6_18->unk0 & 8;
    temp_a5_20 = *(var_a4_4->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a6_18->unk14 * 0x24);
    temp_a5_21 = temp_a5_20 + 0x98;
    if (var_a3_8 == 0) {
        goto block_235;
    }
    temp_a7_2 = temp_a6_18->unk2C;
    temp_a6_19 = temp_a6_18->unk30;
    if (temp_a7_2 == NULL) {
        goto block_277;
    }
    (*(temp_a7_2->unk84 + var_a2_10))->unk30 = temp_a6_19;
block_226:
    temp_a6_20 = temp_a6_18->unk30;
    temp_a7_3 = temp_a6_18->unk2C;
    if (temp_a6_20 == NULL) {
        goto block_278;
    }
    (*(temp_a6_20->unk84 + var_a2_10))->unk2C = temp_a7_3;
    temp_a6_18->unk30 = NULL;
block_228:
    temp_a6_18->unk2C = NULL;
    var_a3_8 = temp_a5_21->unk14 - 1;
    var_a2_10 = temp_a5_21->unk10 & 0x31 & 0xFFFF;
    temp_a5_21->unk14 = var_a3_8;
    if (!(var_a2_10 & 1)) {
        goto block_230;
    }
    var_a2_10 = (var_a2_10 | 6) & 0xFFFF;
block_230:
    temp_a7_4 = temp_a5_20->unk98;
    if (temp_a7_4 == NULL) {
        goto block_279;
    }
    var_a6_4 = (var_a2_10 | 2) & 0xFFFF;
    if (temp_a5_21->unk4 == temp_a7_4) {
        goto block_234;
    }
    var_a6_5 = var_a2_10 | 6;
block_233:
    var_a6_4 = var_a6_5 & 0xFFFF;
block_234:
    temp_a5_21->unk10 = var_a6_4;
    temp_a6_18->unk0 = (u16) (temp_a6_18->unk0 & ~8);
block_235:
    temp_a6_18->unk14 = -1;
block_236:
    AssignID__LIC((s64) var_a4_4, (s32) var_a1_2, var_a2_10, var_a3_8, (u16) var_a4_4);
    temp_s0_2 = *(sp8->unk84 + (rrmWindowPrivateIndex * 4));
    temp_a2_5 = *(sp8->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    temp_s2_4 = (temp_s0_2->unk14 * 0x24) + temp_a2_5 + 0x98;
    var_a3_9 = temp_s2_4->unk10 & 8;
    if (var_a3_9 == 0) {
        goto block_281;
    }
    temp_a4_14 = temp_a2_5->unk14;
    temp_a1_8 = temp_a2_5->unk10;
    if (temp_s0_2->unk2 == temp_s2_4->unk12) {
        goto block_266;
    }
    var_a1_3 = 0;
    goto block_272;
block_239:
    temp_a4_12->unk98 = temp_a5_18;
    goto block_196;
block_240:
    temp_a4_13->unk4 = (s32) temp_a6_16;
    goto block_198;
block_241:
    var_a5_4 = -0x11 & var_a2_9;
    goto block_203;
block_242:
    if ((temp_s8->unk8 & temp_a0_4) == (temp_s3_3->unk20 & temp_a0_4)) {
        goto block_244;
    }
    var_a1_4 = 0;
    goto block_247;
block_244:
    var_a1_4 = 0;
    if ((temp_s8->unkC & temp_a1_7) != (temp_s3_3->unk24 & temp_a1_7)) {
        goto block_247;
    }
    var_a1_4 = 1;
block_247:
    var_a0_6 = var_a1_4;
block_248:
    if (var_a0_6 == 0) {
        goto block_280;
    }
block_249:
    if (unksp48 == 0) {
        goto block_251;
    }
    AssignID__LIC(sp8, 0, 0);
block_251:
    var_a2_11 = rrmWindowPrivateIndex * 4;
    var_a4_7 = *(var_a2_11 + sp8->unk84);
    var_a3_10 = var_a4_7->unk14;
    temp_a0_5 = var_a4_7;
    if (var_a3_10 < 0) {
        goto block_265;
    }
    var_a3_10 = var_a4_7->unk0 & 8;
    temp_a1_9 = *(sp8->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (var_a4_7->unk14 * 0x24);
    temp_a1_10 = temp_a1_9 + 0x98;
    if (var_a3_10 == 0) {
        goto block_264;
    }
    temp_a5_22 = temp_a0_5->unk2C;
    temp_a4_15 = temp_a0_5->unk30;
    if (temp_a5_22 == NULL) {
        goto block_274;
    }
    var_a3_10 = *(temp_a5_22->unk84 + var_a2_11);
    var_a3_10->unk30 = temp_a4_15;
block_255:
    temp_a4_16 = temp_a0_5->unk30;
    temp_a5_23 = temp_a0_5->unk2C;
    if (temp_a4_16 == NULL) {
        goto block_275;
    }
    (*(temp_a4_16->unk84 + var_a2_11))->unk2C = temp_a5_23;
    temp_a0_5->unk30 = NULL;
block_257:
    temp_a0_5->unk2C = NULL;
    var_a2_11 = temp_a1_10->unk10 & 0x31 & 0xFFFF;
    temp_a1_10->unk14 = (s32) (temp_a1_10->unk14 - 1);
    if (!(var_a2_11 & 1)) {
        goto block_259;
    }
    var_a2_11 = (var_a2_11 | 6) & 0xFFFF;
block_259:
    temp_a5_24 = temp_a1_9->unk98;
    if (temp_a5_24 == NULL) {
        goto block_276;
    }
    var_a4_7 = (void *) ((var_a2_11 | 2) & 0xFFFF);
    if (temp_a1_10->unk4 == temp_a5_24) {
        goto block_263;
    }
    var_a4_8 = var_a2_11 | 6;
block_262:
    var_a4_7 = (void *) (var_a4_8 & 0xFFFF);
block_263:
    temp_a1_10->unk10 = (u16) var_a4_7;
    temp_a0_5->unk0 = (u16) (temp_a0_5->unk0 & ~8);
block_264:
    temp_a0_5->unk14 = -1;
block_265:
    AssignID__LIC(sp8, (s32) var_s4_2, var_a2_11, var_a3_10, (u16) var_a4_7);
    goto block_29;
block_266:
    var_a3_9 = temp_s2_4->unk8 & temp_a1_8;
    if (var_a3_9 == (temp_s0_2->unk20 & temp_a1_8)) {
        goto block_268;
    }
    var_a4_9 = 0;
    goto block_271;
block_268:
    var_a4_9 = 0;
    if ((temp_s2_4->unkC & temp_a4_14) != (temp_s0_2->unk24 & temp_a4_14)) {
        goto block_271;
    }
    var_a4_9 = 1;
block_271:
    var_a1_3 = var_a4_9;
block_272:
    if (var_a1_3 == 0) {
        goto block_281;
    }
block_273:
    var_a1 = var_s4_2;
    goto block_30;
block_274:
    temp_a1_9->unk98 = temp_a4_15;
    goto block_255;
block_275:
    temp_a1_10->unk4 = temp_a5_23;
    goto block_257;
block_276:
    var_a4_8 = -0x11 & var_a2_11;
    goto block_262;
block_277:
    temp_a5_20->unk98 = temp_a6_19;
    goto block_226;
block_278:
    temp_a5_21->unk4 = temp_a7_3;
    goto block_228;
block_279:
    var_a6_5 = -0x11 & var_a2_10;
    goto block_233;
block_280:
    AssignID__LIC((s64) var_a4_4, (s32) temp_s3_3, (s32) temp_a2_4, temp_a3_6, (u16) var_a4_4);
    temp_s8->unk10 = (u16) (temp_s8->unk10 | 8);
    temp_s8->unk8 = (s32) temp_s3_3->unk20;
    temp_s8->unkC = (s32) temp_s3_3->unk24;
    goto block_249;
block_281:
    temp_a2_5->unk28(sp8, temp_s0_2, temp_a2_5, var_a3_9);
    temp_s2_4->unk10 = (u16) (temp_s2_4->unk10 | 8);
    temp_s2_4->unk8 = (s32) temp_s0_2->unk20;
    temp_s2_4->unkC = (s32) temp_s0_2->unk24;
    goto block_273;
block_282:
    sp20 = (s64) var_a4_4;
    sp88 = var_a1_2;
    temp_s2_3->unk20(var_a4_4, 0, 0);
    goto block_222;
}

void SetReservedID(s64 arg0, s64 arg1, void *arg6, ? arg_sp0) {
    s32 temp_a1;
    s32 temp_s3;
    s32 temp_s7;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a5_2;
    s32 var_a7_2;
    s32 var_s1;
    s64 var_s6;
    s64 var_s7;
    u16 temp_a7_3;
    u16 var_a4_2;
    u16 var_a6_2;
    u16 var_t0;
    void **var_s0;
    void **var_s6_2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_a6_5;
    void *temp_a7;
    void *temp_a7_2;
    void *temp_s0;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s5;
    void *temp_s7_2;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_t0_4;
    void *temp_t1;
    void *temp_t1_2;
    void *temp_t9;
    void *var_a0;
    void *var_a0_2;
    void *var_a5;
    void *var_a6;
    void *var_a7;

    var_s6 = saved_reg_s6;
    var_s7 = saved_reg_s7;
    var_a6 = arg6;
    arg_sp0.unk-38 = (s64) saved_reg_fp;
    arg_sp0.unk-60 = arg0;
    arg_sp0.unk-58 = arg1;
    arg_sp0.unk-30 = (s64) saved_reg_s0;
    arg_sp0.unk-28 = (s64) saved_reg_s4;
    arg_sp0.unk-50 = (s64) saved_reg_s5;
    var_a3 = rrmScreenPrivateIndex * 4;
    temp_s5 = *(arg0->unk1B4 + var_a3);
    arg_sp0.unk-48 = (s64) saved_reg_s1;
    temp_s0 = (arg1 * 0x24) + temp_s5;
    var_s1 = temp_s0->unkAC;
    arg_sp0.unk-40 = (s64) saved_reg_s3;
    temp_s3 = temp_s0->unkA8 & 0x10;
    if ((var_s1 > 0) && (arg_sp0.unk-70 = (s64) saved_reg_s2, arg_sp0.unk-1C = (void **) (sp - (((var_s1 * 4) + 0xF) & ~0xF)), (var_s1 > 0))) {
        arg_sp0.unk-88 = (s64) var_s1;
        arg_sp0.unk-68 = (s64) saved_reg_ra;
        arg_sp0.unk-80 = (s64) saved_reg_s7;
        arg_sp0.unk-78 = (s64) saved_reg_s6;
        var_s6_2 = arg_sp0.unk-1C;
        temp_s7 = (var_s1 * 4) + var_s6_2;
        var_a4 = rrmWindowPrivateIndex * 4;
loop_5:
        temp_s1 = temp_s0->unk98;
        *var_s6_2 = temp_s1;
        var_a7 = *(temp_s1->unk84 + var_a4);
        var_a5 = var_a7;
        if (var_a7->unk6 & 8) {
            temp_s5->unk20(temp_s1, 0, 0, var_a3, var_a4, var_a5, var_a6, var_a7);
            var_a3 = rrmScreenPrivateIndex * 4;
            var_a4 = rrmWindowPrivateIndex * 4;
            var_a7 = *(temp_s1->unk84 + var_a4);
            var_a5 = var_a7;
        }
        temp_a6 = *(temp_s1->unk10->unk1B4 + var_a3) + (var_a7->unk14 * 0x24);
        var_a6 = temp_a6 + 0x98;
        if (var_a7->unk0 & 8) {
            temp_t0 = var_a5->unk2C;
            temp_a7 = var_a5->unk30;
            if (temp_t0 != NULL) {
                (*(temp_t0->unk84 + var_a4))->unk30 = temp_a7;
            } else {
                temp_a6->unk98 = temp_a7;
            }
            temp_a7_2 = var_a5->unk30;
            temp_t0_2 = var_a5->unk2C;
            if (temp_a7_2 != NULL) {
                (*(temp_a7_2->unk84 + var_a4))->unk2C = temp_t0_2;
                var_a5->unk30 = NULL;
            } else {
                var_a6->unk4 = temp_t0_2;
            }
            var_a5->unk2C = NULL;
            temp_t1 = temp_a6->unk98;
            var_a7_2 = var_a6->unk10 & 0x31 & 0xFFFF;
            var_a6->unk14 = (s32) (var_a6->unk14 - 1);
            if (var_a7_2 & 1) {
                var_a7_2 |= 6;
            }
            var_t0 = var_a7_2 | 2;
            if (temp_t1 != NULL) {
                if (var_a6->unk4 != temp_t1) {
                    var_t0 = var_a7_2 | 6;
                }
            } else {
                var_t0 = -0x11 & var_a7_2;
            }
            var_a6->unk10 = var_t0;
            var_a5->unk0 = (u16) (var_a5->unk0 & ~8);
        }
        var_s6_2 += 4;
        var_a5->unk14 = -1;
        if (var_s6_2 != temp_s7) {
            goto loop_5;
        }
        var_s6 = arg_sp0.unk-78;
        var_s7 = arg_sp0.unk-80;
        var_s1 = (s32) arg_sp0.unk-88;
    } else {
        arg_sp0.unk-68 = (s64) saved_reg_ra;
        arg_sp0.unk-70 = (s64) saved_reg_s2;
    }
    temp_s0->unkA4 = (s32) temp_s0->unkB4;
    temp_s0->unkA0 = (s32) temp_s0->unkB0;
    temp_s5->unk2C(arg_sp0.unk-60, arg_sp0.unk-58);
    arg_sp0.unk-80 = var_s7;
    arg_sp0.unk-78 = var_s6;
    temp_s0->unkA8 = (u16) (temp_s0->unkA8 | 2);
    if (var_s1 > 0) {
        var_s0 = arg_sp0.unk-1C;
        temp_s7_2 = (var_s1 * 4) + var_s0;
loop_28:
        temp_s1_2 = *var_s0;
        var_a4_2 = rrmWindowPrivateIndex * 4;
        temp_t0_3 = *(var_a4_2 + temp_s1_2->unk84);
        var_a3_2 = rrmScreenPrivateIndex * 4;
        var_a6_2 = temp_t0_3->unk2;
        temp_t1_2 = *(var_a3_2 + temp_s1_2->unk10->unk1B4);
        if (var_a6_2 != 1) {
            goto block_29;
        }
        var_a1 = 1;
        if (temp_t1_2->unkC & 1) {
            temp_t0_3->unk14 = (s32) temp_t1_2->unk0;
            goto block_24;
        }
block_29:
        temp_a1 = temp_t0_3->unk14;
        var_a0 = temp_t1_2;
        if ((temp_a1 < 0) || (((temp_a1 * 0x24) + temp_t1_2)->unkA8 & 4)) {
            var_a5_2 = temp_t1_2->unk0;
            var_a1_2 = 0;
            if (var_a5_2 != 0) {
loop_34:
                if ((var_a0->unkAA == var_a6_2) && !(var_a0->unkA8 & 1) && (var_a2 = var_a0->unkAC, (var_a2 == 0))) {
                    if (temp_t0_3->unk14 >= 0) {
                        var_a3_2 = (s32) ((temp_t0_3->unk14 * 0x24) + temp_t1_2 + 0x98);
                        if (temp_t0_3->unk0 & 8) {
                            temp_a5 = temp_t0_3->unk2C;
                            temp_a6_2 = temp_t0_3->unk30;
                            if (temp_a5 != NULL) {
                                (*(temp_a5->unk84 + var_a4_2))->unk30 = temp_a6_2;
                            } else {
                                var_a3_2->unk0 = temp_a6_2;
                            }
                            temp_a6_3 = temp_t0_3->unk30;
                            temp_a5_2 = temp_t0_3->unk2C;
                            if (temp_a6_3 != NULL) {
                                (*(temp_a6_3->unk84 + var_a4_2))->unk2C = temp_a5_2;
                                temp_t0_3->unk30 = NULL;
                            } else {
                                var_a3_2->unk4 = temp_a5_2;
                            }
                            temp_t0_3->unk2C = NULL;
                            var_a2 = -9;
                            var_a6_2 = (u16) var_a3_2->unk0;
                            var_a4_2 = var_a3_2->unk10 & 0x31 & 0xFFFF;
                            var_a3_2->unk14 = (s32) (var_a3_2->unk14 - 1);
                            if (var_a4_2 & 1) {
                                var_a4_2 |= 6;
                            }
                            var_a5_2 = -0x11 & var_a4_2;
                            if (var_a6_2 != 0) {
                                var_a5_2 = var_a4_2 | 2;
                                if (var_a3_2->unk4 != var_a6_2) {
                                    var_a5_2 = var_a4_2 | 6;
                                }
                            }
                            var_a3_2->unk10 = (u16) var_a5_2;
                            temp_t0_3->unk0 = (u16) (temp_t0_3->unk0 & ~8);
                        }
                        temp_t0_3->unk14 = -1;
                    }
                    AssignID__LIC((s64) temp_s1_2, var_a1_2, var_a2, var_a3_2, var_a4_2, (u16) var_a5_2, (void *) var_a6_2, (s32) temp_t1_2);
                    var_a1 = 1;
                } else {
                    var_a1_2 += 1;
                    var_a0 += 0x24;
                    if (var_a1_2 != var_a5_2) {
                        goto loop_34;
                    }
                    goto block_51;
                }
            } else {
block_51:
                var_a0_2 = temp_t1_2;
                var_a1_3 = 0;
                if ((temp_t1_2->unk30 != 0) && (var_a5_2 != 0)) {
loop_55:
                    if ((var_a0_2->unkAA == var_a6_2) && (temp_a7_3 = var_a0_2->unkA8, ((temp_a7_3 & 1) != 0)) && !(temp_a7_3 & 0x20) && !(temp_a7_3 & 2) && (var_a0_2->unkAC == 0)) {
                        var_a0_2->unkA8 = 0U;
                        temp_t0_4 = *(var_a4_2 + temp_s1_2->unk84);
                        var_a2_2 = temp_t0_4->unk14;
                        if (var_a2_2 >= 0) {
                            temp_a5_3 = *(temp_s1_2->unk10->unk1B4 + var_a3_2) + (temp_t0_4->unk14 * 0x24);
                            var_a5_2 = temp_a5_3 + 0x98;
                            if (temp_t0_4->unk0 & 8) {
                                temp_a6_4 = temp_t0_4->unk2C;
                                temp_a3 = temp_t0_4->unk30;
                                if (temp_a6_4 != NULL) {
                                    (*(temp_a6_4->unk84 + var_a4_2))->unk30 = temp_a3;
                                } else {
                                    temp_a5_3->unk98 = temp_a3;
                                }
                                temp_a3_2 = temp_t0_4->unk30;
                                temp_a6_5 = temp_t0_4->unk2C;
                                if (temp_a3_2 != NULL) {
                                    (*(temp_a3_2->unk84 + var_a4_2))->unk2C = temp_a6_5;
                                    temp_t0_4->unk30 = NULL;
                                } else {
                                    var_a5_2->unk4 = (s32) temp_a6_5;
                                }
                                temp_t0_4->unk2C = NULL;
                                var_a6_2 = (u16) temp_a5_3->unk98;
                                var_a3_2 = var_a5_2->unk10 & 0x31 & 0xFFFF;
                                var_a2_2 = var_a3_2 & 1;
                                var_a5_2->unk14 = (s32) (var_a5_2->unk14 - 1);
                                if (var_a2_2 != 0) {
                                    var_a3_2 |= 6;
                                }
                                var_a4_2 = -0x11 & var_a3_2;
                                if (var_a6_2 != 0) {
                                    var_a4_2 = var_a3_2 | 2;
                                    var_a2_2 = var_a5_2->unk4;
                                    if (var_a2_2 != var_a6_2) {
                                        var_a4_2 = var_a3_2 | 6;
                                    }
                                }
                                var_a5_2->unk10 = var_a4_2;
                                temp_t0_4->unk0 = (u16) (temp_t0_4->unk0 & ~8);
                            }
                            temp_t0_4->unk14 = -1;
                        }
                        AssignID__LIC((s64) temp_s1_2, var_a1_3, var_a2_2, var_a3_2, var_a4_2, (u16) var_a5_2, (void *) var_a6_2, (s32) temp_a7_3);
                        var_a1 = 1;
                    } else {
                        var_a1_3 += 1;
                        var_a0_2 += 0x24;
                        if (var_a1_3 != var_a5_2) {
                            goto loop_55;
                        }
                        goto block_23;
                    }
                } else {
block_23:
                    var_a1 = 0;
                }
            }
block_24:
            if (var_a1 == 0) {
                StealID((s64) temp_s1_2, var_a1);
            }
        }
        if (temp_s3 != 0) {
            temp_t9 = ((*((rrmWindowPrivateIndex * 4) + temp_s1_2->unk84))->unk14 * 0x24) + temp_s5;
            temp_t9->unkA8 = (u16) (temp_t9->unkA8 | temp_s3);
            StealID((s64) temp_s1_2, 8, 1);
        }
        var_s0 += 4;
        if (var_s0 != temp_s7_2) {
            goto loop_28;
        }
    }
}

void SetDIDMode(void *arg0, s32 arg4) {
    s32 temp_a1;
    s32 var_a1;
    s32 var_a3;
    s32 var_a4;
    void *temp_a2;
    void *temp_s0;
    void *temp_s1;

    var_a4 = arg4;
    temp_s0 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    var_a3 = rrmScreenPrivateIndex * 4;
    temp_a2 = *(arg0->unk10->unk1B4 + var_a3);
    temp_s1 = (temp_s0->unk14 * 0x24) + temp_a2 + 0x98;
    if (temp_s1->unk10 & 8) {
        var_a4 = temp_a2->unk14;
        temp_a1 = temp_a2->unk10;
        if (temp_s0->unk2 != temp_s1->unk12) {
            var_a1 = 0;
        } else {
            var_a3 = temp_s0->unk20 & temp_a1;
            if (((temp_s1->unk8 & temp_a1) == var_a3) && (var_a3 = temp_s1->unkC & var_a4, var_a4 = 1, (var_a3 == (temp_s0->unk24 & var_a4)))) {

            } else {
                var_a4 = 0;
            }
            var_a1 = var_a4;
        }
        if (var_a1 == 0) {
            goto block_10;
        }
    } else {
block_10:
        temp_a2->unk28(temp_s0, temp_a2, var_a3, var_a4);
        temp_s1->unk10 = (u16) (temp_s1->unk10 | 8);
        temp_s1->unk8 = (s32) temp_s0->unk20;
        temp_s1->unkC = (s32) temp_s0->unk24;
    }
}

s32 cmapDID(void *arg0) {
    s64 sp10;
    s64 sp0;
    s32 temp_a0;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a3;
    s32 var_v0;
    s64 var_ra;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;

    var_ra = saved_reg_ra;
    sp0 = (s64) arg0->unk10->unk74;
    if (arg0->unk1 != 2) {
        temp_v0 = arg0->unk78;
        if (temp_v0 != NULL) {
            var_a3 = temp_v0->unk8;
        } else {
            var_ra = sp10;
            var_a3 = FindWindowWithOptional(arg0)->unk78->unk8;
        }
        sp10 = var_ra;
        var_a0 = var_a3;
    } else {
        var_a0 = 0;
    }
    temp_v0_2 = LookupIDByType(var_a0, 6);
    if (temp_v0_2 == NULL) {
        temp_v0_3 = arg0->unk78;
        if (temp_v0_3 != NULL) {
            var_a0_2 = temp_v0_3->unk0;
        } else {
            var_a0_2 = *M2C_ERROR(/* Read from unset register $t9 */)(arg0)->unk78;
        }
        var_v0 = *(sp0->unk58 + ((var_a0_2 - sp0->unk50) * 0x14));
    } else {
        temp_a0 = *temp_v0_2->unk44;
        if (temp_a0 >= 0) {
            var_v0 = (sp0->unk74 + (temp_a0 * 0x1C))->unk10;
        } else {
            temp_v0_4 = arg0->unk78;
            if (temp_v0_4 != NULL) {
                var_a0_3 = temp_v0_4->unk0;
            } else {
                var_a0_3 = *M2C_ERROR(/* Read from unset register $t9 */)(arg0)->unk78;
            }
            var_v0 = *(sp0->unk58 + ((var_a0_3 - sp0->unk50) * 0x14));
        }
    }
    return var_v0;
}

s32 rrmOGLBindRNToClip(u16 *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? (*temp_t9_2)(s64, s32, s32, s32);
    s32 *temp_t1;
    s32 *var_a1_2;
    s32 *var_a7;
    s32 temp_t9;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_t0;
    s64 var_ra;
    s64 var_v0;
    u16 *var_a6;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_t2;
    void *var_v0_2;
    void *var_v0_3;

    var_ra = saved_reg_ra;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a6 = arg0;
    temp_t9 = arg0->unk84;
    temp_t1 = *((rrmWindowPrivateIndex * 4) + temp_t9);
    var_t0 = *((nfbWindowPrivateIndex * 4) + temp_t9);
    var_a7 = temp_t1;
    if (temp_t1 != NULL) {
        if (temp_t1->unk0 & 1) {
            if (temp_t1->unk8 != 0) {
                temp_t1->unkC = var_a1;
                return 1;
            }
            ErrorF(&local_0x5f0a0000 - 0x610, var_a6->unk4, var_a6, var_a7);
            return 0;
        }
        goto block_4;
    }
    sp50 = (s64) var_a1;
    sp18 = (s64) var_a6;
    sp48 = (s64) var_a3;
    sp40 = (s64) var_a2;
    sp0 = (s64) var_t0;
    var_v0 = Xalloc(0x4C, var_a6, var_a7);
    var_ra = sp38;
    sp28 = (s64) *(var_a6->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (var_v0 != 0) {
        sp8 = var_v0;
        memset(var_v0, 0, 0x4C, (s64) var_a3);
        var_t0 = (s32) sp0;
        var_a6 = (u16 *) sp18;
        *(var_a6->unk84 + (rrmWindowPrivateIndex * 4)) = (s32) var_v0;
        var_a2 = (s32) sp40;
        temp_t9_2 = sp28->unk50;
        var_a3 = (s32) sp48;
        var_a1 = (s32) sp50;
        var_ra = sp38;
        if (temp_t9_2 != NULL) {
            temp_t9_2(sp18, var_a1, var_a2, var_a3);
            var_v0 = sp8;
            var_t0 = (s32) sp0;
            var_a2 = (s32) sp40;
            var_a3 = (s32) sp48;
            var_a6 = (u16 *) sp18;
            var_a1 = (s32) sp50;
            var_ra = sp38;
        } else {
            var_v0->unk2 = 0;
        }
    }
    var_a7 = (s32 *) var_v0;
    if (var_v0 == 0) {
        return 0;
    }
block_4:
    temp_v0 = *(var_a6->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    var_a7->unkC = var_a1;
    var_a7->unk8 = 1;
    var_a7->unk1E = 0;
    var_a7->unk1C = 0;
    var_a7->unk24 = var_a3;
    var_a7->unk20 = var_a2;
    var_a7->unk0 = 5;
    temp_t2 = *(var_a6->unk84 + (glxWindowPrivateIndex * 4));
    if (temp_t2 != NULL) {
        sp18 = (s64) var_a6;
        sp0 = (s64) var_t0;
        sp20 = (s64) temp_v0;
        if (temp_t2->unk4 != 0) {
            var_a7->unk14 = -1;
            return 1;
        }
    }
    sp18 = (s64) var_a6;
    sp10 = (s64) var_a7;
    sp0 = (s64) var_t0;
    sp20 = (s64) temp_v0;
    sp38 = var_ra;
    if (incrRRMpriv(var_a6->unk18, var_a1, var_a2, var_a3, -1) != 0) {
        Xfree(sp10);
        *(sp18->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
        return 0;
    }
    if (sp10->unk2 == 1) {
        if (sp20->unkC & 1) {
            sp10->unk14 = -1;
            if (((u32) (sp18->unk7C & 0xFFF) >> 0xB) != 0) {
                var_v0_2 = sp18->unk18;
                if (var_v0_2 != NULL) {
                    do {
                        temp_a5 = *(var_v0_2->unk84 + (rrmWindowPrivateIndex * 4));
                        temp_a5->unk10 = (s32) (temp_a5->unk10 + 1);
                        var_v0_2 = var_v0_2->unk18;
                    } while (var_v0_2 != NULL);
                }
                sp10->unk14 = (s32) sp20->unk0;
            }
        } else {
            goto block_21;
        }
    } else {
block_21:
        sp0->unk20 = (s32) (sp0->unk20 & ~1);
        nfbSetDidFlags(sp18, -2);
        sp10->unk14 = -1;
        if (((u32) (sp18->unk7C & 0xFFF) >> 0xB) != 0) {
            var_v0_3 = sp18->unk18;
            var_a1_2 = &rrmWindowPrivateIndex;
            if (var_v0_3 != NULL) {
                var_a1_2 = (s32 *) (rrmWindowPrivateIndex * 4);
                do {
                    temp_a5_2 = *(var_v0_3->unk84 + var_a1_2);
                    temp_a5_2->unk10 = (s32) (temp_a5_2->unk10 + 1);
                    var_v0_3 = var_v0_3->unk18;
                } while (var_v0_3 != NULL);
            }
            if (FindFreeID((void *) sp18, (s32) var_a1_2) == 0) {
                FindBestID(sp18);
            }
        }
    }
    return 1;
}

s32 rrmOGLUnbindRNFromClip(void *arg0) {
    s64 sp8;
    s32 sp0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_6;
    s32 temp_a2;
    s32 temp_a5_3;
    s32 temp_t9;
    s32 temp_v0;
    s32 var_a1_2;
    u16 var_a0;
    u16 var_a1_3;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a1_5;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_4;
    void *temp_a5_5;
    void *temp_a5_6;
    void *temp_a5_7;
    void *temp_a5_8;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_at;
    void *temp_s2;
    void *temp_s4;
    void *var_a0_2;
    void *var_a1;

    temp_t9 = arg0->unk84;
    temp_s4 = *((rrmWindowPrivateIndex * 4) + temp_t9);
    sp8 = (s64) *((nfbWindowPrivateIndex * 4) + temp_t9);
    if (temp_s4 != NULL) {
        temp_s2 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
        temp_s2->unk20(arg0, 0, 0);
        if (temp_s4->unk0 & 0x20) {
            temp_a1 = rrmWindowPrivateIndex * 4;
            temp_a4 = *(arg0->unk84 + temp_a1);
            temp_a3 = temp_a4->unk34;
            temp_a6 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
            temp_a5 = temp_a4->unk38;
            if (temp_a3 != NULL) {
                (*(temp_a3->unk84 + temp_a1))->unk38 = temp_a5;
            } else {
                temp_a6->unk8C = temp_a5;
            }
            temp_a5_2 = temp_a4->unk38;
            temp_a3_2 = temp_a4->unk34;
            if (temp_a5_2 != NULL) {
                (*(temp_a5_2->unk84 + temp_a1))->unk34 = temp_a3_2;
                temp_a4->unk38 = NULL;
            } else {
                temp_a6->unk90 = temp_a3_2;
            }
            temp_a4->unk34 = NULL;
            temp_a4->unk0 = (u16) (temp_a4->unk0 & ~0x20);
        }
        temp_a5_3 = arg0->unk84;
        var_a1 = *((glxWindowPrivateIndex * 4) + temp_a5_3);
        if (var_a1 != NULL) {
            temp_a2 = var_a1->unk4;
            if (temp_a2 != 0) {
                Xfree((s64) temp_s4, var_a1, temp_a2);
                *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
                return 1;
            }
        }
        if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
            temp_v0 = temp_s4->unk14;
            sp0 = temp_v0;
            if (temp_s2->unk0 == temp_v0) {
                temp_s4->unk14 = -1;
            } else {
                temp_a1_2 = rrmWindowPrivateIndex * 4;
                temp_a3_3 = *(temp_a5_3 + temp_a1_2);
                temp_a4_2 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a3_3->unk14 * 0x24);
                temp_a4_3 = temp_a4_2 + 0x98;
                if (temp_a3_3->unk0 & 8) {
                    temp_a6_2 = temp_a3_3->unk2C;
                    temp_a5_4 = temp_a3_3->unk30;
                    if (temp_a6_2 != NULL) {
                        (*(temp_a6_2->unk84 + temp_a1_2))->unk30 = temp_a5_4;
                    } else {
                        temp_a4_2->unk98 = temp_a5_4;
                    }
                    temp_a5_5 = temp_a3_3->unk30;
                    temp_a6_3 = temp_a3_3->unk2C;
                    if (temp_a5_5 != NULL) {
                        (*(temp_a5_5->unk84 + temp_a1_2))->unk2C = temp_a6_3;
                        temp_a3_3->unk30 = NULL;
                    } else {
                        temp_a4_3->unk4 = temp_a6_3;
                    }
                    temp_a3_3->unk2C = NULL;
                    var_a1_2 = temp_a4_3->unk10 & 0x31 & 0xFFFF;
                    temp_a4_3->unk14 = (s32) (temp_a4_3->unk14 - 1);
                    if (var_a1_2 & 1) {
                        var_a1_2 |= 6;
                    }
                    temp_a5_6 = temp_a4_2->unk98;
                    if (temp_a5_6 != NULL) {
                        var_a1_3 = var_a1_2 | 2;
                        if (temp_a4_3->unk4 != temp_a5_6) {
                            var_a1_3 |= 4;
                        }
                    } else {
                        var_a1_3 = var_a1_2 & ~0x10;
                    }
                    temp_a4_3->unk10 = var_a1_3;
                    temp_a3_3->unk0 = (u16) (temp_a3_3->unk0 & ~8);
                }
                temp_a3_3->unk14 = -1;
            }
            temp_a1_3 = temp_s2->unk4;
            if ((temp_a1_3 != 0) && (temp_s4->unk18 != temp_a1_3)) {
                temp_a1_4 = rrmWindowPrivateIndex * 4;
                temp_a6_4 = *(arg0->unk84 + temp_a1_4);
                temp_a4_4 = (*(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk94 + (temp_a6_4->unk18 * 0x1C);
                if (temp_a6_4->unk0 & 0x40) {
                    temp_a0 = temp_a6_4->unk3C;
                    temp_a5_7 = temp_a6_4->unk40;
                    if (temp_a0 != NULL) {
                        (*(temp_a0->unk84 + temp_a1_4))->unk40 = temp_a5_7;
                    } else {
                        temp_a4_4->unk0 = temp_a5_7;
                    }
                    temp_a5_8 = temp_a6_4->unk40;
                    temp_a0_2 = temp_a6_4->unk3C;
                    if (temp_a5_8 != NULL) {
                        (*(temp_a5_8->unk84 + temp_a1_4))->unk3C = temp_a0_2;
                        temp_a6_4->unk40 = NULL;
                    } else {
                        temp_a4_4->unk4 = temp_a0_2;
                    }
                    temp_a6_4->unk3C = NULL;
                    var_a0 = temp_a4_4->unk8 & 1 & 0xFFFF;
                    temp_a4_4->unkC = (s32) (temp_a4_4->unkC - 1);
                    if (var_a0 != 0) {
                        var_a0 |= 4;
                    }
                    temp_a1_5 = temp_a4_4->unk0;
                    if (temp_a1_5 != NULL) {
                        var_a0 |= 2;
                        if (temp_a4_4->unk4 != temp_a1_5) {
                            var_a0 |= 4;
                        }
                    }
                    temp_a4_4->unk8 = var_a0;
                    temp_a6_4->unk0 = (u16) (temp_a6_4->unk0 & ~0x40);
                }
                temp_a6_4->unk18 = 0;
            }
            var_a0_2 = arg0->unk18;
            var_a1 = (void *) rrmWindowPrivateIndex;
            if (var_a0_2 != NULL) {
                var_a1 = (void *) ((s32) var_a1 * 4);
                do {
                    temp_at = *(var_a0_2->unk84 + var_a1);
                    temp_at->unk10 = (s32) (temp_at->unk10 - 1);
                    var_a0_2 = var_a0_2->unk18;
                } while (var_a0_2 != NULL);
            }
        }
        sp8->unk4 = cmapDID(arg0, (s32) var_a1);
        temp_a1_6 = temp_s4->unk28;
        if (temp_a1_6 != 0) {
            ErrorF(&local_0x5f0a0000 - 0x5C8, temp_a1_6);
        }
        if (temp_s4->unk14 != temp_s2->unk0) {
            sp8->unk20 = (s32) (sp8->unk20 | 1);
            nfbSetDidFlags((s64) arg0);
            if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
                nfbSetDidFlags((s64) arg0, sp0);
            }
        }
        if (temp_s4->unk10 != 0) {
            temp_s4->unk0 = (u16) (temp_s4->unk0 & ~1);
        } else {
            Xfree((s64) temp_s4);
            *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
        }
        return 1;
    }
    return 0;
}

s32 rrmBindRNToClip(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? (*temp_t9)(void *, s32, s32, s32);
    s32 temp_s1;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s64 var_v0;
    u16 *temp_a6;
    u16 *var_s1;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_s1_2;
    void *var_v0_2;
    void *var_v0_3;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    temp_s1 = arg0->unk84;
    temp_a6 = *((rrmWindowPrivateIndex * 4) + temp_s1);
    temp_v0 = *((nfbWindowPrivateIndex * 4) + temp_s1);
    var_s1 = temp_a6;
    if (temp_a6 != NULL) {
        if (*temp_a6 & 1) {
            return 0;
        }
        sp8 = (s64) temp_v0;
        goto block_4;
    }
    sp48 = (s64) var_a1;
    sp40 = (s64) var_a3;
    sp38 = (s64) var_a2;
    sp8 = (s64) temp_v0;
    var_v0 = Xalloc(0x4C, temp_a6, &rrmWindowPrivateIndex);
    temp_s1_2 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (var_v0 != 0) {
        sp0 = var_v0;
        memset(var_v0, 0, 0x4C, (s64) var_a3);
        *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = (s32) var_v0;
        var_a2 = (s32) sp38;
        temp_t9 = temp_s1_2->unk50;
        var_a3 = (s32) sp40;
        var_a1 = (s32) sp48;
        if (temp_t9 != NULL) {
            temp_t9(arg0, var_a1, var_a2, var_a3);
            var_v0 = sp0;
            var_a2 = (s32) sp38;
            var_a3 = (s32) sp40;
            var_a1 = (s32) sp48;
        } else {
            var_v0->unk2 = 0;
        }
    }
    var_s1 = (u16 *) var_v0;
    if (var_v0 == 0) {
        return 0;
    }
block_4:
    var_s1->unkC = var_a1;
    var_s1->unk8 = 0;
    var_s1->unk1E = 0;
    var_s1->unk1C = 0;
    var_s1->unk24 = var_a3;
    var_s1->unk20 = var_a2;
    var_s1->unk0 = 1;
    sp10 = (s64) *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (incrRRMpriv(arg0->unk18, var_a1, var_a2, var_a3) != 0) {
        Xfree((s64) var_s1);
        *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
        return 0;
    }
    if (var_s1->unk2 == 1) {
        if (sp10->unkC & 1) {
            var_s1->unk14 = -1;
            if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
                var_v0_2 = arg0->unk18;
                if (var_v0_2 != NULL) {
                    do {
                        temp_a5 = *(var_v0_2->unk84 + (rrmWindowPrivateIndex * 4));
                        temp_a5->unk10 = (s32) (temp_a5->unk10 + 1);
                        var_v0_2 = var_v0_2->unk18;
                    } while (var_v0_2 != NULL);
                }
                var_s1->unk14 = (s32) sp10->unk0;
            }
            return 1;
        }
        goto block_15;
    }
block_15:
    sp8->unk20 = (s32) (sp8->unk20 & ~1);
    nfbSetDidFlags((s64) arg0, -2);
    var_s1->unk14 = -1;
    if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
        var_v0_3 = arg0->unk18;
        if (var_v0_3 != NULL) {
            do {
                temp_a5_2 = *(var_v0_3->unk84 + (rrmWindowPrivateIndex * 4));
                temp_a5_2->unk10 = (s32) (temp_a5_2->unk10 + 1);
                var_v0_3 = var_v0_3->unk18;
            } while (var_v0_3 != NULL);
        }
        if (FindFreeID(arg0) == 0) {
            FindBestID((s64) arg0);
        }
    }
    return 1;
}

s32 rrmUnbindRNFromClip(void *arg0, s32 arg1) {
    s64 sp8;
    s32 sp0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a4_6;
    s32 temp_at;
    s32 temp_v0;
    s32 var_a1;
    u16 var_a0;
    u16 var_a5;
    void **temp_a1_6;
    void **temp_a1_7;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a1_5;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a5_5;
    void *temp_a5_6;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_a6_5;
    void *temp_at_2;
    void *temp_s0;
    void *temp_s3;
    void *var_a0_2;

    temp_v0 = arg0->unk84;
    temp_s0 = *((rrmWindowPrivateIndex * 4) + temp_v0);
    sp8 = (s64) *((nfbWindowPrivateIndex * 4) + temp_v0);
    if (temp_s0 != NULL) {
        temp_s3 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
        temp_s3->unk20(arg0, 0, 0);
        if (temp_s0->unk0 & 0x20) {
            temp_a1 = rrmWindowPrivateIndex * 4;
            temp_a3 = *(arg0->unk84 + temp_a1);
            temp_a5 = temp_a3->unk34;
            temp_a6 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
            temp_a4 = temp_a3->unk38;
            if (temp_a5 != NULL) {
                (*(temp_a5->unk84 + temp_a1))->unk38 = temp_a4;
            } else {
                temp_a6->unk8C = temp_a4;
            }
            temp_a4_2 = temp_a3->unk38;
            temp_a5_2 = temp_a3->unk34;
            if (temp_a4_2 != NULL) {
                (*(temp_a4_2->unk84 + temp_a1))->unk34 = temp_a5_2;
                temp_a3->unk38 = NULL;
            } else {
                temp_a6->unk90 = temp_a5_2;
            }
            temp_a3->unk34 = NULL;
            temp_a3->unk0 = (u16) (temp_a3->unk0 & ~0x20);
        }
        if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
            temp_at = temp_s0->unk14;
            sp0 = temp_at;
            if (temp_s3->unk0 == temp_at) {
                temp_s0->unk14 = -1;
            } else {
                temp_a1_2 = rrmWindowPrivateIndex * 4;
                temp_a3_2 = *(arg0->unk84 + temp_a1_2);
                temp_a4_3 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a3_2->unk14 * 0x24);
                temp_a4_4 = temp_a4_3 + 0x98;
                if (temp_a3_2->unk0 & 8) {
                    temp_a5_3 = temp_a3_2->unk2C;
                    temp_a6_2 = temp_a3_2->unk30;
                    if (temp_a5_3 != NULL) {
                        (*(temp_a5_3->unk84 + temp_a1_2))->unk30 = temp_a6_2;
                    } else {
                        temp_a4_3->unk98 = temp_a6_2;
                    }
                    temp_a6_3 = temp_a3_2->unk30;
                    temp_a5_4 = temp_a3_2->unk2C;
                    if (temp_a6_3 != NULL) {
                        (*(temp_a6_3->unk84 + temp_a1_2))->unk2C = temp_a5_4;
                        temp_a3_2->unk30 = NULL;
                    } else {
                        temp_a4_4->unk4 = temp_a5_4;
                    }
                    temp_a3_2->unk2C = NULL;
                    var_a1 = temp_a4_4->unk10 & 0x31 & 0xFFFF;
                    temp_a4_4->unk14 = (s32) (temp_a4_4->unk14 - 1);
                    if (var_a1 & 1) {
                        var_a1 |= 6;
                    }
                    temp_a6_4 = temp_a4_3->unk98;
                    if (temp_a6_4 != NULL) {
                        var_a5 = var_a1 | 2;
                        if (temp_a4_4->unk4 != temp_a6_4) {
                            var_a5 = var_a1 | 6;
                        }
                    } else {
                        var_a5 = var_a1 & ~0x10;
                    }
                    temp_a4_4->unk10 = var_a5;
                    temp_a3_2->unk0 = (u16) (temp_a3_2->unk0 & ~8);
                }
                temp_a3_2->unk14 = -1;
            }
            temp_a1_3 = temp_s3->unk4;
            if ((temp_a1_3 != 0) && (temp_s0->unk18 != temp_a1_3)) {
                temp_a1_4 = rrmWindowPrivateIndex * 4;
                temp_a6_5 = *(arg0->unk84 + temp_a1_4);
                temp_a4_5 = (*(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk94 + (temp_a6_5->unk18 * 0x1C);
                if (temp_a6_5->unk0 & 0x40) {
                    temp_a5_5 = temp_a6_5->unk3C;
                    temp_a0 = temp_a6_5->unk40;
                    if (temp_a5_5 != NULL) {
                        (*(temp_a5_5->unk84 + temp_a1_4))->unk40 = temp_a0;
                    } else {
                        temp_a4_5->unk0 = temp_a0;
                    }
                    temp_a0_2 = temp_a6_5->unk40;
                    temp_a5_6 = temp_a6_5->unk3C;
                    if (temp_a0_2 != NULL) {
                        (*(temp_a0_2->unk84 + temp_a1_4))->unk3C = temp_a5_6;
                        temp_a6_5->unk40 = NULL;
                    } else {
                        temp_a4_5->unk4 = temp_a5_6;
                    }
                    temp_a6_5->unk3C = NULL;
                    var_a0 = temp_a4_5->unk8 & 1 & 0xFFFF;
                    temp_a4_5->unkC = (s32) (temp_a4_5->unkC - 1);
                    if (var_a0 != 0) {
                        var_a0 |= 4;
                    }
                    temp_a1_5 = temp_a4_5->unk0;
                    if (temp_a1_5 != NULL) {
                        var_a0 |= 2;
                        if (temp_a4_5->unk4 != temp_a1_5) {
                            var_a0 |= 4;
                        }
                    }
                    temp_a4_5->unk8 = var_a0;
                    temp_a6_5->unk0 = (u16) (temp_a6_5->unk0 & ~0x40);
                }
                temp_a6_5->unk18 = 0;
            }
            var_a0_2 = arg0->unk18;
            if (var_a0_2 != NULL) {
                do {
                    temp_at_2 = *(var_a0_2->unk84 + (rrmWindowPrivateIndex * 4));
                    temp_at_2->unk10 = (s32) (temp_at_2->unk10 - 1);
                    var_a0_2 = var_a0_2->unk18;
                } while (var_a0_2 != NULL);
            }
        }
        sp8->unk4 = cmapDID(arg0);
        temp_a1_6 = temp_s0->unk28;
        if (temp_a1_6 != NULL) {
            temp_a2 = temp_s0->unk2 * 4;
            *(temp_a2 + temp_a1_6) = 0;
            temp_a1_7 = temp_s0->unk28;
            temp_a0_3 = *temp_a1_7;
            if (temp_a0_3 != NULL) {
                *temp_a1_7 = NULL;
                temp_a4_6 = rrmWindowPrivateIndex * 4;
                temp_a3_3 = *(temp_a0_3->unk84 + temp_a4_6);
                temp_a3_3->unk28 = 0;
                .L5ef6ca0c(temp_a0_3, arg1, temp_a2, temp_a3_3, temp_a4_6);
            }
            temp_a0_4 = temp_s0->unk28->unk4;
            if (temp_a0_4 != NULL) {
                temp_s0->unk28->unk4 = NULL;
                (*(temp_a0_4->unk84 + (rrmWindowPrivateIndex * 4)))->unk28 = 0;
                .L5ef6ca0c(temp_a0_4, arg1);
            }
            temp_a0_5 = temp_s0->unk28->unk8;
            if (temp_a0_5 != NULL) {
                temp_s0->unk28->unk8 = NULL;
                (*(temp_a0_5->unk84 + (rrmWindowPrivateIndex * 4)))->unk28 = 0;
                .L5ef6ca0c(temp_a0_5, arg1);
            }
            temp_a0_6 = temp_s0->unk28->unkC;
            if (temp_a0_6 != NULL) {
                temp_s0->unk28->unkC = NULL;
                (*(temp_a0_6->unk84 + (rrmWindowPrivateIndex * 4)))->unk28 = 0;
                .L5ef6ca0c(temp_a0_6, arg1);
            }
            Xfree((s64) temp_s0->unk28, (void *) (s64) temp_s0->unk28);
            temp_s0->unk28 = NULL;
        }
        if (temp_s0->unk14 != temp_s3->unk0) {
            sp8->unk20 = (s32) (sp8->unk20 | 1);
            nfbSetDidFlags((s64) arg0);
            if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
                nfbSetDidFlags((s64) arg0, sp0);
            }
        }
        if (temp_s0->unk10 != 0) {
            temp_s0->unk0 = (u16) (temp_s0->unk0 & ~1);
        } else {
            Xfree((s64) temp_s0);
            *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
        }
        return 1;
    }
    return 0;
}

s32 rrmDoubleBufferWindow(void *arg0) {
    s64 sp38;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? (*temp_t9_2)(void *);
    s32 temp_t9;
    s32 var_v0;
    s64 var_ra;
    s64 var_v0_2;
    u16 *var_s0;
    void *temp_a4;
    void *temp_s0;
    void *temp_s2;
    void *temp_v0;
    void *var_v0_3;

    var_ra = saved_reg_ra;
    temp_t9 = arg0->unk84;
    sp0 = (s64) *((nfbWindowPrivateIndex * 4) + temp_t9);
    temp_s2 = arg0->unk10;
    var_s0 = *((rrmWindowPrivateIndex * 4) + temp_t9);
    sp8 = (s64) *(temp_s2->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (var_s0 != NULL) {
        var_v0 = var_s0->unk0 & 1;
        if (var_v0 != 0) {
            if (var_s0->unk8 == 0) {
                return 0x11;
            }
            goto block_5;
        }
        goto block_7;
    }
    var_v0_2 = Xalloc(0x4C);
    var_ra = sp38;
    temp_s0 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (var_v0_2 != 0) {
        sp10 = var_v0_2;
        memset(var_v0_2, 0, 0x4C);
        *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = (s32) var_v0_2;
        temp_t9_2 = temp_s0->unk50;
        var_ra = sp38;
        if (temp_t9_2 != NULL) {
            temp_t9_2(arg0);
            var_v0_2 = sp10;
            var_ra = sp38;
        } else {
            var_v0_2->unk2 = 0;
        }
    }
    var_s0 = (u16 *) var_v0_2;
    if (var_v0_2 != 0) {
        var_v0 = *var_s0 & 1;
block_5:
        sp38 = var_ra;
        if (var_v0 != 0) {
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_s2->unkC0(arg0, 0);
            return 0;
        }
block_7:
        var_s0->unk1E = 0;
        var_s0->unk1C = 0;
        var_s0->unk8 = 1;
        var_s0->unk0 = 5;
        sp38 = var_ra;
        var_s0->unkC = (s32) temp_s2->unk74->unk68;
        if (incrRRMpriv(arg0->unk18, 1, 5) == 0) {
            if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
                var_v0_3 = arg0->unk18;
                if (var_v0_3 != NULL) {
                    do {
                        temp_a4 = *(var_v0_3->unk84 + (rrmWindowPrivateIndex * 4));
                        temp_a4->unk10 = (s32) (temp_a4->unk10 + 1);
                        var_v0_3 = var_v0_3->unk18;
                    } while (var_v0_3 != NULL);
                }
            }
            var_s0->unk20 = (s32) ((((sp0->unk4 * 0x24) + sp8)->unkA0 | 2) & ~4);
            temp_v0 = (sp0->unk4 * 0x24) + sp8;
            if ((sp8->unk30 != 0) && (temp_v0->unkB8 != 0)) {
                var_s0->unk24 = (s32) temp_v0->unkB4;
            } else {
                var_s0->unk24 = (s32) temp_v0->unkA4;
            }
            sp0->unk20 = (s32) (sp0->unk20 & ~1);
            nfbSetDidFlags((s64) arg0);
            var_s0->unk14 = -1;
            if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
                if (FindFreeID(arg0) == 0) {
                    StealID((s64) arg0);
                }
                FindFreeID(arg0, (s32) var_s0, (void *) sp8);
            }
            temp_s2->unkC0(arg0, 0);
            return 0;
        }
        ErrorF(&local_0x5f0a0000 - 0x238);
        Xfree((s64) var_s0);
        *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
        return 0xB;
    }
    return 0xB;
}

void rrmUndoubleBufferWindow(void) {

}

s32 rrmProcessRequestQueue(void *arg0) {
    s64 sp30;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 var_s3;
    s32 var_v1;
    s64 var_ra;
    u32 temp_a4;
    u8 temp_v0_3;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a6;
    void *temp_s0;
    void *temp_s1;
    void *temp_s2;
    void *temp_v0;
    void *temp_v0_2;

    var_ra = saved_reg_ra;
    temp_a5 = rrmScreenPrivateIndex * 4;
    temp_s1 = *(arg0->unk1B4 + temp_a5);
    temp_s0 = temp_s1->unk8C;
    var_s3 = 0;
    if (temp_s0 != NULL) {
        temp_a2 = rrmWindowPrivateIndex * 4;
        temp_s2 = *(temp_s0->unk84 + temp_a2);
        temp_a0 = temp_s2->unk34;
        temp_a6 = *(temp_s0->unk10->unk1B4 + temp_a5);
        temp_v0 = temp_s2->unk38;
        if (temp_a0 != NULL) {
            (*(temp_a0->unk84 + temp_a2))->unk38 = temp_v0;
        } else {
            temp_a6->unk8C = temp_v0;
        }
        temp_v0_2 = temp_s2->unk38;
        temp_a0_2 = temp_s2->unk34;
        if (temp_v0_2 != NULL) {
            (*(temp_v0_2->unk84 + temp_a2))->unk34 = temp_a0_2;
            temp_s2->unk38 = NULL;
        } else {
            temp_a6->unk90 = temp_a0_2;
        }
        temp_s2->unk34 = NULL;
        temp_s2->unk0 = (u16) (temp_s2->unk0 & ~0x20);
        if (temp_s1->unk8C != NULL) {
            var_s3 = 1;
        }
        temp_a4 = (u32) (temp_s0->unk7C & 0xFFF) >> 0xB;
        sp0 = (s64) temp_s1->unk4;
        if (temp_a4 != 0) {
            if (FindFreeID(temp_s0, (s32) temp_s2, (void *) temp_a2, -0x21, temp_a4, temp_a5, temp_a6) == 0) {
                StealID((s64) temp_s0);
            }
            temp_v0_3 = temp_s2->unk5;
            var_v1 = temp_v0_3 & 2;
            if (temp_v0_3 & 8) {
                FindFreeID(temp_s0, (s32) temp_s2, temp_s1);
                var_v1 = temp_s2->unk5 & 2;
            }
            if (var_v1 != 0) {
                if (sp0 != 0) {
                    FindFreeCID(temp_s0);
                    rrmValidateCID(temp_s0);
                }
                rrmValidateCID(temp_s0);
            }
        } else {
            temp_a4_2 = temp_s2->unk0 & 4;
            if (temp_a4_2 != 0) {
                if (temp_s2->unk5 & 8) {
                    temp_s1->unk24(temp_s0, temp_s2, temp_s1, -0x21, temp_a4_2, temp_a5, temp_a6);
                    var_ra = sp30;
                }
                if (temp_s2->unk5 & 2) {
                    sp30 = var_ra;
                    temp_s1->unk1C(temp_s0);
                }
            }
        }
    }
    return var_s3;
}

s32 rrmWorkProc(void) {
    s64 sp0;
    ? *var_s0;
    s32 (*temp_t9)(void *);
    s32 var_s1;
    s32 var_s2;
    s64 temp_v0;
    void *temp_a0;
    void *temp_s2;

    var_s2 = 1;
    temp_v0 = GetTimeInMillis();
    sp0 = temp_v0;
    if ((u32) (temp_v0 - var_5f0b8ae8) >= 0x32U) {
        var_s1 = 0;
        if (screenInfo.unk44 > 0) {
            var_s0 = &screenInfo;
            temp_s2 = ((screenInfo.unk44 - 1 + 1) * 4) + &screenInfo;
            do {
                temp_a0 = var_s0->unk48;
                temp_t9 = (*(temp_a0->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk18;
                var_s0 += 4;
                var_s1 |= temp_t9(temp_a0);
            } while (var_s0 != temp_s2);
        }
        var_s2 = var_s1;
        var_5f0b8aec = var_s1;
        var_5f0b8ae8 = (s32) sp0;
    }
    return var_s2 == 0;
}

void rrmValidateTree(void *arg0, s32 arg1, s64 arg2) {
    s64 sp28;
    ? (*temp_t9)(void *, s32, s64);
    void *temp_a0;

    if (*(arg0->unk84 + (rrmWindowPrivateIndex * 4)) != 0) {
        sp28 = arg2;
        rrmWorkProc(arg0);
    }
    temp_a0 = arg0->unk10;
    temp_t9 = (*(temp_a0->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk7C;
    unksp18 = (s64) temp_a0;
    temp_a0->unkCC = temp_t9;
    temp_t9(arg0, arg1, arg2);
    unksp18->unkCC = rrmValidateTree;
}

s64 rrmMapWindow(void *arg0) {
    u8 var_s2;
    void *temp_a4;
    void *temp_s1;
    void *temp_s3;
    void *temp_s4;
    void *var_v0;

    var_s2 = 0;
    temp_s3 = arg0->unk10;
    temp_s4 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    temp_s1 = *(temp_s3->unk1B4 + (*M2C_ERROR(/* Read from unset register $t9 */) * 4));
    if ((temp_s4 != NULL) && (temp_s4->unk0 & 1)) {
        incrRRMpriv(arg0->unk18);
        var_v0 = arg0->unk18;
        if (var_v0 != NULL) {
            do {
                temp_a4 = *(var_v0->unk84 + (rrmWindowPrivateIndex * 4));
                temp_a4->unk10 = (s32) (temp_a4->unk10 + 1);
                var_v0 = var_v0->unk18;
            } while (var_v0 != NULL);
        }
        var_s2 = temp_s4->unk5;
        incrRRMpriv(arg0, 0, 0);
        if (FindFreeID(arg0) == 0) {
            if (var_s2 != 0) {
                StealID((s64) arg0);
            } else {
                FindBestID((s64) arg0);
            }
        }
    } else if (arg0->unk18 == NULL) {
        rrmUnmapWindow(temp_s3, arg0);
    }
    temp_s3->unkC4 = (s64 (*)(void *)) temp_s1->unk68;
    unksp28 = StealID((s64) arg0);
    temp_s3->unkC4 = rrmMapWindow;
    if (var_s2 != 0) {
        if (var_s2 & 2) {
            if (temp_s1->unk4 != 0) {
                FindFreeCID(arg0);
                rrmValidateCID(arg0);
            }
            rrmValidateCID(arg0);
        }
        if (var_s2 & 8) {
            temp_s1->unk24(arg0, temp_s4, temp_s1);
        }
    }
    return unksp28;
}

void rrmUnmapWindow(void *arg0, void *arg1) {
    s32 *var_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 var_a3;
    u16 var_a2_2;
    u16 var_a3_2;
    u32 temp_a2_2;
    void (*temp_t9)(void *, void *, s32 *);
    void *temp_a2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_a3_3;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_a7;
    void *temp_s0;
    void *temp_s2;
    void *temp_s5;
    void *temp_v0;
    void *var_a1;

    var_a1 = arg1;
    var_a2 = &rrmWindowPrivateIndex;
    temp_s2 = arg0->unk10;
    temp_s5 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    temp_s0 = *(temp_s2->unk1B4 + (rrmScreenPrivateIndex * 4));
    if ((temp_s5 != NULL) && (temp_s5->unk0 & 1)) {
        temp_s0->unk20(arg0, 0, 0, &rrmScreenPrivateIndex);
        var_a1 = temp_s5->unk14;
        if (var_a1 == temp_s0->unk0) {
            temp_s5->unk14 = (void *)-1;
        } else {
            temp_a3 = rrmWindowPrivateIndex * 4;
            temp_a2 = *(arg0->unk84 + temp_a3);
            temp_a4 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a2->unk14 * 0x24);
            temp_a4_2 = temp_a4 + 0x98;
            if (temp_a2->unk0 & 8) {
                temp_a5 = temp_a2->unk2C;
                temp_a6 = temp_a2->unk30;
                if (temp_a5 != NULL) {
                    (*(temp_a5->unk84 + temp_a3))->unk30 = temp_a6;
                } else {
                    temp_a4->unk98 = temp_a6;
                }
                temp_a6_2 = temp_a2->unk30;
                temp_a5_2 = temp_a2->unk2C;
                if (temp_a6_2 != NULL) {
                    (*(temp_a6_2->unk84 + temp_a3))->unk2C = temp_a5_2;
                    temp_a2->unk30 = NULL;
                } else {
                    temp_a4_2->unk4 = temp_a5_2;
                }
                temp_a2->unk2C = NULL;
                temp_a5_3 = temp_a4->unk98;
                var_a3 = temp_a4_2->unk10 & 0x31 & 0xFFFF;
                temp_a4_2->unk14 = (s32) (temp_a4_2->unk14 - 1);
                if (var_a3 & 1) {
                    var_a3 |= 6;
                }
                var_a1 = (void *)-0x11;
                if (temp_a5_3 != NULL) {
                    var_a1 = temp_a4_2->unk4;
                    var_a3_2 = var_a3 | 2;
                    if (var_a1 != temp_a5_3) {
                        var_a3_2 |= 4;
                    }
                } else {
                    var_a3_2 = var_a3 & ~0x10;
                }
                temp_a4_2->unk10 = var_a3_2;
                temp_a2->unk0 = (u16) (temp_a2->unk0 & ~8);
            }
            temp_a2->unk14 = -1;
        }
        temp_a2_2 = temp_s0->unk4;
        if ((temp_a2_2 != 0) && ((u32) temp_s5->unk18 < temp_a2_2)) {
            temp_a3_2 = rrmWindowPrivateIndex * 4;
            temp_a7 = *(arg0->unk84 + temp_a3_2);
            var_a1 = (void *) (temp_a7->unk0 & 0x40);
            temp_a5_4 = (*(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk94 + (temp_a7->unk18 * 0x1C);
            if (var_a1 != NULL) {
                temp_a6_3 = temp_a7->unk3C;
                temp_a2_3 = temp_a7->unk40;
                if (temp_a6_3 != NULL) {
                    (*(temp_a6_3->unk84 + temp_a3_2))->unk40 = temp_a2_3;
                } else {
                    temp_a5_4->unk0 = temp_a2_3;
                }
                temp_a2_4 = temp_a7->unk40;
                temp_a6_4 = temp_a7->unk3C;
                if (temp_a2_4 != NULL) {
                    (*(temp_a2_4->unk84 + temp_a3_2))->unk3C = temp_a6_4;
                    temp_a7->unk40 = NULL;
                } else {
                    temp_a5_4->unk4 = temp_a6_4;
                }
                temp_a7->unk3C = NULL;
                var_a2_2 = temp_a5_4->unk8 & 1 & 0xFFFF;
                temp_a5_4->unkC = (s32) (temp_a5_4->unkC - 1);
                if (var_a2_2 != 0) {
                    var_a2_2 |= 4;
                }
                temp_a3_3 = temp_a5_4->unk0;
                if (temp_a3_3 != NULL) {
                    var_a1 = temp_a5_4->unk4;
                    var_a2_2 |= 2;
                    if (var_a1 != temp_a3_3) {
                        var_a2_2 |= 4;
                    }
                }
                temp_a5_4->unk8 = var_a2_2;
                temp_a7->unk0 = (u16) (temp_a7->unk0 & ~0x40);
            }
            temp_a7->unk18 = 0;
        }
        var_a2 = arg0->unk18;
        if (var_a2 != NULL) {
            do {
                temp_v0 = *(var_a2->unk84 + (rrmWindowPrivateIndex * 4));
                temp_v0->unk10 = (s32) (temp_v0->unk10 - 1);
                var_a2 = var_a2->unk18;
            } while (var_a2 != NULL);
        }
    }
    temp_t9 = temp_s0->unk6C;
    temp_s2->unkC8 = temp_t9;
    temp_t9(arg0, var_a1, var_a2);
    temp_s2->unkC8 = rrmUnmapWindow;
}

void rrmCreateWindow(void *arg0) {
    void (*temp_t9)(void *);
    void *temp_s8;

    *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
    temp_s8 = arg0->unk10;
    temp_t9 = (*(temp_s8->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk70;
    temp_s8->unkB4 = temp_t9;
    temp_t9();
    temp_s8->unkB4 = rrmCreateWindow;
}

void rrmDestroyWindow(void *arg0) {
    void (*temp_t9)(void *);
    void *temp_s0;
    void *temp_s8;

    temp_s0 = arg0->unk10;
    temp_s8 = *(temp_s0->unk1B4 + (rrmScreenPrivateIndex * 4));
    temp_s8->unk64();
    temp_t9 = temp_s8->unk74;
    temp_s0->unkB8 = temp_t9;
    temp_t9(arg0);
    temp_s0->unkB8 = rrmDestroyWindow;
}

void rrmCopyWindow(void *arg0, s64 arg1) {
    s32 sp28;
    s64 sp18;
    ? (*temp_t9)(s64);
    void *temp_s8;

    temp_s8 = arg0->unk10;
    sp28 = (s32) (arg1 >> 0x20);
    temp_t9 = (*(temp_s8->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk78;
    sp18 = (s64) temp_s8->unkE0;
    temp_s8->unkE0 = temp_t9;
    temp_t9((s64) sp28 << 0x20);
    temp_s8->unkE0 = (? (*)(s64)) sp18;
}

s32 rrmCreateDefColormap(void *arg0, s64 arg1) {
    s64 sp20;
    s16 sp10;
    s16 spE;
    s16 spC;
    s32 sp8;
    void **sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a6_2;
    s16 temp_a7;
    s32 *temp_a6;
    s32 *var_a1;
    s32 *var_a2;
    s32 *var_s5;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 var_s0;
    s32 var_s4;
    s32 var_v0;
    u16 *temp_a2;
    void *temp_s8;
    void *temp_v0;
    void *var_s2;

    sp2 = 0xFFFF;
    sp0 = 0;
    temp_a6 = arg0->unk7C;
    temp_a5 = arg0->unk18;
    var_a2 = temp_a6;
    if (*temp_a6 != temp_a5) {
        var_a2 = temp_a6;
loop_2:
        temp_a3 = var_a2->unk24;
        var_a2 += 0x24;
        if (temp_a3 != temp_a5) {
            temp_a4 = var_a2->unk24;
            var_a2 += 0x24;
            if (temp_a4 != temp_a5) {
                goto loop_2;
            }
        }
    }
    sp20 = arg1;
    if (CreateColormap(arg0->unk1C, arg0, var_a2, &sp4, (var_a2->unk4 & 1) == 0, 0, temp_a6) != 0) {
        return 0;
    }
    temp_v0 = *sp4;
    temp_a2 = arg0->unk74;
    var_s0 = 1;
    if ((temp_v0->unk4 == 3) && (temp_v0->unkA >= 5) && (temp_a2->unk4C == *(temp_a2->unk30 + (*(temp_a2->unk58 + ((arg0->unk18 - temp_a2->unk50) * 0x14)) * 4)))) {
        switch (sp20) {                             /* irregular */
        default:
            ErrorF(&local_0x5f0a0000 - 0x290, (s32) sp20, temp_a2, (s32 *)4, sp20, 3);
            ErrorF(&local_0x5f0a0000 - 0x268);
            /* fallthrough */
        case 0:
        case 1:
            var_a1 = saved_reg_gp - 0x51AC;
            break;
        case 4:
            var_a1 = saved_reg_gp - 0x516C;
            break;
        case 3:
            var_a1 = saved_reg_gp - 0x5184;
            break;
        case 2:
            var_a1 = saved_reg_gp - 0x519C;
            break;
        }
        temp_a2_2 = *var_a1;
        if (temp_a2_2 >= 0) {
            var_v0 = temp_a2_2;
            var_s5 = var_a1;
            sgiOverrideColorCompare = 1;
            temp_s8 = &local_0x5f0b0000 + 0x50B0;
loop_24:
            if (var_v0 < var_s5->unk4) {
                var_s4 = var_v0;
                var_s2 = var_v0 + temp_s8;
loop_29:
                sp8 = var_s4;
                temp_a6_2 = var_s2->unk100 << 8;
                temp_a7 = var_s2->unk200 << 8;
                sp10 = temp_a7;
                spE = temp_a6_2;
                spC = var_s2->unk0 << 8;
                if (AllocColor(sp4, &spC, &spE, &sp10, &sp8, 0, temp_a6_2, temp_a7) != 0) {
                    var_s0 = 0;
                }
                if (var_s2 == ((var_v0 * 0) + temp_s8)) {
                    arg0->unk2C = sp8;
                } else if (var_s2 == ((7 - var_v0) + var_v0 + temp_s8)) {
                    arg0->unk28 = sp8;
                }
                var_s4 += 1;
                var_s2 += 1;
                if (var_s4 < var_s5->unk4) {
                    goto loop_29;
                }
            }
            var_v0 = var_s5->unk8;
            var_s5 += 8;
            if (var_v0 >= 0) {
                goto loop_24;
            }
        }
        sgiOverrideColorCompare = 0;
        /* Duplicate return node #35. Try simplifying control flow for better match */
        arg0->unk13C(sp4);
        return var_s0;
    }
    if (AllocColor(sp4, &sp2, &sp2, &sp2, arg0 + 0x28, 0) != 0) {
        /* Duplicate return node #21. Try simplifying control flow for better match */
        return 0;
    }
    if (AllocColor(sp4, sp, sp, sp, arg0 + 0x2C, 0) == 0) {
        arg0->unk13C(sp4);
        return var_s0;
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x38, 0x3c], gap at: 0x20. */
void rrmDestroyDrawable(void *arg0) {
    s64 sp40;
    s32 temp_a3;
    s64 var_ra;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_at;

    var_ra = saved_reg_ra;
    temp_at = arg0->unk10;
    unksp8 = (s64) temp_at;
    temp_a3 = rrmWindowPrivateIndex * 4;
    temp_a1 = *(arg0->unk84 + temp_a3);
    unksp18 = (s64) *(temp_at->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (temp_a1 != NULL) {
        if (temp_a1 != NULL) {
            unksp30 = (s64) temp_a1;
            if (temp_a1->unk44 != 0) {
                Xfree((s64) unksp30->unk48, temp_a1, temp_a3);
                TimerFree(unksp30->unk44);
                var_ra = sp40;
                unksp30->unk48 = 0;
                unksp30->unk44 = 0;
            }
        }
        if (temp_a1->unk0 & 1) {
            sp40 = var_ra;
            temp_a1_2 = temp_a1->unkC;
            unksp20 = (s64) arg0->unk4;
            unksp28 = (s64) temp_a1_2;
            if (temp_a1->unk8 != 0) {
                Xfree((s64) arg0, temp_a1_2);
            } else {
                unksp18->unk44(arg0, temp_a1_2);
            }
            unksp18->unk60(unksp8, unksp20, unksp28);
        } else {
            sp40 = var_ra;
            M2C_ERROR(/* Read from unset register $t9 */)(temp_a1);
        }
    }
}

void rrmDisposeClip(void *arg0, s32 arg1, s32 arg2) {
    s32 sp4;
    s32 sp0;

    sp0 = arg2;
    sp4 = arg1;
    if (ioctl(arg0->unk74->unk64, 0x3EC, sp) == -1) {
        ErrorF(&local_0x5f0a0000 - 0x588, sp0, errno);
    }
}

void rrmInvalidate(void *arg0, s32 arg1, s64 arg2) {
    s64 sp50;
    s64 sp20;
    s64 sp18;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_3;
    s32 temp_s2_2;
    s32 var_a0;
    s32 var_a1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_s0;
    u32 var_a1_2;
    u8 temp_a6_2;
    void *temp_a1;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a5_2;
    void *temp_at;
    void *temp_s0;
    void *temp_s2;
    void *temp_s4;
    void *temp_v0;
    void *temp_v1;

    temp_s4 = arg0->unk10;
    temp_a6 = arg0->unk84;
    temp_s2 = *((rrmWindowPrivateIndex * 4) + temp_a6);
    temp_a6_2 = temp_s2->unk4;
    if (arg1 != 0) {
        var_s0 = temp_a6_2 & arg1;
    } else {
        var_s0 = (s32) temp_a6_2;
    }
    sp18 = arg2;
    sp20 = (dbcWindowPrivateIndex * 4) + temp_a6;
    if (var_s0 != 0) {
        temp_a5 = temp_s2->unkC;
        sp0 = temp_a5;
        temp_a4 = arg0->unk4;
        spC = 0;
        sp10 = 0;
        sp8 = var_s0;
        sp4 = temp_a4;
        temp_a3 = ~var_s0;
        temp_s2->unk4 = (u8) (temp_s2->unk4 & temp_a3);
        if (ioctl(temp_s4->unk74->unk64, 0x3F2, sp, temp_a3, temp_a4, temp_a5, temp_a6_2) != -1) {
            if (var_s0 & 8) {
                var_a0 = temp_s2->unk20;
                var_a1 = (spC & 4) | (var_a0 & ~4);
                temp_s2->unk20 = var_a1;
                temp_a4_2 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
                if (sp10 & 1) {
                    if (sp18 != 0) {
                        temp_a2 = temp_a4_2->unk14;
                        var_a3 = temp_a2 * 8;
                        if (temp_a2 >= 0) {
                            var_a3 = temp_a2 * 0x24;
                            temp_v0 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + var_a3;
                            temp_v0->unkA0 = (s32) (temp_a4_2->unk20 ^ 4);
                            sp50 = (s64) var_a0;
                            temp_v0->unkA4 = (s32) temp_a4_2->unk24;
                        } else {
                            sp50 = (s64) var_a0;
                        }
                        SetDIDMode(arg0, (void *) var_a1, (void *) temp_a2, var_a3, temp_a4_2, temp_a4_2);
                        var_a1 = temp_s2->unk20;
                        var_a0 = (s32) sp50;
                    } else {
                        temp_a2_2 = temp_a4_2->unk14;
                        if (temp_a2_2 >= 0) {
                            temp_at = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a2_2 * 0x24);
                            temp_at->unkA0 = (s32) (temp_a4_2->unk20 ^ 4);
                            temp_at->unkA4 = (s32) temp_a4_2->unk24;
                            var_a1 = temp_s2->unk20;
                        }
                    }
                } else {
                    temp_a2_3 = temp_a4_2->unk14;
                    if (temp_a2_3 >= 0) {
                        temp_v1 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a2_3 * 0x24);
                        temp_v1->unkA0 = (s32) temp_a4_2->unk20;
                        temp_v1->unkA4 = (s32) temp_a4_2->unk24;
                        var_a1 = temp_s2->unk20;
                    }
                }
                temp_a2_4 = var_a1 & 4;
                temp_a3_2 = var_a0 & 4;
                if (temp_a3_2 != temp_a2_4) {
                    var_a1_2 = globalSerialNumber + 1;
                    sp20->unk2 = (s8) (temp_a2_4 != 0);
                    if (var_a1_2 > 0x10000000U) {
                        var_a1_2 = 1;
                    }
                    globalSerialNumber = var_a1_2;
                    arg0->unk14 = var_a1_2;
                    FlushClientCaches(arg0->unk4, var_a1_2, temp_a2_4, temp_a3_2);
                }
            }
        }
        var_a3_2 = var_s0 & 2;
        if ((var_a3_2 != 0) && (temp_a0 = rrmScreenPrivateIndex * 4, ((*(temp_s4->unk1B4 + temp_a0))->unk4 != 0))) {
            temp_a2_5 = arg0->unk84;
            temp_a1 = *((glxWindowPrivateIndex * 4) + temp_a2_5);
            if (temp_a1 != NULL) {
                var_a3_2 = temp_a1->unk4;
                if (var_a3_2 != 0) {
                    return;
                }
            }
            temp_s0 = arg0->unk10;
            temp_a5_2 = *((rrmWindowPrivateIndex * 4) + temp_a2_5);
            temp_a4_3 = *(temp_s0->unk1B4 + temp_a0);
            temp_a1_2 = temp_a5_2->unk18;
            temp_a6_3 = temp_a4_3->unk94 + (temp_a1_2 * 0x1C);
            if ((temp_a1_2 == 0) || (temp_a4_3->unk4 == temp_a1_2)) {
                temp_a5_2->unk18 = 0;
            } else {
                temp_s2_2 = temp_a6_3 + 0x10;
                temp_a4_3->unk4C(arg0, temp_s2_2, 0, var_a3_2, temp_a4_3, temp_a5_2, temp_a6_3);
                temp_s0->unk188(temp_s2_2);
            }
        }
    }
}

s32 incrRRMpriv(void *arg0) {
    s64 sp0;
    ? (*temp_t9)(void *);
    s32 temp_v1;
    s64 temp_s2;
    s64 temp_v0;
    void *var_s0;

    var_s0 = arg0;
    if (arg0 != NULL) {
        temp_v1 = rrmWindowPrivateIndex;
loop_2:
        if (*(var_s0->unk84 + (temp_v1 * 4)) != 0) {
            goto block_3;
        }
        temp_v0 = Xalloc(0x4C);
        temp_s2 = temp_v0;
        sp0 = (s64) *(var_s0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
        if (temp_v0 != 0) {
            memset(temp_s2, 0, 0x4C);
            *(var_s0->unk84 + (rrmWindowPrivateIndex * 4)) = (s32) temp_s2;
            temp_t9 = sp0->unk50;
            if (temp_t9 == NULL) {
                temp_s2->unk2 = 0;
            } else {
                temp_t9(var_s0);
            }
            if (temp_s2 == 0) {
                goto block_11;
            }
block_3:
            var_s0 = var_s0->unk18;
            if (var_s0 == NULL) {
                /* Duplicate return node #12. Try simplifying control flow for better match */
                return 0;
            }
            goto loop_2;
        }
block_11:
        if (var_s0 == NULL) {
            /* Duplicate return node #12. Try simplifying control flow for better match */
            return 0;
        }
        return 1;
    }
    return 0;
}

void nfbSetDidFlags(void *arg0) {
    s64 sp0;
    s32 *temp_a1_4;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_7;
    s32 temp_a2;
    s32 temp_a6;
    s32 temp_at;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a5;
    s32 var_s2;
    s32 var_s6;
    s32 var_s6_2;
    s64 temp_a5;
    void *temp_a1_3;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_a3;
    void *temp_a4;
    void *temp_at_2;
    void *temp_s1;
    void *temp_s3;
    void *var_a0_4;
    void *var_a0_5;
    void *var_a4;
    void *var_s0;

    temp_a1 = nfbWindowPrivateIndex * 4;
    temp_s3 = *(arg0->unk84 + temp_a1);
    temp_a4 = arg0->unk18;
    var_s2 = 0;
    temp_a5 = temp_s3->unk20 & 0xC;
    if (temp_a4 != NULL) {
        var_a3 = *(temp_a4->unk84 + temp_a1);
    } else {
        var_a3 = 0;
    }
    sp0 = temp_a5;
    rrmUndoubleBufferWindow(arg0, temp_s3, arg0->unk10->unk74, var_a3, temp_a4, temp_a5);
    var_s0 = arg0->unk24;
    if (var_s0 != NULL) {
loop_8:
        temp_s1 = *(var_s0->unk84 + (nfbWindowPrivateIndex * 4));
        if ((((u32) (var_s0->unk7C & 0x7FF) >> 0xA) != 0) && (var_s0->unk18 != NULL)) {
            temp_a1_2 = temp_s1->unk20;
            if ((temp_a1_2 & 1) && (temp_a2 = temp_a1_2 & 2, ((temp_s3->unk20 & 1) != 0))) {
                if (temp_a2 == 0) {
                    temp_a1_3 = var_s0->unk78;
                    if (temp_a1_3 != NULL) {
                        var_s6 = temp_a1_3->unk0;
                    } else {
                        var_s6 = *M2C_ERROR(/* Read from unset register $t9 */)(var_s0, temp_a1_3, temp_a2)->unk78;
                    }
                    temp_a1_4 = var_s0->unk18->unk78;
                    if (temp_a1_4 != NULL) {
                        if (var_s6 != *temp_a1_4) {
                            goto block_38;
                        }
                        goto block_40;
                    }
                    if (var_s6 == *FindWindowWithOptional(var_s0->unk18, temp_a1_4)->unk78) {
block_40:
                        goto block_5;
                    }
block_38:
                    var_a0 = 4;
                } else {
                    var_s6_2 = 0;
                    if (var_s0->unk1 != 2) {
                        temp_a1_5 = var_s0->unk78;
                        if (temp_a1_5 != NULL) {
                            var_a3_2 = temp_a1_5->unk8;
                        } else {
                            var_a3_2 = M2C_ERROR(/* Read from unset register $t9 */)(var_s0, temp_a1_5, temp_a2)->unk78->unk8;
                        }
                        var_s6_2 = var_a3_2;
                    }
                    if (var_s0->unk18->unk1 != 2) {
                        temp_a1_6 = var_s0->unk18->unk78;
                        if (temp_a1_6 != NULL) {
                            var_a0_2 = temp_a1_6->unk8;
                        } else {
                            var_a0_2 = M2C_ERROR(/* Read from unset register $t9 */)(var_s0->unk18, temp_a1_6)->unk78->unk8;
                        }
                        var_a0 = 0;
                        if (var_s6_2 != var_a0_2) {
                            goto block_23;
                        }
                    } else if (var_s6_2 == 0) {
block_5:
                        var_a0 = 0;
                    } else {
block_23:
                        var_a0 = 4;
                    }
                }
            } else {
                var_a0 = 4;
            }
        } else {
            var_a0 = 0;
        }
        temp_at = (-5 & temp_s1->unk20) | var_a0;
        temp_s1->unk20 = temp_at;
        var_s0 = var_s0->unk1C;
        var_s2 = (temp_at & 8) | (var_s2 | var_a0);
        if (var_s0 != NULL) {
            goto loop_8;
        }
    }
    temp_a0 = temp_s3->unk20;
    if (var_s2 != 0) {
        var_a0_3 = temp_a0 | 8;
    } else {
        var_a0_3 = temp_a0 & ~8;
    }
    temp_s3->unk20 = var_a0_3;
    if (var_a0_3 & 0xC) {
        var_a0_4 = arg0->unk18;
        if (var_a0_4 != NULL) {
            do {
                temp_at_2 = *(var_a0_4->unk84 + (nfbWindowPrivateIndex * 4));
                temp_at_2->unk20 = (s32) (temp_at_2->unk20 | 8);
                var_a0_4 = var_a0_4->unk18;
            } while (var_a0_4 != NULL);
        }
    } else if (sp0 != 0) {
        var_a0_5 = arg0->unk18;
        if (var_a0_5 != NULL) {
loop_46:
            temp_a1_7 = nfbWindowPrivateIndex * 4;
            temp_a3 = *(var_a0_5->unk84 + temp_a1_7);
            temp_a6 = temp_a3->unk20;
            var_a5 = 0;
            if (temp_a6 & 8) {
                var_a4 = var_a0_5->unk24;
                if (var_a4 != NULL) {
loop_48:
                    if (!((*(var_a4->unk84 + temp_a1_7))->unk20 & 0xC)) {
                        var_a4 = var_a4->unk1C;
                        if (var_a4 == NULL) {

                        } else {
                            goto loop_48;
                        }
                    } else {
                        var_a5 = 1;
                    }
                }
                if (var_a5 == 0) {
                    temp_a3->unk20 = (s32) (-9 & temp_a6);
                    var_a0_5 = var_a0_5->unk18;
                    if (var_a0_5 == NULL) {

                    } else {
                        goto loop_46;
                    }
                }
            } else {
                ErrorF(&local_0x5f0a0000 - 0x208, temp_a1_7);
            }
        }
    }
}
