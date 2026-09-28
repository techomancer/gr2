s32 is_ioc1(u32, s64, ?, u32);                      /* extern */
extern u8 __sbss0;

void Gr2TpInit(struct gr2_hw *base, s32 *x, s32 *y) {
    s32 temp_v0;
    void *temp_a2;

    temp_v0 = gr2_base2index(base);
    if (temp_v0 >= 0) {
        temp_a2 = (temp_v0 * 0x1C)->unk8;
        if ((temp_a2 != NULL) && (temp_a2->unk2D == 0x82)) {
            __sbss0 = 1;
        }
    }
}

void Gr2TpMapcolor(struct gr2_hw *base, s32 index, s32 red, s32 green, s32 blue) {
    s64 sp10;
    s32 var_s5;
    s32 var_s5_2;
    u32 var_a0;
    u8 temp_v1;

    sp10 = M2C_ERROR(/* Read from unset register $a4 */);
    if (is_ioc1() != 0) {
        var_a0 = 0x1FBD9880;
    } else {
        var_a0 = 0x1FBD9000;
    }
    unksp30 = (s64) index;
    if (*((var_a0 + 3) | 0xA0000000) & 1) {
loop_5:
        if (is_ioc1(var_a0) != 0) {
            var_a0 = 0x1FBD9880;
        } else {
            var_a0 = 0x1FBD9000;
        }
        if (*((var_a0 + 3) | 0xA0000000) & 1) {
            goto loop_5;
        }
    }
    var_s5 = 0;
loop_10:
    var_s5 += 1;
    if (base->xmap[0].fifostatus.b & 1) {
        us_delay(1);
        if (var_s5 < 0x3E8) {
            goto loop_10;
        }
    }
    var_s5_2 = 0;
    temp_v1 = unksp30 + 0x1000;
    base->xmapall.addrhi.b = (u8) ((s32) (temp_v1 & 0x1F00) >> 8);
    base->xmapall.addrlo.b = temp_v1;
loop_13:
    var_s5_2 += 1;
    if (base->xmap[0].fifostatus.b & 1) {
        us_delay(1);
        if (var_s5_2 < 0x3E8) {
            goto loop_13;
        }
    }
    base->xmapall.clut.b = (u8) subroutine_arg0;
    base->xmapall.clut.b = (u8) subroutine_arg2;
    base->xmapall.clut.b = (u8) sp10;
}

void Gr2TpColor(struct gr2_hw *base, s32 color) {
    s64 sp10;
    s64 sp8;
    u32 var_a0;

    sp8 = (s64) base;
    sp10 = (s64) color;
    if (is_ioc1() != 0) {
        var_a0 = 0x1FBD9880;
    } else {
        var_a0 = 0x1FBD9000;
    }
    if (*((var_a0 + 3) | 0xA0000000) & 1) {
loop_7:
        if (is_ioc1(var_a0) != 0) {
            var_a0 = 0x1FBD9880;
        } else {
            var_a0 = 0x1FBD9000;
        }
        if (*((var_a0 + 3) | 0xA0000000) & 1) {
            goto loop_7;
        }
    }
    sp8->unk40648 = (s32) sp10;
}

void Gr2TpSboxfi(struct gr2_hw *base, s32 x1, s32 y1, s32 x2, s32 y2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 var_s0;
    s32 var_s1;
    u32 var_a0;

    sp0 = (s64) base;
    sp8 = (s64) x1;
    var_s0 = y1;
    sp10 = (s64) x2;
    var_s1 = M2C_ERROR(/* Read from unset register $a4 */);
    if (__sbss0 != 0) {
        var_s1 += 0x100;
        var_s0 += 0x100;
    }
    if (is_ioc1() != 0) {
        var_a0 = 0x1FBD9880;
    } else {
        var_a0 = 0x1FBD9000;
    }
    if (*((var_a0 + 3) | 0xA0000000) & 1) {
loop_9:
        if (is_ioc1(var_a0) != 0) {
            var_a0 = 0x1FBD9880;
        } else {
            var_a0 = 0x1FBD9000;
        }
        if (*((var_a0 + 3) | 0xA0000000) & 1) {
            goto loop_9;
        }
    }
    sp0->unk40654 = (s32) sp8;
    sp0->unk4077C = var_s0;
    sp0->unk4077C = (s32) sp10;
    sp0->unk4077C = var_s1;
}

void Gr2TpPnt2i(struct gr2_hw *base, s32 x, s32 y) {
    s64 sp8;
    s64 sp0;
    s32 var_s1;
    u32 var_a0;

    sp0 = (s64) base;
    sp8 = (s64) x;
    var_s1 = y;
    if (__sbss0 != 0) {
        var_s1 += 0x100;
    }
    if (is_ioc1() != 0) {
        var_a0 = 0x1FBD9880;
    } else {
        var_a0 = 0x1FBD9000;
    }
    if (*((var_a0 + 3) | 0xA0000000) & 1) {
loop_9:
        if (is_ioc1(var_a0) != 0) {
            var_a0 = 0x1FBD9880;
        } else {
            var_a0 = 0x1FBD9000;
        }
        if (*((var_a0 + 3) | 0xA0000000) & 1) {
            goto loop_9;
        }
    }
    sp0->unk40650 = (s32) sp8;
    sp0->unk4077C = var_s1;
}

void Gr2TpDrawBitmap(struct gr2_hw *base, struct htp_bitmap *b) {
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp10;
    s16 var_fp;
    s16 var_s6;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_s2;
    s32 var_s2_2;
    struct htp_bitmap *temp_s5;
    struct htp_bitmap *var_a1;
    u16 *var_s3;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 var_a0;

    var_a1 = b;
    temp_s5 = var_a1;
    sp68 = 0;
    sp70 = (s64) var_a1->xsize;
    sp78 = (s64) var_a1->sper;
loop_8:
    var_s6 = temp_s5->ysize;
    var_s3 = temp_s5->buf + sp68;
    if (sp70 >= 0x11) {
        sp10 = 0x10;
        if (sp78 == 1) {

        }
    } else {
        sp10 = sp70;
        if (sp78 != 1) {

        }
    }
    var_a0 = var_s6 < 0x13;
    var_fp = temp_s5->yorig;
    if (var_a0 == 0) {
loop_36:
        if (is_ioc1(var_a0, (s64) var_a1) != 0) {
            var_a1_2 = 0x1FBD9880;
        } else {
            var_a1_2 = 0x1FBD9000;
        }
        if (*((var_a1_2 + 3) | 0xA0000000) & 1) {
loop_42:
            var_a1_3 = 0x1FBD9000;
            if (is_ioc1() == 0) {

            } else {
                var_a1_3 = 0x1FBD9880;
            }
            if (*((var_a1_3 + 3) | 0xA0000000) & 1) {
                goto loop_42;
            }
        }
        base->fifo[0x198] = (u32) sp10;
        base->fifo[0x1DF] = 0x12;
        base->fifo[0x1DF] = 1;
        temp_a0 = temp_s5->xorig - subroutine_arg2;
        base->fifo[0x1DF] = temp_a0;
        base->fifo[0x1DF] = (u32) var_fp;
        base->fifo[0x1DF] = 0;
        base->fifo[0x1DF] = 0;
        var_a1 = (struct htp_bitmap *)0x1FBD9000;
        if (is_ioc1(temp_a0, subroutine_arg2, 0x12, (u32) sp10) != 0) {
            var_a1 = (struct htp_bitmap *)0x1FBD9880;
        }
        var_s2 = 0;
        if (*((s32) (var_a1 + 3) | 0xA0000000) & 1) {
loop_51:
            var_a1 = (struct htp_bitmap *)0x1FBD9000;
            if (is_ioc1() == 0) {

            } else {
                var_a1 = (struct htp_bitmap *)0x1FBD9880;
            }
            if (*((s32) (var_a1 + 3) | 0xA0000000) & 1) {
                goto loop_51;
            }
            var_s2 = 0;
        }
        var_fp -= 0x12;
        do {
            base->fifo[0x1DF] = (u32) *var_s3;
            var_s2 += 1;
            var_a0 = var_s2 < 0x12;
            var_s3 += temp_s5->sper * 2;
        } while (var_a0 != 0);
        var_s6 -= 0x12;
        if (var_s6 >= 0x13) {
            goto loop_36;
        }
    }
    var_a1_4 = 0x1FBD9000;
    if (is_ioc1(var_a0, (s64) var_a1) != 0) {
        var_a1_4 = 0x1FBD9880;
    }
    if (*((var_a1_4 + 3) | 0xA0000000) & 1) {
loop_21:
        var_a1_5 = 0x1FBD9000;
        if (is_ioc1() == 0) {

        } else {
            var_a1_5 = 0x1FBD9880;
        }
        if (*((var_a1_5 + 3) | 0xA0000000) & 1) {
            goto loop_21;
        }
    }
    base->fifo[0x198] = (u32) sp10;
    base->fifo[0x1DF] = (u32) var_s6;
    base->fifo[0x1DF] = 1;
    var_s2_2 = 0;
    temp_a0_2 = temp_s5->xorig - subroutine_arg2;
    base->fifo[0x1DF] = temp_a0_2;
    base->fifo[0x1DF] = (u32) var_fp;
    base->fifo[0x1DF] = (u32) subroutine_arg0;
    base->fifo[0x1DF] = 0;
    var_a1_6 = 0x1FBD9000;
    if (is_ioc1(temp_a0_2, subroutine_arg2, 1, (u32) sp10) != 0) {
        var_a1_6 = 0x1FBD9880;
    }
    if (*((var_a1_6 + 3) | 0xA0000000) & 1) {
loop_30:
        var_a1_7 = 0x1FBD9000;
        if (is_ioc1() == 0) {

        } else {
            var_a1_7 = 0x1FBD9880;
        }
        if (*((var_a1_7 + 3) | 0xA0000000) & 1) {
            goto loop_30;
        }
    }
    if (var_s6 > 0) {
        do {
            base->fifo[0x1DF] = (u32) *var_s3;
            var_s2_2 += 1;
            var_s3 += temp_s5->sper * 2;
        } while (var_s2_2 < var_s6);
    }
    var_a1 = (struct htp_bitmap *) var_s2_2;
    if (var_s2_2 < 0x12) {
        do {
            var_a1 += 1;
            base->fifo[0x1DF] = 0;
        } while ((s32) var_a1 < 0x12);
    }
    if (sp78 >= 2) {
        sp70 -= 0x10;
        sp78 -= 1;
        sp68 += 2;
        goto loop_8;
    }
}

void Gr2TpCmov2i(struct gr2_hw *base, s32 x, s32 y) {
    s64 sp8;
    s64 sp0;
    s32 var_s1;
    u32 var_a0;

    sp0 = (s64) base;
    sp8 = (s64) x;
    var_s1 = y;
    if (__sbss0 != 0) {
        var_s1 += 0x100;
    }
    if (is_ioc1() != 0) {
        var_a0 = 0x1FBD9880;
    } else {
        var_a0 = 0x1FBD9000;
    }
    if (*((var_a0 + 3) | 0xA0000000) & 1) {
loop_9:
        if (is_ioc1(var_a0) != 0) {
            var_a0 = 0x1FBD9880;
        } else {
            var_a0 = 0x1FBD9000;
        }
        if (*((var_a0 + 3) | 0xA0000000) & 1) {
            goto loop_9;
        }
    }
    sp0->unk40658 = (s32) sp8;
    sp0->unk4077C = var_s1;
}

void Gr2TpUnblank(struct gr2_hw *base) {

}

void *Gr2TpGetDesc(void) {
    if (M2C_ERROR(/* Read from unset register $a1 */) != 1) {
        return NULL;
    }
    return (void *)1;
}
