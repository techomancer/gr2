extern s64 .lit8;
extern s8 .srdata;
extern ? __sbss0;
extern ? __sdata10;
extern ? __sdata20;
extern ? __sdata28;

void Gr2Reset(struct gr2_hw *base) {
    s64 var_a0;

    var_a0 = 4;
    if (is_fullhouse() != 0) {
        if (subroutine_arg2 == 2) {
            var_a0 = 2;
        }
        *(u8 *)0xBFBD901F &= ~var_a0;
        flushbus();
        us_delay(0xA);
        *(void *)0xBFBD901F = (u8) (*(void *)0xBFBD901F | subroutine_arg0);
        flushbus();
    } else if (is_indyelan() != 0) {
        *(s32 *)0xBFA00004 &= ~0x400;
        flushbus();
        us_delay(0xA);
        *(void *)0xBFA00004 = (s32) (*(void *)0xBFA00004 | 0x400);
        flushbus();
    }
}

void _Gr2ProbeGEs(struct gr2_hw *base, struct gr2_info *info) {
    s32 var_a5;
    u32 *var_a3;
    u8 var_a4;

    var_a4 = 2;
    var_a5 = 1;
    var_a3 = &base->shram[0x100] + 0x70000;
    info->GEs = 1;
loop_2:
    var_a3->unk-8000 = 0x1F1F1F1F;
    var_a3->unk-7F84 = 0x2E2E2E2E;
    var_a3->unk-7F04 = 0x3D3D3D3D;
    var_a3->unk-7E84 = 0x4C4C4C4C;
    var_a3->unk-7E04 = 0x5B5B5B5B;
    var_a5 += 1;
    if ((var_a3->unk-8000 == 0x1F1F1F1F) && (var_a3->unk-7F84 == 0x2E2E2E2E) && (var_a3->unk-7F04 == 0x3D3D3D3D) && (var_a3->unk-7E84 == 0x4C4C4C4C) && (var_a3->unk-7E04 == 0x5B5B5B5B)) {
        info->GEs = var_a4;
    }
    var_a3 += 0x400;
    var_a4 += 1;
    if (var_a5 < 8) {
        goto loop_2;
    }
}

void _Gr2ProbeChipRev(struct gr2_hw *base, struct gr2_info *info) {
    info->mc_rev = mc_rev_level.unk7800 | 0x80;
    vdma_rev.unk7800 = (s32) mc_rev_level.unk7800;
    info->HQ2Rev = (u8) ((u32) base->hq.hq_gepc.w >> 0x10);
    base->ge[0].ram0[0xFD].w = 0;
    info->GE7Rev = (u8) ((u32) (base->ge[0].ram0[0xFD].w & 0xFF) >> 5);
}

void Gr2ProbeVC1(struct gr2_hw *base, struct gr2_info *info) {
    base->vc1.addrhi.b = 0;
    base->vc1.addrlo.b = 5;
    info->VC1Rev = base->vc1.testreg.b & 7;
}

void gr2_fp_probe(struct gr2_info *info) {
    s64 sp10;
    void *temp_v0;
    void *temp_v0_2;

    sp10 = (s64) info;
    if (gr2_i2cPanelID(sp) != 0) {
        temp_v0 = find_inventory(0, 0x11, 0, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */));
        if (temp_v0 != NULL) {
            replace_in_inventory(temp_v0, 0x11, 1, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), M2C_ERROR(/* Unable to find stack arg 0x14 in block */));
        } else {
            add_to_inventory(0x11, 1, 0, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */));
        }
        if (subroutine_arg0 != 3) {
            if (subroutine_arg0 != 4) {
                sp10->unk39 = 0;
            } else {
                sp10->unk39 = 0x83;
            }
        } else {
            sp10->unk39 = 0x82;
        }
    } else {
        gr2_i2cPanelOff();
        temp_v0_2 = find_inventory(0, 0x11, 1, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */));
        if (temp_v0_2 != NULL) {
            replace_in_inventory(temp_v0_2, 0x11, 0, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), M2C_ERROR(/* Unable to find stack arg 0x14 in block */));
        } else {
            add_to_inventory(0x11, 0, 0, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */));
        }
        sp10->unk39 = 0xFF;
    }
}

void gr2_fp_reinit(struct gr2_data *data) {
    struct gr2_info *temp_a0;
    struct gr2_info *temp_a0_2;

    if (gr2_i2cPanelID(sp) != 0) {
        if (subroutine_arg0 != 3) {
            if (subroutine_arg0 == 4) {
                temp_a0 = data->info;
                if (temp_a0->fp_id != 0x83) {
                    temp_a0->fp_id = 0x83;
                    goto block_9;
                }
            } else {
                data->fp_installed = 0;
                data->info->fp_id = 0;
            }
        } else {
            temp_a0_2 = data->info;
            if (temp_a0_2->fp_id != 0x82) {
                temp_a0_2->fp_id = 0x82;
block_9:
                gr2_i2cPanelOn();
            }
        }
    } else {
        data->info->fp_id = 0xFF;
    }
}

s32 Gr2Probe(struct gr2_hw *base, struct gr2_info *info) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a4;
    s32 var_a5;
    s32 var_v0;
    s64 temp_a0;
    u8 *temp_a5;
    u8 temp_a0_2;
    u8 temp_a0_3;
    u8 temp_a1;
    u8 temp_a4;
    u8 var_a3;

    temp_v0 = gr2_base2index(base);
    temp_a5 = temp_v0 + &__sbss0;
    temp_a4 = *temp_a5;
    if (temp_a4 != 2) {
        sp18 = (s64) temp_v0;
        if (temp_a4 != 1) {
            *temp_a5 = 1;
            if (badaddr(&base->hq.mystery, 4) != 0) {
                var_v0 = 0;
            } else {
                sp28 = (s64) (base + 0x70000);
                var_v0 = 0;
                if (base->hq.mystery.w != .lit8) {

                } else {
                    strncpy(info->gfx_info.name, &.srdata, 0x10U);
                    info->gfx_info.length = 0x3C;
                    temp_a1 = ~sp28->unk-4000 & 0xF;
                    if (temp_a1 != 0) {
                        info->GfxBoardRev = temp_a1;
                        temp_a0 = (s32) temp_a1 < 4;
                        info->BoardType = 0;
                        if (temp_a0 != 0) {
                            var_a1 = (s32) (~sp28->unk-3FF8 & 0xC) >> 2;
                            var_v0 = 0;
                            if (var_a1 != 0) {
                                goto block_11;
                            }
                        } else {
                            var_a1 = sp28->unk-3FFC & 3;
                            var_v0 = 0;
                            if (var_a1 == 3) {

                            } else {
block_11:
                                info->VidBckEndRev = (u8) var_a1;
                                if (temp_a0 != 0) {
                                    if ((sp28->unk-3FFC & 0xC) != 0xC) {
                                        info->Zbuffer = 1;
                                    } else {
                                        info->Zbuffer = 0;
                                    }
                                    var_a5 = 0;
                                    var_a4 = 0;
                                    var_a1_2 = 0;
                                    if ((sp28->unk-3FF4 & 3) != 3) {
                                        var_a1_2 = 1;
                                    }
                                    if ((sp28->unk-3FF4 & 0xC) != 0xC) {
                                        var_a4 = 1;
                                    }
                                    if ((sp28->unk-3FF4 & 0x30) != 0x30) {
                                        var_a5 = 1;
                                    }
                                    var_a3 = 8;
                                    if (var_a1_2 != 0) {
                                        if (var_a4 != 0) {
                                            var_a3 = 0x18;
                                            if (var_a5 != 0) {
                                                goto block_23;
                                            }
                                        }
                                        var_a3 = 8;
                                        if (var_a1_2 != 0) {
                                            if (var_a4 != 0) {
                                                info->Bitplanes = 0x10;
                                            } else {
                                                var_a3 = 8;
                                                goto block_40;
                                            }
                                        } else {
                                            goto block_40;
                                        }
                                    } else {
block_40:
block_23:
                                        info->Bitplanes = var_a3;
                                    }
                                    sp20 = temp_a0;
                                    info->MonitorType = (sp28->unk-3FFC & 1) | ((sp28->unk-3FF8 & 3) * 2);
                                } else {
                                    if (((s32) (sp28->unk-3FFC & 0x20) >> 5) != 0) {
                                        info->Zbuffer = 1;
                                    } else {
                                        info->Zbuffer = 0;
                                    }
                                    if (((s32) (sp28->unk-3FFC & 0x10) >> 4) != 0) {
                                        info->Bitplanes = 0x18;
                                    } else {
                                        info->Bitplanes = 8;
                                    }
                                    sp20 = temp_a0;
                                    info->MonitorType = (u8) ((s32) (sp28->unk-4000 & 0xF0) >> 4);
                                }
                                info->fp_id = 0;
                                if (gr2_i2cProbe(base) != 0) {
                                    info->corona_rev = 0;
                                    info->fp_id = 0xFF;
                                    gr2_i2cSetup(0xFF);
                                    gr2_fp_probe(info);
                                    temp_a0_2 = info->fp_id;
                                    if ((temp_a0_2 != 0) && (temp_a0_2 != 0xFF)) {
                                        info->MonitorType = temp_a0_2;
                                    }
                                } else if (is_indyelan() != 0) {
                                    info->corona_rev = 0;
                                } else if (sp20 != 0) {
                                    info->corona_rev = ~((s32) (sp28->unk-3FF8 & 0x30) >> 4) & 3;
                                } else {
                                    info->corona_rev = ~((s32) (sp28->unk-3FFC & 0xC) >> 2) & 3;
                                }
                                info->Wids = 4;
                                info->Auxplanes = 4;
                                _Gr2ProbeGEs(base, info);
                                _Gr2ProbeChipRev(base, info);
                                temp_a0_3 = info->MonitorType;
                                if (temp_a0_3 != 6) {
                                    if (temp_a0_3 != 0x82) {
                                        info->gfx_info.ypmax = 0x400;
                                        info->gfx_info.xpmax = 0x500;
                                    } else {
                                        info->gfx_info.ypmax = 0x300;
                                        info->gfx_info.xpmax = 0x401;
                                    }
                                    var_v0 = 1;
                                    *(sp18 + &__sbss0) = 2;
                                } else {
                                    info->gfx_info.xpmax = 0x400;
                                    var_v0 = 0;
                                    info->gfx_info.ypmax = 0x300;
                                }
                            }
                        }
                    } else {
                        var_v0 = 0;
                    }
                }
            }
        } else {
            var_v0 = 0;
        }
    } else {
        var_v0 = 1;
    }
    return var_v0;
}

void Gr2StartClock(struct gr2_hw *base, struct gr2_info *info) {
    s64 sp8;
    s64 sp0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 var_a1;
    s32 var_a3_2;
    s64 var_a5;
    u32 var_a3;
    u8 temp_a0;
    u8 var_a0_2;
    u8 var_at;
    void *var_a0;

    sp0 = (s64) base;
    sp8 = 0;
    if ((s32) info->GfxBoardRev < 4) {
        temp_a1 = info->MonitorType & 7;
        if (temp_a1 != 1) {
            if (temp_a1 != 6) {
                base->bdvers.rd0.b = 1;
            }
        } else {
            base->bdvers.rd0.b = 2;
        }
        base->bdvers.rd1.b = 0;
        var_a3 = 0;
        if ((info->MonitorType & 7) != 6) {
            var_a0 = NULL;
            do {
                var_a0 += 1;
                var_a3 += 1;
                base->clock.write.b = var_a0->unkE1F;
            } while (var_a3 < 0x11U);
        }
        base->bdvers.rd1.b = 0x40;
    } else {
        if (gr2_firstgfxslot() == sp0) {
            base->bdvers.rd0.b = 7;
        } else {
            base->bdvers.rd0.b = 0x47;
        }
        temp_a0 = info->MonitorType;
        if (temp_a0 != 0x82) {
            temp_a1_2 = temp_a0 & 7;
            if (temp_a0 != 0x83) {
                if (temp_a1_2 == 7) {
                    if (info->fp_id == 0xFF) {
                        goto block_33;
                    }
                    goto block_18;
                }
block_18:
                if (temp_a1_2 != 1) {
                    if (temp_a1_2 != 6) {
                        sp8 = (s64) &__sdata28;
                    }
                } else {
                    sp8 = (s64) &__sdata20;
                }
            } else {
block_33:
                sp8 = (s64) &__sdata28;
            }
        } else {
            sp8 = (s64) &__sdata10;
        }
        var_a3_2 = 0;
        if (sp8 != 0) {
            var_a5 = sp8;
loop_24:
            var_a0_2 = *var_a5;
            var_a1 = 0;
            var_a5 += 1;
            var_at = var_a0_2 & 1;
loop_25:
            base->clock.write.b = var_at;
loop_26:
            var_a1 += 1;
            var_a0_2 = (u8) ((s32) var_a0_2 >> 1);
            if (var_a1 < 8) {
                var_at = var_a0_2 & 1;
                if ((var_a1 == 7) && (var_at = var_a0_2 & 1, (var_a3_2 == 6))) {
                    base->clock.write.b = (var_a0_2 & 1) | 2;
                } else {
                    goto loop_25;
                }
                goto loop_26;
            }
            var_a3_2 += 1;
            if (var_a3_2 < 7) {
                goto loop_24;
            }
        }
        base->bdvers.rd1.b = 0;
        us_delay(3);
        base->bdvers.rd1.b = 1;
    }
}

void _Gr2DacInit(struct gr2_bt457_dac *dac) {
    u8 var_a2;
    u8 var_a2_2;

    dac->addr.b = 4;
    var_a2 = 0;
    dac->cmd2.b = 0;
    dac->addr.b = 5;
    dac->cmd2.b = 0;
    dac->addr.b = 6;
    dac->cmd2.b = 0xC1;
    dac->addr.b = 7;
    dac->cmd2.b = 0;
    dac->addr.b = 0;
    do {
        dac->paltram.b = var_a2;
        var_a2 += 1;
    } while ((s32) var_a2 < 0x100);
    dac->addr.b = 0;
    var_a2_2 = 0;
    do {
        dac->ovrlay.b = var_a2_2;
        var_a2_2 += 1;
    } while ((s32) var_a2_2 < 4);
}

void Gr2LoadVC1SRAM(struct gr2_hw *base, u16 *data, u32 addr, u32 length) {
    u16 *var_a2;
    u32 var_a5;

    var_a5 = 0;
    base->vc1.addrhi.b = (u8) (addr >> 8);
    base->vc1.addrlo.b = (u8) addr;
    if (length != 0) {
        var_a2 = data;
        do {
            var_a2 += 2;
            var_a5 += 1;
            base->vc1.cmd2.h = var_a2->unk-2;
        } while (var_a5 < length);
    }
}

void _Gr2XMAPInit1(struct gr2_hw *base) {
    base->xmapall.addrlo.b = 0;
    base->xmapall.addrhi.b = 0;
    base->xmapall.mode.w = 0x82000000;
    base->xmapall.addrlo.b = 0;
    base->xmapall.addrhi.b = 0;
    base->xmapall.misc.b = 0;
    base->xmapall.misc.b = 0;
    base->xmapall.misc.b = 0;
    base->xmapall.misc.b = 0xE;
    base->xmapall.misc.b = 0;
}

void _Gr2XMAPInit2(struct gr2_hw *base) {
    s32 var_a2;
    void *var_a3;

    var_a2 = 0;
    var_a3 = NULL;
    base->xmapall.addrhi.b = 0x10;
    base->xmapall.addrlo.b = 0;
    do {
        var_a3 += 0xC;
        var_a2 += 1;
        base->xmapall.clut.b = (u8) var_a3->unkE2C;
        base->xmapall.clut.b = (u8) var_a3->unkE30;
        base->xmapall.clut.b = (u8) var_a3->unkE34;
    } while (var_a2 < 8);
}

void _Gr2XMAPInit3(struct gr2_hw *base) {
    s32 temp_a1;
    s32 var_a1;
    s32 var_s5;
    s32 var_s7;

    var_s5 = 0x100;
    base->xmapall.addrhi.b = 1;
    base->xmapall.addrlo.b = 0;
loop_2:
    var_s7 = 0;
loop_3:
    var_s7 += 1;
    if (!(base->xmap[0].fifostatus.b & 2)) {
        us_delay(1);
        if (var_s7 >= 0x2710) {

        } else {
            goto loop_3;
        }
    }
    var_a1 = 0xFE;
loop_5:
    base->xmapall.clut.b = 0;
    base->xmapall.clut.b = 0;
    base->xmapall.clut.b = 0;
    temp_a1 = var_a1 - 1;
    if (var_a1 != -1) {
        base->xmapall.clut.b = 0;
        base->xmapall.clut.b = 0;
        base->xmapall.clut.b = 0;
        var_a1 = temp_a1 - 1;
        if (temp_a1 == -1) {

        } else {
            goto loop_5;
        }
    }
    var_s5 += 0x100;
    if (var_s5 < 0x2000) {
        goto loop_2;
    }
}

void _Gr2RegisterInit(struct gr2_hw *base, struct gr2_info *info) {
    s64 sp28;
    s16 *var_a1;
    s16 var_a5;
    s32 temp_a0;
    s32 temp_a3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_s7;
    s64 var_s3;
    u16 temp_a0_2;
    u16 temp_s6;
    u8 temp_a1;
    void *var_a1_2;
    void *var_a3;
    void *var_a4;

    var_s3 = saved_reg_s3;
    var_s7 = 0;
    temp_s6 = info->gfx_info.ypmax;
    *(u8 *)0xBFBD901F &= ~0x18;
    flushbus();
    *(void *)0xBFBD901F = (u8) (*(void *)0xBFBD901F | 0x18);
    _Gr2DacInit(&base->reddac);
    _Gr2DacInit(&base->grndac);
    _Gr2DacInit(&base->bluedac);
    base->vc1.sysctl.b = 1;
    base->vc1.addrhi.b = 0;
    base->vc1.addrlo.b = 0x26;
    base->vc1.cmd0.h = 0;
    base->vc1.addrhi.b = 9;
    base->vc1.addrlo.b = 0xF0;
    base->vc1.cmd2.h = 0;
    base->vc1.cmd2.h = info->gfx_info.xpmax;
    temp_a1 = info->MonitorType;
    if (temp_a1 != 1) {
        if (temp_a1 != 9) {
            var_a5 = 0;
            switch (temp_a1) {                      /* irregular */
            case 0x6:
                break;
            default:
                if ((temp_a1 & 7) == 7) {
                    if (info->fp_id != 0xFF) {
                        goto block_9;
                    }
                case 0x83:
                    Gr2LoadVC1SRAM(base, (u16 *)0x918, 0U, 0x12AU);
                    Gr2LoadVC1SRAM(base, (u16 *)0xB70, 0x800U, 0x1CU);
                    Gr2LoadVC1SRAM(base, (u16 *)0xBA8, 0x400U, 0x113U);
                    Gr2LoadVC1SRAM(base, (u16 *)0xDD0, 0x900U, 0x1CU);
                    var_s7 = 1;
                } else {
block_9:
                    Gr2LoadVC1SRAM(base, NULL, 0U, 0xEDU);
                    Gr2LoadVC1SRAM(base, (u16 *)0x1E0, 0x800U, 0x19U);
                    Gr2LoadVC1SRAM(base, (u16 *)0x218, 0x400U, 0xDAU);
                    Gr2LoadVC1SRAM(base, (u16 *)0x3D0, 0x900U, 0x19U);
                }
                goto block_10;
            case 0x82:
                Gr2LoadVC1SRAM(base, (u16 *)0x788, 0U, 0xA7U);
                Gr2LoadVC1SRAM(base, (u16 *)0x8D8, 0x800U, 0x14U);
                var_s7 = 1;
                goto block_10;
            }
        } else {
            goto block_35;
        }
    } else {
block_35:
        Gr2LoadVC1SRAM(base, (u16 *)0x408, 0U, 0xC8U);
        Gr2LoadVC1SRAM(base, (u16 *)0x598, 0x800U, 0x1CU);
        Gr2LoadVC1SRAM(base, (u16 *)0x5D0, 0x400U, 0xC0U);
        Gr2LoadVC1SRAM(base, (u16 *)0x750, 0x900U, 0x1CU);
block_10:
        var_s3 = sp28;
    case 0xE:
        var_a5 = 0;
    }
    temp_a3 = temp_s6 - 1;
    var_a0 = 0;
    if (temp_a3 > 0) {
        var_a1 = NULL;
loop_14:
        *var_a1 = 0x1400;
        var_a0 += 1;
        var_a1 += 4;
        if (var_a0 < temp_a3) {
            var_a1->unk-2 = 0x1400;
            var_a0 += 1;
            if (var_a0 < temp_a3) {
                goto loop_14;
            }
        }
        sp28 = var_s3;
    } else {
        sp28 = var_s3;
    }
    var_a3 = (void *)8;
    var_a4 = NULL;
    *(var_a0 * 2) = 0x1404;
loop_19:
    var_a0_2 = 4;
    var_a4->unk804 = 5;
    var_a4->unk800 = 1;
    var_a4->unk806 = var_a5;
    var_a4->unk802 = var_a5;
    var_a5 += 1;
    var_a1_2 = var_a3;
    var_a3 += 0x10;
loop_20:
    var_a1_2->unk800 = 0;
    temp_a0 = var_a0_2 + 1;
    var_a1_2 += 4;
    if (temp_a0 < 8) {
        var_a1_2->unk7FE = 0;
        var_a0_2 = temp_a0 + 1;
        if (var_a0_2 >= 8) {

        } else {
            goto loop_20;
        }
    }
    var_a4 += 0x10;
    if (var_a5 <= 0) {
        goto loop_19;
    }
    Gr2LoadVC1SRAM(base, (u16 *)0x800, 0x1400U, 8U);
    Gr2LoadVC1SRAM(base, NULL, 0xB00U, (u32) temp_s6);
    base->vc1.addrhi.b = 0;
    base->vc1.addrlo.b = 0;
    if ((s32) info->gfx_info.xpmax >= 0x402) {
        base->vc1.cmd0.h = 0x900;
    } else {
        base->vc1.cmd0.h = 0x800;
    }
    base->vc1.addrhi.b = 0;
    base->vc1.addrlo.b = 0x14;
    base->vc1.cmd0.h = 0;
    base->vc1.addrhi.b = 0;
    base->vc1.addrlo.b = 0x40;
    base->vc1.cmd0.h = 0xB00;
    base->vc1.cmd0.h = (temp_s6 * 2) + 0xB00;
    temp_a0_2 = info->gfx_info.xpmax;
    if (temp_a0_2 == 0x500) {
        base->vc1.cmd0.h = 0xFF04;
    } else {
        M2C_TRAP_IF(5 == 0);
        base->vc1.cmd0.h = ((s32) temp_a0_2 % 5) | (((s32) temp_a0_2 / 5) << 8);
    }
    base->vc1.addrhi.b = 0;
    base->vc1.addrlo.b = 0x60;
    base->vc1.cmd0.h = 0;
    initGr2Cursor(base);
    base->vc1.sysctl.b = 0xC;
    _Gr2XMAPInit1(base);
    _Gr2XMAPInit2(base);
    _Gr2XMAPInit3(base);
    if (var_s7 != 0) {
        base->xmap[0].fifostatus.b = 0xF;
        base->xmap[1].fifostatus.b = 0xC;
        base->xmap[2].fifostatus.b = 0xD;
        base->xmap[3].fifostatus.b = 0xE;
        base->xmap[4].fifostatus.b = 0xF;
        gr2_i2cPanelOn();
    }
}

void initGr2Cursor(struct gr2_hw *base) {
    bzero(sp, 0x100U);
    Gr2LoadVC1SRAM(base, sp, 0xA00U, 0x80U);
    base->vc1.addrhi.b = 0;
    base->vc1.addrlo.b = 0x20;
    base->vc1.cmd0.h = 0xA00;
    base->vc1.cmd0.h = 0;
    base->vc1.cmd0.h = 0;
    base->vc1.cmd0.h = 0;
}

void _Gr2HQ2RegInit(struct gr2_hw *base, struct gr2_info *info) {
    u8 temp_a4;

    temp_a4 = info->GEs;
    if (temp_a4 != 8) {
        base->hq.numge.w = (u32) temp_a4;
    } else {
        base->hq.numge.w = temp_a4 | 0x10;
    }
    base->hq.refresh.w = 0x10;
    base->hq.fifo_full_timeout.w = 0x64;
    base->hq.fifo_empty_timeout.w = 0xFF;
    base->hq.fifo_full.w = 0x28;
    base->hq.fifo_empty.w = 1;
}

s32 Gr2DownloadGE7(struct gr2_hw *base, GE_RECORD *ucode, s32 numge) {
    GE_RECORD *var_s3;
    GE_RECORD *var_s3_2;
    s32 temp_a2;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 var_a1;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s5;
    s32 var_v0;
    struct gr2_hw *var_s1;
    struct gr2_hw *var_s1_2;
    u16 temp_a2_2;
    u16 temp_a2_3;
    u32 var_s0_3;
    void *var_v0_2;
    void *var_v0_3;

    var_s0 = 0;
    var_s3 = ucode;
    var_s1 = base;
loop_1:
    temp_s0 = var_s0 + 1;
    var_s1->shram[0] = var_s3->unkFC;
    if (temp_s0 < 0x200) {
        temp_s0_2 = temp_s0 + 1;
        var_s1->shram[1] = var_s3->unk100;
        var_s3 += 0xC;
        if (temp_s0_2 < 0x200) {
            var_s1 += 0xC;
            var_s0 = temp_s0_2 + 1;
            var_s1->unk-4 = (s32) var_s3->unkF8;
            if (var_s0 < 0x200) {
                goto loop_1;
            }
        }
    }
    var_s5 = 0;
    var_s0_2 = 0;
    var_s3_2 = ucode;
    var_s1_2 = base;
loop_7:
    temp_a2 = var_s3_2->unkFC;
    var_s3_2 += 4;
    if (var_s1_2->shram[0] != temp_a2) {
        if (numge != 0) {
            printf(NULL, var_s0_2, temp_a2, var_s1_2->shram[0]);
        }
        var_s5 += 1;
    }
    var_s0_2 += 1;
    var_s1_2 += 4;
    if (var_s0_2 < 0x200) {
        goto loop_7;
    }
    var_s0_3 = 0;
    do {
        base->hq.gepc.w = var_s0_3;
        var_s0_3 += 1;
        base->ge[0].ram0[0xF8].w = 0;
        base->ge[0].ram0[0xF9].w = 0;
        base->ge[0].ram0[0xFA].w = 0;
        base->ge[0].ram0[0xFB].w = 0;
        base->hq.ge7loaducode.w = 0;
    } while ((s32) var_s0_3 < 0x10000);
    var_a1 = 0;
    var_v0_2 = ucode->unkC + ucode;
loop_13:
    temp_a2_2 = var_v0_2->unk0;
    if (temp_a2_2 != 0xFFFF) {
        base->hq.gepc.w = (u32) temp_a2_2;
        base->ge[0].ram0[0xF8].w = var_v0_2->unk16 | (var_v0_2->unk14 << 0x10);
        base->ge[0].ram0[0xF9].w = var_v0_2->unk12 | (var_v0_2->unk10 << 0x10);
        base->ge[0].ram0[0xFA].w = var_v0_2->unkE | (var_v0_2->unkC << 0x10);
        base->ge[0].ram0[0xFB].w = var_v0_2->unkA | (var_v0_2->unk8 << 0x10);
        base->hq.ge7loaducode.w = var_v0_2->unk6 | (var_v0_2->unk4 << 0x10);
        var_v0_2 += ((u32) (ucode->unkF8 + 6) >> 1) * 2;
        goto loop_13;
    }
    var_v0_3 = ucode->unkC + ucode;
loop_27:
    temp_a2_3 = var_v0_3->unk0;
    if (temp_a2_3 != 0xFFFF) {
        base->hq.gepc.w = (u32) temp_a2_3;
        if (((var_v0_3->unk6 | (var_v0_3->unk4 << 0x10)) & 0x03DFFFFF) != (base->hq.ge7loaducode.w & 0x03DFFFFF)) {
            var_a1 += 1;
        }
        if (base->ge[0].ram0[0xF8].w != (var_v0_3->unk16 | (var_v0_3->unk14 << 0x10))) {
            var_a1 += 1;
        }
        if (base->ge[0].ram0[0xF9].w != (var_v0_3->unk12 | (var_v0_3->unk10 << 0x10))) {
            var_a1 += 1;
        }
        if (base->ge[0].ram0[0xFA].w != (var_v0_3->unkE | (var_v0_3->unkC << 0x10))) {
            var_a1 += 1;
        }
        if (((var_v0_3->unkA | (var_v0_3->unk8 << 0x10)) & 0x7F) != (base->ge[0].ram0[0xFB].w & 0x7F)) {
            var_a1 += 1;
        }
        var_v0_3 += ((u32) (ucode->unkF8 + 6) >> 1) * 2;
        goto loop_27;
    }
    if (var_a1 != 0) {
        goto block_32;
    }
    if (var_s5 == 0) {
        var_v0 = 1;
    } else {
block_32:
        var_v0 = 0;
    }
    return var_v0;
}

s32 Gr2DownloadHQ2(struct gr2_hw *base, HQ_RECORD *ucode) {
    HQ_RECORD *var_a5;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a7;
    s32 var_v0;
    s32 var_v0_2;
    u16 temp_a4;
    u16 temp_a4_2;
    void *var_a4;
    void *var_v0_3;
    void *var_v0_4;

    if (ucode->address != 0x965E) {
        return 0;
    }
    var_a4 = base + 0x70000;
    var_a5 = ucode;
    var_v0_2 = 0;
loop_3:
    temp_v0 = var_v0_2 + 1;
    var_a4->unk-6000 = (s32) var_a5->unkFC;
    if (temp_v0 < 0x10) {
        temp_v0_2 = temp_v0 + 1;
        var_a4->unk-5FFC = (s32) var_a5->unk100;
        var_a5 += 0xC;
        if (temp_v0_2 < 0x10) {
            var_a4 += 0xC;
            var_v0_2 = temp_v0_2 + 1;
            var_a4->unk-6004 = (s32) var_a5->unkF8;
            if (var_v0_2 < 0x10) {
                goto loop_3;
            }
        }
    }
    var_v0_3 = ucode->unkC + ucode;
loop_8:
    temp_a4 = var_v0_3->unk0;
    if (temp_a4 != 0xFFFF) {
        base->shram[temp_a4].unk60000 = (s32) (var_v0_3->unk6 | (var_v0_3->unk4 << 0x10));
        var_v0_3 += ((u32) (ucode->unkF8 + 6) >> 1) * 2;
        goto loop_8;
    }
    var_a7 = 0;
    var_v0_4 = ucode->unkC + ucode;
loop_13:
    temp_a4_2 = var_v0_4->unk0;
    if (temp_a4_2 != 0xFFFF) {
        if (base->shram[temp_a4_2].unk60000 != (var_v0_4->unk6 | (var_v0_4->unk4 << 0x10))) {
            var_a7 += 1;
        }
        var_v0_4 += ((u32) (ucode->unkF8 + 6) >> 1) * 2;
        goto loop_13;
    }
    var_v0 = 1;
    if (var_a7 != 0) {
        var_v0 = 0;
    }
    return var_v0;
}

void _Gr2Debug(struct gr2_hw *base) {

}

void Gr2BlankScreen(struct gr2_hw *base, s32 blank) {
    s32 var_s5;

    var_s5 = 0;
loop_1:
    var_s5 += 1;
    if (base->xmap[0].fifostatus.b & 1) {
        us_delay(1);
        if (var_s5 < 0x2710) {
            goto loop_1;
        }
    }
    if (blank != 0) {
        base->reddac.addr.b = 4;
        base->reddac.cmd2.b = 0;
        base->grndac.addr.b = 4;
        base->grndac.cmd2.b = 0;
        base->bluedac.addr.b = 4;
        base->bluedac.cmd2.b = 0;
    } else {
        base->reddac.addr.b = 4;
        base->reddac.cmd2.b = 0xFF;
        base->grndac.addr.b = 4;
        base->grndac.cmd2.b = 0xFF;
        base->bluedac.addr.b = 4;
        base->bluedac.cmd2.b = 0xFF;
    }
}

s32 Gr2Init(struct gr2_hw *base, struct gr2_info *info) {
    s64 sp10;

    sp10 = (s64) info;
    _Gr2RegisterInit(base, info);
    _Gr2HQ2RegInit(base, info);
    return 1;
}
