? GfxRegisterBoard(s64, struct gr2_data *, struct gr2_info *); /* extern */
s32 Gr2TpSetup(struct gr2_hw *, s32, s32, ?);       /* extern */
s32 RRM_CheckValidFault(s64);                       /* extern */
s32 _Gr2CrossPage(void *);                          /* extern */
? cmn_err(?, ? *, s64, u32);                        /* extern */
s32 copyin(s64, s32 *, s32, s64);                   /* extern */
s32 copyout(s32 *, s64, u32);                       /* extern */
s32 curthreadhandle();                              /* extern */
? ddv_destroy_handle(u32, s64, s64);                /* extern */
s32 ddv_invalphys_fal(s32, ?, ?);                   /* extern */
? ddv_invaltlb(u32, ?, ?);                          /* extern */
? ddv_mappages(u32, u64, s32, ?);                   /* extern */
? dki_dcache_inval(s32, s32);                       /* extern */
? dki_dcache_wb(s32, s32);                          /* extern */
? enable_fastclock();                               /* extern */
? ev1_reset(s32);                                   /* extern */
s32 ev1_softprobe(struct gr2_hw *);                 /* extern */
? fakePICdma(s64, ?);                               /* extern */
u32 fast_timeout(?, struct gr2_data *, ?, s64);     /* extern */
? force_resched(s64);                               /* extern */
? gfx_waitc_off();                                  /* extern */
? gfx_waitc_on();                                   /* extern */
? gfx_waitf_off();                                  /* extern */
? gfx_waitf_on();                                   /* extern */
s32 gfxdd_mmap(s32, ?, s64, ?);                     /* extern */
? gfxdd_munmap(u32);                                /* extern */
s32 gfxdd_recycle(?, s64, s64);                     /* extern */
s32 gr2_i2c_command(s32 *);                         /* extern */
void *gthread_find(s32);                            /* extern */
? gthread_scan(?, void *);                          /* extern */
? htp_register_board(struct gr2_hw *, ?, u16, u16); /* extern */
? kern_free(u16 *);                                 /* extern */
s32 kmem_alloc(s32, ?, void *, ?);                  /* extern */
? kmem_free(s32, s32);                              /* extern */
s32 kvpalloc(u32, ?, ?, s32);                       /* extern */
? kvpfree(s32, u32, s32, s32);                      /* extern */
s32 kvtophys(s32);                                  /* extern */
s32 kvtophyspnum(struct gr2_hw *, ?, s32, s64);     /* extern */
GE_RECORD *maputokv(s32, s32, ?);                   /* extern */
? psema(void *, ?);                                 /* extern */
? rrmInvalidateRN(s64, ?, s32);                     /* extern */
? rrmUnMapGfx(s64);                                 /* extern */
s32 rrmWaitVideoSync(s64, s64, s32, s32);           /* extern */
? setgiovector(?, struct gr2_hw *, ?, s32);         /* extern */
s32 splretr();                                      /* extern */
s32 thread_issproc(s32, s32, ?);                    /* extern */
? undma(s32, s32, ?, u8);                           /* extern */
? unmaputokv(s64, s32);                             /* extern */
? untimeout(u32);                                   /* extern */
s32 userdma(s32, s32, ?, ?);                        /* extern */
? vdma_kv(s32, s32, s32, s32);                      /* extern */
? vsema(void *);                                    /* extern */
extern ? .srdata;
extern void *__sbss0;
extern void *__sbss10;
extern void *__sbss14;
extern void *__sbss18;
extern u32 __sbss1C;
extern u32 __sbss20;
extern s32 __sbss24;
extern u32 __sbss28;
extern u32 __sbss2C;
extern s16 __sbss30;
extern u16 __sbss32;
extern u16 __sbss34;
extern s32 __sbss38;
extern u16 __sbss3C;
extern u16 __sbss3E;
extern s32 __sbss4;
extern u8 __sbss40;
extern u8 __sbss41;
extern GE_RECORD *__sbss44;
extern s8 __sbss48;
extern u8 __sbss49;
extern s8 __sbss4A;
extern s32 __sbss8;
extern s32 __sbssC;
extern s32 __sdata0;
extern s32 __sdata18;
extern s32 __sdata4;
extern u32 __sdata8;
extern s32 __sdataC;
extern ? fastclock;
extern ? fasthz;
extern ? gfxinfo;
extern ? mcgdma;

s32 gr2_base2index(struct gr2_hw *base) {
    s32 temp_a5;
    s32 var_a3;
    s32 var_v0;
    void *var_a4;

    temp_a5 = *NULL;
    var_a3 = 0;
    if (temp_a5 != 0) {
        var_v0 = temp_a5;
        var_a4 = NULL;
loop_2:
        if (var_v0 != base) {
            var_v0 = var_a4->unk1C;
            var_a4 += 0x1C;
            var_a3 += 1;
            if (var_v0 == 0) {
                /* Duplicate return node #4. Try simplifying control flow for better match */
                return -1;
            }
            goto loop_2;
        }
        return var_a3;
    }
    return -1;
}

s32 gr2_firstgfxslot(void) {
    s32 var_v0;
    void *var_a2;

    var_v0 = 0;
    var_a2 = NULL;
loop_1:
    var_v0 += 1;
    if (var_a2->unkC != 0) {
        return var_a2->unk0;
    }
    var_a2 += 0x1C;
    if (var_v0 >= 2) {
        return 0;
    }
    goto loop_1;
}

void gr2_error(struct gr2_data *arg0) {
    cmn_err(4, NULL, arg0->base->hq.hq_gepc.w & 0xFFFF, 0U);
    arg0->info->pad35 = 1;
    untimeout(arg0->lock[1]);
    arg0->lock[1] = 0;
    gthread_scan(0, sp);
    Gr2Reset((gr2_base2index(arg0->base) * 0x1C)->unk10);
    Gr2StartClock(arg0->base, arg0->info);
    arg0->unk2C = 0;
    arg0->unk3C = 0;
}

void gr2_retr_intr(s32 arg0) {
    s32 temp_s3;
    s32 var_a2;
    struct gr2_data *temp_a0;
    void *temp_a3;

    temp_s3 = arg0 * 0x1C;
    if (is_fullhouse() != 0) {
        *(u8 *)0xBFBD901F &= ~temp_s3->unk18;
        flushbus();
        *(void *)0xBFBD901F = (u8) (temp_s3->unk18 | *(void *)0xBFBD901F);
    } else if (is_indyelan() != 0) {
        *(s32 *)0xBFBD984C &= ~1;
        flushbus();
        *(void *)0xBFBD984C = (s32) (*(void *)0xBFBD984C | 1);
    }
    temp_a0 = temp_s3->unk4;
    temp_a3 = gfxinfo.unk7800;
    var_a2 = temp_a3->unk10;
    if ((temp_a0->fp_installed != 0) && !(var_a2 & 0x3F)) {
        gr2_fp_reinit(temp_a0);
        var_a2 = gfxinfo.unk7800->unk10;
    }
    temp_a3->unk10 = (s32) (var_a2 + 1);
}

void Gr2RetraceInterrupt(s32 arg0) {
    s32 temp_s3;
    struct gr2_data *temp_a2;

    temp_s3 = arg0 * 0x1C;
    temp_a2 = temp_s3->unk4;
    if (temp_a2 != NULL) {
        Gr2RetraceHandler(temp_a2);
    }
    if (is_fullhouse() != 0) {
        *(u8 *)0xBFBD901F &= ~temp_s3->unk18;
        flushbus();
        *(void *)0xBFBD901F = (u8) (temp_s3->unk18 | *(void *)0xBFBD901F);
    } else if (is_indyelan() != 0) {
        *(s32 *)0xBFBD984C &= ~1;
        flushbus();
        *(void *)0xBFBD984C = (s32) (*(void *)0xBFBD984C | 1);
    }
}

s32 Gr2FIFOPollLowater(void *arg0) {
    s64 sp0;
    void *temp_at;

    temp_at = arg0->unk7C;
    sp0 = temp_at + 0x70000;
    if ((u32) ((u32) (temp_at->unk6A040 & 0x1FC0) >> 6) >= 0x23U) {
        return 0;
    }
    untimeout(arg0->unk144);
    arg0->unk144 = 0U;
    if (arg0->unk3C != 0) {
        arg0->unk3C = 0;
loop_4:
        M2C_ERROR(/* unknown instruction: ll $a1, ($a2) */);
        if (M2C_ERROR(/* unknown instruction: sc $v1, ($a2) */) == 0) {
            goto loop_4;
        }
    }
    arg0->unk148 = 0x28;
    sp0->unk-5FA4 = 0x28;
    flushbus();
    return 1;
}

void Gr2FIFOTimeoutCallback(struct gr2_data *arg0, s32 arg1) {
    s64 sp8;
    s64 temp_a3;

    arg0->lock[1] = 0;
    if (arg0->unk3C != 0) {
        temp_a3 = arg1 - 1;
        if ((u32) ((u32) (arg0->base->hq.version.w & 0x1FC0) >> 6) >= 0x23U) {
            if (temp_a3 <= 0) {
                sp8 = temp_a3;
                cmn_err(4, NULL, temp_a3);
                gr2_error(arg0);
            }
            arg0->lock[1] = fast_timeout(0, arg0, 1, temp_a3);
        } else {
            force_resched(temp_a3);
        }
    }
}

void Gr2FIFOHandler(struct gr2_data *arg0, s64 arg1) {
    s64 sp30;
    s64 sp28;
    s32 temp_a2;
    s32 var_a1;
    s32 var_a4;
    s32 var_v0;
    s64 var_ra;
    struct gr2_hw *temp_s1;
    u32 temp_a1;
    u32 var_s2;
    u32 var_s2_2;

    var_ra = saved_reg_ra;
    temp_s1 = arg0->base;
    unksp18 = arg1;
    var_s2 = 0;
    if (temp_s1->hq.version.w & 0x20) {
        cmn_err(4, (? *)0x40);
        gr2_error(arg0);
        var_ra = sp30;
    }
    if ((u32) ((u32) (temp_s1->hq.version.w & 0x1FC0) >> 6) < (u32) arg0->unk148) {
        gfxinfo.unk7800->unk1C = (s32) (gfxinfo.unk7800->unk1C + 1);
    } else {
        sp30 = var_ra;
        gfx_waitf_on();
        var_s2 = 0;
        if (__sdata8 != 0) {
loop_12:
            if ((u32) ((u32) (temp_s1->hq.version.w & 0x1FC0) >> 6) >= 0x24U) {
                us_delay(1);
                var_s2 += 1;
                if (var_s2 < (u32) __sdata8) {
                    goto loop_12;
                }
            }
        }
        gfx_waitf_off();
        var_ra = sp30;
        gfxinfo.unk7800->unk18 = (s32) (gfxinfo.unk7800->unk18 + 1);
    }
    if (var_s2 >= (u32) __sdata8) {
        sp30 = var_ra;
        if ((unksp18->unkF8 & 0x18) != 0x10) {
            gfx_waitf_on();
            var_s2_2 = 0;
loop_7:
            if ((u32) ((u32) (temp_s1->hq.version.w & 0x1FC0) >> 6) >= 0x29U) {
                var_s2_2 += 1;
                us_delay(1);
                if (var_s2_2 < 0x493E0U) {
                    goto loop_7;
                }
            }
            gfx_waitf_off();
            if (var_s2_2 >= 0x493E0U) {
                cmn_err(4, (? *)0x80);
                gr2_error(arg0);
            }
        } else {
            var_v0 = splhi();
            temp_a2 = arg0->unk3C;
            unksp8 = (s64) temp_a2;
            arg0->unk3C = 1;
            if (temp_a2 == 0) {
                temp_a1 = (u32) (temp_s1->hq.version.w & 0x1FC0) >> 6;
                var_a4 = 0x3F;
                if ((s32) temp_a1 < 0x3F) {
                    var_a4 = temp_a1 + 1;
                }
                var_a1 = var_a4;
                if (var_a4 < 0x28) {
                    sp28 = (s64) var_v0;
                    var_a1 = 0x28;
                }
                sp28 = (s64) var_v0;
                arg0->unk148 = (u32) var_a1;
                temp_s1->hq.fifo_full.w = var_a1;
                flushbus();
                arg0->unk48 = 1;
loop_24:
                M2C_ERROR(/* unknown instruction: ll $a3, ($a4) */);
                if (M2C_ERROR(/* unknown instruction: sc $a6, ($a4) */) == 0) {
                    goto loop_24;
                }
                force_resched();
                var_v0 = (s32) sp28;
            }
            splx(var_v0);
            if (unksp8 == 0) {
                Gr2FIFOTimeoutCallback(arg0, fasthz.unk7800 * 2);
            }
        }
    }
}

void Gr2FIFOInterrupt(s32 arg0) {
    struct gr2_data *temp_a3;

    temp_a3 = (arg0 * 0x1C)->unk4;
    if (temp_a3 != NULL) {
        Gr2FIFOHandler(temp_a3, (s64) temp_a3);
    }
}

s32 gr2_earlyinit(void) {
    s32 temp_v0;
    s32 var_s4;
    s32 var_v0;
    struct gr2_hw *var_s0;
    struct gr2_info *var_s5;
    void *var_s2;

    if (is_indyelan() != 0) {
        *(struct gr2_info **)0x24 = NULL;
    }
    var_s5 = *(struct gr2_info **)8;
    var_s0 = *NULL;
    if (var_s5 != NULL) {
        var_s2 = NULL;
loop_8:
        var_s4 = 0;
        if (__sdataC == 0) {
            bzero(var_s5, 0x3CU);
        }
        if (Gr2Probe(var_s0, var_s5) != 0) {
            if ((var_s0->shram[0x7FFF] == 1) && (var_s0->shram[0x7FFF] != 2) && (__sdataC == 0)) {
                var_s5->pad32 = (u8) var_s0->shram[0x7FF8];
                initGr2Cursor(var_s0);
                if (0 == 0) {
                    goto block_14;
                }
            } else {
                Gr2Reset(var_s2->unk10);
                Gr2StartClock(var_s0, var_s5);
                temp_v0 = Gr2Init(var_s0, var_s5);
                if (temp_v0 != 0) {
                    var_s4 = Gr2TpSetup(var_s0, var_s5->gfx_info.xpmax - 1, var_s5->gfx_info.ypmax - 1, 0) != 0;
                }
                if (temp_v0 != 0) {
block_14:
                    if (var_s4 == 0) {
                        Gr2ProbeVC1(var_s0, var_s5);
                        var_s5->pad35 = 1;
                        if ((subroutine_arg0 + 1) == 1) {
                            htp_register_board(var_s0, 0, var_s5->gfx_info.xpmax, var_s5->gfx_info.ypmax);
                        }
                        var_s2->unkC = 1;
                        var_s0->hq.dmasync.w = 0;
                    }
                }
            }
        }
        var_s5 = var_s2->unk24;
        var_s0 = var_s2->unk1C;
        var_s2 += 0x1C;
        if (var_s5 != NULL) {
            goto loop_8;
        }
    }
    __sdataC += 1;
    if (subroutine_arg0 != 0) {
        var_v0 = 1;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

void gr2_init(void) {
    s64 sp50;
    s64 sp48;
    s64 sp10;
    s64 sp8;
    struct gr2_data *sp0;
    s32 temp_a6;
    s32 temp_s3_2;
    s32 var_s2;
    s32 var_s4_2;
    s64 var_s0;
    s64 var_s4;
    struct gr2_data *temp_v0_2;
    struct gr2_hw *var_s6;
    struct gr2_info *var_s3;
    u8 temp_a5;
    u8 temp_s3;
    u8 temp_v0;
    void *var_s0_2;
    void *var_s0_3;

    var_s0 = saved_reg_s0;
    var_s4 = saved_reg_s4;
    sp10 = 0;
    var_s2 = 0;
    var_s3 = *(struct gr2_info **)8;
    var_s6 = *NULL;
    if (var_s3 != NULL) {
        var_s0_2 = NULL;
        sp8 = 0x70;
loop_21:
        if (var_s0_2->unkC != 0) {
            var_s2 += 1;
            temp_v0 = var_s3->GfxBoardRev;
            if (temp_v0 < 0xCU) {
                switch (*(temp_v0 * 4)) {           /* switch 2; unable to parse jump table */
                case 0:                             /* switch 2 */
                case 1:                             /* switch 2 */
                case 2:                             /* switch 2 */
                case 3:                             /* switch 2 */
                    break;
                case 4:                             /* switch 2 */
                    if (is_indyelan() != 0) {

                    }
                    break;
                case 9:                             /* switch 2 */
                case 10:                            /* switch 2 */
                case 11:                            /* switch 2 */
                    if (is_indyelan() != 0) {

                    }
                    break;
                }
            } else {
            case 5:                                 /* switch 2 */
            case 6:                                 /* switch 2 */
            case 7:                                 /* switch 2 */
            case 8:                                 /* switch 2 */
            }
            temp_s3 = var_s3->GEs;
            if (temp_s3 != 1) {
                if (temp_s3 != 2) {
                    if (temp_s3 != 4) {
                        if (temp_s3 == 8) {

                        }
                    }
                }
            }
            if (var_s3->Bitplanes == 0x18) {

            }
            add_to_inventory(7, 0xB, 0, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */));
            temp_v0_2 = kern_malloc(0x150U);
            sp0 = temp_v0_2;
            bzero(temp_v0_2, 0x150U);
            temp_v0_2->board_index = 0;
            temp_v0_2->info = var_s3;
            temp_v0_2->base = var_s6;
            temp_v0_2->unk148 = 0x28;
            temp_a5 = var_s3->MonitorType;
            if (temp_a5 != 0x82) {
                temp_a6 = temp_a5 & 7;
                if (temp_a5 != 0x83) {
                    switch (temp_a6) {              /* switch 1; irregular */
                    case 6:                         /* switch 1 */
                        break;
                    default:                        /* switch 1 */
block_13:
                        temp_v0_2->cursor_x_adj = 0xFA;
                        temp_v0_2->cursor_y_adj = 0x23;
                        goto block_14;
                    case 7:                         /* switch 1 */
                        if (var_s3->fp_id == 0xFF) {
                            goto block_25;
                        }
                        if (temp_a6 != 1) {
                            if (temp_a6 != 6) {
                                goto block_13;
                            }
                        } else {
                        case 1:                     /* switch 1 */
                            temp_v0_2->cursor_y_adj = 0x22;
                            temp_v0_2->cursor_x_adj = 0xF0;
                            var_s3->pad37 = 0x17;
                        }
                        break;
                    }
                } else {
block_25:
                    sp10 = 1;
                    temp_v0_2->cursor_y_adj = 0x23;
                    temp_v0_2->cursor_x_adj = 0xFA;
block_14:
                    var_s3->pad37 = 1;
                }
            } else {
                temp_v0_2->cursor_x_adj = 0x91;
                sp10 = 1;
                temp_v0_2->cursor_y_adj = 0x1E;
                var_s3->pad37 = 0x1D;
            }
            temp_v0_2->unk34 = 0x20;
            temp_v0_2->unkC = 1;
            temp_v0_2->unk38 = &temp_v0_2->padB0[0x10];
            if (vdma_rev.unk7800 == 0) {
                temp_v0_2->pcx_data = kern_malloc(0x190U);
            }
            var_s0_2->unk4 = temp_v0_2;
            Gr2RetraceInit(temp_v0_2);
            if (fastclock.unk7800 == 0) {
                enable_fastclock();
            }
            if (is_fullhouse() != 0) {
                setgiovector(0, var_s0_2->unk10, 0, var_s0_2->unk14);
            } else if (is_indyelan() != 0) {
                setgiovector(0, (struct gr2_hw *)2, 0, 0);
                setgiovector(2, (struct gr2_hw *)2, 0, 0);
            }
            GfxRegisterBoard(sp8, temp_v0_2, temp_v0_2->info);
        }
        var_s3 = var_s0_2->unk24;
        var_s6 = var_s0_2->unk1C;
        var_s0_2 += 0x1C;
        if (var_s3 != NULL) {
            goto loop_21;
        }
        var_s0 = sp48;
        var_s4 = sp50;
    }
    if (is_fullhouse() != 0) {
        sp50 = var_s4;
        sp48 = var_s0;
        temp_s3_2 = splretr();
        var_s4_2 = 0;
        var_s0_3 = NULL;
loop_44:
        var_s4_2 += 1;
        if (var_s0_3->unkC != 0) {
            setgiovector(2, var_s0_3->unk10, 0, var_s0_3->unk14);
        }
        var_s0_3 += 0x1C;
        if (var_s4_2 < 2) {
            goto loop_44;
        }
        splx(temp_s3_2);
    }
    if (is_indyelan() != 0) {
        *(s32 *)0xBFBD9848 |= 1;
        *(s32 *)0xBFBD984C |= 1;
    }
    if (var_s2 != 0) {
        sp0->fp_installed = (u8) sp10;
    }
}

void _Gr2mkkdmada(s32 arg0, s32 arg1, void *arg2, s32 arg3) {
    s32 temp_s4;
    s32 var_a4;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s5;
    s32 var_s7;
    void *var_s0;
    void *var_s6;

    var_s1 = arg1;
    var_s0 = arg2;
    var_s3 = arg3;
    var_s2 = arg0;
    temp_s4 = kvtophys(M2C_ERROR(/* Read from unset register $a4 */));
    if (var_s3 == 2) {
        var_s3 = 0x10000000;
    }
    var_s7 = var_s2 & 0xFFF;
    if (var_s1 != 0) {
        unksp10 = var_s3 | 0x40000000;
loop_8:
        var_s0->unk0 = kvtophys(var_s2);
        if ((var_s1 + var_s7) >= 0x1000) {
            var_s5 = 0x1000 - var_s7;
            var_a4 = var_s5 | var_s3;
            if (var_s5 == 0x1000) {
                goto block_10;
            }
            goto block_4;
        }
        var_s5 = var_s1;
        var_a4 = var_s5 | var_s3;
        if (var_s1 != 0x1000) {
block_4:
            var_s0->unk4 = var_a4;
        } else {
block_10:
            var_s0->unk4 = (s32) unksp10;
        }
        var_s0->unkE = 0;
        var_s0->unkC = 0;
        var_s0->unk8 = temp_s4;
        var_s6 = var_s0;
        var_s0 += 0x14;
        if (_Gr2CrossPage(var_s0) != 0) {
            var_s0 += 0x14;
        }
        var_s1 -= var_s5;
        var_s2 += var_s5;
        var_s7 = 0;
        var_s6->unk10 = kvtophys((s32) var_s0);
        if (var_s1 != 0) {
            goto loop_8;
        }
    } else {
        var_s6 = subroutine_arg0;
    }
    var_s6->unk4 = (s32) (var_s6->unk4 | 0x20000000);
}

s32 _Gr2UcodeReady(struct gr2_data *arg0) {
    s32 var_s1;
    s32 var_v0;
    void *temp_s5;

    var_s1 = 0;
    temp_s5 = arg0->base + 0x70000;
loop_1:
    if (!(temp_s5->unk-5FC0 & 2)) {
        if (var_s1 <= 0xF4240) {
            us_delay(1);
            var_s1 += 1;
            goto loop_1;
        }
        var_v0 = -1;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

s32 _Gr2CXSaveRestore(struct gr2_data *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp0;
    s32 temp_s3;
    s32 temp_v0;
    s32 var_v0;
    s64 var_ra;
    struct gr2_hw *temp_s5;

    var_ra = saved_reg_ra;
    temp_v0 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_s5 = arg0->base;
    temp_s5->hq.dmasync.w = 2;
    temp_s5->hq.fin2.w = 0;
    temp_s3 = M2C_ERROR(/* Read from unset register $a5 */);
    sp0 = (s64) arg0->pcx_data;
    if (vdma_rev.unk7800 == 0) {
        sp38 = (s64) temp_v0;
        _Gr2mkkdmada(arg1, arg2, (void *) sp0, temp_s3);
        var_ra = sp40;
    }
    switch (arg3) {                                 /* irregular */
    case 0x1E3:
        ((arg3 * 4) + temp_s5)->unk40000 = temp_v0;
        break;
    case 0x1E1:
        ((arg3 * 4) + temp_s5)->unk40000 = 0;
        break;
    case 0x1E4:
        ((arg3 * 4) + temp_s5)->unk40000 = temp_v0;
        temp_s5->fifo[0x1DF] = arg2 >> 2;
        break;
    case 0x1E2:
        ((arg3 * 4) + temp_s5)->unk40000 = (s32) (arg2 >> 2);
        break;
    }
    sp40 = var_ra;
    if (temp_s3 != 0) {
        dki_dcache_inval(arg1, arg2);
    } else {
        dki_dcache_wb(arg1, arg2);
    }
    psema(&mcgdma + 0x7800, 0x19);
    if (vdma_rev.unk7800 > 0) {
        vdma_kv(arg1, arg2, temp_s3, kvtophys((s32) (temp_s5 + 0x6A068)));
    } else {
        fakePICdma(sp0, 0x54);
    }
    vsema(&mcgdma + 0x7800);
    if (_Gr2UcodeReady(arg0) != 0) {
        cmn_err(4, (? *)0xD0, 0, 0xE0U);
        gr2_error(arg0);
        var_v0 = -1;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

s32 Gr2PcxSwitch(struct gr2_data *data, void *rn1, void *rn2) {
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x38, 0x3c], gap at: 0x18. */
s32 Gr2PcxSwap(struct gr2_data *data, void *rn1, void *rn2, void *rn3) {
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_6;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a6_2;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a2;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_a3_3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_at;
    s32 var_t1;
    s32 var_v0;
    s32 var_v0_3;
    u32 temp_a3;
    u32 temp_a6;
    u32 temp_a7_2;
    u32 temp_t0_2;
    u32 temp_t1;
    u32 var_a1;
    u32 var_a2_2;
    u32 var_a7;
    u32 var_t0_5;
    u8 temp_v0_8;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a2_5;
    void *temp_a5;
    void *temp_a7;
    void *temp_t2;
    void *temp_v0_7;
    void *var_a3_2;
    void *var_s2;
    void *var_t0;
    void *var_t0_2;
    void *var_t0_3;
    void *var_t0_4;
    void *var_v0_2;

    unksp28 = (s64) rn3;
    unksp10 = (s64) data->info;
    unksp20 = (s64) data->base;
    gfx_waitc_on();
    var_v0_2 = rn2->unk4C;
    temp_a2 = var_v0_2->unk4;
    __sbss18 = var_v0_2;
    if (temp_a2 >= 0) {
        temp_a3 = var_v0_2->unk8;
        if ((temp_a2 < 4) && (temp_a3 < 3U)) {
            if (temp_a2 != 1) {
                var_s2 = unksp20 + 0x40000;
                unksp30 = unksp20 + 0x70000;
                var_a1 = rn2 - 0;
                goto block_5;
            }
            var_a1 = rn2 - 0;
            var_s2 = unksp20 + 0x40000;
            unksp30 = unksp20 + 0x70000;
            if (var_v0_2->unkC != temp_a3) {
                unksp18 = (s64) var_a1;
                unksp30->unk-5FB4 = 0;
                unksp20->unk407C0 = var_a1;
                unksp20->unk4077C = 3U;
                unksp20->unk4077C = (u32) var_v0_2->unk8;
                if (_Gr2UcodeReady(data, var_a1, temp_a2, temp_a3) != 0) {
                    cmn_err(4, (? *)0xD0, 0, 0x168U);
                    gr2_error(data);
                    gfx_waitc_off();
                    var_v0 = -1;
                } else {
                    temp_a2_2 = unksp20->unkC08;
                    __sbssC = temp_a2_2;
                    if ((temp_a2_2 > 0) && (temp_v0 = kmem_alloc(temp_a2_2 * 4, 0x800, (void *) temp_a2_2), rn2->unk8 = temp_v0, temp_a2_3 = __sbssC * 4, rn2->unkC = temp_a2_3, var_a1 = (u32) unksp18, (_Gr2CXSaveRestore(data, temp_v0, temp_a2_3, 0x1E1) != 0))) {
                        kmem_free(rn2->unk8, rn2->unkC);
                        rn2->unk8 = 0;
                        gfx_waitc_off();
                        var_v0 = -1;
                    } else {
                        var_v0_2 = __sbss18;
                        var_v0_2->unk4 = 2;
                        var_v0_2->unk8 = (s32) var_v0_2->unkC;
                        goto block_5;
                    }
                }
            } else {
block_5:
                unksp30->unk-5FB4 = 0;
                var_s2->unk7C0 = var_a1;
                var_s2->unk77C = (s32) var_v0_2->unk4;
                var_s2->unk77C = (s32) var_v0_2->unk8;
                if (_Gr2UcodeReady(data, var_a1) != 0) {
                    cmn_err(4, (? *)0xD0, 0, 0x168U);
                    gr2_error(data);
                    gfx_waitc_off();
                    var_v0 = -1;
                } else {
                    if (unksp28 != 0) {
                        temp_a5 = unksp28->unk4C;
                        __sbss10 = temp_a5;
                        temp_a5->unk0 = (s32) (unksp30->unk-5FC0 & 1);
                    }
                    __sbss4 = (s32) unksp28;
                    if (unksp28 != 0) {
                        var_t0 = unksp28->unk4C;
                        temp_a2_4 = unksp20->unkC10;
                        __sbss14 = var_t0;
                        var_a3 = temp_a2_4;
                        __sbss8 = temp_a2_4;
                        if (temp_a2_4 > 0) {
                            temp_a6 = var_t0->unk54;
                            var_t1 = temp_a2_4;
                            var_v0_3 = var_t0->unk4C;
                            var_t0->unk50 = temp_a2_4;
                            if (temp_a6 < (u32) temp_a2_4) {
                                if (var_v0_3 != 0) {
                                    kvpfree(var_v0_3, (u32) ((temp_a6 * 4) + 0xFFF) >> 0xC, temp_a2_4, var_a3);
                                    var_t0 = __sbss14;
                                    var_a3 = __sbss8;
                                }
                                var_t0->unk54 = var_a3;
                                var_v0_3 = kvpalloc((u32) ((var_a3 * 4) + 0xFFF) >> 0xC, 0, 0, var_a3);
                                var_t1 = __sbss14->unk50;
                                __sbss14->unk4C = var_v0_3;
                            }
                            if (_Gr2CXSaveRestore(data, var_v0_3, var_t1 * 4, 0x1E3) != 0) {
                                gfx_waitc_off();
                                var_v0 = -1;
                            } else {
                                __sbss14->unk48 = (s32) (__sbss14->unk48 | 1);
                                goto block_21;
                            }
                        } else {
                            var_t0->unk48 = (s32) (var_t0->unk48 & ~1);
                            goto block_21;
                        }
                    } else {
block_21:
                        var_a0 = __sbss18->unk48;
                        var_a4 = var_a0 & 2;
                        if (var_a0 & 1) {
                            if (_Gr2CXSaveRestore(data, __sbss18->unk4C, __sbss18->unk50 * 4, 0x1E4) != 0) {
                                gfx_waitc_off();
                                var_v0 = -1;
                            } else {
                                var_a0 = __sbss18->unk48;
                                var_a4 = var_a0 & 2;
                                goto block_25;
                            }
                        } else {
block_25:
                            var_a5 = var_a0 & 4;
                            if (var_a4 != 0) {
                                temp_a0 = data->unkB4;
                                if (temp_a0 != rn2) {
                                    if (temp_a0 != NULL) {
                                        var_t0_2 = temp_a0->unk4C;
                                        var_a1_2 = var_t0_2->unk58;
                                        __sbss14 = var_t0_2;
                                        if (var_a1_2 == 0) {
                                            temp_v0_2 = kvpalloc((u32) (var_t0_2->unk5C + 0xFFF) >> 0xC, 0, 0);
                                            var_t0_2 = __sbss14;
                                            var_a1_2 = temp_v0_2;
                                            var_t0_2->unk58 = temp_v0_2;
                                        }
                                        if (_Gr2CXSaveRestore(data, var_a1_2, var_t0_2->unk5C, 0x1E3) != 0) {
                                            gfx_waitc_off();
                                            var_v0 = -1;
                                        } else {
                                            goto block_42;
                                        }
                                    } else {
block_42:
                                        temp_a1 = __sbss18->unk58;
                                        if (temp_a1 != 0) {
                                            if (_Gr2CXSaveRestore(data, temp_a1, __sbss18->unk5C, 0x1E4) != 0) {
                                                gfx_waitc_off();
                                                var_v0 = -1;
                                            } else {
                                                goto block_32;
                                            }
                                        } else {
                                            goto block_32;
                                        }
                                    }
                                } else {
block_32:
                                    data->unkB4 = rn2;
                                    var_a0 = __sbss18->unk48;
                                    var_a5 = var_a0 & 4;
                                    goto block_33;
                                }
                            } else {
block_33:
                                var_a4_2 = var_a0 & 8;
                                if (var_a5 != 0) {
                                    temp_a0_2 = data->unkB8;
                                    if (temp_a0_2 != rn2) {
                                        if (temp_a0_2 != NULL) {
                                            var_t0_3 = temp_a0_2->unk4C;
                                            var_a1_3 = var_t0_3->unk60;
                                            __sbss14 = var_t0_3;
                                            if (var_a1_3 == 0) {
                                                temp_v0_3 = kmem_alloc(var_t0_3->unk64, 0x800);
                                                var_t0_3 = __sbss14;
                                                var_a1_3 = temp_v0_3;
                                                var_t0_3->unk60 = temp_v0_3;
                                            }
                                            if (_Gr2CXSaveRestore(data, var_a1_3, var_t0_3->unk64, 0x1E3) != 0) {
                                                gfx_waitc_off();
                                                var_v0 = -1;
                                            } else {
                                                goto block_53;
                                            }
                                        } else {
block_53:
                                            temp_a1_2 = __sbss18->unk60;
                                            if (temp_a1_2 != 0) {
                                                if (_Gr2CXSaveRestore(data, temp_a1_2, __sbss18->unk64, 0x1E4) != 0) {
                                                    gfx_waitc_off();
                                                    var_v0 = -1;
                                                } else {
                                                    goto block_46;
                                                }
                                            } else {
                                                goto block_46;
                                            }
                                        }
                                    } else {
block_46:
                                        data->unkB8 = rn2;
                                        var_a4_2 = __sbss18->unk48 & 8;
                                        goto block_47;
                                    }
                                } else {
block_47:
                                    if (var_a4_2 != 0) {
                                        temp_a0_3 = data->unkBC;
                                        if (temp_a0_3 != rn2) {
                                            if (temp_a0_3 != NULL) {
                                                var_t0_4 = temp_a0_3->unk4C;
                                                var_a1_4 = var_t0_4->unk68;
                                                __sbss14 = var_t0_4;
                                                if (var_a1_4 == 0) {
                                                    temp_v0_4 = kmem_alloc(var_t0_4->unk6C, 0x800);
                                                    var_t0_4 = __sbss14;
                                                    var_a1_4 = temp_v0_4;
                                                    var_t0_4->unk68 = temp_v0_4;
                                                }
                                                if (_Gr2CXSaveRestore(data, var_a1_4, var_t0_4->unk6C, 0x1E3) != 0) {
                                                    gfx_waitc_off();
                                                    var_v0 = -1;
                                                } else {
                                                    goto block_60;
                                                }
                                            } else {
block_60:
                                                temp_a1_3 = __sbss18->unk68;
                                                if ((temp_a1_3 != 0) && (_Gr2CXSaveRestore(data, temp_a1_3, __sbss18->unk6C, 0x1E4) != 0)) {
                                                    gfx_waitc_off();
                                                    var_v0 = -1;
                                                } else {
                                                    goto block_56;
                                                }
                                            }
                                        } else {
block_56:
                                            data->unkBC = rn2;
                                            goto block_57;
                                        }
                                    } else {
block_57:
                                        temp_v0_5 = unksp20->unkC08;
                                        __sbssC = temp_v0_5;
                                        if (temp_v0_5 > 0) {
                                            temp_a2_5 = unksp20->unkC0C;
                                            __sbss0 = temp_a2_5;
                                            __sbss14 = temp_a2_5->unk4C;
                                            temp_v0_6 = kmem_alloc(temp_v0_5 * 4, 0x800, temp_a2_5, 0);
                                            __sbss0->unk8 = temp_v0_6;
                                            temp_a2_6 = __sbssC * 4;
                                            __sbss0->unkC = temp_a2_6;
                                            if (_Gr2CXSaveRestore(data, temp_v0_6, temp_a2_6, 0x1E1) != 0) {
                                                kmem_free(__sbss0->unk8, __sbss0->unkC);
                                                __sbss0->unk8 = 0;
                                                gfx_waitc_off();
                                                var_v0 = -1;
                                            } else {
                                                __sbss14->unk4 = 2;
                                                goto block_64;
                                            }
                                        } else {
block_64:
                                            temp_v0_7 = __sbss18;
                                            var_a2 = temp_v0_7->unk4;
                                            if (var_a2 == 2) {
                                                temp_a1_4 = rn2->unkC;
                                                temp_a0_4 = rn2->unk8;
                                                if (_Gr2CXSaveRestore(data, rn2->unk8, rn2->unkC, 0x1E2) != 0) {
                                                    kmem_free(temp_a0_4, temp_a1_4);
                                                    rn2->unk8 = 0;
                                                    gfx_waitc_off();
                                                    var_v0 = -1;
                                                } else {
                                                    kmem_free(temp_a0_4, temp_a1_4);
                                                    rn2->unk8 = 0;
                                                    var_a2 = __sbss18->unk4;
                                                    goto block_67;
                                                }
                                            } else {
block_67:
                                                if (var_a2 != 0) {

                                                } else if (temp_v0_7->unk8 != 2) {
                                                    temp_v0_8 = unksp10->unk2E;
                                                    if (temp_v0_8 < 0xCU) {
                                                        switch (*(temp_v0_8 * 4)) { /* unable to parse jump table */
                                                        case 0:
                                                        case 1:
                                                        case 2:
                                                        case 3:
                                                            var_s2->unk4 = 0;
                                                            break;
                                                        case 4:
                                                        case 9:
                                                        case 10:
                                                        case 11:
                                                            if (is_indyelan() != 0) {
                                                                var_s2->unk4 = 3;
                                                            } else {
                                                                var_s2->unk4 = 1;
                                                            }
                                                            break;
                                                        }
                                                    } else {
                                                    case 5:
                                                    case 6:
                                                    case 7:
                                                    case 8:
                                                        var_s2->unk4 = 2;
                                                    }
                                                }
                                                var_a2_2 = ((void *) unksp10)->unk22 - 1;
                                                temp_t1 = ((void *) unksp10)->unk20 - 1;
                                                __sbss1C = temp_t1;
                                                if (((void *) unksp10)->unk2D == 0x82) {
                                                    if (var_a2_2 < 0x300U) {
                                                        var_a2_2 += 0x100;
                                                    }
                                                }
                                                __sbss20 = var_a2_2;
                                                if (rn2->unk4 & 2) {
                                                    temp_a7 = rn2->unk50;
                                                    temp_a3_2 = temp_a7->unk8;
                                                    if (rn2->unk58 != temp_a3_2) {
                                                        rn2->unk58 = temp_a3_2;
                                                        temp_t2 = temp_a7 + 0x40;
                                                        var_s2->unk794 = (s32) temp_t2->unk8;
                                                        var_s2->unk77C = (s32) (0x400 - (temp_t2->unkC + temp_t2->unk14));
                                                        var_s2->unk77C = (s32) temp_t2->unk10;
                                                        var_s2->unk77C = (s32) temp_t2->unk14;
                                                        var_s2->unk77C = (s32) temp_t2->unk20;
                                                        var_s2->unk77C = (s32) temp_t2->unk24;
                                                        temp_a6_2 = temp_t2->unk18;
                                                        var_a1_5 = 0;
                                                        var_s2->unk77C = temp_a6_2;
                                                        if ((temp_a6_2 > 0) && (temp_a6_2 < 5)) {
                                                            var_a2_3 = 0;
                                                            var_a3_2 = temp_t2->unk1C;
                                                            do {
                                                                temp_v1 = var_a3_2->unk0;
                                                                temp_t0 = var_a3_2->unk8;
                                                                var_a3_2 += 0x10;
                                                                var_a1_5 += 2;
                                                                temp_t0_2 = (temp_t0 + temp_v1) - 1;
                                                                var_s2->unk77C = (s32) ((temp_t0_2 << 0xB) | temp_v1);
                                                                var_a2_3 += 1;
                                                                temp_a7_2 = 0x3FF - var_a3_2->unk-C;
                                                                var_s2->unk77C = (s32) (((temp_a7_2 - var_a3_2->unk-4) + 1) | (temp_a7_2 << 0xA));
                                                            } while (var_a2_3 < temp_a6_2);
                                                            __sbss28 = temp_t0_2;
                                                            __sbss2C = temp_a7_2;
                                                            goto block_77;
                                                        }
                                                        var_at = 0 < 8;
                                                        if (temp_a6_2 == 0) {
                                                            var_at = 0 < 8;
                                                            if (temp_t2->unk24 != 0) {
                                                                var_a6 = temp_t2->unk8;
                                                                var_t0_5 = (temp_t2->unk10 + var_a6) - 1;
                                                                var_a7 = 0x3FF - temp_t2->unkC;
                                                                var_a3_3 = (var_a7 - temp_t2->unk14) + 1;
                                                                if (var_a6 < 0) {
                                                                    var_a6 = 0;
                                                                }
                                                                if (temp_t1 >= var_t0_5) {
                                                                    __sbss28 = var_t0_5;
                                                                } else {
                                                                    var_t0_5 = temp_t1;
                                                                    __sbss28 = temp_t1;
                                                                }
                                                                if (var_a2_2 >= var_a7) {
                                                                    __sbss2C = var_a7;
                                                                } else {
                                                                    var_a7 = var_a2_2;
                                                                    __sbss2C = var_a2_2;
                                                                }
                                                                if (var_a3_3 < 0) {
                                                                    var_a3_3 = 0;
                                                                }
                                                                var_a1_5 = 2;
                                                                var_s2->unk77C = (s32) ((var_t0_5 << 0xB) | var_a6);
                                                                var_s2->unk77C = (s32) ((var_a7 << 0xA) | var_a3_3);
block_77:
                                                                var_at = var_a1_5 < 8;
                                                            }
                                                        }
                                                        if (var_at != 0) {
                                                            do {
                                                                var_a1_5 += 1;
                                                                var_s2->unk77C = 0;
                                                            } while (var_a1_5 < 8);
                                                        }
                                                        __sbss24 = var_a1_5;
                                                    }
                                                }
                                                unksp30->unk-5FB4 = 0;
                                                temp_v0_7->unk4 = 1;
                                                temp_a3_3 = temp_v0_7->unk8;
                                                if (temp_v0_7->unk0 != 0) {
                                                    if (temp_a3_3 != 2) {
                                                        var_s2->unk780 = 1;
                                                    } else {
                                                        var_s2->unk798 = 1;
                                                    }
                                                    if (_Gr2UcodeReady(data) != 0) {
                                                        cmn_err(4, (? *)0xD0, 0, 0x1D8U);
                                                        gr2_error(data);
                                                        gfx_waitc_off();
                                                        var_v0 = -1;
                                                    } else {
                                                        unksp30->unk-5000 = (s32) __sbss18->unk0;
                                                        goto block_87;
                                                    }
                                                } else {
                                                    if (temp_a3_3 != 2) {
                                                        var_s2->unk780 = 0;
                                                    } else {
                                                        var_s2->unk798 = 0;
                                                    }
block_87:
                                                    gfx_waitc_off();
                                                    var_v0 = 0;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            goto block_8;
        }
    } else {
block_8:
        cmn_err(4, NULL, (s64) temp_a2, var_v0_2->unk8);
        gr2_error(data);
        gfx_waitc_off();
        var_v0 = -1;
    }
    return var_v0;
}

s32 Gr2Start(struct gfx_gfx *gfxp) {
    s64 sp10;
    s32 temp_a1;
    s32 var_v0;
    struct gr2_data *temp_s0;
    struct gr2_info *var_a2;
    u8 temp_a0;

    temp_s0 = gfxp->gx_bdata;
    sp10 = gr2_base2index(temp_s0->base);
    if (is_fullhouse() != 0) {
        temp_a1 = sp10 * 0x1C;
        setgiovector(2, temp_a1->unk10, 0, temp_a1->unk14);
    } else if (is_indyelan() != 0) {
        setgiovector(2, (struct gr2_hw *)2, 0, 0);
    }
    var_a2 = temp_s0->info;
    var_a2->pad35 = 0;
    subroutine_arg0->unk6A070 = 0;
    subroutine_arg0->unk6A078 = 0;
    subroutine_arg0->unk6A04C = 0;
    temp_a0 = subroutine_arg2->unk2E;
    if (temp_a0 < 0xCU) {
        var_a2 = (struct gr2_info *)1;
        switch (*(temp_a0 * 4)) {                   /* unable to parse jump table */
        case 0:
        case 1:
        case 2:
        case 3:
            subroutine_arg0->unk4077C = 0;
            break;
        case 4:
        case 9:
        case 10:
        case 11:
            subroutine_arg0->unk4077C = 1;
            break;
        }
    } else {
    case 5:
    case 6:
    case 7:
    case 8:
        subroutine_arg0->unk4077C = 2;
    }
    if (_Gr2UcodeReady(temp_s0, 0U, (s32) var_a2) != 0) {
        cmn_err(4, (? *)0xD0, 0, 0x258U);
        gr2_error(temp_s0);
        var_v0 = -1;
    } else {
        temp_s0->info->pad32 = (u8) subroutine_arg0->unk1FFE0;
        subroutine_arg0->unk1FFFC = 2;
        Gr2BlankScreen((struct gr2_hw *) subroutine_arg0, 0);
        var_v0 = 0;
    }
    return var_v0;
}

s32 Gr2Initialize(struct gfx_gfx *gfxp) {
    s32 temp_s5;
    s32 temp_s7;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_v0;
    struct gr2_data *temp_s1;
    struct gr2_hw *temp_s0;
    struct gr2_info *temp_s2;
    u8 temp_a0;

    temp_s1 = gfxp->gx_bdata;
    temp_s2 = temp_s1->info;
    temp_s0 = temp_s1->base;
    htp_register_board(NULL, 0, 0U, 0U);
    gr2_base2index(temp_s0);
    temp_s7 = gr2_base2index(temp_s0);
    temp_s5 = temp_s7 * 0x1C;
    if (is_fullhouse() != 0) {
        setgiovector(2, temp_s5->unk10, 0, temp_s5->unk14);
    } else if (is_indyelan() != 0) {
        setgiovector(2, (struct gr2_hw *)2, 0, temp_s5->unk14);
    }
    Gr2Reset(temp_s5->unk10);
    Gr2StartClock(temp_s0, temp_s1->info);
    temp_s1->fp_installed = 0;
    __sdata4 = 0;
    temp_a0 = temp_s2->MonitorType;
    __sdata0 = 0;
    if (temp_a0 != 0x82) {
        temp_v0 = temp_a0 & 7;
        if (temp_a0 != 0x83) {
            switch (temp_v0) {                      /* irregular */
            case 6:
                break;
            default:
block_8:
                temp_s1->cursor_x_adj = 0xFA;
                temp_s1->cursor_y_adj = 0x23;
                temp_s2->pad37 = 1;
                break;
            case 7:
                if (temp_s2->fp_id == 0xFF) {
                    goto block_15;
                }
                if (temp_v0 != 1) {
                    if (temp_v0 != 6) {
                        goto block_8;
                    }
                } else {
                case 1:
                    temp_s1->cursor_x_adj = 0xF0;
                    temp_s1->cursor_y_adj = 0x22;
                    temp_s2->pad37 = 0x17;
                }
                break;
            }
        } else {
block_15:
            temp_s1->cursor_x_adj = 0xFA;
            temp_s1->cursor_y_adj = 0x23;
            temp_s2->pad37 = 1;
            temp_s1->fp_installed = 1;
        }
    } else {
        temp_s1->cursor_x_adj = 0x91;
        temp_s1->cursor_y_adj = 0x1E;
        temp_s2->pad37 = 0x1D;
        temp_s1->fp_installed = 1;
    }
    if (Gr2Init(temp_s0, temp_s1->info) != 0) {
        var_v0 = 0;
        if (temp_s1->info->corona_rev != 0) {
            temp_v0_2 = ev1_softprobe(temp_s0);
            if (temp_v0_2 != 0) {
                ev1_reset(temp_v0_2);
            }
            var_v0 = 0;
        }
    } else {
        cmn_err(4, NULL, (s64) temp_s0);
        var_v0 = 5;
    }
    return var_v0;
}

s64 Gr2Download(struct gfx_gfx *gfxp, void *args) {
    s64 sp18;
    s64 sp0;
    GE_RECORD *temp_v0_2;
    s32 temp_v0;
    s64 var_a3;
    s64 var_v0;
    struct gr2_hw *temp_s1;
    u16 temp_a2;

    temp_v0 = args->unk0;
    temp_s1 = gfxp->gx_bdata->base;
    if ((temp_v0 > 0) && (temp_v0 <= 0x100000)) {
        if (userdma(args->unk4, temp_v0, 0, 0) != 0) {
            var_v0 = 0xE;
            temp_s1->shram[0x7FFF] = 0;
        } else {
            temp_v0_2 = maputokv(args->unk4, args->unk0, 0x10);
            temp_a2 = temp_v0_2->address;
            sp0 = (s64) temp_v0_2;
            if (temp_a2 != 0x965E) {
                if (temp_a2 != 0x966E) {
                    cmn_err(4, NULL, (s64) temp_a2);
                    var_a3 = 5;
                    goto block_9;
                }
                if (Gr2DownloadGE7(temp_s1, temp_v0_2, 0) != 0) {
                    sp18 = 0;
                } else {
                    printf(NULL);
                    var_a3 = 1;
                    goto block_9;
                }
            } else if (Gr2DownloadHQ2(temp_s1, (HQ_RECORD *) temp_v0_2) != 0) {
                sp18 = 0;
            } else {
                printf(NULL);
                var_a3 = 1;
block_9:
                sp18 = var_a3;
            }
            undma(args->unk4, args->unk0, 0);
            unmaputokv(sp0, args->unk0);
            if (sp18 != 0) {
                temp_s1->shram[0x7FFF] = 0;
            }
            var_v0 = sp18;
        }
    } else {
        cmn_err(4, NULL, (s64) temp_v0);
        var_v0 = 0x16;
        temp_s1->shram[0x7FFF] = 0;
    }
    return var_v0;
}

s32 Gr2InvalTLB(struct gfx_gfx *gfxp) {
    ddv_invaltlb(gfxp->gx_ddv, 0, -1);
    gfxp->gx_tlbmask |= 1;
    return 0;
}

s32 Gr2UnMapGfx(struct gfx_gfx *gfxp) {
    s64 sp0;
    s32 temp_a1;
    void *temp_v0;

    sp0 = (s64) gfxp;
    gfxp->gx_flags &= ~1;
    if (gfxp->gx_ddv == 0) {

    } else {
        temp_v0 = gthread_find(curthreadhandle());
        temp_a1 = temp_v0->unk4 & 4;
        if (temp_a1 != 0) {
            if (thread_issproc(temp_v0->unk0, temp_a1, -1) != 0) {

            } else {
                goto block_7;
            }
        } else {
block_7:
            if (ddv_invalphys_fal(sp0->unk14, 0, -1) == 0) {
                sp0->unk20 = 0;
            }
            Gr2InvalTLB((struct gfx_gfx *) sp0);
        }
    }
    return 0;
}

s32 Gr2MapGfx(struct gfx_gfx *gfxp, u32 arg1, s32 arg2) {
    s32 temp_a2;
    s32 temp_v0;
    s32 temp_v0_2;
    s64 temp_a3;
    struct gr2_data *temp_s2;
    u32 temp_s0;
    u64 temp_a1;

    temp_s0 = gfxp->gx_ddv;
    temp_s2 = gfxp->gx_bdata;
    temp_v0 = kvtophyspnum(temp_s2->base);
    ddv_mappages(temp_s0, 0U, temp_v0 << 0xC, 0x60);
    temp_v0_2 = kvtophyspnum((struct gr2_hw *) &temp_s2->base->hq, 0x6A000);
    temp_a1 = (u64) (((temp_v0_2 - temp_v0) << 0xC) << 0x20) >> 0x20;
    unksp28 = temp_a1;
    ddv_mappages(temp_s0, temp_a1, temp_v0_2 << 0xC, 2);
    temp_a2 = gfxp->gx_board->unk4;
    temp_a3 = unksp28 + 0x2000;
    unksp10 = temp_a3;
    if (temp_a2 == gfxp) {
        ddv_mappages(temp_s0, unksp10, kvtophyspnum((struct gr2_hw *) &temp_s2->base->vc1, 0x6C040, temp_a2, temp_a3) << 0xC, 1);
    }
    gfxp->gx_tlbmask = 1;
    gfxp->gx_flags |= 1;
    return 0;
}

s32 Gr2Attach(struct gfx_gfx *gfxp, void *arg1) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? var_a1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_v0;

    sp10 = (s64) gfxp;
    sp8 = (s64) arg1;
    sp0 = (s64) gfxp->gx_bdata;
    if ((s32) arg1 & 0xFFF) {
        var_v0 = 0x16;
    } else if (gfxdd_recycle(0, sp10, sp8) != 0) {
        var_v0 = 0;
    } else {
        temp_v0 = sp10->unk18;
        if (temp_v0 & 4) {
            var_a1 = 0x62000;
        } else {
            var_a1 = 0x6F000;
        }
        temp_v0_2 = gfxdd_mmap((temp_v0 & 8) != 0, var_a1, sp8, 0);
        if (temp_v0_2 != 0) {
            var_v0 = temp_v0_2;
        } else {
            sp10->unk18 = (s32) (sp10->unk18 & ~1);
            var_v0 = 0;
            sp0->unk80 = (s32) (sp0->unk80 + 1);
        }
    }
    return var_v0;
}

s32 Gr2Detach(struct gfx_gfx *gfxp) {
    u32 temp_at;

    temp_at = gfxp->gx_ddv;
    gfxp->gx_ddv = 0;
    gfxdd_munmap(temp_at);
    return 0;
}

s32 Gr2CreateDDRN(struct gr2_data *data, void *rn) {
    s32 var_v0;
    void **temp_a2;
    void *temp_v0;

    unksp8 = (s64) rn;
    temp_v0 = kern_malloc(0x74U);
    if (temp_v0 == NULL) {
        var_v0 = 0xC;
    } else {
        bzero(temp_v0, 0x74U);
        temp_v0->unk4 = 0;
        temp_a2 = unksp8->unk30;
        var_v0 = 0;
        if ((*temp_a2)->unk4 == temp_a2) {
            temp_v0->unkC = 2;
            temp_v0->unk8 = 2;
        } else {
            temp_v0->unkC = 0;
            temp_v0->unk8 = 0;
        }
        temp_v0->unk70 = 1;
        unksp8->unk4C = temp_v0;
    }
    return var_v0;
}

s32 Gr2DestroyDDRN(struct gr2_data *data, struct gfx_gfx *gfxp, void *rn) {
    s64 sp10;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_v0_2;
    s32 var_v0;
    struct gr2_hw *temp_a5;
    u16 *temp_a0_4;
    u16 *temp_a0_5;
    u16 *temp_s1;
    u32 temp_a2;
    void *temp_a2_2;
    void *temp_a3;
    void *temp_v0;

    temp_a5 = data->base;
    temp_s1 = rn->unk4C;
    if ((data->info->pad35 != 0) || (temp_s1->unk4 != 1)) {
        goto block_2;
    }
    temp_a3 = temp_a5 + 0x40000;
    temp_a5->hq.fin2.w = 0;
    temp_a5->fifo[0x1F0] = rn - 0;
    temp_a5->fifo[0x1DF] = 3;
    sp10 = (s64) temp_a3;
    temp_a2 = temp_s1->unk8;
    temp_a5->fifo[0x1DF] = temp_a2;
    if (_Gr2UcodeReady(data, temp_a2, (s32) temp_a3) == 0) {
        temp_v0 = data->unk4;
        if (temp_v0 != NULL) {
            if (temp_v0 != rn) {
                temp_a2_2 = temp_v0->unk4C;
                temp_a2_2->unk0 = (s32) (subroutine_arg0->unk-5FC0 & 1);
                subroutine_arg0->unk-5FB4 = 0;
                sp10->unk7C0 = (s32) (data->unk4 - 0);
                sp10->unk77C = (s32) temp_a2_2->unk4;
                sp10->unk77C = (s32) temp_a2_2->unk8;
                if (_Gr2UcodeReady(data) != 0) {
                    cmn_err(4, (? *)0xD0, 0, 0x398U);
                    gr2_error(data);
                    var_v0 = -1;
                } else {
                    subroutine_arg0->unk-5FB4 = 0;
                    temp_v0_2 = subroutine_arg2->unk8;
                    if (subroutine_arg2->unk0 != 0) {
                        if (temp_v0_2 != 2) {
                            sp10->unk780 = 1;
                        } else {
                            sp10->unk798 = 1;
                        }
                        if (_Gr2UcodeReady(data) != 0) {
                            cmn_err(4, (? *)0x418, 0, 0x1D8U);
                            gr2_error(data);
                            var_v0 = -1;
                        } else {
                            subroutine_arg0->unk-5000 = (s32) subroutine_arg2->unk0;
                            goto block_2;
                        }
                    } else {
                        if (temp_v0_2 != 2) {
                            sp10->unk780 = 0;
                        } else {
                            sp10->unk798 = 0;
                        }
                        goto block_2;
                    }
                }
            } else {
block_2:
                goto block_3;
            }
        } else {
block_3:
            Gr2RetraceCloseRN(data, (s32) rn);
            if (data->unkB4 == rn) {
                data->unkB4 = 0;
            }
            if (data->unkB8 == rn) {
                data->unkB8 = 0;
            }
            if (data->unkBC == rn) {
                data->unkBC = 0;
            }
            temp_a0 = rn->unk8;
            if (temp_a0 != 0) {
                kmem_free(temp_a0, rn->unkC);
                rn->unk8 = 0;
            }
            temp_a0_2 = temp_s1->unk4C;
            if (temp_a0_2 != 0) {
                kvpfree(temp_a0_2, (u32) ((temp_s1->unk54 * 4) + 0xFFF) >> 0xC);
                temp_s1->unk4C = 0;
            }
            temp_a0_3 = temp_s1->unk58;
            if (temp_a0_3 != 0) {
                kvpfree(temp_a0_3, (u32) (temp_s1->unk5C + 0xFFF) >> 0xC);
                temp_s1->unk58 = 0;
            }
            temp_a0_4 = temp_s1->unk60;
            if (temp_a0_4 != NULL) {
                kern_free(temp_a0_4);
                temp_s1->unk60 = NULL;
            }
            temp_a0_5 = temp_s1->unk68;
            if (temp_a0_5 != NULL) {
                kern_free(temp_a0_5);
                temp_s1->unk68 = NULL;
            }
            kern_free(rn->unk4C);
            var_v0 = 0;
            rn->unk4C = NULL;
        }
    } else {
        cmn_err(4, (? *)0xD0, 0, 0x398U);
        gr2_error(data);
        var_v0 = -1;
    }
    return var_v0;
}

s32 Gr2ValidateClip(struct gfx_gfx *gfxp, void *rn1, void *rn2, struct RRM_ValidateClip *clip) {
    s32 temp_a6;
    s32 temp_t0;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_at;
    struct gr2_hw *temp_a4;
    u32 temp_a7;
    u32 temp_t0_2;
    u32 var_a1_2;
    u32 var_a7;
    void *var_a1;

    temp_a4 = gfxp->gx_bdata->base;
    temp_a4->fifo[6] = 0;
    temp_a4->fifo[0x1E5] = (u32) clip->xorg;
    temp_a4->fifo[0x1DF] = 0x400 - (clip->yorg + clip->ysize);
    temp_a4->fifo[0x1DF] = (u32) clip->xsize;
    temp_a4->fifo[0x1DF] = (u32) clip->ysize;
    temp_a4->fifo[0x1DF] = (u32) clip->wid;
    temp_a4->fifo[0x1DF] = (u32) clip->obscured;
    temp_a6 = clip->numpieces;
    var_a5 = 0;
    var_a2 = 0;
    temp_a4->fifo[0x1DF] = (u32) temp_a6;
    if ((temp_a6 > 0) && (temp_a6 < 5)) {
        var_a1 = clip->piecelist;
        do {
            temp_v0 = var_a1->unk0;
            temp_t0 = var_a1->unk8;
            var_a1 += 0x10;
            var_a2 += 2;
            temp_t0_2 = (temp_t0 + temp_v0) - 1;
            temp_a4->fifo[0x1DF] = (temp_t0_2 << 0xB) | temp_v0;
            var_a5 += 1;
            temp_a7 = 0x3FF - var_a1->unk-C;
            temp_a4->fifo[0x1DF] = ((temp_a7 - var_a1->unk-4) + 1) | (temp_a7 << 0xA);
        } while (var_a5 < temp_a6);
        __sbss28 = temp_t0_2;
        __sbss2C = temp_a7;
        goto block_5;
    }
    var_at = 0 < 8;
    if (temp_a6 == 0) {
        if (clip->obscured != 0) {
            var_a6 = clip->xorg;
            var_a7 = 0x3FF - clip->yorg;
            var_a1_2 = (clip->xsize + var_a6) - 1;
            var_a5_2 = (var_a7 - clip->ysize) + 1;
            if (var_a6 < 0) {
                var_a6 = 0;
            }
            if ((u32) __sbss1C >= var_a1_2) {
                __sbss28 = var_a1_2;
            } else {
                var_a1_2 = __sbss1C;
                __sbss28 = __sbss1C;
            }
            if ((u32) __sbss20 < var_a7) {
                var_a7 = __sbss20;
                __sbss2C = __sbss20;
            } else {
                __sbss2C = var_a7;
            }
            if (var_a5_2 < 0) {
                var_a5_2 = 0;
            }
            var_a2 = 2;
            temp_a4->fifo[0x1DF] = (var_a1_2 << 0xB) | var_a6;
            temp_a4->fifo[0x1DF] = (var_a7 << 0xA) | var_a5_2;
        }
block_5:
        var_at = var_a2 < 8;
    }
    if (var_at != 0) {
        do {
            var_a2 += 1;
            temp_a4->fifo[0x1DF] = 0;
        } while (var_a2 < 8);
    }
    __sbss24 = var_a2;
    return 0;
}

s32 Gr2SetNullClip(struct RRM_ValidateClip *clip) {
    clip->fboffset = 0;
    clip->widcheck = 0;
    clip->obscured = 0;
    clip->numpieces = 0;
    clip->ysize = 0;
    clip->xsize = 0;
    clip->yorg = 0;
    clip->xorg = 0;
    clip->wid = -1;
    clip->changed = 1;
    return 0;
}

s32 Gr2ChangeCXSize(s64 arg0, void *arg1, s32 arg2) {
    s64 sp0;
    s32 temp_a3;
    s32 var_v0;
    void *temp_a6;

    if ((arg2 != 0) && (arg2 != 1)) {
        cmn_err(4, (? *)0x428, 0, 0x438U);
        var_v0 = -1;
        goto block_6;
    }
    temp_a6 = arg1->unk4C;
    temp_a3 = temp_a6->unk4;
    sp0 = arg0;
    if (temp_a3 == 2) {
        temp_a6->unk8 = arg2;
        return 0;
    }
    temp_a6->unkC = arg2;
    rrmInvalidateRN(sp0, 1, temp_a3);
    rrmUnMapGfx(sp0);
    var_v0 = 0;
block_6:
    return var_v0;
}

s32 Gr2AllocCXData(s64 arg0, void *arg1, s32 arg2) {
    s32 temp_a3;
    s32 var_v0;
    void *temp_a0;

    if (arg2 & 0x3E) {
        temp_a0 = arg1->unk4C;
        if (temp_a0->unk48 & arg2) {
            cmn_err(4, &.srdata, 0);
            var_v0 = -1;
        } else {
            temp_a0->unk48 = (s32) (temp_a0->unk48 | arg2);
            if (arg2 & 2) {
                temp_a0->unk5C = 0x12C0;
            }
            if (arg2 & 4) {
                temp_a0->unk64 = 0x400;
            }
            temp_a3 = arg2 & 8;
            if (temp_a3 != 0) {
                temp_a0->unk6C = 0x400;
            }
            rrmInvalidateRN(arg0, 1, temp_a3);
            rrmUnMapGfx(arg0);
            var_v0 = 0;
        }
    } else {
        cmn_err(4, &.srdata, 0);
        var_v0 = -1;
    }
    return var_v0;
}

void _Gr2CreateDummyDID(struct gr2_hw *arg0, u32 arg1, s8 arg2, u16 arg3) {
    u16 sp5E;
    s64 sp8;
    s64 sp0;
    s16 temp_v0_2;
    s32 temp_a1;
    s32 temp_a5;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s64 temp_s4;
    s64 temp_s4_2;
    s64 temp_v0;
    u16 *temp_s0;
    u16 temp_a0;
    u16 temp_a7;
    u16 temp_t0;
    u16 var_a7;
    u32 temp_at;
    u8 temp_a5_2;

    temp_v0 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_t0 = arg3 & 0xFFFF;
    sp5E = temp_t0;
    if (M2C_ERROR(/* Read from unset register $a4 */)->unk2D != 0x82) {
        sp0 = temp_v0;
        sp8 = 0x400;
    } else {
        sp0 = temp_v0;
        sp8 = 0x300;
    }
    arg0->vc1.addrhi.b = (u8) (arg2 >> 8);
    arg0->vc1.addrlo.b = arg2;
    temp_a0 = arg0->vc1.cmd2.h;
    temp_s4 = (s64) ((s64) temp_t0 << 0x30) >> 0x30;
    __sbss34 = temp_a0;
    var_a7 = __sbss34;
    temp_s0 = kern_malloc((temp_a0 * 2) + 0xA);
    temp_a1 = (s32) var_a7 >= 1;
    var_a0 = 1;
    if (temp_a1 != 0) {
        do {
            temp_a5 = var_a0 * 2;
            var_a0 = (var_a0 + 1) & 0xFFFF;
            *(temp_a5 + temp_s0) = arg0->vc1.cmd2.h;
        } while ((s32) var_a7 >= var_a0);
    }
    var_a0_2 = 1;
    if (temp_a1 != 0) {
loop_9:
        temp_v0_2 = ((s32) ((var_a0_2 * 2) + temp_s0)->unk2 >> 5) & 0xFFFF;
        if (temp_v0_2 >= (s32) sp0->unk20) {
            var_a7 = (u16) var_a0_2;
        } else if (temp_v0_2 == 0) {
            var_a7 = (u16) var_a0_2;
        }
        var_a0_2 = (var_a0_2 + 1) & 0xFFFF;
        if ((s32) var_a7 >= var_a0_2) {
            goto loop_9;
        }
        __sbss30 = temp_v0_2;
    }
    var_a0_3 = 1;
    do {
        temp_v1 = var_a0_3 + var_a7;
        var_a0_3 = (var_a0_3 + 1) & 0xFFFF;
        *((temp_v1 * 2) + temp_s0) = 0;
    } while (var_a0_3 < 5);
    *temp_s0 = var_a7 + 4;
    temp_a7 = (var_a7 + 4) & 0xFFFF;
    temp_v0_3 = temp_a7 * 2;
    __sbss34 = temp_a7;
    if (temp_s4 >= 0) {
        if ((u32) (temp_v0_3 + sp5E + 2) > 0x8000U) {
            temp_at = (sp8 * 2) + 0xAFE;
            arg0->vc1.addrhi.b = (u8) (temp_at >> 8);
            arg0->vc1.addrlo.b = (s8) temp_at;
            sp5E = arg0->vc1.cmd2.h;
        } else {
            Gr2LoadVC1SRAM(arg0, temp_s0, (u32) sp5E, temp_a7 + 1);
        }
    } else {
        temp_s4_2 = (s64) ((-2 - (temp_s4 + temp_v0_3)) << 0x30) >> 0x30;
        if (temp_s4_2 < 0x1400) {
            cmn_err(4, NULL);
            temp_a5_2 = (sp8 * 2) + 0xAFE;
            arg0->vc1.addrhi.b = (u8) (temp_a5_2 >> 8);
            arg0->vc1.addrlo.b = temp_a5_2;
            sp5E = arg0->vc1.cmd2.h;
        } else {
            sp5E = (u16) temp_s4_2;
            Gr2LoadVC1SRAM(arg0, temp_s0, temp_s4_2 & 0xFFFF, temp_a7 + 1);
        }
    }
    Gr2LoadVC1SRAM(arg0, &sp5E, arg1, 1U);
    kern_free(temp_s0);
}

s32 Gr2SetMonitor(struct gr2_data *arg0, s32 *arg1, s64 arg2) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    GE_RECORD *temp_v0;
    GE_RECORD *var_a7;
    GE_RECORD *var_a7_2;
    s16 temp_a7_2;
    s16 var_at;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a5;
    s32 temp_t0;
    s32 temp_t0_3;
    s32 temp_t8;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_s5_3;
    s32 var_s5_4;
    s32 var_t2;
    s32 var_v0;
    s32 var_v1;
    s64 var_a2;
    u16 temp_a2_4;
    u16 temp_a6;
    u16 temp_a7;
    u16 temp_t0_2;
    u16 temp_t3;
    u16 temp_v1;
    u16 temp_v1_2;
    u16 var_a4;
    u32 var_a3;
    u8 temp_a2_3;
    u8 temp_a3;
    u8 temp_at;
    u8 var_a2_2;
    u8 var_a5;
    void *var_s0;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    temp_t0 = *arg1;
    if (temp_t0 <= 0) {
        goto block_5;
    }
    sp38 = (s64) arg1;
    sp8 = (s64) arg0->info;
    sp40 = (s64) arg0->base;
    sp28 = (s64) arg0;
    sp30 = arg2;
    if (temp_t0 > 0x100000) {
        goto block_5;
    }
    if (userdma(sp38->unk4, temp_t0, 0, 0) == 0) {
        goto block_6;
    }
    var_v0 = 0xE;
block_4:
    return var_v0;
block_5:
    cmn_err(4, NULL, (s64) temp_t0);
    var_v0 = 0x16;
    goto block_4;
block_6:
    temp_v0 = maputokv(sp38->unk4, sp38->unk0, 0x10);
    __sdata4 = 0;
    __sdata0 = 0;
    __sbss44 = temp_v0;
    if (RRM_CheckValidFault(sp30) < 0) {
        goto block_101;
    }
    sp28->unk14C = 0;
    temp_a3 = sp8->unk2D;
    temp_v0_2 = __sbss44->unk874;
    if (temp_a3 == 0x82) {
        goto block_70;
    }
    if (temp_v0_2 == 0x1D) {
        goto block_75;
    }
block_9:
block_10:
    var_s0 = sp40 + 0x70000;
block_11:
    sp20 = splhi();
    Gr2BlankScreen((struct gr2_hw *) sp40, 1);
    temp_at = var_s0->unk-3FB0;
    __sbss40 = temp_at;
    sp18 = (s64) var_s0->unk-3FA8;
    var_s0->unk-3FB0 = temp_at;
    var_s0->unk-3FA8 = 3U;
    sp40->unk40008 = 0x6C;
    __sbss41 = var_s0->unk-3FAC;
    temp_a2 = __sbss44->unk864;
    if (sp8->unk2D == 0x82) {
        goto block_68;
    }
block_12:
    var_v1 = temp_a2 - 1;
    var_a3 = 0x400;
    sp10 = 0x400;
block_13:
    sp40->unk40008 = var_v1;
    if (var_s0->unk-5FC0 & 1) {
        goto block_15;
    }
    goto block_17;
block_15:
    sp50 = sp40 + 0x40000;
    cmn_err(4, (? *)0x518, (s64) temp_a2, var_a3);
block_17:
    var_s5 = 0;
    var_a2 = 0;
    sp40->unk4028C = 0;
loop_18:
    if (var_s0->unk-5FC0 & 1) {
        goto block_20;
    }
    sp48 = var_a2;
    goto block_66;
block_20:
    var_a2 = 1;
block_22:
    var_s0->unk-5000 = 0;
    if (var_a2 == 0) {
        goto block_99;
    }
block_23:
    var_a7 = __sbss44;
    if ((s32) sp8->unk2E >= 4) {
        goto block_84;
    }
    var_s5_2 = 0;
    var_s0->unk-4000 = (s8) var_a7->unk848;
loop_25:
    var_a7 += 1;
    var_s5_2 += 1;
    var_s0->unk-3FE0 = (u8) var_a7->unk84B;
    if (var_s5_2 < 0x11) {
        goto loop_25;
    }
    var_s0->unk-3FFC = 0;
    us_delay(0x3E8);
    if (__sbss44->unk868 == 0) {
        goto block_82;
    }
    var_s0->unk-3FFC = 0x41;
block_28:
    if (__sbss44->unk860 >= 0x402) {
        goto block_30;
    }
    var_at = 0x800;
    var_s0->unk-3FAC = 0U;
    var_s0->unk-3FB0 = 0U;
    goto block_33;
block_30:
    if ((sp28->unk84 - sp28->unk8C) >= 0x20) {
        goto block_32;
    }
    var_s0->unk-3FAC = 0U;
    var_s0->unk-3FB0 = 0U;
    var_s0->unk-3FC0 = 0x800;
    goto block_34;
block_32:
    var_at = 0x900;
    var_s0->unk-3FAC = 0U;
    var_s0->unk-3FB0 = 0U;
block_33:
    var_s0->unk-3FC0 = var_at;
block_34:
    Gr2LoadVC1SRAM((struct gr2_hw *) sp40, __sbss44 + 4, 0U, (u32) __sbss44->unk0 >> 1);
    Gr2LoadVC1SRAM((struct gr2_hw *) sp40, __sbss44 + 0x3C0, 0x800U, (u32) __sbss44->unk3BC >> 1);
    Gr2LoadVC1SRAM((struct gr2_hw *) sp40, __sbss44 + 0x428, 0x400U, (u32) __sbss44->unk424 >> 1);
    Gr2LoadVC1SRAM((struct gr2_hw *) sp40, __sbss44 + 0x7E4, 0x900U, (u32) __sbss44->unk7E0 >> 1);
    var_s0->unk-3FAC = 0U;
    var_s0->unk-3FB0 = 0x14U;
    if (__sbss44->unk868 == 0) {
        goto block_79;
    }
    var_s0->unk-3FC0 = 0x2000;
block_36:
    sp8->unk20 = (u16) __sbss44->unk860;
    sp8->unk22 = (u16) __sbss44->unk864;
    sp8->unk37 = (s8) __sbss44->unk874;
    sp28->unk94 = (s32) __sbss44->unk86C;
    sp28->unk98 = (s32) __sbss44->unk870;
    var_s0->unk-3FAC = 0U;
    var_s0->unk-3FB0 = 0x44U;
    temp_t0_2 = sp8->unk20;
    if (temp_t0_2 == 0x500) {
        goto block_83;
    }
    if ((s32) temp_t0_2 >= 0x500) {
        goto block_42;
    }
    var_s0->unk-3FC0 = (s16) (((s32) temp_t0_2 % 5) | (((s32) temp_t0_2 / 5) << 8));
    temp_v1 = sp8->unk22;
    M2C_TRAP_IF(5 == 0);
    var_t2 = (((sp10 - temp_v1) * 2) + 0xB00) & 0xFFFF;
    if ((s32) temp_v1 <= 0) {
        goto block_41;
    }
    var_s5_3 = 1;
    goto loop_56;
block_40:
    __sbss32 = temp_t3;
    __sbss34 = var_a4;
block_41:
block_42:
    var_s0->unk-3FAC = 9U;
    var_s0->unk-3FB0 = 0xF0U;
    temp_a6 = var_s0->unk-3FB8;
    var_s0->unk-3FAC = 9U;
    var_s0->unk-3FB0 = 0xF0U;
    __sbss38 = (s32) temp_a6;
    if (__sbss44->unk868 == 0) {
        goto block_80;
    }
    var_s0->unk-3FB8 = 0x10U;
block_44:
    var_s0->unk-3FB8 = (u16) __sbss44->unk860;
    if (__sbss44->unk868 == 0) {
        goto block_48;
    }
    if (temp_a6 != 0) {
        goto block_47;
    }
    goto block_100;
block_47:
block_48:
    if ((s32) sp8->unk22 >= sp10) {
        goto block_50;
    }
    var_s0->unk-3FAC = 0U;
    var_s0->unk-3FB0 = 0x40U;
    var_s0->unk-3FC0 = (s16) (((sp10 - sp8->unk22) * 2) + 0xB00);
    goto block_51;
block_50:
    var_s0->unk-3FAC = 0U;
    var_s0->unk-3FB0 = 0x40U;
    var_s0->unk-3FC0 = 0xB00;
block_51:
    if ((s32) sp8->unk2E >= 4) {
        goto block_53;
    }
    var_s0->unk-3FE0 = 0xA5U;
block_53:
    var_s0->unk-3FA8 = (u8) (sp18 & ~0x40);
    var_s0->unk-3FA8 = (u8) (var_s0->unk-3FA8 & ~3);
    var_s0->unk-3FAC = (u8) __sbss41;
    var_s0->unk-3FB0 = (u8) __sbss40;
    Gr2BlankScreen((struct gr2_hw *) sp40, 0);
    splx((s32) sp20);
    undma(sp38->unk4, sp38->unk0, 0);
    unmaputokv((s64) __sbss44, sp38->unk0);
    var_v0 = 0;
    goto block_4;
block_54:
    var_s0->unk-3FAC = (u8) temp_t8;
    var_s0->unk-3FB0 = (u8) temp_t3;
    var_s0->unk-3FB8 = var_a4;
block_55:
    var_s5_3 += 1;
    if (var_s5_3 >= (s32) sp8->unk22) {
        goto block_40;
    }
loop_56:
    var_s0->unk-3FAC = (u8) (var_t2 >> 8);
    var_s0->unk-3FB0 = (u8) var_t2;
    temp_t3 = var_s0->unk-3FB8;
    temp_t8 = (s32) temp_t3 >> 8;
    var_s0->unk-3FAC = (u8) temp_t8;
    var_s0->unk-3FB0 = (u8) temp_t3;
    var_a4 = var_s0->unk-3FB8;
    var_t2 = (var_t2 + 2) & 0xFFFF;
    __sbss32 = temp_t3;
    temp_t0_3 = (s32) var_a4 > 1;
    __sbss34 = var_a4;
    if (temp_t0_3 == 0) {
        goto block_55;
    }
    temp_a7 = var_s0->unk-3FB8;
    var_a6 = 1;
    __sbss30 = (s16) temp_a7;
    if (temp_t0_3 == 0) {
        goto block_81;
    }
    goto loop_63;
block_59:
    var_a4 = var_a6 & 0xFFFF;
block_60:
    var_a6 += 1;
    if (var_a6 < (s32) var_a4) {
        goto block_62;
    }
    __sbss30 = temp_a7_2;
    goto block_54;
block_62:
loop_63:
    temp_v1_2 = var_s0->unk-3FB8;
    temp_a7_2 = ((s32) temp_v1_2 >> 5) & 0xFFFF;
    __sbss30 = (s16) temp_v1_2;
    if (temp_a7_2 >= (s32) sp8->unk20) {
        goto block_59;
    }
    if (temp_a7_2 != 0) {
        goto block_60;
    }
    goto block_59;
block_66:
    us_delay(0xA);
    var_s5 += 1;
    var_a2 = sp48;
    if (var_s5 < 0x493E0) {
        goto loop_18;
    }
    goto block_22;
block_68:
    var_v1 = temp_a2 + 0xFF;
    if (temp_a2 >= 0x301) {
        goto block_12;
    }
    var_a3 = 0x300;
    sp10 = 0x300;
    goto block_13;
block_70:
    if (temp_v0_2 == 0x1D) {
        goto block_75;
    }
    var_s0 = sp40 + 0x70000;
    temp_v0_3 = (s32) (sp40->unk6C000 & 0xF0) >> 4;
    if (temp_v0_3 == 0xF) {
        goto block_104;
    }
    if (temp_v0_3 == 0) {
        goto block_104;
    }
    gr2_i2cPanelOff();
    goto block_11;
block_75:
    if (((void *) sp8)->unk39 == 0) {
        goto block_98;
    }
    if (gr2_i2cPanelID(sp) == 0) {
        goto block_10;
    }
    if (sp0 != 3) {
        goto block_10;
    }
    gr2_i2cPanelOn();
    goto block_9;
block_79:
    var_s0->unk-3FC0 = 0;
    goto block_36;
block_80:
    var_s0->unk-3FB8 = 0U;
    goto block_44;
block_81:
    __sbss30 = (s16) temp_a7;
    goto block_54;
block_82:
    var_s0->unk-3FFC = 0x40;
    goto block_28;
block_83:
    temp_a5 = temp_t0_2 - 1;
    M2C_TRAP_IF(5 == 0);
    var_s0->unk-3FC0 = (s16) ((temp_a5 % 5) | ((temp_a5 / 5) << 8));
    goto block_41;
block_84:
    if (gr2_firstgfxslot() != sp40) {
        goto block_86;
    }
    var_s0->unk-4000 = 7;
    goto block_87;
block_86:
    var_s0->unk-4000 = 0x47;
block_87:
    var_s5_4 = 0;
    var_a7_2 = __sbss44;
    goto loop_89;
block_88:
    var_a7_2 += 1;
    var_s5_4 += 1;
    if (var_s5_4 >= 7) {
        goto block_95;
    }
loop_89:
    var_a2_2 = var_a7_2->unk878;
    var_a6_2 = 0;
    if (var_s5_4 == 6) {
        goto block_93;
    }
    var_a5 = var_a2_2 & 1;
loop_91:
    var_s0->unk-3FE0 = var_a5;
    var_a6_2 += 1;
    var_a2_2 = ((s32) var_a2_2 >> 1) & 0xFF;
    if (var_a6_2 >= 8) {
        goto block_88;
    }
    var_a5 = var_a2_2 & 1;
    if (var_s5_4 != 6) {
        goto loop_91;
    }
block_93:
    var_a5 = var_a2_2 & 1;
    if (var_a6_2 != 7) {
        goto loop_91;
    }
    var_a5 = (var_a2_2 & 1) | 2;
    goto loop_91;
block_95:
    var_s0->unk-3FFC = 0;
    us_delay(0x3E8);
    if (__sbss44->unk868 == 0) {
        goto block_102;
    }
    var_s0->unk-3FFC = 5;
block_97:
    goto block_28;
block_98:
    goto block_9;
block_99:
    cmn_err(4, (? *)0x540, var_a2);
    goto block_23;
block_100:
    temp_a2_2 = sp10 * 2;
    temp_a2_3 = temp_a2_2 + 0xAFC;
    var_s0->unk-3FAC = (u8) (temp_a2_3 >> 8);
    var_s0->unk-3FB0 = temp_a2_3;
    temp_a2_4 = var_s0->unk-3FB8;
    __sbss3E = var_s0->unk-3FB8;
    __sbss3C = temp_a2_4;
    _Gr2CreateDummyDID((struct gr2_hw *) sp40, (temp_a2_2 + 0xAFE) & 0xFFFF, (s8) temp_a2_4, temp_a2_4);
    var_s0->unk-3FAC = 9U;
    var_s0->unk-3FB0 = 0xF4U;
    _Gr2CreateDummyDID((struct gr2_hw *) sp40, (sp10 + 0xAFC) & 0xFFFF, (s8) __sbss3E, var_s0->unk-3FB8);
    goto block_48;
block_101:
    cmn_err(4, NULL, 0x1D);
    undma(sp38->unk4, sp38->unk0, 0);
    unmaputokv((s64) __sbss44, sp38->unk0);
    var_v0 = 0x16;
    goto block_4;
block_102:
    var_s0->unk-3FFC = 1;
    goto block_97;
block_104:
    undma(sp38->unk4, sp38->unk0, 0, temp_a3);
    unmaputokv((s64) __sbss44, sp38->unk0);
    var_v0 = 0x16;
    sp28->unk14C = 1;
    goto block_4;
}

s32 Gr2GetMonitor(struct gr2_data *arg0, s32 *arg1, s8 *arg2) {
    s32 var_a1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s8 temp_a4;
    s8 temp_a4_2;
    s8 var_v0;
    struct gr2_info *temp_a5;

    temp_a5 = arg0->info;
    *arg1 = (s32) temp_a5->pad37;
    *arg2 = 0;
    var_a4 = 0;
    if (arg0->base->vc1.sysctl.b & 0x40) {
        var_a4 = 1;
        *arg2 = 1;
    }
    var_a3 = 2;
    if (__sdata4 != 0) {
        var_v0 = var_a4 | 0xE;
        if ((s32) temp_a5->GfxBoardRev >= 4) {
            if (__sdata4 & 0x20) {
                var_a3 = 0;
            }
            temp_a4 = (var_a3 | var_a4) & 0xFF;
            *arg2 = temp_a4;
            if (__sdata4 & 0x40) {
                var_a3_2 = 0;
            } else {
                var_a3_2 = 4;
            }
            temp_a4_2 = (var_a3_2 | temp_a4) & 0xFF;
            *arg2 = temp_a4_2;
            if (__sdata4 & 0x80) {
                var_a1 = 0;
            } else {
                var_a1 = 8;
            }
            *arg2 = var_a1 | temp_a4_2;
        } else {
            goto block_13;
        }
    } else {
        var_v0 = var_a4 | 0xE;
block_13:
        *arg2 = var_v0;
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x68, 0x6c], gap at: 0x58. */
s64 Gr2AdjGenlock(struct gr2_data *arg0, s32 arg1, s32 arg2, s64 arg3) {
    s64 sp10;
    s64 sp8;
    u64 sp0;
    s32 *var_a6;
    s32 *var_a6_2;
    s32 temp_a7;
    s32 temp_s1;
    s32 temp_v1;
    s32 var_a0_3;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a3_2;
    s32 var_s5;
    s64 temp_a0;
    s64 var_fp;
    s64 var_ra;
    s8 var_a1_2;
    struct gr2_hw *temp_s3;
    struct gr2_info *temp_s2;
    u32 var_a3;
    u8 temp_a0_2;
    u8 temp_a0_3;
    u8 temp_a0_4;
    u8 temp_a6;
    u8 temp_a6_2;
    u8 temp_a6_3;
    u8 temp_fp;
    u8 temp_fp_2;
    u8 temp_fp_3;
    u8 temp_s7;
    u8 var_a1;
    u8 var_a2_8;
    u8 var_a4;
    u8 var_v1;
    u8 var_v1_2;
    void *var_a0;
    void *var_a0_2;
    void *var_a0_4;
    void *var_a0_5;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    var_ra = saved_reg_ra;
    var_fp = saved_reg_fp;
    sp10 = arg3;
    sp0 = M2C_ERROR(/* Read from unset register $a4 */);
    sp8 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_s2 = arg0->info;
    temp_s1 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_s3 = arg0->base;
    temp_s7 = temp_s3->vc1.sysctl.b;
    if (!(M2C_ERROR(/* Read from unset register $a6 */) & 0x10)) {
        goto block_6;
    }
    temp_a0 = temp_s1 & 0x40;
    temp_fp = temp_s7 | 0x40;
    temp_a6 = temp_s7 & ~0x40;
    if ((s32) temp_s2->GfxBoardRev >= 4) {
        goto block_75;
    }
    temp_s3->clock.write.b = 0xA5;
    temp_s3->vc1.sysctl.b = temp_a6;
    if (temp_a0 == 0) {
        goto block_4;
    }
    temp_s3->bdvers.rd1.b = 0x41;
block_4:
    us_delay(0xF);
    temp_s3->vc1.sysctl.b = temp_fp;
    var_fp = unksp68;
block_5:
    var_ra = unksp60;
block_6:
    if (!(temp_s1 & 1)) {
        goto block_81;
    }
    unksp68 = var_fp;
    temp_fp_2 = temp_s7 | 0x40;
    temp_a6_2 = temp_s7 & ~0x40;
    if ((s32) temp_s2->GfxBoardRev < 4) {
        goto block_94;
    }
    var_a2 = 0;
    temp_s3->vc1.sysctl.b = temp_a6_2;
    temp_s3->bdvers.rd1.b = 0x15;
    var_a0 = NULL;
loop_9:
    var_a0 += 1;
    var_a2 += 1;
    temp_s3->clock.write.b = var_a0->unk57;
    if (var_a2 < 0xA) {
        goto loop_9;
    }
    temp_a0_2 = temp_s2->pad37;
    var_a2_2 = 0xB;
    if (temp_a0_2 == 2) {
        goto block_90;
    }
    if (temp_a0_2 == 9) {
        goto block_92;
    }
block_12:
    var_a0_2 = (void *)0xB;
loop_13:
    var_a0_2 += 1;
    var_a2_2 += 1;
    temp_s3->clock.write.b = var_a0_2->unk57;
    if (var_a2_2 < 0x11) {
        goto loop_13;
    }
    var_a6 = &__sdata0;
    var_a2_3 = 0;
    __sdata0 = 1;
    temp_s3->bdvers.rd1.b = __sdata4 | 0xD;
    goto loop_18;
block_15:
    var_a6 += 1;
    var_a2_3 += 1;
    if (var_a2_3 < 7) {
        goto block_17;
    }
    unksp60 = var_ra;
    goto block_25;
block_17:
loop_18:
    var_a4 = var_a6->unk10;
    var_a0_3 = 0;
    if (var_a2_3 == 6) {
        goto block_23;
    }
    var_v1 = var_a4 & 1;
block_20:
    temp_s3->clock.write.b = var_v1;
block_21:
    var_a0_3 += 1;
    var_a4 = ((s32) var_a4 >> 1) & 0xFF;
    if (var_a0_3 >= 8) {
        goto block_15;
    }
    var_v1 = var_a4 & 1;
    if (var_a2_3 != 6) {
        goto block_20;
    }
block_23:
    var_v1 = var_a4 & 1;
    if (var_a0_3 != 7) {
        goto block_20;
    }
    temp_s3->clock.write.b = (var_a4 & 1) | 2;
    goto block_21;
block_25:
    if (gr2_firstgfxslot() != temp_s3) {
        goto block_27;
    }
    temp_s3->bdvers.rd0.b = 0x82;
    goto block_28;
block_27:
    temp_s3->bdvers.rd0.b = 0xC2;
block_28:
    us_delay(0xF);
    temp_s3->vc1.sysctl.b = temp_fp_2;
    var_ra = unksp60;
block_29:
    var_fp = unksp68;
    if (arg2 <= 0) {
        goto block_82;
    }
block_30:
    var_a3 = (u32) arg2 >> 1;
    if ((s32) temp_s2->GfxBoardRev >= 4) {
        goto block_32;
    }
    unksp60 = var_ra;
    temp_s3->clock.write.b = 0xA5;
    var_a3 = (u32) arg2 >> 1;
block_32:
    unksp60 = var_ra;
    temp_s3->vc1.sysctl.b = 3;
    Gr2LoadVC1SRAM(temp_s3, (u16 *) sp10, 0U, var_a3);
    Gr2LoadVC1SRAM(temp_s3, (u16 *) sp8, 0x800U, sp0 >> 1);
    unksp68 = var_fp;
block_33:
    unksp68 = var_fp;
    temp_fp_3 = temp_s7 | 0x40;
    var_a0_4 = NULL;
    temp_a6_3 = temp_s7 & ~0x40;
    if ((s32) temp_s2->GfxBoardRev < 4) {
        goto block_71;
    }
    var_a2_4 = 0;
    temp_s3->vc1.sysctl.b = temp_a6_3;
    temp_s3->bdvers.rd1.b = 0x15;
loop_35:
    var_a0_4 += 1;
    var_a2_4 += 1;
    temp_s3->clock.write.b = var_a0_4->unk57;
    if (var_a2_4 < 0xA) {
        goto loop_35;
    }
    temp_a0_3 = temp_s2->pad37;
    var_a2_5 = 0xB;
    if (temp_a0_3 == 2) {
        goto block_91;
    }
    if (temp_a0_3 == 9) {
        goto block_93;
    }
block_38:
    var_a0_5 = NULL + 0xB;
    var_a6_2 = &__sdata0;
loop_39:
    var_a0_5 += 1;
    var_a2_5 += 1;
    temp_s3->clock.write.b = var_a0_5->unk57;
    if (var_a2_5 < 0x11) {
        goto loop_39;
    }
    var_a2_6 = 0;
    temp_s3->bdvers.rd1.b = __sdata4 | 0xD;
    __sdata0 = 1;
    goto loop_44;
block_41:
    var_a6_2 += 1;
    var_a2_6 += 1;
    if (var_a2_6 < 7) {
        goto block_43;
    }
    unksp60 = var_ra;
    goto block_51;
block_43:
loop_44:
    var_a1 = var_a6_2->unk10;
    var_a0_6 = 0;
    if (var_a2_6 == 6) {
        goto block_49;
    }
    var_v1_2 = var_a1 & 1;
block_46:
    temp_s3->clock.write.b = var_v1_2;
block_47:
    var_a0_6 += 1;
    var_a1 = ((s32) var_a1 >> 1) & 0xFF;
    if (var_a0_6 >= 8) {
        goto block_41;
    }
    var_v1_2 = var_a1 & 1;
    if (var_a2_6 != 6) {
        goto block_46;
    }
block_49:
    var_v1_2 = var_a1 & 1;
    if (var_a0_6 != 7) {
        goto block_46;
    }
    temp_s3->clock.write.b = (var_a1 & 1) | 2;
    goto block_47;
block_51:
    var_s5 = 0;
    if (gr2_firstgfxslot() == temp_s3) {
        goto block_53;
    }
    var_s5 = 0x40;
block_53:
    if (arg1 <= 0) {
        goto block_85;
    }
    temp_s3->bdvers.rd0.b = ((arg1 & 7) * 8) | var_s5 | 0x82;
block_55:
    us_delay(0xF);
    temp_s3->vc1.sysctl.b = temp_fp_3;
block_56:
    var_ra = unksp60;
block_57:
    if ((s32) temp_s2->GfxBoardRev < 4) {
        goto block_70;
    }
    if (!(temp_s1 & 0x2E)) {
        goto block_70;
    }
    if (!(temp_s1 & 0x20)) {
        goto block_62;
    }
    if (!(temp_s1 & 0xE)) {
        goto block_62;
    }
    unksp60 = var_ra;
    cmn_err(4, NULL);
block_62:
    temp_a0_4 = temp_s2->pad37;
    var_a1_2 = 1;
    if (temp_a0_4 == 2) {
        goto block_74;
    }
    if (temp_a0_4 == 9) {
        goto block_74;
    }
block_64:
    if (__sdata0 == 0) {
        goto block_86;
    }
    var_a1_2 = (var_a1_2 | 8) & 0xFF;
block_66:
    __sbss4A = var_a1_2;
    var_a0_7 = 0;
    if (!(temp_s1 & 2)) {
        goto block_87;
    }
block_67:
    var_a2_7 = 0;
    if (!(temp_s1 & 4)) {
        goto block_88;
    }
block_68:
    var_a3_2 = 0;
    if (!(temp_s1 & 8)) {
        goto block_89;
    }
block_69:
    temp_a7 = var_a0_7 | var_a2_7;
    temp_v1 = (var_a3_2 | temp_a7) & 0xFF;
    __sdata4 = temp_v1;
    __sbss48 = (temp_a7 & 0xFF) | var_a3_2;
    temp_s3->bdvers.rd1.b = temp_v1 | var_a1_2;
block_70:
    return 0;
block_71:
    if (arg1 < 0) {
        goto block_73;
    }
    unksp60 = var_ra;
    temp_s3->bdvers.rd1.b = ((arg1 & 7) * 2) | 0x41;
block_73:
    unksp60 = var_ra;
    temp_s3->vc1.sysctl.b = temp_a6_3;
    temp_s3->clock.write.b = 0xA6;
    us_delay(0xF);
    temp_s3->vc1.sysctl.b = temp_fp_3;
    goto block_56;
block_74:
    var_a1_2 = 5;
    goto block_64;
block_75:
    unksp50 = temp_a0;
    temp_s3->vc1.sysctl.b = temp_a6;
    __sbss49 = 1;
    if (gr2_firstgfxslot() == temp_s3) {
        goto block_77;
    }
    var_a2_8 = 0x41;
    __sbss49 = 0x41;
    goto block_78;
block_77:
    var_a2_8 = __sbss49;
block_78:
    if (temp_a0 == 0) {
        goto block_80;
    }
    var_a2_8 = (var_a2_8 | 0x82) & 0xFF;
    __sbss49 = var_a2_8;
block_80:
    temp_s3->bdvers.rd0.b = var_a2_8;
    us_delay(0xF);
    temp_s3->vc1.sysctl.b = temp_fp;
    var_fp = unksp68;
    goto block_5;
block_81:
    if (arg2 > 0) {
        goto block_30;
    }
block_82:
    if (arg1 < 0) {
        goto block_57;
    }
    if (arg2 <= 0) {
        goto block_33;
    }
    goto block_30;
block_85:
    temp_s3->bdvers.rd0.b = var_s5 | 0x82;
    goto block_55;
block_86:
    goto block_66;
block_87:
    var_a0_7 = 0x20;
    goto block_67;
block_88:
    var_a2_7 = 0x40;
    goto block_68;
block_89:
    var_a3_2 = 0x80;
    goto block_69;
block_90:
    temp_s3->clock.write.b = 0x94;
    goto block_12;
block_91:
    temp_s3->clock.write.b = 0x94;
    goto block_38;
block_92:
    temp_s3->clock.write.b = 0x93;
    goto block_12;
block_93:
    temp_s3->clock.write.b = 0x93;
    goto block_38;
block_94:
    unksp60 = var_ra;
    temp_s3->vc1.sysctl.b = temp_a6_2;
    temp_s3->clock.write.b = 0xA6;
    us_delay(0xF);
    temp_s3->vc1.sysctl.b = temp_fp_2;
    goto block_29;
}

s32 Gr2Private(struct gfx_gfx *gfxp, void *rn, u32 cmd, void *arg, s32 *flags) {
    s64 spF8;
    s64 spF0;
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
    s32 sp70;
    s32 sp68;
    s32 sp64;
    s32 sp60;
    s32 sp58;
    s32 sp50;
    s32 sp48;
    s32 sp40;
    s32 sp10;
    s8 spC;
    s32 sp8;
    s32 *temp_v0_6;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0_5;
    s32 var_s0;
    s32 var_v0;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    struct gr2_data *temp_a4;
    u8 temp_a5;

    spB0 = (s64) gfxp;
    var_s0 = 0;
    if (cmd >= 0x3AA8U) {
        if (cmd >= 0x3AA9U) {
            if (cmd >= 0x3AACU) {
                spE0 = (s64) rn;
                if (cmd >= 0x3AADU) {
                    if (cmd >= 0x5213U) {
                        spB8 = (s64) arg;
                        if (cmd < 0x5214U) {
                            goto block_6;
                        }
                        goto block_23;
                    }
                    if (cmd == 0x3AAD) {
                        spB8 = (s64) arg;
block_6:
                        if (copyin(spB8, &sp70, 0xC) != 0) {
                            var_s0 = 0xE;
                        } else {
                            temp_a4 = spB0->unk10;
                            sp98 = (s64) temp_a4;
                            temp_a5 = temp_a4->fp_installed;
                            temp_a4->fp_installed = 0;
                            spA0 = (s64) temp_a5;
                            var_s0 = gr2_i2c_command(&sp70);
                            sp98->unk14C = (s8) spA0;
                            if (copyout(&sp70, spB8, 0xCU) != 0) {
                                var_s0 = 0xE;
                            }
                        }
                    } else {
                        goto block_24;
                    }
                } else if (copyin((s64) arg, &sp68, 8) != 0) {
                    var_s0 = 0xE;
                } else {
                    var_s0 = rrmWaitVideoSync(spB0, spE0, sp68, sp6C);
                }
                goto block_26;
            }
            if (cmd >= 0x3AAAU) {
                spB8 = (s64) arg;
                if (cmd >= 0x3AABU) {
                    if (cmd == 0x3AAB) {
                        *M2C_ERROR(/* Read from unset register $a4 */) = spB0->unk10->retrace_count;
                    } else {
                        goto block_23;
                    }
                } else {
                    spA8 = (s64) spB0->unk10;
                    temp_a0 = splhi();
                    spA8->unk4C = (s32) spB8;
                    splx(temp_a0);
                }
                goto block_26;
            }
            spB8 = (s64) arg;
            spC0 = 0;
            spC8 = 0;
            spD0 = 0;
            spD8 = 0;
            if (cmd == 0x3AA9) {
                temp_v0 = kern_malloc(0x18U);
                sp90 = temp_v0;
                if (copyin(spB8, (s32 *) temp_v0, 0x18) != 0) {
                    var_s0 = 0xE;
                    goto block_26;
                }
                temp_a0_2 = sp90->unk4;
                if (temp_a0_2 > 0) {
                    temp_v0_2 = kern_malloc((u32) temp_a0_2);
                    sp80 = temp_v0_2;
                    sp60 = (s32) temp_v0_2;
                    if (copyin((s64) sp90->unk8, (s32 *) temp_v0_2, sp90->unk4, temp_v0_2) != 0) {
                        var_s0 = 0xE;
                        kern_free((u16 *) sp80);
                        kern_free((u16 *) sp90);
                        spC8 = 1;
                    } else {
                        temp_v0_3 = kern_malloc(sp90->unkC);
                        sp88 = temp_v0_3;
                        sp64 = (s32) temp_v0_3;
                        if (copyin((s64) sp90->unk10, (s32 *) temp_v0_3, (s32) sp90->unkC, temp_v0_3) != 0) {
                            var_s0 = 0xE;
                            kern_free((u16 *) sp88);
                            kern_free((u16 *) sp80);
                            kern_free((u16 *) sp90);
                            spD8 = 1;
                        }
                        spD0 = spD8;
                    }
                    spC0 = spC8;
                }
                var_v0 = var_s0;
                if (spC0 == 0) {
                    var_v0 = var_s0;
                    if (spD0 == 0) {
                        sp88 = (s64) sp64;
                        sp80 = (s64) sp60;
                        temp_v0_4 = Gr2AdjGenlock(spB0->unk10, sp90->unk0, sp90->unk4, (s64) sp60);
                        if (sp90->unk4 > 0) {
                            spF0 = temp_v0_4;
                            kern_free((u16 *) sp80);
                            kern_free((u16 *) sp88);
                        }
                        if (temp_v0_4 < 0) {
                            var_s0 = (s32) -temp_v0_4;
                        }
                        kern_free((u16 *) sp90);
                        goto block_25;
                    }
                }
            } else {
                goto block_23;
            }
        } else {
            if (copyin((s64) arg, &sp58, 8) != 0) {
                var_s0 = 0xE;
            } else {
                temp_v0_5 = Gr2SetDisplayMode((struct gfx_gfx *) spB0, sp58, sp5C);
                if (temp_v0_5 < 0) {
                    var_s0 = -temp_v0_5;
                }
            }
            goto block_26;
        }
    } else {
        if (cmd >= 0x3AA0U) {
            if (cmd >= 0x3AA1U) {
                if (cmd >= 0x3AA3U) {
                    if (cmd >= 0x3AA4U) {
                        spE0 = (s64) rn;
                        if (cmd == 0x3AA7) {
                            if (copyin((s64) arg, &sp50, 4) != 0) {
                                var_s0 = 0xE;
                            } else {
                                var_s0 = Gr2AllocCXData(spB0, (void *) spE0, sp50);
                            }
                        } else {
                            goto block_23;
                        }
                    } else {
                        spE0 = (s64) rn;
                        if (copyin((s64) arg, &sp40, 4) != 0) {
                            var_s0 = 0xE;
                        } else {
                            var_s0 = Gr2ChangeCXSize(spB0, (void *) spE0, sp40);
                        }
                    }
                } else if (cmd == 0x3AA2) {
                    if (copyin((s64) arg, &sp10, 0x2C) != 0) {
                        var_s0 = 0xE;
                    } else {
                        var_s0 = Gr2PixelDma((struct gfx_gfx *) spB0, (struct gr2_pixeldma_args *) &sp10);
                    }
                } else {
                    goto block_23;
                }
            } else {
                spB8 = (s64) arg;
                var_s0 = Gr2GetMonitor(spB0->unk10, &sp8, &spC);
                if (copyout(&sp8, spB8, 8U) != 0) {
                    var_s0 = 0xE;
                }
            }
        } else if (cmd >= 0x3A9DU) {
            if (cmd >= 0x3A9EU) {
                spB8 = (s64) arg;
                if (cmd == 0x3A9E) {
                    temp_v0_6 = kern_malloc(0x300U);
                    if (copyin(spB8, temp_v0_6, 0x300) == 0) {
                        spF8 = (s64) temp_v0_6;
                        var_s0 = Gr2SetGammaRamp(spB0->unk10, (u8 *) temp_v0_6, /* s64+0x0 */ (temp_v0_6 + 0x100), /* s64+0x4 */ (temp_v0_6 + 0x200), /* s64+0x0 */ M2C_ERROR(/* Unable to find stack arg 0x10 in block */), /* s64+0x4 */ M2C_ERROR(/* Unable to find stack arg 0x14 in block */));
                        kern_free((u16 *) spF8);
                    } else {
                        spF8 = (s64) temp_v0_6;
                        var_s0 = 0xE;
                        kern_free((u16 *) spF8);
                    }
                } else {
                    goto block_23;
                }
            } else if (copyin((s64) arg, sp, 8) != 0) {
                var_s0 = 0xE;
            } else {
                var_s0 = Gr2SetMonitor(spB0->unk10, sp, spB0);
            }
        } else if (cmd != 0x3A9B) {
block_23:
block_24:
            cmn_err(5, NULL);
            var_s0 = 0x16;
        } else if (copyin((s64) arg, &sp48, 4) != 0) {
            var_s0 = 0xE;
        } else {
            var_s0 = Gr2SetCursorHotspot((struct gr2_data *) spB0, (u32) (u16) sp48, (u32) unksp4A);
block_25:
        }
block_26:
        var_v0 = var_s0;
    }
    return var_v0;
}

s32 Gr2Resume(struct gr2_data *data, struct gfx_gfx *gfxp, s32 arg2) {
    if (arg2 == 0) {
        if (data->unk48 != 0) {
            data->unk48 = 0;
            force_resched();
        }
    }
    return 0;
}

s32 Gr2Info(struct gr2_data *data, void *arg1, u32 arg2, s32 *arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp8;
    s64 sp0;
    s32 var_v0;
    s64 var_ra;
    struct gr2_info *temp_a0;
    struct gr2_info *temp_a0_2;
    u16 temp_a1_2;
    u32 var_s1;
    u8 temp_a1;

    var_ra = saved_reg_ra;
    var_s1 = arg2;
    sp0 = (s64) arg3;
    if (arg2 >= 0x3DU) {
        var_s1 = 0x3C;
    }
    temp_a0 = data->info;
    if (temp_a0->fp_id != 0) {
        sp30 = (s64) arg1;
        temp_a1 = data->fp_installed;
        data->fp_installed = 0;
        sp8 = (s64) temp_a1;
        gr2_fp_probe(temp_a0);
        var_ra = sp28;
        data->fp_installed = (u8) sp8;
    }
    temp_a1_2 = data->info->gfx_info.xpmax;
    if (data->info->MonitorType == 0x82) {
        if (data->info->pad37 == 0x1D) {
            unksp18 = (s64) temp_a1_2;
            sp28 = var_ra;
            data->info->gfx_info.xpmax = 0x400;
        }
    }
    unksp18 = (s64) temp_a1_2;
    sp28 = var_ra;
    temp_a0_2 = data->info;
    if (copyout((s32 *) data->info, (s64) arg1, var_s1) != 0) {
        var_v0 = 0xE;
        temp_a0_2->gfx_info.xpmax = (u16) unksp18;
    } else {
        temp_a0_2->gfx_info.xpmax = (u16) unksp18;
        *sp0 = var_s1;
        var_v0 = 0;
    }
    return var_v0;
}

s32 Gr2Suspend(struct gr2_data *data, struct gfx_gfx *gfxp, s32 arg2) {
    if ((data != NULL) && (arg2 == 0)) {
        if (data->unk3C == 0) {
            data->unk48 = 0;
        }
    }
    return 0;
}

s32 is_indyelan(void) {
    s32 temp_v0;

    if (__sdata18 < 0) {
        temp_v0 = (*(s32 *)0xBFBD9858 & 1) == 0;
        __sdata18 = temp_v0;
        return temp_v0;
    }
    return __sdata18;
}

void gr2_regmatch(struct gfx_gfx *arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 var_a1;
    s64 var_a2;
    u32 temp_a0;

    var_a1 = arg1;
    var_a2 = arg2;
    if (arg0 != NULL) {
        sp10 = var_a2;
        sp8 = var_a1;
        Gr2UnMapGfx(arg0);
        arg0->gx_boundrn = NULL;
        temp_a0 = arg0->gx_ddv;
        if (temp_a0 != 0) {
            arg0->gx_ddv = 0;
            ddv_destroy_handle(temp_a0, var_a1, var_a2);
            var_a1 = sp8;
            var_a2 = sp10;
        }
    }
    var_a2->unk14 = (s32) var_a1;
}
