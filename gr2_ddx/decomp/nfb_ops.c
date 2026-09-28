s32 AllocColor(s64, void *, ? *, ? *, s32 *, s32);  /* extern */
s32 AllocateGCPrivate(void *, s32, ?);              /* extern */
s32 AllocateScreenPrivateIndex();                   /* extern */
s32 AllocateWindowPrivate(void *, s32, ?);          /* extern */
? ChangeGC(void *, ?, s32 *, s32);                  /* extern */
s32 ChangeWindowProperty(s64, s64, ?, ?, ?, void *, s32 *, ?); /* extern */
s32 CreateColormap(s64, void *, void *, ? *, ?, ?); /* extern */
? ErrorF(void *, s32 *, s32);                       /* extern */
s32 FakeClientID(?);                                /* extern */
? FatalError(void *, u64, ?);                       /* extern */
? FreeScratchGC(void *);                            /* extern */
void *GetScratchGC(u8, void *);                     /* extern */
s64 LookupIDByType(s32, ?, s32, void *, s32, s32, s32 *, void *); /* extern */
s64 MakeAtom(void *, ?, ?, s64, ? **);              /* extern */
s32 MakeWindowOptional(s64);                        /* extern */
s64 Ones(s32, void *, void *);                      /* extern */
s32 OsLookupColor(s32, s32 *, void *, void *, ? *, ? *); /* extern */
? QueryGlyphExtents(void *, s64, s64, void *, void *, s32); /* extern */
? SetReservedID(void *, s32);                       /* extern */
? ShmRegisterFuncs(void *, void *);                 /* extern */
? ValidateGC(s32, void *);                          /* extern */
? WalkTree(void *, ? *, void *, s32, s32 *, s32, s32); /* extern */
s64 Xalloc(s64, s64, s64, s64, s32, s32, s64, s64); /* extern */
? Xfree(s64);                                       /* extern */
? atof(s32 *);                                      /* extern */
s32 cfb16AllocatePrivates(void *, s32, s32);        /* extern */
s32 cfb16CopyPlane(void *);                         /* extern */
? cfb16GetSpans(void *, u64, s64, void *, ?);       /* extern */
s32 cfb32AllocatePrivates(void *, s32, s32);        /* extern */
s32 cfb32CopyPlane(void *);                         /* extern */
? cfb32GetSpans(void *, u64, s64, void *, ?);       /* extern */
s32 cfbAllocatePrivates(void *, s32, s32);          /* extern */
s32 cfbCopyPlane(void *);                           /* extern */
? cfbGetSpans(void *, u64, s64, void *, ?);         /* extern */
? exit(?);                                          /* extern */
? local_0x5ef80000(void *);                         /* extern */
? memmove(s32, s64, ?);                             /* extern */
? memset(s32, ?, s32, s32);                         /* extern */
s32 mfbAllocatePrivates(void *, s32, s32);          /* extern */
s32 miClipSpans(s64, s32, s32, s32, s64, s32, s32, s16); /* extern */
s32 miCopyPlane(void *);                            /* extern */
? miInitializeBackingStore(void *, void *);         /* extern */
? nfbValidateWindowVisual(s32 *, s32, s32, s16, s32, s32); /* extern */
s32 nmbxCanSupportBuffers(void *);                  /* extern */
void *nmbxLookupCapability(s32, s32, s64, s32, s16); /* extern */
? nmbxScreenInit(void *, s64, u16, u16, s32 *, s32); /* extern */
void *strlen(s32 *);                                /* extern */
extern ? *GetBestVisualForPEX;
extern ? PixmapWidthPaddingInfo;
extern ? TellLostMap;
extern s32 WindowTable;
extern s32 copyPlaneGeneration__NOC;
extern s32 copyPlaneScreenIndex__OOC;
extern s32 dbcWindowPrivateIndex;
extern s32 *gammaAdjust;
extern ? local_0x5f0a0000;
extern s32 miZeroLineGeneration;
extern s32 miZeroLineScreenIndex;
extern s32 nfbGCPrivateIndex;
extern ? nfbGetBestVisualForPEX;
extern ? nfbTellGainedMap;
extern s32 nfbWindowPrivateIndex;
extern s32 rrmScreenPrivateIndex;
extern s32 *serverClient;
extern s32 serverGeneration;
extern s32 *solidRootOverrideColorName;

void nfbSolidFillRects(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    void *temp_at;

    temp_at = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    (**(arg1->unk84 + (nfbWindowPrivateIndex * 4)))->unk4(arg2, arg3, temp_at->unk40, temp_at->unk48, temp_at->unk4C, arg1);
}

void nfbTiledFillRects(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    void *temp_a5;
    void *temp_a6;

    temp_a5 = arg0->unk20;
    temp_a6 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    (**(arg1->unk84 + (nfbWindowPrivateIndex * 4)))->unk1C(arg2, arg3, temp_a5->unk20, temp_a5->unk1C, temp_a5->unkC, temp_a5->unkE, temp_a6 + 0x58, temp_a6->unk48, temp_a6->unk4C, arg1);
}

void nfbStippledFillRects(void *arg0, void *arg1, void *arg2, s32 arg3) {
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s16 sp6;
    s16 sp4;
    s16 temp_a1;
    s16 temp_a1_2;
    s16 temp_a1_3;
    s16 temp_a1_4;
    s16 temp_a1_5;
    s16 temp_a1_6;
    s16 temp_a3;
    s16 temp_a3_2;
    s16 temp_a3_4;
    s16 temp_a4;
    s16 temp_a5;
    s16 var_a5;
    s16 var_t1_2;
    s16 var_t2;
    s32 temp_a3_3;
    s32 temp_hi;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s6_2;
    s32 temp_s8;
    s32 var_t1;
    u16 temp_s1;
    u8 temp_s5;
    void *temp_s2;
    void *temp_s6;
    void *temp_s7;
    void *var_s0;

    temp_s2 = arg0->unk24;
    temp_s1 = temp_s2->unkC;
    temp_s6 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    sp78 = (s64) temp_s2->unkE;
    temp_s7 = **(arg1->unk84 + (nfbWindowPrivateIndex * 4));
    sp70 = (s64) temp_s6;
    temp_s5 = temp_s6->unk48;
    temp_s8 = temp_s6->unk4C;
    temp_s6_2 = temp_s6->unk40;
    if (arg3 != 0) {
        var_s0 = arg2;
        sp68 = (arg3 * 8) + arg2;
loop_3:
        temp_a5 = var_s0->unk0;
        temp_a4 = var_s0->unk2;
        temp_hi = (s32) (temp_a5 - sp70->unk58) % (s32) temp_s1;
        M2C_TRAP_IF(temp_s1 == 0);
        unksp18 = (s64) temp_hi;
        if (temp_hi < 0) {
            unksp18 += temp_s1;
        }
        M2C_TRAP_IF(sp78 == 0);
        var_t1 = (s32) (temp_a4 - sp70->unk5A) % sp78;
        if (var_t1 < 0) {
            var_t1 += sp78;
        }
        temp_a1 = var_s0->unk4;
        temp_a3 = (temp_s1 + temp_a5) - unksp18;
        var_a5 = temp_a3;
        if (temp_a3 >= temp_a1) {
            var_a5 = temp_a1;
        }
        sp4 = var_a5;
        temp_a1_2 = var_s0->unk6;
        temp_a3_2 = (sp78 + temp_a4) - var_t1;
        var_t2 = temp_a3_2;
        if (temp_a3_2 >= temp_a1_2) {
            var_t2 = temp_a1_2;
        }
        sp6 = var_t2;
        temp_a3_3 = temp_s2->unk1C;
        temp_s3 = temp_s2->unk20 + (temp_a3_3 * var_t1);
        temp_s7->unkC(sp, temp_s3, unksp18, temp_a3_3, temp_s6_2, temp_s5, temp_s8, arg1);
        if (sp4 < var_s0->unk4) {
loop_13:
            temp_a1_3 = var_s0->unk4;
            if (temp_a1_3 < (temp_s1 + sp4)) {
                sp4 = temp_a1_3;
            } else {
                sp4 += temp_s1;
            }
            temp_s7->unkC(sp, temp_s3, 0, temp_s2->unk1C, temp_s6_2, temp_s5, temp_s8, arg1);
            if (sp4 < var_s0->unk4) {
                goto loop_13;
            }
        }
        temp_s3_2 = temp_s2->unk20;
        if (sp6 < var_s0->unk6) {
loop_18:
            temp_a1_4 = var_s0->unk6;
            if (temp_a1_4 < (sp78 + sp6)) {
                sp6 = temp_a1_4;
            } else {
                sp6 += sp78;
            }
            temp_a1_5 = var_s0->unk4;
            temp_a3_4 = (temp_s1 + var_s0->unk0) - unksp18;
            var_t1_2 = temp_a3_4;
            if (temp_a3_4 >= temp_a1_5) {
                var_t1_2 = temp_a1_5;
            }
            sp4 = var_t1_2;
            temp_s7->unkC(sp, temp_s3_2, unksp18, temp_s2->unk1C, temp_s6_2, temp_s5, temp_s8, arg1);
            if (sp4 < var_s0->unk4) {
loop_27:
                temp_a1_6 = var_s0->unk4;
                if (temp_a1_6 < (temp_s1 + sp4)) {
                    sp4 = temp_a1_6;
                } else {
                    sp4 += temp_s1;
                }
                temp_s7->unkC(sp, temp_s3_2, 0, temp_s2->unk1C, temp_s6_2, temp_s5, temp_s8, arg1);
                if (sp4 < var_s0->unk4) {
                    goto loop_27;
                }
            }
            if (sp6 < var_s0->unk6) {
                goto loop_18;
            }
        }
        var_s0 += 8;
        if (var_s0 != sp68) {
            goto loop_3;
        }
    }
}

void nfbOpStippledFillRects(void *arg0, void *arg1, void *arg2, s32 arg3) {
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s16 temp_a1;
    s16 temp_a1_2;
    s16 temp_a1_3;
    s16 temp_a1_4;
    s16 temp_a1_5;
    s16 temp_a1_6;
    s16 temp_a3;
    s16 temp_a3_2;
    s16 temp_a3_4;
    s16 temp_a3_5;
    s16 temp_a4;
    s16 temp_a5;
    s16 var_a5;
    s16 var_t1_2;
    s16 var_t2;
    s32 temp_a3_3;
    s32 temp_hi;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s5;
    s32 temp_s6_2;
    s32 temp_s7;
    s32 var_t1;
    u16 temp_s1;
    u8 temp_s4;
    void *temp_s2;
    void *temp_s6;
    void *var_s0;

    temp_s2 = arg0->unk24;
    temp_s1 = temp_s2->unkC;
    temp_s6 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    sp90 = (s64) temp_s2->unkE;
    sp18 = (s64) **(arg1->unk84 + (nfbWindowPrivateIndex * 4));
    sp88 = (s64) temp_s6;
    temp_s4 = temp_s6->unk48;
    temp_s7 = temp_s6->unk4C;
    temp_s5 = temp_s6->unk44;
    temp_s6_2 = temp_s6->unk40;
    if (arg3 != 0) {
        var_s0 = arg2;
        sp80 = (arg3 * 8) + arg2;
loop_3:
        temp_a5 = var_s0->unk0;
        sp10 = temp_a5;
        temp_a4 = var_s0->unk2;
        sp12 = temp_a4;
        temp_hi = (s32) (temp_a5 - sp88->unk58) % (s32) temp_s1;
        M2C_TRAP_IF(temp_s1 == 0);
        unksp30 = (s64) temp_hi;
        if (temp_hi < 0) {
            unksp30 += temp_s1;
        }
        var_t1 = (s32) (temp_a4 - sp88->unk5A) % sp90;
        M2C_TRAP_IF(sp90 == 0);
        if (var_t1 < 0) {
            var_t1 += sp90;
        }
        temp_a1 = var_s0->unk4;
        temp_a3 = (temp_s1 + temp_a5) - unksp30;
        var_a5 = temp_a3;
        if (temp_a3 >= temp_a1) {
            var_a5 = temp_a1;
        }
        sp14 = var_a5;
        temp_a1_2 = var_s0->unk6;
        temp_a3_2 = (sp90 + temp_a4) - var_t1;
        var_t2 = temp_a3_2;
        if (temp_a3_2 >= temp_a1_2) {
            var_t2 = temp_a1_2;
        }
        sp16 = var_t2;
        temp_a3_3 = temp_s2->unk1C;
        temp_s3 = temp_s2->unk20 + (temp_a3_3 * var_t1);
        sp18->unk10(&sp10, temp_s3, unksp30, temp_a3_3, temp_s6_2, temp_s5, temp_s4, temp_s7, arg1);
        if (sp14 < var_s0->unk4) {
loop_13:
            sp10 = sp14;
            temp_a1_3 = var_s0->unk4;
            if (temp_a1_3 < (temp_s1 + sp14)) {
                sp14 = temp_a1_3;
            } else {
                sp14 += temp_s1;
            }
            sp18->unk10(&sp10, temp_s3, 0, temp_s2->unk1C, temp_s6_2, temp_s5, temp_s4, temp_s7, arg1);
            if (sp14 < var_s0->unk4) {
                goto loop_13;
            }
        }
        temp_s3_2 = temp_s2->unk20;
        if (sp16 < var_s0->unk6) {
loop_18:
            sp12 = sp16;
            temp_a1_4 = var_s0->unk6;
            if (temp_a1_4 < (sp90 + sp16)) {
                sp16 = temp_a1_4;
            } else {
                sp16 += sp90;
            }
            temp_a3_4 = var_s0->unk0;
            sp10 = temp_a3_4;
            temp_a1_5 = var_s0->unk4;
            temp_a3_5 = (temp_s1 + temp_a3_4) - unksp30;
            var_t1_2 = temp_a3_5;
            if (temp_a3_5 >= temp_a1_5) {
                var_t1_2 = temp_a1_5;
            }
            sp14 = var_t1_2;
            sp18->unk10(&sp10, temp_s3_2, unksp30, temp_s2->unk1C, temp_s6_2, temp_s5, temp_s4, temp_s7, arg1);
            if (sp14 < var_s0->unk4) {
loop_27:
                sp10 = sp14;
                temp_a1_6 = var_s0->unk4;
                if (temp_a1_6 < (temp_s1 + sp14)) {
                    sp14 = temp_a1_6;
                } else {
                    sp14 += temp_s1;
                }
                sp18->unk10(&sp10, temp_s3_2, 0, temp_s2->unk1C, temp_s6_2, temp_s5, temp_s4, temp_s7, arg1);
                if (sp14 < var_s0->unk4) {
                    goto loop_27;
                }
            }
            if (sp16 < var_s0->unk6) {
                goto loop_18;
            }
        }
        var_s0 += 8;
        if (var_s0 != sp80) {
            goto loop_3;
        }
    }
}

void nfbDoBitBltSS(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    u64 sp10;
    void *sp8;
    s16 sp2;
    s16 sp0;
    ? (*temp_s6)(void *, void *, s32, s32, void *);
    s16 temp_a2;
    s32 var_a0;
    s32 var_s8;
    void *temp_a0;
    void *temp_a6;
    void *temp_a7;
    void *temp_s7;
    void *temp_s7_2;
    void *temp_v1;
    void *var_a2;
    void *var_s0;
    void *var_s0_2;

    temp_a7 = arg1->unk8;
    if (temp_a7 != NULL) {
        var_a0 = temp_a7->unk4;
    } else {
        var_a0 = 1;
    }
    var_s8 = var_a0;
    if (var_a0 != 0) {
        temp_s6 = ***(arg0->unk84 + (nfbWindowPrivateIndex * 4));
        if (temp_a7 != NULL) {
            var_a2 = temp_a7 + 8;
        } else {
            var_a2 = arg1;
        }
        var_s0 = var_a2;
        if ((var_a0 == 1) || ((arg3 >= 0) && (arg2 >= 0))) {
            do {
                sp0 = var_s0->unk0 + arg2;
                sp2 = var_s0->unk2 + arg3;
                temp_s6(var_s0, sp, arg4, arg5, arg0);
                var_s8 -= 1;
                var_s0 += 8;
            } while (var_s8 != 0);
        } else if (arg3 <= 0) {
            var_s0_2 = ((var_a0 * 8) + var_a2) - 8;
            if (arg2 > 0) {
loop_35:
                temp_s7 = var_s0_2;
loop_36:
                var_s8 -= 1;
                if (var_s8 != 0) {
                    var_s0_2 -= 8;
                    if (var_s0_2->unk-6 != temp_s7->unk2) {
                        if (var_s8 != 0) {
                            var_s0_2 += 8;
                            temp_v1 = var_s0_2 - 8;
                            sp10 = (u64) temp_v1;
                            sp8 = temp_v1;
                        } else {
                            goto block_31;
                        }
                    } else {
                        goto loop_36;
                    }
                } else {
block_31:
                    sp10 = (u64) sp8;
                }
                do {
                    sp0 = var_s0_2->unk0 + arg2;
                    sp2 = var_s0_2->unk2 + arg3;
                    temp_s6(var_s0_2, sp, arg4, arg5, arg0);
                    var_s0_2 += 8;
                } while ((u32) temp_s7 >= (u32) var_s0_2);
                var_s0_2 = (void *) sp10;
                if (var_s8 != 0) {
                    goto loop_35;
                }
            } else {
                do {
                    sp0 = var_s0_2->unk0 + arg2;
                    temp_a0 = var_s0_2;
                    temp_a2 = var_s0_2->unk2;
                    var_s0_2 -= 8;
                    sp2 = temp_a2 + arg3;
                    temp_s6(temp_a0, sp, arg4, arg5, arg0);
                    var_s8 -= 1;
                } while (var_s8 != 0);
            }
        } else {
loop_19:
            temp_s7_2 = var_s0;
loop_20:
            var_s8 -= 1;
            if (var_s8 != 0) {
                var_s0 += 8;
                if (var_s0->unkA != temp_s7_2->unk2) {
                    if (var_s8 != 0) {
                        var_s0 -= 8;
                        temp_a6 = var_s0 + 8;
                        sp10 = (u64) temp_a6;
                        sp8 = temp_a6;
                    } else {
                        goto block_15;
                    }
                } else {
                    goto loop_20;
                }
            } else {
block_15:
                sp10 = (u64) sp8;
            }
            do {
                sp0 = var_s0->unk0 + arg2;
                sp2 = var_s0->unk2 + arg3;
                temp_s6(var_s0, sp, arg4, arg5, arg0);
                var_s0 -= 8;
            } while ((u32) var_s0 >= (u32) temp_s7_2);
            var_s0 = (void *) sp10;
            if (var_s8 != 0) {
                goto loop_19;
            }
        }
    }
}

void nfbDoBitBltSP(void *arg0, s64 arg1, void *arg2, s64 arg3, s64 arg4, s32 arg5, s32 arg6) {
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
    s64 sp18;
    s64 sp10;
    s16 spE;
    s16 spC;
    s16 spA;
    s16 sp8;
    s32 *var_s1;
    s32 *var_s2_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a4;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a7_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_4;
    s32 temp_lo_5;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s4;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a2;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a4_5;
    s32 var_a4_6;
    s32 var_a4_7;
    s32 var_a5;
    s32 var_a5_10;
    s32 var_a5_11;
    s32 var_a5_12;
    s32 var_a5_13;
    s32 var_a5_14;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_a5_5;
    s32 var_a5_6;
    s32 var_a5_7;
    s32 var_a5_8;
    s32 var_a5_9;
    s32 var_a6;
    s32 var_a6_10;
    s32 var_a6_11;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_a6_5;
    s32 var_a6_6;
    s32 var_a6_7;
    s32 var_a6_8;
    s32 var_a6_9;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s6;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_v0;
    s64 temp_a5;
    s64 temp_a7_3;
    s64 temp_a7_4;
    s64 temp_lo_3;
    s64 temp_t0_2;
    s64 temp_v0_2;
    s64 temp_v1;
    s64 temp_v1_2;
    s64 var_a0;
    s64 var_a1;
    s64 var_a4;
    s64 var_s1_2;
    s64 var_s2;
    s64 var_s5;
    u8 temp_a7;
    void *temp_v0;

    sp40 = arg1;
    spC8 = arg3;
    var_s6 = arg6;
    spD0 = arg4;
    sp38 = (s64) (**(arg1->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
    if ((arg5 != 5) && (var_s6 != 0)) {
        temp_v0 = arg2->unk8;
        var_a4 = temp_v0 + 8;
        if (temp_v0 != NULL) {
            goto block_3;
        }
        var_a4 = (s64) arg2;
        if (temp_v0 == NULL) {
            var_a2 = 1;
        } else {
block_3:
            var_a2 = temp_v0->unk4;
        }
        temp_a7 = arg0->unk3;
        spE8 = (s64) temp_a7;
        spE0 = (s64) arg0->unk1C;
        spC0 = (s64) arg0->unk20;
        if (temp_a7 != 0x20) {
            var_s6 &= (1 << spE8) - 1;
            temp_a0 = var_s6;
            if (spE8 < 0x20) {
                var_v0 = 0;
                do {
                    var_v0 += spE8;
                    var_s6 = (var_s6 << spE8) + temp_a0;
                } while (var_v0 < (0x20 - spE8));
            }
        }
        if (var_a2 > 0) {
            spF0 = var_a4;
            temp_s8 = ~var_s6;
            sp130 = (s64) sp0;
            temp_a7_2 = spE0 >> 2;
            sp28 = (s64) (spE8 >> 3);
            sp100 = temp_a7_2 * 4;
            sp140 = temp_a7_2 * 4;
            temp_t0 = arg5 * 4;
            sp138 = (s64) sp4;
            spB0 = var_a4 + (var_a2 * 8);
            sp118 = arg5 >= 6;
            sp120 = arg5 >= 0xA;
            sp160 = arg5 >= 0xC;
            spA8 = arg5 + (saved_reg_gp - 0x7094);
            sp98 = temp_t0 + (saved_reg_gp - 0x7084);
            sp128 = arg5 >= 4;
            spA0 = temp_t0 + (saved_reg_gp - 0x7044);
            spF8 = arg5 >= 2;
            sp158 = arg5 >= 0xE;
            sp168 = arg5 >= 8;
            spB8 = (s64) *(arg5 + (saved_reg_gp - 0x70A4));
loop_12:
            temp_v1 = (s64) ((spF0->unk0 + spC8) << 0x30) >> 0x30;
            sp8 = (s16) temp_v1;
            var_a1 = spF0->unk4 - spF0->unk0;
            spC = var_a1 + temp_v1;
            temp_a7_3 = (s64) ((spF0->unk2 + spD0) << 0x30) >> 0x30;
            spA = (s16) temp_a7_3;
            temp_a5 = spF0->unk6 - spF0->unk2;
            sp10 = temp_a5;
            spE = temp_a5 + temp_a7_3;
            sp30 = 0;
            temp_a5_2 = (spF0->unk2 * spE0) + spC0 + (spF0->unk0 * sp28);
            var_a0 = -4 & (temp_a5_2 + 3);
            temp_v1_2 = var_a0 - temp_a5_2;
            sp18 = temp_v1_2;
            if (temp_v1_2 != 0) {
                temp_lo = sp18 / sp28;
                M2C_TRAP_IF(sp28 == 0);
                spD8 = (s64) temp_lo;
                sp138 = (1 << (temp_lo * spE8)) - 1;
            } else {
                spD8 = 0;
            }
            var_s5 = var_a0;
            temp_a7_4 = ((sp28 * var_a1) + temp_a5_2) & 3;
            sp20 = temp_a7_4;
            if (temp_a7_4 != 0) {
                temp_lo_2 = (sp20 / sp28) * spE8;
                M2C_TRAP_IF(sp28 == 0);
                sp130 = ((1 << temp_lo_2) - 1) << (0x20 - temp_lo_2);
            }
            var_a6 = temp_a5_2;
            sp80 = spE0;
            if (spB8 != 0) {
                if (*spA8 == 0) {
                    sp70 = var_a0;
                    sp78 = var_a1;
                    if (var_s6 != -1) {
                        goto block_20;
                    }
                } else {
block_20:
                    temp_s1 = ((temp_a5_2 - var_a0) + 4) & 3;
                    temp_a5_3 = temp_s1 + var_a1;
                    temp_a4 = ((4 - sp20) & 3) + temp_a5_3;
                    temp_lo_3 = sp28 * temp_a4;
                    sp78 = var_a1;
                    sp70 = var_a0;
                    sp80 = temp_lo_3;
                    temp_v0_2 = Xalloc((temp_lo_3 * sp10) + 4, temp_lo_3, sp10, sp28, temp_a4, temp_a5_3, sp20, spB8);
                    sp30 = temp_v0_2;
                    var_a6 = (-4 & (temp_v0_2 + 3)) + temp_s1;
                    var_s5 = sp18 + var_a6;
                }
                ((? (*)(s16 *, s32, s64, s64)) sp38)(&sp8, var_a6, sp80, sp40);
                var_a1 = sp78;
                var_a0 = sp70;
            }
            if (var_s6 != -1) {
                var_s3 = 0;
                var_s7 = 0;
                if (sp10 > 0) {
                    temp_lo_4 = sp28 * (var_a1 - spD8);
                    sp50 = ~sp130;
                    sp58 = ~sp138;
                    temp_s2 = sp80 >> 2;
                    sp60 = (s64) *spA0;
                    sp150 = temp_s2 * 4;
                    sp148 = temp_s2 * 4;
                    var_s2 = var_a0;
                    temp_s1_2 = (s32) (((u32) (temp_lo_4 >> 1) >> 0x1E) + temp_lo_4) >> 2;
                    sp48 = (s64) temp_s1_2;
                    var_s4 = temp_s1_2 * 4;
                    var_s1 = var_a0 + (temp_s1_2 * 4);
loop_44:
                    var_s7 += 1;
                    if (sp18 != 0) {
                        temp_a6 = (var_s3 + var_s5)->unk-4;
                        if (arg5 != 3) {
                            temp_t1 = ~temp_a6;
                            if (sp168 != 0) {
                                var_a5 = temp_t1;
                                if (sp160 != 0) {
                                    if (sp158 != 0) {
                                        if (arg5 != 0xE) {
                                            var_a5 = -1;
                                        } else {
                                            var_a5 = ~(var_s2->unk-4 & temp_a6);
                                        }
                                    } else if (arg5 != 0xC) {
                                        var_a5 = temp_t1 | var_s2->unk-4;
                                    }
                                    var_a6_2 = var_a5;
                                } else {
                                    temp_a2 = var_s2->unk-4;
                                    if (sp120 != 0) {
                                        temp_t1_2 = ~temp_a2;
                                        if (arg5 != 0xA) {
                                            var_a5_2 = temp_t1_2 | temp_a6;
                                        } else {
                                            var_a5_2 = temp_t1_2;
                                        }
                                        var_a6_2 = var_a5_2;
                                    } else {
                                        var_a0_2 = ~temp_a6 ^ temp_a2;
                                        if (arg5 == 8) {
                                            var_a0_2 = ~(temp_a2 | temp_a6);
                                        }
                                        var_a6_2 = var_a0_2;
                                    }
                                }
                                var_a5_3 = var_a6_2;
                            } else if (sp128 != 0) {
                                temp_a2_2 = var_s2->unk-4;
                                if (sp118 != 0) {
                                    var_a5_4 = temp_a2_2 | temp_a6;
                                    if (arg5 == 6) {
                                        var_a5_4 = temp_a2_2 ^ temp_a6;
                                    }
                                    var_t1 = var_a5_4;
                                } else {
                                    var_t1 = ~temp_a6 & temp_a2_2;
                                }
                                var_a5_3 = var_t1;
                            } else {
                                if (spF8 != 0) {
                                    if (arg5 != 2) {
                                        var_a5_5 = temp_a6;
                                    } else {
                                        var_a5_5 = ~var_s2->unk-4 & temp_a6;
                                    }
                                    var_a0_3 = var_a5_5;
                                } else {
                                    if (arg5 != 1) {
                                        var_a4_2 = 0;
                                    } else {
                                        var_a4_2 = var_s2->unk-4 & temp_a6;
                                    }
                                    var_a0_3 = var_a4_2;
                                }
                                var_a5_3 = var_a0_3;
                            }
                            var_a5_6 = var_a5_3;
                        } else {
                            var_a5_6 = temp_a6;
                        }
                        var_s2->unk-4 = (s32) ((((var_a5_6 & var_s6) | (temp_s8 & var_s2->unk-4)) & sp138) | (sp58 & var_s2->unk-4));
                    }
                    if (sp48 != 0) {
                        ((? (*)(s32, s64, s32 *, s32)) sp60)(var_s3 + var_s5, var_s2, var_s1, var_s6);
                    }
                    if (sp20 != 0) {
                        temp_a6_2 = *(var_s4 + var_s5);
                        if (arg5 != 3) {
                            temp_t1_3 = ~temp_a6_2;
                            if (sp168 != 0) {
                                var_a5_7 = temp_t1_3;
                                if (sp160 != 0) {
                                    if (sp158 != 0) {
                                        if (arg5 != 0xE) {
                                            var_a5_7 = -1;
                                        } else {
                                            var_a5_7 = ~(*var_s1 & temp_a6_2);
                                        }
                                    } else if (arg5 != 0xC) {
                                        var_a5_7 = temp_t1_3 | *var_s1;
                                    }
                                    var_a6_3 = var_a5_7;
                                } else {
                                    temp_a2_3 = *var_s1;
                                    if (sp120 != 0) {
                                        temp_t1_4 = ~temp_a2_3;
                                        if (arg5 != 0xA) {
                                            var_a5_8 = temp_t1_4 | temp_a6_2;
                                        } else {
                                            var_a5_8 = temp_t1_4;
                                        }
                                        var_a6_3 = var_a5_8;
                                    } else {
                                        var_a0_4 = ~temp_a6_2 ^ temp_a2_3;
                                        if (arg5 == 8) {
                                            var_a0_4 = ~(temp_a2_3 | temp_a6_2);
                                        }
                                        var_a6_3 = var_a0_4;
                                    }
                                }
                                var_a5_9 = var_a6_3;
                            } else if (sp128 != 0) {
                                temp_a2_4 = *var_s1;
                                if (sp118 != 0) {
                                    var_a5_10 = temp_a2_4 | temp_a6_2;
                                    if (arg5 == 6) {
                                        var_a5_10 = temp_a2_4 ^ temp_a6_2;
                                    }
                                    var_t1_2 = var_a5_10;
                                } else {
                                    var_t1_2 = ~temp_a6_2 & temp_a2_4;
                                }
                                var_a5_9 = var_t1_2;
                            } else {
                                if (spF8 != 0) {
                                    if (arg5 != 2) {
                                        var_a5_11 = temp_a6_2;
                                    } else {
                                        var_a5_11 = ~*var_s1 & temp_a6_2;
                                    }
                                    var_a0_5 = var_a5_11;
                                } else {
                                    if (arg5 != 1) {
                                        var_a4_3 = 0;
                                    } else {
                                        var_a4_3 = *var_s1 & temp_a6_2;
                                    }
                                    var_a0_5 = var_a4_3;
                                }
                                var_a5_9 = var_a0_5;
                            }
                            var_a5_12 = var_a5_9;
                        } else {
                            var_a5_12 = temp_a6_2;
                        }
                        *var_s1 = (((var_a5_12 & var_s6) | (temp_s8 & *var_s1)) & sp130) | (sp50 & *var_s1);
                    }
                    var_s3 += sp148;
                    var_s4 += sp150;
                    var_s1 += sp140;
                    var_s2 += sp140;
                    if (var_s7 != sp10) {
                        goto loop_44;
                    }
                }
            } else {
                var_s3_2 = 0;
                if (arg5 != 3) {
                    var_s7_2 = 0;
                    if (sp10 > 0) {
                        temp_lo_5 = sp28 * (var_a1 - spD8);
                        var_s1_2 = var_a0;
                        sp58 = ~sp138;
                        sp50 = ~sp130;
                        sp68 = (s64) *sp98;
                        temp_s4 = sp80 >> 2;
                        sp110 = temp_s4 * 4;
                        sp108 = temp_s4 * 4;
                        temp_s2_2 = (s32) (((u32) (temp_lo_5 >> 1) >> 0x1E) + temp_lo_5) >> 2;
                        sp48 = (s64) temp_s2_2;
                        var_s4_2 = temp_s2_2 * 4;
                        var_s2_2 = var_a0 + (temp_s2_2 * 4);
loop_122:
                        var_s7_2 += 1;
                        if (sp18 != 0) {
                            temp_a5_4 = (var_s3_2 + var_s5)->unk-4;
                            if (sp168 != 0) {
                                temp_a6_3 = ~temp_a5_4;
                                if (sp160 != 0) {
                                    var_a0_6 = temp_a6_3;
                                    if (sp158 != 0) {
                                        if (arg5 != 0xE) {
                                            var_a6_4 = -1;
                                        } else {
                                            var_a6_4 = ~(var_s1_2->unk-4 & temp_a5_4);
                                        }
                                        var_a5_13 = var_a6_4;
                                    } else {
                                        if (arg5 != 0xC) {
                                            var_a0_6 = temp_a6_3 | var_s1_2->unk-4;
                                        }
                                        var_a5_13 = var_a0_6;
                                    }
                                    var_a6_5 = var_a5_13;
                                } else {
                                    temp_a2_5 = var_s1_2->unk-4;
                                    if (sp120 != 0) {
                                        temp_a0_2 = ~temp_a2_5;
                                        if (arg5 != 0xA) {
                                            var_a6_6 = temp_a0_2 | temp_a5_4;
                                        } else {
                                            var_a6_6 = temp_a0_2;
                                        }
                                        var_a0_7 = var_a6_6;
                                    } else {
                                        var_a4_4 = ~temp_a5_4 ^ temp_a2_5;
                                        if (arg5 == 8) {
                                            var_a4_4 = ~(temp_a2_5 | temp_a5_4);
                                        }
                                        var_a0_7 = var_a4_4;
                                    }
                                    var_a6_5 = var_a0_7;
                                }
                            } else {
                                var_a4_5 = 0;
                                if (sp128 != 0) {
                                    temp_a2_6 = var_s1_2->unk-4;
                                    if (sp118 != 0) {
                                        var_a6_7 = temp_a2_6 | temp_a5_4;
                                        if (arg5 == 6) {
                                            var_a6_7 = temp_a2_6 ^ temp_a5_4;
                                        }
                                        var_a0_8 = var_a6_7;
                                    } else {
                                        var_a0_8 = ~temp_a5_4 & temp_a2_6;
                                    }
                                } else {
                                    if (spF8 != 0) {
                                        if (arg5 != 2) {
                                            var_a4_5 = temp_a5_4;
                                        } else {
                                            var_a4_5 = ~var_s1_2->unk-4 & temp_a5_4;
                                        }
                                    } else if (arg5 == 1) {
                                        var_a4_5 = var_s1_2->unk-4 & temp_a5_4;
                                    }
                                    var_a0_8 = var_a4_5;
                                }
                                var_a6_5 = var_a0_8;
                            }
                            var_s1_2->unk-4 = (s32) ((var_a6_5 & sp138) | (sp58 & var_s1_2->unk-4));
                        }
                        if (sp48 != 0) {
                            ((? (*)(s32, s64, s32 *)) sp68)(var_s3_2 + var_s5, var_s1_2, var_s2_2);
                        }
                        if (sp20 != 0) {
                            temp_a5_5 = *(var_s4_2 + var_s5);
                            if (sp168 != 0) {
                                temp_a6_4 = ~temp_a5_5;
                                var_a0_9 = temp_a6_4;
                                if (sp160 != 0) {
                                    if (sp158 != 0) {
                                        if (arg5 == 0xE) {
                                            var_a6_8 = ~(*var_s2_2 & temp_a5_5);
                                        } else {
                                            var_a6_8 = -1;
                                        }
                                        var_a5_14 = var_a6_8;
                                    } else {
                                        if (arg5 != 0xC) {
                                            var_a0_9 = temp_a6_4 | *var_s2_2;
                                        }
                                        var_a5_14 = var_a0_9;
                                    }
                                    var_a6_9 = var_a5_14;
                                } else {
                                    temp_a2_7 = *var_s2_2;
                                    if (sp120 != 0) {
                                        temp_a0_3 = ~temp_a2_7;
                                        if (arg5 != 0xA) {
                                            var_a6_10 = temp_a0_3 | temp_a5_5;
                                        } else {
                                            var_a6_10 = temp_a0_3;
                                        }
                                        var_a0_10 = var_a6_10;
                                    } else {
                                        if (arg5 != 8) {
                                            var_a4_6 = ~temp_a5_5 ^ temp_a2_7;
                                        } else {
                                            var_a4_6 = ~(temp_a2_7 | temp_a5_5);
                                        }
                                        var_a0_10 = var_a4_6;
                                    }
                                    var_a6_9 = var_a0_10;
                                }
                            } else {
                                if (sp128 != 0) {
                                    temp_a2_8 = *var_s2_2;
                                    if (sp118 != 0) {
                                        var_a6_11 = temp_a2_8 | temp_a5_5;
                                        if (arg5 == 6) {
                                            var_a6_11 = temp_a2_8 ^ temp_a5_5;
                                        }
                                        var_a0_11 = var_a6_11;
                                    } else {
                                        var_a0_11 = ~temp_a5_5 & temp_a2_8;
                                    }
                                } else {
                                    if (spF8 != 0) {
                                        if (arg5 != 2) {
                                            var_a4_7 = temp_a5_5;
                                        } else {
                                            var_a4_7 = ~*var_s2_2 & temp_a5_5;
                                        }
                                    } else if (arg5 != 1) {
                                        var_a4_7 = 0;
                                    } else {
                                        var_a4_7 = *var_s2_2 & temp_a5_5;
                                    }
                                    var_a0_11 = var_a4_7;
                                }
                                var_a6_9 = var_a0_11;
                            }
                            *var_s2_2 = (var_a6_9 & sp130) | (sp50 & *var_s2_2);
                        }
                        var_s3_2 += sp108;
                        var_s4_2 += sp110;
                        var_s2_2 += sp100;
                        var_s1_2 += sp100;
                        if (var_s7_2 != sp10) {
                            goto loop_122;
                        }
                    }
                }
            }
            if (sp30 != 0) {
                Xfree(sp30);
            }
            temp_t0_2 = spF0 + 8;
            spF0 = temp_t0_2;
            if (temp_t0_2 != spB0) {
                goto loop_12;
            }
        }
    }
}

void nfbDoBitBltPS(void *arg0, void *arg1, void *arg2, s64 arg3, s64 arg4, s32 arg5, s64 arg6) {
    s64 sp30;
    s64 sp0;
    ? (*temp_s8)(void *, s32, s32, s32, s64, void *);
    s32 temp_s2;
    s32 temp_s6;
    s32 temp_s7;
    s32 var_a0;
    void *temp_t0;
    void *var_a3;
    void *var_s1;

    temp_t0 = arg2->unk8;
    temp_s8 = (**(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk8;
    if (temp_t0 != NULL) {
        var_a3 = temp_t0 + 8;
        if (temp_t0 != NULL) {
            goto block_2;
        }
        goto block_9;
    }
    var_a3 = arg2;
    if (temp_t0 == NULL) {
block_9:
        var_a0 = 1;
    } else {
block_2:
        var_a0 = temp_t0->unk4;
    }
    temp_s7 = arg1->unk1C;
    temp_s6 = arg1->unk20;
    temp_s2 = (s32) arg1->unk3 >> 3;
    if (var_a0 > 0) {
        sp0 = arg6;
        var_s1 = var_a3;
        sp30 = var_a3 + (var_a0 * 8);
        do {
            temp_s8(var_s1, ((var_s1->unk2 + arg4) * temp_s7) + temp_s6 + ((var_s1->unk0 + arg3) * temp_s2), temp_s7, arg5, sp0, arg0);
            var_s1 += 8;
        } while (var_s1 != sp30);
    }
}

/*
Decompilation failure in function nfbCopyArea:

Unable to determine jump table for jr instruction at nfb_ops.s line 2322.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 nfbCopyPlane(void *arg0, void *arg1, void *arg2, s64 arg3, s64 arg4, s32 arg5, s32 arg6, s32 arg7, void *arg_sp4, s32 arg_spC) {
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    ? sp20;
    s16 sp1E;
    s16 sp1C;
    s16 sp1A;
    s16 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s32 spC;
    void *sp4;
    ? *var_a2;
    ? *var_s2;
    s16 temp_a3_4;
    s16 temp_a3_5;
    s16 temp_a3_6;
    s16 temp_a3_7;
    s32 temp_at_2;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s8;
    s32 temp_t0;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_t0;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_t1_2;
    s64 temp_t3;
    s64 temp_t8;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a1;
    s64 var_a5;
    s64 var_a6;
    s64 var_a7;
    s64 var_s1;
    s64 var_s3;
    s64 var_t1;
    s64 var_t2;
    s64 var_t3;
    s64 var_t8;
    s64 var_t9;
    u16 temp_a3;
    u16 temp_at;
    u8 temp_a1;
    u8 temp_s6_2;
    u8 temp_t1;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a4;
    void *temp_s6;
    void *temp_s7;
    void *var_a0_2;

    temp_t1 = arg0->unk0;
    if (temp_t1 == 1) {
        if (arg1->unk0 == 1) {
            temp_a1 = arg2->unk4;
            if ((s32) temp_a1 >= 9) {
                if ((s32) temp_a1 < 0x11) {
                    spC = arg_spC;
                    sp4 = arg_sp4;
                    return cfb16CopyPlane(arg1);
                }
                spC = arg_spC;
                sp4 = arg_sp4;
                return cfb32CopyPlane(arg1);
            }
            spC = arg_spC;
            sp4 = arg_sp4;
            return cfbCopyPlane(arg1);
        }
        if ((temp_t1 != 1) || (arg1->unk0 != 0) || (var_t9 = 0, (arg0->unk2 != 1))) {
            /* Duplicate return node #7. Try simplifying control flow for better match */
            sp4 = arg_sp4;
            spC = arg_spC;
            return miCopyPlane(arg1);
        }
        if (((u32) (arg1->unk7C & 0xFFF) >> 0xB) != 0) {
            sp48 = 0;
            var_s3 = arg4;
            var_s1 = arg3;
            var_t1 = (s64) (arg4 << 0x30) >> 0x30;
            temp_a1_2 = (s64) (arg4 << 0x30) >> 0x30;
            temp_v0 = (s64) (arg3 << 0x30) >> 0x30;
            sp58 = temp_a1_2;
            var_t3 = (s64) ((temp_v0 + arg5) << 0x30) >> 0x30;
            var_a1 = (s64) ((temp_a1_2 + arg6) << 0x30) >> 0x30;
            temp_s7 = **(arg1->unk84 + (nfbWindowPrivateIndex * 4));
            temp_s6 = *(arg2->unk4C + (nfbGCPrivateIndex * 4));
            var_t8 = (s64) (arg3 << 0x30) >> 0x30;
            sp50 = (s64) temp_s6;
            temp_s5 = temp_s6->unk28;
            temp_s8 = temp_s6->unk2C;
            temp_s4 = temp_s6->unk34;
            temp_s6_2 = temp_s6->unk30;
            sp16 = (s16) var_a1;
            sp14 = (s16) var_t3;
            sp12 = (s16) var_t1;
            sp10 = (s16) var_t8;
            if (temp_v0 >= 0) {
                if (sp58 < 0) {
                    goto block_51;
                }
            } else {
                var_t8 = 0;
                var_s1 = 0;
                sp10 = 0;
                sp48 = -arg3;
                if (sp58 < 0) {
block_51:
                    var_s3 = 0;
                    var_t9 = -arg4;
                    var_t1 = 0;
                    sp12 = 0;
                }
            }
            temp_at = arg0->unkC;
            sp40 = (s64) temp_at;
            if ((s32) temp_at < ((s64) ((arg3 + arg5) << 0x30) >> 0x30)) {
                var_t3 = (s64) (sp40 << 0x30) >> 0x30;
                sp14 = (s16) var_t3;
            }
            temp_a3 = arg0->unkE;
            if ((s32) temp_a3 < ((s64) ((arg4 + arg6) << 0x30) >> 0x30)) {
                var_a1 = (s64) ((s64) temp_a3 << 0x30) >> 0x30;
                sp16 = (s16) var_a1;
            }
            temp_v0_2 = arg1->unk8 + arg7 + sp48;
            temp_t8 = (s64) (temp_v0_2 << 0x30) >> 0x30;
            sp10 = (s16) temp_t8;
            temp_at_2 = (arg1->unkA + arg_sp4 + var_t9) - var_t1;
            temp_t1_2 = (s64) ((temp_at_2 + var_t1) << 0x30) >> 0x30;
            temp_a1_3 = (s64) ((temp_at_2 + var_a1) << 0x30) >> 0x30;
            sp16 = (s16) temp_a1_3;
            temp_t3 = (s64) (((temp_v0_2 - var_t8) + var_t3) << 0x30) >> 0x30;
            sp14 = (s16) temp_t3;
            sp12 = (s16) temp_t1_2;
            if ((temp_t8 < temp_t3) && (temp_t1_2 < temp_a1_3)) {
                temp_a4 = sp50->unk8;
                temp_a3_2 = temp_a4->unk8;
                temp_s2 = arg0->unk1C;
                sp80 = (s64) arg0->unk20;
                if (temp_a3_2 != NULL) {
                    var_a0 = temp_a3_2->unk4;
                } else {
                    var_a0 = 1;
                }
                if (var_a0 != 1) {
                    sp38 = (s64) temp_a4;
                    sp30 = (s64) arg2;
                    arg2->unk0->unk154(&sp20, &sp10, 1, temp_a3_2, temp_a4);
                    (*sp30)->unk164(&sp20, &sp20, sp38);
                } else {
                    sp1E = (s16) temp_a1_3;
                    sp1C = (s16) temp_t3;
                    sp1A = (s16) temp_t1_2;
                    sp18 = (s16) temp_t8;
                    var_a6 = temp_t8;
                    temp_a3_3 = temp_a4->unk8;
                    var_t2 = temp_t1_2;
                    var_a5 = temp_t3;
                    var_a7 = temp_a1_3;
                    if (temp_a3_3 != NULL) {
                        var_a0_2 = temp_a3_3 + 8;
                    } else {
                        var_a0_2 = temp_a4;
                    }
                    temp_a3_4 = var_a0_2->unk0;
                    if (temp_t8 < temp_a3_4) {
                        var_a6 = (s64) temp_a3_4;
                        sp18 = temp_a3_4;
                    }
                    temp_a3_5 = var_a0_2->unk4;
                    if (temp_a3_5 < temp_t3) {
                        var_a5 = (s64) temp_a3_5;
                        sp1C = temp_a3_5;
                    }
                    temp_a3_6 = var_a0_2->unk2;
                    if (temp_t1_2 < temp_a3_6) {
                        var_t2 = (s64) temp_a3_6;
                        sp1A = temp_a3_6;
                    }
                    temp_a3_7 = var_a0_2->unk6;
                    var_t0 = var_a6 < var_a5;
                    if (temp_a3_7 < temp_a1_3) {
                        var_a7 = (s64) temp_a3_7;
                        sp1E = temp_a3_7;
                        var_t0 = var_a6 < var_a5;
                    }
                    if (var_t0 != 0) {
                        sp30 = (s64) arg2;
                        if (var_t2 < var_a7) {
                            (*sp30)->unk154(&sp20, &sp18, 1, temp_a3_7, temp_a4, var_a5, var_a6, var_a7);
                        } else {
                            goto block_53;
                        }
                    } else {
block_53:
                        sp30 = (s64) arg2;
                        arg2->unk0->unk154(&sp20, NULL, 0, (void *) temp_a3_7, temp_a4, var_a5, var_a6, var_a7);
                    }
                }
                if (sp28 != NULL) {
                    var_a2 = sp28 + 8;
                    if (sp28 != NULL) {
                        goto block_42;
                    }
                    goto block_49;
                }
                var_a2 = &sp20;
                if (sp28 == NULL) {
block_49:
                    var_a0_3 = 1;
                } else {
block_42:
                    var_a0_3 = sp28->unk4;
                }
                sp78 = (s64) temp_s2;
                if (var_a0_3 > 0) {
                    var_s2 = var_a2;
                    sp70 = (s64) (var_a2 + (var_a0_3 * 8));
                    do {
                        sp4 = arg1;
                        temp_t0 = (var_s2->unk0 + var_s1) - sp10;
                        temp_s7->unk10(var_s2, (((var_s2->unk2 + var_s3) - sp12) * sp78) + sp80 + (temp_t0 >> 3), temp_t0 & 7, sp78, temp_s5, temp_s8, temp_s6_2, temp_s4);
                        var_s2 += 8;
                    } while (var_s2 != sp70);
                }
                (*sp30)->unk160(&sp20);
                return 0;
            }
            return 0;
        }
        return 0;
    }
    sp4 = arg_sp4;
    spC = arg_spC;
    return miCopyPlane(arg1);
}

void nfbSolidPolyGlyphBlt(void *arg0, void *arg1, s32 arg2, s32 arg3, s64 arg4, s64 arg5, ? arg_sp0) {
    s16 temp_a1_2;
    s16 temp_a1_3;
    s16 temp_a1_4;
    s16 temp_a1_5;
    s16 temp_a3_2;
    s16 temp_a4;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 var_a1_2;
    s16 var_s6;
    s16 var_s7;
    s16 var_v0_3;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a7;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s7;
    s32 temp_t0_2;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a4;
    s32 var_s5;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_at;
    s64 temp_s4_2;
    s64 temp_s5;
    s64 temp_sp;
    s64 temp_t0;
    s64 temp_t2_2;
    s64 temp_t8;
    s64 temp_v1;
    s64 temp_v1_2;
    s64 var_a0_2;
    s64 var_a1;
    s64 var_a1_3;
    s64 var_a2;
    s64 var_s0;
    s64 var_s1;
    s64 var_s6_2;
    s64 var_t2;
    u8 temp_s1;
    void *temp_a1;
    void *temp_a3;
    void *temp_s2;
    void *temp_t2;
    void *temp_v0;
    void *var_a6;

    arg_sp0.unk-90 = arg5;
    arg_sp0.unk-B0 = (s64) saved_reg_s0;
    arg_sp0.unk-B8 = (s64) saved_reg_s6;
    arg_sp0.unk-88 = arg4;
    arg_sp0.unk-A8 = (s64) saved_reg_s4;
    arg_sp0.unk-E0 = (s64) saved_reg_s1;
    arg_sp0.unk-C8 = (s64) saved_reg_s5;
    arg_sp0.unk-A0 = (s64) saved_reg_s7;
    temp_v0 = arg1->unk2C;
    var_s5 = arg0->unk8 + arg2;
    arg_sp0.unk-D8 = (s64) saved_reg_fp;
    temp_s7 = arg0->unkA + arg3;
    arg_sp0.unk-D0 = (s64) saved_reg_s2;
    arg_sp0.unk-C0 = (s64) saved_reg_s3;
    arg_sp0.unk-E8 = (s64) saved_reg_gp;
    var_a6 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    temp_a7 = var_a6->unk8;
    temp_s2 = **(arg0->unk84 + (nfbWindowPrivateIndex * 4));
    temp_s1 = var_a6->unk48;
    temp_s4 = var_a6->unk40;
    temp_s3 = var_a6->unk4C;
    if (((u32) (temp_v0->unkC & 0x1FFF) >> 0xC) != 0) {
        arg_sp0.unk-50 = (s16) (temp_v0->unk20 + var_s5);
        arg_sp0.unk-4C = (s16) (arg1->unk2C->unk16 + var_s5 + (temp_v0->unk24 * arg_sp0.unk-88));
        arg_sp0.unk-4E = (s16) (temp_s7 - arg1->unk2C->unk1A);
        arg_sp0.unk-160 = (s64) saved_reg_ra;
        arg_sp0.unk-98 = (s64) temp_a7;
        arg_sp0.unk-4A = (s16) (arg1->unk2C->unk1C + temp_s7);
    } else {
        arg_sp0.unk-168 = (s64) var_a6;
        arg_sp0.unk-98 = (s64) temp_a7;
        arg_sp0.unk-160 = (s64) saved_reg_ra;
        QueryGlyphExtents(temp_v0, arg_sp0.unk-90, arg_sp0.unk-88, &arg_sp0 - 0x70, var_a6, temp_a7);
        arg_sp0.unk-4A = (s16) (arg_sp0.unk-60 + temp_s7);
        arg_sp0.unk-4C = (s16) (arg_sp0.unk-54 + var_s5);
        arg_sp0.unk-50 = (s16) (arg_sp0.unk-58 + var_s5);
        arg_sp0.unk-4E = (s16) (temp_s7 - arg_sp0.unk-64);
        var_a6 = (void *) arg_sp0.unk-168;
    }
    temp_v0_2 = arg1->unk0->unk17C(var_a6->unk8, &arg_sp0 - 0x50);
    var_a0 = var_s5 & 0x1F;
    switch (temp_v0_2) {                            /* irregular */
    case 0:
        return;
    case 2:
        temp_sp = sp - (((arg_sp0.unk-88 << 5) + 0xF) & ~0xF);
        arg_sp0.unk-F8 = temp_sp;
        if (temp_sp != 0) {
            var_a4 = var_s5;
            var_a2 = arg_sp0.unk-F8;
            if (arg_sp0.unk-88 != 0) {
                temp_t0 = arg_sp0.unk-90;
                var_a1 = temp_t0;
loop_15:
                temp_a3 = *var_a1;
                var_a2->unk0 = var_a4;
                var_a2->unk4 = var_a0;
                var_a2->unk8 = (s32) (temp_a3->unk0 + var_a4);
                var_a2->unkC = (s32) (temp_a3->unk2 + var_a4);
                var_a2->unk10 = (s32) (temp_s7 - temp_a3->unk6);
                var_a2->unk14 = (s32) (temp_a3->unk8 + temp_s7);
                var_a2->unk1C = (s32) ((((s32) ((temp_a3->unk2 - temp_a3->unk0) + 7) >> 3) + 1) & ~1);
                temp_a3_2 = temp_a3->unk4;
                var_a1 += 4;
                var_a2 += 0x20;
                var_a0 += temp_a3_2;
                var_a4 += temp_a3_2;
                if (var_a0 < 0x20) {
                    if (var_a0 < 0) {
                        var_a0 += 0x20;
                    }
                } else {
                    var_a0 &= 0x1F;
                }
                if (var_a1 != ((arg_sp0.unk-88 * 4) + temp_t0)) {
                    goto loop_15;
                }
            }
            temp_a1 = arg_sp0.unk-98->unk8;
            var_a0_2 = arg_sp0.unk-98;
            var_v0 = 1;
            if (temp_a1 != NULL) {
                var_a0_2 = temp_a1 + 8;
                if (temp_a1 != NULL) {
                    goto block_20;
                }
            } else if (temp_a1 == NULL) {

            } else {
block_20:
                var_v0 = temp_a1->unk4;
            }
            if (var_v0 > 0) {
                arg_sp0.unk-120 = (s64) arg0;
                arg_sp0.unk-128 = (s64) temp_s1;
                arg_sp0.unk-130 = (s64) temp_s2;
                arg_sp0.unk-138 = (s64) temp_s3;
                arg_sp0.unk-140 = (s64) temp_s4;
                arg_sp0.unk-118 = var_a0_2;
                arg_sp0.unk-F0 = (s64) (arg_sp0.unk-88 * 4);
                arg_sp0.unk-108 = (s64) (var_a0_2 + (var_v0 * 8));
loop_24:
                temp_v0_3 = arg_sp0.unk-50;
                temp_a1_2 = arg_sp0.unk-118->unk0;
                var_s6 = temp_v0_3;
                if (temp_a1_2 >= temp_v0_3) {
                    var_s6 = temp_a1_2;
                }
                temp_v0_4 = arg_sp0.unk-4E;
                temp_a1_3 = arg_sp0.unk-118->unk2;
                if (temp_a1_3 < temp_v0_4) {
                    arg_sp0.unk-148 = (s64) temp_v0_4;
                } else {
                    arg_sp0.unk-148 = (s64) temp_a1_3;
                }
                temp_v0_5 = arg_sp0.unk-4C;
                temp_a1_4 = arg_sp0.unk-118->unk4;
                var_s7 = temp_v0_5;
                if (temp_v0_5 >= temp_a1_4) {
                    var_s7 = temp_a1_4;
                }
                temp_v0_6 = arg_sp0.unk-4A;
                temp_a1_5 = arg_sp0.unk-118->unk6;
                if (temp_v0_6 < temp_a1_5) {
                    arg_sp0.unk-150 = (s64) temp_v0_6;
                } else {
                    arg_sp0.unk-150 = (s64) temp_a1_5;
                }
                if (arg_sp0.unk-88 != 0) {
                    if ((var_s6 >= var_s7) || (arg_sp0.unk-148 >= arg_sp0.unk-150)) {
                        var_v0_2 = 1;
                    } else {
                        var_v0_2 = 0;
                    }
                    temp_at = arg_sp0.unk-90;
                    if (var_v0_2 == 0) {
                        temp_s5 = arg_sp0.unk-150;
                        temp_s4_2 = arg_sp0.unk-148;
                        var_s1 = temp_at;
                        arg_sp0.unk-158 = (s64) (arg_sp0.unk-F0 + temp_at);
                        var_s0 = arg_sp0.unk-F8;
loop_44:
                        temp_a1_6 = var_s0->unk8;
                        var_v0_3 = var_s6;
                        if (temp_a1_6 < var_s6) {
                            arg_sp0.unk-80 = var_s6;
                        } else {
                            var_v0_3 = (s16) ((s64) ((s64) temp_a1_6 << 0x30) >> 0x30);
                            arg_sp0.unk-80 = var_v0_3;
                        }
                        temp_a2 = var_s0->unkC;
                        var_a1_2 = var_s7;
                        if (var_s7 < temp_a2) {
                            arg_sp0.unk-7C = var_s7;
                        } else {
                            var_a1_2 = (s16) ((s64) ((s64) temp_a2 << 0x30) >> 0x30);
                            arg_sp0.unk-7C = var_a1_2;
                        }
                        if ((var_a1_2 - var_v0_3) > 0) {
                            temp_a1_7 = var_s0->unk10;
                            var_t2 = arg_sp0.unk-148;
                            if (temp_a1_7 < temp_s4_2) {

                            } else {
                                var_t2 = (s64) ((s64) temp_a1_7 << 0x30) >> 0x30;
                            }
                            arg_sp0.unk-7E = (s16) var_t2;
                            temp_a2_2 = var_s0->unk14;
                            var_a1_3 = arg_sp0.unk-150;
                            if (temp_s5 < temp_a2_2) {

                            } else {
                                var_a1_3 = (s64) ((s64) temp_a2_2 << 0x30) >> 0x30;
                            }
                            arg_sp0.unk-7A = (s16) var_a1_3;
                            if ((var_a1_3 - var_t2) > 0) {
                                temp_a3_3 = var_s0->unk1C;
                                temp_t0_2 = var_v0_3 - var_s0->unk8;
                                arg_sp0.unk-130->unkC(&arg_sp0 - 0x80, (*var_s1)->unkC + ((var_t2 - var_s0->unk10) * temp_a3_3) + (temp_t0_2 >> 3), temp_t0_2 & 7, temp_a3_3, arg_sp0.unk-140, arg_sp0.unk-128, arg_sp0.unk-138, arg_sp0.unk-120);
                            }
                        }
                        var_s1 += 4;
                        var_s0 += 0x20;
                        if (var_s1 != arg_sp0.unk-158) {
                            goto loop_44;
                        }
                    }
                }
                temp_v1 = arg_sp0.unk-118 + 8;
                arg_sp0.unk-118 = temp_v1;
                if (temp_v1 != arg_sp0.unk-108) {
                    goto loop_24;
                }
            }
        } else {
            return;
        }
        break;
    case 1:
        if (arg_sp0.unk-88 != 0) {
            temp_v1_2 = arg_sp0.unk-90;
            var_s6_2 = temp_v1_2;
            arg_sp0.unk-100 = (s64) ((arg_sp0.unk-88 * 4) + temp_v1_2);
            do {
                temp_t2 = *var_s6_2;
                temp_a4 = temp_t2->unk0;
                temp_a3_4 = temp_t2->unk2 - temp_a4;
                temp_t8 = (s64) ((temp_a4 + var_s5) << 0x30) >> 0x30;
                arg_sp0.unk-78 = (s16) temp_t8;
                arg_sp0.unk-74 = (s16) (temp_a3_4 + temp_t8);
                arg_sp0.unk-110 = (s64) temp_t2;
                temp_t2_2 = (s64) ((temp_s7 - temp_t2->unk6) << 0x30) >> 0x30;
                arg_sp0.unk-76 = (s16) temp_t2_2;
                arg_sp0.unk-72 = (s16) (temp_t2->unk6 + temp_t2->unk8 + temp_t2_2);
                temp_s2->unkC(&arg_sp0 - 0x78, temp_t2->unkC, 0, (((s32) (temp_a3_4 + 7) >> 3) + 1) & ~1, temp_s4, temp_s1, temp_s3, arg0);
                var_s6_2 += 4;
                var_s5 += arg_sp0.unk-110->unk4;
            } while (var_s6_2 != arg_sp0.unk-100);
        }
        break;
    }
}

void nfbImageGlyphBlt(void *arg0, s64 arg1, s32 arg2, s32 arg3, s64 arg4, s64 arg5, ? arg_sp0) {
    s16 temp_a1;
    s16 temp_a1_2;
    s16 temp_a1_3;
    s16 temp_a1_4;
    s16 temp_a3_3;
    s16 temp_a4;
    s16 temp_a6_2;
    s16 temp_a6_3;
    s16 temp_t2;
    s16 temp_t3;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 var_a1_3;
    s16 var_s6;
    s16 var_s7;
    s16 var_v0_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_lo;
    s32 temp_s0;
    s32 temp_s4_2;
    s32 temp_t0_3;
    s32 temp_v0;
    s32 var_a0_2;
    s32 var_a6;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 temp_a3;
    s64 temp_at;
    s64 temp_s4_3;
    s64 temp_s5;
    s64 temp_s5_2;
    s64 temp_s6;
    s64 temp_s6_2;
    s64 temp_s7;
    s64 temp_s7_2;
    s64 temp_sp;
    s64 temp_t0;
    s64 temp_t0_2;
    s64 temp_t2_2;
    s64 temp_t8;
    s64 temp_v1;
    s64 temp_v1_2;
    s64 temp_v1_3;
    s64 var_a0;
    s64 var_a1;
    s64 var_a1_4;
    s64 var_a2;
    s64 var_a4;
    s64 var_a6_2;
    s64 var_a7;
    s64 var_a7_2;
    s64 var_ra;
    s64 var_s0;
    s64 var_s1;
    s64 var_s3;
    s64 var_s3_2;
    s64 var_s5;
    s64 var_t1;
    s64 var_t2;
    s64 var_t2_2;
    s64 var_v0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a3_2;
    void *temp_a6;
    void *temp_s1;
    void *temp_s4;
    void *temp_s7_3;
    void *var_a1_2;

    var_ra = saved_reg_ra;
    arg_sp0.unk-A0 = arg5;
    arg_sp0.unk-100 = (s64) saved_reg_s2;
    arg_sp0.unk-110 = arg1;
    arg_sp0.unk-B8 = arg4;
    arg_sp0.unk-C8 = (s64) saved_reg_s0;
    arg_sp0.unk-F8 = (s64) saved_reg_s5;
    arg_sp0.unk-E0 = (s64) saved_reg_s3;
    temp_a6 = arg1->unk2C;
    arg_sp0.unk-E8 = (s64) saved_reg_fp;
    var_s3 = arg0->unk8 + arg2;
    temp_s5 = (s64) (var_s3 << 0x30) >> 0x30;
    arg_sp0.unk-D8 = (s64) saved_reg_s6;
    arg_sp0.unk-B0 = (s64) saved_reg_s7;
    temp_s7 = arg0->unkA + arg3;
    arg_sp0.unk-90 = temp_s7;
    temp_s6 = (s64) ((temp_a6->unk46 + temp_s7) << 0x30) >> 0x30;
    arg_sp0.unk-108 = (s64) saved_reg_s1;
    arg_sp0.unk-F0 = (s64) saved_reg_gp;
    arg_sp0.unk-C0 = (s64) saved_reg_s4;
    temp_s4 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    temp_s7_2 = (s64) ((temp_s7 - temp_a6->unk44) << 0x30) >> 0x30;
    temp_s1 = **(arg0->unk84 + (nfbWindowPrivateIndex * 4));
    arg_sp0.unk-D0 = (s64) temp_s4;
    temp_s0 = temp_s4->unk34;
    arg_sp0.unk-A8 = (s64) temp_s4->unk8;
    temp_s4_2 = temp_s4->unk28;
    arg_sp0.unk-98 = (s64) temp_s4->unk2C;
    if (((u32) (temp_a6->unkC & 0x1FFF) >> 0xC) != 0) {
        temp_lo = temp_a6->unk24 * arg_sp0.unk-B8;
        temp_v1 = arg_sp0.unk-110;
        arg_sp0.unk-50 = (s16) (temp_a6->unk20 + var_s3);
        arg_sp0.unk-4C = (s16) (temp_v1->unk2C->unk16 + var_s3 + temp_lo);
        temp_a3 = arg_sp0.unk-90;
        arg_sp0.unk-4E = (s16) (temp_a3 - temp_v1->unk2C->unk1A);
        var_v0 = (s64) ((temp_s5 + temp_lo) << 0x30) >> 0x30;
        arg_sp0.unk-4A = (s16) (temp_v1->unk2C->unk1C + temp_a3);
    } else {
        arg_sp0.unk-178 = (s64) saved_reg_ra;
        QueryGlyphExtents(temp_a6, arg_sp0.unk-A0, arg_sp0.unk-B8, &arg_sp0 - 0x70, temp_a6);
        temp_t0 = arg_sp0.unk-90;
        var_ra = arg_sp0.unk-178;
        arg_sp0.unk-4A = (s16) (arg_sp0.unk-60 + temp_t0);
        arg_sp0.unk-4E = (s16) (temp_t0 - arg_sp0.unk-64);
        arg_sp0.unk-4C = (s16) (arg_sp0.unk-54 + var_s3);
        arg_sp0.unk-50 = (s16) (arg_sp0.unk-58 + var_s3);
        var_v0 = (s64) ((arg_sp0.unk-5C + temp_s5) << 0x30) >> 0x30;
    }
    temp_a0 = arg_sp0.unk-A8->unk8;
    var_a6 = 1;
    var_a7 = arg_sp0.unk-A8;
    if (temp_a0 != NULL) {
        var_a6 = temp_a0->unk4;
        if (temp_a0 != NULL) {
            goto block_4;
        }
    } else if (temp_a0 == NULL) {

    } else {
block_4:
        var_a7 = (s64) (temp_a0 + 8);
    }
    arg_sp0.unk-180 = var_s3;
    arg_sp0.unk-178 = var_ra;
    if (var_a6 > 0) {
        arg_sp0.unk-178 = var_ra;
        var_s3_2 = var_a7;
        var_a0 = var_a7 + (var_a6 * 8);
loop_14:
        temp_a6_2 = var_s3_2->unk0;
        var_a7_2 = temp_s5;
        if (temp_s5 < temp_a6_2) {
            var_a7_2 = (s64) temp_a6_2;
        }
        arg_sp0.unk-78 = (s16) var_a7_2;
        temp_a6_3 = var_s3_2->unk2;
        var_t1 = temp_s7_2;
        if (temp_s7_2 < temp_a6_3) {
            var_t1 = (s64) temp_a6_3;
        }
        arg_sp0.unk-76 = (s16) var_t1;
        temp_t2 = var_s3_2->unk4;
        var_a6_2 = var_v0;
        if (temp_t2 < var_v0) {
            var_a6_2 = (s64) temp_t2;
        }
        arg_sp0.unk-74 = (s16) var_a6_2;
        temp_t3 = var_s3_2->unk6;
        var_t2 = temp_s6;
        if (temp_t3 < temp_s6) {
            var_t2 = (s64) temp_t3;
        }
        arg_sp0.unk-72 = (s16) var_t2;
        if (var_a7_2 < var_a6_2) {
            if (((s64) (var_t1 << 0x30) >> 0x30) < var_t2) {
                arg_sp0.unk-190 = var_v0;
                arg_sp0.unk-188 = var_a0;
                temp_s1->unk4(&arg_sp0 - 0x78, 1, arg_sp0.unk-98, 3, temp_s0, arg0, var_a6_2, var_a7_2);
                var_a0 = arg_sp0.unk-188;
                var_v0 = arg_sp0.unk-190;
            }
        }
        var_s3_2 += 8;
        if (var_s3_2 != var_a0) {
            goto loop_14;
        }
        var_s3 = arg_sp0.unk-180;
    }
    temp_s6_2 = arg_sp0.unk-90;
    temp_v0 = arg_sp0.unk-110->unk0->unk17C(arg_sp0.unk-D0->unk8, &arg_sp0 - 0x50);
    var_a0_2 = var_s3 & 0x1F;
    switch (temp_v0) {                              /* irregular */
    case 0:
        return;
    case 2:
        temp_sp = sp - (((arg_sp0.unk-B8 << 5) + 0xF) & ~0xF);
        arg_sp0.unk-120 = temp_sp;
        if (temp_sp != 0) {
            var_a4 = var_s3;
            if (arg_sp0.unk-B8 != 0) {
                temp_t0_2 = arg_sp0.unk-A0;
                var_a1 = arg_sp0.unk-120;
                var_a2 = temp_t0_2;
loop_38:
                temp_a3_2 = *var_a2;
                var_a1->unk0 = (s32) var_a4;
                var_a1->unk4 = var_a0_2;
                var_a1->unk8 = (s32) (temp_a3_2->unk0 + var_a4);
                var_a1->unkC = (s32) (temp_a3_2->unk2 + var_a4);
                var_a1->unk10 = (s32) (temp_s6_2 - temp_a3_2->unk6);
                var_a1->unk14 = (s32) (temp_a3_2->unk8 + temp_s6_2);
                var_a1->unk1C = (s32) ((((s32) ((temp_a3_2->unk2 - temp_a3_2->unk0) + 7) >> 3) + 1) & ~1);
                temp_a3_3 = temp_a3_2->unk4;
                var_a2 += 4;
                var_a1 += 0x20;
                var_a0_2 += temp_a3_3;
                var_a4 += temp_a3_3;
                if (var_a0_2 < 0x20) {
                    if (var_a0_2 < 0) {
                        var_a0_2 += 0x20;
                    }
                } else {
                    var_a0_2 &= 0x1F;
                }
                if (var_a2 != ((arg_sp0.unk-B8 * 4) + temp_t0_2)) {
                    goto loop_38;
                }
            }
            temp_a0_2 = arg_sp0.unk-A8->unk8;
            var_a1_2 = temp_a0_2 + 8;
            if (temp_a0_2 != NULL) {
                goto block_42;
            }
            var_a1_2 = (void *) arg_sp0.unk-A8;
            if (temp_a0_2 == NULL) {
                var_v0_2 = 1;
            } else {
block_42:
                var_v0_2 = temp_a0_2->unk4;
            }
            if (var_v0_2 > 0) {
                arg_sp0.unk-140 = (s64) temp_s0;
                arg_sp0.unk-148 = (s64) temp_s1;
                arg_sp0.unk-150 = (s64) arg0;
                arg_sp0.unk-158 = (s64) temp_s4_2;
                arg_sp0.unk-138 = (s64) var_a1_2;
                arg_sp0.unk-118 = (s64) (arg_sp0.unk-B8 * 4);
                arg_sp0.unk-130 = (s64) (var_a1_2 + (var_v0_2 * 8));
loop_46:
                temp_a1 = arg_sp0.unk-50;
                temp_v0_2 = arg_sp0.unk-138->unk0;
                var_s6 = temp_a1;
                if (temp_v0_2 >= temp_a1) {
                    var_s6 = temp_v0_2;
                }
                temp_a1_2 = arg_sp0.unk-4E;
                temp_v0_3 = arg_sp0.unk-138->unk2;
                if (temp_v0_3 < temp_a1_2) {
                    arg_sp0.unk-160 = (s64) temp_a1_2;
                } else {
                    arg_sp0.unk-160 = (s64) temp_v0_3;
                }
                temp_v0_4 = arg_sp0.unk-4C;
                temp_a1_3 = arg_sp0.unk-138->unk4;
                var_s7 = temp_v0_4;
                if (temp_v0_4 >= temp_a1_3) {
                    var_s7 = temp_a1_3;
                }
                temp_v0_5 = arg_sp0.unk-4A;
                temp_a1_4 = arg_sp0.unk-138->unk6;
                if (temp_v0_5 < temp_a1_4) {
                    arg_sp0.unk-168 = (s64) temp_v0_5;
                } else {
                    arg_sp0.unk-168 = (s64) temp_a1_4;
                }
                if (arg_sp0.unk-B8 != 0) {
                    if ((var_s6 >= var_s7) || (arg_sp0.unk-160 >= arg_sp0.unk-168)) {
                        var_v0_3 = 1;
                    } else {
                        var_v0_3 = 0;
                    }
                    temp_at = arg_sp0.unk-A0;
                    if (var_v0_3 == 0) {
                        temp_s4_3 = arg_sp0.unk-168;
                        temp_s5_2 = arg_sp0.unk-160;
                        var_s1 = temp_at;
                        arg_sp0.unk-170 = (s64) (arg_sp0.unk-118 + temp_at);
                        var_s0 = arg_sp0.unk-120;
loop_66:
                        temp_a1_5 = var_s0->unk8;
                        var_v0_4 = var_s6;
                        if (temp_a1_5 < var_s6) {
                            arg_sp0.unk-88 = var_s6;
                        } else {
                            var_v0_4 = (s16) ((s64) ((s64) temp_a1_5 << 0x30) >> 0x30);
                            arg_sp0.unk-88 = var_v0_4;
                        }
                        temp_a2 = var_s0->unkC;
                        var_a1_3 = var_s7;
                        if (var_s7 < temp_a2) {
                            arg_sp0.unk-84 = var_s7;
                        } else {
                            var_a1_3 = (s16) ((s64) ((s64) temp_a2 << 0x30) >> 0x30);
                            arg_sp0.unk-84 = var_a1_3;
                        }
                        if ((var_a1_3 - var_v0_4) > 0) {
                            temp_a1_6 = var_s0->unk10;
                            var_t2_2 = arg_sp0.unk-160;
                            if (temp_a1_6 < temp_s5_2) {

                            } else {
                                var_t2_2 = (s64) ((s64) temp_a1_6 << 0x30) >> 0x30;
                            }
                            arg_sp0.unk-86 = (s16) var_t2_2;
                            temp_a2_2 = var_s0->unk14;
                            var_a1_4 = arg_sp0.unk-168;
                            if (temp_s4_3 < temp_a2_2) {

                            } else {
                                var_a1_4 = (s64) ((s64) temp_a2_2 << 0x30) >> 0x30;
                            }
                            arg_sp0.unk-82 = (s16) var_a1_4;
                            if ((var_a1_4 - var_t2_2) > 0) {
                                temp_a3_4 = var_s0->unk1C;
                                temp_t0_3 = var_v0_4 - var_s0->unk8;
                                arg_sp0.unk-148->unkC(&arg_sp0 - 0x88, (*var_s1)->unkC + ((var_t2_2 - var_s0->unk10) * temp_a3_4) + (temp_t0_3 >> 3), temp_t0_3 & 7, temp_a3_4, arg_sp0.unk-158, 3, arg_sp0.unk-140, arg_sp0.unk-150);
                            }
                        }
                        var_s1 += 4;
                        var_s0 += 0x20;
                        if (var_s1 != arg_sp0.unk-170) {
                            goto loop_66;
                        }
                    }
                }
                temp_v1_2 = arg_sp0.unk-138 + 8;
                arg_sp0.unk-138 = temp_v1_2;
                if (temp_v1_2 != arg_sp0.unk-130) {
                    goto loop_46;
                }
            }
        } else {
            return;
        }
        break;
    case 1:
        temp_v1_3 = arg_sp0.unk-A0;
        if (arg_sp0.unk-B8 != 0) {
            var_s5 = temp_v1_3;
            arg_sp0.unk-128 = (s64) ((arg_sp0.unk-B8 * 4) + temp_v1_3);
            do {
                temp_s7_3 = *var_s5;
                temp_a4 = temp_s7_3->unk0;
                temp_a3_5 = temp_s7_3->unk2 - temp_a4;
                temp_t8 = (s64) ((temp_a4 + var_s3) << 0x30) >> 0x30;
                arg_sp0.unk-80 = (s16) temp_t8;
                arg_sp0.unk-7C = (s16) (temp_a3_5 + temp_t8);
                temp_t2_2 = (s64) ((temp_s6_2 - temp_s7_3->unk6) << 0x30) >> 0x30;
                arg_sp0.unk-7E = (s16) temp_t2_2;
                arg_sp0.unk-7A = (s16) (temp_s7_3->unk6 + temp_s7_3->unk8 + temp_t2_2);
                temp_s1->unkC(&arg_sp0 - 0x80, temp_s7_3->unkC, 0, (((s32) (temp_a3_5 + 7) >> 3) + 1) & ~1, temp_s4_2, 3, temp_s0, arg0);
                var_s5 += 4;
                var_s3 += temp_s7_3->unk4;
            } while (var_s5 != arg_sp0.unk-128);
        }
        break;
    }
}

void nfbSolidFS(void *arg0, void *arg1, void *arg2, s32 *arg3, s32 arg4) {
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    ? (*temp_s4)(void *, ?, s32, u8, s32, void *);
    s16 temp_ra;
    s16 temp_t8;
    s32 *var_s3;
    s32 temp_s1;
    s32 temp_s6_2;
    u8 temp_s0;
    void *temp_s6;
    void *var_s2;

    temp_s6 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    temp_s0 = temp_s6->unk48;
    temp_s1 = temp_s6->unk4C;
    temp_s6_2 = temp_s6->unk40;
    temp_s4 = (**(arg1->unk84 + (nfbWindowPrivateIndex * 4)))->unk4;
    if (arg4 > 0) {
        var_s2 = arg2;
        var_s3 = arg3;
        do {
            temp_ra = var_s2->unk0;
            sp0 = temp_ra;
            sp4 = *var_s3 + temp_ra;
            temp_t8 = var_s2->unk2;
            var_s3 += 4;
            sp2 = temp_t8;
            sp6 = temp_t8 + 1;
            temp_s4(sp, 1, temp_s6_2, temp_s0, temp_s1, arg1);
            var_s2 += 4;
        } while (var_s2 != ((arg4 * 4) + arg2));
    }
}

void nfbTiledFS(void *arg0, void *arg1, void *arg2, s32 *arg3, s32 arg4) {
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    void *spC;
    s32 sp4;
    ? (*temp_s4)(s16 *, ?, s32, s32, u16, u16, s32, u8);
    s16 temp_t1;
    s16 temp_t3;
    s32 *var_s6;
    s32 temp_s7_2;
    u8 temp_s2;
    void *temp_s3;
    void *temp_s7;
    void *var_s5;

    temp_s3 = arg0->unk20;
    temp_s7 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    temp_s2 = temp_s7->unk48;
    temp_s7_2 = temp_s7->unk4C;
    temp_s4 = (**(arg1->unk84 + (nfbWindowPrivateIndex * 4)))->unk1C;
    if (arg4 > 0) {
        var_s5 = arg2;
        var_s6 = arg3;
        do {
            temp_t3 = var_s5->unk0;
            sp10 = temp_t3;
            sp14 = *var_s6 + temp_t3;
            temp_t1 = var_s5->unk2;
            var_s6 += 4;
            sp12 = temp_t1;
            sp16 = temp_t1 + 1;
            spC = arg1;
            sp4 = temp_s7_2;
            temp_s4(&sp10, 1, temp_s3->unk20, temp_s3->unk1C, temp_s3->unkC, temp_s3->unkE, *(arg0->unk4C + (nfbGCPrivateIndex * 4)) + 0x58, temp_s2);
            var_s5 += 4;
        } while (var_s5 != ((arg4 * 4) + arg2));
    }
}

void nfbStippledFS(void *arg0, void *arg1, void *arg2, s32 *arg3, s32 arg4) {
    s64 spA0;
    s64 sp98;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp10;
    s64 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    ? (*temp_s5)(void *, s32, s64, s32, s32, u8, s64, void *);
    s16 temp_a7;
    s16 temp_s0;
    s32 *var_a5;
    s32 temp_lo;
    s32 temp_s4;
    s32 temp_s6;
    s32 var_a3;
    s32 var_a4;
    s32 var_s2;
    s64 temp_a0;
    s64 temp_a2_2;
    s64 temp_v1;
    s64 var_s1;
    u16 temp_a2;
    u16 temp_s3;
    u8 temp_s7;
    void *temp_t9;
    void *var_a1;
    void *var_a6;

    var_a5 = arg3;
    var_a6 = arg0->unk24;
    temp_s3 = var_a6->unkC;
    temp_s4 = var_a6->unk1C;
    temp_t9 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    temp_s6 = temp_t9->unk40;
    temp_s5 = (**(arg1->unk84 + (nfbWindowPrivateIndex * 4)))->unkC;
    sp58 = (s64) temp_t9->unk5A;
    sp60 = (s64) temp_t9->unk58;
    temp_s7 = temp_t9->unk48;
    sp10 = (s64) temp_t9->unk4C;
    if (arg4 > 0) {
        var_a1 = arg2;
        sp50 = (arg4 * 4) + arg2;
loop_3:
        temp_a7 = var_a1->unk0;
        M2C_TRAP_IF(temp_s3 == 0);
        var_a4 = (s32) (temp_a7 - sp60) % (s32) temp_s3;
        temp_s0 = *var_a5 + temp_a7;
        if (var_a4 < 0) {
            var_a4 += temp_s3;
        }
        temp_a2 = var_a6->unkE;
        var_a3 = (s32) (var_a1->unk2 - sp58) % (s32) temp_a2;
        M2C_TRAP_IF(temp_a2 == 0);
        if (var_a3 < 0) {
            var_a3 += temp_a2;
        }
        spA0 = (s64) var_a1;
        sp98 = (s64) var_a5;
        sp8 = (s64) var_a6;
        temp_a2_2 = var_a4 & 0x1F;
        sp70 = temp_a2_2;
        sp0 = temp_a7;
        temp_lo = temp_s4 * var_a3;
        sp2 = var_a1->unk2;
        temp_a0 = (var_a1->unk0 + temp_s3) - var_a4;
        sp6 = var_a1->unk2 + 1;
        sp68 = temp_a0;
        var_s2 = var_a6->unk20 + temp_lo + ((var_a4 >> 5) * 4);
        if (temp_a0 < temp_s0) {
            sp4 = (s16) sp68;
            temp_s5(sp, var_s2, temp_a2_2, temp_s4, temp_s6, temp_s7, sp10, arg1);
            sp70 = 0;
            sp0 = (s16) sp68;
            temp_v1 = temp_s3 + sp68;
            sp68 = temp_v1;
            var_s2 = sp8->unk20 + temp_lo;
            if (temp_v1 < temp_s0) {
                var_s1 = sp68;
                do {
                    sp4 = (s16) var_s1;
                    temp_s5(sp, var_s2, 0, temp_s4, temp_s6, temp_s7, sp10, arg1);
                    sp0 = (s16) var_s1;
                    var_s1 += temp_s3;
                } while (var_s1 < temp_s0);
            }
        }
        sp4 = temp_s0;
        temp_s5(sp, var_s2, sp70, temp_s4, temp_s6, temp_s7, sp10, arg1);
        var_a6 = (void *) sp8;
        var_a1 = spA0 + 4;
        var_a5 = sp98 + 4;
        if (var_a1 != sp50) {
            goto loop_3;
        }
    }
}

void nfbOpStippledFS(void *arg0, void *arg1, void *arg2, s32 *arg3, s32 arg4) {
    s64 spB8;
    s64 spB0;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    void *sp4;
    ? (*temp_s6)(s16 *, s32, s64, s32, s32, s32, s64, s64);
    s16 temp_s0;
    s16 temp_t0;
    s32 *var_a5;
    s32 temp_lo;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s8;
    s32 var_a3;
    s32 var_a4;
    s32 var_s2;
    s64 temp_a0;
    s64 temp_a2_2;
    s64 temp_v1;
    s64 var_s1;
    u16 temp_a2;
    u16 temp_s3;
    void *temp_t9;
    void *var_a1;
    void *var_a6;

    var_a5 = arg3;
    var_a6 = arg0->unk24;
    temp_s3 = var_a6->unkC;
    temp_s4 = var_a6->unk1C;
    temp_t9 = *(arg0->unk4C + (nfbGCPrivateIndex * 4));
    temp_s8 = temp_t9->unk44;
    temp_s5 = temp_t9->unk40;
    sp70 = (s64) temp_t9->unk5A;
    sp28 = (s64) temp_t9->unk48;
    sp20 = (s64) temp_t9->unk4C;
    sp78 = (s64) temp_t9->unk58;
    temp_s6 = (**(arg1->unk84 + (nfbWindowPrivateIndex * 4)))->unk10;
    if (arg4 > 0) {
        var_a1 = arg2;
        sp68 = (arg4 * 4) + arg2;
loop_3:
        temp_t0 = var_a1->unk0;
        M2C_TRAP_IF(temp_s3 == 0);
        var_a4 = (s32) (temp_t0 - sp78) % (s32) temp_s3;
        temp_s0 = *var_a5 + temp_t0;
        if (var_a4 < 0) {
            var_a4 += temp_s3;
        }
        temp_a2 = var_a6->unkE;
        var_a3 = (s32) (var_a1->unk2 - sp70) % (s32) temp_a2;
        M2C_TRAP_IF(temp_a2 == 0);
        if (var_a3 < 0) {
            var_a3 += temp_a2;
        }
        spB8 = (s64) var_a1;
        spB0 = (s64) var_a5;
        sp18 = (s64) var_a6;
        temp_a2_2 = var_a4 & 0x1F;
        sp88 = temp_a2_2;
        sp10 = temp_t0;
        temp_lo = temp_s4 * var_a3;
        sp12 = var_a1->unk2;
        temp_a0 = (var_a1->unk0 + temp_s3) - var_a4;
        sp16 = var_a1->unk2 + 1;
        sp80 = temp_a0;
        var_s2 = var_a6->unk20 + temp_lo + ((var_a4 >> 5) * 4);
        if (temp_a0 < temp_s0) {
            sp14 = (s16) sp80;
            sp4 = arg1;
            temp_s6(&sp10, var_s2, temp_a2_2, temp_s4, temp_s5, temp_s8, sp28, sp20);
            sp88 = 0;
            sp10 = (s16) sp80;
            temp_v1 = temp_s3 + sp80;
            sp80 = temp_v1;
            var_s2 = sp18->unk20 + temp_lo;
            if (temp_v1 < temp_s0) {
                var_s1 = sp80;
                do {
                    sp14 = (s16) var_s1;
                    sp4 = arg1;
                    temp_s6(&sp10, var_s2, 0, temp_s4, temp_s5, temp_s8, sp28, sp20);
                    sp10 = (s16) var_s1;
                    var_s1 += temp_s3;
                } while (var_s1 < temp_s0);
            }
        }
        sp14 = temp_s0;
        sp4 = arg1;
        temp_s6(&sp10, var_s2, sp88, temp_s4, temp_s5, temp_s8, sp28, sp20);
        var_a6 = (void *) sp18;
        var_a1 = spB8 + 4;
        var_a5 = spB0 + 4;
        if (var_a1 != sp68) {
            goto loop_3;
        }
    }
}

void nfbFillSpans(s64 arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, ? arg_sp0) {
    s16 temp_t9;
    s16 var_a7;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_sp;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_at;
    s32 var_t8;
    s64 temp_sp_2;
    void *temp_a6;
    void *temp_at;
    void *var_a2;
    void *var_a5;

    var_t8 = 0;
    arg_sp0.unk-78 = (s64) saved_reg_gp;
    var_a7 = nfbGCPrivateIndex * 4;
    temp_a6 = *(arg1->unk4C + var_a7);
    arg_sp0.unk-80 = (s64) saved_reg_fp;
    temp_at = temp_a6->unk8;
    arg_sp0.unk-70 = (s64) temp_at;
    arg_sp0.unk-50 = (s64) temp_at;
    temp_at_2 = temp_at->unk8;
    arg_sp0.unk-48 = (s64) temp_at_2;
    if (temp_at_2 != 0) {
        var_a3 = arg_sp0.unk-48->unk4;
    } else {
        var_a3 = 1;
    }
    var_a4 = var_a3;
    if (arg_sp0.unk-48 != 0) {
        var_a5 = arg_sp0.unk-48 + 8;
    } else {
        var_a5 = (void *) arg_sp0.unk-50;
    }
    var_a2 = var_a5;
    if (var_a3 > 0) {
loop_10:
        temp_t9 = var_a2->unk2;
        var_a3_2 = 0;
        if (var_a4 > 0) {
            var_at = var_t8 < 0;
            if (temp_t9 == temp_t9) {
loop_12:
                var_a3_2 += 1;
                var_a4 -= 1;
                var_a2 += 8;
                if ((var_a4 > 0) && (var_a2->unk2 == temp_t9)) {
                    var_a3_2 += 1;
                    var_a4 -= 1;
                    var_a2 += 8;
                    if ((var_a4 > 0) && (var_a2->unk2 == temp_t9)) {
                        var_a3_2 += 1;
                        var_a4 -= 1;
                        var_a2 += 8;
                        if (var_a4 > 0) {
                            var_a7 = var_a2->unk2;
                            if (var_a7 != temp_t9) {

                            } else {
                                goto loop_12;
                            }
                        }
                    }
                }
                goto block_6;
            }
        } else {
block_6:
            var_at = var_t8 < var_a3_2;
        }
        if (var_at != 0) {
            var_t8 = var_a3_2;
        }
        if (var_a4 > 0) {
            goto loop_10;
        }
    }
    arg_sp0.unk-90 = (s64) saved_reg_s0;
    temp_at_3 = ((arg2 * var_t8 * 4) + 0xF) & ~0xF;
    temp_sp = sp - temp_at_3;
    temp_sp_2 = temp_sp - temp_at_3;
    if ((temp_sp_2 == 0) || (arg_sp0.unk-58 = (s64) arg1, arg_sp0.unk-60 = (s64) temp_a6->unk24->unk4, arg_sp0.unk-68 = arg0, (temp_sp == 0))) {
        return;
    }
    arg_sp0.unk-40 = temp_sp_2;
    arg_sp0.unk-88 = (s64) saved_reg_ra;
    ((? (*)(s64, s64, s64, s32, s32)) arg_sp0.unk-60)(arg_sp0.unk-58, arg_sp0.unk-68, arg_sp0.unk-40, temp_sp, miClipSpans(arg_sp0.unk-70, arg3, arg4, arg2, temp_sp_2, temp_sp, arg5, var_a7));
}

void nfbSetSpans(void *arg0, void *arg1, s32 arg2, u32 arg3, s64 arg4, s32 arg5, s32 arg6) {
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    u64 sp70;
    s64 sp40;
    s64 sp38;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    ? (*temp_s5)(void *, s32, ?, s64, s64, void *, s16);
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_a0_4;
    s16 temp_a2;
    s16 temp_a2_2;
    s16 temp_a2_3;
    s16 temp_a2_5;
    s16 temp_a2_6;
    s16 temp_a3;
    s16 temp_a3_2;
    s16 var_a6;
    s16 var_a6_2;
    s16 var_t0;
    s16 var_t0_2;
    s32 *var_a0_2;
    s32 temp_a7;
    s32 temp_t0_3;
    s32 var_a2;
    s32 var_a5;
    s32 var_s1;
    s32 var_s4;
    s64 var_a4;
    s64 var_s4_2;
    u32 temp_s0;
    u32 temp_s0_2;
    u32 temp_s8;
    u32 var_s3;
    u32 var_s3_2;
    u64 var_a0;
    u64 var_a0_3;
    u64 var_s2;
    u64 var_s2_2;
    u64 var_s5;
    void *temp_a2_4;
    void *temp_a2_7;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t9;
    void *temp_v1;
    void *temp_v1_2;

    var_a4 = arg4;
    var_s1 = arg2;
    temp_t9 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    sp80 = arg0->unkA + arg0->unkE;
    temp_t0 = temp_t9->unk8;
    sp70 = (u64) temp_t0;
    temp_t0_2 = temp_t0->unk8;
    sp38 = (s64) temp_t9->unk34;
    sp40 = (s64) temp_t9->unk30;
    temp_s5 = (**(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk8;
    if (temp_t0_2 != NULL) {
        var_a0 = temp_t0_2 + 8;
        var_a2 = 1;
        if (temp_t0_2 != NULL) {
            goto block_2;
        }
    } else {
        var_a0 = sp70;
        if (temp_t0_2 == NULL) {
            var_a2 = 1;
        } else {
block_2:
            var_a2 = temp_t0_2->unk4;
        }
    }
    temp_s8 = (arg5 * 4) + arg3;
    temp_a7 = arg3 < temp_s8;
    if (arg6 != 0) {
        sp78 = (s64) temp_s5;
        var_s5 = var_a0;
        if (temp_a7 != 0) {
            temp_s0 = var_a0 + (var_a2 * 8);
            var_s3 = arg3;
            var_s4 = 0;
loop_7:
            var_a0_2 = var_s4 + var_a4;
            var_s2 = var_s5;
            if (var_s3->unk2 < sp80) {
                if (var_s5 >= temp_s0) {
                    var_a5 = *(var_s4 + var_a4);
                } else {
                    var_a5 = *var_a0_2;
loop_12:
                    temp_a2 = var_s3->unk2;
                    if (temp_a2 >= var_s2->unk2) {
                        if (temp_a2 < var_s2->unk6) {
                            temp_a3 = var_s2->unk0;
                            temp_a2_2 = var_s3->unk0;
                            if ((temp_a2_2 + var_a5) >= temp_a3) {
                                if (temp_a2_2 >= var_s2->unk4) {
                                    var_s2 += 8;
                                    goto block_17;
                                }
                                var_a6 = temp_a3;
                                if (temp_a2_2 >= temp_a3) {
                                    var_a6 = temp_a2_2;
                                }
                                sp0 = var_a6;
                                temp_a3_2 = var_s2->unk4;
                                temp_a2_3 = var_s3->unk0 + *var_a0_2;
                                var_t0 = temp_a2_3;
                                if (temp_a2_3 < temp_a3_2) {
                                    sp90 = (s64) var_a0_2;
                                } else {
                                    var_t0 = temp_a3_2;
                                    sp90 = (s64) var_a0_2;
                                }
                                sp88 = var_a4;
                                sp4 = var_t0;
                                sp2 = var_s3->unk2;
                                sp6 = var_s3->unk2 + 1;
                                temp_a2_4 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                                ((? (*)(void *, s32, ?, s64, s64, void *, s16)) sp78)(sp, ((s32) ((var_a6 - var_s3->unk0) << temp_a2_4->unk8) >> temp_a2_4->unk4) + var_s1, 0, sp40, sp38, arg0, var_a6);
                                var_a0_2 = (s32 *) sp90;
                                var_a5 = *var_a0_2;
                                if (var_s2->unk4 < (var_s3->unk0 + var_a5)) {
                                    var_s2 += 8;
                                    goto block_17;
                                }
                            }
                        } else {
                            var_s2 += 8;
                            var_s5 = var_s2;
block_17:
                            if (var_s2 >= temp_s0) {

                            } else {
                                goto loop_12;
                            }
                        }
                    }
                }
                var_s4 += 4;
                var_s3 += 4;
                temp_v1 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                var_s1 += ((s32) (temp_v1->unk0 + var_a5) >> temp_v1->unk4) * 4;
                if (var_s3 < temp_s8) {
                    goto loop_7;
                }
            }
        }
    } else {
        var_s3_2 = arg3;
        if (temp_a7 != 0) {
            var_s4_2 = var_a4;
            temp_s0_2 = var_a0 + (var_a2 * 8);
loop_37:
            temp_a0 = var_s3_2->unk2;
            if (temp_a0 >= 0) {
                if (temp_a0 < sp80) {
                    temp_t0_3 = sp70->unk8;
                    var_a0_3 = sp70;
                    if (temp_t0_3 != 0) {
                        var_a0_3 = temp_t0_3 + 8;
                    }
                    var_s2_2 = var_a0_3;
                    if (var_a0_3 < temp_s0_2) {
loop_46:
                        temp_a0_2 = var_s3_2->unk2;
                        if (temp_a0_2 >= var_s2_2->unk2) {
                            if (temp_a0_2 < var_s2_2->unk6) {
                                temp_a2_5 = var_s2_2->unk0;
                                temp_a0_3 = var_s3_2->unk0;
                                if (((temp_a0_3 + *var_s4_2) >= temp_a2_5) && (temp_a0_3 < var_s2_2->unk4)) {
                                    var_a6_2 = temp_a2_5;
                                    if (temp_a0_3 >= temp_a2_5) {
                                        var_a6_2 = temp_a0_3;
                                    }
                                    sp0 = var_a6_2;
                                    temp_a0_4 = var_s2_2->unk4;
                                    temp_a2_6 = var_s3_2->unk0 + *var_s4_2;
                                    var_t0_2 = temp_a0_4;
                                    if (temp_a0_4 < temp_a2_6) {

                                    } else {
                                        var_t0_2 = temp_a2_6;
                                    }
                                    sp4 = var_t0_2;
                                    sp2 = var_s3_2->unk2;
                                    sp6 = var_s3_2->unk2 + 1;
                                    temp_a2_7 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                                    temp_s5(sp, ((s32) ((var_a6_2 - var_s3_2->unk0) << temp_a2_7->unk8) >> temp_a2_7->unk4) + var_s1, 0, sp40, sp38, arg0, var_a6_2);
                                }
                            }
                            var_s2_2 += 8;
                            if (var_s2_2 < temp_s0_2) {
                                goto loop_46;
                            }
                        }
                    }
                }
            }
            var_s4_2 += 4;
            var_s3_2 += 4;
            temp_v1_2 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
            var_s1 += ((s32) (temp_v1_2->unk0 + *var_s4_2) >> temp_v1_2->unk4) * 4;
            if (var_s3_2 < temp_s8) {
                goto loop_37;
            }
        }
    }
}

void nfbGetSpans(void *arg0, u64 arg2, s64 arg3, s64 arg4, void *arg5) {
    s64 sp98;
    u64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp40;
    s64 sp20;
    u64 sp18;
    s64 sp10;
    s16 spE;
    s16 spC;
    s16 spA;
    s16 sp8;
    ? (*temp_s4_2)(s16 *, void *, ?, void *, s32, s32, s32, s16);
    s16 temp_a4;
    s16 temp_a7_2;
    s16 temp_t1_3;
    s16 temp_v1_2;
    s32 *temp_t0;
    s32 *temp_t1_2;
    s32 *temp_t3;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a4_6;
    s32 temp_a4_7;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_gp;
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_t1;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a2;
    s32 var_a4;
    s32 var_a5;
    s32 var_at;
    s32 var_s2;
    s64 var_a0_2;
    s64 var_ra;
    s64 var_s0_2;
    s64 var_s2_2;
    u32 *temp_a4_5;
    u32 *var_a1_2;
    u32 *var_ra_2;
    u32 temp_a2_2;
    u32 temp_a2_3;
    u32 temp_a2_4;
    u32 temp_a2_5;
    u32 temp_a4_2;
    u32 temp_a4_3;
    u32 temp_a4_4;
    u32 temp_s8;
    u64 temp_v0;
    u64 var_s1;
    u64 var_t9;
    u8 temp_a0;
    void *temp_a0_5;
    void *temp_a5;
    void *temp_s0;
    void *temp_v0_6;
    void *var_a0;
    void *var_s0;
    void *var_t8;

    var_ra = saved_reg_ra;
    var_s0 = arg5;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x13413C;
    if (arg0->unk0 != 0) {
        temp_a0 = arg0->unk3;
        if (temp_a0 != 1) {
            if (temp_a0 == 8) {
                cfbGetSpans(arg0, arg2, arg4, var_s0, 8);
                return;
            }
            if (temp_a0 == 0x10) {
                cfb16GetSpans(arg0, arg2, arg4, var_s0, 8);
                return;
            }
            if (temp_a0 != 0x20) {
                sp88 = arg3;
                FatalError(&local_0x5f0a0000 + 0x238, arg2, 8);
                var_ra = sp40;
                goto block_10;
            }
            cfb32GetSpans(arg0, arg2, arg4, var_s0, 8);
            return;
        }
        var_t8 = var_s0;
        var_s0_2 = arg3;
        sp90 = arg2;
        temp_v0 = (arg4 * 4) + arg2;
        temp_s3 = temp_gp - 0x6E7C;
        sp18 = temp_v0;
        sp10 = (s64) arg0->unk20;
        temp_s8 = (u32) arg0->unk1C >> 2;
        if (arg2 < temp_v0) {
            var_t9 = arg2;
            temp_s4 = temp_gp - 0x6DF4;
            temp_s6 = temp_s8 << 5;
            sp20 = (s64) sp0;
loop_27:
            temp_a4 = var_t9->unk0;
            temp_a0_2 = *var_s0_2;
            var_s0_2 += 4;
            temp_a0_3 = temp_a4 + temp_a0_2;
            temp_a3 = temp_a4 & 0x1F;
            if (temp_a0_3 < temp_s6) {
                var_a2 = temp_a0_3;
            } else {
                var_a2 = temp_s6;
            }
            var_a5 = 0x20 - temp_a3;
            temp_a1 = var_a2 - temp_a4;
            var_s2 = (s32) ((temp_a3 + temp_a1) - 0x20) >> 5;
            var_ra_2 = (((var_t9->unk2 * temp_s8) + (temp_a4 >> 5)) * 4) + sp10;
            if ((u32) (temp_a1 + temp_a3) < 0x21U) {
                temp_v0_2 = temp_a1 * 4;
                var_t8 += 4;
                var_t8->unk-4 = (s32) ((*(temp_v0_2 + temp_s3) & var_t8->unk-4) | (*(temp_v0_2 + temp_s4) & (var_ra_2->unk0 << temp_a3)));
            } else {
                temp_s1 = *((temp_a3 * 4) + temp_s3);
                temp_s5 = *((((temp_a4 + temp_a1) & 0x1F) * 4) + temp_s4);
                if (temp_s1 == 0) {
                    var_s2 = temp_a1 >> 5;
                    if (temp_s1 == 0) {
                        var_a5 = 0;
                    }
                }
                if (temp_s5 != 0) {
                    sp20 = var_a2 & 0x1F;
                }
                temp_a2 = 0x20 - temp_a3;
                if (temp_s1 != 0) {
                    var_a1 = var_ra_2->unk0 << temp_a3;
                    if (temp_a2 < var_a5) {
                        var_a1 |= (u32) var_ra_2->unk4 >> temp_a2;
                    }
                    temp_a6 = var_a5 * 4;
                    var_t8->unk0 = (s32) ((*(temp_a6 + temp_s3) & var_t8->unk0) | (*(temp_a6 + temp_s4) & var_a1));
                    if ((u32) (var_a5 + temp_a3) >= 0x20U) {
                        var_ra_2 += 4;
                    }
                }
                temp_a7 = 0x20 - var_a5;
                temp_t1 = var_a5 * 4;
                var_a1_2 = var_ra_2;
                if (var_s2 > 0) {
                    var_a4 = var_s2;
                    var_a0 = var_t8;
                    temp_t0 = temp_t1 + temp_s4;
                    temp_t1_2 = temp_t1 + temp_s3;
                    temp_t3 = ((var_a5 & 0x1F) << 7) + (temp_gp - 0x6D6C);
                    if (var_s2 & 1) {
                        sp98 = (s64) var_a4;
                        temp_a4_2 = *var_a1_2;
                        temp_a3_2 = var_a0->unk0;
                        temp_a2_2 = temp_a4_2 >> var_a5;
                        if (var_a5 > 0) {
                            temp_at = *temp_t0;
                            var_a4 = (s32) sp98;
                            var_a0->unk4 = (s32) ((*temp_t1_2 & var_a0->unk4) | ((temp_a4_2 << temp_a7) & temp_at));
                            var_a0->unk0 = (s32) ((temp_at & temp_a3_2) | temp_a2_2);
                        } else {
                            temp_v1 = *temp_t3;
                            var_a4 = (s32) sp98;
                            var_a0->unk0 = (s32) ((~temp_v1 & temp_a3_2) | (temp_a2_2 & temp_v1));
                        }
                        var_a1_2 += 4;
                        var_a0 += 4;
                    }
                    if ((var_a4 >> 1) != 0) {
loop_53:
                        temp_a4_3 = var_a1_2->unk0;
                        temp_a3_3 = var_a0->unk0;
                        temp_a2_3 = temp_a4_3 >> var_a5;
                        if (var_a5 > 0) {
                            temp_at_2 = *temp_t0;
                            var_at = (temp_at_2 & temp_a3_3) | temp_a2_3;
                            var_a0->unk4 = (s32) ((*temp_t1_2 & var_a0->unk4) | ((temp_a4_3 << temp_a7) & temp_at_2));
                        } else {
                            temp_v0_3 = *temp_t3;
                            var_at = (~temp_v0_3 & temp_a3_3) | (temp_a2_3 & temp_v0_3);
                        }
                        var_a0->unk0 = var_at;
                        temp_a3_4 = var_a0->unk4;
                        temp_a4_4 = var_a1_2->unk4;
                        var_a1_2 += 8;
                        temp_a2_4 = temp_a4_4 >> var_a5;
                        if (var_a5 <= 0) {
                            temp_at_3 = *temp_t3;
                            var_a0->unk4 = (s32) ((~temp_at_3 & temp_a3_4) | (temp_a2_4 & temp_at_3));
                        } else {
                            temp_v0_4 = *temp_t0;
                            var_a0->unk8 = (s32) ((*temp_t1_2 & var_a0->unk8) | ((temp_a4_4 << temp_a7) & temp_v0_4));
                            var_a0->unk4 = (s32) ((temp_v0_4 & temp_a3_4) | temp_a2_4);
                        }
                        var_a0 += 8;
                        if (var_a1_2 != (var_ra_2 + (var_s2 * 4))) {
                            goto loop_53;
                        }
                    }
                }
                if (var_s2 < 0) {
                    var_s2 = 0;
                }
                temp_a1_2 = var_s2 * 4;
                temp_a4_5 = var_ra_2 + temp_a1_2;
                var_t8 += temp_a1_2;
                if (temp_s5 != 0) {
                    temp_a3_5 = var_t8->unk0;
                    temp_a0_4 = var_a5 + sp20;
                    temp_a2_5 = (u32) *temp_a4_5 >> var_a5;
                    if (temp_a0_4 < 0x21) {
                        temp_at_4 = *((((sp20 & 0x1F) + ((var_a5 & 0x1F) << 5)) * 4) + (temp_gp - 0x6D6C));
                        var_t8->unk0 = (s32) ((~temp_at_4 & temp_a3_5) | (temp_at_4 & temp_a2_5));
                    } else {
                        temp_v0_5 = temp_a0_4 * 4;
                        var_t8->unk0 = (s32) ((*((var_a5 * 4) + temp_s4) & temp_a3_5) | temp_a2_5);
                        var_t8->unk4 = (s32) (((temp_v0_5 + temp_s3)->unk-80 & var_t8->unk4) | ((temp_v0_5 + temp_s4)->unk-80 & (*temp_a4_5 << (0x20 - var_a5))));
                    }
                    if (temp_a0_4 >= 0x21) {
                        var_t8 += 4;
                    }
                }
                if (temp_s1 != 0) {
                    goto block_24;
                }
                if (temp_s5 != 0) {
block_24:
                    var_t8 += 4;
                }
            }
            var_t9 += 4;
            if (var_t9 < sp18) {
                goto loop_27;
            }
        }
        return;
    }
block_10:
    temp_s4_2 = (**(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk14;
    if (arg4 > 0) {
        var_a0_2 = arg4;
        var_s2_2 = arg3;
        var_s1 = arg2;
        if (arg4 & 1) {
            sp8 = var_s1->unk0;
            sp40 = var_ra;
            sp80 = var_a0_2;
            spC = var_s1->unk0 + *var_s2_2;
            spA = var_s1->unk2;
            var_s2_2 += 4;
            spE = var_s1->unk2 + 1;
            temp_s4_2(&sp8, var_s0, 0, arg0);
            var_s1 += 4;
            temp_a0_5 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
            var_ra = sp40;
            var_a0_2 = sp80;
            var_s0 += ((s32) (temp_a0_5->unk0 + (spC - sp8)) >> temp_a0_5->unk4) << temp_a0_5->unk8;
        }
        sp40 = var_ra;
        if ((var_a0_2 >> 1) != 0) {
            do {
                sp8 = var_s1->unk0;
                spC = var_s1->unk0 + var_s2_2->unk0;
                temp_v1_2 = var_s1->unk2;
                var_s1 += 8;
                spA = temp_v1_2;
                spE = var_s1->unk-6 + 1;
                temp_s4_2(&sp8, var_s0, 0, arg0);
                temp_a5 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                temp_t1_3 = sp8;
                sp8 = var_s1->unk-4;
                temp_a4_6 = temp_a5->unk0 + (spC - temp_t1_3);
                spC = var_s1->unk-4 + var_s2_2->unk4;
                temp_a6_2 = temp_a5->unk4;
                temp_a7_2 = var_s1->unk-2;
                temp_a5_2 = temp_a5->unk8;
                spA = temp_a7_2;
                temp_a4_7 = (temp_a4_6 >> temp_a6_2) << temp_a5_2;
                temp_s0 = temp_a4_7 + var_s0;
                spE = var_s1->unk-2 + 1;
                temp_s4_2(&sp8, temp_s0, 0, arg0, temp_a4_7, temp_a5_2, temp_a6_2, temp_a7_2);
                var_s2_2 += 8;
                temp_v0_6 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                var_s0 = (((s32) (temp_v0_6->unk0 + (spC - sp8)) >> temp_v0_6->unk4) << temp_v0_6->unk8) + temp_s0;
            } while (var_s1 != ((arg4 * 4) + arg2));
        }
    }
}

void nfbPolyPoint(void *arg0, void *arg1, s32 arg2, s32 arg3, void *arg4) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp0;
    s16 temp_a5;
    s16 temp_at;
    s16 temp_at_2;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v1;
    s16 var_at;
    s16 var_v0;
    s32 temp_a2;
    s32 temp_a6_2;
    s32 temp_s7;
    s32 temp_s8;
    s32 var_a1_2;
    s32 var_t1;
    s64 temp_t0;
    s64 temp_t2;
    s64 var_ra;
    void *temp_a6;
    void *temp_a7;
    void *temp_v0;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a6;
    void *var_s1;
    void *var_s2;
    void *var_s6;

    var_ra = saved_reg_ra;
    temp_v0 = *(arg1->unk4C + (nfbGCPrivateIndex * 4));
    temp_s8 = temp_v0->unk34;
    temp_s7 = temp_v0->unk28;
    temp_a7 = temp_v0->unk8;
    temp_a6 = temp_a7->unk8;
    sp28 = (s64) temp_v0->unk30;
    sp30 = (s64) (**(arg0->unk84 + (nfbWindowPrivateIndex * 4)))->unk18;
    if (temp_a6 != NULL) {
        sp0 = (s64) temp_a6->unk4;
        if (temp_a6 != NULL) {
            goto block_2;
        }
        goto block_27;
    }
    sp0 = 1;
    if (temp_a6 == NULL) {
block_27:
        var_s6 = temp_a7;
    } else {
block_2:
        var_s6 = temp_a6 + 8;
    }
    if (arg2 == 1) {
        temp_a2 = arg3 - 1;
        if (arg3 >= 2) {
            var_a0 = arg4;
            if (temp_a2 & 1) {
                temp_at = var_a0->unk6;
                temp_v1 = var_a0->unk4;
                temp_v0_2 = var_a0->unk0;
                temp_a5 = var_a0->unk2;
                var_a0 += 4;
                var_a0->unk2 = (s16) (temp_a5 + temp_at);
                var_a0->unk0 = (s16) (temp_v0_2 + temp_v1);
            }
            temp_a6_2 = temp_a2 >> 1;
            var_a1 = var_a0;
            if (temp_a6_2 != 0) {
                if (temp_a6_2 >= 2) {
                    var_at = var_a1->unk0;
                    var_v0 = var_a1->unk4;
                    do {
                        var_a1->unk4 = (s16) (var_at + var_v0);
                        temp_v0_3 = var_a1->unk6;
                        temp_at_2 = var_a1->unk2;
                        var_a1 += 8;
                        var_a1->unk-2 = (s16) (temp_at_2 + temp_v0_3);
                        var_a1->unk2 = (s16) (var_a1->unk-2 + var_a1->unk2);
                        var_v0 = var_a1->unk4;
                        var_a1->unk0 = (s16) (var_a1->unk-4 + var_a1->unk0);
                        var_at = var_a1->unk0;
                    } while (var_a1 != (((temp_a2 * 4) + arg4) - 8));
                    var_a1->unk4 = (s16) (var_at + var_v0);
                    var_a1->unk6 = (s16) (var_a1->unk2 + var_a1->unk6);
                    var_a1->unk8 = (s16) (var_a1->unk4 + var_a1->unk8);
                    var_a1->unkA = (s16) (var_a1->unk6 + var_a1->unkA);
                } else {
                    var_a1->unk6 = (s16) (var_a1->unk2 + var_a1->unk6);
                    var_a1->unk4 = (s16) (var_a1->unk0 + var_a1->unk4);
                    var_a1->unkA = (s16) (var_a1->unk6 + var_a1->unkA);
                    var_a1->unk8 = (s16) (var_a1->unk4 + var_a1->unk8);
                }
            }
        }
    }
    var_a0_2 = arg4;
    var_a1_2 = 0;
    if (arg3 > 0) {
        var_s1 = arg4;
        var_s2 = arg4 + 4;
loop_10:
        temp_t2 = (s64) ((var_s1->unk0 + arg0->unk8) << 0x30) >> 0x30;
        var_s1->unk0 = (s16) temp_t2;
        var_a6 = var_s6;
        temp_t0 = (s64) ((var_s1->unk2 + arg0->unkA) << 0x30) >> 0x30;
        var_s1->unk2 = (s16) temp_t0;
        if (sp0 >= 1) {
loop_17:
            var_t1 = 1;
            if (temp_t0 < var_a6->unk6) {
                if ((temp_t0 >= var_a6->unk2) && (temp_t2 >= var_a6->unk0)) {
                    var_t1 = 0;
                }
                if (var_t1 == 0) {
                    if (temp_t2 >= var_a6->unk4) {
                        goto block_16;
                    }
                    var_a1_2 += 1;
                } else {
                    goto block_6;
                }
            } else {
block_16:
                var_a6 += 8;
                if (var_a6 != (var_s6 + (sp0 * 8))) {
                    goto loop_17;
                }
                goto block_6;
            }
        } else {
block_6:
            if (var_a1_2 != 0) {
                ((? (*)(void *, s32, s32, s64, s32, ?, ?, void *)) sp30)(var_a0_2, var_a1_2, temp_s7, sp28, temp_s8, 0, 0, arg0);
                var_a1_2 = 0;
            }
            var_a0_2 = var_s2;
        }
        var_s2 += 4;
        var_s1 += 4;
        if (var_s2 != ((arg3 * 4) + arg4 + 4)) {
            goto loop_10;
        }
        var_ra = sp38;
    }
    if (var_a1_2 != 0) {
        sp38 = var_ra;
        ((? (*)(void *, s32, s32, s64, s32, ?, ?, void *)) sp30)(var_a0_2, var_a1_2, temp_s7, sp28, temp_s8, 0, 0, arg0);
    }
}

/*
Internal error in function nfbSolidZeroSeg:

Traceback (most recent call last):
  File "/mnt/fast/safe/gits/iris/ignore/extreme/m2c/m2c/main.py", line 335, in run
    raise decomp.state from None
  File "/mnt/fast/safe/gits/iris/ignore/extreme/m2c/m2c/main.py", line 244, in run
    decomp.state.info = translate_to_ast(
                        ^^^^^^^^^^^^^^^^^
  File "/mnt/fast/safe/gits/iris/ignore/extreme/m2c/m2c/translate.py", line 4887, in translate_to_ast
    translate_all_blocks(state, used_naive_phis, return_blocks, options)
  File "/mnt/fast/safe/gits/iris/ignore/extreme/m2c/m2c/translate.py", line 4242, in translate_all_blocks
    state = create_dominated_node_state(parent_state, node, used_naive_phis)
            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/mnt/fast/safe/gits/iris/ignore/extreme/m2c/m2c/translate.py", line 4188, in create_dominated_node_state
    new_regs.global_set_with_meta(reg, expr, RegMeta(inherited=True))
  File "/mnt/fast/safe/gits/iris/ignore/extreme/m2c/m2c/translate.py", line 2396, in global_set_with_meta
    assert key != Register("zero")
           ^^^^^^^^^^^^^^^^^^^^^^^
AssertionError
*/

void nfbSaveAreas(s64 arg1, void *arg2, s64 arg3, void *arg4) {
    nfbDoBitBltSP(arg4, arg1, arg2, arg3, 3, -1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x38, 0x3c, 0x40, 0x44], gap at: 0x20. */
void nfbRestoreAreas(s64 arg0, s64 arg1, s64 arg2, s64 arg3, void *arg4) {
    s64 temp_a3;
    u16 var_s3;
    void *temp_a6;
    void *temp_s3;

    unksp20 = arg3;
    temp_a3 = -arg2;
    unksp18 = arg1;
    unksp30 = arg0;
    unksp28 = temp_a3;
    nfbDoBitBltPS(arg4, (void *) arg0, (void *) arg1, temp_a3, -arg3, 3, -1);
    temp_a6 = arg4->unk10;
    if (temp_a6->unk74->unkDC != 0) {
        nfbDoBitBltPS(sp, NULL, NULL);
        temp_a6->unk158(sp, unksp18);
        temp_s3 = temp_a6->unk74;
        var_s3 = temp_s3->unkE2;
        if (temp_s3->unkDC == 1) {
            var_s3 = (u16) -(s32) var_s3;
        }
        temp_a6->unk178(sp, 0, var_s3);
        nfbDoBitBltPS(arg4, (void *) unksp30, sp, unksp28, -(unksp20 + var_s3), 3, -1);
        nfbDoBitBltPS(sp);
    }
}

void nfbPaintWindowBackground(void *arg0, s64 arg1, s32 arg2) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s16 sp12;
    s16 sp10;
    void *spC;
    s32 sp4;
    s32 temp_t3;
    s32 temp_t9;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a6;
    s64 var_a4;
    s64 var_ra;
    s64 var_t0;
    s8 temp_a6;
    u16 temp_a2;
    u16 temp_at;
    u32 var_a3;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a5;
    void *temp_a7;
    void *temp_s0;
    void *temp_t1;
    void *temp_t2;
    void *var_s2;
    void *var_t8;

    var_ra = saved_reg_ra;
    var_a4 = 0;
    var_s2 = arg0;
    temp_t9 = arg0->unk84;
    var_a6 = nfbWindowPrivateIndex * 4;
    temp_s0 = (dbcWindowPrivateIndex * 4) + temp_t9;
    temp_t1 = **(temp_t9 + var_a6);
    if (arg2 != 0) {
        sp40 = 0;
        sp38 = arg1;
        sp30 = (s64) temp_t1;
        ErrorF(&local_0x5f0a0000 + 0x288, NULL, var_a6);
        var_a4 = 0;
        var_ra = sp48;
        var_a6 = nfbWindowPrivateIndex * 4;
    }
    var_a3 = (u32) var_s2->unk7C >> 0x1E;
    temp_t2 = var_s2;
    if (var_a3 == 1) {
        do {
            var_s2 = var_s2->unk18;
            var_a3 = (u32) var_s2->unk7C >> 0x1E;
        } while (var_a3 == 1);
    }
    temp_a7 = *(var_s2->unk84 + var_a6);
    if (temp_s0->unk3 != -1) {
        temp_a6 = temp_s0->unk1;
        if (temp_a6 >= 0) {
            temp_s0->unk1 = -1;
            var_a4 = (s64) temp_a6;
            var_a3 = (u32) var_s2->unk7C >> 0x1E;
        }
    }
    temp_t3 = temp_a7->unk8;
    if ((var_a3 != 0) && (var_a3 != 1)) {
        if (var_a3 != 3) {
            if (var_a3 == 2) {
                temp_a3 = arg1->unk8;
                var_t0 = temp_a3 + 8;
                if (temp_a3 != NULL) {
                    if (temp_a3 != NULL) {
                        goto block_18;
                    }
                    goto block_25;
                }
                var_t0 = arg1;
                if (temp_a3 == NULL) {
block_25:
                    sp48 = var_ra;
                    sp40 = var_a4;
                    var_a1 = 1;
                } else {
block_18:
                    sp48 = var_ra;
                    sp40 = var_a4;
                    var_a1 = temp_a3->unk4;
                }
                temp_t1->unk4(var_t0, var_a1, temp_a7->unkC, 3, temp_t3, temp_t2, var_a3, temp_a7);
                var_a4 = sp40;
            }
        } else {
            temp_at = var_s2->unk6C->unkC;
            sp10 = (s16) ((s16) var_s2->unk8 % (s32) temp_at);
            temp_a2 = var_s2->unk6C->unkE;
            sp12 = (s16) ((s16) var_s2->unkA % (s32) temp_a2);
            temp_a3_2 = arg1->unk8;
            M2C_TRAP_IF(temp_at == 0);
            M2C_TRAP_IF(temp_a2 == 0);
            if (temp_a3_2 != NULL) {
                var_t8 = temp_a3_2 + 8;
                if (temp_a3_2 != NULL) {
                    goto block_22;
                }
                goto block_27;
            }
            var_t8 = (void *) arg1;
            if (temp_a3_2 == NULL) {
block_27:
                sp48 = var_ra;
                sp40 = var_a4;
                var_a1_2 = 1;
            } else {
block_22:
                sp48 = var_ra;
                sp40 = var_a4;
                var_a1_2 = temp_a3_2->unk4;
            }
            temp_a5 = var_s2->unk6C;
            spC = temp_t2;
            sp4 = temp_t3;
            temp_t1->unk1C(var_t8, var_a1_2, temp_a5->unk20, temp_a5->unk1C, temp_a5->unkC, temp_a5->unkE, &sp10, 3);
            var_a4 = sp40;
        }
    }
    if (temp_s0->unk1 == -1) {
        temp_s0->unk1 = (s8) var_a4;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x48, 0x4c, 0x50, 0x54], gap at: 0x30. */
void nfbPaintWindowBorder(void *arg0, void *arg1, s32 arg2) {
    s16 sp12;
    s16 sp10;
    s32 *temp_v0;
    s32 temp_a0;
    s32 var_a1;
    s32 var_a1_2;
    s8 temp_v0_2;
    u16 temp_at;
    u16 temp_v0_3;
    u32 temp_a1;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a5;
    void *var_a0;
    void *var_a0_2;
    void *var_a0_3;

    unksp28 = 0;
    temp_a0 = arg0->unk84;
    temp_v0 = *((nfbWindowPrivateIndex * 4) + temp_a0);
    unksp40 = (s64) temp_v0;
    unksp30 = (dbcWindowPrivateIndex * 4) + temp_a0;
    unksp38 = (s64) *temp_v0;
    if (arg2 != 1) {
        ErrorF(&local_0x5f0a0000 + 0x258, (s32 *)0x132C54);
    }
    if (nmbxCanSupportBuffers(arg0) >= 2) {
        temp_v0_2 = unksp30->unk1;
        unksp30->unk1 = -1;
        unksp28 = (s64) temp_v0_2;
    }
    temp_a1 = arg0->unk7C;
    var_a0 = arg0;
    if (((u32) (temp_a1 & 0x3FFFFFFF) >> 0x1D) != 0) {
        temp_a3 = arg1->unk8;
        var_a0_2 = arg1;
        var_a1 = 1;
        if (temp_a3 != NULL) {
            var_a0_2 = temp_a3 + 8;
            if (temp_a3 != NULL) {
                goto block_7;
            }
        } else if (temp_a3 == NULL) {

        } else {
block_7:
            var_a1 = temp_a3->unk4;
        }
        unksp38->unk4(var_a0_2, var_a1, unksp40->unk10, 3, unksp40->unk8, arg0);
    } else {
        if ((temp_a1 >> 0x1E) == 1) {
            do {
                var_a0 = var_a0->unk18;
            } while (((u32) var_a0->unk7C >> 0x1E) == 1);
        }
        temp_v0_3 = arg0->unk70->unkC;
        sp10 = (s16) ((s16) var_a0->unk8 % (s32) temp_v0_3);
        temp_at = arg0->unk70->unkE;
        sp12 = (s16) ((s16) var_a0->unkA % (s32) temp_at);
        temp_a3_2 = arg1->unk8;
        M2C_TRAP_IF(temp_v0_3 == 0);
        M2C_TRAP_IF(temp_at == 0);
        if (temp_a3_2 != NULL) {
            var_a0_3 = temp_a3_2 + 8;
            if (temp_a3_2 != NULL) {
                goto block_17;
            }
            goto block_21;
        }
        var_a0_3 = arg1;
        if (temp_a3_2 == NULL) {
block_21:
            var_a1_2 = 1;
        } else {
block_17:
            var_a1_2 = temp_a3_2->unk4;
        }
        temp_a5 = arg0->unk70;
        unksp38->unk1C(var_a0_3, var_a1_2, temp_a5->unk20, temp_a5->unk1C, temp_a5->unkC, temp_a5->unkE, &sp10, 3, unksp40->unk8, arg0);
    }
    if (unksp30->unk1 == -1) {
        unksp30->unk1 = (s8) unksp28;
    }
}

void nfbHWStoreColors(void *arg0, s32 arg1, u32 *arg2, u32 *arg5, s32 arg6, s32 arg7) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? (*temp_s2_2)(void *, s32, u32 *, void *, s32, u32 *, s32, s32);
    s32 *temp_at;
    s32 *temp_at_7;
    s32 *temp_t8_2;
    s32 *temp_t8_3;
    s32 *temp_t8_6;
    s32 *temp_v0_3;
    s32 *temp_v0_6;
    s32 *temp_v1;
    s32 *temp_v1_10;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 *temp_v1_5;
    s32 *temp_v1_6;
    s32 *temp_v1_7;
    s32 *temp_v1_8;
    s32 *temp_v1_9;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a2_2;
    s32 temp_at_2;
    s32 temp_at_5;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t1;
    s32 temp_t8;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    s64 temp_t3;
    u16 temp_a4;
    u32 *var_a0;
    u32 *var_a1;
    u32 *var_a5;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a0_4;
    u32 temp_a1;
    u32 temp_at_3;
    u32 temp_at_4;
    u32 temp_at_6;
    u32 temp_t8_4;
    u32 temp_t8_5;
    u32 temp_v0;
    u32 temp_v0_5;
    u32 temp_v0_7;
    u32 temp_v0_8;
    u32 temp_v1_4;
    u32 var_a1_2;
    u32 var_at;
    void *temp_a2;
    void *temp_ra;
    void *temp_s2;
    void *var_a3;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    var_a1 = arg2;
    var_a3 = arg0->unk0;
    temp_s2 = arg0->unkC->unk74;
    temp_a0 = arg1 >= 1;
    var_a4 = arg0->unk44;
    temp_s2_2 = (temp_s2->unk7C + ((temp_s2->unk58 + ((var_a3->unk0 - temp_s2->unk50) * 0x14))->unk4 * 0x18))->unk10;
    if (var_a4 != 0) {
        temp_ra = var_a4 + 4;
        if (var_a3->unk4 != 5) {
            var_a3 = (void *) (arg1 * 4);
            if (temp_a0 != 0) {
                var_a5 = (u32 *)1;
                var_a3 = ((var_a3 - arg1) * 4) + arg2;
                if (arg1 & 1) {
                    temp_v0 = *var_a1;
                    temp_at = ((temp_v0 >> 5) * 4) + temp_ra;
                    temp_t8 = *temp_at;
                    var_a1 += 0xC;
                    *temp_at = temp_t8 | (1 << temp_v0);
                }
                var_a4 = arg1 >> 1;
                var_a0 = var_a1;
                if (var_a4 != 0) {
                    var_a4 = 1;
                    if (var_a4 >= 2) {
                        var_a1_2 = var_a0->unk0;
                        temp_a2 = var_a3 - 0x18;
                        var_a3 = temp_ra;
                        do {
                            temp_v1 = ((var_a1_2 >> 5) * 4) + var_a3;
                            *temp_v1 |= 1 << var_a1_2;
                            temp_a1 = var_a0->unkC;
                            temp_v1_2 = ((temp_a1 >> 5) * 4) + var_a3;
                            temp_v0_2 = *temp_v1_2;
                            temp_at_2 = 1 << temp_a1;
                            var_a0 += 0x18;
                            *temp_v1_2 = temp_v0_2 | temp_at_2;
                            var_a1_2 = var_a0->unk0;
                        } while (var_a0 != temp_a2);
                        temp_v1_3 = ((var_a1_2 >> 5) * 4) + temp_ra;
                        *temp_v1_3 |= 1 << var_a1_2;
                        temp_at_3 = var_a0->unkC;
                        temp_t8_2 = ((temp_at_3 >> 5) * 4) + temp_ra;
                        *temp_t8_2 |= 1 << temp_at_3;
                    } else {
                        temp_at_4 = var_a0->unk0;
                        temp_t8_3 = ((temp_at_4 >> 5) * 4) + temp_ra;
                        *temp_t8_3 |= 1 << temp_at_4;
                        temp_v1_4 = var_a0->unkC;
                        temp_v0_3 = ((temp_v1_4 >> 5) * 4) + temp_ra;
                        *temp_v0_3 |= 1 << temp_v1_4;
                    }
                }
            }
        } else {
            temp_t0 = var_a3->unk20;
            var_a7 = var_a3->unk1C;
            temp_a2_2 = var_a3->unk18;
            temp_t1 = var_a3->unk14;
            var_a6 = var_a3->unk10;
            temp_a1_2 = var_a3->unkC;
            temp_a4 = var_a3->unk8;
            var_a3 = (void *)1;
            var_a4 = (s32) (((s32) (temp_a4 + 7) >> 3) + 3) >> 2;
            if (temp_a0 != 0) {
                var_a5 = arg2;
                temp_t3 = var_a4 * 2;
                if (arg1 >= 2) {
                    sp28 = (s64) var_a7;
                    sp20 = (s64) temp_a2_2;
                    sp18 = (s64) temp_t1;
                    sp10 = (s64) var_a6;
                    sp8 = (s64) temp_a1_2;
                    sp0 = temp_t3;
                    var_at = *var_a5;
                    var_a3 = temp_ra;
                    sp38 = (s64) var_a4;
                    sp30 = (s64) temp_t0;
                    temp_t0_2 = var_a4;
                    var_a4 = 1;
                    do {
                        temp_a0_2 = (u32) (temp_a1_2 & var_at) >> temp_a2_2;
                        temp_v1_5 = (((s32) temp_a0_2 >> 5) * 4) + var_a3;
                        *temp_v1_5 |= 1 << temp_a0_2;
                        temp_a0_3 = (u32) (*var_a5 & var_a6) >> var_a7;
                        temp_v1_6 = ((((s32) temp_a0_3 >> 5) + temp_t0_2) * 4) + var_a3;
                        *temp_v1_6 |= 1 << temp_a0_3;
                        temp_a0_4 = (u32) (*var_a5 & temp_t1) >> temp_t0;
                        temp_v1_7 = ((temp_t3 + ((s32) temp_a0_4 >> 5)) * 4) + var_a3;
                        temp_v0_4 = *temp_v1_7;
                        temp_at_5 = 1 << temp_a0_4;
                        var_a5 += 0xC;
                        *temp_v1_7 = temp_v0_4 | temp_at_5;
                        var_at = *var_a5;
                    } while (var_a5 != (((arg1 * 0xC) + arg2) - 0xC));
                    temp_v0_5 = (u32) (sp8 & var_at) >> sp20;
                    temp_v0_6 = (((s32) temp_v0_5 >> 5) * 4) + temp_ra;
                    *temp_v0_6 |= 1 << temp_v0_5;
                    temp_v0_7 = (u32) (*var_a5 & sp10) >> sp28;
                    temp_v1_8 = ((((s32) temp_v0_7 >> 5) + sp38) * 4) + temp_ra;
                    *temp_v1_8 |= 1 << temp_v0_7;
                    temp_t8_4 = (u32) (*var_a5 & sp18) >> sp30;
                    temp_v1_9 = ((sp0 + ((s32) temp_t8_4 >> 5)) * 4) + temp_ra;
                    *temp_v1_9 |= 1 << temp_t8_4;
                } else {
                    temp_t8_5 = (u32) (temp_a1_2 & *var_a5) >> temp_a2_2;
                    temp_v1_10 = (((s32) temp_t8_5 >> 5) * 4) + temp_ra;
                    *temp_v1_10 |= 1 << temp_t8_5;
                    temp_at_6 = (u32) (*var_a5 & var_a6) >> var_a7;
                    temp_t8_6 = ((((s32) temp_at_6 >> 5) + var_a4) * 4) + temp_ra;
                    *temp_t8_6 |= 1 << temp_at_6;
                    temp_v0_8 = (u32) (*var_a5 & temp_t1) >> temp_t0;
                    temp_at_7 = ((temp_t3 + ((s32) temp_v0_8 >> 5)) * 4) + temp_ra;
                    *temp_at_7 |= 1 << temp_v0_8;
                }
            }
        }
    }
    temp_s2_2(arg0, arg1, arg2, var_a3, var_a4, var_a5, var_a6, var_a7);
}

void nfbInstallHWColormap(void *arg0) {
    s64 sp68;
    s64 sp50;
    s32 sp4;
    ? (*temp_t9)(void *);
    s32 *temp_a1;
    s32 *temp_a5;
    s32 *var_a0;
    s32 *var_a0_2;
    s32 temp_a1_2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_s1;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a4;
    s32 var_s2;
    s32 var_s4;
    s64 var_ra;
    void **temp_s6;
    void *temp_a0;
    void *temp_s0;
    void *temp_s3;
    void *temp_s7;
    void *temp_v0;
    void *temp_v1;
    void *var_s6;

    var_ra = saved_reg_ra;
    temp_a1 = arg0->unk44;
    temp_a4 = *temp_a1;
    temp_s7 = arg0->unkC->unk74;
    temp_s1 = temp_s7->unk74;
    var_s6 = temp_s7->unk7C + ((temp_s7->unk58 + ((*arg0->unk0 - temp_s7->unk50) * 0x14))->unk4 * 0x18);
    temp_a6 = var_s6->unk8;
    temp_a5 = var_s6->unk4;
    if (temp_a4 >= 0) {
        temp_a1_2 = var_s6->unk0;
        if (temp_a1_2 > 0) {
            var_a0 = temp_a5;
            var_a2 = 0;
loop_3:
            var_a0 += 8;
            if (*var_a0 != temp_a4) {
                var_a2 += 1;
                if (var_a2 == temp_a1_2) {
                    var_a4 = sp0;
                } else {
                    goto loop_3;
                }
            } else {
                var_a4 = var_a2;
            }
        } else {
            var_a4 = sp0;
        }
        var_a0_2 = temp_a5;
        if (temp_a1_2 > 0) {
            var_a2_2 = 0;
loop_9:
            var_a0_2 += 8;
            if (var_a0_2->unk4 != var_a4) {
                var_a2_2 += 1;
                if (var_a2_2 == temp_a1_2) {

                } else {
                    goto loop_9;
                }
            } else {
                sp4 = var_a2_2;
            }
        }
        if (temp_a6 != var_a4) {
            temp_v0 = (var_a4 * 8) + temp_a5;
            ((sp4 * 8) + temp_a5)->unk4 = (s32) temp_v0->unk4;
            temp_v0->unk4 = (s32) ((var_s6->unk8 * 8) + temp_a5)->unk4;
            ((var_s6->unk8 * 8) + temp_a5)->unk4 = var_a4;
            var_s6->unk8 = var_a4;
        }
    } else {
        temp_v0_2 = ((temp_a6 * 8) + temp_a5)->unk4;
        var_s6->unk8 = temp_v0_2;
        temp_at = *((temp_v0_2 * 8) + temp_a5);
        *temp_a1 = temp_at;
        temp_s0 = (temp_at * 0x1C) + temp_s1;
        temp_v1 = temp_s0->unk0;
        unksp20 = (s64) temp_v1;
        if (temp_v1 != NULL) {
            WalkTree(arg0->unkC, &TellLostMap, unksp20 + 8, temp_a4, temp_a5, temp_a6);
            *unksp20->unk44 = -1;
            var_ra = sp50;
        }
        var_s4 = 0;
        if (temp_s0->unk4 > 0) {
            sp68 = (s64) var_s6;
            sp50 = var_ra;
            var_s2 = 0;
loop_24:
            temp_s6 = (*(temp_s0->unk8 + var_s2) * 0x1C) + temp_s1;
            temp_s3 = *temp_s6;
            var_s4 += 1;
            var_s2 += 4;
            if (temp_s3 != NULL) {
                WalkTree(arg0->unkC, &TellLostMap, temp_s3 + 8);
                *temp_s3->unk44 = -1;
                *temp_s6 = NULL;
                temp_t9 = (temp_s7->unk7C + ((temp_s7->unk58 + ((*temp_s3->unk0 - temp_s7->unk50) * 0x14))->unk4 * 0x18))->unk14;
                if (temp_t9 != NULL) {
                    temp_t9(temp_s3);
                }
            }
            var_ra = sp50;
            if (var_s4 < temp_s0->unk4) {
                goto loop_24;
            }
            var_s6 = (void *) sp68;
        }
        temp_a0 = arg0->unkC;
        sp50 = var_ra;
        if ((*(temp_a0->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk30 != 0) {
            sp50 = var_ra;
            if (temp_s0->unk14 == 0) {
                SetReservedID(temp_a0, temp_s0->unk10);
                temp_s0->unk14 = 1;
            }
        }
        var_s6->unkC(arg0);
        temp_s0->unk0 = arg0;
        WalkTree(arg0->unkC, &nfbTellGainedMap, arg0);
    }
}

void nfbUninstallHWColormap(void *arg0, s32 arg4) {
    s64 sp30;
    s64 sp10;
    s64 sp8;
    ? (*temp_t9)(void *);
    s32 *temp_a3;
    s32 *temp_a4;
    s32 *temp_a5_3;
    s32 *temp_a6;
    s32 *temp_t0;
    s32 *var_a0;
    s32 *var_a0_2;
    s32 *var_a4_3;
    s32 *var_v0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a3_2;
    s32 temp_a3_5;
    s32 temp_a5;
    s32 temp_a6_3;
    s32 temp_a6_5;
    s32 temp_a6_6;
    s32 var_a0_3;
    s32 var_a3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a7;
    s32 var_t0;
    s64 temp_a5_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a5_4;
    void *temp_a6_2;
    void *temp_a6_4;
    void *temp_a7;
    void *temp_v0;
    void *temp_v1;

    var_a4 = arg4;
    temp_a3 = arg0->unk44;
    temp_v0 = arg0->unkC->unk74;
    temp_a7 = temp_v0->unk7C + ((temp_v0->unk58 + ((*arg0->unk0 - temp_v0->unk50) * 0x14))->unk4 * 0x18);
    temp_a6 = temp_a7->unk4;
    if (temp_a3 != NULL) {
        temp_a5 = *temp_a3;
        if (temp_a5 >= 0) {
            temp_a3_2 = temp_a7->unk0;
            var_a0 = temp_a6;
            if (temp_a3_2 > 0) {
                var_a4 = 0;
loop_4:
                var_a0 += 8;
                if (*var_a0 != temp_a5) {
                    var_a4 += 1;
                    if (var_a4 == temp_a3_2) {
                        var_a5 = sp0;
                    } else {
                        goto loop_4;
                    }
                } else {
                    var_a5 = var_a4;
                }
            } else {
                var_a5 = sp0;
            }
            var_a0_2 = temp_a6;
            if (temp_a3_2 > 0) {
                var_a4 = 0;
loop_10:
                var_a0_2 += 8;
                if (var_a0_2->unk4 != var_a5) {
                    var_a4 += 1;
                    if (var_a4 == temp_a3_2) {
                        var_t0 = sp4;
                    } else {
                        goto loop_10;
                    }
                } else {
                    var_t0 = var_a4;
                }
            } else {
                var_t0 = sp4;
            }
            temp_a3_3 = (var_a5 * 8) + temp_a6;
            if (temp_a7->unk8 == var_a5) {
                temp_a7->unk8 = (s32) temp_a3_3->unk4;
            }
            ((var_t0 * 8) + temp_a6)->unk4 = (s32) temp_a3_3->unk4;
            temp_a2 = ((temp_a7->unk8 * 8) + temp_a6)->unk4;
            temp_a3_3->unk4 = temp_a2;
            ((temp_a7->unk8 * 8) + temp_a6)->unk4 = var_a5;
            temp_a0 = arg0->unkC->unk1C;
            sp30 = (s64) temp_v0;
            if (arg0->unk8 != temp_a0) {
                temp_a6_2 = arg0->unkC;
                temp_a3_4 = *((rrmScreenPrivateIndex * 4) + temp_a6_2->unk1B4);
                sp8 = LookupIDByType(temp_a0, 6, temp_a2, temp_a3_3, var_a4, var_a5, temp_a6, temp_a7);
                temp_a5_2 = temp_a5 * 0x1C;
                if (temp_a3_4->unk30 != 0) {
                    temp_v1 = ((temp_a6_2->unk74->unk74 + temp_a5_2)->unk10 * 0x24) + temp_a3_4;
                    temp_v1->unkA8 = (u16) (temp_v1->unkA8 & ~2);
                    (arg0->unkC->unk74->unk74 + temp_a5_2)->unk14 = 0;
                }
                temp_a6_3 = arg0->unkC->unk74->unk74;
                sp10 = temp_a5_2;
                temp_a5_3 = temp_a6_3 + temp_a5_2;
                *temp_a5_3 = 0;
                temp_a4 = arg0->unk44;
                *temp_a4 = -1;
                WalkTree(arg0->unkC, &TellLostMap, arg0 + 8, -1, temp_a4, (s32) temp_a5_3, temp_a6_3);
                var_a3 = sp30->unk50;
                var_a4_2 = sp30->unk58;
                var_a0_3 = sp30->unk7C;
                temp_t9 = (var_a0_3 + ((((*arg0->unk0 - var_a3) * 0x14) + var_a4_2)->unk4 * 0x18))->unk14;
                if (temp_t9 != NULL) {
                    temp_t9(arg0);
                    var_a3 = sp30->unk50;
                    var_a4_2 = sp30->unk58;
                    var_a0_3 = sp30->unk7C;
                }
                temp_a5_4 = sp30->unk74 + sp10;
                temp_a6_4 = var_a0_3 + ((((**sp8 - var_a3) * 0x14) + var_a4_2)->unk4 * 0x18);
                temp_t0 = temp_a6_4->unk4;
                temp_a6_5 = temp_a6_4->unk0;
                var_a7 = 0;
                var_a4_3 = temp_t0;
                if (temp_a6_5 > 0) {
loop_30:
                    temp_a0_2 = *var_a4_3;
                    var_a4_3 += 8;
                    if (temp_a5 != temp_a0_2) {
                        temp_a6_6 = temp_a5_4->unk4;
                        if (temp_a6_6 > 0) {
                            var_v0 = temp_a5_4->unk8;
                            temp_a3_5 = var_v0 + (temp_a6_6 * 4);
loop_33:
                            var_v0 += 4;
                            if (*var_v0 != temp_a0_2) {
                                if (var_v0 == temp_a3_5) {

                                } else {
                                    goto loop_33;
                                }
                            } else {
                                var_a7 = 1;
                            }
                        }
                        if (var_a7 == 0) {
                            if (((temp_a6_5 * 8) + temp_t0) != var_a4_3) {
                                goto loop_30;
                            }
                            goto block_24;
                        }
                        goto block_25;
                    }
                    var_a7 = 1;
                    goto block_24;
                }
block_24:
                if (var_a7 != 0) {
block_25:
                    arg0->unkC->unk13C(sp8);
                }
            }
        }
    }
}

s32 nfbCreateHWColormap(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a3;
    s64 var_v0;
    u16 temp_a5_2;
    u16 temp_a5_4;
    void *temp_a5;
    void *temp_a5_3;

    temp_a5 = arg0->unk0;
    temp_a5_2 = temp_a5->unk8;
    if (temp_a5->unk4 != 5) {
        var_v0 = Xalloc(((s32) (temp_a5_2 + 0x1F) >> 3) + 8, (s64) temp_a5_2);
        arg0->unk44 = (s32) var_v0;
        if (var_v0 != 0) {
            goto block_2;
        }
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return 0;
    }
    temp_a1 = (s32) (((s32) (temp_a5_2 + 7) >> 3) + 3) >> 2;
    var_v0 = Xalloc((temp_a1 * 0xC) + 8, (s64) temp_a1, (s64) temp_a5_2);
    arg0->unk44 = (s32) var_v0;
    if (var_v0 == 0) {
        return 0;
    }
block_2:
    *var_v0 = -1;
    temp_a5_3 = arg0->unk0;
    temp_a0 = arg0->unk44 + 4;
    temp_a5_4 = temp_a5_3->unk8;
    if (temp_a5_3->unk4 != 5) {
        memset(temp_a0, 0, (s32) (temp_a5_4 + 0x1F) >> 3);
    } else {
        temp_a3 = (s32) (((s32) (temp_a5_4 + 7) >> 3) + 3) >> 2;
        memset(temp_a0, 0, temp_a3 * 0xC, temp_a3);
    }
    return 1;
}

void nfbDestroyHWColormap(void *arg0) {
    Xfree((s64) arg0->unk44);
    arg0->unk44 = 0;
}

s32 nfbHWColormapScreenInit(void *arg0, s64 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_s0;

    sp8 = arg1;
    sp0 = arg2;
    temp_s0 = arg0->unk74;
    temp_v0 = Xalloc(0x188);
    temp_s0->unk74 = temp_v0;
    if (temp_v0 == 0) {
        return 0;
    }
    memmove(temp_v0, sp8, 0x188);
    temp_v0_2 = Xalloc(0x108);
    temp_s0->unk7C = temp_v0_2;
    if (temp_v0_2 == 0) {
        Xfree((s64) temp_s0->unk74);
        return 0;
    }
    memmove(temp_v0_2, sp0, 0x108);
    temp_s0->unk78 = 0xB;
    temp_s0->unk70 = 0xE;
    return 1;
}

s32 nfbGenericScreenInit(void *arg0, void *arg1, s32 arg2, s32 arg3, s64 arg4) {
    s64 sp80;
    s64 sp78;
    u64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    s16 temp_a2_5;
    s32 *temp_a3;
    s32 *temp_a4;
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 *var_a0_4;
    s32 *var_a0_6;
    s32 *var_a1;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_13;
    s32 temp_v0_14;
    s32 temp_v0_15;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s3_2;
    s32 var_s3_3;
    s32 var_s3_5;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_s4_5;
    s32 var_s5_2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s64 temp_a0;
    s64 temp_a3_7;
    s64 temp_v0_2;
    s64 temp_v0_6;
    s64 var_a0_5;
    s64 var_a1_4;
    s64 var_ra;
    s64 var_s3;
    s64 var_s3_4;
    s64 var_s4;
    s64 var_s5;
    u16 temp_a2_2;
    u16 temp_a3_2;
    u16 temp_a3_3;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 var_a1_3;
    u32 var_a3_2;
    u32 var_s3_6;
    u32 var_s4_4;
    void *temp_a2_4;

    var_s3 = saved_reg_s3;
    var_s4 = saved_reg_s4;
    var_s5 = saved_reg_s5;
    var_ra = saved_reg_ra;
    sp10 = arg4;
    sp18 = 0;
    sp20 = 0;
    sp8 = 0;
    sp28 = -1;
    if (arg3 != 0) {
        if (arg2 > 0) {
            var_s4_2 = 0;
            var_s3_2 = 0;
            do {
                temp_v0 = FakeClientID(0);
                *(arg1->unk24 + var_s4_2) = temp_v0;
                var_s4_2 += 0x24;
                temp_at = arg1->unk28 + var_s3_2;
                var_s3_2 += 4;
                *temp_at = temp_v0;
            } while (var_s4_2 != (arg2 * 0x24));
            var_v0 = arg2;
            var_ra = sp58;
            var_s4 = sp68;
            var_s3 = sp60;
            var_s5 = sp80;
        } else {
            var_v0 = 0;
        }
        sp60 = var_s3;
        sp58 = var_ra;
        sp0 = var_v0;
    }
    sp58 = var_ra;
    nfbWindowPrivateIndex = -1;
    nfbGCPrivateIndex = -1;
    sp60 = var_s3;
    temp_s3 = saved_reg_gp - 0x5AC4;
    temp_s1 = temp_s3 + 0xC;
    temp_s3_2 = temp_s3 + 8;
    if (mfbAllocatePrivates(arg0, temp_s3_2, temp_s1) != 0) {
        if (cfbAllocatePrivates(arg0, temp_s3_2, temp_s1) != 0) {
            if (cfb16AllocatePrivates(arg0, temp_s3_2, temp_s1) != 0) {
                if (cfb32AllocatePrivates(arg0, temp_s3_2, temp_s1) != 0) {
                    if ((AllocateWindowPrivate(arg0, nfbWindowPrivateIndex, 0x3C) != 0) && (AllocateGCPrivate(arg0, nfbGCPrivateIndex, 0x70) != 0)) {
                        temp_v0_2 = Xalloc(0x10C);
                        if (temp_v0_2 != 0) {
                            var_a0 = 0x80;
                            var_v0_2 = 0;
                            temp_a1 = arg0->unk84;
                            temp_a2 = arg0->unk80;
                            do {
                                temp_v1 = var_v0_2 + arg0;
                                temp_at_2 = var_v0_2 + arg1->unk1C;
                                var_v0_2 += 4;
                                var_a0 -= 1;
                                *temp_v1 = *temp_at_2;
                            } while (var_a0 > 0);
                            var_a0_2 = 0x43;
                            var_v0_3 = 0;
                            do {
                                temp_a3 = var_v0_3 + temp_v0_2;
                                temp_v1_2 = var_v0_3 + arg0->unk74;
                                var_v0_3 += 4;
                                var_a0_2 -= 1;
                                *temp_a3 = *temp_v1_2;
                            } while (var_a0_2 > 0);
                            arg0->unk1B4 = (s32) arg0->unk1B4;
                            arg0->unk94 = (s32) arg0->unk94;
                            arg0->unk90 = (s32) arg0->unk90;
                            arg0->unk8C = (s32) arg0->unk8C;
                            arg0->unk88 = (s32) arg0->unk88;
                            arg0->unk84 = temp_a1;
                            arg0->unk80 = temp_a2;
                            arg0->unk4 = (s32) arg0->unk4;
                            arg0->unk0 = (s32) arg0->unk0;
                            arg0->unk74 = (s32) temp_v0_2;
                            temp_v0_2->unk10 = arg0;
                            temp_v0_2->unkC = (u16) arg1->unk18;
                            temp_v0_3 = temp_v0_2->unkA0;
                            temp_a3_2 = arg1->unk1A;
                            temp_v0_2->unkE = temp_a3_2;
                            if (temp_v0_3 != 0) {
                                temp_v0_4 = Xalloc(temp_v0_3 * 8, (s64) temp_a1, (s64) temp_a2, (s64) temp_a3_2);
                                temp_v0_2->unkA4 = temp_v0_4;
                                memset(temp_v0_4, 0, temp_v0_2->unkA0 * 8);
                            }
                            temp_v0_2->unkDC = 0;
                            if (gammaAdjust != NULL) {
                                atof(gammaAdjust);
                                saved_reg_gp->unk-5AC4 = (f64) (second half of f64);
                                if (!((second half of f64) <= saved_reg_gp->unk-4B0C)) {
                                    if (!(saved_reg_gp->unk-4B04 <= (second half of f64))) {

                                    } else {
                                        goto block_67;
                                    }
                                } else {
block_67:
                                    ErrorF(&local_0x5f0a0000 - 0x178, gammaAdjust);
                                    saved_reg_gp->unk-5AC4 = (f64) saved_reg_gp->unk-4AFC;
                                }
                            } else {
                                saved_reg_gp->unk-5AC4 = (f64) saved_reg_gp->unk-4B1C;
                            }
                            temp_a5 = arg1->unk20;
                            arg0->unk78 = (s16) temp_a5;
                            temp_a4 = arg1->unk24;
                            arg0->unk7C = temp_a4;
                            temp_a3_3 = arg1->unk18;
                            arg0->unk8 = temp_a3_3;
                            temp_a2_2 = arg1->unk1A;
                            arg0->unkA = temp_a2_2;
                            nmbxScreenInit(arg0, sp10, temp_a2_2, temp_a3_3, temp_a4, temp_a5);
                            temp_a2_3 = arg1->unk34;
                            if (temp_a2_3 != 0) {
                                temp_v0_5 = arg1->unk20;
                                var_a0_3 = 0;
                                if (temp_v0_5 > 0) {
                                    var_a1 = arg1->unk24;
loop_28:
                                    var_s3_3 = var_a0_3;
                                    if (*var_a1 != temp_a2_3) {
                                        var_a1 += 0x24;
                                        var_a0_3 += 1;
                                        if (var_a0_3 == temp_v0_5) {
                                            goto block_30;
                                        }
                                        goto loop_28;
                                    }
                                    sp0 = var_s3_3;
                                    sp8 = 1;
                                } else {
                                    var_a0_3 = 0;
block_30:
                                    var_s3_3 = var_a0_3;
                                    sp0 = var_a0_3;
                                }
                                if (var_s3_3 >= temp_v0_5) {
                                    ErrorF(&local_0x5f0a0000 - 0x138);
                                }
                            }
                            if (sp8 != 0) {
                                goto block_34;
                            }
                            temp_v0_6 = MakeAtom(&local_0x5f0a0000 - 0xE8, 0x11, 1, sp8);
                            sp30 = temp_v0_6;
                            if ((temp_v0_6 == 0xE0000000) || (sp30 == 0)) {
                                FatalError(&local_0x5f0a0000 - 0xD0);
                            }
                            if (arg1->unk38 == 0) {
                                temp_a4_2 = arg1->unk2C;
                                if (temp_a4_2 < 0) {
                                    if (arg1->unk30 < 0) {
                                        sp0 = 0;
                                    } else {
                                        goto block_115;
                                    }
                                } else {
block_115:
                                    temp_v0_7 = arg1->unk20;
                                    var_a1_2 = 0;
                                    if (temp_v0_7 > 0) {
                                        var_a0_4 = arg1->unk24;
loop_120:
                                        var_a2 = 0;
                                        if (((var_a0_4->unk4 == temp_a4_2) | (temp_a4_2 < 0)) != 0) {
                                            temp_a5_2 = arg1->unk30;
                                            if (((var_a0_4->unkA == temp_a5_2) | (temp_a5_2 < 0)) != 0) {
                                                var_a2 = 1;
                                            }
                                        }
                                        var_a0_4 += 0x24;
                                        if (var_a2 == 0) {
                                            var_a1_2 += 1;
                                            if (var_a1_2 != temp_v0_7) {
                                                goto loop_120;
                                            }
                                            goto block_126;
                                        }
                                        sp0 = var_a1_2;
                                    } else {
                                        var_a1_2 = 0;
block_126:
                                        sp0 = var_a1_2;
                                    }
                                }
                                goto block_34;
                            }
                            sp80 = var_s5;
                            sp68 = var_s4;
                            var_s4_3 = 0;
                            var_a1_3 = temp_v0_2->unk4C;
                            if (arg1->unk20 > 0) {
                                var_s5_2 = 0;
                                var_a0_5 = 0;
loop_99:
                                if (var_a1_3 < (u32) *(temp_v0_2->unk30 + (*(temp_v0_2->unk58 + var_s5_2) * 4))) {
                                    temp_a3_4 = arg1->unk2C;
                                    temp_a2_4 = arg1->unk24 + var_a0_5;
                                    if (((temp_a2_4->unk4 == temp_a3_4) | (temp_a3_4 < 0)) != 0) {
                                        temp_a5_3 = arg1->unk30;
                                        temp_a3_5 = (temp_a2_4->unkA == temp_a5_3) | (temp_a5_3 < 0);
                                        if (temp_a3_5 != 0) {
                                            sp78 = var_a0_5;
                                            sp70 = (u64) var_a1_3;
                                            if (nmbxLookupCapability(arg0->unk0, var_s4_3, sp30, temp_a3_5) != NULL) {
                                                if (sp28 == -1) {
                                                    sp28 = (s64) var_s4_3;
                                                }
                                                goto block_98;
                                            }
                                            sp0 = var_s4_3;
                                            var_s4 = sp68;
                                            sp28 = -1;
                                            goto block_70;
                                        }
                                    }
                                }
block_98:
                                var_s5_2 += 0x14;
                                var_s4_3 += 1;
                                var_a0_5 += 0x24;
                                if (var_s4_3 < arg1->unk20) {
                                    goto loop_99;
                                }
                                goto block_105;
                            }
block_105:
                            sp0 = var_s4_3;
                            var_s4 = sp68;
block_34:
                            var_s3_4 = sp28;
                            if (sp28 == -1) {
block_70:
                                var_s3_4 = (s64) sp0;
                            }
                            if (var_s3_4 < arg1->unk20) {
                                goto block_37;
                            }
                            M2C_ERROR(/* Read from unset register $t9 */)(&local_0x5f0a0000 - 0xA0);
                            temp_v0_8 = arg1->unk20;
                            var_a1_4 = 0;
                            if (temp_v0_8 > 0) {
                                var_a0_6 = arg1->unk24;
loop_60:
                                var_a2_2 = 1;
                                var_s3_4 = var_a1_4;
                                if ((var_a0_6->unk4 == 3) && (var_a0_6->unkA == 8)) {

                                } else {
                                    var_a2_2 = 0;
                                }
                                var_a0_6 += 0x24;
                                if (var_a2_2 == 0) {
                                    var_a1_4 += 1;
                                    var_s3_4 = var_a1_4;
                                    if (var_a1_4 != temp_v0_8) {
                                        goto loop_60;
                                    }
                                }
                            } else {
                                var_s3_4 = 0;
                            }
                            var_a3 = var_s3_4 * 8;
                            if (var_s3_4 >= temp_v0_8) {
                                var_s3_4 = 0;
block_37:
                                var_a3 = var_s3_4 * 8;
                            }
                            temp_a3_6 = var_a3 + var_s3_4;
                            temp_a3_7 = temp_a3_6 * 4;
                            temp_a4_3 = *(arg1->unk24 + temp_a3_7);
                            arg0->unk18 = temp_a4_3;
                            temp_a2_5 = arg1->unk24[temp_a3_6].unkA;
                            arg0->unk12 = (s8) temp_a2_5;
                            temp_a1_2 = temp_v0_2->unk54;
                            temp_a0 = temp_a1_2 * 0xC;
                            sp38 = temp_a0;
                            temp_v0_9 = Xalloc(temp_a0, (s64) temp_a1_2, (s64) temp_a2_5, temp_a3_7, temp_a4_3);
                            temp_v0_2->unk5C = temp_v0_9;
                            if (temp_v0_9 != 0) {
                                temp_v0_10 = Xalloc(sp38);
                                temp_v0_2->unk60 = temp_v0_10;
                                if (temp_v0_10 != 0) {
                                    sp68 = var_s4;
                                    var_s4_4 = 0;
                                    if (temp_v0_2->unk54 != 0) {
                                        var_s3_5 = 0;
                                        do {
                                            arg0->unk154(temp_v0_2->unk5C + var_s3_5, 0, 0);
                                            arg0->unk154(temp_v0_2->unk60 + var_s3_5, 0, 0);
                                            var_s4_4 += 1;
                                            var_s3_5 += 0xC;
                                        } while (var_s4_4 < (u32) temp_v0_2->unk54);
                                    }
                                    temp_v0_2->unk50 = (s32) *arg1->unk24;
                                    miInitializeBackingStore(arg0, saved_reg_gp - 0x5154);
                                    temp_a1_3 = temp_v0_2->unk28;
                                    temp_v0_11 = Xalloc(temp_a1_3 * 0xC, (s64) temp_a1_3);
                                    temp_v0_2->unk2C = temp_v0_11;
                                    if (temp_v0_11 == 0) {
                                        return 0;
                                    }
                                    temp_v0_12 = Xalloc(temp_v0_2->unk28 * 4);
                                    temp_v0_2->unk3C = temp_v0_12;
                                    if (temp_v0_12 == 0) {
                                        return 0;
                                    }
                                    temp_v0_13 = Xalloc(temp_v0_2->unk28 * 4);
                                    temp_v0_2->unk40 = temp_v0_13;
                                    if (temp_v0_13 == 0) {
                                        return 0;
                                    }
                                    temp_v0_14 = Xalloc(temp_v0_2->unk28 * 4);
                                    temp_v0_2->unk44 = temp_v0_14;
                                    if (temp_v0_14 != 0) {
                                        var_a3_2 = temp_v0_2->unk28;
                                        var_s3_6 = 0;
                                        if (var_a3_2 != 0) {
                                            var_s0 = 0;
                                            var_s4_5 = 0;
                                            do {
                                                arg0->unk154(temp_v0_2->unk2C + var_s0, 0, 0, var_a3_2);
                                                var_s3_6 += 1;
                                                *(temp_v0_2->unk3C + var_s4_5) = 0;
                                                *(temp_v0_2->unk40 + var_s4_5) = 0;
                                                *(temp_v0_2->unk44 + var_s4_5) = 0;
                                                var_s0 += 0xC;
                                                var_a3_2 = var_s3_6 < (u32) temp_v0_2->unk28;
                                                var_s4_5 += 4;
                                            } while (var_a3_2 != 0);
                                        }
                                        if (serverGeneration == copyPlaneGeneration__NOC) {

                                        } else {
                                            temp_v0_15 = AllocateScreenPrivateIndex();
                                            copyPlaneScreenIndex__OOC = temp_v0_15;
                                            if (temp_v0_15 >= 0) {
                                                copyPlaneGeneration__NOC = serverGeneration;
                                            } else {
                                                sp20 = 1;
                                            }
                                            sp18 = sp20;
                                        }
                                        if (sp18 == 0) {
                                            *(arg0->unk1B4 + (copyPlaneScreenIndex__OOC * 4)) = nfbCopyPlane;
                                        }
                                        ShmRegisterFuncs(arg0, saved_reg_gp - 0x5134);
                                        if (serverGeneration == miZeroLineGeneration) {
                                            var_v0_4 = miZeroLineScreenIndex;
                                        } else {
                                            var_v0_4 = AllocateScreenPrivateIndex();
                                            miZeroLineScreenIndex = var_v0_4;
                                            miZeroLineGeneration = serverGeneration;
                                        }
                                        if (var_v0_4 >= 0) {
                                            *(arg0->unk1B4 + (var_v0_4 * 4)) = 0xD8;
                                        }
                                        return 1;
                                    }
                                    return 0;
                                }
                                Xfree((s64) temp_v0_2->unk5C);
                                Xfree(temp_v0_2);
                                return 0;
                            }
                            Xfree(temp_v0_2);
                            return 0;
                        }
                        return 0;
                    }
                    return 0;
                }
                return 0;
            }
            return 0;
        }
        return 0;
    }
    return 0;
}

s32 nfbCloseScreen(void *arg1) {
    s32 temp_a0;
    s32 var_s5;
    u32 var_s2;
    void *temp_s0;

    temp_s0 = arg1->unk74;
    var_s2 = 0;
    if (temp_s0->unk28 != 0) {
        var_s5 = 0;
        do {
            var_s2 += 1;
            arg1->unk160(temp_s0->unk2C + var_s5);
            var_s5 += 0xC;
        } while (var_s2 < (u32) temp_s0->unk28);
    }
    Xfree((s64) temp_s0->unk2C);
    Xfree((s64) temp_s0->unk3C);
    Xfree((s64) temp_s0->unk40);
    Xfree((s64) temp_s0->unk44);
    temp_a0 = temp_s0->unkA4;
    if (temp_a0 != 0) {
        Xfree((s64) temp_a0);
    }
    Xfree((s64) temp_s0->unk5C);
    Xfree((s64) temp_s0->unk60);
    Xfree((s64) arg1->unk74);
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x78, 0x7c, 0xa0, 0xa4], gap at: 0x88. */
void nfbInitRootWindow(void *arg0, s32 arg3, s32 arg4, s32 arg5) {
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    ? sp20;
    u16 sp1E;
    u16 sp1C;
    s16 sp1A;
    s16 sp18;
    s32 sp10;
    s32 sp8;
    ? sp4;
    ? sp2;
    s16 temp_a4;
    s16 temp_at;
    s32 *temp_s0;
    s32 *temp_s3;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_ra;
    s32 temp_s3_2;
    s32 temp_t1;
    s32 var_a0;
    s32 var_a1;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_s2;
    s32 var_s6;
    s32 var_s8;
    s64 temp_t3;
    s64 temp_v0_4;
    s64 temp_v0_5;
    s64 temp_v0_7;
    u8 *temp_v0;
    u8 *var_s5;
    u8 *var_v0;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_a2_2;
    void *temp_s2;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_6;
    void *var_s0;

    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    temp_at = arg0->unk10;
    var_s5 = arg0->unk14;
    if (temp_at > 0) {
        var_v0 = var_s5;
        var_a5 = temp_at - 1 + 1;
        temp_a0 = (var_a5 * 8) + var_s5;
        if (var_a5 & 1) {
            var_a4 = (s32) var_s5->unk0 < (s32) var_v0->unk0;
            if ((var_a4 != 0) && (var_v0->unk2 > 0)) {
                var_s5 = var_v0;
            }
            var_v0 += 8;
        }
        var_a3 = var_a5 >> 1;
        if (var_a3 != 0) {
loop_40:
            if ((s32) *var_s5 < (s32) var_v0->unk0) {
                var_a3 = (s32) var_v0->unk2;
                if (var_a3 > 0) {
                    var_s5 = var_v0;
                }
            }
            var_a4 = (s32) *var_s5 < (s32) var_v0->unk8;
            temp_v0 = var_v0 + 8;
            if ((var_a4 != 0) && (temp_v0->unk2 > 0)) {
                var_s5 = temp_v0;
            }
            var_v0 = temp_v0 + 8;
            if (var_v0 != temp_a0) {
                goto loop_40;
            }
        }
    }
    temp_s0 = *(WindowTable + (arg0->unk0 * 4));
    temp_a2 = nfbWindowPrivateIndex * 4;
    nfbValidateWindowVisual(temp_s0, (*(temp_s0->unk84 + temp_a2))->unk4, temp_a2, (s16) var_a3, var_a4, var_a5);
    if (solidRootOverrideColorName != NULL) {
        if (OsLookupColor(arg0->unk0, solidRootOverrideColorName, strlen(solidRootOverrideColorName), sp, &sp2, &sp4) == 0) {
            FatalError(&local_0x5f0a0000 + 0x80, (u64) solidRootOverrideColorName);
        }
        if (temp_s0->unk1 != 2) {
            temp_v0_2 = temp_s0->unk78;
            if (temp_v0_2 != NULL) {
                var_a1 = temp_v0_2->unk8;
            } else {
                var_a1 = strlen(temp_s0)->unk78->unk8;
            }
            var_a0 = var_a1;
        } else {
            var_a0 = 0;
        }
        if (AllocColor(LookupIDByType(var_a0, 6), sp, &sp2, &sp4, &sp8, *serverClient) != 0) {
            FatalError(&local_0x5f0a0000 + 0xB0, (u64) solidRootOverrideColorName);
        }
        temp_v0_3 = GetScratchGC(arg0->unk12, arg0);
        temp_s2 = temp_v0_3;
        temp_a0_2 = temp_v0_3;
        sp10 = sp8;
        ChangeGC(temp_a0_2, 4, &sp10, sp8);
        ValidateGC(temp_s0->unk6C, temp_s2);
        sp1A = 0;
        sp18 = 0;
        sp1C = temp_s0->unkC;
        sp1E = temp_s0->unkE;
        temp_s2->unk48->unk2C(temp_s0->unk6C, temp_s2, 1, &sp18);
        FreeScratchGC(temp_s2);
    }
    if (gammaAdjust == NULL) {

    } else {
        temp_v0_4 = MakeAtom(&local_0x5f0a0000 + 0xE8, 0xF, 1);
        sp70 = temp_v0_4;
        if ((temp_v0_4 != 0xE0000000) && (sp70 != 0)) {

        } else {
            ErrorF(&local_0x5f0a0000 + 0xF8);
            exit(1);
        }
        ChangeWindowProperty((s64) temp_s0, sp70, 0x1F, 8, 0, strlen(gammaAdjust), gammaAdjust, 0);
    }
    GetBestVisualForPEX = &nfbGetBestVisualForPEX;
    temp_v0_5 = MakeAtom(&local_0x5f0a0000 + 0x120, 0xC, 1, (s64) &nfbGetBestVisualForPEX, &GetBestVisualForPEX);
    if ((temp_v0_5 == 0xE0000000) || (temp_v0_5 == 0)) {
        FatalError(&local_0x5f0a0000 + 0x130);
    }
    var_s8 = 0;
    if (var_s5->unk2 > 0) {
        var_s6 = 0;
        sp50 = (s64) temp_s0;
loop_26:
        var_s2 = 0;
        temp_s3 = var_s5->unk4 + var_s6;
        var_s6 += 4;
        temp_s3_2 = *temp_s3;
        if (arg0->unk78 > 0) {
            var_s0 = arg0->unk7C;
loop_33:
            temp_a3 = var_s0->unk0;
            if ((temp_a3 == temp_s3_2) && (temp_a4 = var_s0->unk4, (temp_a4 == 4))) {
                temp_v0_6 = nmbxLookupCapability(arg0->unk0, var_s2, temp_v0_5, temp_a3, temp_a4);
                if (temp_v0_6 != NULL) {
                    if ((u32) temp_v0_6->unk8 >= 0x15U) {
                        temp_a2_2 = arg0->unk74;
                        temp_a2_2->unkCC = temp_s3_2;
                        temp_a1 = arg0->unk74;
                        temp_a1->unkD0 = (s32) var_s5->unk0;
                        unksp98 = Ones(var_s0->unkC, temp_a1, temp_a2_2);
                        unksp80 = Ones(var_s0->unk10);
                        unksp88 = Ones(var_s0->unk14);
                        temp_v0_7 = FakeClientID(0);
                        unksp90 = temp_v0_7;
                        if (CreateColormap(temp_v0_7, arg0, var_s0, &sp20, 0, 0) != 0) {
                            ErrorF(&local_0x5f0a0000 + 0x158);
                            exit(1);
                        }
                        if (sp50->unk78 == 0) {
                            if (MakeWindowOptional(sp50) == 0) {
                                ErrorF(&local_0x5f0a0000 + 0x180);
                                exit(1);
                            }
                        }
                        temp_t3 = (1 << unksp80) - 1;
                        sp28 = (s32) unksp90;
                        temp_ra = (1 << unksp98) - 1;
                        sp2C = temp_ra;
                        sp4C = 0;
                        sp48 = var_s0->unk0;
                        sp68 = temp_t3;
                        sp34 = (s32) temp_t3;
                        sp30 = 1 << var_s0->unk18;
                        temp_t1 = (1 << unksp88) - 1;
                        sp3C = temp_t1;
                        sp38 = 1 << var_s0->unk1C;
                        sp60 = (s64) temp_t1;
                        sp58 = (s64) temp_ra;
                        sp44 = 0;
                        sp40 = 1 << var_s0->unk20;
                        if (ChangeWindowProperty(sp50, 0x19, 0x18, 0x20, 0, (void *)0xA, &sp28, 0) != 0) {
                            ErrorF(&local_0x5f0a0000 + 0x1A8);
                            exit(1);
                        }
                        sp2C = (s32) sp58;
                        sp40 = 0;
                        sp3C = 0;
                        sp38 = 0;
                        sp34 = 0;
                        sp30 = 1 << var_s0->unk18;
                        sp44 = (1 << var_s0->unk18) - 1;
                        if (ChangeWindowProperty(sp50, 0x1E, 0x18, 0x20, 0, (void *)0xA, &sp28, 0) != 0) {
                            ErrorF(&local_0x5f0a0000 + 0x1A8);
                            exit(1);
                        }
                        sp30 = 0;
                        sp2C = 0;
                        sp34 = (s32) sp68;
                        sp40 = 0;
                        sp3C = 0;
                        sp38 = 1 << var_s0->unk1C;
                        sp44 = (1 << var_s0->unk1C) - 1;
                        if (ChangeWindowProperty(sp50, 0x1D, 0x18, 0x20, 0, (void *)0xA, &sp28, 0) != 0) {
                            ErrorF(&local_0x5f0a0000 + 0x1A8);
                            exit(1);
                        }
                        sp38 = 0;
                        sp34 = 0;
                        sp30 = 0;
                        sp2C = 0;
                        sp3C = (s32) sp60;
                        sp40 = 1 << var_s0->unk20;
                        sp44 = (1 << var_s0->unk20) - 1;
                        if (ChangeWindowProperty(sp50, 0x1A, 0x18, 0x20, 0, (void *)0xA, &sp28, 0) != 0) {
                            ErrorF(&local_0x5f0a0000 + 0x1A8);
                            exit(1);
                        }
                    } else {
                        goto block_31;
                    }
                } else {
block_31:
                    goto block_32;
                }
            } else {
block_32:
                var_s2 += 1;
                var_s0 += 0x24;
                if (var_s2 < arg0->unk78) {
                    goto loop_33;
                }
                goto block_25;
            }
        } else {
block_25:
            var_s8 += 1;
            if (var_s8 < var_s5->unk2) {
                goto loop_26;
            }
            goto block_60;
        }
    } else {
block_60:
        arg0->unk74->unkCC = 0;
        arg0->unk74->unkD0 = 0;
    }
    nfbGenericScreenInit(arg0);
    if (arg0->unk74->unkBC != 0) {
        local_0x5ef80000(arg0);
    }
}
