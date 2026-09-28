typedef struct __GLcolorBufferRec {
    /* 0x00 */ __GLbuffer buf;
    /* 0x1C */ s32 redMax;
    /* 0x20 */ s32 greenMax;
    /* 0x24 */ s32 blueMax;
    /* 0x28 */ u8 needColorFragmentOps;
    /* 0x29 */ char pad29[3];                       /* maybe part of needColorFragmentOps[4]? */
    /* 0x2C */ u8 *alphaTestFuncTable;
    /* 0x30 */ f32 redScale;
    /* 0x34 */ f32 greenScale;
    /* 0x38 */ f32 blueScale;
    /* 0x3C */ s32 iRedScale;
    /* 0x40 */ s32 iGreenScale;
    /* 0x44 */ s32 iBlueScale;
    /* 0x48 */ s32 redShift;
    /* 0x4C */ s32 greenShift;
    /* 0x50 */ s32 blueShift;
    /* 0x54 */ s32 alphaShift;
    /* 0x58 */ f32 alphaScale;
    /* 0x5C */ s32 iAlphaScale;
    /* 0x60 */ f32 oneOverRedScale;
    /* 0x64 */ f32 oneOverGreenScale;
    /* 0x68 */ f32 oneOverBlueScale;
    /* 0x6C */ f32 oneOverAlphaScale;
    /* 0x70 */ u32 sourceMask;
    /* 0x74 */ u32 destMask;
    /* 0x78 */ void (*pick)();
    /* 0x7C */ s32 (*getDisplayMasks)();
    /* 0x80 */ void (*store)();
    /* 0x84 */ void (*fetch)();
    /* 0x88 */ void (*readColor)();
    /* 0x8C */ u8 (*readSpan)();
    /* 0x90 */ void (*returnSpan)();
    /* 0x94 */ void *storeSpan;
    /* 0x98 */ void *storeStippledSpan;
    /* 0x9C */ void *storeLine;
    /* 0xA0 */ void *storeStippledLine;
    /* 0xA4 */ void *fetchSpan;
    /* 0xA8 */ void *fetchStippledSpan;
    /* 0xAC */ void *fetchLine;
    /* 0xB0 */ void *fetchStippledLine;
    /* 0xB4 */ char padB4[4];
    /* 0xB8 */ void (*unkB8)(__GLcontext *, ...);   /* inferred */
    /* 0xBC */ void (*unkBC)(__GLcontext *, ...);   /* inferred */
    /* 0xC0 */ char padC0[8];                       /* maybe part of unkBC[3]? */
    /* 0xC8 */ void (*unkC8)(__GLcontext *, ...);   /* inferred */
    /* 0xCC */ s32 unkCC;                           /* inferred */
    /* 0xD0 */ char padD0[8];                       /* maybe part of unkCC[3]? */
    /* 0xD8 */ void (*clear)(__GLcolorBuffer *);
} __GLcolorBuffer;                                  /* size = 0xDC */

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
    /* 0x0DB4 */ char padDB4[0x574];                /* maybe part of constants[7]? */
    /* 0x1328 */ s32 unk1328;                       /* inferred */
    /* 0x132C */ char pad132C[0x9C];                /* maybe part of unk1328[0x28]? */
    /* 0x13C8 */ s32 unk13C8;                       /* inferred */
    /* 0x13CC */ char pad13CC[0x9C];                /* maybe part of unk13C8[0x28]? */
    /* 0x1468 */ s32 unk1468;                       /* inferred */
    /* 0x146C */ char pad146C[0x9C];                /* maybe part of unk1468[0x28]? */
    /* 0x1508 */ s32 unk1508;                       /* inferred */
    /* 0x150C */ char pad150C[0x18E4];              /* maybe part of unk1508[0x63A]? */
    /* 0x2DF0 */ u32 validateMask;
    /* 0x2DF4 */ u32 dirtyMask;
    /* 0x2DF8 */ __GLcolorBuffer *drawBuffer;
    /* 0x2DFC */ __GLcolorBuffer *readBuffer;
    /* 0x2E00 */ char pad2E00[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2E10 */ void (*validate)(__GLcontext *);
    /* 0x2E14 */ char pad2E14[0x1C];                /* maybe part of validate[8]? */
    /* 0x2E30 */ __GLprocs procs;
    /* 0x3184 */ __GLattributeMachine attributes;
    /* 0x318C */ char pad318C[0x3C2C];              /* maybe part of attributes[0x786]? */
    /* 0x6DB8 */ s32 unk6DB8;                       /* inferred */
    /* 0x6DBC */ char pad6DBC[0x620];               /* maybe part of unk6DB8[0x189]? */
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

typedef struct __GLpixelMachineRec {
    /* 0x00 */ u8 modifyRGBA;
    /* 0x01 */ u8 modifyCI;
    /* 0x02 */ u8 modifyDepth;
    /* 0x03 */ u8 modifyStencil;
    /* 0x04 */ u8 fastRGBA;
    /* 0x05 */ char pad5[3];                        /* maybe part of fastRGBA[4]? */
    /* 0x08 */ f32 red0Mod;
    /* 0x0C */ f32 green0Mod;
    /* 0x10 */ f32 blue0Mod;
    /* 0x14 */ f32 alpha1Mod;
    /* 0x18 */ f32 *redMap;
    /* 0x1C */ f32 *greenMap;
    /* 0x20 */ f32 *blueMap;
    /* 0x24 */ f32 *alphaMap;
    /* 0x28 */ f32 *iMap;
    /* 0x2C */ void *iCurMap;
    /* 0x30 */ void *redCurMap;
    /* 0x34 */ void *greenCurMap;
    /* 0x38 */ void *blueCurMap;
    /* 0x3C */ void *alphaCurMap;
    /* 0x40 */ u8 rgbaCurrent;
    /* 0x41 */ char pad41[3];                       /* maybe part of rgbaCurrent[4]? */
    /* 0x44 */ f32 *redModMap;
    /* 0x48 */ f32 *greenModMap;
    /* 0x4C */ f32 *blueModMap;
    /* 0x50 */ f32 *alphaModMap;
    /* 0x54 */ u8 iToICurrent;
    /* 0x55 */ char pad55[3];                       /* maybe part of iToICurrent[4]? */
    /* 0x58 */ f32 *iToIMap;
    /* 0x5C */ u8 iToRGBACurrent;
    /* 0x5D */ char pad5D[3];                       /* maybe part of iToRGBACurrent[4]? */
    /* 0x60 */ f32 *iToRMap;
    /* 0x64 */ f32 *iToGMap;
    /* 0x68 */ f32 *iToBMap;
    /* 0x6C */ f32 *iToAMap;
    /* 0x70 */ s32 unk70;                           /* inferred */
    /* 0x74 */ char pad74[5];                       /* maybe part of unk70[2]? */
    /* 0x79 */ u8 unk79;                            /* inferred */
    /* 0x7A */ char pad7A[6];                       /* maybe part of unk79[7]? */
} __GLpixelMachine;                                 /* size = 0x80 */

typedef struct __GLpixelStateRec {
    /* 0x000 */ char pad0[0x68];
    /* 0x068 */ f32 unk68;                          /* inferred */
    /* 0x06C */ f32 unk6C;                          /* inferred */
    /* 0x070 */ char pad70[0xC];                    /* maybe part of unk6C[4]? */
    /* 0x07C */ s32 *unk7C;                         /* inferred */
    /* 0x080 */ char pad80[0x1A0];                  /* maybe part of unk7C[0x69]? */
    /* 0x220 */ s32 unk220;                         /* inferred */
    /* 0x224 */ char pad224[0x70];                  /* maybe part of unk220[0x1D]? */
    /* 0x294 */ u8 unk294;                          /* inferred */
    /* 0x295 */ char pad295[0x13];                  /* maybe part of unk294[0x14]? */
} __GLpixelState;                                   /* size = 0x2A8 */

typedef struct __GLprocsRec {
    /* 0x000 */ void (*validate)(__GLcontext *);
    /* 0x004 */ void (*finish)(__GLcontext *);
    /* 0x008 */ void (*flush)(__GLcontext *);
    /* 0x00C */ void (*applyColor)(__GLcontext *);
    /* 0x010 */ void *table[0x80];
    /* 0x210 */ char pad210[0x18];
    /* 0x228 */ s32 unk228;                         /* inferred */
    /* 0x22C */ s32 unk22C;                         /* inferred */
    /* 0x230 */ s32 unk230;                         /* inferred */
    /* 0x234 */ void (*unk234)();                   /* inferred */
    /* 0x238 */ void (*unk238)();                   /* inferred */
    /* 0x23C */ void (*unk23C)();                   /* inferred */
    /* 0x240 */ void (*unk240)();                   /* inferred */
    /* 0x244 */ void (*unk244)();                   /* inferred */
    /* 0x248 */ char pad248[0x48];                  /* maybe part of unk244[0x13]? */
    /* 0x290 */ void (*unk290)();                   /* inferred */
    /* 0x294 */ void (*unk294)();                   /* inferred */
    /* 0x298 */ void (*unk298)();                   /* inferred */
    /* 0x29C */ char pad29C[0x1C];                  /* maybe part of unk298[8]? */
    /* 0x2B8 */ void (*unk2B8)(__GLcontext *, ...); /* inferred */
    /* 0x2BC */ char pad2BC[0x2C];                  /* maybe part of unk2B8[0xC]? */
    /* 0x2E8 */ void (*unk2E8)(__GLcontext *, ...); /* inferred */
    /* 0x2EC */ void (*unk2EC)(__GLcontext *, ...); /* inferred */
    /* 0x2F0 */ void (*unk2F0)(__GLcontext *, ...); /* inferred */
    /* 0x2F4 */ char pad2F4[0x60];                  /* maybe part of unk2F0[0x19]? */
} __GLprocs;                                        /* size = 0x354 */

void sub_0da60000(__GLcontext *gc, ...);            /* extern */
extern ? __glexpim_colorDispatchTable;
extern ? __glexpim_hardIndexColorDispatchTable;
extern ? __glexpim_hardNormalDispatchTable;
extern ? __glexpim_hardRGBColorDispatchTable;
extern ? __glexpim_hardVertexDispatchTable;
extern ? __glexpim_normalDispatchTable;
extern ? __glexpim_shadowIndexColorDispatchTable;
extern ? __glexpim_shadowNormalDispatchTable;
extern ? __glexpim_shadowRGBColorDispatchTable;
extern ? __glexpim_vertexDispatchTable;

void LoadHardDispatchVectors(void *arg0) {
    s32 *temp_a1;
    s32 *temp_a1_2;
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_at_3;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 *temp_v1_4;
    s32 temp_a5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    u8 temp_a0;

    memcpy(arg0 + 0x7B50, arg0 + 0x7BA0, 0x28U);
    var_a0 = 0x18;
    var_a2 = 0;
    do {
        temp_v0 = var_a2 + (arg0->unk15CC + 0x5CC);
        temp_at = var_a2 + &__glexpim_hardVertexDispatchTable;
        var_a2 += 4;
        var_a0 -= 1;
        *temp_v0 = *temp_at;
    } while (var_a0 > 0);
    temp_a0 = arg0->unkC20;
    var_a2_2 = 0x2A;
    temp_a5 = arg0->unk15CC;
    if (arg0->unk7BC8 != 0) {
        if (temp_a0 != 0) {
            var_a0_2 = 0;
            do {
                temp_a1 = var_a0_2 + (temp_a5 + 0x62C);
                temp_v1 = var_a0_2 + &__glexpim_shadowRGBColorDispatchTable;
                var_a0_2 += 4;
                var_a2_2 -= 1;
                *temp_a1 = *temp_v1;
            } while (var_a2_2 > 0);
        } else {
            var_a0_3 = 0x2A;
            var_a2_3 = 0;
            do {
                temp_v1_2 = var_a2_3 + (temp_a5 + 0x62C);
                temp_v0_2 = var_a2_3 + &__glexpim_shadowIndexColorDispatchTable;
                var_a2_3 += 4;
                var_a0_3 -= 1;
                *temp_v1_2 = *temp_v0_2;
            } while (var_a0_3 > 0);
        }
        var_a0_4 = 0xA;
        var_a2_4 = 0;
        do {
            temp_v0_3 = var_a2_4 + (arg0->unk15CC + 0x6D4);
            temp_at_2 = var_a2_4 + &__glexpim_shadowNormalDispatchTable;
            var_a2_4 += 4;
            var_a0_4 -= 1;
            *temp_v0_3 = *temp_at_2;
        } while (var_a0_4 > 0);
    } else {
        var_a2_5 = 0;
        if (temp_a0 != 0) {
            var_a2_6 = 0;
            var_a0_5 = 0x2A;
            do {
                temp_v1_3 = var_a2_6 + (temp_a5 + 0x62C);
                temp_v0_4 = var_a2_6 + &__glexpim_hardRGBColorDispatchTable;
                var_a2_6 += 4;
                var_a0_5 -= 1;
                *temp_v1_3 = *temp_v0_4;
            } while (var_a0_5 > 0);
        } else {
            var_a0_6 = 0x2A;
            do {
                temp_a1_2 = var_a2_5 + (temp_a5 + 0x62C);
                temp_v1_4 = var_a2_5 + &__glexpim_hardIndexColorDispatchTable;
                var_a2_5 += 4;
                var_a0_6 -= 1;
                *temp_a1_2 = *temp_v1_4;
            } while (var_a0_6 > 0);
        }
        var_a0_7 = 0xA;
        var_a2_7 = 0;
        do {
            temp_v0_5 = var_a2_7 + (arg0->unk15CC + 0x6D4);
            temp_at_3 = var_a2_7 + &__glexpim_hardNormalDispatchTable;
            var_a2_7 += 4;
            var_a0_7 -= 1;
            *temp_v0_5 = *temp_at_3;
        } while (var_a0_7 > 0);
    }
}

void LoadSoftDispatchVectors(void *arg0) {
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_at_3;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;

    memcpy(arg0 + 0x7B50, arg0 + 0x7B78, 0x28U);
    var_a2 = 0x18;
    var_a0 = 0;
    do {
        temp_v0 = var_a0 + (arg0->unk15CC + 0x5CC);
        temp_at = var_a0 + &__glexpim_vertexDispatchTable;
        var_a0 += 4;
        var_a2 -= 1;
        *temp_v0 = *temp_at;
    } while (var_a2 > 0);
    var_a0_2 = 0x2A;
    var_a2_2 = 0;
    do {
        temp_v0_2 = var_a2_2 + (arg0->unk15CC + 0x62C);
        temp_at_2 = var_a2_2 + &__glexpim_colorDispatchTable;
        var_a2_2 += 4;
        var_a0_2 -= 1;
        *temp_v0_2 = *temp_at_2;
    } while (var_a0_2 > 0);
    var_a0_3 = 0xA;
    var_a2_3 = 0;
    do {
        temp_v0_3 = var_a2_3 + (arg0->unk15CC + 0x6D4);
        temp_at_3 = var_a2_3 + &__glexpim_normalDispatchTable;
        var_a2_3 += 4;
        var_a0_3 -= 1;
        *temp_v0_3 = *temp_at_3;
    } while (var_a0_3 > 0);
}

void SwitchPrimDispatch(__GLcontext *arg0) {
    if (arg0->fastMode != 0) {
        __glExpDlistOptimizer(arg0, arg0);
        __glExpPassMachineState(arg0, arg0);
        arg0->fastMode = 0;
        *(void *)0x101C = (s32) (*(s32 *)0x101C & 1);
        arg0->procs.table[0x2F] = __glNop;
        __glExpPassMachineState(arg0, arg0);
        ((? (*)(__GLcontext *)) arg0->procs.table[0x13])(arg0);
    } else {
        __glExpDlistOptimizer(arg0, arg0);
        __glExpGetMachineState(arg0, arg0);
        arg0->fastMode = 1;
        *(void *)0x101C = (s32) (*(void *)0x101C | ~1);
        __glExpGetMachineState(arg0, arg0);
        ((? (*)(__GLcontext *)) arg0->procs.table[0x13])(arg0);
    }
}

void __glExpLoadPrimDispatchVectors(__GLcontext *gc, ...) {
    if (gc->fastMode != 0) {
        __glExpDlistOptimizer(gc);
    } else {
        __glExpDlistOptimizer(gc);
    }
}

void SwitchLLoop(__GLcontext *arg0) {
    __glExpDlistOptimizer(arg0);
    sub_0da60000(arg0, arg0);
}

void SwitchLStrip(__GLcontext *arg0) {
    __glExpDlistOptimizer(arg0);
    sub_0da60000(arg0, arg0);
}

void SwitchLines(__GLcontext *arg0) {
    __glExpDlistOptimizer(arg0);
    sub_0da60000(arg0, arg0);
}

void SwitchPoints(__GLcontext *arg0) {
    __glExpDlistOptimizer(arg0);
    sub_0da60000(arg0, arg0);
}

void SwitchPolygon(__GLcontext *arg0) {
    __glExpDlistOptimizer(arg0);
    sub_0da60000(arg0, arg0);
}

void SwitchTStrip(__GLcontext *arg0) {
    __glExpDlistOptimizer(arg0);
    sub_0da60000(arg0, arg0);
}

void SwitchTFan(__GLcontext *arg0) {
    __glExpDlistOptimizer(arg0);
    sub_0da60000(arg0, arg0);
}

void SwitchTriangles(__GLcontext *arg0) {
    __glExpDlistOptimizer(arg0);
    sub_0da60000(arg0, arg0);
}

void SwitchQStrip(__GLcontext *arg0) {
    __glExpDlistOptimizer(arg0);
    sub_0da60000(arg0, arg0);
}

void SwitchQuads(__GLcontext *arg0) {
    __glExpDlistOptimizer(arg0);
    sub_0da60000(arg0, arg0);
}

void __glExpPickPrimDispatch(__GLcontext *gc, s32 arg7, ...) {
    enum GLenum temp_a0;
    enum GLenum var_a2;
    s32 temp_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_at;
    s32 var_v1;
    s32 var_v1_2;
    s8 var_s1;
    void (*var_a1_3)(__GLcontext *, ...);
    void *var_v1_3;

    var_a7 = arg7;
    var_a5 = 0;
    var_a6 = 0;
    var_a4 = 0;
    var_a3 = 0;
    var_s1 = 0;
    var_a2 = gc->state.enables.general;
    if (var_a2 & 1) {
        goto block_1;
    }
    if (!(var_a2 & 0xC03F0000) && ((var_v1 = var_a2 & 0x8000, ((var_a2 & 0x10) == 0)) || (var_v1 = var_a2 & 0x8000, (gc->modes.haveDepthBuffer == 0)) || (var_v1 = var_a2 & 0x8000, (gc->haveZ != 0))) && ((var_v1 == 0) || (gc->modes.haveStencilBuffer == 0) || (gc->haveStencil != 0))) {
        var_v1_2 = var_a2 & 0x20;
        if (gc->renderMode != GL_RENDER) {
            goto block_1;
        }
    } else {
block_1:
        var_a3 = 1;
        var_v1_2 = var_a2 & 0x20;
    }
    if ((var_v1_2 != 0) && (gc->modes.colorIndexMode != 0)) {
        goto block_4;
    }
    if (gc->state.raster.drawBuffer == GL_FRONT_AND_BACK) {
        if (!(var_a2 & 2)) {
            if (var_a2 & 4) {
                goto block_4;
            }
        } else {
block_4:
            var_a3 = 1;
        }
    }
    if (gc->polygon.shader.modeFlags & 0x80000) {
        var_at = var_a2 & 0x400;
        if ((bitwise s32) gc->state.raster.blendColor.r != 0xBF1) {
            var_a3 = 1;
            goto block_8;
        }
    } else {
block_8:
        var_at = var_a2 & 0x400;
    }
    var_a1 = var_a2 & 0x200;
    if ((var_at != 0) && (((f64) gc->state.point.smoothSize != (second half of f64)) || (var_a1 = var_a2 & 0x200, (gc->state.hints.pointSmooth == GL_NICEST)))) {
        var_a4 = 1;
        var_a1 = var_a2 & 0x200;
    }
    if (var_a1 != 0) {
        if (((f64) gc->state.line.smoothWidth != 1.0) || (gc->state.hints.lineSmooth == GL_NICEST) || (var_a1_2 = var_a2 & 0x800, ((var_a2 & 0x100) != 0))) {
            var_a6 = 1;
            goto block_18;
        }
    } else {
block_18:
        var_a1_2 = var_a2 & 0x800;
    }
    if (var_a1_2 == 0) {
        temp_a0 = gc->state.polygon.frontMode;
        var_a2 = gc->state.polygon.backMode;
        if ((temp_a0 == var_a2) && ((var_a7 = 0x1B00, (var_a4 == 0)) || ((temp_a0 != GL_POINT) && (var_a2 != GL_POINT)))) {
            var_a7 = 0x1B01;
            if (var_a6 != 0) {
                if (temp_a0 != GL_LINE) {
                    if (var_a2 == GL_LINE) {
                        goto block_22;
                    }
                } else {
                    goto block_22;
                }
            }
        } else {
            goto block_22;
        }
    } else {
block_22:
        var_a5 = 1;
    }
    if (gc->state.enables.pixelPath == 0) {
        if (gc->state.enables.eval != 0) {
            goto block_26;
        }
    } else {
block_26:
        var_a4 = 1;
        var_s1 = 1;
    }
    if (var_a4 != 0) {
        goto block_28;
    }
    if (var_a3 == 0) {
        gc->unk7BA0 = __glExpBeginPoints;
        var_v1_3 = sub_0da60000 + 0xE4;
    } else {
block_28:
        var_v1_3 = gc->procs.table[0x31];
        gc->unk7BA0 = (void (*)(__GLcontext *, ...)) (sub_0da60000 + 0xE4);
    }
    gc->unk7B78 = var_v1_3;
    if (var_a6 != 0) {
        goto block_30;
    }
    if (var_a3 == 0) {
        gc->unk7BA4 = __glExpBeginLines;
        gc->unk7BAC = __glExpBeginLStrip;
        gc->unk7BA8 = __glExpBeginLLoop;
        gc->unk7B7C = (void *) (sub_0da60000 + 0x98);
        gc->unk7B84 = (void *) (sub_0da60000 + 0x4C);
        gc->unk7B80 = sub_0da60000;
    } else {
block_30:
        gc->unk7BA4 = (void (*)(__GLcontext *, ...)) (sub_0da60000 + 0x98);
        gc->unk7B84 = (void *) gc->procs.table[0x34];
        gc->unk7B7C = (void *) gc->procs.table[0x32];
        gc->unk7B80 = (void *) gc->procs.table[0x33];
        gc->unk7BAC = (void (*)(__GLcontext *, ...)) (sub_0da60000 + 0x4C);
        gc->unk7BA8 = sub_0da60000;
    }
    if (var_a5 != 0) {
        goto block_32;
    }
    if (var_a3 == 0) {
        gc->unk7BBC = __glExpBeginQuads;
        gc->unk7BC0 = __glExpBeginQStrip;
        gc->unk7BB0 = __glExpBeginTriangles;
        gc->unk7BB8 = __glExpBeginTFan;
        gc->unk7BB4 = __glExpBeginTStrip;
        gc->unk7BC4 = __glExpBeginPolygon;
        gc->unk7B94 = (void *) (sub_0da60000 + 0x2AC);
        gc->unk7B98 = (void *) (sub_0da60000 + 0x260);
        gc->unk7B88 = (void *) (sub_0da60000 + 0x214);
        gc->unk7B90 = (void *) (sub_0da60000 + 0x1C8);
        var_a1_3 = sub_0da60000 + 0x17C;
        gc->unk7B8C = var_a1_3;
        gc->unk7B9C = (void *) (sub_0da60000 + 0x130);
    } else {
block_32:
        gc->unk7B98 = (void *) gc->procs.table[0x39];
        gc->unk7B94 = (void *) gc->procs.table[0x38];
        gc->unk7B9C = (void *) gc->procs.table[0x3A];
        gc->unk7B8C = (void *) gc->procs.table[0x36];
        var_a1_3 = sub_0da60000 + 0x1C8;
        gc->unk7B88 = (void *) gc->procs.table[0x35];
        gc->unk7B90 = (void *) gc->procs.table[0x37];
        gc->unk7BB0 = (void (*)(__GLcontext *, ...)) (sub_0da60000 + 0x214);
        gc->unk7BC0 = (void (*)(__GLcontext *, ...)) (sub_0da60000 + 0x260);
        gc->unk7BBC = (void (*)(__GLcontext *, ...)) (sub_0da60000 + 0x2AC);
        gc->unk7BB8 = var_a1_3;
        gc->unk7BB4 = (void (*)(__GLcontext *, ...)) (sub_0da60000 + 0x17C);
        gc->unk7BC4 = (void (*)(__GLcontext *, ...)) (sub_0da60000 + 0x130);
    }
    gc->unk7BC8 = var_s1;
    temp_a0_2 = *(s32 *)0x101C;
    if (var_s1 != 0) {
        *(void *)0x101C = (s32) (temp_a0_2 | 1);
    } else {
        *(void *)0x101C = (s32) (temp_a0_2 & ~1);
    }
    if (gc->fastMode != var_a3) {
        __glExpDlistOptimizer(gc, gc, var_a1_3, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
    } else {
        __glExpLoadPrimDispatchVectors(gc, gc, var_a1_3, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
    }
    if ((var_s1 != 0) && (gc->fastMode == 0)) {
        __glExpGetMachineState(gc, gc);
    }
}

void __glExpInitPrimDispatchState(__GLcontext *gc, ...) {
    gc->unk7C94 = 0;
    gc->unk7BC8 = 0;
    gc->fastMode = 0;
    *(s32 *)0x101C = 0;
    gc->procs.table[0x2F] = __glNop;
}

void __glExpPickBufferProcs(__GLcontext *gc, ...) {
    __glGenericPickBufferProcs();
}

void __glExpPickSpanProcs(__GLcontext *gc, ...) {
    s64 sp50;
    s64 sp48;
    s64 sp8;
    s64 sp0;
    __GLcolorBuffer *temp_s5;
    enum GLenum temp_a3_3;
    enum GLenum temp_v0_2;
    f32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 var_a3;
    s32 var_at;
    s32 var_s4;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_a0;
    s64 var_a0;
    u32 temp_s3;
    void (*var_v1)();
    void **var_s0;
    void **var_s0_2;
    void **var_s0_3;
    void **var_s1;
    void **var_s1_2;
    void *temp_a3;
    void *temp_a3_2;

    gc->procs.table[0x53] = NULL;
    var_s4 = 0;
    var_s1 = &gc->procs.table[0x54];
    var_s0 = &gc->procs.table[0x45];
    temp_s5 = gc->drawBuffer;
    temp_s3 = gc->polygon.shader.modeFlags;
    gc->procs.table[0x44] = __glClipSpan;
    if (temp_s3 & 0x10) {
        var_s1 = &gc->procs.table[0x55];
        var_s0 = &gc->procs.table[0x46];
        gc->procs.table[0x45] = __glStippleSpan;
        gc->procs.table[0x54] = __glStippleStippledSpan;
    }
    temp_a0 = temp_s3 & 0x200;
    if (temp_a0 != 0) {
        goto block_3;
    }
    var_at = temp_s3 & 4;
    if (!(temp_s3 & 0x20) || (var_at = temp_s3 & 4, (gc->haveStencil != 0))) {
        if (var_at != 0) {
            if (gc->haveZ == 0) {
                if (gc->state.depth.testFunc != GL_NEVER) {
                    if (!(temp_s3 & 0x40000)) {
                        var_s1 += 4;
                        var_s0 += 4;
                        var_s0->unk-4 = __glDepthTestSpan_asm;
                        var_s1->unk-4 = __glDepthTestStippledSpan_asm;
                    } else {
                        var_s1 += 4;
                        var_s0 += 4;
                        var_s0->unk-4 = __glDepthTestOffsetSpan;
                        var_s1->unk-4 = __glDepthTestStippledOffsetSpan;
                    }
                    goto block_51;
                }
                gc->procs.table[0x64] = __glNop;
                return;
            }
            goto block_51;
        }
block_51:
        goto block_3;
    }
    var_s0->unk0 = __glStencilTestSpan_asm;
    var_s1->unk0 = __glStencilTestStippledSpan;
    if (temp_s3 & 4) {
        if (temp_s3 & 0x40000) {
            var_s0->unk4 = __glDepthTestStencilOffsetSpan;
            var_s1->unk4 = __glDepthTestStencilStippledOffsetSpan;
        } else {
            var_s0->unk4 = __glDepthTestStencilSpan_asm;
            var_s1->unk4 = __glDepthTestStencilStippledSpan_asm;
        }
    } else {
        var_s0->unk4 = __glDepthPassSpan;
        var_s1->unk4 = __glDepthPassStippledSpan;
    }
    var_s1 += 8;
    var_s0 += 8;
block_3:
    temp_v0 = temp_s3 & 1;
    if ((temp_v0 == 0) || (temp_s3 & 0x1200)) {
        var_a3 = temp_s3 & 2;
        goto block_6;
    }
    var_a3 = temp_s3 & 2;
    if (!(temp_s3 & 0x80000)) {
        var_a3 = temp_s3 & 2;
        if (gc->buffers.doubleStore == 0) {
            if (temp_s3 & 8) {
                temp_v0_2 = gc->state.enables.general;
                temp_a2 = temp_v0_2 & 0x20000;
                var_a0 = 0;
                if (temp_a2 != 0) {
                    if (!(temp_v0_2 & 0x40000000)) {
                        sp48 = 0;
                        __glLookUpTextureParams(gc, 0xDE1, temp_a2, var_a3);
                        sp0 = M2C_ERROR(/* Read from unset register $v0 */);
                        __glLookUpTexture(gc, 0xDE1);
                        temp_a3 = M2C_ERROR(/* Read from unset register $v0 */)->unkE4;
                        var_a0 = sp48;
                        if ((temp_a3->unk40 == 0x1907) && (temp_a3->unk38 == 0)) {
                            if (temp_s3 & 2) {
                                var_s0->unk0 = __glShadeRGBASpan;
                                var_s1->unk0 = __glShadeRGBASpan;
                            } else {
                                var_s0->unk0 = __glFlatRGBASpan;
                                var_s1->unk0 = __glFlatRGBASpan;
                            }
                            var_v0 = sp0->unkC;
                            if (var_v0 != 0x2702) {

                            } else if (sp0->unk10 == 0x2601) {
                                var_a0 = 1;
                                var_s0->unk4 = __glTextureRGB_L_NML_Span;
                                var_s1->unk4 = __glTextureRGB_L_NML_StippledSpan;
                                var_v0 = sp0->unkC;
                            }
                            if (var_v0 != 0x2703) {

                            } else if (sp0->unk10 == 0x2601) {
                                var_a0 = 1;
                                var_s0->unk4 = __glTextureRGB_L_LML_Span;
                                var_s1->unk4 = __glTextureRGB_L_LML_StippledSpan;
                                var_v0 = sp0->unkC;
                            }
                            if (var_v0 == 0x8146) {
                                if (sp0->unk10 == 0x8146) {
                                    var_a0 = 1;
                                    var_s0->unk4 = __glTextureRGB_F_F_Span;
                                    var_s1->unk4 = __glTextureRGB_F_F_StippledSpan;
                                    var_v0 = sp0->unkC;
                                }
                            }
                            if (var_v0 == 0x2703) {
                                if (sp0->unk10 == 0x8146) {
                                    var_a0 = 1;
                                    var_s0->unk4 = __glTextureRGB_F_LML_Span;
                                    var_s1->unk4 = __glTextureRGB_F_LML_StippledSpan;
                                }
                            }
                            if (var_a0 != 0) {
                                var_s0->unk8 = (void (*)(__GLcontext *, ...)) temp_s5->unkB8;
                                var_s1 += 8;
                                var_s0 += 8;
                                *var_s1 = temp_s5->unkBC;
                                goto block_62;
                            }
                            goto block_112;
                        }
                        goto block_62;
                    }
                    goto block_62;
                }
block_62:
                if (var_a0 == 0) {
block_112:
                    *var_s0 = __glExpTextureSpan;
                    *var_s1 = __glExpTextureStippledSpan;
                }
                var_s0_2 = var_s0 + 4;
            } else {
                if (temp_s3 & 2) {
                    var_s0->unk0 = __glShadeRGBASpan;
                    var_s1->unk0 = __glShadeRGBASpan;
                } else {
                    var_s0->unk0 = __glFlatRGBASpan;
                    var_s1->unk0 = __glFlatRGBASpan;
                }
                var_s0->unk4 = (void (*)(__GLcontext *, ...)) temp_s5->unkB8;
                var_s0_2 = var_s0 + 8;
                var_s1->unk4 = (void (*)(__GLcontext *, ...)) temp_s5->unkBC;
            }
            goto block_42;
        }
    }
block_6:
    if (temp_v0 != 0) {
        var_v1 = __glShadeRGBASpan;
        if (var_a3 != 0) {
            var_s0->unk0 = __glShadeRGBASpan;
        } else {
            var_v1 = __glFlatRGBASpan;
            var_s0->unk0 = __glFlatRGBASpan;
        }
        var_s1->unk0 = var_v1;
    } else if (var_a3 != 0) {
        var_s0->unk0 = __glShadeCISpan;
        var_s1->unk0 = __glShadeCISpan;
    } else {
        var_s0->unk0 = __glFlatCISpan;
        var_s1->unk0 = __glFlatCISpan;
    }
    var_s1_2 = var_s1 + 4;
    var_s0_3 = var_s0 + 4;
    if (temp_s3 & 8) {
        var_s0->unk4 = __glTextureSpan;
        var_s1->unk4 = __glTextureStippledSpan;
        temp_a2_2 = gc->state.enables.general & 0x20000;
        if (temp_a2_2 != 0) {
            sp50 = temp_a0;
            __glLookUpTextureParams(gc, 0xDE1, temp_a2_2, var_a3);
            sp8 = M2C_ERROR(/* Read from unset register $v0 */);
            __glLookUpTexture(gc, 0xDE1);
            temp_a3_2 = M2C_ERROR(/* Read from unset register $v0 */)->unkE4;
            if (temp_a3_2->unk40 == 0x1907) {
                if (temp_a3_2->unk38 == 0) {
                    var_v0_2 = sp8->unkC;
                    if (var_v0_2 != 0x2702) {

                    } else if (sp8->unk10 == 0x2601) {
                        var_s0->unk4 = __glTextureRGB_L_NML_Span;
                        var_s1->unk4 = __glTextureRGB_L_NML_StippledSpan;
                        var_v0_2 = sp8->unkC;
                    }
                    if (var_v0_2 != 0x2703) {

                    } else if (sp8->unk10 == 0x2601) {
                        var_s0->unk4 = __glTextureRGB_L_LML_Span;
                        var_s1->unk4 = __glTextureRGB_L_LML_StippledSpan;
                        var_v0_2 = sp8->unkC;
                    }
                    if (var_v0_2 == 0x8146) {
                        if (sp8->unk10 == 0x8146) {
                            var_s0->unk4 = __glTextureRGB_F_F_Span;
                            var_s1->unk4 = __glTextureRGB_F_F_StippledSpan;
                            var_v0_2 = sp8->unkC;
                        }
                    }
                    if ((var_v0_2 == 0x2703) && (sp8->unk10 == 0x8146)) {
                        var_s0->unk4 = __glTextureRGB_F_LML_Span;
                        var_s1->unk4 = __glTextureRGB_F_LML_StippledSpan;
                    }
                }
            }
        }
        var_s1_2 += 4;
        var_s0_3 += 4;
    }
    if (temp_s3 & 0x1000) {
        if (gc->state.hints.fog != GL_NICEST) {
            *var_s0_3 = __glFogSpan;
            *var_s1_2 = __glFogStippledSpan;
        } else {
            *var_s0_3 = __glFogSpanSlow;
            *var_s1_2 = __glFogStippledSpanSlow;
        }
        var_s1_2 += 4;
        var_s0_3 += 4;
    }
    if (temp_a0 != 0) {
        var_s1_2 += 4;
        var_s0_3 += 4;
        var_s0_3->unk-4 = __glAlphaTestSpan;
        var_s1_2->unk-4 = __glAlphaTestStippledSpan;
        if (!(temp_s3 & 0x20) || (gc->haveStencil != 0)) {
            if (temp_s3 & 4) {
                if (gc->haveZ != 0) {
                    goto block_23;
                }
                if (gc->state.depth.testFunc != GL_NEVER) {
                    if (!(temp_s3 & 0x40000)) {
                        var_s1_2 += 4;
                        var_s0_3 += 4;
                        var_s0_3->unk-4 = __glDepthTestSpan_asm;
                        var_s1_2->unk-4 = __glDepthTestStippledSpan_asm;
                    } else {
                        var_s1_2 += 4;
                        var_s0_3 += 4;
                        var_s0_3->unk-4 = __glDepthTestOffsetSpan;
                        var_s1_2->unk-4 = __glDepthTestStippledOffsetSpan;
                    }
                    goto block_23;
                }
                gc->procs.table[0x64] = __glNop;
                return;
            }
            goto block_24;
        }
        var_s0_3->unk0 = __glStencilTestSpan_asm;
        var_s1_2->unk0 = __glStencilTestStippledSpan;
        if (temp_s3 & 4) {
            if (temp_s3 & 0x40000) {
                var_s0_3->unk4 = __glDepthTestStencilOffsetSpan;
                var_s1_2->unk4 = __glDepthTestStencilStippledOffsetSpan;
            } else {
                var_s0_3->unk4 = __glDepthTestStencilSpan_asm;
                var_s1_2->unk4 = __glDepthTestStencilStippledSpan_asm;
            }
        } else {
            var_s0_3->unk4 = __glDepthPassSpan;
            var_s1_2->unk4 = __glDepthPassStippledSpan;
        }
        var_s1_2 += 8;
        var_s0_3 += 8;
        goto block_23;
    }
block_23:
block_24:
    if (gc->buffers.doubleStore != 0) {
        var_s4 = 1;
        gc->procs.table[0x62] = (void *) ((s32) ((var_s0_3 - gc) - 0x2F50) >> 2);
    }
    if (temp_s3 & 0x80000) {
        temp_a0_2 = gc->state.raster.blendColor.r;
        if ((bitwise s32) temp_a0_2 != 0xBF1) {
            temp_a3_3 = gc->state.raster.logicOp;
            if (((bitwise s32) temp_a0_2 != 0x8007) && ((bitwise s32) temp_a0_2 != 0x8008) && ((bitwise s32) temp_a0_2 != 0x800A) && ((bitwise s32) temp_a0_2 != 0x800B)) {
                if ((bitwise s32) temp_a0_2 == 0xBF1) {
                    switch (temp_a3_3) {            /* irregular */
                    case GL_SET:
                        break;
                    }
                }
            } else {
                *var_s0_3 = temp_s5->unkC8;
                var_s1_2 += 4;
                var_s0_3 += 4;
                var_s1_2->unk-4 = (s32) temp_s5->unkCC;
            case GL_CLEAR:
            case GL_COPY:
            case GL_COPY_INVERTED:
            }
            if ((bitwise s32) temp_a0_2 != 0x8006) {
                var_s1_2 += 4;
                var_s0_3 += 4;
                var_s0_3->unk-4 = __glBlendSpan;
                var_s1_2->unk-4 = __glBlendStippledSpan;
            }
        }
    }
    *var_s0_3 = temp_s5->unkB8;
    var_s0_2 = var_s0_3 + 4;
    *var_s1_2 = temp_s5->unkBC;
block_42:
    temp_v0_3 = (s32) ((var_s0_2 - gc) - 0x2F50) >> 2;
    gc->procs.table[0x63] = (void *) temp_v0_3;
    if (var_s4 != 0) {
        gc->procs.table[0x64] = __glProcessReplicateSpan;
    } else {
        gc->procs.table[0x62] = (void *) temp_v0_3;
        gc->procs.table[0x64] = __glProcessSpan;
    }
}

void __glExpPickLineProcs(__GLcontext *gc, ...) {
    enum GLenum temp_a3;
    enum GLenum temp_a7;
    enum GLenum temp_a7_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a7_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a7;
    s32 var_t0;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3;
    s32 var_t8;
    u32 temp_a6;
    void (**var_a3_4)();
    void (**var_a4_4)();
    void (*temp_a1)();
    void (*var_a1)();
    void (*var_a1_2)();
    void (*var_a1_3)();
    void (*var_a1_4)();
    void **var_a3;
    void **var_a3_2;
    void **var_a3_3;
    void **var_a4;
    void **var_a4_2;
    void **var_a4_3;

    var_t2 = 0;
    var_t0 = 0;
    var_t1 = 0;
    var_a7 = 0;
    temp_a6 = gc->polygon.shader.modeFlags;
    if (gc->unk6DB8 != 0) {
        var_a1 = __glOtherLStripVertex;
    } else {
        var_a1 = __glOtherLStripVertexFast;
    }
    gc->procs.table[0x1F] = var_a1;
    var_t3 = 0;
    var_t8 = 0;
    temp_a3 = gc->renderMode;
    if (temp_a3 != GL_FEEDBACK) {
        if (temp_a3 != GL_SELECT) {
            var_a4 = &gc->procs.table[0x76];
            temp_a5 = gc->state.enables.general & 0x200;
            var_a3 = &gc->procs.table[0x66];
            if (temp_a5 != 0) {
                gc->procs.unk290 = __glRenderAntiAliasLine;
            } else {
                gc->procs.unk290 = __glRenderAliasLine;
            }
            if (temp_a5 == 0) {
                if (temp_a6 & 0x8000) {
                    gc->procs.table[0x76] = NULL;
                    var_a4 = &gc->procs.table[0x77];
                    var_a3 = &gc->procs.table[0x67];
                    gc->procs.table[0x66] = __glStippleLine;
                }
                if ((temp_a5 == 0) && (gc->state.line.aliasedWidth >= 2)) {
                    var_t3 = 1;
                }
            }
            var_a4_2 = var_a4 + 4;
            var_a3_2 = var_a3 + 4;
            gc->procs.unk228 = (s32) ((var_a3 - gc) - 0x2FD8) >> 2;
            var_a3_2->unk-4 = __glScissorLine;
            var_a4_2->unk-4 = __glScissorStippledLine;
            if (temp_a5 == 0) {
                var_a2 = temp_a6 & 4;
                if (!(temp_a6 & 0x20) || (var_a2 = temp_a6 & 4, (gc->haveStencil != 0))) {
                    if (var_a2 != 0) {
                        if (gc->haveZ != 0) {

                        } else {
                            temp_a7 = gc->state.depth.testFunc;
                            if (temp_a7 != GL_NEVER) {
                                if (temp_a7 != GL_LESS) {
                                    var_a3_2 += 4;
                                    var_a3_2->unk-4 = __glDepthTestLine_asm;
                                } else {
                                    var_a3_2 += 4;
                                    var_a3_2->unk-4 = __glDepthTestLine_LESS_asm;
                                }
                                var_a4_2 += 4;
                                var_a4_2->unk-4 = __glDepthTestStippledLine;
                            } else {
                                var_t1 = 1;
                                gc->procs.unk234 = __glNop;
                            }
                        }
                    }
                } else {
                    var_a3->unk4 = __glStencilTestLine;
                    var_a4->unk4 = (s32) M2C_ERROR(/* Read from unset register $t9 */);
                    if (temp_a6 & 4) {
                        var_a1_2 = __glDepthTestStencilStippledLine;
                        var_a3_2->unk4 = __glDepthTestStencilLine;
                    } else {
                        var_a1_2 = __glDepthPassStippledLine;
                        var_a3_2->unk4 = __glDepthPassLine;
                    }
                    var_a4_2->unk4 = var_a1_2;
                    var_a4_2 += 8;
                    var_a3_2 += 8;
                }
                var_a7 = var_t1;
            }
            if (var_a7 == 0) {
                temp_a7_2 = temp_a6 & 2;
                if (temp_a6 & 1) {
                    var_a1_3 = __glShadeRGBASpan;
                    if (temp_a7_2 != 0) {
                        *var_a3_2 = __glShadeRGBASpan;
                    } else {
                        var_a1_3 = __glFlatRGBASpan;
                        *var_a3_2 = __glFlatRGBASpan;
                    }
                    *var_a4_2 = var_a1_3;
                } else if (temp_a7_2 != 0) {
                    *var_a3_2 = __glShadeCISpan;
                    *var_a4_2 = __glShadeCISpan;
                } else {
                    *var_a3_2 = __glFlatCISpan;
                    *var_a4_2 = __glFlatCISpan;
                }
                var_a4_3 = var_a4_2 + 4;
                var_a3_3 = var_a3_2 + 4;
                if (temp_a6 & 8) {
                    var_a4_3 += 4;
                    var_a3_3 += 4;
                    var_a3_3->unk-4 = __glTextureSpan;
                    var_a4_3->unk-4 = __glTextureStippledSpan;
                }
                if (temp_a6 & 0x1000) {
                    if (gc->state.hints.fog != GL_NICEST) {
                        *var_a3_3 = __glFogSpan;
                        *var_a4_3 = __glFogStippledSpan;
                    } else {
                        *var_a3_3 = __glFogSpanSlow;
                        *var_a4_3 = __glFogStippledSpanSlow;
                    }
                    var_a4_3 += 4;
                    var_a3_3 += 4;
                }
                if (temp_a5 != 0) {
                    var_a4_3 += 4;
                    var_a3_3 += 4;
                    var_a3_3->unk-4 = __glAntiAliasLine;
                    var_a4_3->unk-4 = __glAntiAliasStippledLine;
                    if (temp_a5 != 0) {
                        var_a2_2 = temp_a6 & 4;
                        if (!(temp_a6 & 0x20) || (var_a2_2 = temp_a6 & 4, (gc->haveStencil != 0))) {
                            var_t0 = 0;
                            if (var_a2_2 != 0) {
                                if (gc->haveZ == 0) {
                                    temp_a7_3 = gc->state.depth.testFunc;
                                    if (temp_a7_3 != GL_NEVER) {
                                        if (temp_a7_3 != GL_LESS) {
                                            var_a3_3 += 4;
                                            var_a3_3->unk-4 = __glDepthTestLine_asm;
                                        } else {
                                            var_a3_3 += 4;
                                            var_a3_3->unk-4 = __glDepthTestLine_LESS_asm;
                                        }
                                        var_a4_3 += 4;
                                        var_a4_3->unk-4 = __glDepthTestStippledLine;
                                    } else {
                                        var_t2 = 1;
                                        gc->procs.unk234 = __glNop;
                                    }
                                }
                                goto block_43;
                            }
                        } else {
                            var_a3_3->unk0 = __glStencilTestLine;
                            var_a4_3->unk0 = M2C_ERROR(/* Read from unset register $t9 */);
                            if (temp_a6 & 4) {
                                var_a1_4 = __glDepthTestStencilStippledLine;
                                var_a3_3->unk4 = __glDepthTestStencilLine;
                            } else {
                                var_a1_4 = __glDepthPassStippledLine;
                                var_a3_3->unk4 = __glDepthPassLine;
                            }
                            var_a4_3->unk4 = var_a1_4;
                            var_a4_3 += 8;
                            var_a3_3 += 8;
block_43:
                            var_t0 = var_t2;
                        }
                    }
                }
                if (var_t0 == 0) {
                    if (temp_a6 & 0x200) {
                        var_a4_3 += 4;
                        var_a3_3 += 4;
                        var_a3_3->unk-4 = __glAlphaTestSpan;
                        var_a4_3->unk-4 = __glAlphaTestStippledSpan;
                    }
                    if (gc->buffers.doubleStore != 0) {
                        var_t8 = 1;
                    }
                    temp_a5_2 = var_a3_3 - gc;
                    gc->procs.unk22C = (s32) (temp_a5_2 - 0x2FD8) >> 2;
                    *var_a3_3 = __glExpStoreLine;
                    var_a3_4 = &gc->procs.unk238;
                    *var_a4_3 = __glExpStoreStippledLine;
                    var_a4_4 = &gc->procs.unk23C;
                    temp_a5_3 = (s32) (temp_a5_2 - 0x2FD4) >> 2;
                    gc->procs.unk230 = temp_a5_3;
                    if (var_t3 != 0) {
                        var_a4_4 = &gc->procs.unk244;
                        var_a3_4 = &gc->procs.unk240;
                        gc->procs.unk23C = __glWideStippleLineRep;
                        gc->procs.unk238 = __glWideLineRep;
                    }
                    if (var_t8 != 0) {
                        *var_a3_4 = __glDrawBothLine;
                        *var_a4_4 = __glDrawBothStippledLine;
                        if (var_t3 != 0) {
                            goto block_53;
                        }
                        goto block_78;
                    }
                    *var_a3_4 = __glNop;
                    *var_a4_4 = __glNop;
                    gc->procs.unk22C = gc->procs.unk230;
                    if (var_t3 == 0) {
block_78:
                        gc->procs.unk228 = gc->procs.unk22C;
                        if (var_t3 == 0) {
                            if ((var_t8 == 0) && (temp_a5_3 == 3)) {
                                gc->procs.unk234 = __glProcessLine3NW;
                            } else {
                                goto block_54;
                            }
                        } else {
                            goto block_53;
                        }
                    } else {
block_53:
block_54:
                        gc->procs.unk234 = __glProcessLine;
                    }
                    if ((temp_a6 & 0x2000) && !(temp_a6 & 0x20000)) {
                        temp_a1 = gc->procs.unk290;
                        gc->procs.unk290 = __glRenderFlatFogLine;
                        gc->procs.unk294 = temp_a1;
                    }
                }
            }
        } else {
            gc->procs.unk290 = __glSelectLine;
        }
    } else {
        gc->procs.unk290 = __glFeedbackLine;
    }
    if (gc->state.enables.texture & 0x400) {
        gc->procs.unk298 = __glPolygonOffsetLine;
        return;
    }
    gc->procs.unk298 = gc->procs.unk290;
}

void __glExpPickPixelProcs(__GLcontext *gc, ...) {
    s64 sp10;
    f64 sp8;
    f64 sp0;
    enum GLenum temp_s5;
    f32 temp_f4;
    f32 temp_f5;
    f64 temp_f4_2;
    f64 temp_f4_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_v0;

    temp_s5 = gc->state.enables.general;
    sp10 = (s64) gc->state.enables.texture;
    __glGenericPickPixelProcs();
    temp_f5 = fabsf(gc->state.pixel.unk6C);
    temp_f4 = fabsf(gc->state.pixel.unk68);
    if (temp_s5 & saved_reg_gp->unk-5618) {
        goto block_1;
    }
    var_v0 = temp_s5 & 0x8000;
    if (!(temp_s5 & 0x10) || (var_v0 = temp_s5 & 0x8000, (gc->modes.haveDepthBuffer == 0)) || (var_v0 = temp_s5 & 0x8000, (gc->haveZ != 0))) {
        if ((var_v0 == 0) || (gc->modes.haveStencilBuffer == 0) || (gc->haveStencil != 0)) {
            if (gc->state.raster.drawBuffer != GL_FRONT_AND_BACK) {
                if (!(gc->polygon.shader.modeFlags & 0x80000) || ((bitwise s32) gc->state.raster.blendColor.r == 0xBF1)) {
                    sp0 = (f64) temp_f4;
                    sp8 = (f64) temp_f5;
                    goto block_16;
                }
                goto block_2;
            }
            goto block_1;
        }
        goto block_2;
    }
block_1:
block_2:
    sp0 = (f64) temp_f4;
    sp8 = (f64) temp_f5;
    if (1 != 0) {
        goto block_3;
    }
block_16:
    floorf((f32) sp0);
    if (!((second half of f64) < (f32) sp0)) {
        if (!(floorf((f32) sp8) < (f32) sp8) && (temp_f4_2 = (f64) sp0, !(temp_f4_2 < (second half of f64))) && !(temp_f4_2 > 255.0)) {
            temp_f4_3 = (f64) sp8;
            if (!(temp_f4_3 < (second half of f64)) && !(temp_f4_3 > 255.0) && (*gc->state.pixel.unk7C == 0)) {
                if (temp_s5 & 0x30000000) {
                    var_a0 = 1;
                    if (gc->state.pixel.unk220 == 0) {
                        var_a0 = 1;
                        if (gc->state.pixel.unk294 == 0) {
                            goto block_41;
                        }
                    }
                } else {
block_41:
                    var_a0 = 0;
                }
                if ((var_a0 == 0) && (gc->pixel.unk70 == 0x8421)) {
                    if (gc->pixel.unk79 != 1) {
                        if (!(sp10 & 1) || (var_a0_2 = 1, (gc->unk1328 == 0))) {
                            var_a0_2 = 0;
                        }
                        if (var_a0_2 == 0) {
                            if (!(temp_s5 & 2) || (var_a0_3 = 1, (gc->unk13C8 == 0))) {
                                var_a0_3 = 0;
                            }
                            if (var_a0_3 == 0) {
                                if (!(temp_s5 & 4) || (var_a0_4 = 1, (gc->unk1468 == 0))) {
                                    var_a0_4 = 0;
                                }
                                if (var_a0_4 == 0) {
                                    if ((temp_s5 & 0x80000000) && (gc->unk1508 != 0)) {
                                        goto block_3;
                                    }
                                    gc->procs.unk2EC = __glExpPickCopyPixels;
                                    gc->procs.unk2E8 = __glExpPickDrawPixels;
                                } else {
                                    goto block_4;
                                }
                            } else {
                                goto block_4;
                            }
                        } else {
                            goto block_4;
                        }
                    } else {
                        goto block_3;
                    }
                } else {
                    goto block_4;
                }
            } else {
                goto block_4;
            }
        } else {
block_3:
            goto block_4;
        }
    } else {
block_4:
        gc->procs.unk2EC = __glSlowPickCopyPixels;
        gc->procs.unk2E8 = __glSlowPickDrawPixels;
    }
    gc->procs.unk2F0 = __glExpPickReadPixels;
}

void __glExpPickBitmapProcs(__GLcontext *gc, ...) {
    enum GLenum temp_a3;
    s32 var_v1;

    temp_a3 = gc->state.enables.general;
    if (gc->renderMode == GL_RENDER) {
        if (!(temp_a3 & 0x40) && !(temp_a3 & 0xC03F0000) && !(temp_a3 & 1)) {
            var_v1 = temp_a3 & 0x8000;
            if (!(temp_a3 & 0x10) || (var_v1 = temp_a3 & 0x8000, (gc->modes.haveDepthBuffer == 0)) || (var_v1 = temp_a3 & 0x8000, (gc->haveZ != 0))) {
                if (((var_v1 == 0) || (gc->modes.haveStencilBuffer == 0) || (gc->haveStencil != 0)) && (gc->state.raster.drawBuffer != GL_FRONT_AND_BACK)) {
                    if (gc->polygon.shader.modeFlags & 0x80000) {
                        if ((bitwise s32) gc->state.raster.blendColor.r != 0xBF1) {
                            goto block_13;
                        }
                        /* Duplicate return node #16. Try simplifying control flow for better match */
                        gc->procs.unk2B8 = __glExpRenderBitmap;
                        return;
                    }
                    gc->procs.unk2B8 = __glExpRenderBitmap;
                    return;
                }
                /* Duplicate return node #14. Try simplifying control flow for better match */
                gc->procs.unk2B8 = __glExpSlowRenderBitmap;
                return;
            }
            goto block_13;
        }
        /* Duplicate return node #14. Try simplifying control flow for better match */
        gc->procs.unk2B8 = __glExpSlowRenderBitmap;
        return;
    }
block_13:
    gc->procs.unk2B8 = __glExpSlowRenderBitmap;
}

void __glExpPickAllProcs(__GLcontext *gc, ...) {
    u32 temp_s7;

    temp_s7 = gc->dirtyMask;
    __glGenericPickAllProcs();
    if (temp_s7 & 0x21) {
        __glExpValidateLighting(gc, gc);
    }
    __glExpPickBitmapProcs(gc, gc);
    __glExpPickPrimDispatch(gc, gc);
}
