HQ_RECORD *Gr2TpHQUcodeSetup(void) {
    *(s32 *)0x2404 = *(s32 *)0x18;
    *(s32 *)0x2400 = *(s32 *)0x14;
    *(s32 *)0x23FC = *(s32 *)0x10;
    *(s32 *)0x23F8 = *(s32 *)0xC;
    *(s32 *)0x23F4 = *(s32 *)8;
    *(s32 *)0x23F0 = *(s32 *)4;
    *(s32 *)0x23EC = *NULL;
    return (HQ_RECORD *)0x23D0;
}

void Gr2TpGEUcodeSetup(void) {
    *(s32 *)0x34 = *(s32 *)0x18;
    *(s32 *)0x30 = *(s32 *)0x14;
    *(s32 *)0x2C = *(s32 *)0x10;
    *(s32 *)0x28 = *(s32 *)0xC;
    *(s32 *)0x24 = *(s32 *)8;
    *(s32 *)0x20 = *(s32 *)4;
    *(s32 *)0x1C = *NULL;
}

s32 Gr2TpSetup(struct gr2_hw *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 var_v0;
    u32 temp_v0;

    sp20 = arg1;
    sp10 = arg2;
    sp18 = arg3;
    if (Gr2DownloadHQ2(arg0, Gr2TpHQUcodeSetup()) != 0) {
        if (Gr2DownloadGE7(arg0, Gr2TpGEUcodeSetup(), 0) != 0) {
            arg0->hq.gepc.w = 0;
            arg0->hq.unstall.w = 0;
            temp_v0 = ~arg0->bdvers.rd0.b & 0xF;
            if (temp_v0 < 0xCU) {
                switch (*(temp_v0 * 4)) {           /* unable to parse jump table */
                case 0:
                case 1:
                case 2:
                case 3:
                    arg0->fifo[0x191] = 0;
                    break;
                case 4:
                case 9:
                case 10:
                case 11:
                    arg0->fifo[0x191] = 1;
                    break;
                }
            } else {
            case 5:
            case 6:
            case 7:
            case 8:
                arg0->fifo[0x191] = 2;
            }
            flushbus();
            us_delay(9);
            arg0->fifo[0x192] = 0;
            arg0->fifo[0x195] = 0;
            arg0->fifo[0x1DF] = 0;
            arg0->fifo[0x1DF] = (u32) sp20;
            arg0->fifo[0x1DF] = (u32) sp10;
            Gr2BlankScreen(arg0, (s32) sp18);
            var_v0 = 0;
            arg0->shram[0x7FFF] = 1;
        } else {
            var_v0 = -1;
            arg0->shram[0x7FFF] = 0;
        }
    } else {
        var_v0 = -1;
        arg0->shram[0x7FFF] = 0;
    }
    return var_v0;
}
