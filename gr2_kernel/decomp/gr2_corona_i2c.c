? cmn_err(?, ?, u32);                               /* extern */
s32 gr2_i2cAudioBass(s64 arg0, s32, u32, s32);      /* static */
s32 gr2_i2cAudioSwitch(s64 arg0, s32, u32, s32);    /* static */
s32 gr2_i2cAudioTreble(s64 arg0, s32, u32, s32);    /* static */
s32 gr2_i2cAudioVolLeft(s64 arg0, s32, u32, s32);   /* static */
s32 gr2_i2cAudioVolRight(s64 arg0, s32, u32, s32);  /* static */
s32 gr2_i2cBlUp(s32 arg0, s32 arg2, u32, s32);      /* static */
s32 gr2_i2cSetBit(s32 arg0, s32, u32, s32);         /* static */
s32 gr2_i2cStop(s32);                               /* static */
extern struct gr2_hw *__sbss0;
extern s32 __sbss10;
extern s32 __sbss14;
extern s32 __sbss18;
extern s32 __sbss1C;
extern s32 __sbss4;
extern s32 __sbss8;
extern s32 __sbssC;
extern ? fp_poweroff;

void dcb_fifowait(void) {
    s32 var_s5;
    struct gr2_hw *temp_at;

    var_s5 = 0;
    temp_at = __sbss0;
loop_1:
    var_s5 += 1;
    if (temp_at->xmap[0].fifostatus.b & 1) {
        us_delay(1);
        if (var_s5 < 0x3E8) {
            goto loop_1;
        }
    }
}

void gr2_i2cRead(s32 arg0, s64 arg1) {
    s64 sp10;

    sp10 = arg1;
    us_delay(1);
    if (arg0 != 1) {
        *sp10 = (s32) __sbss0->ab1.b;
    } else {
        *sp10 = (s32) __sbss0->unk6C1C4;
    }
}

void gr2_i2cWrite(s32 arg0, s64 arg1) {
    s64 sp10;

    sp10 = arg1;
    us_delay(1);
    if (arg0 != 1) {
        __sbss0->ab1.b = (u8) sp10;
    } else {
        __sbss0->unk6C1C4 = (s8) sp10;
    }
}

s32 gr2_i2cProbe(struct gr2_hw *base) {
    s32 var_v0;

    __sbss0 = base;
    base->cc1.b = 0;
    us_delay(1);
    __sbss0->cc1.b = 0x55;
    us_delay(1);
    __sbss0->cc1.b;
    us_delay(1);
    if (__sbss0->cc1.b != 0x55) {
        goto block_1;
    }
    __sbss0->cc1.b = 0xAA;
    us_delay(1);
    __sbss0->cc1.b;
    us_delay(1);
    if (__sbss0->cc1.b == 0xAA) {
        var_v0 = 1;
    } else {
block_1:
        __sbss0 = NULL;
        var_v0 = 0;
    }
    return var_v0;
}

void gr2_i2cSetup(s32 val) {
    gr2_i2cWrite(1, 0);
    gr2_i2cWrite(0, 0x7F);
    gr2_i2cWrite(1, 0x20);
    gr2_i2cWrite(0, 0x1C);
    gr2_i2cWrite(1, 0x40);
}

s32 gr2_i2cStart(s64 arg0) {
    s32 temp_a2;
    s32 temp_a3;
    s32 var_s4;
    s32 var_v0;

    gr2_i2cWrite(1, 0x40);
    gr2_i2cRead(1, (s64) sp);
    if (subroutine_arg0 != 0x81) {
        gr2_i2cStop(0);
        goto block_2;
    }
    gr2_i2cWrite(0, subroutine_arg2);
    gr2_i2cWrite(1, 0x44);
    var_s4 = 0x64;
loop_5:
    gr2_i2cRead(1, (s64) sp);
    temp_a2 = subroutine_arg0 & 0x80;
    if (temp_a2 != 0) {
        var_s4 -= 1;
        if (var_s4 == 0) {
            goto block_7;
        }
        goto loop_5;
    }
    if (var_s4 != 0) {
        temp_a3 = subroutine_arg0 & 8;
        if (temp_a3 != 0) {
            gr2_i2cStop();
block_2:
            var_v0 = 0;
        } else {
            if (subroutine_arg2 & 1) {
                gr2_i2cRead(0, (s64) sp, temp_a2, temp_a3);
            }
            var_v0 = 1;
        }
    } else {
block_7:
        gr2_i2cStop();
        var_v0 = 0;
    }
    return var_v0;
}

s32 gr2_i2cReceive(s64 arg0) {
    s32 var_s3;
    s32 var_v0;

    var_s3 = 0x64;
loop_1:
    gr2_i2cRead(1, (s64) sp);
    if (subroutine_arg0 & 0x80) {
        var_s3 -= 1;
        if (var_s3 == 0) {
            goto block_3;
        }
        goto loop_1;
    }
    if (var_s3 != 0) {
        if (subroutine_arg0 & 0x37) {
            gr2_i2cStop(0);
            var_v0 = 0;
        } else {
            gr2_i2cRead(0, subroutine_arg2);
            var_v0 = 1;
        }
    } else {
block_3:
        gr2_i2cStop();
        var_v0 = 0;
    }
    return var_v0;
}

s32 gr2_i2cSend(s64 arg0) {
    s32 temp_a0;
    s32 var_s7;
    s32 var_v0;

    gr2_i2cWrite(0, arg0);
    var_s7 = 0x64;
loop_1:
    gr2_i2cRead(1, (s64) sp);
    if (subroutine_arg0 & 0x80) {
        var_s7 -= 1;
        if (var_s7 == 0) {
            goto block_3;
        }
        goto loop_1;
    }
    temp_a0 = subroutine_arg0 & 8;
    if (var_s7 != 0) {
        if (subroutine_arg0 & 0x37) {
            gr2_i2cStop(temp_a0);
            var_v0 = 0;
        } else {
            var_v0 = 1;
            if (temp_a0 != 0) {
                gr2_i2cStop(temp_a0);
                var_v0 = 0;
            }
        }
    } else {
block_3:
        gr2_i2cStop();
        var_v0 = 0;
    }
    return var_v0;
}

s32 gr2_i2cStop(void) {
    s32 var_s5;
    s32 var_v0;

    gr2_i2cWrite(1, 0xC2);
    var_s5 = 0xA;
loop_1:
    gr2_i2cRead(1, (s64) sp);
    if (subroutine_arg0 != 0x81) {
        var_s5 -= 1;
        if (var_s5 == 0) {
            goto block_3;
        }
        goto loop_1;
    }
    if (var_s5 != 0) {
        var_v0 = 1;
    } else {
block_3:
        var_v0 = 0;
    }
    return var_v0;
}

s32 gr2_i2cPortRead(s32 arg0, s64 arg1) {
    s64 sp8;

    sp8 = arg1;
    if ((gr2_i2cStart(arg0 | 1) != 0) && (gr2_i2cReceive(sp8) != 0) && (gr2_i2cStop() != 0)) {
        return 1;
    }
    return 0;
}

s32 gr2_i2cPortWrite(s64 arg1) {
    s64 sp8;

    sp8 = arg1;
    if ((gr2_i2cStart() != 0) && (gr2_i2cSend(sp8) != 0) && (gr2_i2cStop() != 0)) {
        return 1;
    }
    return 0;
}

s32 gr2_i2cPanelID(void *buf) {
    s32 var_v0;

    dcb_fifowait();
    if (gr2_i2cPortRead(0x70, (s64) buf) != 0) {
        var_v0 = 1;
        *buf = (s32) (((s32) *buf >> 5) & 7);
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

void gr2_i2cPanelOn(void) {
    __sbss1C = 0;
    __sbss14 = 0;
    __sbss10 = 0;
    __sbssC = 0;
    __sbss8 = 0;
    __sbss4 = 0;
    __sbss18 = 1;
    fp_poweroff.unk7800 = 0;
    dcb_fifowait();
    if ((gr2_i2cPortWrite(0x70, 0xE7) != 0) && (gr2_i2cAudioVolLeft(0xF6) != 0) && (gr2_i2cAudioVolRight(0xF6) != 0) && (gr2_i2cAudioBass(0xF6) != 0) && (gr2_i2cAudioTreble(0xF6) != 0) && (gr2_i2cAudioSwitch(0xCE) != 0) && (gr2_i2cBlUp(0x64) != 0) && (gr2_i2cSetBit(0) != 0)) {

    }
}

void gr2_i2cPanelOff(void) {
    dcb_fifowait();
    gr2_i2cPortWrite(0x70, 0xFF);
}

s32 gr2_i2cBlUp(s32 arg0, s32 arg2) {
    s32 temp_s1;
    s32 var_a2;
    s32 var_s0;
    s32 var_v0;

    var_a2 = arg2;
    var_v0 = 0;
    if (__sbss1C != 0) {
        var_v0 = 8;
    }
    var_s0 = arg0 - 1;
    if (var_s0 != -1) {
        temp_s1 = var_v0 | 0xE6;
loop_5:
        if ((gr2_i2cPortWrite(0x70, temp_s1, var_a2) != 0) && (gr2_i2cPortWrite(0x70, var_v0 | 0xE4) != 0) && (gr2_i2cPortWrite(0x70, temp_s1) != 0) && (gr2_i2cPortWrite(0x70, var_v0 | 0xE7) != 0)) {
            var_s0 -= 1;
            var_a2 = __sbss4 + 1;
            if (__sbss4 < 0x64) {
                __sbss4 = var_a2;
            }
            if (var_s0 != -1) {
                goto loop_5;
            }
            goto block_12;
        }
        return 0;
    }
block_12:
    return 1;
}

s32 gr2_i2cBlDown(s32 arg0) {
    s32 temp_s1;
    s32 var_s0;
    s32 var_v0;

    var_v0 = 0;
    if (__sbss1C != 0) {
        var_v0 = 8;
    }
    var_s0 = arg0 - 1;
    if (var_s0 != -1) {
        temp_s1 = var_v0 | 0xE2;
loop_6:
        if ((gr2_i2cPortWrite(0x70, temp_s1) != 0) && (gr2_i2cPortWrite(0x70, var_v0 | 0xE0) != 0) && (gr2_i2cPortWrite(0x70, temp_s1) != 0) && (gr2_i2cPortWrite(0x70, var_v0 | 0xE7) != 0)) {
            var_s0 -= 1;
            if (__sbss4 > 0) {
                __sbss4 -= 1;
            }
            if (var_s0 != -1) {
                goto loop_6;
            }
            goto block_13;
        }
        return 0;
    }
block_13:
    return 1;
}

s32 gr2_i2cAudioVolLeft(s64 arg0) {
    s64 sp8;

    sp8 = arg0;
    __sbss8 = (s32) arg0;
    if ((gr2_i2cStart(0x82) != 0) && (gr2_i2cSend(0) != 0) && (gr2_i2cSend(sp8) != 0) && (gr2_i2cStop() != 0)) {
        return 1;
    }
    return 0;
}

s32 gr2_i2cAudioVolRight(s64 arg0) {
    s64 sp8;

    sp8 = arg0;
    __sbssC = (s32) arg0;
    if ((gr2_i2cStart(0x82) != 0) && (gr2_i2cSend(1) != 0) && (gr2_i2cSend(sp8) != 0) && (gr2_i2cStop() != 0)) {
        return 1;
    }
    return 0;
}

s32 gr2_i2cAudioBass(s64 arg0) {
    s64 sp8;

    sp8 = arg0;
    __sbss10 = (s32) arg0;
    if ((gr2_i2cStart(0x82) != 0) && (gr2_i2cSend(2) != 0) && (gr2_i2cSend(sp8) != 0) && (gr2_i2cStop() != 0)) {
        return 1;
    }
    return 0;
}

s32 gr2_i2cAudioTreble(s64 arg0) {
    s64 sp8;

    sp8 = arg0;
    __sbss14 = (s32) arg0;
    if ((gr2_i2cStart(0x82) != 0) && (gr2_i2cSend(3) != 0) && (gr2_i2cSend(sp8) != 0) && (gr2_i2cStop() != 0)) {
        return 1;
    }
    return 0;
}

s32 gr2_i2cAudioSwitch(s64 arg0) {
    s64 sp0;
    s32 var_v0;

    if (arg0 & 0x20) {
        sp0 = arg0;
        __sbss18 = 1;
    } else {
        sp0 = arg0;
        __sbss18 = 0;
    }
    if ((gr2_i2cStart(0x82) != 0) && (gr2_i2cSend(8) != 0) && (gr2_i2cSend(sp0) != 0) && (gr2_i2cStop() != 0)) {
        var_v0 = 1;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

void gr2_i2cSetBit(s32 arg0) {
    if (arg0 != 0) {
        __sbss1C = 1;
        gr2_i2cPortWrite(0x70, 0xEF);
    } else {
        __sbss1C = 0;
        gr2_i2cPortWrite(0x70, 0xE7);
    }
}

s32 gr2_i2c_command(void *arg0) {
    s32 temp_a3;
    s32 var_a3;
    s32 var_v0;
    u32 temp_a2;

    if (__sbss0 == NULL) {
        var_v0 = 0x13;
    } else {
        dcb_fifowait();
        temp_a2 = arg0->unk0;
        if (temp_a2 < 0x11U) {
            temp_a3 = *(temp_a2 * 4);
            switch (temp_a3) {                      /* unable to parse jump table */
            case 0:
                gr2_i2cPanelOn();
                arg0->unk8 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
                break;
            case 11:
                var_a3 = __sbssC;
block_9:
                arg0->unk8 = var_a3;
                break;
            case 1:
                gr2_i2cPanelOff();
                arg0->unk8 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
                break;
            case 2:
                arg0->unk8 = gr2_i2cBlUp(*arg0->unk4, __sbss1C, temp_a2, temp_a3);
                break;
            case 3:
                arg0->unk8 = gr2_i2cBlDown(*arg0->unk4, __sbss1C, temp_a2, temp_a3);
                break;
            case 4:
                arg0->unk8 = gr2_i2cAudioVolLeft((s64) *arg0->unk4, __sbss1C, temp_a2, temp_a3);
                break;
            case 5:
                arg0->unk8 = gr2_i2cAudioVolRight((s64) *arg0->unk4, __sbss1C, temp_a2, temp_a3);
                break;
            case 6:
                arg0->unk8 = gr2_i2cAudioBass((s64) *arg0->unk4, __sbss1C, temp_a2, temp_a3);
                break;
            case 7:
                arg0->unk8 = gr2_i2cAudioTreble((s64) *arg0->unk4, __sbss1C, temp_a2, temp_a3);
                break;
            case 8:
                arg0->unk8 = gr2_i2cAudioSwitch((s64) *arg0->unk4, __sbss1C, temp_a2, temp_a3);
                break;
            case 9:
                arg0->unk8 = (s32) __sbss4;
                break;
            case 10:
                var_a3 = __sbss8;
                goto block_9;
            case 12:
                arg0->unk8 = (s32) __sbss10;
                break;
            case 13:
                arg0->unk8 = (s32) __sbss14;
                break;
            case 14:
                arg0->unk8 = (s32) __sbss18;
                break;
            case 15:
                arg0->unk8 = gr2_i2cSetBit(*arg0->unk4, __sbss1C, temp_a2, temp_a3);
                break;
            case 16:
                arg0->unk8 = (s32) __sbss1C;
                break;
            }
            var_v0 = 0;
        } else {
            cmn_err(4, 0, temp_a2);
            var_v0 = 0x16;
        }
    }
    return var_v0;
}
