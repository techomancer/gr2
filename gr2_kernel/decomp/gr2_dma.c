? MCIntClr(u16, s32, s32);                          /* extern */
s32 MCdma(void *, ?);                               /* extern */
s32 RRM_CheckValidFault(s64);                       /* extern */
? cache_operation(s32, s64, ?);                     /* extern */
? cmn_err(?, ? *, s64, s32);                        /* extern */
? curproc_vtop(s64, s64, s64, ?);                   /* extern */
s32 fakePICdma(?, ?);                               /* extern */
? gr2_error(s64);                                   /* extern */
? kern_free(s64, ?);                                /* extern */
void *kvpalloc(?, ?, ?, struct gr2_hw *);           /* extern */
struct gr2_data *kvtophys(struct gfx_gfx *, ?);     /* extern */
? psema(void *, ?);                                 /* extern */
? unuseracc(s32, s64, s64);                         /* extern */
s32 useracc(s32, s64, s64, ?);                      /* extern */
s32 vdma_set_tlb(s32, s64, s32);                    /* extern */
? vsema(void *);                                    /* extern */
extern ? .srdata;
extern s32 __sdata0;
extern s32 __sdata4;
extern ? mcgdma;

s32 _Gr2CrossPage(s32 arg0) {
    s32 var_v0;

    var_v0 = 1;
    if ((u32) ((arg0 & 0xFFF) + 0x14) < 0x1001U) {
        var_v0 = 0;
    }
    return var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x60, 0x64], gap at: 0x48. */
void _Gr2mkudmada(s64 arg0, struct gfx_gfx *arg1, s64 arg2, s64 arg3) {
    s32 *temp_v0;
    s32 *var_s4;
    s32 temp_s5;
    s32 var_s6;
    s64 var_s2;
    s64 var_s3;
    struct gfx_gfx *var_s0;
    struct gfx_gfx *var_s5;

    var_s0 = arg1;
    temp_s5 = arg0 & 0xFFF;
    temp_v0 = kern_malloc(((u32) (arg2 + temp_s5 + 0xFFF) >> 0xC) * 4);
    var_s4 = temp_v0;
    unksp40 = (s64) temp_v0;
    curproc_vtop(arg0, arg2, (s64) temp_v0, 4);
    var_s6 = temp_s5;
    var_s2 = arg2;
    if (arg2 != 0) {
        unksp48 = arg3 | 0x40000000;
loop_7:
        var_s5 = var_s0;
        var_s0->gx_board = (*var_s4 << 0xC) | var_s6;
        if ((var_s6 + var_s2) >= 0x1000) {
            var_s3 = 0x1000 - var_s6;
            var_s4 += 4;
            var_s6 = 0;
            if (var_s3 == 0x1000) {
                goto block_9;
            }
            goto block_3;
        }
        var_s3 = var_s2;
        if (var_s2 != 0x1000) {
block_3:
            var_s0->gx_thd = var_s3 | arg3;
        } else {
block_9:
            var_s0->gx_thd = (u32) unksp48;
        }
        var_s0->unkE = 0;
        var_s0->unkC = 0;
        var_s0->gx_next = M2C_ERROR(/* Read from unset register $a4 */);
        var_s0 += 0x14;
        if (_Gr2CrossPage((s32) var_s0) != 0) {
            var_s0 += 0x14;
        }
        var_s2 -= var_s3;
        var_s5->gx_bdata = kvtophys(var_s0);
        if (var_s2 != 0) {
            goto loop_7;
        }
    } else {
        var_s5 = subroutine_arg0;
    }
    var_s5->gx_thd |= 0x20000000;
    kern_free(unksp40, 0x20000000);
}

struct gfx_gfx *_Gr2singlestride(s64 arg0, struct gfx_gfx **arg1, s32 **arg2, u64 arg3) {
    u64 sp58;
    s64 sp50;
    s64 sp48;
    s32 *var_a0_2;
    s32 temp_a1_2;
    s32 temp_fp;
    s32 var_s3;
    s32 var_v0;
    struct gfx_gfx *temp_a0;
    struct gfx_gfx *temp_a0_2;
    struct gfx_gfx *temp_a1;
    struct gfx_gfx *temp_a2;
    struct gfx_gfx *temp_a3;
    struct gfx_gfx *var_a0;
    struct gfx_gfx *var_s6;
    u64 var_s1;
    u64 var_s5;

    unksp18 = arg0;
    sp58 = arg3;
    sp50 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_fp = M2C_ERROR(/* Read from unset register $a5 */);
    var_s3 = arg0 & 0xFFF;
    var_s1 = arg3;
    if (arg3 != 0) {
        sp48 = temp_fp | 0x40000000;
loop_7:
        var_s5 = var_s1;
        var_s6 = *arg1;
        var_s6->gx_board = (**arg2 << 0xC) | var_s3;
        if ((var_s3 + var_s1) >= 0x1000) {
            var_s5 = 0x1000 - var_s3;
            var_s3 = 0;
            *arg2 += 4;
        }
        var_s1 -= var_s5;
        temp_a0 = *arg1;
        if (var_s5 != 0x1000) {
            temp_a0->gx_thd = var_s5 | temp_fp;
        } else {
            temp_a0->gx_thd = (u32) sp48;
        }
        temp_a3 = *arg1;
        temp_a3->gx_next = M2C_ERROR(/* Read from unset register $a6 */);
        temp_a2 = *arg1;
        temp_a2->unkC = 0;
        temp_a1 = *arg1;
        temp_a1->unkE = 0;
        temp_a0_2 = *arg1 + 0x14;
        *arg1 = temp_a0_2;
        var_a0 = *arg1;
        if (_Gr2CrossPage((s32) temp_a0_2, temp_a1, temp_a2, temp_a3) != 0) {
            var_a0 += 0x14;
            *arg1 = var_a0;
        }
        var_s6->gx_bdata = kvtophys(var_a0);
        if (var_s1 != 0) {
            goto loop_7;
        }
    } else {
        var_s6 = sp0;
    }
    temp_a1_2 = (sp58 + unksp18) & 0xFFF;
    if (((sp50 - sp58) + temp_a1_2) >= 0x1000) {
        var_a0_2 = *arg2;
        var_v0 = (sp50 + temp_a1_2) - sp58;
        do {
            var_a0_2 += 4;
            var_v0 -= 0x1000;
            *arg2 = var_a0_2;
        } while (var_v0 >= 0x1000);
    }
    return var_s6;
}

struct gfx_gfx *_Gr2multistride(s64 arg0, struct gfx_gfx **arg1, s32 **arg2, s64 arg3) {
    s16 temp_a1;
    s16 temp_a3;
    s32 var_v0;
    struct gfx_gfx *temp_a0;
    struct gfx_gfx *temp_a2;
    struct gfx_gfx *temp_t2;
    struct gfx_gfx *var_t2;

    M2C_TRAP_IF(M2C_ERROR(/* Read from unset register $a5 */) == 0);
    temp_t2 = *arg1;
    var_v0 = arg3 / (s32) M2C_ERROR(/* Read from unset register $a5 */);
    if (var_v0 == 0) {
        var_v0 = 1;
    }
    temp_t2->gx_board = (arg0 & 0xFFF) | (**arg2 << 0xC);
    (*arg1)->gx_thd = M2C_ERROR(/* Read from unset register $a4 */) | M2C_ERROR(/* Read from unset register $a6 */);
    (*arg1)->gx_next = M2C_ERROR(/* Read from unset register $a7 */);
    temp_a3 = M2C_ERROR(/* Read from unset register $a5 */) - M2C_ERROR(/* Read from unset register $a4 */);
    (*arg1)->unkC = temp_a3;
    temp_a2 = *arg1;
    temp_a1 = var_v0 - 1;
    temp_a2->unkE = temp_a1;
    temp_a0 = *arg1 + 0x14;
    *arg1 = temp_a0;
    var_t2 = *arg1;
    if (_Gr2CrossPage((s32) temp_a0, (struct gfx_gfx *) temp_a1, temp_a2, (struct gfx_gfx *) temp_a3) != 0) {
        var_t2 += 0x14;
        *arg1 = var_t2;
    }
    temp_t2->gx_bdata = kvtophys(var_t2);
    return temp_t2;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x60, 0x64], gap at: 0x58. */
void _Gr2HtoLmkudmada(s64 arg0, struct gfx_gfx *arg1, s64 arg2, u64 arg3) {
    struct gfx_gfx *spAC;                           /* compiler-managed */
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    u64 sp8;
    s32 *sp0;
    s16 temp_a1_2;
    s32 *var_s1;
    s32 temp_a1;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_s7;
    s32 var_a2;
    s32 var_t0;
    s64 temp_a0;
    s64 temp_lo;
    s64 temp_s1;
    s64 temp_v0;
    s64 var_s0;
    s64 var_s3;
    struct gfx_gfx *temp_a2_2;
    struct gfx_gfx *var_s5;
    u32 *temp_a0_2;
    u32 *var_a0;
    u32 temp_a2;
    u32 temp_lo_2;
    u32 temp_s4;
    u32 var_v0_2;
    u64 temp_fp;
    u64 var_a1;
    u64 var_s2;
    u64 var_v0;

    spAC = arg1;
    var_s0 = arg2;
    sp18 = M2C_ERROR(/* Read from unset register $a5 */);
    sp10 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_fp = M2C_ERROR(/* Read from unset register $a4 */);
    sp8 = arg3;
    var_s3 = arg0;
    if (M2C_ERROR(/* Read from unset register $a4 */) != 0) {
        var_s2 = temp_fp;
    } else {
        var_s2 = sp8;
    }
    temp_lo = var_s0 * var_s2;
    temp_s1 = (arg0 - temp_lo) + 1;
    temp_s4 = ((u32) (temp_lo + (temp_s1 & 0xFFF) + 0xFFF) >> 0xC) * 4;
    temp_v0 = kern_malloc(temp_s4);
    sp20 = temp_v0;
    curproc_vtop(temp_s1, temp_lo, temp_v0, 4);
    var_s1 = (temp_v0 + temp_s4) - 4;
    if (var_s0 != 0) {
        sp30 = sp18 | 0x40000000;
        unksp58 = sp8 | sp18;
        unksp50 = ~(sp8 + temp_fp) + 1;
        sp28 = ~(sp8 * 2) + 1;
loop_16:
        temp_a0 = (var_s3 - var_s2) + 1;
        temp_s7 = var_s3 & 0xFFF;
        temp_a2 = temp_s7 + 1;
        temp_a1 = temp_a0 & 0xFFF;
        if (temp_a2 < var_s2) {
            var_v0 = var_s2;
            var_a2 = temp_a1;
            if (var_s2 != 0) {
                var_t0 = var_v0 + var_a2;
loop_23:
                var_a1 = 0x1000 - var_a2;
                if (var_t0 >= 0x1001) {
                    var_s1 -= 4;
                    var_a2 = 0;
                } else {
                    var_a1 = var_v0;
                }
                var_v0 -= var_a1;
                var_t0 = var_v0 + var_a2;
                if (var_v0 != 0) {
                    goto loop_23;
                }
            }
            var_s0 -= 1;
            sp0 = var_s1;
            var_s3 -= var_s2;
            var_s5 = _Gr2singlestride(temp_a0, &spAC, sp, sp8);
            if ((0xFFF & var_s3) == 0xFFF) {
                var_s1 -= 4;
                if (var_s0 != 0) {
                    goto loop_16;
                }
            } else {
                goto block_15;
            }
        } else {
            temp_lo_2 = var_s0 * var_s2;
            var_v0_2 = temp_a2;
            if (temp_a2 < temp_lo_2) {

            } else {
                var_v0_2 = temp_lo_2;
            }
            spAC->gx_board = (void *) ((*var_s1 << 0xC) | temp_a1);
            if (sp8 != 0x1000) {
                spAC->gx_thd = (u32) unksp58;
            } else {
                spAC->gx_thd = (u32) sp30;
            }
            temp_lo_3 = (s32) var_v0_2 / (s32) var_s2;
            M2C_TRAP_IF(var_s2 == 0);
            var_s5 = spAC;
            var_s5->gx_next = (struct gfx_gfx *) sp10;
            if (temp_lo_3 != 1) {
                if (temp_fp != 0) {
                    spAC->unkC = (s16) unksp50;
                } else {
                    spAC->unkC = (s16) sp28;
                }
            } else {
                spAC->unkC = 0;
            }
            temp_a2_2 = spAC;
            temp_a1_2 = temp_lo_3 - 1;
            temp_a2_2->unkE = temp_a1_2;
            temp_a0_2 = &spAC->gx_ddv;
            spAC = temp_a0_2;
            var_a0 = temp_a0_2;
            if (_Gr2CrossPage((s32) temp_a0_2, (struct gfx_gfx *) temp_a1_2, temp_a2_2) != 0) {
                var_a0 += 0x14;
                spAC = var_a0;
            }
            temp_lo_4 = temp_lo_3 * var_s2;
            var_s0 -= temp_lo_3;
            var_s5->gx_bdata = kvtophys((struct gfx_gfx *) var_a0);
            if (((temp_s7 - temp_lo_4) + 1) == 0) {
                var_s1 -= 4;
            }
            var_s3 -= temp_lo_4;
block_15:
            if (var_s0 != 0) {
                goto loop_16;
            }
        }
    } else {
        var_s5 = sp4;
    }
    var_s5->gx_thd |= 0x20000000;
    kern_free(sp20, 0x20000000);
}

void _Gr2stridemkudmada(s64 arg0, struct gfx_gfx *arg1, s64 arg2, u64 arg3) {
    struct gfx_gfx *sp6C;
    s64 sp50;
    s32 temp_s2;
    s32 temp_t0;
    s32 temp_v0_2;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_s6;
    s64 var_s0;
    s64 var_s1;
    struct gfx_gfx *var_v0;
    void *temp_v0;
    void *var_s7;

    temp_s2 = M2C_ERROR(/* Read from unset register $a4 */);
    sp6C = arg1;
    var_s1 = arg0;
    temp_v0 = kern_malloc(((u32) ((arg0 & 0xFFF) + arg2 + 0xFFF) >> 0xC) * 4);
    var_s7 = temp_v0;
    curproc_vtop(var_s1, arg2, (s64) temp_v0, 4);
    var_s0 = arg2;
    if (arg2 != 0) {
        sp50 = (s64) var_s7;
loop_5:
        temp_v0_2 = var_s1 & 0xFFF;
        temp_s6 = 0x1000 - temp_v0_2;
        if ((var_s0 + temp_v0_2) >= 0x1000) {
            if (temp_s6 < temp_s2) {
                if (temp_s2 < var_s0) {
                    temp_a0 = var_s1;
                    var_s1 += temp_s2;
                    var_v0 = _Gr2singlestride(temp_a0, &sp6C, sp, arg3);
                    var_s0 -= temp_s2;
                } else {
                    var_v0 = _Gr2singlestride(var_s1, &sp6C, sp, arg3);
                    var_s1 += var_s0;
                    goto block_3;
                }
                goto block_4;
            }
            var_v0 = _Gr2multistride(var_s1, &sp6C, sp, temp_s6);
            M2C_TRAP_IF(temp_s2 == 0);
            M2C_TRAP_IF(temp_s2 == 0);
            var_s1 += (temp_s6 / temp_s2) * temp_s2;
            var_s0 -= (temp_s6 / temp_s2) * temp_s2;
            if (var_s1 & 0xFFF) {
                if (temp_s2 < var_s0) {
                    temp_a0_2 = var_s1;
                    var_s1 += temp_s2;
                    var_v0 = _Gr2singlestride(temp_a0_2, &sp6C, sp, arg3);
                    var_s0 -= temp_s2;
                    if (var_s0 != 0) {
                        goto loop_5;
                    }
                } else {
                    var_v0 = _Gr2singlestride(var_s1, &sp6C, sp, arg3);
                    var_s1 += var_s0;
                    goto block_3;
                }
            } else {
                goto block_4;
            }
        } else {
            var_v0 = _Gr2multistride(var_s1, &sp6C, sp, var_s0);
            if (temp_s2 >= var_s0) {
                var_s1 += var_s0;
block_3:
                var_s0 = 0;
            } else {
                M2C_TRAP_IF(temp_s2 == 0);
                temp_t0 = (var_s0 / temp_s2) * temp_s2;
                var_s0 %= temp_s2;
                var_s1 += temp_t0;
            }
block_4:
            if (var_s0 != 0) {
                goto loop_5;
            }
        }
        var_s7 = (void *) sp50;
    } else {
        var_v0 = subroutine_arg1;
    }
    var_v0->gx_thd |= 0x20000000;
    kern_free((s64) var_s7, 0x20000000);
}

s32 _Gr2DMAtrigger(void *arg1, void *arg2, struct gr2_pixeldma_args *arg3) {
    s32 var_s5;
    s32 var_v0;

    arg1->unk6A050 = 2;
    arg1->unk6A04C = 0;
    ((arg2->unk0 * 4) + arg1)->unk40000 = (s32) arg2->unk4;
    arg1->unk40000 = arg3;
    arg1->unk40000 = (struct gr2_pixeldma_args *) arg2->unk8;
    arg1->unk40000 = (struct gr2_pixeldma_args *) M2C_ERROR(/* Read from unset register $a4 */);
    arg1->unk40000 = (struct gr2_pixeldma_args *) arg2->unk24;
    if (!(arg2->unk14 & 8)) {
        arg1->unk40000 = NULL;
    } else {
        arg1->unk40000 = (struct gr2_pixeldma_args *)1;
    }
    arg1->unk40000 = NULL;
    if (fakePICdma(M2C_ERROR(/* Read from unset register $a5 */), 0x54) != 0) {
        var_v0 = -1;
    } else {
        var_s5 = 0;
loop_7:
        if (!(arg1->unk6A040 & 2)) {
            if (var_s5 <= 0x186A0) {
                us_delay(1);
                var_s5 += 1;
                goto loop_7;
            }
            cmn_err(4, &.srdata, 0, 0x20);
            var_v0 = -1;
        } else {
            var_v0 = 0;
        }
    }
    return var_v0;
}

s32 _Gr2MCDMAtrigger(struct gfx_gfx *arg0, struct gr2_pixeldma_args *arg1, void *arg2) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 var_v0;
    s64 temp_a5;
    s64 var_v0_2;
    s64 var_v0_3;
    u16 temp_a0;

    temp_a5 = arg0 + 0x70000;
    arg0->unk6A050 = 2;
    arg0->unk6A04C = 0;
    ((arg1->buf * 4) + arg0)->unk40000 = (s32) arg1->x0;
    temp_a2 = arg1->x1;
    arg0->unk40000 = temp_a2;
    temp_a1 = arg1->y0;
    arg0->unk40000 = temp_a1;
    temp_a0 = arg2->unk6;
    arg0->unk40000 = (s32) temp_a0;
    arg0->unk40000 = (s32) arg1->pixsize;
    if (!(arg1->unk14 & 8)) {
        sp0 = (s64) arg1;
        sp10 = temp_a5;
        arg0->unk40000 = 0;
    } else {
        sp0 = (s64) arg1;
        sp10 = temp_a5;
        arg0->unk40000 = 1;
    }
    arg0->unk40000 = 0;
    MCIntClr(temp_a0, temp_a1, temp_a2);
    if (MCdma(arg2, 0) != 0) {
        if (sp0->unk14 & 1) {
            cmn_err(4, NULL);
        } else {
            cmn_err(4, NULL);
        }
        var_v0 = -1;
    } else {
        var_v0_2 = 0;
        if (__sdata0 != 0) {
            if (__sdata4 <= 0) {
                __sdata4 = 0x1F40;
            }
            sp18 = 0;
loop_13:
            if (!(sp10->unk-5FC0 & 2)) {
                sp8 = var_v0_2;
                if (__sdata4 < var_v0_2) {
                    temp_a3 = sp18 < 0xB;
                    if (temp_a3 != 0) {
                        sp10->unk-5F98 = 0;
                        sp10->unk-5F98 = 0;
                        cmn_err(4, (? *)0x90, sp18, temp_a3);
                        sp8 = 0;
                        sp18 += 1;
                        goto block_17;
                    }
                    cmn_err(4, &.srdata, 0, 0x20);
                    var_v0 = -1;
                } else {
block_17:
                    us_delay(1);
                    var_v0_2 = sp8 + 1;
                    goto loop_13;
                }
            } else {
                goto block_18;
            }
        } else {
            var_v0_3 = 0;
loop_20:
            if (!(sp10->unk-5FC0 & 2)) {
                sp8 = var_v0_3;
                if (var_v0_3 <= 0x186A0) {
                    us_delay(1);
                    var_v0_3 = sp8 + 1;
                    goto loop_20;
                }
                cmn_err(4, &.srdata, 0, 0x20);
                var_v0 = -1;
            } else {
block_18:
                var_v0 = 0;
                sp10->unk-5FB0 = 2;
            }
        }
    }
    return var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x30, 0x34, 0x38, 0x3c, 0x48, 0x4c, 0x50, 0x54, 0x70, 0x74], gap at: 0x60. */
s64 Gr2MCPixDma(struct gfx_gfx *gfxp, struct gr2_pixeldma_args *args) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 sp10;
    struct gr2_data *spC;
    s16 spA;
    s16 sp8;
    s16 sp6;
    s16 sp4;
    s32 sp0;
    s16 temp_a5;
    s16 var_a3;
    s16 var_s4;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_lo;
    s32 var_a0;
    s32 var_s2;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 temp_a1;
    s64 var_v0;
    u16 temp_v0;
    u32 temp_v1;
    u32 var_a1;

    temp_a4 = args->x1;
    var_s2 = args->pad28;
    temp_a5 = args->pixsize * 4;
    if (args->unk14 & 2) {
        unksp40 = 0;
        sp28 = (s64) temp_a4;
        var_s4 = args->stride * 4;
    } else {
        var_s4 = temp_a5;
        unksp40 = 0;
        sp28 = (s64) temp_a4;
    }
    sp4 = temp_a5;
    spA = 1;
    spC = kvtophys(gfxp + 0x6A068, 1);
    var_v0_2 = 0x54;
    if (!(args->unk14 & 1)) {
        var_v0_2 = 0x56;
    }
    sp10 = var_v0_2;
    temp_a2 = args->y1 - 1;
    temp_a1 = (temp_a2 * var_s4) + temp_a5;
    sp20 = temp_a1;
    if (vdma_set_tlb(var_s2, temp_a1, temp_a2) != 0) {
        var_v0 = 0xE;
    } else {
        temp_v0 = args->unk14;
        if (temp_v0 & 0x10) {
            if (temp_v0 & 4) {
                var_s2 += sp20 - temp_a5;
                var_a3 = -(temp_a5 + var_s4);
            } else {
                var_a3 = var_s4 - temp_a5;
            }
            sp8 = var_a3;
            temp_v1 = args->pixsize * 4;
            var_a0 = args->y1;
            var_a1 = 0x2000U / temp_v1;
            M2C_TRAP_IF(temp_v1 == 0);
            if (var_a0 != 0) {
loop_19:
                var_v0_3 = var_a0;
                if (var_a0 < (s32) var_a1) {

                } else {
                    var_v0_3 = (s32) var_a1;
                }
                temp_lo = var_v0_3 * var_s4;
                sp6 = (s16) var_v0_3;
                temp_a3 = args->unk14 & 4;
                if (temp_a3 == 0) {
                    unksp68 = (s64) var_a0;
                    sp18 = (s64) var_v0_3;
                    unksp60 = (s64) var_a1;
                    sp0 = var_s2;
                    var_s2 += temp_lo;
                } else {
                    unksp68 = (s64) var_a0;
                    sp18 = (s64) var_v0_3;
                    unksp60 = (s64) var_a1;
                    sp0 = var_s2;
                    var_s2 -= temp_lo;
                }
                var_a1 = (u32) unksp60;
                if (_Gr2MCDMAtrigger(gfxp, args, sp, temp_a3) != 0) {
                    unksp40 = 5;
                } else {
                    var_a0 = unksp68 - sp18;
                    args->x1 += args->width * sp18;
                    if (var_a0 == 0) {

                    } else {
                        goto loop_19;
                    }
                }
            }
        } else {
            sp6 = (s16) args->y1;
            if (args->unk14 & 4) {
                sp0 = var_s2;
                sp8 = var_s4 - temp_a5;
            } else {
                sp8 = -(temp_a5 + var_s4);
                sp0 = (sp20 + var_s2) - temp_a5;
            }
            if (_Gr2MCDMAtrigger(gfxp, args, sp) != 0) {
                unksp40 = 5;
            }
        }
        var_v0 = unksp40;
        args->x1 = (s32) sp28;
    }
    return var_v0;
}

s64 Gr2PixelDma(struct gfx_gfx *gfxp, struct gr2_pixeldma_args *args) {
    s64 spC8;
    s64 spC0;
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
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 temp_a2_3;
    s32 temp_a6;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t2_4;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a4;
    s32 var_t9;
    s64 temp_a1;
    s64 temp_a2_2;
    s64 temp_a2_4;
    s64 temp_a2_5;
    s64 temp_v0_3;
    s64 var_a7;
    s64 var_ra;
    s64 var_t1;
    s64 var_v0;
    s64 var_v0_2;
    struct gr2_data *temp_a2;
    struct gr2_hw *temp_a3;
    u16 temp_t2_3;
    u16 temp_t9;
    u16 temp_t9_2;
    u32 temp_at;
    u32 var_a6;
    u64 temp_a3_2;
    u64 temp_a3_3;
    void *temp_v0_2;
    void *var_t2;

    var_ra = saved_reg_ra;
    temp_a2 = gfxp->gx_bdata;
    temp_a3 = temp_a2->base;
    if (args->height <= 0x20000) {
        var_v0 = 0;
        if (args->y0 != 0) {
            temp_t9 = args->unk14;
            var_t1 = temp_t9 & 2;
            if ((var_t1 == 0) || (args->stride >= args->pixsize)) {
                if (vdma_rev.unk7800 != 0) {
                    temp_v0 = temp_t9 & 0x14;
                    if (var_t1 != 0) {
                        switch (temp_v0) {          /* irregular */
                        default:
                            var_a0 = sp0;
                            if (temp_v0 == 0x10) {
                            case 4:
                                var_a0 = (args->stride - args->pixsize) >= 0x2000;
                            }
                            break;
                        case 0:
                        case 20:
                            var_a0 = (args->stride + args->pixsize) > 0x2000;
                            break;
                        }
                    } else {
                        var_a0 = 0;
                    }
                } else {
                    var_a0 = 1;
                }
                var_t2 = temp_a2->dma_buf;
                if ((var_a0 == 0) || (var_t2 != NULL)) {
                    goto block_12;
                }
                sp70 = (s64) temp_a3;
                sp78 = 0;
                sp80 = 0;
                spA0 = (s64) gfxp;
                sp50 = 0;
                sp58 = 0;
                spB0 = (s64) var_a0;
                sp68 = (s64) temp_a2;
                temp_v0_2 = kvpalloc(1, 0x100, 0, temp_a3);
                var_ra = spC8;
                if (temp_v0_2 != NULL) {
                    temp_a2->dma_buf = temp_v0_2;
                    var_t2 = temp_v0_2;
                    var_t1 = args->unk14 & 2;
block_12:
                    var_t9 = 0;
                    if (args->unk14 & 1) {
                        var_v0_2 = 0;
                    } else {
                        var_t9 = 1;
                        var_v0_2 = 2;
                    }
                    if (var_v0_2 == 2) {
                        sp88 = var_t1;
                        var_v0_2 = 0x10000000;
                    }
                    sp88 = var_t1;
                    temp_t2 = args->y1;
                    temp_t1 = args->pixsize;
                    if (sp88 != 0) {
                        spC8 = var_ra;
                        sp68 = (s64) temp_a2;
                        sp98 = var_v0_2;
                        sp70 = (s64) temp_a3;
                        sp78 = 0;
                        spB0 = (s64) var_a0;
                        sp80 = 0;
                        spA0 = (s64) gfxp;
                        sp50 = 0;
                        sp58 = 0;
                        sp60 = (s64) var_t2;
                        spA8 = (args->stride * (temp_t2 - 1)) + temp_t1;
                    } else {
                        spC8 = var_ra;
                        sp68 = (s64) temp_a2;
                        sp98 = var_v0_2;
                        sp70 = (s64) temp_a3;
                        sp78 = 0;
                        spB0 = (s64) var_a0;
                        sp80 = 0;
                        spA0 = (s64) gfxp;
                        sp50 = 0;
                        sp58 = 0;
                        sp60 = (s64) var_t2;
                        spA8 = temp_t1 * temp_t2;
                    }
                    temp_a2_2 = (var_t9 | 0x10) << 0;
                    sp48 = temp_a2_2;
                    temp_a1 = spA8 * 4;
                    sp90 = temp_a1;
                    if (useracc(args->pad28, temp_a1, temp_a2_2, 0) != 0) {
                        var_v0 = 0xE;
                    } else {
                        cache_operation(args->pad28, sp90, 0x21000);
                        if (RRM_CheckValidFault(spA0) >= 0) {
loop_34:
                            M2C_ERROR(/* unknown instruction: ll $a3, ($a4) */);
                            if (M2C_ERROR(/* unknown instruction: sc $a6, ($a4) */) == 0) {
                                goto loop_34;
                            }
                            sp30 = sp68 + 0x2C;
                            psema(&mcgdma + 0x7800, 0x19);
                            Gr2FillVc1Shadow((struct gr2_data *) sp68, 1);
                            if (spB0 != 0) {
                                temp_t9_2 = args->unk14;
                                sp28 = kvtophys(sp70 + 0x6A068, 0x6A068);
                                temp_t0 = args->pad28;
                                temp_a2_3 = args->height;
                                sp10 = (s64) temp_t0;
                                sp20 = (s64) args->x1;
                                temp_t2_2 = args->y1;
                                sp38 = (temp_a2_3 + temp_t0) - 1;
                                var_a4 = temp_t2_2;
                                if (temp_t9_2 & 0x10) {
                                    temp_at = args->pixsize * 4;
                                    var_a6 = 0x2000U / temp_at;
                                    M2C_TRAP_IF(temp_at == 0);
                                    if (var_a4 != 0) {
loop_40:
                                        if (var_a4 < (s32) var_a6) {
                                            sp40 = (s64) var_a4;
                                        } else {
                                            sp40 = (s64) var_a6;
                                        }
                                        temp_t2_3 = args->unk14;
                                        temp_t1_2 = args->pixsize;
                                        temp_t2_4 = temp_t2_3 & 2;
                                        if (temp_t2_3 & 4) {
                                            temp_a3_2 = temp_t1_2 * 4;
                                            sp18 = (s64) var_a4;
                                            spC0 = (s64) var_a6;
                                            if (temp_t2_4 != 0) {
                                                _Gr2HtoLmkudmada(sp38, (struct gfx_gfx *) sp60, sp40, temp_a3_2);
                                                var_a7 = sp38 - (args->stride * sp40 * 4);
                                            } else {
                                                _Gr2HtoLmkudmada(sp38, (struct gfx_gfx *) sp60, sp40, temp_a3_2);
                                                var_a7 = sp38 - (args->pixsize * sp40 * 4);
                                            }
                                            sp38 = var_a7;
                                        } else {
                                            sp18 = (s64) var_a4;
                                            spC0 = (s64) var_a6;
                                            if (temp_t2_4 != 0) {
                                                temp_a2_4 = sp40 * args->stride * 4;
                                                sp8 = temp_a2_4;
                                                _Gr2stridemkudmada(sp10, (struct gfx_gfx *) sp60, temp_a2_4, temp_t1_2 * 4);
                                            } else {
                                                temp_a2_5 = sp40 * temp_t1_2 * 4;
                                                sp8 = temp_a2_5;
                                                _Gr2mkudmada(sp10, (struct gfx_gfx *) sp60, temp_a2_5, sp98);
                                            }
                                            sp10 += sp8;
                                        }
                                        sp18 -= sp40;
                                        var_a6 = (u32) spC0;
                                        var_a4 = (s32) sp18;
                                        if (_Gr2DMAtrigger((void *) sp68, (void *) sp70, args, sp20) != 0) {
                                            sp80 = 0xE;
                                            sp78 = 1;
                                        } else {
                                            sp20 += args->width * sp40;
                                            if (var_a4 == 0) {
                                                goto block_67;
                                            }
                                            goto loop_40;
                                        }
                                    } else {
                                        goto block_67;
                                    }
                                } else {
                                    temp_a6 = temp_t9_2 & 4;
                                    if (temp_t9_2 & 2) {
                                        sp18 = (s64) var_a4;
                                        temp_a3_3 = args->pixsize * 4;
                                        if (temp_a6 != 0) {
                                            _Gr2stridemkudmada(sp10, (struct gfx_gfx *) sp60, (s64) temp_a2_3, temp_a3_3);
                                        } else {
                                            _Gr2HtoLmkudmada(sp38, (struct gfx_gfx *) sp60, (s64) temp_t2_2, temp_a3_3);
                                        }
                                    } else {
                                        sp18 = (s64) var_a4;
                                        if (temp_a6 != 0) {
                                            _Gr2mkudmada(sp10, (struct gfx_gfx *) sp60, (s64) temp_a2_3, sp98);
                                        } else {
                                            _Gr2HtoLmkudmada(sp38, (struct gfx_gfx *) sp60, (s64) temp_t2_2, args->pixsize * 4);
                                        }
                                    }
                                    if (_Gr2DMAtrigger((void *) sp68, (void *) sp70, args, sp20) != 0) {
                                        sp58 = 1;
                                        sp80 = 0xE;
                                        sp78 = 1;
                                    }
                                    sp50 = sp58;
block_67:
                                    if (sp50 == 0) {
                                        sp80 = 0;
                                    }
                                }
                            } else {
                                temp_v0_3 = Gr2MCPixDma((struct gfx_gfx *) sp70, args);
                                sp80 = temp_v0_3;
                                if (temp_v0_3 == 5) {
                                    sp78 = 1;
                                }
                            }
                            Gr2ReleaseVc1Shadow((struct gr2_data *) sp68);
                            vsema(&mcgdma + 0x7800);
loop_50:
                            M2C_ERROR(/* unknown instruction: ll $t1, ($t2) */);
                            if (M2C_ERROR(/* unknown instruction: sc $t8, ($t2) */) == 0) {
                                goto loop_50;
                            }
                            unuseracc(args->pad28, sp90, sp48);
                            if (sp78 != 0) {
                                cmn_err(4, NULL);
                                gr2_error(sp68);
                            }
                            var_v0 = sp80;
                        } else {
                            unuseracc(args->pad28, sp90, sp48);
                            var_v0 = 0xE;
                        }
                    }
                } else {
                    var_v0 = 0xC;
                }
            } else {
                var_v0 = 0x16;
            }
        }
    } else {
        var_v0 = 0x16;
    }
    return var_v0;
}
