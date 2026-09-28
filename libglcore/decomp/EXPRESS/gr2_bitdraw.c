typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ __GLattribute state;
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[3];                    /* maybe part of yInverted[4]? */
    /* 0x0CD0 */ __GLcontextConstants constants;
    /* 0x0DB4 */ char padDB4[0x418];                /* maybe part of constants[5]? */
    /* 0x11CC */ s32 unk11CC;                       /* inferred */
    /* 0x11D0 */ char pad11D0[0x1C20];              /* maybe part of unk11CC[0x709]? */
    /* 0x2DF0 */ u32 validateMask;
    /* 0x2DF4 */ u32 dirtyMask;
    /* 0x2DF8 */ __GLcolorBuffer *drawBuffer;
    /* 0x2DFC */ __GLcolorBuffer *readBuffer;
    /* 0x2E00 */ char pad2E00[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2E10 */ void (*validate)(__GLcontext *);
    /* 0x2E14 */ char pad2E14[0x1C];                /* maybe part of validate[8]? */
    /* 0x2E30 */ __GLprocs procs;
    /* 0x3184 */ __GLattributeMachine attributes;
    /* 0x318C */ char pad318C[0x4250];              /* maybe part of attributes[0x84B]? */
    /* 0x73DC */ __GLtransformMachine transform;
    /* 0x7494 */ __GLlineMachine line;
    /* 0x7538 */ __GLpolygonMachine polygon;
    /* 0x7740 */ __GLpixelMachine pixel;
    /* 0x77C0 */ __GLbufferMachine buffers;
    /* 0x77C4 */ __GLcolorBuffer *front;
    /* 0x77C8 */ __GLcolorBuffer *back;
    /* 0x77CC */ __GLcolorBuffer frontBuffer;
    /* 0x78A8 */ __GLcolorBuffer backBuffer;
    /* 0x7984 */ __GLcolorBuffer *auxBuffer;
    /* 0x7988 */ __GLstencilBuffer stencilBuffer;
    /* 0x7A00 */ __GLdepthBuffer depthBuffer;
    /* 0x7A84 */ __GLaccumBuffer accumBuffer;
    /* 0x7AF4 */ char pad7AF4[0x1C];
    /* 0x7B10 */ s32 fd;
    /* 0x7B14 */ s32 boardIndex;
    /* 0x7B18 */ s32 zDepth;
    /* 0x7B1C */ s32 stencilDepth;
    /* 0x7B20 */ s8 rendererString[0x28];
    /* 0x7B48 */ u32 swapInterval;
    /* 0x7B4C */ u8 hwFlags;
    /* 0x7B4D */ u8 haveZ;
    /* 0x7B4E */ u8 haveStencil;
    /* 0x7B4F */ u8 fastMode;
    /* 0x7B50 */ void (*primitiveProcs[0xA])(__GLcontext *);
} __GLcontext;                                      /* size = 0x7B78 */

void __glExpRenderBitmap(__GLcontext *gc, void *arg1, s32 arg2, s32 arg4, ...) {
    s32 temp_a6;
    s32 temp_at;
    s32 temp_lo;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a4_5;
    s32 var_a4_6;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3;
    u8 temp_v0_2;
    u8 temp_v0_3;
    u8 temp_v1;
    void *var_a5;
    void *var_a5_2;
    void *var_a5_3;

    var_a4 = arg4;
    if (gc->state.current.validRasterPos != 0) {
        var_t2 = arg1->unk0;
        var_t1 = arg1->unk4;
        if ((var_t2 == 0) || (var_t1 == 0)) {
            var_t1 = 0;
            var_t2 = 0;
        }
        temp_a6 = (s32) (var_t2 + 7) >> 3;
        if (temp_a6 < 5) {
            var_a4 = ((s32) (temp_a6 + 3) >> 2) * var_t1;
            if (var_a4 < 0x21) {
                if (var_a4 < 0xA) {
                    var_a7 = 9 - var_a4;
                    var_t3 = 0x18C;
                } else if (var_a4 < 0x12) {
                    var_t3 = 0x18D;
                    var_a7 = 0x11 - var_a4;
                } else {
                    var_t3 = 0x18E;
                    var_a7 = 0x21 - var_a4;
                }
                temp_lo = temp_a6 * var_t1;
                temp_at = var_t3 * 4;
                temp_at->unk42000 = (s32) ((var_t2 << 0x10) | var_t1);
                temp_at->unk42000 = (s32) arg1->unk8;
                var_a7_2 = var_a7 - 1;
                temp_at->unk42000 = (s32) arg1->unkC;
                var_a4_2 = temp_lo;
                temp_at->unk42000 = (s32) arg1->unk10;
                var_a5 = (temp_lo - temp_a6) + arg2;
                temp_at->unk42000 = (s32) arg1->unk14;
                temp_at->unk42000 = 1;
                switch (temp_a6) {                  /* irregular */
                default:
block_11:
                    var_a6 = var_a7_2 + 1;
                    break;
                case 4:
                    if (var_a4_2 >= 4) {
                        do {
                            var_a5 -= 4;
                            var_a4_2 -= 4;
                            HQ2_FIFO.data_port.w = var_a5->unk7 | (var_a5->unk6 << 8) | ((var_a5->unk4 << 0x18) | (var_a5->unk5 << 0x10));
                        } while (var_a4_2 >= 4);
                    }
                    goto block_11;
                case 3:
                    var_a6 = var_a7_2 + 1;
                    if (var_a4_2 >= 3) {
                        M2C_TRAP_IF(3 == 0);
                        do {
                            var_a5 -= 3;
                            var_a4_2 -= 3;
                            HQ2_FIFO.data_port.w = (var_a5->unk3 << 0x18) | (var_a5->unk4 << 0x10) | (var_a5->unk5 << 8);
                        } while (var_a4_2 >= 3);
                        goto block_11;
                    }
                    break;
                case 2:
                    if (var_a4_2 >= 2) {
                        temp_v0 = (s32) (((u32) temp_lo >> 0x1F) + temp_lo) >> 1;
                        var_a6_2 = 1;
                        if (temp_v0 >= 1) {
                            var_a6_2 = temp_v0;
                        }
                        if (var_a6_2 & 1) {
                            var_a5 -= 2;
                            var_a4_2 -= 2;
                            HQ2_FIFO.data_port.w = (var_a5->unk2 << 0x18) | (var_a5->unk3 << 0x10);
                        }
                        if ((var_a6_2 >> 1) != 0) {
                            var_a4_3 = var_a4_2;
                            var_a5_2 = var_a5;
                            do {
                                temp_v0_2 = var_a5_2->unk0;
                                temp_v1 = var_a5_2->unk1;
                                var_a5_2 -= 4;
                                HQ2_FIFO.data_port.w = (temp_v0_2 << 0x18) | (temp_v1 << 0x10);
                                var_a4_3 -= 4;
                                HQ2_FIFO.data_port.w = (var_a5_2->unk2 << 0x18) | (var_a5_2->unk3 << 0x10);
                            } while (var_a4_3 >= 2);
                        }
                    }
                    goto block_11;
                case 1:
                    if (temp_lo > 0) {
                        var_a6_3 = temp_lo & 3;
                        if (var_a6_3 != 0) {
                            do {
                                var_a5 -= 1;
                                var_a4_2 -= 1;
                                var_a6_3 -= 1;
                                HQ2_FIFO.data_port.w = var_a5->unk1 << 0x18;
                            } while (var_a6_3 != 0);
                        }
                        if ((temp_lo >> 2) != 0) {
                            var_a4_4 = var_a4_2;
                            var_a5_3 = var_a5;
                            do {
                                HQ2_FIFO.data_port.w = var_a5_3->unk0 << 0x18;
                                HQ2_FIFO.data_port.w = var_a5_3->unk-1 << 0x18;
                                HQ2_FIFO.data_port.w = var_a5_3->unk-2 << 0x18;
                                temp_v0_3 = var_a5_3->unk-3;
                                var_a5_3 -= 4;
                                var_a4_4 -= 4;
                                HQ2_FIFO.data_port.w = temp_v0_3 << 0x18;
                            } while (var_a4_4 != 0);
                        }
                    }
                    goto block_11;
                }
                if (var_a7_2 >= 0) {
                    var_a4_5 = var_a6 & 3;
                    if (var_a4_5 != 0) {
                        do {
                            var_a7_2 -= 1;
                            var_a4_5 -= 1;
                            HQ2_FIFO.data_port.w = 0;
                        } while (var_a4_5 != 0);
                    }
                    if ((var_a6 >> 2) != 0) {
                        var_a4_6 = var_a7_2;
                        do {
                            var_a4_6 -= 4;
                            HQ2_FIFO.data_port.w = 0;
                            HQ2_FIFO.data_port.w = 0;
                            HQ2_FIFO.data_port.w = 0;
                            HQ2_FIFO.data_port.w = 0;
                        } while (var_a4_6 != -1);
                    }
                }
                gc->state.current.rasterPos.window.x += (bitwise f32) arg1->unk10;
                gc->state.current.rasterPos.window.y += (bitwise f32) arg1->unk14 * (f32) gc->unk11CC;
                return;
            }
        }
        __glExpSlowRenderBitmap(gc, var_a4, temp_a6, 9);
    }
}

void __glExpSlowRenderBitmap(__GLcontext *gc, s32 arg1, s64 arg2, ...) {
    s64 sp20;

    if (gc->fastMode == 0) {
        sp20 = arg2;
        __glExpGetRasterPosData(gc, gc);
    }
    __glRenderBitmap(gc, arg1, arg2);
    if (gc->fastMode == 0) {
        __glExpPassRasterPosData(gc, gc);
    }
}
