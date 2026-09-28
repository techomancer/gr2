? ALcloseport(s32);                                 /* extern */
s32 ALgetfilled(s32);                               /* extern */
s32 ALnewconfig();                                  /* extern */
s32 ALopenport(s32, s32, s32);                      /* extern */
? ALsetchannels(s32, ?);                            /* extern */
? ALsetwidth(s32, ?);                               /* extern */
? ALwritesamps(s32, void *, s32);                   /* extern */
s32 AddResource(s32, ?, void *);                    /* extern */
s32 AllocateGCPrivate(void *, s32, ?);              /* extern */
s32 AllocateGCPrivateIndex();                       /* extern */
s32 AllocateScreenPrivateIndex(s64);                /* extern */
s32 ChangeWindowProperty(s64, s64, ?, ?, ?, ?, void *, ?); /* extern */
? ErrorF(void *, ?, s32);                           /* extern */
s32 FakeClientID(?);                                /* extern */
void *GetTimeInMillis();                            /* extern */
s64 MakeAtom(void *, ?, ?, ? *, void *);            /* extern */
? ReadDisplayRegisterInfo(void *, ? *);             /* extern */
? XSGIvcScreenInit(void *, void *, u8, void *, s32, s32); /* extern */
void *Xalloc(s32);                                  /* extern */
? Xfree(s64, ? *, s32, s32 *);                      /* extern */
s8 ddxFindFirstTypedBoard(s32);                     /* extern */
void *ddxGetBoardInfo(u8);                          /* extern */
s32 ddxGetBoardName(u8, void *);                    /* extern */
? exit(?);                                          /* extern */
s32 expCheckTimingTable(void *, ?, void *, void *, s32, s32, s32); /* extern */
? expCursorInit(void *);                            /* extern */
? expLoadTimingTable(void *, ?);                    /* extern */
? expvc1ComputeDIDTable(void *, s64);               /* extern */
? expvc1Init(s16, s16, ?, ?, ?, s16, ?);            /* extern */
? glxScreenInit(void *, s32);                       /* extern */
s32 ioctl(s32, ?, s32);                             /* extern */
s32 irixKernInit(s32, s64, ?, void *, s64, s64, s32 *, s32); /* extern */
? memmove(void *, s32, s32);                        /* extern */
? memset(void *, ?, ?);                             /* extern */
? nfbCloseScreen(s32, void *);                      /* extern */
s32 nfbGenericScreenInit(void *, void *, s32, s32, s32); /* extern */
s32 nfbHWColormapScreenInit(void *, s32, s32);      /* extern */
f64 pow(f64, f64);                                  /* extern */
? rrmCloseScreen(void *);                           /* extern */
s32 rrmCreateDefColormap(void *, u8, u8, s32, s32 *, s32, void *); /* extern */
s32 rrmInit(s64, void *, s32);                      /* extern */
s32 scaninvent(void *, s32, ?);                     /* extern */
? sginap(?);                                        /* extern */
s32 strcmp(void *, s32);                            /* extern */
? strcpy(void *, u8 *, u8, s16, s32, s32);          /* extern */
s32 expAttachXvc(void *arg0);                       /* static */
void expBell(s32 arg0, s32 arg1, s32 arg2);         /* static */
s32 expKernInit(void *arg0, u8 arg1, s32 *arg2, s32 *arg3); /* static */
void expKeyClick(s32 arg0);                         /* static */
extern s32 ScreenSaverInterval;
extern s32 WindowTable;
extern ? XSGIvcScreens;
extern ? ddxActiveScreens;
extern s32 ddxDfltClass;
extern s32 ddxDfltDepth;
extern s32 ddxDfltVisualID;
extern s32 ddxOverlayFlag;
extern s32 defaultScreenSaverInterval;
extern s32 expGCOpsCache__EMC;
extern s32 expGCPrivateIndex;
extern ? expLoadAndFree;
extern ? expLstVideoFmt;
extern s32 expScreenPrivateIndex;
extern ? expSetBacklight__EHB;
extern ? local_0x5ef50000;
extern ? local_0x5ef60000;
extern ? local_0x5f0a0000;
extern ? local_0x5f0c0000;
extern s32 miZeroLineGeneration;
extern s32 miZeroLineScreenIndex;
extern s32 nfbRDGeneration__FPC;
extern s32 nfbRDScreenPrivateIndex__GPC;
extern ? nfbRDinfo__EPC;
extern ? savedScreenInfo;
extern s32 serverGeneration;
extern s32 var_5f0b8aa0;
extern s32 var_5f0b8aa4;
extern s32 var_5f0b8aa8;
extern s32 var_5f0b8aac;
extern s32 var_5f0b8ab0;
extern s32 var_5f0b8ab4;
extern s32 var_5f0b8ab8;
extern s32 var_5f0b8abc;
extern s32 var_5f0b8ac0;
extern s32 var_5f0b8ac4;
extern void *var_5f0b8ac8;
extern s32 var_5f0b8acc;
extern s32 var_5f0b8ad0;
extern void *var_5f0b8ad4;
extern s32 var_5f0b8ad8;
extern s32 var_5f0b9228;
extern s32 var_5f0b922c;
extern s32 var_5f0b9230;
extern s32 var_5f0b93c8;
extern s32 var_5f0b93e0;
extern s32 vcScreenPrivateIndex;

void expInitHW(void *arg0) {
    s64 sp10;
    s16 temp_a1;
    s16 temp_a2;
    s16 temp_a6;
    void *temp_s3;

    temp_s3 = **(arg0->unk1B4 + (expScreenPrivateIndex * 4));
    temp_s3->unk404B0 = 0;
    temp_s3->unk4052C = 8;
    temp_s3->unk404D4 = 0xF;
    temp_s3->unk40530 = 0;
    temp_s3->unk4077C = 0;
    temp_s3->unk4077C = 3;
    temp_s3->unk4077C = 1;
    temp_s3->unk404C0 = 0;
    temp_s3->unk4077C = 0;
    temp_s3->unk4077C = 0;
    temp_s3->unk4077C = (s32) arg0->unk8;
    temp_a6 = arg0->unkA;
    temp_s3->unk4077C = (s32) temp_a6;
    temp_s3->unk407A8 = 0;
    temp_s3->unk4052C = 4;
    temp_s3->unk404D4 = 0;
    temp_s3->unk40530 = 0;
    temp_s3->unk4077C = 0xFFFFFF;
    temp_s3->unk4077C = 3;
    temp_s3->unk4077C = 0;
    temp_s3->unk404C0 = 0;
    temp_s3->unk4077C = 0;
    temp_s3->unk4077C = 0;
    temp_a2 = arg0->unk8;
    temp_s3->unk4077C = (s32) temp_a2;
    temp_a1 = arg0->unkA;
    temp_s3->unk4077C = (s32) temp_a1;
    temp_s3->unk407A8 = 0;
    temp_s3->unk40540 = 0xF000;
    temp_s3->unk404C0 = 0;
    temp_s3->unk4077C = 0;
    temp_s3->unk4077C = 0;
    temp_s3->unk4077C = (s32) arg0->unk8;
    sp10 = (s64) arg0;
    temp_s3->unk4077C = (s32) arg0->unkA;
    temp_s3->unk407A8 = 0;
    temp_s3->unk40540 = 0;
    expvc1Init(temp_a1, temp_a2, 3, 0xFFFFFF, 4, temp_a6, 0xF);
    expCursorInit(arg0);
    temp_s3->unk4052C = 0x1004;
    temp_s3->unk404D4 = 0;
    temp_s3->unk40530 = 0;
    temp_s3->unk4077C = 0xFFFFFF;
    temp_s3->unk4077C = 3;
    temp_s3->unk4077C = 0;
    temp_s3->unk40588 = 0;
    temp_s3->unk4077C = 0xFFFF;
    temp_s3->unk4077C = 0;
    temp_s3->unk4077C = 0;
    temp_s3->unk4077C = 0;
    temp_s3->unk4077C = 0;
    temp_s3->unk407A8 = 0;
}

s32 expInit(s64 arg0, void *arg1) {
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s16 sp126;
    s16 sp124;
    s16 sp122;
    s16 sp120;
    s32 sp118;
    s32 sp114;
    s32 sp110;
    s16 temp_a1;
    s16 var_a5_2;
    s32 *temp_a4;
    s32 *var_at;
    s32 temp_a5_3;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_gp;
    s32 temp_s1;
    s32 temp_s2_2;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_8;
    s32 var_a2;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_v0;
    s64 var_a1;
    s64 var_a2_2;
    u8 temp_at;
    u8 temp_v0_2;
    u8 temp_v0_3;
    u8 temp_v0_6;
    u8 var_a4;
    u8 var_a5;
    void *temp_a1_2;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_s0;
    void *temp_s2;
    void *temp_s5;
    void *temp_v0;
    void *temp_v0_7;
    void *var_s4;

    sp130 = 0;
    sp138 = 0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x167CBC;
    temp_s2 = *((arg0 * 4) + &ddxActiveScreens);
    sp140 = arg0;
    temp_s0 = temp_s2->unk1C;
    temp_s5 = ddxGetBoardInfo(temp_s2->unk44->unkC);
    temp_v0 = Xalloc(temp_s0->unk10 * 8);
    var_s4 = temp_v0;
    if (temp_v0 != NULL) {
        temp_s0->unk14 = temp_v0;
        memmove(temp_v0, temp_gp - 0x5684, temp_s0->unk10 * 8);
    } else {
        var_s4 = temp_s0->unk14;
        ErrorF(&local_0x5f0a0000 - 0xB48);
        ErrorF(&local_0x5f0a0000 - 0xB18);
    }
    temp_v0_2 = temp_s5->unk29;
    var_a4 = 0x18;
    temp_s1 = temp_s2->unk20;
    switch (temp_v0_2) {                            /* irregular */
    case 24:
        var_a4 = temp_s5->unk2C;
        if (var_a4 != 0) {

        } else {
            var_s4->unk2A = (s16) (var_s4->unk2A - 1);
            if (var_5f0b8aa0 == 0) {
                var_5f0b8aa0 = 1;
                var_a4 = temp_s1 - 1;
                temp_s2->unk20 = (s32) var_a4;
            }
        }
        break;
    case 8:
        var_s4->unk22 = 0;
        var_s4->unk2A = 0;
        temp_s2->unk20 = 8;
        break;
    }
    temp_a5 = temp_s2->unk44;
    temp_at = temp_a5->unkE;
    temp_s2->unk2C = (s32) temp_at;
    temp_v0_3 = temp_a5->unkF;
    temp_s2->unk30 = (s32) temp_v0_3;
    temp_a1 = temp_a5->unk8;
    temp_s2->unk34 = (s32) temp_a1;
    var_a5 = temp_a5->unkA;
    temp_s2->unk38 = (s32) var_a5;
    if (temp_at != 0xFF) {
        if (temp_v0_3 != 0) {
            goto block_8;
        }
        goto block_53;
    }
    var_a5 = (u8) ddxDfltClass;
    temp_s2->unk2C = (s32) var_a5;
    if (temp_v0_3 == 0) {
block_53:
        temp_s2->unk30 = (s32) ddxDfltDepth;
        if (temp_a1 == 0) {
            goto block_54;
        }
    } else {
block_8:
        if (temp_a1 == 0) {
block_54:
            temp_s2->unk34 = (s32) ddxDfltVisualID;
        }
    }
    if (ddxOverlayFlag != 0) {
        temp_s2->unk38 = 1;
    }
    temp_s2->unk18 = (u16) temp_s5->unk20;
    temp_s2->unk1A = (u16) temp_s5->unk22;
    temp_v0_4 = expCheckTimingTable(arg1, 0, temp_s5, sp, (s32) var_a4, (s32) var_a5, 1);
    if (temp_v0_4 != 0) {
        temp_s5->unk20 = (u16) sp100;
        temp_s2->unk18 = (u16) sp100;
        temp_s5->unk22 = (u16) sp104;
        temp_s2->unk1A = (u16) sp104;
    }
    var_a3 = var_5f0b9230;
    if (var_5f0b922c != serverGeneration) {
        var_5f0b922c = serverGeneration;
        var_a3 = 1;
        var_5f0b9230 = 1;
    }
    if (nfbGenericScreenInit(arg1, temp_s2, temp_s1, var_a3, temp_gp - 0x53CC) != 1) {
        return 0;
    }
    var_v0 = miZeroLineScreenIndex;
    if (serverGeneration != miZeroLineGeneration) {
        var_v0 = AllocateScreenPrivateIndex();
        miZeroLineScreenIndex = var_v0;
        miZeroLineGeneration = serverGeneration;
    }
    var_a2 = temp_gp - 0x592C;
    if (var_v0 >= 0) {
        *(arg1->unk1B4 + (var_v0 * 4)) = 0;
        var_a2 = temp_gp - 0x592C;
    }
    var_5f0b9230 = 0;
    sp148 = (s64) arg1->unk74;
    if (nfbHWColormapScreenInit(arg1, temp_gp - 0x580C, var_a2) != 0) {
        temp_v0_5 = expKernInit(arg1, temp_s2->unk44->unkC, &sp110, &sp114);
        if (temp_v0_5 > 0) {
            sp148->unk64 = temp_v0_5;
            if (temp_v0_4 != 0) {
                expLoadTimingTable(arg1, 0);
            }
            sp148->unk68 = sp110;
            temp_s2->unk48 = sp114;
            var_at = &expGCOpsCache__EMC;
            temp_a6 = *(arg1->unk1B4 + (expScreenPrivateIndex * 4));
            sp128 = (s64) temp_a6;
            temp_a6->unk8 = temp_s5;
            do {
                var_at->unkC = 0;
                var_at->unk8 = 0;
                var_at->unk4 = 0;
                var_at->unk0 = 0;
                var_at->unk1C = 0;
                var_at->unk18 = 0;
                var_at->unk14 = 0;
                var_at->unk10 = 0;
                var_at->unk2C = 0;
                var_at->unk28 = 0;
                var_at->unk24 = 0;
                var_at->unk20 = 0;
                var_at->unk3C = 0;
                var_at->unk38 = 0;
                var_at->unk34 = 0;
                var_at += 0x40;
                var_at->unk-10 = 0;
            } while (var_at != (&expGCOpsCache__EMC + 0x800));
            temp_v0_6 = temp_s5->unk2D;
            if (temp_v0_6 & 0x80) {
                *((arg1->unk0 * 4) + (temp_gp - 0x5C24)) = 1;
                temp_at_2 = temp_gp - 0x71A4;
                arg1->unkC = (s16) *(((temp_v0_6 & 3) * 4) + temp_at_2);
                var_a5_2 = (((temp_s5->unk2D & 3) * 4) + temp_at_2)->unk2;
                defaultScreenSaverInterval = 0;
                ScreenSaverInterval = 0;
            } else {
                temp_at_3 = temp_gp - 0x71C4;
                arg1->unkC = (s16) *(((temp_v0_6 & 7) * 4) + temp_at_3);
                var_a5_2 = (((temp_s5->unk2D & 7) * 4) + temp_at_3)->unk2;
            }
            arg1->unkE = var_a5_2;
            if (rrmInit(sp140, arg1, temp_gp - 0x548C) != 0) {
                if (var_5f0b9228 != -1) {
                    goto block_30;
                }
                var_5f0b9228 = 1;
                if (scaninvent(&local_0x5ef50000 + 0x674C, temp_gp - 0x539C, 1) >= 0) {
                    if (var_5f0b9228 != 0) {
                        temp_s2->unk10 = expKeyClick;
                        temp_s2->unkC = expBell;
                    }
block_30:
                    expInitHW(arg1);
                    arg1->unk1C = FakeClientID(0);
                    temp_v0_7 = Xalloc(0x8400);
                    sp128->unk358 = temp_v0_7;
                    if (temp_v0_7 != NULL) {
                        nfbRDinfo__EPC.unk8 = (s32) (var_5f0b93e0 | 4);
                        ReadDisplayRegisterInfo(arg1, &nfbRDinfo__EPC);
                        var_a1 = sp138;
                        if (nfbRDGeneration__FPC == serverGeneration) {

                        } else {
                            nfbRDGeneration__FPC = serverGeneration;
                            temp_v0_8 = AllocateScreenPrivateIndex();
                            var_a2_2 = sp130;
                            nfbRDScreenPrivateIndex__GPC = temp_v0_8;
                            if (temp_v0_8 < 0) {
                                var_a2_2 = 1;
                            }
                            var_a1 = var_a2_2;
                        }
                        if (var_a1 == 0) {
                            *(arg1->unk1B4 + (nfbRDScreenPrivateIndex__GPC * 4)) = temp_gp - 0x51EC;
                        }
                        temp_a6_2 = *(arg1->unk1B4 + (expScreenPrivateIndex * 4));
                        temp_a5_2 = temp_a6_2->unk0;
                        temp_a5_2->unk40554 = 0;
                        if (!(temp_a5_2->unk6A040 & 1)) {
                            do {
                                sp118 = 0;
                                sp118 = 1;
                                sp118 = 2;
                                sp118 = 3;
                                sp118 = 4;
                                sp118 = 5;
                                sp118 = 6;
                                sp118 = 7;
                                sp118 = 8;
                                sp118 = 9;
                            } while (!(temp_a5_2->unk6A040 & 1));
                        }
                        var_a2_3 = 0;
                        temp_a5_2->unk6B000 = 0;
                        temp_a5_2->unk6C1B0 = 0;
                        temp_a5_2->unk6C1B4 = 0;
loop_40:
                        temp_a5_3 = temp_a5_2->unk6C11C & 2;
                        if (temp_a5_3 == 0) {
                            do {

                            } while (!(temp_a5_2->unk6C11C & 2));
                        }
                        temp_a5_2->unk6C1A8 = 0;
                        temp_a5_2->unk6C1A8 = 0;
                        temp_a5_2->unk6C1A8 = 0;
                        temp_a4 = temp_a6_2->unk358 + var_a2_3;
                        var_a2_3 += 4;
                        *temp_a4 = 0;
                        if (var_a2_3 != 0x8000) {
                            goto loop_40;
                        }
                        temp_a6_2->unk4C = 0;
                        temp_a6_2->unk48 = 0;
                        temp_a6_2->unk44 = 0;
                        temp_a6_2->unk40 = 0;
                        temp_a6_2->unk3C = 0;
                        temp_a6_2->unk38 = 0;
                        temp_a6_2->unk34 = 0;
                        temp_a6_2->unk30 = 0;
                        temp_a6_2->unk2C = 0;
                        temp_a6_2->unk28 = 0;
                        temp_a6_2->unk24 = 0;
                        temp_a6_2->unk20 = 0;
                        temp_a6_2->unk1C = 0;
                        temp_a6_2->unk18 = 0;
                        temp_a6_2->unk14 = 0;
                        temp_a6_2->unk10 = 0;
                        temp_a1_2 = temp_s2->unk44;
                        if (rrmCreateDefColormap(arg1, temp_a1_2->unk10, temp_a1_2->unk11, 0x8000, temp_a4, temp_a5_3, temp_a6_2) == 0) {
                            Xfree(sp128);
                            Xfree(sp148);
                            return 0;
                        }
                        sp122 = 0;
                        sp120 = 0;
                        sp124 = arg1->unk8;
                        sp126 = arg1->unkA;
                        temp_s2_2 = *(sp148->unk58 + ((arg1->unk18 - sp148->unk50) * 0x14)) * 0xC;
                        arg1->unk174(sp148->unk5C + temp_s2_2, &sp120);
                        sp126 = 0;
                        sp124 = 0;
                        sp122 = 0;
                        sp120 = 0;
                        arg1->unk174(sp148->unk60 + temp_s2_2, &sp120);
                        sp148->unk6C(arg1);
                        if (expAttachXvc(arg1) != 0) {
                            glxScreenInit(arg1, temp_gp - 0x55C4);
                            return 1;
                        }
                        Xfree(sp128);
                        Xfree(sp148);
                        return 0;
                    }
                    Xfree(sp128);
                    Xfree(sp148);
                    return 0;
                }
                ErrorF(&local_0x5f0a0000 - 0xAE8);
                return 0;
            }
            Xfree(sp128);
            Xfree(sp148);
            return 0;
        }
        Xfree(sp148);
        return 0;
    }
    Xfree(sp148);
    return 0;
}

s32 expKernInit(void *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp4;
    s32 temp_a7;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a1;
    s64 temp_v0_3;

    if (var_5f0b93c8 == serverGeneration) {
        var_a1 = expGCPrivateIndex;
        sp10 = arg2;
        sp18 = arg1;
        sp20 = arg3;
        goto block_2;
    }
    sp10 = arg2;
    sp18 = arg1;
    sp20 = arg3;
    var_5f0b93c8 = serverGeneration;
    temp_v0 = AllocateScreenPrivateIndex(arg1);
    expScreenPrivateIndex = temp_v0;
    if (temp_v0 >= 0) {
        temp_v0_2 = AllocateGCPrivateIndex();
        var_a1 = temp_v0_2;
        expGCPrivateIndex = temp_v0_2;
block_2:
        if (AllocateGCPrivate(arg0, var_a1, 4) != 0) {
            temp_v0_3 = Xalloc(0x35C);
            sp8 = temp_v0_3;
            if (temp_v0_3 == 0) {
                return 0;
            }
            temp_a7 = expScreenPrivateIndex * 4;
            *(arg0->unk1B4 + temp_a7) = (s32) temp_v0_3;
            if (irixKernInit(arg0->unk0, sp18, 0, sp, sp20, sp10, &sp4, temp_a7) != 0) {
                sp8->unk350 = 0;
                sp8->unk0 = sp4;
                return sp0;
            }
            return 0;
        }
        return 0;
    }
    return 0;
}

s32 expProbe(s32 arg0, void *arg1) {
    s64 sp18;
    s32 temp_gp;
    s8 temp_v0;
    u8 temp_a0;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x167F78;
    if ((arg0 == 0) || (arg0 == 3)) {
        temp_a0 = arg1->unkC;
        sp18 = (s64) arg1;
        if (temp_a0 != 0xFF) {
            if (ddxGetBoardName(temp_a0, sp) != 0) {
                return strcmp(sp, temp_gp - 0x712C) == 0;
            }
            /* Duplicate return node #6. Try simplifying control flow for better match */
            return 0;
        }
        temp_v0 = ddxFindFirstTypedBoard(temp_gp - 0x712C);
        sp18->unkC = temp_v0;
        return (temp_v0 & 0xFF) != 0xFF;
    }
    M2C_ERROR(/* Read from unset register $t9 */)(&local_0x5f0a0000 - 0xBA8);
    ErrorF(&local_0x5f0a0000 - 0xB78, 3, arg0);
    ErrorF(&local_0x5f0a0000 - 0xB60);
    return 0;
}

void expResetProc(void *arg0) {
    ? *temp_a2;

    temp_a2 = *(arg0->unk1B4 + (*M2C_ERROR(/* Read from unset register $t9 */) * 4));
    if (temp_a2 != NULL) {
        Xfree((s64) temp_a2, temp_a2);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x58, 0x5c], gap at: 0x28. */
s32 expAttachXvc(void *arg0) {
    s64 sp8;
    s64 sp0;
    f32 temp_f3;
    f64 temp_f20;
    f64 temp_f22;
    f64 temp_f24;
    s16 var_a2;
    s16 var_a3;
    s32 temp_f0;
    s32 temp_f13;
    s32 var_s3;
    u8 *temp_a1;
    void *temp_a2;
    void *temp_v0;
    void *temp_v0_2;
    void *var_s4;

    temp_v0 = Xalloc(0x8AC);
    if (temp_v0 == NULL) {
        return 0;
    }
    memset(temp_v0, 0, 0x8AC);
    temp_f22 = saved_reg_gp->unk-4B14;
    var_s4 = temp_v0;
    var_s3 = 0;
    temp_v0->unk5A4 = 0;
    temp_v0->unk1C = 0;
    temp_v0->unk14 = 0;
    temp_v0->unk0 = 0;
    temp_v0->unk59C = 0x100;
    temp_v0->unk18 = -1;
    temp_a2 = temp_v0 + 0x5AC;
    sp8 = (s64) temp_a2;
    temp_v0->unk5A8 = temp_a2;
    temp_v0->unk5A0 = 8;
    temp_v0->unk20 = 1;
    temp_v0->unk10 = 1;
    temp_v0->unkC = 1;
    temp_v0->unk8 = (void *) (temp_v0 + 0x3A8);
    temp_v0->unk24 = (void *) (temp_v0 + 0x59C);
    temp_v0->unk4 = 1;
    temp_f24 = saved_reg_gp->unk-4B1C / saved_reg_gp->unk-5AC4;
    temp_f20 = local_0x5f0a0000.unk-790;
    do {
        pow((second half of f64) / temp_f22, second half of f64);
        temp_f13 = (s32) ((second half of f64) + temp_f20);
        var_s4->unk5AC = (s8) temp_f13;
        var_s4->unk6AC = (s8) temp_f13;
        var_s4->unk7AC = (s8) temp_f13;
        var_s3 = var_s3 + 1 + 1;
        temp_f0 = (s32) ((pow(second half of f64, temp_f24) * temp_f22) + temp_f20);
        var_s4 += 2;
        var_s4->unk5AB = (s8) temp_f0;
        var_s4->unk6AB = (s8) temp_f0;
        var_s4->unk7AB = (s8) temp_f0;
    } while (var_s3 != 0x100);
    expvc1ComputeDIDTable(temp_v0, sp8);
    if (ioctl(arg0->unk74->unk64, 0x3A9E, temp_v0->unk24->unkC) == -1) {
        ErrorF(&local_0x5f0a0000 - 0x8B8);
    }
    temp_v0->unk3A4 = 0;
    temp_v0->unk9C = 0;
    temp_v0->unk98 = 0;
    temp_v0->unk94 = 0;
    temp_v0->unk90 = 0;
    temp_v0->unk8C = 0;
    temp_v0->unk88 = 0;
    temp_v0->unk78 = 0;
    temp_v0->unk74 = 0;
    temp_v0->unk70 = 0;
    temp_v0->unk6C = 0;
    temp_v0->unk68 = 0;
    temp_v0->unk64 = 0;
    temp_v0->unk58 = 0;
    temp_v0->unk54 = 0;
    temp_v0->unk50 = 0;
    temp_v0->unk4C = 0;
    temp_v0->unk40 = 0;
    temp_v0->unk38 = 0;
    temp_v0->unk34 = 0;
    temp_v0->unk30 = 0;
    temp_v0->unk2C = -1;
    temp_v0->unk28 = 0;
    temp_v0->unk48 = &expLoadAndFree;
    temp_v0->unk7C = (void *) (&local_0x5ef60000 - 0x618C);
    temp_v0->unk60 = (void *) (&local_0x5ef60000 - 0x5A14);
    temp_v0->unk5C = (void *) (&local_0x5ef60000 - 0x5A30);
    temp_v0->unk44 = &expLstVideoFmt;
    temp_v0->unk3C = expResetProc;
    temp_v0->unk84 = (void *) (&local_0x5ef60000 - 0x5E4C);
    temp_v0_2 = temp_v0->unk8;
    temp_v0->unkA0 = (void *) (&local_0x5ef60000 - 0x4FDC);
    temp_v0->unk80 = (void *) (&local_0x5ef60000 - 0x5FE0);
    temp_v0_2->unk8 = (f32) local_0x5f0a0000.unk-788;
    temp_v0_2->unk4 = (f32) local_0x5f0a0000.unk-788;
    temp_v0_2->unk0 = 1;
    var_a3 = arg0->unkA;
    temp_v0_2->unkC = (f32) var_a3;
    var_a2 = arg0->unk8;
    temp_v0_2->unk10 = (f32) var_a2;
    temp_a1 = *((arg0->unk0 * 4) + (&local_0x5f0c0000 - 0x3998));
    if ((temp_a1 != NULL) && (var_a2 = (s16) *temp_a1, (var_a2 != 0))) {
        sp0 = (s64) temp_v0_2;
        strcpy(temp_v0_2 + 0x14, temp_a1, (u8) var_a2, var_a3, -1, 1);
        var_a3 = (s16) (&local_0x5f0c0000 - 0x3998);
        temp_v0_2->unk114 = (s32) (*((arg0->unk0 * 4) + var_a3))->unk104;
        temp_v0_2->unk118 = (s32) (*((arg0->unk0 * 4) + var_a3))->unk100;
        var_a2 = (s16) *((arg0->unk0 * 4) + var_a3);
        temp_f3 = var_a2->unk108;
        temp_v0_2->unk124 = temp_f3;
        temp_v0_2->unk128 = temp_f3;
    } else {
        temp_v0_2->unk128 = (f32) local_0x5f0a0000.unk-788;
        temp_v0_2->unk124 = (f32) local_0x5f0a0000.unk-788;
        temp_v0_2->unk118 = 0;
        temp_v0_2->unk114 = 0;
        temp_v0_2->unk14 = 0;
    }
    temp_v0_2->unk1F0 = 0;
    temp_v0_2->unk1EC = 0;
    temp_v0_2->unk1E4 = 0;
    temp_v0_2->unk1E8 = -1;
    temp_v0_2->unk1D8 = 0;
    temp_v0_2->unk1D4 = 0;
    temp_v0_2->unk1CC = 0;
    temp_v0_2->unk1E0 = 0;
    temp_v0_2->unk1DC = 0;
    temp_v0_2->unk1D0 = 0;
    temp_v0_2->unk1C8 = 0;
    temp_v0_2->unk1C0 = 0;
    temp_v0_2->unk1C4 = 0;
    temp_v0_2->unk1BC = 0;
    temp_v0_2->unk1B8 = 0;
    temp_v0_2->unk1B4 = 0;
    temp_v0_2->unk1B0 = 0;
    temp_v0_2->unk1AC = 0;
    temp_v0_2->unk1A8 = 0;
    temp_v0_2->unk158 = 0;
    temp_v0_2->unk154 = 1;
    temp_v0_2->unk150 = 0;
    temp_v0_2->unk14C = 0;
    temp_v0_2->unk148 = 0;
    temp_v0_2->unk144 = 0;
    temp_v0_2->unk140 = 0;
    temp_v0_2->unk13C = 0;
    temp_v0_2->unk138 = 0;
    temp_v0_2->unk134 = 0;
    temp_v0_2->unk130 = 0;
    temp_v0_2->unk12C = 0;
    temp_v0_2->unk120 = 0;
    temp_v0_2->unk11C = 0;
    XSGIvcScreenInit(arg0, temp_v0, (u8) var_a2, (void *) var_a3, -1, 1);
    return 1;
}

void expCloseScreen(s32 arg0, void *arg1) {
    ? *temp_a1;
    s32 *var_a3;
    s32 *var_s2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1673A8;
    rrmCloseScreen(arg1);
    var_s2 = &expGCOpsCache__EMC;
loop_2:
    temp_a0 = *var_s2;
    if (temp_a0 != 0) {
        Xfree((s64) temp_a0);
        *var_s2 = 0;
    }
    var_s2 += 4;
    if (var_s2 != (&expGCOpsCache__EMC + 0x800)) {
        goto loop_2;
    }
    temp_a2 = expScreenPrivateIndex * 4;
    temp_a1 = *(arg1->unk1B4 + temp_a2);
    temp_a0_2 = temp_a1->unk358;
    if (temp_a0_2 != 0) {
        unksp28 = (s64) temp_a1;
        Xfree((s64) temp_a0_2, temp_a1, temp_a2);
    }
    Xfree((s64) temp_a1, temp_a1);
    Xfree((s64) arg1->unk74->unk74);
    Xfree((s64) arg1->unk74->unk7C);
    temp_a0_3 = arg1->unk14;
    if (temp_a0_3 != (temp_gp - 0x5684)) {
        Xfree((s64) temp_a0_3);
        arg1->unk14 = (s32) (temp_gp - 0x5684);
    }
    var_a3 = (arg1->unk0 * 4) + &XSGIvcScreens;
    if (*var_a3 != 0) {
        temp_a2_2 = vcScreenPrivateIndex * 4;
        temp_a0_4 = *(arg1->unk1B4 + temp_a2_2);
        if (temp_a0_4 != 0) {
            Xfree((s64) temp_a0_4, &XSGIvcScreens, temp_a2_2, var_a3);
            var_a3 = (arg1->unk0 * 4) + &XSGIvcScreens;
        }
        *var_a3 = 0;
    }
    nfbCloseScreen(arg0, arg1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x28, 0x2c], gap at: 0x18. */
void expInitRootWindow(s32 *arg0, ? *arg3) {
    s32 sp0;
    ? *var_a3;
    s32 temp_a1;
    s32 temp_s0;
    s32 temp_v0;
    s32 temp_v0_4;
    s32 var_a4;
    s64 temp_v0_2;
    void *temp_v0_3;

    var_a3 = arg3;
    temp_a1 = *arg0;
    temp_v0 = temp_a1 * 4;
    var_a4 = temp_a1 * 0x10;
    if (*(temp_v0 + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x189588) - 0x5C24)) != 0) {
        var_a3 = &expSetBacklight__EHB;
        var_a4 = (s32) (var_a4 + &savedScreenInfo);
        var_a4->unkC = &expSetBacklight__EHB;
    }
    temp_s0 = *(WindowTable + temp_v0);
    temp_v0_2 = MakeAtom(&local_0x5f0a0000 - 0xFD0, 0x15, 1, var_a3, (void *) var_a4);
    unksp10 = (s64) temp_s0;
    unksp18 = (s64) arg0;
    unksp20 = temp_v0_2;
    temp_v0_3 = Xalloc(0x228);
    if (temp_v0_3 == NULL) {
        ErrorF(&local_0x5f0a0000 - 0xFB8);
        exit(1);
    }
    memset(temp_v0_3, 0, 0x228);
    temp_v0_3->unk10 = 1;
    temp_v0_3->unkA = 0xFFFF;
    temp_v0_3->unk4 = 0xFFFF;
    temp_v0_3->unk0 = (void *) (temp_v0_3 + 0x114);
    temp_v0_4 = FakeClientID(0);
    sp0 = temp_v0_4;
    if (AddResource(temp_v0_4, 5, temp_v0_3) != 0) {
        (*(unksp18->unk1B4 + (expScreenPrivateIndex * 4)))->unk354 = temp_v0_3;
        if (ChangeWindowProperty(unksp10, unksp20, 8, 0x20, 0, 1, sp, 0) != 0) {
            ErrorF(&local_0x5f0a0000 - 0xF88);
            exit(1);
        }
    } else {
        Xfree((s64) temp_v0_3);
    }
}

void expBell(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a7;
    s32 temp_gp;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_ra;
    s32 var_s2;
    s32 var_s4;
    s32 var_t8;
    s32 var_t9;
    s32 var_v0;
    s8 *var_a0_4;
    s8 *var_a2_2;
    s8 *var_s1;
    s8 *var_v0_2;
    s8 temp_t2;
    s8 temp_t3;
    void *temp_a5;
    void *temp_v0;
    void *var_a0_3;
    void *var_a4;
    void *var_s2_2;
    void *var_s3;
    void *var_v0_3;

    var_s2 = 0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x167150;
    if ((arg0 != 0) && (arg1 != 0) && (sp0 = 0, (arg2 != 0))) {
        temp_v0 = GetTimeInMillis();
        var_a0 = temp_v0 - var_5f0b8ac8;
        if (var_a0 < 0) {
            var_a0 = var_5f0b8ac8 - temp_v0;
        }
        if (var_5f0b8acc < var_a0) {
            var_5f0b8ac8 = temp_v0;
            sp0 = 1;
        }
        expCloseScreen(temp_gp - 0x5B00, var_5f0b8ac8);
        if ((var_5f0b8ab8 != arg0) || (var_5f0b8abc != arg1) || (var_5f0b8ac0 != arg2)) {
            var_t8 = 0;
            if (var_5f0b8ac4 != 0) {
                var_s2 = 1;
                var_5f0b8ac0 = arg2;
                var_5f0b8abc = arg1;
                var_5f0b8ab8 = arg0;
                goto block_11;
            }
        } else {
block_11:
            var_t8 = 0;
        }
        temp_v1 = arg1 * 2;
        if (var_s2 != 0) {
            goto block_13;
        }
        if (var_5f0b8ab0 == 0) {
            if (sp0 == 0) {

            } else {
                goto block_39;
            }
        } else {
block_13:
            temp_lo = (s32) (arg1 * arg2) / 1000;
            temp_lo_2 = (s32) var_5f0b8ac4 / temp_v1;
            M2C_TRAP_IF(temp_v1 == 0);
            M2C_TRAP_IF(0x3E8 == 0);
            if (temp_lo > 0) {
                var_s2_2 = &local_0x5f0c0000 - 0x5A98;
                var_ra = 0;
                var_s1 = temp_lo_2 + var_s2_2;
                var_s3 = temp_lo_2 + var_s2_2;
                var_s4 = temp_lo_2 * 2;
                var_t9 = var_s4;
                temp_t3 = (arg0 >> 4) + 1;
                temp_t2 = -(temp_t3 & 0xFF);
loop_19:
                var_v0 = var_t8;
                var_a0_2 = var_ra;
                if (var_t9 < 0x2001) {
                    var_t8 += 1;
                    var_v0_2 = var_s1;
                    var_ra += var_s4;
                    if (temp_lo_2 >= 1) {
                        var_a2 = temp_lo_2 & 3;
                        var_a0_3 = var_s2_2;
                        if (var_a2 != 0) {
                            do {
                                var_a0_3 += 1;
                                var_v0_2 += 1;
                                var_a2 -= 1;
                                var_a0_3->unk-1 = temp_t3;
                                var_v0_2->unk-1 = temp_t2;
                            } while (var_a2 != 0);
                        }
                        var_a2_2 = var_v0_2;
                        temp_a7 = temp_lo_2 >> 2;
                        var_a4 = var_a0_3;
                        if (temp_a7 != 0) {
                            if (temp_a7 >= 2) {
                                var_a4->unk0 = temp_t3;
                                temp_a5 = var_s3 - 4;
                                var_a2_2->unk0 = temp_t2;
loop_26:
                                var_a4->unk1 = temp_t3;
                                var_a2_2->unk1 = temp_t2;
                                var_a4->unk2 = temp_t3;
                                var_a2_2->unk2 = temp_t2;
                                var_a4->unk3 = temp_t3;
                                var_a2_2->unk3 = temp_t2;
                                var_a4->unk4 = temp_t3;
                                var_a2_2->unk4 = temp_t2;
                                if (var_a4 != (temp_a5 - 4)) {
                                    var_a4->unk5 = temp_t3;
                                    var_a2_2->unk5 = temp_t2;
                                    var_a4->unk6 = temp_t3;
                                    var_a2_2->unk6 = temp_t2;
                                    var_a4->unk7 = temp_t3;
                                    var_a2_2->unk7 = temp_t2;
                                    var_a4->unk8 = temp_t3;
                                    var_a2_2->unk8 = temp_t2;
                                    if (var_a4 != (temp_a5 - 8)) {
                                        var_a4->unk9 = temp_t3;
                                        var_a2_2->unk9 = temp_t2;
                                        var_a4->unkA = temp_t3;
                                        var_a2_2->unkA = temp_t2;
                                        var_a4->unkB = temp_t3;
                                        var_a2_2->unkB = temp_t2;
                                        var_a4->unkC = temp_t3;
                                        var_a2_2->unkC = temp_t2;
                                        if (var_a4 != (temp_a5 - 0xC)) {
                                            var_a4->unkD = temp_t3;
                                            var_a2_2->unkD = temp_t2;
                                            var_a4->unkE = temp_t3;
                                            var_a2_2->unkE = temp_t2;
                                            var_a4->unkF = temp_t3;
                                            var_a2_2->unkF = temp_t2;
                                            var_a4->unk10 = temp_t3;
                                            var_a2_2->unk10 = temp_t2;
                                            if (var_a4 != (temp_a5 - 0x10)) {
                                                var_a4->unk11 = temp_t3;
                                                var_a2_2->unk11 = temp_t2;
                                                var_a4->unk12 = temp_t3;
                                                var_a2_2->unk12 = temp_t2;
                                                var_a4->unk13 = temp_t3;
                                                var_a2_2->unk13 = temp_t2;
                                                var_a4->unk14 = temp_t3;
                                                var_a2_2 += 0x14;
                                                var_a4 += 0x14;
                                                *var_a2_2 = temp_t2;
                                                if (var_a4 == temp_a5) {
                                                    var_v0_3 = var_a4;
                                                    var_a0_4 = var_a2_2;
                                                } else {
                                                    goto loop_26;
                                                }
                                            } else {
                                                var_a0_4 = var_a2_2 + 0x10;
                                                var_v0_3 = var_a4 + 0x10;
                                            }
                                        } else {
                                            var_a0_4 = var_a2_2 + 0xC;
                                            var_v0_3 = var_a4 + 0xC;
                                        }
                                    } else {
                                        var_a0_4 = var_a2_2 + 8;
                                        var_v0_3 = var_a4 + 8;
                                    }
                                } else {
                                    var_a0_4 = var_a2_2 + 4;
                                    var_v0_3 = var_a4 + 4;
                                }
                                var_v0_3->unk1 = temp_t3;
                                var_a0_4->unk1 = temp_t2;
                                var_v0_3->unk2 = temp_t3;
                                var_a0_4->unk2 = temp_t2;
                                var_v0_3->unk3 = temp_t3;
                            } else {
                                var_a0_4 = var_a2_2;
                                var_a4->unk0 = temp_t3;
                                var_a0_4->unk0 = temp_t2;
                                var_a4->unk1 = temp_t3;
                                var_a0_4->unk1 = temp_t2;
                                var_a4->unk2 = temp_t3;
                                var_a0_4->unk2 = temp_t2;
                                var_a4->unk3 = temp_t3;
                            }
                            var_a0_4->unk3 = temp_t2;
                        }
                    }
                    var_t9 += var_s4;
                    var_s3 += var_s4;
                    var_s1 += var_s4;
                    var_s2_2 += var_s4;
                    if (var_t8 != temp_lo) {
                        goto loop_19;
                    }
                    goto block_36;
                }
            } else {
                var_t8 = 0;
                var_s4 = temp_lo_2 * 2;
block_36:
                var_v0 = var_t8;
                var_a0_2 = var_t8 * var_s4;
            }
            M2C_TRAP_IF(arg1 == 0);
            var_5f0b8aa8 = var_a0_2;
            var_5f0b8acc = (s32) (var_v0 * 0x514) / arg1;
            if (sp0 != 0) {
block_39:
                temp_a2 = var_5f0b8ab4;
                if (var_5f0b8ac4 != 0) {
                    if (temp_a2 == 0) {
                        temp_v0_2 = ALnewconfig();
                        var_5f0b8ab4 = temp_v0_2;
                        ALsetwidth(temp_v0_2, 1);
                        ALsetchannels(var_5f0b8ab4, 1);
                    }
                    temp_v0_3 = ALopenport(temp_gp - 0x7124, temp_gp - 0x711C, temp_a2);
                    var_5f0b8aa4 = temp_v0_3;
                    if (temp_v0_3 != 0) {
                        ALwritesamps(temp_v0_3, &local_0x5f0c0000 - 0x5A98, var_5f0b8aa8);
                        if (ALgetfilled(var_5f0b8aa4) > 0) {
                            do {
                                sginap(1);
                            } while (ALgetfilled(var_5f0b8aa4) > 0);
                        }
                        ALcloseport(var_5f0b8aa4);
                        var_5f0b8aa4 = 0;
                        return;
                    }
                    ErrorF(&local_0x5f0a0000 - 0xAB8);
                }
            }
        }
    }
}

void expKeyClick(s32 arg0) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_gp;
    s32 temp_lo;
    s32 temp_s4;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s3;
    s32 var_s8;
    s32 var_t2;
    s32 var_t8;
    s32 var_t9;
    s32 var_v0;
    s8 temp_t2;
    s8 temp_t3;
    void *temp_a5;
    void *temp_s2;
    void *temp_v0;
    void *var_a0_2;
    void *var_a0_3;
    void *var_a2_2;
    void *var_a4;
    void *var_ra;
    void *var_s0_2;
    void *var_s2;
    void *var_v0_2;
    void *var_v0_3;

    var_s0 = 0;
    var_s8 = 0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x166C10;
    if (arg0 != 0) {
        temp_v0 = GetTimeInMillis();
        var_a0 = temp_v0 - var_5f0b8ad4;
        if (var_a0 < 0) {
            var_a0 = var_5f0b8ad4 - temp_v0;
        }
        if (var_a0 >= 0x1F) {
            var_5f0b8ad4 = temp_v0;
            var_s8 = 1;
        }
        expCloseScreen(temp_gp - 0x5AEC, var_5f0b8ad4);
        if (var_5f0b8ad0 != arg0) {
            var_t2 = arg0 >> 4;
            if (var_5f0b8ad8 != 0) {
                var_s0 = 1;
                var_5f0b8ad0 = arg0;
                goto block_7;
            }
        } else {
block_7:
            var_t2 = arg0 >> 4;
        }
        var_t8 = 0;
        if (var_s0 != 0) {
            goto block_10;
        }
        if (var_5f0b8ab0 == 0) {
            if (var_s8 == 0) {

            } else {
                goto block_34;
            }
        } else {
block_10:
            temp_lo = var_5f0b8ad8 / 3000;
            var_s3 = 0;
            temp_t2 = var_t2 + 1;
            M2C_TRAP_IF(0xBB8 == 0);
            temp_s2 = &local_0x5f0c0000 - 0x5A98;
            temp_t3 = -(temp_t2 & 0xFF);
            var_s0_2 = temp_s2;
            var_ra = temp_lo + temp_s2;
            var_s2 = temp_lo + temp_s2;
            temp_s4 = temp_lo * 2;
            var_t9 = temp_s4;
loop_15:
            var_a2 = temp_lo & 3;
            var_v0 = var_t8;
            if (var_t9 < 0x101) {
                var_s3 += 1;
                var_t8 += temp_s4;
                if (temp_lo >= 1) {
                    var_v0_2 = var_ra;
                    var_a0_2 = var_s0_2;
                    if (var_a2 != 0) {
                        do {
                            var_a0_2 += 1;
                            var_v0_2 += 1;
                            var_a2 -= 1;
                            var_a0_2->unk1FFF = temp_t2;
                            var_v0_2->unk1FFF = temp_t3;
                        } while (var_a2 != 0);
                    }
                    var_a2_2 = var_v0_2;
                    temp_a3 = var_5f0b8ad8 / 12000;
                    var_a4 = var_a0_2;
                    if (temp_a3 != 0) {
                        if (temp_a3 >= 2) {
                            temp_a5 = var_s2 - 4;
                            var_a4->unk2000 = temp_t2;
                            var_a2_2->unk2000 = temp_t3;
loop_22:
                            var_a4->unk2001 = temp_t2;
                            var_a2_2->unk2001 = temp_t3;
                            var_a4->unk2002 = temp_t2;
                            var_a2_2->unk2002 = temp_t3;
                            var_a4->unk2003 = temp_t2;
                            var_a2_2->unk2003 = temp_t3;
                            var_a4->unk2004 = temp_t2;
                            var_a2_2->unk2004 = temp_t3;
                            if (var_a4 != (temp_a5 - 4)) {
                                var_a4->unk2005 = temp_t2;
                                var_a2_2->unk2005 = temp_t3;
                                var_a4->unk2006 = temp_t2;
                                var_a2_2->unk2006 = temp_t3;
                                var_a4->unk2007 = temp_t2;
                                var_a2_2->unk2007 = temp_t3;
                                var_a4->unk2008 = temp_t2;
                                var_a2_2->unk2008 = temp_t3;
                                if (var_a4 != (temp_a5 - 8)) {
                                    var_a4->unk2009 = temp_t2;
                                    var_a2_2->unk2009 = temp_t3;
                                    var_a4->unk200A = temp_t2;
                                    var_a2_2->unk200A = temp_t3;
                                    var_a4->unk200B = temp_t2;
                                    var_a2_2->unk200B = temp_t3;
                                    var_a4->unk200C = temp_t2;
                                    var_a2_2->unk200C = temp_t3;
                                    if (var_a4 != (temp_a5 - 0xC)) {
                                        var_a4->unk200D = temp_t2;
                                        var_a2_2->unk200D = temp_t3;
                                        var_a4->unk200E = temp_t2;
                                        var_a2_2->unk200E = temp_t3;
                                        var_a4->unk200F = temp_t2;
                                        var_a2_2->unk200F = temp_t3;
                                        var_a4->unk2010 = temp_t2;
                                        var_a2_2->unk2010 = temp_t3;
                                        if (var_a4 != (temp_a5 - 0x10)) {
                                            var_a4->unk2011 = temp_t2;
                                            var_a2_2->unk2011 = temp_t3;
                                            var_a4->unk2012 = temp_t2;
                                            var_a2_2->unk2012 = temp_t3;
                                            var_a4->unk2013 = temp_t2;
                                            var_a2_2->unk2013 = temp_t3;
                                            var_a4->unk2014 = temp_t2;
                                            var_a2_2 += 0x14;
                                            var_a4 += 0x14;
                                            var_a2_2->unk2000 = temp_t3;
                                            if (var_a4 == temp_a5) {
                                                var_a0_3 = var_a4;
                                                var_v0_3 = var_a2_2;
                                            } else {
                                                goto loop_22;
                                            }
                                        } else {
                                            var_v0_3 = var_a2_2 + 0x10;
                                            var_a0_3 = var_a4 + 0x10;
                                        }
                                    } else {
                                        var_v0_3 = var_a2_2 + 0xC;
                                        var_a0_3 = var_a4 + 0xC;
                                    }
                                } else {
                                    var_v0_3 = var_a2_2 + 8;
                                    var_a0_3 = var_a4 + 8;
                                }
                            } else {
                                var_v0_3 = var_a2_2 + 4;
                                var_a0_3 = var_a4 + 4;
                            }
                            var_a0_3->unk2001 = temp_t2;
                            var_v0_3->unk2001 = temp_t3;
                            var_a0_3->unk2002 = temp_t2;
                            var_v0_3->unk2002 = temp_t3;
                            var_a0_3->unk2003 = temp_t2;
                        } else {
                            var_v0_3 = var_a2_2;
                            var_a4->unk2000 = temp_t2;
                            var_v0_3->unk2000 = temp_t3;
                            var_a4->unk2001 = temp_t2;
                            var_v0_3->unk2001 = temp_t3;
                            var_a4->unk2002 = temp_t2;
                            var_v0_3->unk2002 = temp_t3;
                            var_a4->unk2003 = temp_t2;
                        }
                        var_v0_3->unk2003 = temp_t3;
                    }
                }
                var_t9 += temp_s4;
                var_s2 += temp_s4;
                var_ra += temp_s4;
                var_s0_2 += temp_s4;
                if (var_s3 != 0xF) {
                    goto loop_15;
                }
                var_v0 = temp_lo * 0x1E;
            }
            var_5f0b8aac = var_v0;
            if (var_s8 != 0) {
block_34:
                temp_a2 = var_5f0b8ab4;
                if (var_5f0b8ad8 != 0) {
                    if (temp_a2 == 0) {
                        temp_v0_2 = ALnewconfig();
                        var_5f0b8ab4 = temp_v0_2;
                        ALsetwidth(temp_v0_2, 1);
                        ALsetchannels(var_5f0b8ab4, 1);
                    }
                    temp_v0_3 = ALopenport(temp_gp - 0x7124, temp_gp - 0x711C, temp_a2);
                    var_5f0b8aa4 = temp_v0_3;
                    if (temp_v0_3 != 0) {
                        ALwritesamps(temp_v0_3, &local_0x5f0c0000 - 0x5A98 + 0x2000, var_5f0b8aac);
                        if (ALgetfilled(var_5f0b8aa4) > 0) {
                            do {
                                sginap(1);
                            } while (ALgetfilled(var_5f0b8aa4) > 0);
                        }
                        ALcloseport(var_5f0b8aa4);
                        var_5f0b8aa4 = 0;
                        return;
                    }
                    ErrorF(&local_0x5f0a0000 - 0xA90);
                }
            }
        }
    }
}
