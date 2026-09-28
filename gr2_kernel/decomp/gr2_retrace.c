s32 RRM_CheckValidFault();                          /* extern */
? cmn_err(?, ?, s32, s64);                          /* extern */
extern u8 __sbss0;
extern s32 __sbss8;
extern s32 __sdata0;
extern ? gfxinfo;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x48, 0x4c], gap at: 0x40. */
void Gr2RetraceHandler(struct gr2_data *data) {
    s64 sp18;
    s64 sp10;
    s32 temp_a0;
    s32 temp_a1_3;
    s32 temp_a3;
    s32 temp_s5;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a0;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_v0;
    struct gr2_info *temp_a6;
    struct vc1_shadow *temp_a5;
    struct vc1_shadow *temp_s1;
    struct vc1_shadow *var_s3;
    struct vc1_shadow *var_s3_2;
    u16 temp_a4;
    u32 temp_a1_4;
    u32 temp_a2;
    u32 temp_a2_2;
    u32 temp_at_3;
    u32 var_s7;
    u8 temp_a1;
    u8 temp_a1_2;
    u8 temp_at;
    u8 temp_at_2;
    u8 temp_v0_2;
    void *temp_a0_2;
    void *temp_v1_2;
    void *var_s4;

    temp_s1 = data->vc1_shadow;
    gfxinfo.unk7800->unk10 = (s32) (gfxinfo.unk7800->unk10 + 1);
    temp_s5 = gr2_base2index(temp_s1->base);
    nested_spinlock(data->lock);
    if (temp_s1->cursor_on == 0) {
        if (temp_s1->cursor_moved != 0) {
            goto block_3;
        }
    } else {
block_3:
        if (temp_s1->shadow_locked == 0) {
            Gr2FillVc1Shadow_Locked(data);
        }
    }
    if (temp_s1->cursor_on != 0) {
        temp_a1 = data->vc1_shadow->sysctl;
        __sbss0 = temp_a1;
        temp_a1_2 = temp_a1 | 0x20;
        data->vc1_shadow->sysctl = temp_a1_2;
        data->vc1_shadow->base->vc1.sysctl.b = temp_a1_2 & 0xFF;
        temp_s1->cursor_on = 0;
    }
    if (temp_s1->cursor_moved != 0) {
        temp_at = data->vc1_shadow->sysctl;
        __sbss0 = temp_at;
        temp_at_2 = temp_at & ~0x20;
        data->vc1_shadow->sysctl = temp_at_2;
        data->vc1_shadow->base->vc1.sysctl.b = temp_at_2;
    }
    __sbss8 = 0;
loop_11:
    temp_v0 = *(s32 *)0xBFBD9900;
    if (temp_s5 != 0) {
        if ((temp_s5 != 1) || !(temp_v0 & 4)) {
            goto block_10;
        }
    } else if (!(temp_v0 & 1)) {
block_10:
        us_delay(1);
        temp_v1 = __sbss8 + 1;
        __sbss8 = temp_v1;
        if (temp_v1 < 0xA) {
            goto loop_11;
        }
    }
    var_s7 = temp_s1->num_pending_wids;
    if (var_s7 != 0) {
        if ((subroutine_arg2->unk6C11C & 1) == 1) {
            do {
                us_delay(1);
            } while ((subroutine_arg2->unk6C11C & 1) == 1);
        }
        var_s5 = 0;
        var_s3 = temp_s1;
        sp18 = (s64) subroutine_arg2->unk6C114;
        sp10 = (s64) subroutine_arg2->unk6C110;
        subroutine_arg2->unk6C1B4 = 0;
loop_21:
        if (var_s3->wid_swaps[0].pending_type != 0) {
            var_s7 -= 1;
            if (var_s3->wid_swaps[0].swap_interval < 2) {
                subroutine_arg2->unk6C1B0 = (s8) (var_s5 * 4);
                subroutine_arg2->unk6C1A4 = (u32) var_s3->wid_swaps[0].new_mode;
            }
            if (var_s7 != 0) {
                goto block_20;
            }
        } else {
block_20:
            var_s5 += 1;
            var_s3 += 0x18;
            if (var_s5 < 0x20) {
                goto loop_21;
            }
        }
        var_s5_2 = 0;
        var_s3_2 = temp_s1;
loop_27:
        temp_v0_2 = var_s3_2->wid_swaps[0].pending_type;
        var_s5_2 += 1;
        if (temp_v0_2 != 0) {
            temp_a0 = var_s3_2->wid_swaps[0].swap_interval;
            temp_a1_3 = temp_a0 < 2;
            if (temp_a1_3 != 0) {
                temp_a2 = var_s3_2->wid_swaps[0].new_mode;
                var_s3_2->wid_swaps[0].current_mode = temp_a2;
                if (temp_v0_2 != 2) {
                    temp_a0_2 = var_s3_2->wid_swaps[0].rrm_buf;
                    if (temp_a0_2 != NULL) {
                        rrmValidateBuffer(temp_a0_2, temp_a1_3, temp_a2);
                    }
                } else {
                    rrmValidateMGRSwapBuf(data->gfx_board, var_s3_2->wid_swaps[0].mgr_buf, temp_a2);
                }
                var_s3_2->wid_swaps[0].pending_type = 0;
                var_s3_2->wid_swaps[0].mgr_buf = NULL;
                var_s3_2->wid_swaps[0].rrm_buf = NULL;
                var_s3_2->wid_swaps[0].swap_interval = 0;
                temp_at_3 = temp_s1->num_pending_wids - 1;
                temp_s1->num_pending_wids = temp_at_3;
                if (temp_at_3 != 0) {
                    goto block_26;
                }
            } else {
                var_s3_2->wid_swaps[0].swap_interval = temp_a0 - 1;
                goto block_26;
            }
        } else {
block_26:
            var_s3_2 += 0x18;
            if (var_s5_2 < 0x20) {
                goto loop_27;
            }
        }
        subroutine_arg2->unk6C1B4 = (s8) sp18;
        subroutine_arg2->unk6C1B0 = (s8) sp10;
    }
    if (temp_s1->cursor_moved != 0) {
        temp_a3 = data->cursor_y;
        temp_a6 = data->info;
        temp_a5 = data->vc1_shadow;
        var_a0 = data->cursor_x - data->hotspot_x;
        temp_a4 = temp_a5->cur_ep;
        if (temp_a6->MonitorType != 0x82) {
            var_v0 = (temp_a6->gfx_info.ypmax + temp_a3) - 0x400;
            if (var_v0 < 0) {
                goto block_54;
            }
        } else {
            var_v0 = temp_a3;
            if (temp_a3 < 0) {
block_54:
                var_v0 = 0;
            }
        }
        if (var_a0 < __sdata0) {
            temp_a5->cur_ep = 0;
            data->vc1_shadow->base->vc1.addrhi.b = 0;
            data->vc1_shadow->base->vc1.addrlo.b = 0;
            var_a0 += data->cursor_x_adj;
            data->vc1_shadow->base->vc1.cmd0.h = 0x800;
        } else {
            temp_a5->cur_ep = 0;
            data->vc1_shadow->base->vc1.addrhi.b = 0;
            data->vc1_shadow->base->vc1.addrlo.b = 0;
            data->vc1_shadow->base->vc1.cmd0.h = 0x900;
        }
        data->vc1_shadow->cur_ep = 0x22;
        data->vc1_shadow->base->vc1.addrhi.b = 0;
        data->vc1_shadow->base->vc1.addrlo.b = 0x22;
        data->vc1_shadow->base->vc1.cmd0.h = (u16) var_a0;
        data->vc1_shadow->base->vc1.cmd0.h = (data->cursor_y_adj - data->hotspot_y) + var_v0;
        data->vc1_shadow->cur_ep = temp_a4;
        data->vc1_shadow->base->vc1.addrhi.b = (u8) (temp_a4 >> 8);
        data->vc1_shadow->base->vc1.addrlo.b = (u8) temp_a4;
        temp_s1->cursor_on = 1;
        temp_s1->cursor_moved = 0;
    }
    if ((data->fp_installed != 0) && (data->info->fp_id != 0) && !(data->retrace_count & 0x3F)) {
        gr2_fp_reinit(data);
    }
    var_s4 = temp_s1->pending_events;
    if (var_s4 != NULL) {
        do {
            rrmValidateRetrace(var_s4);
            temp_v1_2 = var_s4;
            var_s4 = var_s4->unk24;
            temp_v1_2->unk24 = 0;
        } while (var_s4 != NULL);
    }
    temp_s1->pending_events = NULL;
    temp_a1_4 = data->video_sync_flag;
    temp_a2_2 = data->retrace_count + 1;
    data->retrace_count = temp_a2_2;
    data->retrace_ticks += 1;
    if (temp_a1_4 != 0) {
        rrmValidateVideoSync(data, temp_a1_4, temp_a2_2);
    }
    if (data->info->corona_rev != 0) {
        ev1_dropevent();
    }
    nested_spinunlock((void *) subroutine_arg0);
}

s32 Gr2SetDisplayMode(struct gfx_gfx *gfxp, s32 mode, u32 flags) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s32 var_v0;
    s8 temp_a2;
    struct vc1_shadow *temp_a5;

    temp_a5 = gfxp->gx_bdata->vc1_shadow;
    if ((mode < 0) || (sp0 = (s64) temp_a5->base, sp8 = (s64) temp_a5, sp10 = (s64) flags, ((mode < 0x20) == 0))) {
        var_v0 = -0x16;
    } else {
        temp_a2 = mode * 4;
        temp_a0 = splhi();
        sp0->unk6C1B4 = 0;
        sp0->unk6C1B0 = temp_a2;
        sp0->unk6C1A4 = (s32) sp10;
        ((mode * 0x18) + sp8)->unk10 = (s32) sp10;
        splx(temp_a0, sp0 + 0x70000, temp_a2, 0x70000);
        var_v0 = 0;
    }
    return var_v0;
}

s32 Gr2SchedMgrSwapBuf(struct gfx_gfx *gfxp, s32 mgr_buf_unk0, ? mgr_buf_unk4, s32 mode) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 temp_a2_2;
    s32 temp_v0;
    s32 var_v0;
    void *temp_a2;

    sp20 = M2C_ERROR(/* Read from unset register $a1 */);
    sp18 = M2C_ERROR(/* Read from unset register $a4 */);
    sp10 = (s64) gfxp->gx_bdata->vc1_shadow;
    if (RRM_CheckValidFault() >= 0) {
        temp_v0 = splhi();
        temp_a2 = (mgr_buf_unk0 * 0x18) + sp10;
        if (temp_a2->unk24 == 0) {
            temp_a2->unk1C = 0;
            temp_a2->unk24 = 2U;
            temp_a2->unk18 = 1;
            temp_a2->unk20 = (s32) sp20;
            temp_a2->unk14 = (s32) sp18;
            temp_a2_2 = sp10->unkC + 1;
            sp10->unkC = temp_a2_2;
            splx(temp_v0, sp10, temp_a2_2, sp18);
            var_v0 = 0;
        } else {
            sp28 = (s64) temp_v0;
            cmn_err(4, 0, mgr_buf_unk0);
            splx((s32) sp28);
            var_v0 = 0x10;
        }
    } else {
        var_v0 = -0xE;
    }
    return var_v0;
}

s32 Gr2SchedSwapBuf(struct gr2_data *data, s32 rrm_buf_unk0, s64 rrm_buf_unk4, s32 mode, ? interval_unk0, ? interval_unk4) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0;
    s32 var_v0;
    s64 var_a1;
    void *temp_a6;

    if ((rrm_buf_unk0 < 0) || (sp10 = M2C_ERROR(/* Read from unset register $a1 */), sp18 = (s64) data->vc1_shadow, sp20 = rrm_buf_unk4, ((rrm_buf_unk0 < 0x20) == 0))) {
        var_v0 = 0x16;
    } else {
        temp_v0 = splhi();
        temp_a6 = (rrm_buf_unk0 * 0x18) + sp18;
        var_a1 = sp20;
        if (temp_a6->unk24 != 0) {
            sp8 = (s64) temp_v0;
            cmn_err(4, 0, rrm_buf_unk0, sp10);
            splx((s32) sp8);
            var_v0 = 0x10;
        } else {
            if (sp10->unk30->unk18 & 8) {
                var_a1 = (s64) sp10->unk50->unk12;
            }
            temp_a0 = temp_a6->unk10;
            if (var_a1 != 0) {
                temp_a6->unk14 = (s32) (temp_a0 | 0x01000000);
            } else {
                temp_a6->unk14 = (s32) (temp_a0 & ~0x01000000);
            }
            temp_a0_2 = sp10->unk1C;
            if (temp_a0_2 >= 2) {
                temp_a6->unk18 = temp_a0_2;
            } else {
                temp_a6->unk18 = 1;
            }
            temp_a6->unk1C = (s32) sp10;
            temp_a6->unk20 = 0;
            temp_a6->unk24 = 1U;
            sp18->unkC = (s32) (sp18->unkC + 1);
            splx(temp_v0, 1, sp18, sp10);
            var_v0 = 0;
        }
    }
    return var_v0;
}

s32 Gr2UnSchedSwapBuf(struct gfx_gfx *gfxp, void *rn, s32 wid) {
    s64 sp8;
    s32 temp_a1;
    s32 temp_v0;
    s32 var_v0;
    void *temp_a4;

    if ((wid < 0) || (sp8 = (s64) gfxp->gx_bdata->vc1_shadow, ((wid < 0x20) == 0))) {
        var_v0 = -0x16;
    } else {
        temp_v0 = splhi();
        temp_a4 = (wid * 0x18) + sp8;
        temp_a1 = temp_a4->unk1C;
        if (temp_a1 != 0) {
            temp_a4->unk18 = 0;
            temp_a4->unk24 = 0;
            temp_a4->unk20 = 0;
            temp_a4->unk1C = 0;
            sp8->unkC = (s32) (sp8->unkC - 1);
            splx(temp_v0, temp_a1, sp8);
            var_v0 = 1;
        } else {
            splx(temp_v0, temp_a1, sp8);
            var_v0 = 0;
        }
    }
    return var_v0;
}

s32 Gr2SchedRetraceEvent(struct gr2_data *data, void *event) {
    s32 temp_v0;
    struct vc1_shadow *temp_s1;
    void *temp_a4;
    void *var_a1;

    temp_s1 = data->vc1_shadow;
    temp_v0 = splhi();
    temp_a4 = temp_s1->pending_events;
    if (temp_a4 != event) {
        if ((temp_a4 != NULL) && (var_a1 = temp_a4->unk24, (var_a1 != NULL))) {
loop_3:
            if (event != var_a1) {
                var_a1 = var_a1->unk24;
                if (var_a1 == NULL) {
                    goto block_5;
                }
                goto loop_3;
            }
            splx(temp_v0, var_a1);
        } else {
block_5:
            event->unk24 = temp_a4;
            temp_s1->pending_events = event;
            splx(temp_v0);
        }
    } else {
        splx(temp_v0);
    }
    return 0;
}

void Gr2RetraceInit(struct gr2_data *data) {
    s64 sp10;
    s64 temp_v0;

    temp_v0 = kern_malloc(0x31CU);
    sp10 = temp_v0;
    bzero((void *) temp_v0, 0x31CU);
    *sp10 = (struct gr2_hw *) data->base;
    data->vc1_shadow = (struct vc1_shadow *) sp10;
}

void Gr2FillVc1Shadow_Locked(struct gr2_data *data) {
    struct gr2_hw *temp_at;
    struct vc1_shadow *temp_v0;
    u8 temp_a0;

    temp_v0 = data->vc1_shadow;
    temp_at = temp_v0->base;
    temp_a0 = temp_at->vc1.addrlo.b & 0xFFFF;
    temp_at->vc1.addrlo.b = temp_a0;
    temp_v0->cur_ep = (temp_at->vc1.addrhi.b << 8) | temp_a0;
    temp_v0->shadow_locked = 0;
    temp_v0->sysctl = temp_at->vc1.sysctl.b;
}

void Gr2FillVc1Shadow(struct gr2_data *data, s32 arg1) {
    s64 sp18;
    s64 sp10;
    s16 temp_a1;
    s32 temp_a0;
    struct vc1_shadow *temp_at;
    u8 temp_a2;

    temp_at = data->vc1_shadow;
    sp18 = (s64) temp_at;
    sp10 = (s64) temp_at->base;
    temp_a0 = splhi();
    temp_a2 = sp10->unk6C050 & 0xFFFF;
    sp10->unk6C050 = temp_a2;
    temp_a1 = (sp10->unk6C054 << 8) | temp_a2;
    sp18->unk4 = temp_a1;
    sp18->unk8 = arg1;
    sp18->unk6 = (u8) sp10->unk6C058;
    splx(temp_a0, temp_a1, temp_a2);
}

void Gr2ReleaseVc1Shadow(struct gr2_data *data) {
    data->vc1_shadow->shadow_locked = 0;
}

void Gr2RetraceCloseRN(struct gr2_data *data, s32 arg1) {
    s32 temp_v0;
    s32 var_a4;
    struct vc1_shadow *temp_a4_2;
    struct vc1_shadow *temp_s5;
    struct vc1_shadow *var_a1;
    void *temp_a4;
    void *var_a5;

    temp_s5 = data->vc1_shadow;
    temp_v0 = splhi();
    var_a4 = 0;
    var_a1 = temp_s5;
loop_2:
    var_a4 += 1;
    if ((var_a1->wid_swaps[0].pending_type != 0) && (var_a1->wid_swaps[0].rrm_buf == arg1)) {
        temp_s5->num_pending_wids -= 1;
        var_a1->wid_swaps[0].swap_interval = 0;
        var_a1->wid_swaps[0].mgr_buf = NULL;
        var_a1->wid_swaps[0].rrm_buf = NULL;
        var_a1->wid_swaps[0].pending_type = 0;
    } else {
        var_a1 += 0x18;
        if (var_a4 < 0x20) {
            goto loop_2;
        }
    }
    temp_a4 = temp_s5->pending_events;
    if (temp_a4 == arg1) {
        temp_s5->pending_events = temp_a4->unk24;
    } else if (temp_a4 != NULL) {
        var_a1 = temp_a4->unk24;
        var_a5 = temp_a4;
        if (var_a1 != NULL) {
loop_10:
            temp_a4_2 = var_a1->unk24;
            if (arg1 != var_a1) {
                var_a5 = var_a1;
                var_a1 = temp_a4_2;
                if (temp_a4_2 == NULL) {

                } else {
                    goto loop_10;
                }
            } else {
                var_a5->unk24 = temp_a4_2;
            }
        }
    }
    splx(temp_v0, var_a1);
}

s32 Gr2PositionCursor(struct gr2_data *data, u32 x, s32 y) {
    s64 sp40;
    s64 sp38;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 var_a5_2;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s5;
    s32 var_v0;
    struct gr2_info *temp_s2;
    struct vc1_shadow *temp_a6;
    struct vc1_shadow *temp_a6_2;
    struct vc1_shadow *temp_s3;
    u16 temp_a7;
    u16 temp_a7_2;
    u16 temp_s5;
    u32 var_a5;

    temp_s2 = data->info;
    temp_s3 = data->vc1_shadow;
    var_v0 = splhi();
    data->cursor_y = y;
    temp_a0 = data->cursor_x;
    data->cursor_x = (s32) x;
    var_a5 = x;
    if (data->info->MonitorType != 0x82) {
        var_s5 = (temp_s2->gfx_info.ypmax + y) - 0x400;
    } else {
        var_s5 = y;
    }
    if (var_s5 < 0) {
        var_s5 = 0;
    }
    temp_a1 = data->hotspot_x;
    var_s4 = x - temp_a1;
    temp_s5 = data->cursor_y_adj + (var_s5 - data->hotspot_y);
    if ((s32) temp_s2->gfx_info.xpmax < 0x402) {
        if (temp_s3->shadow_locked == 0) {
            sp40 = (s64) var_v0;
            Gr2FillVc1Shadow_Locked(data);
            var_a5 = (u32) data->cursor_x;
            var_v0 = (s32) sp40;
        }
        temp_a6 = data->vc1_shadow;
        temp_a7 = temp_a6->cur_ep;
        if ((temp_s2->gfx_info.xpmax - 1) < (s32) var_a5) {
            var_s4_2 = (temp_s2->gfx_info.xpmax - data->hotspot_x) - 1;
        } else {
            var_s4_2 = var_a5 - data->hotspot_x;
        }
        temp_a6->cur_ep = 0x22;
        data->vc1_shadow->base->vc1.addrhi.b = 0;
        data->vc1_shadow->base->vc1.addrlo.b = 0x22;
        data->vc1_shadow->base->vc1.cmd0.h = data->cursor_x_adj + var_s4_2;
        data->vc1_shadow->base->vc1.cmd0.h = temp_s5;
        data->vc1_shadow->cur_ep = temp_a7;
        data->vc1_shadow->base->vc1.addrhi.b = (u8) (temp_a7 >> 8);
        data->vc1_shadow->base->vc1.addrlo.b = (u8) temp_a7;
        temp_s3->cursor_moved = 0;
    } else {
        temp_a2 = __sdata0;
        var_a5_2 = var_s4 < temp_a2;
        if (((var_a5_2 != 0) && ((temp_a0 - temp_a1) >= temp_a2)) || ((var_s4 >= temp_a2) && ((temp_a0 - temp_a1) < temp_a2))) {
            temp_s3->cursor_moved = 1;
        } else if (temp_s3->cursor_moved != 1) {
            if (temp_s3->shadow_locked == 0) {
                sp40 = (s64) var_v0;
                sp38 = (s64) temp_a0;
                Gr2FillVc1Shadow_Locked(data);
                var_a5_2 = var_s4 < __sdata0;
            }
            temp_a6_2 = data->vc1_shadow;
            temp_a7_2 = temp_a6_2->cur_ep;
            if (var_a5_2 != 0) {
                if ((temp_a0 - data->hotspot_x) < temp_a2) {
                    var_s4 += data->cursor_x_adj;
                }
            }
            temp_a6_2->cur_ep = 0x22;
            data->vc1_shadow->base->vc1.addrhi.b = 0;
            data->vc1_shadow->base->vc1.addrlo.b = 0x22;
            data->vc1_shadow->base->vc1.cmd0.h = (u16) var_s4;
            data->vc1_shadow->base->vc1.cmd0.h = temp_s5;
            data->vc1_shadow->cur_ep = temp_a7_2;
            data->vc1_shadow->base->vc1.addrhi.b = (u8) (temp_a7_2 >> 8);
            data->vc1_shadow->base->vc1.addrlo.b = (u8) temp_a7_2;
        }
    }
    splx(var_v0);
    return 0;
}

s32 Gr2SetCursorHotspot(struct gr2_data *data, u32 x, u32 y) {
    s64 sp50;
    s64 sp40;
    s64 sp30;
    s32 temp_a1;
    s32 temp_a2;
    s32 var_a1;
    s32 var_a3;
    s32 var_a5_2;
    s32 var_s6;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_v0;
    struct gr2_data *temp_s0;
    struct gr2_info *temp_s3;
    struct vc1_shadow *temp_a6;
    struct vc1_shadow *temp_s4;
    u16 temp_a0_2;
    u16 temp_s6;
    u32 temp_a0;
    u32 var_a5;

    temp_s0 = data->unk10;
    temp_s3 = temp_s0->info;
    temp_s4 = temp_s0->vc1_shadow;
    var_v0 = splhi();
    temp_s0->hotspot_y = y;
    temp_a0 = temp_s0->hotspot_x;
    temp_s0->hotspot_x = x;
    var_a5 = x;
    temp_a1 = temp_s0->cursor_y;
    if (temp_s0->info->MonitorType != 0x82) {
        var_s6 = (temp_s3->gfx_info.ypmax + temp_a1) - 0x400;
    } else {
        var_s6 = temp_a1;
    }
    if (var_s6 < 0) {
        var_s6 = 0;
    }
    var_a1 = temp_s0->cursor_x;
    var_s7 = var_a1 - x;
    temp_s6 = temp_s0->cursor_y_adj + (var_s6 - y);
    if ((s32) temp_s3->gfx_info.xpmax < 0x402) {
        if (temp_s4->shadow_locked == 0U) {
            sp50 = (s64) var_v0;
            Gr2FillVc1Shadow_Locked(temp_s0);
            var_a1 = temp_s0->cursor_x;
            var_a5 = (u32) temp_s0->hotspot_x;
        }
        temp_a6 = temp_s0->vc1_shadow;
        temp_a0_2 = temp_a6->cur_ep;
        if ((temp_s3->gfx_info.xpmax - 1) < var_a1) {
            var_s7_2 = (temp_s3->gfx_info.xpmax - var_a5) - 1;
        } else {
            var_s7_2 = var_a1 - var_a5;
        }
        temp_a6->cur_ep = 0x22;
        temp_s0->vc1_shadow->base->vc1.addrhi.b = 0;
        temp_s0->vc1_shadow->base->vc1.addrlo.b = 0x22;
        temp_s0->vc1_shadow->base->vc1.cmd0.h = temp_s0->cursor_x_adj + var_s7_2;
        temp_s0->vc1_shadow->base->vc1.cmd0.h = temp_s6;
        temp_s0->vc1_shadow->cur_ep = temp_a0_2;
        temp_s0->vc1_shadow->base->vc1.addrhi.b = (u8) (temp_a0_2 >> 8);
        temp_s0->vc1_shadow->base->vc1.addrlo.b = (u8) temp_a0_2;
        temp_s4->cursor_moved = 0;
    } else {
        temp_a2 = __sdata0;
        var_a5_2 = var_s7 < temp_a2;
        if (((var_a5_2 != 0) && ((var_a1 - temp_a0) >= temp_a2)) || ((var_s7 >= temp_a2) && ((var_a1 - temp_a0) < temp_a2))) {
            temp_s4->cursor_moved = 1;
        } else if (temp_s4->cursor_moved != 1) {
            if (temp_s4->shadow_locked == 0) {
                sp50 = (s64) var_v0;
                sp40 = (s64) temp_a0;
                Gr2FillVc1Shadow_Locked(temp_s0);
                var_a5_2 = var_s7 < __sdata0;
            }
            var_a3 = var_s7 < temp_a2;
            var_a1 = (s32) temp_s0->vc1_shadow->cur_ep;
            if ((var_a5_2 != 0) && ((temp_s0->cursor_x - temp_a0) < temp_a2)) {
                var_s7 += temp_s0->cursor_x_adj;
            } else if ((var_a3 != 0) || (var_a3 = 0x22, (((temp_s0->cursor_x - temp_a0) < temp_a2) != 0))) {
                sp50 = (s64) var_v0;
                sp30 = (s64) var_a1;
                printf(NULL, var_a1, temp_a2, var_a3);
            }
            temp_s0->vc1_shadow->cur_ep = 0x22;
            temp_s0->vc1_shadow->base->vc1.addrhi.b = 0;
            temp_s0->vc1_shadow->base->vc1.addrlo.b = 0x22;
            temp_s0->vc1_shadow->base->vc1.cmd0.h = (u16) var_s7;
            temp_s0->vc1_shadow->base->vc1.cmd0.h = temp_s6;
            temp_s0->vc1_shadow->cur_ep = (u16) var_a1;
            temp_s0->vc1_shadow->base->vc1.addrhi.b = (u8) ((u32) var_a1 >> 8);
            temp_s0->vc1_shadow->base->vc1.addrlo.b = (u8) var_a1;
        }
    }
    splx(var_v0, var_a1);
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x48, 0x4c, 0x50, 0x54], gap at: 0x30. */
s32 Gr2SetGammaRamp(struct gr2_data *data, u8 *table, s64 count_unk0, s64 count_unk4, ? flags_unk0, ? flags_unk4) {
    s32 temp_hi;
    s32 var_at;
    s32 var_s3;
    s32 var_s4;
    s64 var_s0;
    s64 var_s1;
    struct gr2_hw *temp_s0;
    u8 *var_s2;
    u8 temp_a4;

    temp_s0 = data->base;
    var_s4 = splhi();
    if ((temp_s0->xmap[0].fifostatus.b & 1) == 1) {
        do {
            us_delay(1);
        } while ((temp_s0->xmap[0].fifostatus.b & 1) == 1);
    }
    var_s0 = subroutine_arg2;
    var_s1 = subroutine_arg0;
    var_s2 = table;
    var_s3 = 0;
    temp_s0->reddac.addr.b = 0;
    temp_s0->grndac.addr.b = 0;
    temp_s0->bluedac.addr.b = 0;
    do {
        temp_hi = var_s3 % 100;
        M2C_TRAP_IF(0x64 == 0);
        temp_s0->reddac.paltram.b = *var_s2;
        var_s2 += 1;
        temp_a4 = *var_s1;
        var_s1 += 1;
        var_s3 += 1;
        temp_s0->grndac.paltram.b = temp_a4;
        var_s0 += 1;
        temp_s0->bluedac.paltram.b = var_s0->unk-1;
        if (temp_hi != 0) {
            goto block_3;
        }
        splx(var_s4);
        var_s4 = splhi();
        var_at = var_s3 < 0x100;
        if ((temp_s0->xmap[0].fifostatus.b & 1) == 1) {
            do {
                us_delay(1);
            } while ((temp_s0->xmap[0].fifostatus.b & 1) == 1);
block_3:
            var_at = var_s3 < 0x100;
        }
    } while (var_at != 0);
    splx(var_s4);
    return 0;
}
