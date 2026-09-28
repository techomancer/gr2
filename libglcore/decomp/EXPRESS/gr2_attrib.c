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
    /* 0x0DB4 */ char padDB4[0x560];                /* maybe part of constants[7]? */
    /* 0x1314 */ s32 unk1314;                       /* inferred */
    /* 0x1318 */ s32 unk1318;                       /* inferred */
    /* 0x131C */ __GLcolorTableState unk131C;       /* inferred */
    /* 0x15B0 */ char pad15B0[0x1840];              /* maybe part of unk131C[0xA]? */
    /* 0x2DF0 */ u32 validateMask;
    /* 0x2DF4 */ u32 dirtyMask;
    /* 0x2DF8 */ __GLcolorBuffer *drawBuffer;
    /* 0x2DFC */ __GLcolorBuffer *readBuffer;
    /* 0x2E00 */ char pad2E00[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2E10 */ void (*validate)(__GLcontext *);
    /* 0x2E14 */ char pad2E14[4];
    /* 0x2E18 */ ? (*unk2E18)(__GLcontext *, u32, s64, s64, s64); /* inferred */
    /* 0x2E1C */ char pad2E1C[0x14];                /* maybe part of unk2E18[6]? */
    /* 0x2E30 */ __GLprocs procs;
    /* 0x3184 */ __GLattributeMachine attributes;
    /* 0x318C */ char pad318C[0x3C34];              /* maybe part of attributes[0x787]? */
    /* 0x6DC0 */ s32 unk6DC0;                       /* inferred */
    /* 0x6DC4 */ char pad6DC4[4];
    /* 0x6DC8 */ s32 unk6DC8;                       /* inferred */
    /* 0x6DCC */ char pad6DCC[0x610];               /* maybe part of unk6DC8[0x185]? */
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

typedef struct __GLdepthBufferRec {
    /* 0x00 */ __GLbuffer buf;
    /* 0x1C */ char pad1C[0x30];                    /* maybe part of buf[2]? */
    /* 0x4C */ u32 scale;
    /* 0x50 */ s32 unk50;                           /* inferred */
    /* 0x54 */ s32 unk54;                           /* inferred */
    /* 0x58 */ char pad58[0xC];                     /* maybe part of unk54[4]? */
    /* 0x64 */ s32 unk64;                           /* inferred */
    /* 0x68 */ char pad68[4];
    /* 0x6C */ ? (*unk6C)(__GLcontext *, __GLdepthBuffer *, s32); /* inferred */
    /* 0x70 */ char pad70[8];                       /* maybe part of unk6C[3]? */
    /* 0x78 */ void (*clear)(__GLdepthBuffer *, s64, __GLcontext *);
    /* 0x7C */ char pad7C[8];                       /* maybe part of clear[3]? */
} __GLdepthBuffer;                                  /* size = 0x84 */

typedef struct __GLevaluatorStateRec {
    /* 0x00 */ s64 unk0;                            /* inferred */
    /* 0x08 */ s64 unk8;                            /* inferred */
    /* 0x10 */ s64 unk10;                           /* inferred */
    /* 0x18 */ s64 unk18;                           /* inferred */
    /* 0x20 */ s64 unk20;                           /* inferred */
    /* 0x28 */ s64 unk28;                           /* inferred */
} __GLevaluatorState;                               /* size = 0x30 */

typedef struct __GLpixelStateRec {
    /* 0x000 */ char pad0[0x214];
    /* 0x214 */ __GLpixelState *unk214;             /* inferred */
    /* 0x218 */ __GLpixelState **unk218;            /* inferred */
    /* 0x21C */ char pad21C[0x8C];                  /* maybe part of unk218[0x24]? */
} __GLpixelState;                                   /* size = 0x2A8 */

typedef struct __GLprocsRec {
    /* 0x000 */ void (*validate)(__GLcontext *);
    /* 0x004 */ void (*finish)(__GLcontext *);
    /* 0x008 */ void (*flush)(__GLcontext *);
    /* 0x00C */ void (*applyColor)(__GLcontext *);
    /* 0x010 */ void *table[0x80];
    /* 0x210 */ char pad210[0x138];
    /* 0x348 */ ? (*unk348)(__GLcontext *, s32, __GLpolygonStippleState *, s32, void *); /* inferred */
    /* 0x34C */ char pad34C[8];                     /* maybe part of unk348[3]? */
} __GLprocs;                                        /* size = 0x354 */

typedef struct __GLtextureStateRec {
    /* 0x000 */ char pad0[0x7C];
    /* 0x07C */ ? unk7C;                            /* inferred */
    /* 0x07C */ char pad7C[0x7C];
    /* 0x0F8 */ ? unkF8;                            /* inferred */
    /* 0x0F8 */ char padF8[0x7C];
    /* 0x174 */ ? unk174;                           /* inferred */
    /* 0x174 */ char pad174[0x7C];
    /* 0x1F0 */ void *unk1F0;                       /* inferred */
    /* 0x1F4 */ void *unk1F4;                       /* inferred */
    /* 0x1F8 */ f32 unk1F8;                         /* inferred */
    /* 0x1FC */ f32 unk1FC;                         /* inferred */
    /* 0x200 */ f32 unk200;                         /* inferred */
    /* 0x204 */ f32 unk204;                         /* inferred */
    /* 0x208 */ f32 unk208;                         /* inferred */
    /* 0x20C */ f32 unk20C;                         /* inferred */
    /* 0x210 */ f32 unk210;                         /* inferred */
    /* 0x214 */ f32 unk214;                         /* inferred */
} __GLtextureState;                                 /* size = 0x218 */

void __glexpim_AlphaFunc(enum GLenum func, f32 ref) {
    f32 temp_f4;
    f32 var_f13;

    var_f13 = ref;
    if (__glBeginMode != 1) {
        if ((func >= GL_NEVER) && (func < 0x208U)) {
            if (var_f13 < 0.0f) {
                var_f13 = 0.0f;
            }
            temp_f4 = __glCurrentContext->constants.one;
            if (temp_f4 < var_f13) {
                var_f13 = temp_f4;
            }
            __glCurrentContext->state.raster.alphaFunction = func;
            __glCurrentContext->state.raster.alphaReference = var_f13;
            __glBeginMode = 2;
            __glCurrentContext->validateMask |= 1;
            __glCurrentContext->dirtyMask |= 1;
            return;
        }
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_BlendFunc(enum GLenum sfactor, enum GLenum dfactor) {
    s32 var_v0;
    u32 temp_a1;

    if (__glBeginMode != 1) {
        if (sfactor >= GL_DST_COLOR) {
            if (sfactor < GL_ONE_MINUS_DST_COLOR) {
                goto block_3;
            }
            if (sfactor >= GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
                if (sfactor > GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
                    if (sfactor >= GL_ONE_MINUS_CONSTANT_ALPHA_EXT) {
                        if (sfactor <= GL_ONE_MINUS_CONSTANT_ALPHA_EXT) {
                            goto block_3;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    var_v0 = dfactor < GL_DST_ALPHA;
                    if (sfactor != GL_CONSTANT_ALPHA_EXT) {
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    goto block_4;
                }
                goto block_3;
            }
            if (sfactor >= GL_SRC_ALPHA_SATURATE) {
                if (sfactor >= 0x309U) {
                    if (sfactor == GL_CONSTANT_COLOR_EXT) {
                        goto block_3;
                    }
                    /* Duplicate return node #20. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                goto block_3;
            }
            if (sfactor == GL_ONE_MINUS_DST_COLOR) {
                goto block_3;
            }
            /* Duplicate return node #20. Try simplifying control flow for better match */
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        if (sfactor >= GL_ONE_MINUS_SRC_ALPHA) {
            if (sfactor >= GL_DST_ALPHA) {
                if (sfactor >= GL_ONE_MINUS_DST_ALPHA) {
                    if (sfactor < GL_DST_COLOR) {
                        goto block_3;
                    }
                    /* Duplicate return node #20. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                if (sfactor == GL_DST_ALPHA) {
                    goto block_3;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            goto block_3;
        }
        if ((sfactor != GL_ZERO) && (sfactor >= GL_LINE_LOOP)) {
            var_v0 = dfactor < GL_DST_ALPHA;
            if (sfactor != GL_SRC_ALPHA) {
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            goto block_4;
        }
block_3:
        var_v0 = dfactor < GL_DST_ALPHA;
block_4:
        if (var_v0 == 0) {
            if (dfactor < GL_ONE_MINUS_DST_ALPHA) {
                /* Duplicate return node #6. Try simplifying control flow for better match */
                __glCurrentContext->state.raster.blendDst = dfactor;
                __glCurrentContext->state.raster.blendSrc = sfactor;
                __glBeginMode = 2;
                temp_a1 = __glCurrentContext->dirtyMask | 1;
                __glCurrentContext->dirtyMask = temp_a1;
                __glExpPassBlendFunc(__glCurrentContext, __glCurrentContext, temp_a1, 2, sfactor, __glCurrentContext);
                return;
            }
            if (dfactor >= GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
                if (dfactor > GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
                    if (dfactor >= GL_ONE_MINUS_CONSTANT_ALPHA_EXT) {
                        if (dfactor <= GL_ONE_MINUS_CONSTANT_ALPHA_EXT) {
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glCurrentContext->state.raster.blendDst = dfactor;
                            __glCurrentContext->state.raster.blendSrc = sfactor;
                            __glBeginMode = 2;
                            temp_a1 = __glCurrentContext->dirtyMask | 1;
                            __glCurrentContext->dirtyMask = temp_a1;
                            __glExpPassBlendFunc(__glCurrentContext, __glCurrentContext, temp_a1, 2, sfactor, __glCurrentContext);
                            return;
                        }
                        /* Duplicate return node #29. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    if (dfactor != GL_CONSTANT_ALPHA_EXT) {
                        /* Duplicate return node #29. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    __glCurrentContext->state.raster.blendDst = dfactor;
                    __glCurrentContext->state.raster.blendSrc = sfactor;
                    __glBeginMode = 2;
                    temp_a1 = __glCurrentContext->dirtyMask | 1;
                    __glCurrentContext->dirtyMask = temp_a1;
                    __glExpPassBlendFunc(__glCurrentContext, __glCurrentContext, temp_a1, 2, sfactor, __glCurrentContext);
                    return;
                }
                /* Duplicate return node #6. Try simplifying control flow for better match */
                __glCurrentContext->state.raster.blendDst = dfactor;
                __glCurrentContext->state.raster.blendSrc = sfactor;
                __glBeginMode = 2;
                temp_a1 = __glCurrentContext->dirtyMask | 1;
                __glCurrentContext->dirtyMask = temp_a1;
                __glExpPassBlendFunc(__glCurrentContext, __glCurrentContext, temp_a1, 2, sfactor, __glCurrentContext);
                return;
            }
            if (dfactor >= GL_CONSTANT_COLOR_EXT) {
                if (dfactor <= GL_CONSTANT_COLOR_EXT) {
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    __glCurrentContext->state.raster.blendDst = dfactor;
                    __glCurrentContext->state.raster.blendSrc = sfactor;
                    __glBeginMode = 2;
                    temp_a1 = __glCurrentContext->dirtyMask | 1;
                    __glCurrentContext->dirtyMask = temp_a1;
                    __glExpPassBlendFunc(__glCurrentContext, __glCurrentContext, temp_a1, 2, sfactor, __glCurrentContext);
                    return;
                }
                /* Duplicate return node #29. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            if (dfactor == GL_ONE_MINUS_DST_ALPHA) {
                /* Duplicate return node #6. Try simplifying control flow for better match */
                __glCurrentContext->state.raster.blendDst = dfactor;
                __glCurrentContext->state.raster.blendSrc = sfactor;
                __glBeginMode = 2;
                temp_a1 = __glCurrentContext->dirtyMask | 1;
                __glCurrentContext->dirtyMask = temp_a1;
                __glExpPassBlendFunc(__glCurrentContext, __glCurrentContext, temp_a1, 2, sfactor, __glCurrentContext);
                return;
            }
            /* Duplicate return node #29. Try simplifying control flow for better match */
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        if (dfactor >= GL_ONE_MINUS_SRC_COLOR) {
            if (dfactor >= GL_SRC_ALPHA) {
                if (dfactor >= GL_ONE_MINUS_SRC_ALPHA) {
                    if (dfactor < GL_DST_ALPHA) {
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        __glCurrentContext->state.raster.blendDst = dfactor;
                        __glCurrentContext->state.raster.blendSrc = sfactor;
                        __glBeginMode = 2;
                        temp_a1 = __glCurrentContext->dirtyMask | 1;
                        __glCurrentContext->dirtyMask = temp_a1;
                        __glExpPassBlendFunc(__glCurrentContext, __glCurrentContext, temp_a1, 2, sfactor, __glCurrentContext);
                        return;
                    }
                    /* Duplicate return node #29. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                if (dfactor == GL_SRC_ALPHA) {
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    __glCurrentContext->state.raster.blendDst = dfactor;
                    __glCurrentContext->state.raster.blendSrc = sfactor;
                    __glBeginMode = 2;
                    temp_a1 = __glCurrentContext->dirtyMask | 1;
                    __glCurrentContext->dirtyMask = temp_a1;
                    __glExpPassBlendFunc(__glCurrentContext, __glCurrentContext, temp_a1, 2, sfactor, __glCurrentContext);
                    return;
                }
                /* Duplicate return node #29. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            /* Duplicate return node #6. Try simplifying control flow for better match */
            __glCurrentContext->state.raster.blendDst = dfactor;
            __glCurrentContext->state.raster.blendSrc = sfactor;
            __glBeginMode = 2;
            temp_a1 = __glCurrentContext->dirtyMask | 1;
            __glCurrentContext->dirtyMask = temp_a1;
            __glExpPassBlendFunc(__glCurrentContext, __glCurrentContext, temp_a1, 2, sfactor, __glCurrentContext);
            return;
        }
        if ((dfactor != GL_ZERO) && (dfactor >= GL_LINE_LOOP) && (dfactor != GL_SRC_COLOR)) {
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        __glCurrentContext->state.raster.blendDst = dfactor;
        __glCurrentContext->state.raster.blendSrc = sfactor;
        __glBeginMode = 2;
        temp_a1 = __glCurrentContext->dirtyMask | 1;
        __glCurrentContext->dirtyMask = temp_a1;
        __glExpPassBlendFunc(__glCurrentContext, __glCurrentContext, temp_a1, 2, sfactor, __glCurrentContext);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_BlendEquationEXT(enum GLenum mode) {
    s64 sp0;
    s32 temp_a3;

    sp0 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((mode != GL_INDEX_LOGIC_OP) && (mode != GL_FUNC_ADD_EXT) && (mode != GL_MIN_EXT) && (mode != GL_MAX_EXT) && (mode != GL_FUNC_SUBTRACT_EXT) && (mode != GL_FUNC_REVERSE_SUBTRACT_EXT)) {
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        sp0->unk6C8 = mode;
        temp_a3 = sp0->unk76E8 | 0x80000;
        sp0->unk76E8 = temp_a3;
        __glBeginMode = 2;
        sp0->unk2DF4 = (s32) (sp0->unk2DF4 | 1);
        __glExpPassBlendFunc((__GLcontext *) sp0, sp0, sp0, mode, temp_a3, 0x80000);
        __glExpPassLogicOp((__GLcontext *) sp0, sp0);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_ClearAccum(f32 red, f32 green, f32 blue, f32 alpha) {
    f32 temp_f4;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;

    var_f12 = red;
    var_f13 = green;
    var_f14 = blue;
    var_f15 = alpha;
    if (__glBeginMode != 1) {
        temp_f4 = __glCurrentContext->constants.one;
        if (var_f12 < -1.0f) {
            var_f12 = -1.0f;
        }
        if (temp_f4 < var_f12) {
            var_f12 = temp_f4;
        }
        if (var_f13 < -1.0f) {
            var_f13 = -1.0f;
        }
        if (temp_f4 < var_f13) {
            var_f13 = temp_f4;
        }
        if (var_f14 < -1.0f) {
            var_f14 = -1.0f;
        }
        if (temp_f4 < var_f14) {
            var_f14 = temp_f4;
        }
        if (var_f15 < -1.0f) {
            var_f15 = -1.0f;
        }
        if (temp_f4 < var_f15) {
            var_f15 = temp_f4;
        }
        __glCurrentContext->state.accum.clear.r = var_f12;
        __glCurrentContext->state.accum.clear.g = var_f13;
        __glCurrentContext->state.accum.clear.b = var_f14;
        __glCurrentContext->state.accum.clear.a = var_f15;
        __glBeginMode = 2;
        __glCurrentContext->dirtyMask |= 1;
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_ClearColor(f32 red, f32 green, f32 blue, f32 alpha) {
    f32 temp_f4;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;

    var_f12 = red;
    var_f13 = green;
    var_f14 = blue;
    var_f15 = alpha;
    if (__glBeginMode != 1) {
        temp_f4 = __glCurrentContext->constants.one;
        if (var_f12 < 0.0f) {
            var_f12 = 0.0f;
        }
        if (temp_f4 < var_f12) {
            var_f12 = temp_f4;
        }
        if (var_f13 < 0.0f) {
            var_f13 = 0.0f;
        }
        if (temp_f4 < var_f13) {
            var_f13 = temp_f4;
        }
        if (var_f14 < 0.0f) {
            var_f14 = 0.0f;
        }
        if (temp_f4 < var_f14) {
            var_f14 = temp_f4;
        }
        if (var_f15 < 0.0f) {
            var_f15 = 0.0f;
        }
        if (temp_f4 < var_f15) {
            var_f15 = temp_f4;
        }
        __glCurrentContext->state.raster.clear.a = var_f15;
        __glCurrentContext->state.raster.clear.b = var_f14;
        __glCurrentContext->state.raster.clear.g = var_f13;
        __glCurrentContext->state.raster.clear.r = var_f12;
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_ClearDepth(f64 depth) {
    f64 var_f12;

    var_f12 = depth;
    if (__glBeginMode != 1) {
        if (var_f12 < GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) {
            var_f12 = GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U);
        }
        if (var_f12 > 1.0) {
            var_f12 = 1.0;
        }
        __glCurrentContext->state.depth.clear = var_f12;
        __glBeginMode = 2;
        __glCurrentContext->dirtyMask |= 1;
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_ClearIndex(f32 c) {
    if (__glBeginMode != 1) {
        __glCurrentContext->state.raster.clearIndex = (f32) ((s32) (c * 16.0f) & ((__glCurrentContext->frontBuffer.redShift * 0x10) | 0xF)) * 0.0625f;
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_ClearStencil(s32 s) {
    if (__glBeginMode != 1) {
        __glCurrentContext->state.stencil.clear = ((1 << __glCurrentContext->modes.stencilBits) - 1) & s;
        __glBeginMode = 2;
        __glCurrentContext->dirtyMask |= 1;
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_ColorMask(u8 red, u8 green, u8 blue, u8 alpha) {
    u32 temp_a1;

    if (__glBeginMode != 1) {
        __glCurrentContext->state.raster.aMask = alpha;
        __glCurrentContext->state.raster.bMask = blue;
        __glCurrentContext->state.raster.gMask = green;
        __glCurrentContext->state.raster.rMask = red;
        __glBeginMode = 2;
        temp_a1 = __glCurrentContext->dirtyMask | 1;
        __glCurrentContext->dirtyMask = temp_a1;
        __glExpPassColorMask(__glCurrentContext, __glCurrentContext, temp_a1, 2, red, __glCurrentContext);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_ColorMaterial(enum GLenum face, enum GLenum mode) {
    __GLcontext *temp_s0;
    u32 temp_a2;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        switch (face) {                             /* irregular */
        default:
            __glSetError(GL_INVALID_ENUM);
            return;
        case GL_FRONT:
        case GL_BACK:
            /* fallthrough */
        case GL_FRONT_AND_BACK:
            if ((mode != GL_AMBIENT) && (mode != GL_DIFFUSE) && (mode != GL_SPECULAR) && (mode != GL_EMISSION) && (mode != GL_AMBIENT_AND_DIFFUSE)) {
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            temp_s0->state.light.colorMaterialParam = mode;
            temp_a2 = temp_s0->state.enables.general & 0x80;
            temp_s0->state.light.colorMaterialFace = face;
            if (temp_a2 != 0) {
                temp_s0->unk2E18(temp_s0, temp_a2);
                ((? (*)(__GLcontext *)) temp_s0->procs.table[0x2A])(temp_s0);
            }
            __glExpValidateColorMaterial(temp_s0, temp_s0);
            return;
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glexpim_CullFace(enum GLenum mode) {
    if (__glBeginMode != 1) {
        if ((mode != GL_FRONT) && (mode != GL_BACK) && (mode != GL_FRONT_AND_BACK)) {
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        __glCurrentContext->state.polygon.cull = mode;
        __glBeginMode = 2;
        __glCurrentContext->dirtyMask |= 4;
        __glExpPassCullFace(__glCurrentContext, __glCurrentContext, 0x404, mode, __glCurrentContext);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_DepthFunc(enum GLenum func) {
    s64 sp18;
    __GLcontext *temp_s1;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_s1 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((func >= GL_NEVER) && (func < 0x208U)) {
            if (temp_s1->haveZ == 0) {
                if (temp_s1->depthBuffer.unk64 != 0xFF000000) {

                } else if ((func != GL_GREATER) && (func != GL_GEQUAL)) {

                } else if (temp_s1->state.enables.general & 0x10) {
                    if (temp_s1->modes.haveDepthBuffer != 0) {
                        temp_s1->depthBuffer.unk64 = 0x01000000;
                        temp_s1->depthBuffer.unk6C(temp_s1, &temp_s1->depthBuffer, temp_s1->depthBuffer.unk50);
                        var_ra = sp18;
                    }
                }
                sp18 = var_ra;
                if ((temp_s1->depthBuffer.unk64 == 0x01000000) && ((func == GL_LESS) || (sp18 = var_ra, (func == GL_LEQUAL)))) {
                    sp18 = var_ra;
                    if (temp_s1->state.enables.general & 0x10) {
                        sp18 = var_ra;
                        if (temp_s1->modes.haveDepthBuffer != 0) {
                            temp_s1->depthBuffer.unk64 = 0xFF000000;
                            temp_s1->depthBuffer.unk6C(temp_s1, &temp_s1->depthBuffer, temp_s1->depthBuffer.unk50);
                        }
                    }
                }
            }
            temp_s1->state.depth.testFunc = func;
            __glBeginMode = 2;
            temp_s1->dirtyMask |= 0x80;
            __glExpPassDepthFunc(temp_s1, temp_s1);
            return;
        }
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_DepthMask(u8 flag) {
    u32 temp_a1;

    if (__glBeginMode != 1) {
        __glCurrentContext->state.depth.writeEnable = flag;
        __glBeginMode = 2;
        temp_a1 = __glCurrentContext->dirtyMask | 0x80;
        __glCurrentContext->dirtyMask = temp_a1;
        __glExpPassDepthMask(__glCurrentContext, __glCurrentContext, temp_a1, __glCurrentContext, flag, 2);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_DrawBuffer(enum GLenum buf) {
    enum GLenum var_v1;
    u32 temp_a1;

    if (__glBeginMode != 1) {
        if (buf >= GL_LEFT) {
            if (buf < GL_RIGHT) {
                goto block_3;
            }
            if (buf >= GL_AUX1) {
                if (buf < GL_AUX2) {
                    goto block_18;
                }
                if (buf >= GL_AUX3) {
                    if (buf < 0x40DU) {
                        goto block_18;
                    }
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                if (buf == GL_AUX2) {
                    goto block_18;
                }
                /* Duplicate return node #15. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            if (buf >= GL_FRONT_AND_BACK) {
                if (buf >= GL_AUX0) {
                    if (buf == GL_AUX0) {
block_18:
                        if ((buf - 0x409) < __glCurrentContext->modes.numAuxBuffers) {
                            __glCurrentContext->state.raster.drawBuffer = buf;
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glCurrentContext->state.raster.drawBufferReturn = buf;
                            __glBeginMode = 2;
                            temp_a1 = __glCurrentContext->dirtyMask | 1;
                            __glCurrentContext->dirtyMask = temp_a1;
                            __glExpPassDrawBuffer(__glCurrentContext, __glCurrentContext, temp_a1, buf, __glCurrentContext, 2);
                            return;
                        }
                        /* Duplicate return node #30. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_OPERATION);
                        return;
                    }
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
block_3:
                var_v1 = GL_FRONT_AND_BACK;
                if (__glCurrentContext->modes.doubleBufferMode != 0) {

                } else {
                    var_v1 = GL_FRONT;
                }
                goto block_5;
            }
            if (buf == GL_RIGHT) {
                /* Duplicate return node #30. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_OPERATION);
                return;
            }
            /* Duplicate return node #15. Try simplifying control flow for better match */
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        if (buf >= GL_BACK_LEFT) {
            if (buf >= GL_BACK_RIGHT) {
                if (buf >= GL_FRONT) {
                    if (buf < GL_BACK) {
                        goto block_11;
                    }
                    if (buf == GL_BACK) {
                        goto block_21;
                    }
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                if (buf == GL_BACK_RIGHT) {
                    /* Duplicate return node #30. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_OPERATION);
                    return;
                }
                /* Duplicate return node #15. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
block_21:
            var_v1 = GL_BACK;
            if (__glCurrentContext->modes.doubleBufferMode != 0) {
block_5:
                __glCurrentContext->state.raster.drawBuffer = var_v1;
                /* Duplicate return node #6. Try simplifying control flow for better match */
                __glCurrentContext->state.raster.drawBufferReturn = buf;
                __glBeginMode = 2;
                temp_a1 = __glCurrentContext->dirtyMask | 1;
                __glCurrentContext->dirtyMask = temp_a1;
                __glExpPassDrawBuffer(__glCurrentContext, __glCurrentContext, temp_a1, buf, __glCurrentContext, 2);
                return;
            }
            /* Duplicate return node #30. Try simplifying control flow for better match */
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        if (buf >= GL_FRONT_LEFT) {
            if (buf >= GL_FRONT_RIGHT) {
                if (buf != GL_FRONT_RIGHT) {
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                __glSetError(GL_INVALID_OPERATION);
                return;
            }
block_11:
            __glCurrentContext->state.raster.drawBuffer = GL_FRONT;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            __glCurrentContext->state.raster.drawBufferReturn = buf;
            __glBeginMode = 2;
            temp_a1 = __glCurrentContext->dirtyMask | 1;
            __glCurrentContext->dirtyMask = temp_a1;
            __glExpPassDrawBuffer(__glCurrentContext, __glCurrentContext, temp_a1, buf, __glCurrentContext, 2);
            return;
        }
        if (buf == GL_ZERO) {
            __glCurrentContext->state.raster.drawBuffer = GL_ZERO;
            __glCurrentContext->state.raster.drawBufferReturn = buf;
            __glBeginMode = 2;
            temp_a1 = __glCurrentContext->dirtyMask | 1;
            __glCurrentContext->dirtyMask = temp_a1;
            __glExpPassDrawBuffer(__glCurrentContext, __glCurrentContext, temp_a1, buf, __glCurrentContext, 2);
            return;
        }
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_Fogfv(enum GLenum pname, f32 *params) {
    s64 sp10;
    __GLcontext *temp_s0;
    enum GLenum temp_a4;
    enum GLenum var_a0;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f5;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        switch (pname) {                            /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(GL_INVALID_ENUM);
            return;
        case GL_FOG_MODE:                           /* switch 1 */
            temp_a4 = (s64) *params << 0;
            switch (temp_a4) {                      /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(GL_INVALID_ENUM);
                return;
            case GL_EXP:                            /* switch 2 */
                /* fallthrough */
            case GL_EXP2:                           /* switch 2 */
            case GL_LINEAR:                         /* switch 2 */
                var_a0 = temp_a4;
                temp_s0->state.fog.mode = temp_a4;
block_14:
                if (var_a0 == GL_LINEAR) {
                    temp_f4 = temp_s0->state.fog.end;
                    temp_f5 = temp_s0->state.fog.start;
                    if (temp_f5 != temp_f4) {
                        sp10 = var_ra;
                        temp_s0->state.fog.oneOverEMinusS = temp_s0->constants.one / (temp_f4 - temp_f5);
                    } else {
                        sp10 = var_ra;
                        temp_s0->state.fog.oneOverEMinusS = 0.0f;
                    }
                }
                __glBeginMode = 2;
                sp10 = var_ra;
                temp_s0->dirtyMask |= 1;
                __glExpPassFog(temp_s0, temp_s0, 0x2601);
                return;
            }
            break;
        case GL_FOG_DENSITY:                        /* switch 1 */
            temp_f4_2 = *params;
            if (!(temp_f4_2 < 0.0f)) {
                var_a0 = temp_s0->state.fog.mode;
                temp_s0->state.fog.density = temp_f4_2;
                goto block_14;
            }
            __glSetError(GL_INVALID_VALUE);
            return;
        case GL_FOG_END:                            /* switch 1 */
            var_a0 = temp_s0->state.fog.mode;
            temp_s0->state.fog.end = *params;
            goto block_14;
        case GL_FOG_START:                          /* switch 1 */
            var_a0 = temp_s0->state.fog.mode;
            temp_s0->state.fog.start = *params;
            goto block_14;
        case GL_FOG_INDEX:                          /* switch 1 */
            var_a0 = temp_s0->state.fog.mode;
            temp_s0->state.fog.index = (f32) ((s32) *params & ((1 << temp_s0->modes.indexBits) - 1));
            goto block_14;
        case GL_FOG_COLOR:                          /* switch 1 */
            __glClampAndScaleColorf(temp_s0, &temp_s0->state.fog.color, params);
            var_a0 = temp_s0->state.fog.mode;
            var_ra = sp10;
            goto block_14;
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glexpim_Fogf(enum GLenum pname, f32 param) {
    f32 sp18;

    sp18 = param;
    if ((pname != GL_FOG_INDEX) && (pname != GL_FOG_DENSITY) && (pname != GL_FOG_START) && (pname != GL_FOG_END) && (pname != GL_FOG_MODE)) {
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glexpim_Fogfv(pname, &sp18);
}

void __glexpim_Fogiv(enum GLenum pname, enum GLenum *params) {
    s64 sp10;
    __GLcontext *temp_s0;
    enum GLenum temp_a1;
    enum GLenum temp_a1_2;
    enum GLenum var_a0;
    f32 temp_f4;
    f32 temp_f5;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        switch (pname) {                            /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(GL_INVALID_ENUM);
            return;
        case GL_FOG_MODE:                           /* switch 1 */
            temp_a1 = *params;
            switch (temp_a1) {                      /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(GL_INVALID_ENUM);
                return;
            case GL_EXP:                            /* switch 2 */
                /* fallthrough */
            case GL_EXP2:                           /* switch 2 */
            case GL_LINEAR:                         /* switch 2 */
                var_a0 = temp_a1;
                temp_s0->state.fog.mode = temp_a1;
block_14:
                if (var_a0 == GL_LINEAR) {
                    temp_f5 = temp_s0->state.fog.end;
                    temp_f4 = temp_s0->state.fog.start;
                    if (temp_f4 != temp_f5) {
                        sp10 = var_ra;
                        temp_s0->state.fog.oneOverEMinusS = temp_s0->constants.one / (temp_f5 - temp_f4);
                    } else {
                        sp10 = var_ra;
                        temp_s0->state.fog.oneOverEMinusS = 0.0f;
                    }
                }
                __glBeginMode = 2;
                sp10 = var_ra;
                temp_s0->dirtyMask |= 1;
                __glExpPassFog(temp_s0, temp_s0);
                return;
            }
            break;
        case GL_FOG_DENSITY:                        /* switch 1 */
            temp_a1_2 = *params;
            if (temp_a1_2 >= GL_ZERO) {
                var_a0 = temp_s0->state.fog.mode;
                temp_s0->state.fog.density = (f32) temp_a1_2;
                goto block_14;
            }
            __glSetError(GL_INVALID_VALUE);
            return;
        case GL_FOG_END:                            /* switch 1 */
            var_a0 = temp_s0->state.fog.mode;
            temp_s0->state.fog.end = (f32) *params;
            goto block_14;
        case GL_FOG_START:                          /* switch 1 */
            var_a0 = temp_s0->state.fog.mode;
            temp_s0->state.fog.start = (f32) *params;
            goto block_14;
        case GL_FOG_INDEX:                          /* switch 1 */
            var_a0 = temp_s0->state.fog.mode;
            temp_s0->state.fog.index = (f32) (*params & ((1 << temp_s0->modes.indexBits) - 1));
            goto block_14;
        case GL_FOG_COLOR:                          /* switch 1 */
            __glClampAndScaleColori(temp_s0, &temp_s0->state.fog.color, params, 0xB62);
            var_a0 = temp_s0->state.fog.mode;
            var_ra = sp10;
            goto block_14;
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glexpim_Fogi(enum GLenum pname, enum GLenum param) {
    enum GLenum sp1C;

    sp1C = param;
    if ((pname != GL_FOG_INDEX) && (pname != GL_FOG_DENSITY) && (pname != GL_FOG_START) && (pname != GL_FOG_END) && (pname != GL_FOG_MODE)) {
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glexpim_Fogiv(pname, &sp1C);
}

void __glexpim_FrontFace(enum GLenum mode) {
    if (__glBeginMode != 1) {
        if ((mode != GL_CW) && (mode != GL_CCW)) {
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        __glCurrentContext->state.polygon.frontFaceDirection = mode;
        __glBeginMode = 2;
        __glCurrentContext->dirtyMask |= 4;
        __glExpPassFrontFace(__glCurrentContext, __glCurrentContext, 0x900, mode, __glCurrentContext);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_Hint(enum GLenum target, enum GLenum mode) {
    u32 temp_a1;

    if (__glBeginMode != 1) {
        switch (mode) {                             /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(GL_INVALID_ENUM);
            return;
        case GL_DONT_CARE:                          /* switch 1 */
        case GL_FASTEST:                            /* switch 1 */
            /* fallthrough */
        case GL_NICEST:                             /* switch 1 */
            switch (target) {                       /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(GL_INVALID_ENUM);
                return;
            case GL_FOG_HINT:                       /* switch 2 */
                __glCurrentContext->state.hints.fog = mode;
                __glBeginMode = 2;
                __glCurrentContext->dirtyMask |= 1;
                return;
            case GL_PERSPECTIVE_CORRECTION_HINT:    /* switch 2 */
                __glCurrentContext->state.hints.perspectiveCorrection = mode;
                /* Duplicate return node #13. Try simplifying control flow for better match */
                __glBeginMode = 2;
                __glCurrentContext->dirtyMask |= 1;
                return;
            case GL_POLYGON_SMOOTH_HINT:            /* switch 2 */
                __glCurrentContext->state.hints.polygonSmooth = mode;
                __glBeginMode = 2;
                __glCurrentContext->dirtyMask |= 4;
                return;
            case GL_POINT_SMOOTH_HINT:              /* switch 2 */
                __glCurrentContext->state.hints.pointSmooth = mode;
                __glBeginMode = 2;
                __glCurrentContext->dirtyMask |= 8;
                __glExpEnablePointSmooth(__glCurrentContext, __glCurrentContext, 0xC51, __glCurrentContext);
                return;
            case GL_LINE_SMOOTH_HINT:               /* switch 2 */
                __glCurrentContext->state.hints.lineSmooth = mode;
                __glBeginMode = 2;
                temp_a1 = __glCurrentContext->dirtyMask | 2;
                __glCurrentContext->dirtyMask = temp_a1;
                __glExpEnableLineSmooth(__glCurrentContext, __glCurrentContext, temp_a1, 2, __glCurrentContext);
                return;
            }
            break;
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glexpim_IndexMask(u32 mask) {
    s32 temp_a5;
    u32 temp_a1;

    if (__glBeginMode != 1) {
        temp_a5 = __glCurrentContext->frontBuffer.redShift & mask;
        __glCurrentContext->state.raster.writeMask = temp_a5;
        __glBeginMode = 2;
        temp_a1 = __glCurrentContext->dirtyMask | 1;
        __glCurrentContext->dirtyMask = temp_a1;
        __glExpPassIndexMask(__glCurrentContext, __glCurrentContext, temp_a1, __glCurrentContext, mask, 2, temp_a5);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glExpTransformLightDirection(__GLcontext *gc, __GLlightSourceState *ls) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    __GLtransform *temp_s2;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 var_f4;
    s32 temp_a2;
    s32 temp_lo;
    s64 temp_a0;

    temp_lo = (s32) (ls - gc->state.light.source) / 116;
    temp_f8 = ls->direction.x;
    sp0 = temp_f8;
    temp_f6 = ls->direction.y;
    sp4 = temp_f6;
    temp_f5 = ls->direction.z;
    sp8 = temp_f5;
    temp_f7 = ls->position.w;
    M2C_TRAP_IF(0x74 == 0);
    sp20 = (s64) ls;
    if (temp_f7 != 0.0f) {
        var_f4 = -((sp20->unk30 * temp_f8) + (sp20->unk34 * temp_f6) + (sp20->unk38 * temp_f5)) / temp_f7;
    } else {
        var_f4 = 0.0f;
    }
    spC = var_f4;
    temp_s2 = gc->transform.modelView;
    sp18 = (s64) temp_lo;
    if (temp_s2->updateInverse != 0) {
        ((? (*)(__GLcontext *, __GLtransform *, s64, s32)) gc->procs.table[0x11])(gc, temp_s2, sp20, temp_lo);
    }
    temp_a0 = sp20 + 0x50;
    sp10 = temp_a0;
    temp_s2->inverseTranspose.xf4((__GLcoord *) temp_a0, sp, &temp_s2->inverseTranspose);
    temp_a2 = sp18 * 0xE0;
    ((? (*)(s32, s64, s32, s64)) gc->procs.table[0x12])(gc->unk6DC8 + temp_a2 + 0x84, sp10, temp_a2, sp18);
}

void __glexpim_Lightfv(enum GLenum light, enum GLenum pname, f32 *params) {
    u64 sp18;
    __GLcolor *temp_a6;
    __GLcontext *temp_s0;
    __GLtransform *temp_a2_2;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    s32 var_a0;
    u64 temp_a2;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a2 = light - 0x4000;
        if (temp_a2 < (u32) temp_s0->constants.numberOfLights) {
            temp_a6 = &temp_s0->state.light.source[light] - 0x1D0000;
            switch (pname) {
            case GL_AMBIENT:
                sp18 = temp_a2;
                __glScaleColorf(temp_s0, temp_a6, params);
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 0x20;
                __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                return;
            case GL_QUADRATIC_ATTENUATION:
                temp_f4 = params->unk0;
                if (!(temp_f4 < 0.0f)) {
                    temp_a6->unk70 = temp_f4;
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                    return;
                }
                __glSetError(GL_INVALID_VALUE);
                return;
            case GL_DIFFUSE:
                sp18 = temp_a2;
                __glScaleColorf(temp_s0, temp_a6 + 0x10, params);
                /* Duplicate return node #8. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 0x20;
                __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                return;
            case GL_SPECULAR:
                sp18 = temp_a2;
                __glScaleColorf(temp_s0, temp_a6 + 0x20, params);
                /* Duplicate return node #8. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 0x20;
                __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                return;
            case GL_POSITION:
                temp_a6->unk30 = (f32) params->unk0;
                temp_a6->unk34 = (f32) params->unk4;
                temp_a6->unk38 = (f32) params->unk8;
                temp_a6->unk3C = (f32) params->unkC;
                sp18 = temp_a2;
                temp_a2_2 = temp_s0->transform.modelView;
                temp_a2_2->matrix.xf4((__GLcoord *) (temp_a6 + 0x40), &(temp_a6 + 0x30)->r, &temp_a2_2->matrix);
                /* Duplicate return node #8. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 0x20;
                __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                return;
            case GL_SPOT_DIRECTION:
                sp18 = temp_a2;
                temp_a6->unk50 = (f32) params->unk0;
                temp_a6->unk54 = (f32) params->unk4;
                temp_a6->unk5C = 1.0f;
                temp_a6->unk58 = (f32) params->unk8;
                __glExpTransformLightDirection(temp_s0, (__GLlightSourceState *) temp_a6);
                /* Duplicate return node #8. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 0x20;
                __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                return;
            case GL_SPOT_EXPONENT:
                temp_f4_2 = params->unk0;
                if (!(temp_f4_2 < 0.0f) && !(temp_f4_2 > 128.0f)) {
                    temp_a6->unk60 = temp_f4_2;
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                    return;
                }
                /* Duplicate return node #27. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_VALUE);
                return;
            case GL_SPOT_CUTOFF:
                temp_f4_3 = params->unk0;
                if (temp_f4_3 != 180.0f) {
                    if ((temp_f4_3 < 0.0f) || (var_a0 = 0, (temp_f4_3 > 90.0f))) {
                        var_a0 = 1;
                    }
                } else {
                    var_a0 = 0;
                }
                if (var_a0 == 0) {
                    temp_a6->unk64 = temp_f4_3;
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                    return;
                }
                /* Duplicate return node #27. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_VALUE);
                return;
            case GL_CONSTANT_ATTENUATION:
                temp_f4_4 = params->unk0;
                if (!(temp_f4_4 < 0.0f)) {
                    temp_a6->unk68 = temp_f4_4;
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                    return;
                }
                /* Duplicate return node #27. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_VALUE);
                return;
            case GL_LINEAR_ATTENUATION:
                temp_f4_5 = params->unk0;
                if (!(temp_f4_5 < 0.0f)) {
                    temp_a6->unk6C = temp_f4_5;
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                    return;
                }
                /* Duplicate return node #27. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_VALUE);
                return;
            }
        } else {
        default:
            __glSetError(GL_INVALID_ENUM);
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glexpim_Lightf(enum GLenum light, enum GLenum pname, f32 param) {
    f32 sp20;

    sp20 = param;
    if ((pname != GL_SPOT_EXPONENT) && (pname != GL_SPOT_CUTOFF) && (pname != GL_CONSTANT_ATTENUATION) && (pname != GL_LINEAR_ATTENUATION) && (pname != GL_QUADRATIC_ATTENUATION)) {
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glexpim_Lightfv(light, pname, &sp20);
}

void __glexpim_Lightiv(enum GLenum light, enum GLenum pname, s32 *params) {
    u64 sp18;
    __GLcontext *temp_s0;
    __GLlightSourceState *temp_a6;
    __GLtransform *temp_a2_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a3;
    s32 var_a1;
    u32 temp_a5;
    u64 temp_a2;
    void *(**temp_a5_2)(__GLcontext *, u32);

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a2 = light - 0x4000;
        temp_a3 = temp_a2 < (u32) temp_s0->constants.numberOfLights;
        if ((temp_a3 != 0) && (temp_a5 = pname - 0x1200, temp_a5_2 = (temp_a5 * 4) + &jtbl_0dbeb028, temp_a6 = &temp_s0->state.light.source[light] - 0x1D0000, ((temp_a5 < 0xAU) != 0))) {
            switch (pname) {
            case GL_AMBIENT:
                sp18 = temp_a2;
                __glScaleColori(temp_s0, temp_a6, params, temp_a3, params, temp_a5_2, temp_a6);
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 0x20;
                __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                return;
            case GL_QUADRATIC_ATTENUATION:
                temp_a0 = params->unk0;
                if (temp_a0 >= 0) {
                    temp_a6->quadraticAttenuation = (f32) temp_a0;
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                    return;
                }
                __glSetError(GL_INVALID_VALUE);
                return;
            case GL_DIFFUSE:
                sp18 = temp_a2;
                __glScaleColori(temp_s0, (__GLlightSourceState *) &temp_a6->diffuse, params, temp_a3, params, temp_a5_2, temp_a6);
                /* Duplicate return node #8. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 0x20;
                __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                return;
            case GL_SPECULAR:
                sp18 = temp_a2;
                __glScaleColori(temp_s0, (__GLlightSourceState *) &temp_a6->specular, params, temp_a3, params, temp_a5_2, temp_a6);
                /* Duplicate return node #8. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 0x20;
                __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                return;
            case GL_POSITION:
                temp_a6->position.x = (f32) params->unk0;
                sp18 = temp_a2;
                temp_a6->position.y = (f32) params->unk4;
                temp_a6->position.z = (f32) params->unk8;
                temp_a6->position.w = (f32) params->unkC;
                temp_a2_2 = temp_s0->transform.modelView;
                temp_a2_2->matrix.xf4(&temp_a6->positionEye, &temp_a6->position.x, &temp_a2_2->matrix);
                /* Duplicate return node #8. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 0x20;
                __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                return;
            case GL_SPOT_DIRECTION:
                temp_a6->direction.x = (f32) params->unk0;
                temp_a6->direction.y = (f32) params->unk4;
                sp18 = temp_a2;
                temp_a6->direction.w = 1.0f;
                temp_a6->direction.z = (f32) params->unk8;
                __glExpTransformLightDirection(temp_s0, temp_a6);
                /* Duplicate return node #8. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 0x20;
                __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                return;
            case GL_SPOT_EXPONENT:
                temp_a0_2 = params->unk0;
                if ((temp_a0_2 >= 0) && (temp_a0_2 < 0x81)) {
                    temp_a6->spotLightExponent = (f32) temp_a0_2;
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                    return;
                }
                /* Duplicate return node #27. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_VALUE);
                return;
            case GL_SPOT_CUTOFF:
                temp_a0_3 = params->unk0;
                var_a1 = 0;
                if ((temp_a0_3 != 0xB4) && ((temp_a0_3 < 0) || (var_a1 = 0, ((temp_a0_3 < 0x5B) == 0)))) {
                    var_a1 = 1;
                }
                if (var_a1 == 0) {
                    temp_a6->spotLightCutOffAngle = (f32) temp_a0_3;
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                    return;
                }
                /* Duplicate return node #27. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_VALUE);
                return;
            case GL_CONSTANT_ATTENUATION:
                temp_a0_4 = params->unk0;
                if (temp_a0_4 >= 0) {
                    temp_a6->constantAttenuation = (f32) temp_a0_4;
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                    return;
                }
                /* Duplicate return node #27. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_VALUE);
                return;
            case GL_LINEAR_ATTENUATION:
                temp_a0_5 = params->unk0;
                if (temp_a0_5 >= 0) {
                    temp_a6->linearAttenuation = (f32) temp_a0_5;
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, (s32) temp_a2);
                    return;
                }
                /* Duplicate return node #27. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_VALUE);
                return;
            }
        } else {
            __glSetError(GL_INVALID_ENUM);
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glexpim_Lighti(enum GLenum light, enum GLenum pname, s32 param) {
    s32 sp24;

    sp24 = param;
    if ((pname != GL_SPOT_EXPONENT) && (pname != GL_SPOT_CUTOFF) && (pname != GL_CONSTANT_ATTENUATION) && (pname != GL_LINEAR_ATTENUATION) && (pname != GL_QUADRATIC_ATTENUATION)) {
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glexpim_Lightiv(light, pname, &sp24);
}

void __glexpim_LightModelfv(enum GLenum pname, f32 *params) {
    s64 sp0;
    __GLcontext *temp_a4;
    u8 var_at;
    u8 var_v1;

    temp_a4 = __glCurrentContext;
    if (__glBeginMode != 1) {
        switch (pname) {                            /* irregular */
        default:
            __glSetError(GL_INVALID_ENUM);
            return;
        case GL_LIGHT_MODEL_TWO_SIDE:
            var_v1 = 1;
            if (*params == 0.0f) {
                var_v1 = 0;
            }
            __glCurrentContext->state.light.model.twoSided = var_v1;
            __glBeginMode = 2;
            temp_a4->dirtyMask |= 0x20;
            return;
        case GL_LIGHT_MODEL_LOCAL_VIEWER:
            var_at = 1;
            if (*params == 0.0f) {
                var_at = 0;
            }
            temp_a4->state.light.model.localViewer = var_at;
            /* Duplicate return node #8. Try simplifying control flow for better match */
            __glBeginMode = 2;
            temp_a4->dirtyMask |= 0x20;
            return;
        case GL_LIGHT_MODEL_AMBIENT:
            sp0 = (s64) temp_a4;
            __glScaleColorf(temp_a4, &temp_a4->state.light.model.ambient, params);
            /* Duplicate return node #8. Try simplifying control flow for better match */
            __glBeginMode = 2;
            temp_a4->dirtyMask |= 0x20;
            return;
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glexpim_LightModelf(enum GLenum pname, f32 param) {
    f32 sp18;

    sp18 = param;
    if ((pname != GL_LIGHT_MODEL_LOCAL_VIEWER) && (pname != GL_LIGHT_MODEL_TWO_SIDE)) {
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glexpim_LightModelfv(pname, &sp18);
}

void __glexpim_LightModeliv(enum GLenum pname, s32 *params) {
    s64 sp0;
    __GLcontext *temp_a4;

    temp_a4 = __glCurrentContext;
    if (__glBeginMode != 1) {
        switch (pname) {                            /* irregular */
        default:
            __glSetError(GL_INVALID_ENUM);
            return;
        case GL_LIGHT_MODEL_TWO_SIDE:
            __glCurrentContext->state.light.model.twoSided = *params != 0;
            __glBeginMode = 2;
            temp_a4->dirtyMask |= 0x20;
            return;
        case GL_LIGHT_MODEL_LOCAL_VIEWER:
            temp_a4->state.light.model.localViewer = *params != 0;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            __glBeginMode = 2;
            temp_a4->dirtyMask |= 0x20;
            return;
        case GL_LIGHT_MODEL_AMBIENT:
            sp0 = (s64) temp_a4;
            __glScaleColori(temp_a4, (__GLlightSourceState *) &temp_a4->state.light.model, params, 0xB53, (s32 *) temp_a4, &__glCurrentContext->imports.malloc);
            /* Duplicate return node #6. Try simplifying control flow for better match */
            __glBeginMode = 2;
            temp_a4->dirtyMask |= 0x20;
            return;
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glexpim_LightModeli(enum GLenum pname, s32 param) {
    s32 sp1C;

    sp1C = param;
    if ((pname != GL_LIGHT_MODEL_LOCAL_VIEWER) && (pname != GL_LIGHT_MODEL_TWO_SIDE)) {
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glexpim_LightModeliv(pname, &sp1C);
}

void __glexpim_LineStipple(s32 factor, u16 pattern) {
    s32 temp_a2;
    s32 var_a3;
    u32 temp_a3;

    var_a3 = factor;
    if (__glBeginMode != 1) {
        if (var_a3 <= 0) {
            var_a3 = 1;
        }
        temp_a2 = var_a3 < 0x100;
        if (temp_a2 == 0) {
            var_a3 = 0xFF;
        }
        __glCurrentContext->state.line.stipple = pattern;
        __glCurrentContext->state.line.stippleRepeat = (s16) var_a3;
        __glBeginMode = 2;
        temp_a3 = __glCurrentContext->dirtyMask | 2;
        __glCurrentContext->dirtyMask = temp_a3;
        __glExpPassLineStipple(__glCurrentContext, __glCurrentContext, temp_a2, temp_a3, __glCurrentContext, 2);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void RoundWidth(f32 fparg0) {
    if (fparg0 < 1.0f) {

    }
}

void ClampWidth(void *arg0, f32 fparg1) {
    if (!(fparg1 <= arg0->unkD84)) {
        if (!(arg0->unkD88 <= fparg1)) {

        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14], gap at: 0x8. */
void __glexpim_LineWidth(f32 width) {
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (width <= 0.0f) {
            __glSetError(GL_INVALID_VALUE);
            return;
        }
        temp_s0->state.line.requestedWidth = width;
        __glexpim_LineStipple(M2C_ERROR(/* Read from unset register $a0 */), M2C_ERROR(/* Read from unset register $a1 */));
        temp_s0->state.line.aliasedWidth = M2C_ERROR(/* Read from unset register $v0 */);
        __glexpim_LineStipple((s32) temp_s0, M2C_ERROR(/* Read from unset register $a1 */));
        temp_s0->state.line.smoothWidth = M2C_ERROR(/* Read from unset register $f0 */);
        __glBeginMode = 2;
        temp_s0->dirtyMask |= 2;
        __glExpPassLineWidth(temp_s0, temp_s0);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_LogicOp(enum GLenum opcode) {
    s32 temp_a1;

    if (__glBeginMode != 1) {
        temp_a1 = opcode < GL_CLEAR;
        if ((temp_a1 != 0) || (opcode >= 0x1510U)) {
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        __glCurrentContext->state.raster.logicOp = opcode;
        __glBeginMode = 2;
        __glCurrentContext->dirtyMask |= 1;
        __glExpPassLogicOp(__glCurrentContext, __glCurrentContext, temp_a1, opcode, __glCurrentContext);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void ApplyParameterF(__GLcontext *arg0, void *arg1, u32 arg2, f32 *arg3) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f4;

    if (arg2 >= 0x1600U) {
        if (arg2 >= 0x1601U) {
            if (arg2 >= 0x1602U) {
                if (arg2 >= 0x1603U) {
                    if (arg2 == 0x1603) {
                        arg1->unk44 = (f32) arg3->unk0;
                        arg1->unk4C = (f32) arg3->unk4;
                        arg1->unk48 = (f32) arg3->unk8;
                    }
                } else {
                    temp_f3 = arg3->unk0;
                    arg1->unk0 = temp_f3;
                    temp_f4 = arg3->unk4;
                    arg1->unk4 = temp_f4;
                    temp_f0 = arg3->unk8;
                    arg1->unk8 = temp_f0;
                    temp_f2 = arg3->unkC;
                    arg1->unk18 = temp_f0;
                    arg1->unk14 = temp_f4;
                    arg1->unk10 = temp_f3;
                    arg1->unk1C = temp_f2;
                    arg1->unkC = temp_f2;
                }
            } else if (arg2 == 0x1601) {
                arg1->unk40 = (f32) arg3->unk0;
            }
        } else {
            __glScaleColorf(arg0, arg1 + 0x30, arg3);
        }
    } else if (arg2 >= 0x1201U) {
        if (arg2 >= 0x1202U) {
            if (arg2 == 0x1202) {
                arg1->unk20 = (f32) arg3->unk0;
                arg1->unk24 = (f32) arg3->unk4;
                arg1->unk28 = (f32) arg3->unk8;
                arg1->unk2C = (f32) arg3->unkC;
            }
        } else {
            arg1->unk10 = (f32) arg3->unk0;
            arg1->unk14 = (f32) arg3->unk4;
            arg1->unk18 = (f32) arg3->unk8;
            arg1->unk1C = (f32) arg3->unkC;
        }
    } else {
        if (arg2 != 0x1200) {
            return;
        }
        arg1->unk0 = (f32) arg3->unk0;
        arg1->unk4 = (f32) arg3->unk4;
        arg1->unk8 = (f32) arg3->unk8;
        arg1->unkC = (f32) arg3->unkC;
    }
}

void __glExpErrorCheckMaterial(__GLcontext *gc, u32 arg1, f32 fparg2, ...) {
    if ((gc != (__GLcontext *)0x404) && (gc != (__GLcontext *)0x405) && (gc != (__GLcontext *)0x408)) {
        return;
    }
    if (arg1 >= 0x1600U) {
        if (arg1 >= 0x1601U) {
            if (arg1 >= 0x1602U) {
                if (arg1 >= 0x1603U) {
                    if (arg1 == 0x1603) {

                    }
                }
            } else if (arg1 == 0x1601) {
                if ((fparg2 < 0.0f) || (fparg2 > 128.0f)) {

                }
            }
        }
    } else if (arg1 >= 0x1201U) {
        if ((arg1 < 0x1202U) || (arg1 == 0x1202)) {

        }
    } else if (arg1 != 0x1200) {

    }
}

void __glexpim_Materialfv(enum GLenum face, enum GLenum pname, f32 *params) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    __GLcontext *temp_s0;
    s32 var_s1;

    temp_s0 = __glCurrentContext;
    sp10 = (s64) params;
    sp8 = (s64) pname;
    __glExpErrorCheckMaterial((__GLcontext *) face);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        if (__glBeginMode == 1) {
            if (temp_s0->unk6DC0 != 0) {
                ((? (*)(__GLcontext *)) temp_s0->procs.table[0x2F])(temp_s0);
            }
        }
        switch (face) {                             /* irregular */
        default:
            var_s1 = sp4;
            sp18 = (s64) sp0;
            break;
        case GL_FRONT:
            __glexpim_LogicOp((enum GLenum) temp_s0);
            sp18 = M2C_ERROR(/* Read from unset register $v0 */);
            var_s1 = 0;
            break;
        case GL_BACK:
            __glexpim_LogicOp((enum GLenum) temp_s0);
            var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
            sp18 = 0;
            break;
        case GL_FRONT_AND_BACK:
            __glexpim_LogicOp((enum GLenum) temp_s0);
            var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
            __glexpim_LogicOp((enum GLenum) temp_s0);
            sp18 = M2C_ERROR(/* Read from unset register $v0 */);
            break;
        }
        if (sp8 != 0x1603) {
            __glValidateMaterial(temp_s0, sp18, var_s1);
        }
        if (temp_s0->state.enables.general & 0x80) {
            __glExpValidateMaterial(temp_s0, temp_s0);
        }
        __glExpValidateMaterial(temp_s0, temp_s0, sp18, var_s1);
        return;
    }
    __glSetError(M2C_ERROR(/* Read from unset register $v0 */));
}

void __glexpim_Materialf(enum GLenum face, enum GLenum pname, f32 param) {
    f32 sp20;

    sp20 = param;
    if (pname != GL_SHININESS) {
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glexpim_Materialfv(face, pname, &sp20);
}

void ApplyParameterI(void *arg0, s32 *arg1, u32 arg2, __GLlightSourceState *arg3) {
    f32 temp_f0;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f5;

    if (arg2 >= 0x1600U) {
        if (arg2 >= 0x1601U) {
            if (arg2 >= 0x1602U) {
                if (arg2 >= 0x1603U) {
                    if (arg2 == 0x1603) {
                        arg1->unk44 = (f32) arg3->ambient.r;
                        arg1->unk4C = (f32) arg3->ambient.g;
                        arg1->unk48 = (f32) arg3->ambient.b;
                    }
                } else {
                    temp_f4 = arg0->unkCEC * (((f32) arg3->ambient.r * 2.0f) + 1.0f);
                    arg1->unk0 = temp_f4;
                    temp_f5 = arg0->unkCEC * (((f32) arg3->ambient.g * 2.0f) + 1.0f);
                    arg1->unk4 = temp_f5;
                    temp_f0 = arg0->unkCEC * (((f32) arg3->ambient.b * 2.0f) + 1.0f);
                    arg1->unk8 = temp_f0;
                    temp_f3 = arg0->unkCEC * (((f32) arg3->ambient.a * 2.0f) + 1.0f);
                    arg1->unk18 = temp_f0;
                    arg1->unk14 = temp_f5;
                    arg1->unk10 = temp_f4;
                    arg1->unk1C = temp_f3;
                    arg1->unkC = temp_f3;
                }
            } else if (arg2 == 0x1601) {
                arg1->unk40 = (f32) arg3->ambient.r;
            }
        } else {
            __glScaleColori(arg1 + 0x30, arg3, arg1);
        }
    } else if (arg2 >= 0x1201U) {
        if (arg2 >= 0x1202U) {
            if (arg2 == 0x1202) {
                arg1->unk20 = (f32) (arg0->unkCEC * (((f32) arg3->ambient.r * 2.0f) + 1.0f));
                arg1->unk24 = (f32) (arg0->unkCEC * (((f32) arg3->ambient.g * 2.0f) + 1.0f));
                arg1->unk28 = (f32) (arg0->unkCEC * (((f32) arg3->ambient.b * 2.0f) + 1.0f));
                arg1->unk2C = (f32) (arg0->unkCEC * (((f32) arg3->ambient.a * 2.0f) + 1.0f));
            }
        } else {
            arg1->unk10 = (f32) (arg0->unkCEC * (((f32) arg3->ambient.r * 2.0f) + 1.0f));
            arg1->unk14 = (f32) (arg0->unkCEC * (((f32) arg3->ambient.g * 2.0f) + 1.0f));
            arg1->unk18 = (f32) (arg0->unkCEC * (((f32) arg3->ambient.b * 2.0f) + 1.0f));
            arg1->unk1C = (f32) (arg0->unkCEC * (((f32) arg3->ambient.a * 2.0f) + 1.0f));
        }
    } else {
        if (arg2 != 0x1200) {
            return;
        }
        arg1->unk0 = (bitwise s32) (arg0->unkCEC * (((f32) arg3->ambient.r * 2.0f) + 1.0f));
        arg1->unk4 = (f32) (arg0->unkCEC * (((f32) arg3->ambient.g * 2.0f) + 1.0f));
        arg1->unk8 = (f32) (arg0->unkCEC * (((f32) arg3->ambient.b * 2.0f) + 1.0f));
        arg1->unkC = (f32) (arg0->unkCEC * (((f32) arg3->ambient.a * 2.0f) + 1.0f));
    }
}

void __glexpim_Materialiv(enum GLenum face, enum GLenum pname, s32 *params) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    __GLcontext *temp_s0;
    s32 var_s1;

    temp_s0 = __glCurrentContext;
    sp8 = (s64) pname;
    sp10 = (s64) params;
    __glExpErrorCheckMaterial((__GLcontext *) face);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        if (__glBeginMode == 1) {
            if (temp_s0->unk6DC0 != 0) {
                ((? (*)(__GLcontext *)) temp_s0->procs.table[0x2F])(temp_s0);
            }
        }
        switch (face) {                             /* irregular */
        default:
            var_s1 = sp4;
            sp18 = (s64) sp0;
            break;
        case GL_FRONT:
            __glexpim_Materialf((enum GLenum) temp_s0, (enum GLenum) &temp_s0->state.light.front, M2C_ERROR(/* Read from unset register $f14 */));
            sp18 = M2C_ERROR(/* Read from unset register $v0 */);
            var_s1 = 0;
            break;
        case GL_BACK:
            __glexpim_Materialf((enum GLenum) temp_s0, (enum GLenum) &temp_s0->state.light.back, M2C_ERROR(/* Read from unset register $f14 */));
            var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
            sp18 = 0;
            break;
        case GL_FRONT_AND_BACK:
            __glexpim_Materialf((enum GLenum) temp_s0, (enum GLenum) &temp_s0->state.light.back, M2C_ERROR(/* Read from unset register $f14 */));
            var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
            __glexpim_Materialf((enum GLenum) temp_s0, (enum GLenum) &temp_s0->state.light.front, M2C_ERROR(/* Read from unset register $f14 */));
            sp18 = M2C_ERROR(/* Read from unset register $v0 */);
            break;
        }
        if (sp8 != 0x1603) {
            __glValidateMaterial(temp_s0, sp18, var_s1);
        }
        if (temp_s0->state.enables.general & 0x80) {
            __glExpValidateMaterial(temp_s0, temp_s0);
        }
        __glExpValidateMaterial(temp_s0, temp_s0, sp18, var_s1);
        return;
    }
    __glSetError(M2C_ERROR(/* Read from unset register $v0 */));
}

void __glexpim_Materiali(enum GLenum face, enum GLenum pname, s32 param) {
    s32 sp24;

    sp24 = param;
    if (pname != GL_SHININESS) {
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glexpim_Materialiv(face, pname, &sp24);
}

void RoundSize(f32 fparg0) {
    if (fparg0 < 1.0f) {

    }
}

void ClampSize(void *arg0, f32 fparg1) {
    if (!(fparg1 <= arg0->unkD78)) {
        if (!(arg0->unkD7C <= fparg1)) {

        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14], gap at: 0x8. */
void __glexpim_PointSize(f32 size) {
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (size <= 0.0f) {
            __glSetError(GL_INVALID_VALUE);
            return;
        }
        temp_s0->state.point.requestedSize = size;
        __glexpim_Materiali(M2C_ERROR(/* Read from unset register $a0 */), M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
        temp_s0->state.point.aliasedSize = M2C_ERROR(/* Read from unset register $v0 */);
        __glexpim_Materiali((enum GLenum) temp_s0, M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
        temp_s0->state.point.smoothSize = M2C_ERROR(/* Read from unset register $f0 */);
        __glBeginMode = 2;
        temp_s0->dirtyMask |= 8;
        __glExpPassPointSize(temp_s0, temp_s0);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_PolygonMode(enum GLenum face, enum GLenum mode) {
    u32 temp_a1;

    if (__glBeginMode != 1) {
        switch (mode) {                             /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(GL_INVALID_ENUM);
            return;
        case GL_LINE:                               /* switch 1 */
            __glBeginMode = 2;
            __glCurrentContext->dirtyMask |= 2;
            /* fallthrough */
        case GL_FILL:                               /* switch 1 */
block_6:
            switch (face) {                         /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(GL_INVALID_ENUM);
                return;
            case GL_FRONT_AND_BACK:                 /* switch 2 */
                __glCurrentContext->state.polygon.backMode = mode;
block_11:
                __glCurrentContext->state.polygon.frontMode = mode;
                __glBeginMode = 2;
                temp_a1 = __glCurrentContext->dirtyMask | 4;
                __glCurrentContext->dirtyMask = temp_a1;
                __glExpPassPolygonMode(__glCurrentContext, __glCurrentContext, temp_a1, 2, __glCurrentContext);
                return;
            case GL_FRONT:                          /* switch 2 */
                goto block_11;
            case GL_BACK:                           /* switch 2 */
                __glCurrentContext->state.polygon.backMode = mode;
                /* Duplicate return node #12. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_a1 = __glCurrentContext->dirtyMask | 4;
                __glCurrentContext->dirtyMask = temp_a1;
                __glExpPassPolygonMode(__glCurrentContext, __glCurrentContext, temp_a1, 2, __glCurrentContext);
                return;
            }
            break;
        case GL_POINT:                              /* switch 1 */
            __glBeginMode = 2;
            __glCurrentContext->dirtyMask |= 8;
            goto block_6;
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glexpim_PolygonStipple(u8 *mask) {
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        __glFillImage(temp_s0, 0x20, 0x20, 0x1900, 0x1A00, mask, &temp_s0->state.polygonStipple);
        temp_s0->procs.unk348(temp_s0);
        __glBeginMode = 2;
        temp_s0->dirtyMask |= 4;
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_ShadeModel(enum GLenum mode) {
    s32 temp_a1;

    if (__glBeginMode != 1) {
        temp_a1 = mode < GL_FLAT;
        if ((temp_a1 != 0) || (mode >= 0x1D02U)) {
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        __glCurrentContext->state.light.shadingModel = mode;
        __glBeginMode = 2;
        __glCurrentContext->dirtyMask |= 1;
        __glExpPassShadeModel(__glCurrentContext, __glCurrentContext, temp_a1, mode, __glCurrentContext);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_StencilMask(u32 mask) {
    s16 temp_a6;
    u32 temp_a1;

    if (__glBeginMode != 1) {
        temp_a6 = ((1 << __glCurrentContext->modes.stencilBits) - 1) & mask;
        __glCurrentContext->state.stencil.writeMask = temp_a6;
        __glBeginMode = 2;
        temp_a1 = __glCurrentContext->validateMask | 2;
        __glCurrentContext->validateMask = temp_a1;
        __glCurrentContext->dirtyMask |= 1;
        __glExpPassStencilMask(__glCurrentContext, __glCurrentContext, temp_a1, mask, __glCurrentContext, 1, 2, temp_a6);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_StencilFunc(enum GLenum func, s32 ref, u32 mask) {
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 var_a1;
    u32 temp_a7;

    var_a1 = ref;
    if (__glBeginMode != 1) {
        temp_a3 = func < 0x208U;
        if ((func >= GL_NEVER) && (temp_a3 != 0)) {
            if (var_a1 < 0) {
                var_a1 = 0;
            }
            temp_a6 = 1 << __glCurrentContext->modes.stencilBits;
            temp_a6_2 = temp_a6 - 1;
            if (var_a1 >= temp_a6) {
                var_a1 = temp_a6_2;
            }
            __glCurrentContext->state.stencil.reference = (s16) var_a1;
            __glCurrentContext->state.stencil.testFunc = func;
            __glCurrentContext->state.stencil.mask = temp_a6_2 & mask;
            __glBeginMode = 2;
            temp_a7 = __glCurrentContext->dirtyMask | 1;
            __glCurrentContext->validateMask |= 2;
            __glCurrentContext->dirtyMask = temp_a7;
            __glExpPassStencilMode(__glCurrentContext, __glCurrentContext, var_a1, temp_a3, func, __glCurrentContext, temp_a6_2, temp_a7);
            return;
        }
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_StencilOp(enum GLenum fail, enum GLenum zfail, enum GLenum zpass) {
    u32 temp_a1;

    if (__glBeginMode != 1) {
        if ((fail != GL_ZERO) && (fail != GL_INVERT) && (fail != GL_KEEP) && (fail != GL_REPLACE) && (fail != GL_INCR) && (fail != GL_DECR)) {
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        switch (zfail) {                            /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(GL_INVALID_ENUM);
            return;
        case GL_ZERO:                               /* switch 1 */
        case GL_KEEP:                               /* switch 1 */
        case GL_REPLACE:                            /* switch 1 */
            /* fallthrough */
        case GL_INVERT:                             /* switch 1 */
        case GL_INCR:                               /* switch 1 */
        case GL_DECR:                               /* switch 1 */
            switch (zpass) {                        /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(GL_INVALID_ENUM);
                return;
            case GL_ZERO:                           /* switch 2 */
            case GL_KEEP:                           /* switch 2 */
            case GL_REPLACE:                        /* switch 2 */
            case GL_DECR:                           /* switch 2 */
                /* fallthrough */
            case GL_INVERT:                         /* switch 2 */
            case GL_INCR:                           /* switch 2 */
                __glCurrentContext->state.stencil.depthPass = zpass;
                __glCurrentContext->state.stencil.depthFail = zfail;
                __glCurrentContext->state.stencil.fail = fail;
                __glBeginMode = 2;
                temp_a1 = __glCurrentContext->validateMask | 4;
                __glCurrentContext->validateMask = temp_a1;
                __glCurrentContext->dirtyMask |= 1;
                __glExpPassStencilMode(__glCurrentContext, __glCurrentContext, temp_a1, 2, fail, __glCurrentContext);
                return;
            }
            break;
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glExpCopyContext(__GLcontext *gc, __GLcontext *arg1, s32 arg2, ...) {
    s64 sp30;
    ? *temp_a4_4;
    ? *temp_a4_5;
    ? *temp_a6_2;
    __GLpixelState ***temp_a6;
    __GLpixelState **temp_a5_2;
    __GLpixelState *temp_a4_3;
    __GLpixelState *var_a2;
    __GLrasterState *temp_a2;
    f64 temp_a2_6;
    f64 temp_a3_11;
    s32 *temp_a3_9;
    s32 *temp_at_7;
    s32 *temp_at_8;
    s32 *temp_v0_10;
    s32 *temp_v0_2;
    s32 *temp_v1_5;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a3_10;
    s32 temp_s0;
    s32 temp_s4;
    s32 temp_v0_13;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_at;
    s32 var_at_2;
    s32 var_s0;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v1;
    s32 var_v1_2;
    s64 *temp_a3;
    s64 *temp_a3_4;
    s64 *temp_a3_5;
    s64 *temp_at;
    s64 *temp_at_3;
    s64 *temp_at_4;
    s64 *temp_at_5;
    s64 *temp_at_9;
    s64 *temp_v0;
    s64 *temp_v0_11;
    s64 *temp_v0_12;
    s64 *temp_v0_3;
    s64 *temp_v1_3;
    s64 *temp_v1_8;
    s64 *temp_v1_9;
    s64 temp_a1_2;
    s64 temp_a2_2;
    s64 temp_a3_2;
    s64 temp_a3_6;
    s64 temp_a4_2;
    s64 temp_a4_6;
    s64 temp_a5_5;
    u32 temp_a1;
    u32 temp_a3_3;
    u32 temp_a3_7;
    u32 temp_at_10;
    u32 temp_at_2;
    u32 temp_at_6;
    u32 temp_ra;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;
    u32 temp_v0_9;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_4;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u8 *temp_a3_8;
    void *temp_a4;
    void *temp_a5;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a7;
    void *var_s1;
    void *var_s2;

    if (__glCurrentContext == arg1) {
        __glExpGetMachineState(arg1, arg1);
    }
    gc->frontBuffer.alphaScale = arg1->frontBuffer.alphaScale;
    gc->frontBuffer.iAlphaScale = arg1->frontBuffer.iAlphaScale;
    gc->frontBuffer.oneOverRedScale = arg1->frontBuffer.oneOverRedScale;
    gc->frontBuffer.store = arg1->frontBuffer.store;
    __glContextSetColorScales(gc);
    if (arg2 & 0x200) {
        gc->state.accum.clear.r = arg1->state.accum.clear.r;
        gc->state.accum.clear.g = arg1->state.accum.clear.g;
        gc->state.accum.clear.b = arg1->state.accum.clear.b;
        gc->state.accum.clear.a = arg1->state.accum.clear.a;
    }
    if (arg2 & 0x4000) {
        var_a1 = 9;
        var_a0 = 0;
        temp_a2 = &gc->state.raster;
        temp_a4 = arg1 + 0x6B8;
        do {
            temp_v0 = var_a0 + temp_a2;
            temp_at = var_a0 + temp_a4;
            var_a0 += 8;
            var_a1 -= 1;
            *temp_v0 = *temp_at;
        } while (var_a1 > 0);
        *(var_a0 + temp_a2) = *(var_a0 + temp_a4);
        temp_v1 = gc->state.enables.general & ~0xF;
        gc->state.enables.general = temp_v1;
        gc->state.enables.general = (arg1->state.enables.general & 0xF) | temp_v1;
        temp_v1_2 = gc->state.enables.texture & ~0x800;
        gc->state.enables.texture = temp_v1_2;
        gc->validateMask |= 1;
        gc->state.enables.texture = (arg1->state.enables.texture & 0x800) | temp_v1_2;
    }
    var_a1_2 = 0x22;
    if (arg2 & 1) {
        var_a0_2 = 0;
        do {
            temp_a3 = var_a0_2 + &gc->state.current;
            temp_v1_3 = var_a0_2 + (arg1 + 0xA0);
            var_a0_2 += 8;
            var_a1_2 -= 1;
            *temp_a3 = *temp_v1_3;
        } while (var_a1_2 > 0);
    }
    var_v1 = arg2 & 0x2000;
    if (arg2 & 0x100) {
        gc->unk600 = (s64) arg1->unk600;
        gc->state.depth.clear = arg1->state.depth.clear;
        temp_v1_4 = gc->state.enables.general & ~0x10;
        gc->state.enables.general = temp_v1_4;
        gc->state.enables.general = (arg1->state.enables.general & 0x10) | temp_v1_4;
        __glBeginMode = 2;
        gc->dirtyMask |= 0x80;
        var_v1 = arg2 & 0x2000;
    }
    if (var_v1 != 0) {
        temp_a4_2 = (s64) arg1->unk6A0;
        gc->unk6A0 = temp_a4_2;
        temp_a3_2 = arg1->unk6A8;
        gc->unk6A8 = temp_a3_2;
        temp_a2_2 = arg1->unk6B0;
        gc->unk6B0 = temp_a2_2;
        __glBeginMode = 2;
        temp_a1 = gc->dirtyMask | 0xAE;
        gc->dirtyMask = temp_a1;
        gc->unk2E18(gc, temp_a1, temp_a2_2, temp_a3_2, temp_a4_2);
        ((? (*)(__GLcontext *)) gc->procs.table[0x2A])(gc);
    }
    var_at = arg2 & 0x80;
    if (arg2 & 0x10000) {
        gc->state.evaluator.unk0 = arg1->state.evaluator.unk0;
        gc->state.evaluator.unk8 = arg1->state.evaluator.unk8;
        gc->state.evaluator.unk10 = arg1->state.evaluator.unk10;
        gc->state.evaluator.unk18 = arg1->state.evaluator.unk18;
        gc->state.evaluator.unk20 = arg1->state.evaluator.unk20;
        gc->state.evaluator.unk28 = arg1->state.evaluator.unk28;
        temp_at_2 = gc->state.enables.general & ~0x800000;
        gc->state.enables.general = temp_at_2;
        gc->state.enables.general = (arg1->state.enables.general & 0x800000) | temp_at_2;
        gc->state.enables.pixelPath = (u32) arg1->state.enables.pixelPath;
        gc->state.enables.eval = arg1->state.enables.eval;
        var_at = arg2 & 0x80;
    }
    var_a0_3 = 0xA;
    if (var_at != 0) {
        var_a1_3 = 0;
        do {
            temp_v1_5 = var_a1_3 + &gc->state.fog;
            temp_v0_2 = var_a1_3 + (arg1 + 0x5D4);
            var_a1_3 += 4;
            var_a0_3 -= 1;
            *temp_v1_5 = *temp_v0_2;
        } while (var_a0_3 > 0);
        temp_a3_3 = gc->state.enables.general & ~0x20;
        gc->state.enables.general = temp_a3_3;
        gc->state.enables.general = (arg1->state.enables.general & 0x20) | temp_a3_3;
    }
    var_v0 = arg2 & 0x40;
    if (arg2 & 0x8000) {
        gc->state.hints.perspectiveCorrection = arg1->state.hints.perspectiveCorrection;
        gc->state.hints.pointSmooth = arg1->state.hints.pointSmooth;
        gc->state.hints.lineSmooth = arg1->state.hints.lineSmooth;
        gc->state.hints.polygonSmooth = arg1->state.hints.polygonSmooth;
        gc->state.hints.fog = arg1->state.hints.fog;
        gc->state.hints.textureBuffer = arg1->state.hints.textureBuffer;
        gc->state.hints.generateMipmap = arg1->state.hints.generateMipmap;
        var_v0 = arg2 & 0x40;
    }
    var_a3 = arg2 & 4;
    if (var_v0 != 0) {
        gc->state.light.colorMaterialFace = arg1->state.light.colorMaterialFace;
        gc->state.light.colorMaterialParam = arg1->state.light.colorMaterialParam;
        gc->state.light.shadingModel = arg1->state.light.shadingModel;
        gc->state.light.model.ambient.r = arg1->state.light.model.ambient.r;
        gc->state.light.model.ambient.g = arg1->state.light.model.ambient.g;
        gc->state.light.model.ambient.b = arg1->state.light.model.ambient.b;
        var_a0_4 = 0xA;
        gc->state.light.model.ambient.a = arg1->state.light.model.ambient.a;
        var_a1_4 = 0;
        gc->unk52C = (s32) arg1->unk52C;
        do {
            temp_at_3 = var_a1_4 + &gc->state.light.front;
            temp_a3_4 = var_a1_4 + (arg1 + 0x530);
            var_a1_4 += 8;
            var_a0_4 -= 1;
            *temp_at_3 = *temp_a3_4;
        } while (var_a0_4 > 0);
        var_a1_5 = 0xA;
        var_a0_5 = 0;
        do {
            temp_v0_3 = var_a0_5 + &gc->state.light.back;
            temp_at_4 = var_a0_5 + (arg1 + 0x580);
            var_a0_5 += 8;
            var_a1_5 -= 1;
            *temp_v0_3 = *temp_at_4;
        } while (var_a1_5 > 0);
        memcpy(gc->state.light.source, arg1->state.light.source, gc->constants.numberOfLights * 0x74);
        temp_v0_4 = gc->state.enables.general & ~0xC0;
        gc->state.enables.general = temp_v0_4;
        gc->state.enables.general = (arg1->state.enables.general & 0xC0) | temp_v0_4;
        gc->state.enables.lights = (u32) arg1->state.enables.lights;
        __glBeginMode = 2;
        gc->dirtyMask |= 0x20;
        var_a3 = arg2 & 4;
    }
    if (var_a3 != 0) {
        gc->state.line.requestedWidth = arg1->state.line.requestedWidth;
        gc->state.line.smoothWidth = arg1->state.line.smoothWidth;
        gc->state.line.aliasedWidth = arg1->state.line.aliasedWidth;
        gc->state.line.stipple = arg1->state.line.stipple;
        gc->state.line.stippleRepeat = arg1->state.line.stippleRepeat;
        temp_v1_6 = gc->state.enables.general & ~0x300;
        gc->state.enables.general = temp_v1_6;
        gc->state.enables.general = (arg1->state.enables.general & 0x300) | temp_v1_6;
        __glBeginMode = 2;
        gc->dirtyMask |= 2;
    }
    var_v0_2 = arg2 & 0x20;
    if (arg2 & 0x20000) {
        gc->state.list.listBase = arg1->state.list.listBase;
        var_v0_2 = arg2 & 0x20;
    }
    var_at_2 = arg2 & 2;
    if (var_v0_2 != 0) {
        var_a0_6 = 0xF;
        gc->state.pixel.unk214 = arg1->state.pixel.unk214;
        var_a2 = NULL;
        temp_a4_3 = &gc->state.pixel;
        temp_a5 = arg1 + 0x268;
        gc->state.pixel.unk218 = arg1->state.pixel.unk218;
        do {
            temp_at_5 = var_a2 + temp_a4_3;
            temp_a3_5 = var_a2 + temp_a5;
            var_a2 += 8;
            temp_a3_6 = *temp_a3_5;
            var_a0_6 -= 1;
            *temp_at_5 = temp_a3_6;
        } while (var_a0_6 > 0);
        temp_a5_2 = *(var_a2 + temp_a5);
        temp_a6 = var_a2 + temp_a4_3;
        *temp_a6 = temp_a5_2;
        __glCopyColorTableScaleBias(arg1 + 0x131C, &gc->unk131C, var_a2, temp_a3_6, temp_a4_3, temp_a5_2, temp_a6);
        temp_v1_7 = gc->state.enables.general & ~0x0E000000;
        gc->state.enables.general = temp_v1_7;
        temp_v0_5 = ((arg1->state.enables.general & 0x0E000000) | temp_v1_7) & ~0x30000000;
        gc->state.enables.general = temp_v0_5;
        gc->state.enables.general = (arg1->state.enables.general & 0x30000000) | temp_v0_5;
        __glBeginMode = 2;
        gc->dirtyMask |= 0x10;
        var_at_2 = arg2 & 2;
    }
    var_v1_2 = arg2 & 8;
    if (var_at_2 != 0) {
        gc->state.point.requestedSize = arg1->state.point.requestedSize;
        gc->state.point.smoothSize = arg1->state.point.smoothSize;
        gc->state.point.aliasedSize = arg1->state.point.aliasedSize;
        temp_a3_7 = gc->state.enables.general & ~0x400;
        gc->state.enables.general = temp_a3_7;
        gc->state.enables.general = (arg1->state.enables.general & 0x400) | temp_a3_7;
        __glBeginMode = 2;
        gc->dirtyMask |= 8;
        var_v1_2 = arg2 & 8;
    }
    var_v0_3 = arg2 & 0x10;
    if (var_v1_2 != 0) {
        gc->state.polygon.frontMode = arg1->state.polygon.frontMode;
        gc->state.polygon.backMode = arg1->state.polygon.backMode;
        gc->state.polygon.cull = arg1->state.polygon.cull;
        gc->state.polygon.frontFaceDirection = arg1->state.polygon.frontFaceDirection;
        gc->state.polygon.factor = arg1->state.polygon.factor;
        gc->state.polygon.units = arg1->state.polygon.units;
        gc->state.polygon.mask = arg1->state.polygon.mask;
        temp_at_6 = gc->state.enables.general & (M2C_ERROR(/* Read from unset register $t9 */) + 0x1A3F3C)->unk-5668;
        gc->state.enables.general = temp_at_6;
        gc->state.enables.general = (arg1->state.enables.general & 0x01003800) | temp_at_6;
        temp_v0_6 = gc->state.enables.texture & ~0x600;
        gc->state.enables.texture = temp_v0_6;
        gc->state.enables.texture = (arg1->state.enables.texture & 0x600) | temp_v0_6;
        __glBeginMode = 2;
        gc->dirtyMask |= 4;
        var_v0_3 = arg2 & 0x10;
    }
    var_a0_7 = 0x10;
    if (var_v0_3 != 0) {
        var_a1_6 = 0;
        do {
            temp_a3_8 = &gc->state.polygonStipple.stipple[var_a1_6];
            temp_v1_8 = var_a1_6 + (arg1 + 0x1E8);
            var_a1_6 += 8;
            var_a0_7 -= 1;
            *temp_a3_8 = (s64) *temp_v1_8;
        } while (var_a0_7 > 0);
        temp_v0_7 = gc->state.enables.general & ~0x2000;
        gc->state.enables.general = temp_v0_7;
        gc->state.enables.general = (arg1->state.enables.general & 0x2000) | temp_v0_7;
        __glBeginMode = 2;
        gc->dirtyMask |= 0x44;
    }
    var_a3_2 = arg2 & 0x400;
    if (arg2 & 0x80000) {
        gc->state.scissor.scissorX = arg1->state.scissor.scissorX;
        gc->state.scissor.scissorY = arg1->state.scissor.scissorY;
        gc->state.scissor.scissorWidth = arg1->state.scissor.scissorWidth;
        gc->state.scissor.scissorHeight = arg1->state.scissor.scissorHeight;
        temp_v0_8 = gc->state.enables.general & ~0x4000;
        gc->state.enables.general = temp_v0_8;
        gc->state.enables.general = (arg1->state.enables.general & 0x4000) | temp_v0_8;
        var_a3_2 = arg2 & 0x400;
    }
    if (var_a3_2 != 0) {
        gc->unk620 = (s64) arg1->unk620;
        gc->unk628 = (s64) arg1->unk628;
        gc->unk630 = (s64) arg1->unk630;
        temp_v0_9 = gc->state.enables.general & ~0x8000;
        gc->state.enables.general = temp_v0_9;
        gc->validateMask |= 6;
        gc->state.enables.general = (arg1->state.enables.general & 0x8000) | temp_v0_9;
    }
    var_a0_8 = 0x1F;
    if (arg2 & 0x40000) {
        var_a1_7 = 0;
        temp_s4 = gc->constants.maxViewportWidth;
        do {
            temp_v0_10 = var_a1_7 + &gc->state.texture;
            temp_at_7 = var_a1_7 + (arg1 + 0x754);
            var_a1_7 += 4;
            var_a0_8 -= 1;
            *temp_v0_10 = *temp_at_7;
        } while (var_a0_8 > 0);
        var_a1_8 = 0xF;
        var_a0_9 = 0;
        temp_a4_4 = &gc->state.texture.unk7C;
        temp_a5_3 = arg1 + 0x7D0;
        do {
            temp_v1_9 = var_a0_9 + temp_a4_4;
            temp_v0_11 = var_a0_9 + temp_a5_3;
            var_a0_9 += 8;
            var_a1_8 -= 1;
            *temp_v1_9 = *temp_v0_11;
        } while (var_a1_8 > 0);
        var_a1_9 = 0x1F;
        var_a2_2 = 0;
        temp_a6_2 = &gc->state.texture.unkF8;
        temp_a7 = arg1 + 0x84C;
        var_a0_10 = 0xF;
        temp_a4_5 = &gc->state.texture.unk174;
        *(var_a0_9 + temp_a4_4) = *(var_a0_9 + temp_a5_3);
        do {
            temp_at_8 = var_a2_2 + temp_a6_2;
            temp_a3_9 = var_a2_2 + temp_a7;
            var_a2_2 += 4;
            var_a1_9 -= 1;
            *temp_at_8 = *temp_a3_9;
        } while (var_a1_9 > 0);
        temp_a5_4 = arg1 + 0x8C8;
        var_a2_3 = 0;
        do {
            temp_v0_12 = var_a2_3 + temp_a4_5;
            temp_at_9 = var_a2_3 + temp_a5_4;
            var_a2_3 += 8;
            var_a0_10 -= 1;
            *temp_v0_12 = *temp_at_9;
        } while (var_a0_10 > 0);
        *(var_a2_3 + temp_a4_5) = *(var_a2_3 + temp_a5_4);
        gc->state.texture.unk1F8 = arg1->state.texture.unk1F8;
        gc->state.texture.unk1FC = arg1->state.texture.unk1FC;
        gc->state.texture.unk200 = arg1->state.texture.unk200;
        gc->state.texture.unk204 = arg1->state.texture.unk204;
        gc->state.texture.unk208 = arg1->state.texture.unk208;
        gc->state.texture.unk20C = arg1->state.texture.unk20C;
        gc->state.texture.unk210 = arg1->state.texture.unk210;
        var_s0 = 0;
        gc->state.texture.unk214 = arg1->state.texture.unk214;
        var_s2 = gc->state.texture.unk1F0;
        var_s1 = arg1->state.texture.unk1F0;
        if (temp_s4 != 0) {
            if (temp_s4 & 1) {
                temp_a3_10 = var_s2->unkD8;
                temp_a2_3 = var_s1->unkD8;
                if (temp_a3_10 != temp_a2_3) {
                    sp30 = (s64) temp_s4;
                    __glExpGetMachineState(gc, gc, 0, temp_a2_3, temp_a3_10, temp_a4_5, temp_a5_4, temp_a6_2, temp_a7);
                }
                var_s1 += 0xE0;
                var_s2 += 0xE0;
                var_s0 = 1;
            }
            if ((temp_s4 >> 1) != 0) {
loop_70:
                temp_a2_4 = var_s1->unkD8;
                if (var_s2->unkD8 != temp_a2_4) {
                    M2C_ERROR(/* Read from unset register $t9 */)(gc, var_s0, temp_a2_4);
                }
                temp_a2_5 = var_s1->unk1B8;
                temp_v0_13 = var_s2->unk1B8;
                var_s1 += 0x1C0;
                var_s2 += 0x1C0;
                temp_s0 = var_s0 + 1;
                if (temp_v0_13 != temp_a2_5) {
                    __glBindTexture(gc, temp_s0, temp_a2_5);
                }
                var_s0 = temp_s0 + 1;
                if (temp_s4 != var_s0) {
                    goto loop_70;
                }
            }
        }
        memcpy(gc->state.texture.unk1F0, arg1->state.texture.unk1F0, temp_s4 * 0xE0);
        memcpy(gc->state.texture.unk1F4, arg1->state.texture.unk1F4, gc->constants.maxViewportHeight * 0x24);
        temp_at_10 = gc->state.enables.general & 0x3FC0FFFF;
        gc->state.enables.general = temp_at_10;
        gc->state.enables.general = (arg1->state.enables.general & 0xC03F0000) | temp_at_10;
    }
    var_v0_4 = arg2 & 0x800;
    if (arg2 & 0x1000) {
        gc->state.transform.matrixMode = arg1->state.transform.matrixMode;
        memcpy(gc->state.transform.eyeClipPlanes, arg1->state.transform.eyeClipPlanes, gc->constants.numberOfClipPlanes * 0x10);
        temp_ra = gc->state.enables.general & ~0x400000;
        gc->state.enables.general = temp_ra;
        gc->state.enables.general = (arg1->state.enables.general & 0x400000) | temp_ra;
        var_v0_4 = arg2 & 0x800;
    }
    if (var_v0_4 != 0) {
        temp_a5_5 = arg1->unk638;
        gc->unk638 = temp_a5_5;
        temp_a4_6 = arg1->unk640;
        gc->unk640 = temp_a4_6;
        temp_a3_11 = arg1->state.viewport.zNear;
        gc->state.viewport.zNear = temp_a3_11;
        temp_a2_6 = arg1->state.viewport.zFar;
        gc->state.viewport.zFar = temp_a2_6;
        temp_a1_2 = arg1->unk658;
        gc->unk658 = temp_a1_2;
        gc->unk660 = (s64) arg1->unk660;
        gc->unk668 = (s64) arg1->unk668;
        __glUpdateViewportTransform(gc, temp_a1_2, temp_a2_6, temp_a3_11, temp_a4_6, temp_a5_5);
    }
    __glBeginMode = 2;
    gc->hwFlags = 0;
    gc->dirtyMask |= 1;
}

void __glexpim_PushAttrib(u32 mask) {
    s64 sp0;
    ? *temp_a2_4;
    ? *temp_a2_5;
    ? *temp_a5_3;
    ? *temp_a5_4;
    __GLattribute **temp_s4;
    __GLattribute *temp_v0;
    __GLattribute *var_s1;
    __GLcontext *temp_s0;
    __GLcoord *temp_v0_4;
    __GLmaterialState *temp_a2_2;
    __GLpixelState **temp_a5_2;
    __GLpixelState *temp_a2_3;
    __GLpixelState *temp_a4_4;
    __GLpixelState *temp_a5;
    __GLrasterState *temp_a1;
    __GLrasterState *temp_a2;
    s32 *temp_a3_3;
    s32 *temp_a4_6;
    s32 *temp_at_3;
    s32 *temp_at_4;
    s32 *temp_v1_2;
    s32 *temp_v1_5;
    s32 temp_a4_2;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s32 var_v1;
    s64 *temp_a3;
    s64 *temp_a3_2;
    s64 *temp_a3_4;
    s64 *temp_a3_5;
    s64 *temp_a3_7;
    s64 *temp_a4;
    s64 *temp_a4_3;
    s64 *temp_at;
    s64 *temp_at_5;
    s64 *temp_v1;
    s64 *temp_v1_3;
    s64 *temp_v1_4;
    s64 *temp_v1_6;
    s64 *temp_v1_7;
    s64 temp_a1_2;
    s64 temp_a3_6;
    u32 temp_s3;
    u32 temp_s4_2;
    u32 temp_s4_3;
    u8 *temp_a4_5;
    u8 *temp_at_2;
    void *temp_v0_2;
    void *temp_v0_3;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        __glExpGetMachineState(temp_s0, temp_s0);
        temp_s4 = temp_s0->attributes.stackPointer;
        if ((u32) temp_s4 < (u32) &temp_s0->attributes.stack[temp_s0->constants.maxAttribStackDepth]) {
            var_s1 = *temp_s4;
            if (var_s1 == NULL) {
                temp_v0 = temp_s0->imports.calloc(temp_s0, 1U, 0xB78U);
                var_s1 = temp_v0;
                *temp_s4 = temp_v0;
            }
            var_s1->mask = mask;
            var_s1->unk608 = (s64) temp_s0->unk6A0;
            var_s1->unk610 = (s64) temp_s0->unk6A8;
            var_s1->unk618 = (s64) temp_s0->unk6B0;
            temp_s0->attributes.stackPointer = temp_s4 + 4;
            if (mask & 0x200) {
                var_s1->accum.clear.r = temp_s0->state.accum.clear.r;
                var_s1->accum.clear.g = temp_s0->state.accum.clear.g;
                var_s1->accum.clear.b = temp_s0->state.accum.clear.b;
                var_s1->accum.clear.a = temp_s0->state.accum.clear.a;
            }
            var_a0 = 9;
            if (mask & 0x4000) {
                var_v0 = 0;
                temp_a1 = &var_s1->raster;
                temp_a2 = &temp_s0->state.raster;
                do {
                    temp_a4 = var_v0 + temp_a1;
                    temp_a3 = var_v0 + temp_a2;
                    var_v0 += 8;
                    var_a0 -= 1;
                    *temp_a4 = *temp_a3;
                } while (var_a0 > 0);
                *(var_v0 + temp_a1) = *(var_v0 + temp_a2);
            }
            var_v0_2 = 0x22;
            if (mask & 1) {
                var_a0_2 = 0;
                do {
                    temp_a3_2 = var_a0_2 + &var_s1->current;
                    temp_v1 = var_a0_2 + &temp_s0->state.current;
                    var_a0_2 += 8;
                    var_v0_2 -= 1;
                    *temp_a3_2 = *temp_v1;
                } while (var_v0_2 > 0);
            }
            if (mask & 0x100) {
                var_s1->unk568 = (s64) temp_s0->unk600;
                var_s1->depth.clear = temp_s0->state.depth.clear;
            }
            var_at = mask & 0x80;
            if (mask & 0x10000) {
                var_s1->evaluator.unk0 = temp_s0->state.evaluator.unk0;
                var_s1->evaluator.unk8 = temp_s0->state.evaluator.unk8;
                var_s1->evaluator.unk10 = temp_s0->state.evaluator.unk10;
                var_s1->evaluator.unk18 = temp_s0->state.evaluator.unk18;
                var_s1->evaluator.unk20 = temp_s0->state.evaluator.unk20;
                var_s1->evaluator.unk28 = temp_s0->state.evaluator.unk28;
                var_at = mask & 0x80;
            }
            var_v0_3 = 0xA;
            if (var_at != 0) {
                var_a0_3 = 0;
                do {
                    temp_a3_3 = var_a0_3 + &var_s1->fog;
                    temp_v1_2 = var_a0_3 + &temp_s0->state.fog;
                    var_a0_3 += 4;
                    var_v0_3 -= 1;
                    *temp_a3_3 = *temp_v1_2;
                } while (var_v0_3 > 0);
            }
            var_a3 = mask & 0x40;
            if (mask & 0x8000) {
                var_s1->hints.perspectiveCorrection = temp_s0->state.hints.perspectiveCorrection;
                var_s1->hints.pointSmooth = temp_s0->state.hints.pointSmooth;
                var_s1->hints.lineSmooth = temp_s0->state.hints.lineSmooth;
                var_s1->hints.polygonSmooth = temp_s0->state.hints.polygonSmooth;
                var_s1->hints.fog = temp_s0->state.hints.fog;
                var_s1->hints.textureBuffer = temp_s0->state.hints.textureBuffer;
                var_s1->hints.generateMipmap = temp_s0->state.hints.generateMipmap;
                var_a3 = mask & 0x40;
            }
            var_a3_2 = mask & 4;
            if (var_a3 != 0) {
                var_s1->light.colorMaterialFace = temp_s0->state.light.colorMaterialFace;
                var_s1->light.colorMaterialParam = temp_s0->state.light.colorMaterialParam;
                var_s1->light.shadingModel = temp_s0->state.light.shadingModel;
                var_s1->light.model.ambient.r = temp_s0->state.light.model.ambient.r;
                var_s1->light.model.ambient.g = temp_s0->state.light.model.ambient.g;
                var_v0_4 = 0xA;
                var_s1->light.model.ambient.b = temp_s0->state.light.model.ambient.b;
                temp_s4_2 = temp_s0->constants.numberOfLights * 0x74;
                var_s1->light.model.ambient.a = temp_s0->state.light.model.ambient.a;
                temp_a4_2 = temp_s0->unk52C;
                var_a0_4 = 0;
                var_s1->unk494 = temp_a4_2;
                do {
                    temp_v1_3 = var_a0_4 + &var_s1->light.front;
                    temp_at = var_a0_4 + &temp_s0->state.light.front;
                    var_a0_4 += 8;
                    var_v0_4 -= 1;
                    *temp_v1_3 = *temp_at;
                } while (var_v0_4 > 0);
                var_a0_5 = 0xA;
                var_v0_5 = 0;
                temp_a2_2 = &temp_s0->state.light.back;
                do {
                    temp_a3_4 = var_v0_5 + &var_s1->light.back;
                    temp_v1_4 = var_v0_5 + temp_a2_2;
                    var_v0_5 += 8;
                    var_a0_5 -= 1;
                    *temp_a3_4 = *temp_v1_4;
                } while (var_a0_5 > 0);
                __glExpGetMachineState(temp_s0, temp_s0, temp_s4_2, temp_a2_2, temp_a3_4, temp_a4_2);
                var_s1->light.source = M2C_ERROR(/* Read from unset register $v0 */);
                memcpy(M2C_ERROR(/* Read from unset register $v0 */), temp_s0->state.light.source, temp_s4_2);
                var_a3_2 = mask & 4;
            }
            if (var_a3_2 != 0) {
                var_s1->line.requestedWidth = temp_s0->state.line.requestedWidth;
                var_s1->line.smoothWidth = temp_s0->state.line.smoothWidth;
                var_s1->line.aliasedWidth = temp_s0->state.line.aliasedWidth;
                var_s1->line.stipple = temp_s0->state.line.stipple;
                var_s1->line.stippleRepeat = temp_s0->state.line.stippleRepeat;
            }
            var_at_2 = mask & 0x20;
            if (mask & 0x20000) {
                var_s1->list.listBase = temp_s0->state.list.listBase;
                var_at_2 = mask & 0x20;
            }
            var_at_3 = mask & 2;
            if (var_at_2 != 0) {
                var_a0_6 = 0xF;
                var_s1->pixel.unk214 = temp_s0->state.pixel.unk214;
                var_v0_6 = 0;
                temp_a5 = &temp_s0->state.pixel;
                temp_a2_3 = &var_s1->pixel;
                var_s1->pixel.unk218 = temp_s0->state.pixel.unk218;
                do {
                    temp_a4_3 = var_v0_6 + temp_a2_3;
                    temp_a3_5 = var_v0_6 + temp_a5;
                    var_v0_6 += 8;
                    temp_a3_6 = *temp_a3_5;
                    var_a0_6 -= 1;
                    *temp_a4_3 = temp_a3_6;
                } while (var_a0_6 > 0);
                temp_a4_4 = *(var_v0_6 + temp_a5);
                temp_a5_2 = var_v0_6 + temp_a2_3;
                *temp_a5_2 = temp_a4_4;
                __glCopyColorTableScaleBias(&temp_s0->unk131C, &var_s1->colorTable, temp_a2_3, temp_a3_6, temp_a4_4, temp_a5_2);
                var_at_3 = mask & 2;
            }
            var_a3_3 = mask & 8;
            if (var_at_3 != 0) {
                var_s1->point.requestedSize = temp_s0->state.point.requestedSize;
                var_s1->point.smoothSize = temp_s0->state.point.smoothSize;
                var_s1->point.aliasedSize = temp_s0->state.point.aliasedSize;
                var_a3_3 = mask & 8;
            }
            var_a3_4 = mask & 0x10;
            if (var_a3_3 != 0) {
                var_s1->polygon.frontMode = temp_s0->state.polygon.frontMode;
                var_s1->polygon.backMode = temp_s0->state.polygon.backMode;
                var_s1->polygon.cull = temp_s0->state.polygon.cull;
                var_s1->polygon.frontFaceDirection = temp_s0->state.polygon.frontFaceDirection;
                var_s1->polygon.factor = temp_s0->state.polygon.factor;
                var_s1->polygon.units = temp_s0->state.polygon.units;
                var_s1->polygon.mask = temp_s0->state.polygon.mask;
                var_a3_4 = mask & 0x10;
            }
            var_a0_7 = 0x10;
            if (var_a3_4 != 0) {
                var_v0_7 = 0;
                do {
                    temp_at_2 = &var_s1->polygonStipple.stipple[var_v0_7];
                    temp_a4_5 = &temp_s0->state.polygonStipple.stipple[var_v0_7];
                    var_v0_7 += 8;
                    var_a0_7 -= 1;
                    *temp_at_2 = (s64) *temp_a4_5;
                } while (var_a0_7 > 0);
            }
            var_v1 = mask & 0x400;
            if (mask & 0x80000) {
                var_s1->scissor.scissorX = temp_s0->state.scissor.scissorX;
                var_s1->scissor.scissorY = temp_s0->state.scissor.scissorY;
                var_s1->scissor.scissorWidth = temp_s0->state.scissor.scissorWidth;
                var_s1->scissor.scissorHeight = temp_s0->state.scissor.scissorHeight;
                var_v1 = mask & 0x400;
            }
            if (var_v1 != 0) {
                var_s1->unk588 = (s64) temp_s0->unk620;
                var_s1->unk590 = (s64) temp_s0->unk628;
                var_s1->unk598 = (s64) temp_s0->unk630;
            }
            var_v0_8 = 0x1F;
            if (mask & 0x40000) {
                var_a0_8 = 0;
                temp_s3 = temp_s0->constants.maxViewportHeight * 0x24;
                temp_s4_3 = temp_s0->constants.maxViewportWidth * 0xE0;
                do {
                    temp_v1_5 = var_a0_8 + &var_s1->texture;
                    temp_at_3 = var_a0_8 + &temp_s0->state.texture;
                    var_a0_8 += 4;
                    var_v0_8 -= 1;
                    *temp_v1_5 = *temp_at_3;
                } while (var_v0_8 > 0);
                var_a0_9 = 0xF;
                var_v0_9 = 0;
                temp_a2_4 = &var_s1->texture.unk7C;
                temp_a5_3 = &temp_s0->state.texture.unk7C;
                do {
                    temp_a3_7 = var_v0_9 + temp_a2_4;
                    temp_v1_6 = var_v0_9 + temp_a5_3;
                    var_v0_9 += 8;
                    var_a0_9 -= 1;
                    *temp_a3_7 = *temp_v1_6;
                } while (var_a0_9 > 0);
                var_a1 = 0x1F;
                var_a0_10 = 0;
                *(var_v0_9 + temp_a2_4) = *(var_v0_9 + temp_a5_3);
                do {
                    temp_at_4 = var_a0_10 + &var_s1->texture.unkF8;
                    temp_a4_6 = var_a0_10 + &temp_s0->state.texture.unkF8;
                    var_a0_10 += 4;
                    var_a1 -= 1;
                    *temp_at_4 = *temp_a4_6;
                } while (var_a1 > 0);
                var_a0_11 = 0xF;
                var_v0_10 = 0;
                temp_a5_4 = &var_s1->texture.unk174;
                temp_a2_5 = &temp_s0->state.texture.unk174;
                do {
                    temp_v1_7 = var_v0_10 + temp_a5_4;
                    temp_at_5 = var_v0_10 + temp_a2_5;
                    var_v0_10 += 8;
                    var_a0_11 -= 1;
                    *temp_v1_7 = *temp_at_5;
                } while (var_a0_11 > 0);
                *(var_v0_10 + temp_a5_4) = *(var_v0_10 + temp_a2_5);
                var_s1->texture.unk1F8 = temp_s0->state.texture.unk1F8;
                var_s1->texture.unk1FC = temp_s0->state.texture.unk1FC;
                var_s1->texture.unk200 = temp_s0->state.texture.unk200;
                var_s1->texture.unk204 = temp_s0->state.texture.unk204;
                var_s1->texture.unk208 = temp_s0->state.texture.unk208;
                var_s1->texture.unk20C = temp_s0->state.texture.unk20C;
                var_s1->texture.unk210 = temp_s0->state.texture.unk210;
                var_s1->texture.unk214 = temp_s0->state.texture.unk214;
                temp_v0_2 = temp_s0->imports.malloc(temp_s0, temp_s4_3);
                var_s1->texture.unk1F0 = temp_v0_2;
                memcpy(temp_v0_2, temp_s0->state.texture.unk1F0, temp_s4_3);
                temp_v0_3 = temp_s0->imports.malloc(temp_s0, temp_s3);
                var_s1->texture.unk1F4 = temp_v0_3;
                memcpy(temp_v0_3, temp_s0->state.texture.unk1F4, temp_s3);
            }
            var_a3_5 = mask & 0x800;
            if (mask & 0x1000) {
                var_s1->transform.matrixMode = temp_s0->state.transform.matrixMode;
                temp_a1_2 = temp_s0->constants.numberOfClipPlanes * 0x10;
                sp0 = temp_a1_2;
                temp_v0_4 = temp_s0->imports.malloc(temp_s0, (u32) temp_a1_2);
                var_s1->transform.eyeClipPlanes = temp_v0_4;
                memcpy(temp_v0_4, temp_s0->state.transform.eyeClipPlanes, (u32) sp0);
                var_a3_5 = mask & 0x800;
            }
            if (var_a3_5 != 0) {
                var_s1->unk5A0 = (s64) temp_s0->unk638;
                var_s1->unk5A8 = (s64) temp_s0->unk640;
                var_s1->viewport.zNear = temp_s0->state.viewport.zNear;
                var_s1->viewport.zFar = temp_s0->state.viewport.zFar;
                var_s1->unk5C0 = (s64) temp_s0->unk658;
                var_s1->unk5C8 = (s64) temp_s0->unk660;
                var_s1->unk5D0 = (s64) temp_s0->unk668;
            }
            return;
        }
        __glSetError(GL_STACK_OVERFLOW);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_PopAttrib(void) {
    s64 sp28;
    s64 sp20;
    ? *temp_a4_11;
    ? *temp_a5_8;
    ? *temp_a6_5;
    __GLattribute **temp_a0;
    __GLcontext *temp_s3;
    __GLcurrentState *temp_a2_2;
    __GLfogState *temp_a2_5;
    __GLpixelState ****temp_a7;
    __GLpixelState ***temp_a6_3;
    __GLpixelState **temp_a5_4;
    __GLpixelState *temp_a4_6;
    __GLpixelState *temp_a4_7;
    __GLpixelState *var_a2;
    __GLpolygonStippleState *temp_a2_8;
    __GLrasterState *temp_a4;
    f64 temp_a1_7;
    f64 temp_a2_14;
    f64 temp_a4_3;
    s16 temp_a2_6;
    s32 *temp_at_2;
    s32 *temp_at_6;
    s32 *temp_v0_2;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *temp_v1_7;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_12;
    s32 temp_a2_13;
    s32 temp_a2_7;
    s32 temp_a2_9;
    s32 temp_a3_10;
    s32 temp_a3_7;
    s32 temp_a4_5;
    s32 temp_a4_9;
    s32 temp_a5_5;
    s32 temp_at_7;
    s32 temp_s0;
    s32 temp_s4;
    s32 temp_s6;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_s0;
    s32 var_v1;
    s64 *temp_a3;
    s64 *temp_a3_5;
    s64 *temp_a3_9;
    s64 *temp_at;
    s64 *temp_at_3;
    s64 *temp_at_4;
    s64 *temp_at_5;
    s64 *temp_v0;
    s64 *temp_v0_3;
    s64 *temp_v0_4;
    s64 *temp_v0_9;
    s64 *temp_v1;
    s64 *temp_v1_3;
    s64 *temp_v1_8;
    s64 *temp_v1_9;
    s64 temp_a1_3;
    s64 temp_a2_4;
    s64 temp_a3_11;
    s64 temp_a3_2;
    s64 temp_a3_6;
    s64 temp_a3_8;
    s64 temp_a4_10;
    s64 temp_a4_13;
    s64 temp_a5_2;
    s64 temp_a5_6;
    s64 var_ra;
    u16 temp_a3_4;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_4;
    u32 temp_a1_5;
    u32 temp_a1_6;
    u32 temp_a2_3;
    u32 temp_a3_3;
    u32 temp_a4_2;
    u32 temp_a5;
    u32 temp_a5_9;
    u32 temp_a6;
    u32 temp_a6_2;
    u32 temp_a6_4;
    u32 temp_at_8;
    u32 temp_t1;
    u32 temp_t1_2;
    u32 temp_v0_5;
    u32 temp_v1_2;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u8 *temp_v0_6;
    void *temp_a2;
    void *temp_a4_12;
    void *temp_a4_4;
    void *temp_a4_8;
    void *temp_a5_3;
    void *temp_a5_7;
    void *temp_a7_2;
    void *temp_s5;
    void *var_s1;
    void *var_s2;

    var_ra = saved_reg_ra;
    temp_s3 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a0 = temp_s3->attributes.stackPointer;
        if ((u32) temp_s3->attributes.stack < (u32) temp_a0) {
            temp_s5 = temp_a0->unk-4;
            temp_s6 = temp_s5->unk0;
            temp_s3->attributes.stackPointer = temp_a0 - 4;
            if (temp_s6 & 0x200) {
                temp_s3->state.accum.clear.r = temp_s5->unk578;
                temp_s3->state.accum.clear.g = temp_s5->unk57C;
                temp_s3->state.accum.clear.b = temp_s5->unk580;
                temp_s3->state.accum.clear.a = temp_s5->unk584;
            }
            var_a0 = 9;
            if (temp_s6 & 0x4000) {
                var_a1 = 0;
                temp_a4 = &temp_s3->state.raster;
                temp_a2 = temp_s5 + 0x620;
                do {
                    temp_at = var_a1 + temp_a4;
                    temp_a3 = var_a1 + temp_a2;
                    var_a1 += 8;
                    temp_a3_2 = *temp_a3;
                    var_a0 -= 1;
                    *temp_at = temp_a3_2;
                } while (var_a0 > 0);
                *(var_a1 + temp_a4) = *(var_a1 + temp_a2);
                temp_t1 = temp_s3->state.enables.general & ~0xF;
                temp_s3->state.enables.general = temp_t1;
                temp_a5 = temp_s3->state.enables.texture & ~0x800;
                temp_s3->state.enables.texture = temp_a5;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0xF) | temp_t1;
                temp_a6 = temp_s3->validateMask | 1;
                temp_s3->validateMask = temp_a6;
                temp_a4_2 = (temp_s5->unk60C & 0x800) | temp_a5;
                temp_s3->state.enables.texture = temp_a4_2;
                __glExpPassDrawBuffer(temp_s3, temp_s3, var_a1, temp_a2, temp_a3_2, temp_a4_2, temp_a5, temp_a6, -0x801);
                __glExpEnableDither(temp_s3, temp_s3);
                __glExpPassBlendFunc(temp_s3, temp_s3);
                __glExpEnableBlendFunc(temp_s3, temp_s3);
                __glExpPassLogicOp(temp_s3, temp_s3);
                __glExpEnableLogicOp(temp_s3, temp_s3);
                __glExpPassColorMask(temp_s3, temp_s3);
                __glExpPassIndexMask(temp_s3, temp_s3);
                var_ra = sp20;
            }
            var_a0_2 = 0x22;
            if (temp_s6 & 1) {
                var_a1_2 = 0;
                temp_a2_2 = &temp_s3->state.current;
                do {
                    temp_v1 = var_a1_2 + temp_a2_2;
                    temp_v0 = var_a1_2 + (temp_s5 + 8);
                    var_a1_2 += 8;
                    var_a0_2 -= 1;
                    *temp_v1 = *temp_v0;
                } while (var_a0_2 > 0);
                sp20 = var_ra;
                __glExpPassRasterPosData(temp_s3, temp_s3, var_a1_2, temp_a2_2);
                __glExpPassColor(temp_s3, temp_s3);
                __glExpPassIndex(temp_s3, temp_s3);
                __glExpPassNormal(temp_s3, temp_s3);
                __glExpPassEdgeFlag(temp_s3, temp_s3);
            }
            if (temp_s6 & 0x100) {
                temp_a5_2 = temp_s5->unk568;
                temp_s3->unk600 = temp_a5_2;
                temp_a4_3 = temp_s5->unk570;
                temp_a2_3 = temp_s3->state.enables.general & ~0x10;
                temp_s3->state.enables.general = temp_a2_3;
                temp_s3->state.depth.clear = temp_a4_3;
                sp20 = var_ra;
                temp_a1 = (temp_s5->unk608 & 0x10) | temp_a2_3;
                temp_s3->state.enables.general = temp_a1;
                __glExpPassDepthFunc(temp_s3, temp_s3, temp_a1, temp_a2_3, -0x11, temp_a4_3, temp_a5_2);
                __glExpPassDepthMask(temp_s3, temp_s3);
                __glExpEnableDepthTest(temp_s3, temp_s3);
                __glBeginMode = 2;
                temp_s3->dirtyMask |= 0x80;
            }
            var_a3 = 0x10000;
            if (temp_s6 & 0x2000) {
                if (temp_s3->haveZ == 0) {
                    temp_a1_2 = temp_s3->state.enables.general;
                    if (~temp_s5->unk608 & temp_a1_2 & 0x4000) {
                        sp20 = var_ra;
                        __glReadjustZCounts(temp_s3, temp_a1_2);
                    }
                    var_a3 = ~temp_s3->state.enables.general & temp_s5->unk608 & 0x4000;
                    if (var_a3 != 0) {
                        sp20 = var_ra;
                        temp_s3->depthBuffer.unk54 = temp_s3->depthBuffer.unk50;
                    }
                }
                temp_a2_4 = (s64) temp_s5->unk608;
                temp_s3->unk6A0 = temp_a2_4;
                temp_a1_3 = temp_s5->unk610;
                temp_s3->unk6A8 = temp_a1_3;
                temp_s3->unk6B0 = (s64) temp_s5->unk618;
                __glBeginMode = 2;
                sp20 = var_ra;
                temp_s3->dirtyMask |= 0xBE;
                __glExpEnableDepthTest(temp_s3, temp_s3, temp_a1_3, temp_a2_4, var_a3);
                ((? (*)(__GLcontext *)) temp_s3->procs.table[0x2A])(temp_s3);
                ((? (*)(__GLcontext *)) temp_s3->procs.table[0x15])(temp_s3);
                ((? (*)(__GLcontext *)) temp_s3->procs.table[0x13])(temp_s3);
                __glExpEnableBlendFunc(temp_s3, temp_s3);
                __glExpEnableLogicOp(temp_s3, temp_s3);
                __glExpEnableDepthTest(temp_s3, temp_s3);
                __glExpEnableDither(temp_s3, temp_s3);
                __glExpEnableFog(temp_s3, temp_s3);
                __glExpEnableCullFace(temp_s3, temp_s3);
                __glExpEnableLineStipple(temp_s3, temp_s3);
                __glExpEnablePolygonStipple(temp_s3, temp_s3);
                __glExpEnableStencilTest(temp_s3, temp_s3);
                __glExpEnableClipPlanes(temp_s3, temp_s3);
                __glExpEnableLineSmooth(temp_s3, temp_s3);
                __glExpEnablePointSmooth(temp_s3, temp_s3);
                __glExpUpdateLightingState(temp_s3, temp_s3);
                __glExpPassPolygonOffset(temp_s3, temp_s3);
            }
            var_a3_2 = temp_s6 & 0x80;
            if (temp_s6 & 0x10000) {
                temp_s3->state.evaluator.unk0 = temp_s5->unk688;
                temp_s3->state.evaluator.unk8 = temp_s5->unk690;
                temp_s3->state.evaluator.unk10 = temp_s5->unk698;
                temp_s3->state.evaluator.unk18 = temp_s5->unk6A0;
                temp_s3->state.evaluator.unk20 = temp_s5->unk6A8;
                temp_s3->state.evaluator.unk28 = temp_s5->unk6B0;
                temp_a3_3 = temp_s3->state.enables.general & ~0x800000;
                temp_s3->state.enables.general = temp_a3_3;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0x800000) | temp_a3_3;
                temp_s3->state.enables.pixelPath = (u32) temp_s5->unk618;
                temp_s3->state.enables.eval = temp_s5->unk61C;
                var_a3_2 = temp_s6 & 0x80;
            }
            var_a0_3 = 0xA;
            if (var_a3_2 != 0) {
                var_a1_3 = 0;
                temp_a2_5 = &temp_s3->state.fog;
                temp_a4_4 = temp_s5 + 0x53C;
                do {
                    temp_v0_2 = var_a1_3 + temp_a2_5;
                    temp_at_2 = var_a1_3 + temp_a4_4;
                    var_a1_3 += 4;
                    var_a0_3 -= 1;
                    *temp_v0_2 = *temp_at_2;
                } while (var_a0_3 > 0);
                temp_v1_2 = temp_s3->state.enables.general & ~0x20;
                temp_s3->state.enables.general = temp_v1_2;
                sp20 = var_ra;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0x20) | temp_v1_2;
                __glExpEnableFog(temp_s3, temp_s3, var_a1_3, temp_a2_5, var_a3_2, temp_a4_4);
                __glExpPassFog(temp_s3, temp_s3);
            }
            var_a3_3 = temp_s6 & 0x40;
            if (temp_s6 & 0x8000) {
                temp_s3->state.hints.perspectiveCorrection = temp_s5->unk66C;
                temp_s3->state.hints.pointSmooth = temp_s5->unk670;
                temp_s3->state.hints.lineSmooth = temp_s5->unk674;
                temp_s3->state.hints.polygonSmooth = temp_s5->unk678;
                temp_s3->state.hints.fog = temp_s5->unk67C;
                temp_s3->state.hints.textureBuffer = temp_s5->unk680;
                temp_s3->state.hints.generateMipmap = temp_s5->unk684;
                var_a3_3 = temp_s6 & 0x40;
            }
            var_at = temp_s6 & 4;
            if (var_a3_3 != 0) {
                temp_s3->state.light.colorMaterialFace = temp_s5->unk478;
                temp_s3->state.light.colorMaterialParam = temp_s5->unk47C;
                temp_s3->state.light.shadingModel = temp_s5->unk480;
                temp_s3->state.light.model.ambient.r = temp_s5->unk484;
                temp_s3->state.light.model.ambient.g = temp_s5->unk488;
                temp_s3->state.light.model.ambient.b = temp_s5->unk48C;
                temp_s3->state.light.model.ambient.a = temp_s5->unk490;
                var_a1_4 = 0xA;
                var_a0_4 = 0;
                temp_s3->unk52C = (s32) temp_s5->unk494;
                do {
                    temp_v0_3 = var_a0_4 + &temp_s3->state.light.front;
                    temp_at_3 = var_a0_4 + (temp_s5 + 0x498);
                    var_a0_4 += 8;
                    var_a1_4 -= 1;
                    *temp_v0_3 = *temp_at_3;
                } while (var_a1_4 > 0);
                var_a1_5 = 0xA;
                var_a0_5 = 0;
                do {
                    temp_v1_3 = var_a0_5 + &temp_s3->state.light.back;
                    temp_v0_4 = var_a0_5 + (temp_s5 + 0x4E8);
                    var_a0_5 += 8;
                    var_a1_5 -= 1;
                    *temp_v1_3 = *temp_v0_4;
                } while (var_a1_5 > 0);
                sp20 = var_ra;
                memcpy(temp_s3->state.light.source, temp_s5->unk538, temp_s3->constants.numberOfLights * 0x74);
                temp_s3->imports.free(temp_s3, temp_s5->unk538);
                temp_s5->unk538 = NULL;
                temp_a6_2 = temp_s3->state.enables.general & ~0xC0;
                temp_s3->state.enables.general = temp_a6_2;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0xC0) | temp_a6_2;
                temp_s3->state.enables.lights = (u32) temp_s5->unk610;
                __glBeginMode = 2;
                temp_s3->dirtyMask |= 0x20;
                __glExpPassShadeModel(temp_s3, temp_s3);
                __glExpUpdateLightingState(temp_s3, temp_s3);
                var_at = temp_s6 & 4;
            }
            if (var_at != 0) {
                temp_s3->state.line.requestedWidth = temp_s5->unk124;
                temp_s3->state.line.smoothWidth = temp_s5->unk128;
                temp_a4_5 = temp_s5->unk12C;
                temp_s3->state.line.aliasedWidth = temp_a4_5;
                temp_a3_4 = temp_s5->unk130;
                temp_s3->state.line.stipple = temp_a3_4;
                temp_a2_6 = temp_s5->unk132;
                temp_a0_2 = temp_s3->state.enables.general & ~0x300;
                temp_s3->state.enables.general = temp_a0_2;
                temp_s3->state.line.stippleRepeat = temp_a2_6;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0x300) | temp_a0_2;
                __glBeginMode = 2;
                sp20 = var_ra;
                temp_s3->dirtyMask |= 2;
                __glExpPassLineWidth(temp_s3, temp_s3, -0x301, temp_a2_6, temp_a3_4, temp_a4_5);
                __glExpPassLineStipple(temp_s3, temp_s3);
                __glExpEnableLineStipple(temp_s3, temp_s3);
                __glExpEnableLineSmooth(temp_s3, temp_s3);
            }
            var_v1 = temp_s6 & 0x20;
            if (temp_s6 & 0x20000) {
                temp_s3->state.list.listBase = temp_s5->unk6B8;
                var_v1 = temp_s6 & 0x20;
            }
            var_a0_6 = 0xF;
            if (var_v1 != 0) {
                var_a2 = NULL;
                temp_a4_6 = &temp_s3->state.pixel;
                temp_a5_3 = temp_s5 + 0x1D0;
                do {
                    temp_at_4 = var_a2 + temp_a4_6;
                    temp_a3_5 = var_a2 + temp_a5_3;
                    var_a2 += 8;
                    temp_a3_6 = *temp_a3_5;
                    var_a0_6 -= 1;
                    *temp_at_4 = temp_a3_6;
                } while (var_a0_6 > 0);
                temp_a6_3 = *(var_a2 + temp_a5_3);
                temp_a7 = var_a2 + temp_a4_6;
                *temp_a7 = temp_a6_3;
                temp_a5_4 = temp_s5->unk3E8;
                temp_s3->state.pixel.unk218 = temp_a5_4;
                temp_a4_7 = temp_s5->unk3E4;
                sp20 = var_ra;
                temp_s3->state.pixel.unk214 = temp_a4_7;
                __glCopyColorTableScaleBias(temp_s5 + 0x8E4, &temp_s3->unk131C, var_a2, temp_a3_6, temp_a4_7, temp_a5_4, temp_a6_3, temp_a7);
                temp_v1_4 = temp_s3->state.enables.general & ~0x0E000000;
                temp_s3->state.enables.general = temp_v1_4;
                temp_v0_5 = ((temp_s5->unk608 & 0x0E000000) | temp_v1_4) & ~0x30000000;
                temp_s3->state.enables.general = temp_v0_5;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0x30000000) | temp_v0_5;
                __glBeginMode = 2;
                temp_s3->dirtyMask |= 0x10;
            }
            var_a3_4 = temp_s6 & 8;
            if (temp_s6 & 2) {
                temp_s3->state.point.requestedSize = temp_s5->unk118;
                temp_s3->state.point.smoothSize = temp_s5->unk11C;
                temp_a2_7 = temp_s5->unk120;
                temp_a0_3 = temp_s3->state.enables.general & ~0x400;
                temp_s3->state.enables.general = temp_a0_3;
                temp_s3->state.point.aliasedSize = temp_a2_7;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0x400) | temp_a0_3;
                __glBeginMode = 2;
                sp20 = var_ra;
                temp_s3->dirtyMask |= 8;
                __glExpEnablePointSmooth(temp_s3, temp_s3, -0x401, temp_a2_7, var_a3_4);
                var_a3_4 = temp_s6 & 8;
            }
            var_a3_5 = temp_s6 & 0x10;
            if (var_a3_4 != 0) {
                temp_s3->state.polygon.frontMode = temp_s5->unk134;
                temp_s3->state.polygon.backMode = temp_s5->unk138;
                temp_s3->state.polygon.cull = temp_s5->unk13C;
                sp20 = var_ra;
                temp_s3->state.polygon.frontFaceDirection = temp_s5->unk140;
                temp_s3->state.polygon.factor = temp_s5->unk144;
                temp_s3->state.polygon.units = temp_s5->unk148;
                temp_a6_4 = temp_s3->state.enables.texture & ~0x600;
                temp_t1_2 = temp_s3->state.enables.general & (M2C_ERROR(/* Read from unset register $t9 */) + 0x1A2D44)->unk-5668;
                temp_s3->state.enables.general = temp_t1_2;
                temp_s3->state.polygon.mask = temp_s5->unk14C;
                temp_s3->state.enables.texture = temp_a6_4;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0x01003800) | temp_t1_2;
                temp_s3->state.enables.texture = (temp_s5->unk60C & 0x600) | temp_a6_4;
                __glBeginMode = 2;
                temp_s3->dirtyMask |= 4;
                __glExpPassCullFace(temp_s3, temp_s3);
                __glExpEnableCullFace(temp_s3, temp_s3);
                __glExpPassFrontFace(temp_s3, temp_s3);
                __glExpEnablePolygonStipple(temp_s3, temp_s3);
                __glExpPassPolygonMode(temp_s3, temp_s3);
                __glExpPassPolygonOffset(temp_s3, temp_s3);
                var_a3_5 = temp_s6 & 0x10;
            }
            var_a0_7 = 0x10;
            if (var_a3_5 != 0) {
                var_a1_6 = 0;
                temp_a2_8 = &temp_s3->state.polygonStipple;
                temp_a4_8 = temp_s5 + 0x150;
                do {
                    temp_v0_6 = &temp_a2_8->stipple[var_a1_6];
                    temp_at_5 = var_a1_6 + temp_a4_8;
                    var_a1_6 += 8;
                    var_a0_7 -= 1;
                    *temp_v0_6 = (s64) *temp_at_5;
                } while (var_a0_7 > 0);
                temp_v1_5 = temp_s3->state.enables.general & ~0x2000;
                temp_s3->state.enables.general = temp_v1_5;
                sp20 = var_ra;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0x2000) | temp_v1_5;
                temp_s3->procs.unk348(temp_s3, var_a1_6, temp_a2_8, var_a3_5, temp_a4_8);
                __glBeginMode = 2;
                temp_s3->dirtyMask |= 4;
            }
            var_at_2 = temp_s6 & 0x400;
            if (temp_s6 & 0x80000) {
                temp_a1_4 = temp_s3->state.enables.general;
                if (temp_s3->haveZ == 0) {
                    if (((temp_a1_4 & 0x4000) && ((temp_s5->unk8D4 != temp_s3->state.scissor.scissorX) || (temp_s5->unk8D8 != temp_s3->state.scissor.scissorY) || (temp_s5->unk8DC != temp_s3->state.scissor.scissorWidth) || (temp_s5->unk8E0 != temp_s3->state.scissor.scissorHeight))) || (~temp_s5->unk608 & temp_a1_4 & 0x4000)) {
                        sp20 = var_ra;
                        __glReadjustZCounts(temp_s3, temp_a1_4);
                    }
                    if (~temp_s3->state.enables.general & temp_s5->unk608 & 0x4000) {
                        sp20 = var_ra;
                        temp_s3->depthBuffer.unk54 = temp_s3->depthBuffer.unk50;
                    }
                }
                temp_a5_5 = temp_s5->unk8D4;
                temp_s3->state.scissor.scissorX = temp_a5_5;
                temp_a4_9 = temp_s5->unk8D8;
                temp_s3->state.scissor.scissorY = temp_a4_9;
                temp_a3_7 = temp_s5->unk8DC;
                temp_s3->state.scissor.scissorWidth = temp_a3_7;
                temp_a2_9 = temp_s5->unk8E0;
                temp_a1_5 = temp_s3->state.enables.general & ~0x4000;
                temp_s3->state.enables.general = temp_a1_5;
                temp_s3->state.scissor.scissorHeight = temp_a2_9;
                sp20 = var_ra;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0x4000) | temp_a1_5;
                ((? (*)(__GLcontext *, u32, s32, s32, s32, s32)) temp_s3->procs.table[0x15])(temp_s3, temp_a1_5, temp_a2_9, temp_a3_7, temp_a4_9, temp_a5_5);
                ((? (*)(__GLcontext *)) temp_s3->procs.table[0x13])(temp_s3);
                var_at_2 = temp_s6 & 0x400;
            }
            if (var_at_2 != 0) {
                temp_a5_6 = temp_s5->unk588;
                sp20 = var_ra;
                temp_s3->unk620 = temp_a5_6;
                temp_a4_10 = temp_s5->unk590;
                temp_s3->unk628 = temp_a4_10;
                temp_a2_10 = ~0x8000;
                temp_a3_8 = temp_s5->unk598;
                temp_v1_6 = temp_s3->state.enables.general & temp_a2_10;
                temp_s3->state.enables.general = temp_v1_6;
                temp_s3->unk630 = temp_a3_8;
                temp_a1_6 = temp_s3->validateMask | 6;
                temp_s3->validateMask = temp_a1_6;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0x8000) | temp_v1_6;
                __glExpPassStencilMode(temp_s3, temp_s3, temp_a1_6, temp_a2_10, temp_a3_8, temp_a4_10, temp_a5_6);
                __glExpEnableStencilTest(temp_s3, temp_s3);
                __glExpPassStencilMask(temp_s3, temp_s3);
            }
            var_a1_7 = 0x1F;
            if (temp_s6 & 0x40000) {
                var_a0_8 = 0;
                temp_s4 = temp_s3->constants.maxViewportWidth;
                do {
                    temp_v1_7 = var_a0_8 + &temp_s3->state.texture;
                    temp_v0_7 = var_a0_8 + (temp_s5 + 0x6BC);
                    var_a0_8 += 4;
                    var_a1_7 -= 1;
                    *temp_v1_7 = *temp_v0_7;
                } while (var_a1_7 > 0);
                var_a1_8 = 0xF;
                var_a0_9 = 0;
                temp_a4_11 = &temp_s3->state.texture.unk7C;
                temp_a5_7 = temp_s5 + 0x738;
                do {
                    temp_a3_9 = var_a0_9 + temp_a4_11;
                    temp_v1_8 = var_a0_9 + temp_a5_7;
                    var_a0_9 += 8;
                    var_a1_8 -= 1;
                    *temp_a3_9 = *temp_v1_8;
                } while (var_a1_8 > 0);
                var_a2_2 = 0x1F;
                var_a1_9 = 0;
                temp_a6_5 = &temp_s3->state.texture.unkF8;
                temp_a7_2 = temp_s5 + 0x7B4;
                var_a0_10 = 0xF;
                temp_a5_8 = &temp_s3->state.texture.unk174;
                *(var_a0_9 + temp_a4_11) = *(var_a0_9 + temp_a5_7);
                do {
                    temp_v0_8 = var_a1_9 + temp_a6_5;
                    temp_at_6 = var_a1_9 + temp_a7_2;
                    var_a1_9 += 4;
                    var_a2_2 -= 1;
                    *temp_v0_8 = *temp_at_6;
                } while (var_a2_2 > 0);
                temp_a4_12 = temp_s5 + 0x830;
                var_a2_3 = 0;
                do {
                    temp_v1_9 = var_a2_3 + temp_a5_8;
                    temp_v0_9 = var_a2_3 + temp_a4_12;
                    var_a2_3 += 8;
                    var_a0_10 -= 1;
                    *temp_v1_9 = *temp_v0_9;
                } while (var_a0_10 > 0);
                *(var_a2_3 + temp_a5_8) = *(var_a2_3 + temp_a4_12);
                temp_s3->state.texture.unk1F8 = temp_s5->unk8B4;
                temp_s3->state.texture.unk1FC = temp_s5->unk8B8;
                temp_s3->state.texture.unk200 = temp_s5->unk8BC;
                temp_s3->state.texture.unk204 = temp_s5->unk8C0;
                temp_s3->state.texture.unk208 = temp_s5->unk8C4;
                temp_s3->state.texture.unk20C = temp_s5->unk8C8;
                sp20 = var_ra;
                temp_s3->state.texture.unk210 = temp_s5->unk8CC;
                var_s0 = 0;
                temp_s3->state.texture.unk214 = temp_s5->unk8D0;
                var_s2 = temp_s3->state.texture.unk1F0;
                var_s1 = temp_s5->unk8AC;
                if (temp_s4 != 0) {
                    temp_a3_10 = temp_s4 & 1;
                    var_a0_11 = temp_s4;
                    if (temp_a3_10 != 0) {
                        temp_a2_11 = var_s1->unkD8;
                        if (var_s2->unkD8 != temp_a2_11) {
                            sp28 = (s64) var_a0_11;
                            sp20 = var_ra;
                            __glBindTexture(temp_s3, 0, temp_a2_11, temp_a3_10, temp_a4_12, temp_a5_8, temp_a6_5, temp_a7_2);
                            var_a0_11 = (s32) sp28;
                        }
                        var_s1 += 0xE0;
                        var_s2 += 0xE0;
                        var_s0 = 1;
                    }
                    sp20 = var_ra;
                    if ((var_a0_11 >> 1) != 0) {
loop_80:
                        temp_a2_12 = var_s1->unkD8;
                        if (var_s2->unkD8 != temp_a2_12) {
                            __glExpUpdateViewport(temp_s3, temp_s3, var_s0, temp_a2_12);
                        }
                        temp_a2_13 = var_s1->unk1B8;
                        temp_at_7 = var_s2->unk1B8;
                        var_s1 += 0x1C0;
                        var_s2 += 0x1C0;
                        temp_s0 = var_s0 + 1;
                        if (temp_at_7 != temp_a2_13) {
                            __glBindTexture(temp_s3, temp_s0, temp_a2_13);
                        }
                        var_s0 = temp_s0 + 1;
                        if (temp_s4 != var_s0) {
                            goto loop_80;
                        }
                    }
                }
                memcpy(temp_s3->state.texture.unk1F0, temp_s5->unk8AC, temp_s4 * 0xE0);
                memcpy(temp_s3->state.texture.unk1F4, temp_s5->unk8B0, temp_s3->constants.maxViewportHeight * 0x24);
                temp_s3->imports.free(temp_s3, temp_s5->unk8AC);
                temp_s5->unk8AC = NULL;
                temp_s3->imports.free(temp_s3, temp_s5->unk8B0);
                temp_s5->unk8B0 = NULL;
                temp_at_8 = temp_s3->state.enables.general & 0x3FC0FFFF;
                temp_s3->state.enables.general = temp_at_8;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0xC03F0000) | temp_at_8;
                var_ra = sp20;
            }
            var_at_3 = temp_s6 & 0x800;
            if (temp_s6 & 0x1000) {
                sp20 = var_ra;
                temp_s3->state.transform.matrixMode = temp_s5->unk5D8;
                memcpy(temp_s3->state.transform.eyeClipPlanes, temp_s5->unk5DC, temp_s3->constants.numberOfClipPlanes * 0x10);
                temp_s3->imports.free(temp_s3, temp_s5->unk5DC);
                temp_s5->unk5DC = NULL;
                temp_a5_9 = temp_s3->state.enables.general & ~0x400000;
                temp_s3->state.enables.general = temp_a5_9;
                temp_s3->state.enables.general = (temp_s5->unk608 & 0x400000) | temp_a5_9;
                temp_s3->state.enables.clipPlanes = temp_s5->unk614;
                __glExpEnableClipPlanes(temp_s3, temp_s3);
                __glExpPassClipPlanes(temp_s3, temp_s3);
                __glExpEnableNormalize(temp_s3, temp_s3);
                var_at_3 = temp_s6 & 0x800;
            }
            if (var_at_3 != 0) {
                temp_a4_13 = temp_s5->unk5A0;
                temp_s3->unk638 = temp_a4_13;
                temp_a3_11 = temp_s5->unk5A8;
                temp_s3->unk640 = temp_a3_11;
                temp_a2_14 = temp_s5->unk5B0;
                temp_s3->state.viewport.zNear = temp_a2_14;
                temp_a1_7 = temp_s5->unk5B8;
                temp_s3->state.viewport.zFar = temp_a1_7;
                temp_s3->unk658 = (s64) temp_s5->unk5C0;
                sp20 = var_ra;
                temp_s3->unk660 = (s64) temp_s5->unk5C8;
                temp_s3->unk668 = (s64) temp_s5->unk5D0;
                __glExpUpdateViewport(temp_s3, temp_s3, temp_a1_7, temp_a2_14, temp_a3_11, temp_a4_13);
            }
            temp_s5->unk0 = 0;
            __glBeginMode = 2;
            temp_s3->dirtyMask |= 1;
            return;
        }
        __glSetError(GL_STACK_UNDERFLOW);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_Enable(enum GLenum cap) {
    __GLcontext *temp_s0;
    s32 temp_a1;
    s32 temp_a1_10;
    s32 temp_a1_13;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a1_9;
    s32 temp_a2_2;
    u32 temp_a1_11;
    u32 temp_a1_12;
    u32 temp_a1_14;
    u32 temp_a1_4;
    u32 temp_a1_5;
    u32 temp_a1_8;
    u32 temp_a2;
    u32 temp_a2_3;
    u32 temp_a2_4;
    u32 temp_a2_5;
    u32 temp_a2_6;
    u32 temp_a2_7;
    u32 temp_a2_8;
    u32 temp_a3;
    u32 temp_a4;
    u32 temp_a4_2;
    u32 temp_a4_3;
    u32 temp_a4_4;
    u32 temp_a5;
    u32 temp_a7;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a1 = cap < GL_MAP2_VERTEX_3;
        if (cap >= GL_MAP2_TEXTURE_COORD_4) {
            if (temp_a1 != 0) {
                goto block_3;
            }
            if (cap >= GL_LIGHT6) {
                if (cap < GL_LIGHT7) {
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    temp_a1_2 = cap - 0x4000;
                    temp_s0->state.enables.lights |= 1 << temp_a1_2;
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, temp_a1_2);
                    return;
                }
                if (cap >= GL_NORMAL_ARRAY) {
                    if (cap > GL_NORMAL_ARRAY) {
                        if (cap >= GL_TEXTURE_COLOR_TABLE_SGI) {
                            if (cap > GL_TEXTURE_COLOR_TABLE_SGI) {
                                if (cap >= GL_POST_CONVOLUTION_COLOR_TABLE_SGI) {
                                    if (cap > GL_POST_CONVOLUTION_COLOR_TABLE_SGI) {
                                        if (cap == GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI) {
                                            temp_s0->state.enables.texture |= 4;
                                            __glBeginMode = 2;
                                            temp_s0->dirtyMask |= 0x10;
                                            /* Duplicate return node #4. Try simplifying control flow for better match */
                                            __glBeginMode = 2;
                                            temp_s0->dirtyMask |= 1;
                                            return;
                                        }
                                        /* Duplicate return node #31. Try simplifying control flow for better match */
                                        __glSetError(GL_INVALID_ENUM);
                                        return;
                                    }
                                    temp_s0->state.enables.texture |= 2;
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 0x10;
                                    /* Duplicate return node #4. Try simplifying control flow for better match */
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 1;
                                    return;
                                }
                                if (cap == GL_COLOR_TABLE_SGI) {
                                    temp_s0->state.enables.texture |= 1;
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 0x10;
                                    /* Duplicate return node #4. Try simplifying control flow for better match */
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 1;
                                    return;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            temp_s0->state.enables.general |= 0x80000000;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        if (cap >= GL_TEXTURE_COORD_ARRAY) {
                            if (cap > GL_TEXTURE_COORD_ARRAY) {
                                if (cap == GL_EDGE_FLAG_ARRAY) {
                                    temp_s0->unk1318 |= 0x10;
                                    temp_s0->unk1314 |= 0x08000000;
                                    return;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            temp_s0->unk1318 |= 4;
                            temp_s0->unk1314 |= 0x07F00000;
                            return;
                        }
                        if (cap >= GL_INDEX_ARRAY) {
                            if (cap <= GL_INDEX_ARRAY) {
                                temp_s0->unk1318 |= 8;
                                temp_s0->unk1314 |= 0xF0000000;
                                return;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        if (cap == GL_COLOR_ARRAY) {
                            temp_s0->unk1318 |= 2;
                            temp_s0->unk1314 |= 0xFF000;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    temp_s0->unk1318 |= 1;
                    temp_s0->unk1314 |= 0xF00;
                    return;
                }
                if (cap >= GL_HISTOGRAM_EXT) {
                    if (cap > GL_HISTOGRAM_EXT) {
                        if (cap >= GL_TEXTURE_3D_EXT) {
                            if (cap > GL_TEXTURE_3D_EXT) {
                                if (cap == GL_VERTEX_ARRAY) {
                                    temp_s0->unk1318 |= 0x20;
                                    temp_s0->unk1314 |= 0xFF;
                                    return;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            temp_s0->state.enables.general |= 0x40000000;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        temp_a1_3 = cap > GL_POLYGON_OFFSET_FILL;
                        if (cap >= GL_POLYGON_OFFSET_FILL) {
                            if (temp_a1_3 == 0) {
                                temp_a4 = temp_s0->state.enables.general | 0x01000000;
                                temp_s0->state.enables.general = temp_a4;
                                __glBeginMode = 2;
                                temp_a2 = temp_s0->dirtyMask | 4;
                                temp_s0->dirtyMask = temp_a2;
                                __glExpPassPolygonOffset(temp_s0, temp_s0, temp_a1_3, temp_a2, 2, temp_a4, 0x01000000);
                                /* Duplicate return node #4. Try simplifying control flow for better match */
                                __glBeginMode = 2;
                                temp_s0->dirtyMask |= 1;
                                return;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        if (cap == GL_MINMAX_EXT) {
                            temp_s0->state.enables.general |= 0x20000000;
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x10;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    temp_s0->state.enables.general |= 0x10000000;
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x10;
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 1;
                    return;
                }
                if (cap >= GL_CONVOLUTION_2D_EXT) {
                    if (cap > GL_CONVOLUTION_2D_EXT) {
                        if (cap == GL_SEPARABLE_2D_EXT) {
                            temp_s0->state.enables.general |= 0x08000000;
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x10;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    temp_s0->state.enables.general |= 0x04000000;
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x10;
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 1;
                    return;
                }
                if (cap >= GL_CONVOLUTION_1D_EXT) {
                    if (cap <= GL_CONVOLUTION_1D_EXT) {
                        temp_s0->state.enables.general |= 0x02000000;
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 0x10;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                if (cap == GL_LIGHT7) {
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    temp_a1_2 = cap - 0x4000;
                    temp_s0->state.enables.lights |= 1 << temp_a1_2;
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, temp_a1_2);
                    return;
                }
                /* Duplicate return node #31. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            if (cap >= GL_CLIP_PLANE3) {
                if (cap < GL_CLIP_PLANE4) {
                    goto block_34;
                }
                if (cap >= GL_LIGHT2) {
                    if (cap >= GL_LIGHT3) {
                        if (cap >= GL_LIGHT4) {
                            if (cap >= GL_LIGHT5) {
                                if (cap == GL_LIGHT5) {
                                    /* Duplicate return node #25. Try simplifying control flow for better match */
                                    temp_a1_2 = cap - 0x4000;
                                    temp_s0->state.enables.lights |= 1 << temp_a1_2;
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 0x20;
                                    __glExpValidateLightSource(temp_s0, temp_a1_2);
                                    return;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            /* Duplicate return node #25. Try simplifying control flow for better match */
                            temp_a1_2 = cap - 0x4000;
                            temp_s0->state.enables.lights |= 1 << temp_a1_2;
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x20;
                            __glExpValidateLightSource(temp_s0, temp_a1_2);
                            return;
                        }
                        if (cap == GL_LIGHT3) {
                            /* Duplicate return node #25. Try simplifying control flow for better match */
                            temp_a1_2 = cap - 0x4000;
                            temp_s0->state.enables.lights |= 1 << temp_a1_2;
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x20;
                            __glExpValidateLightSource(temp_s0, temp_a1_2);
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    temp_a1_2 = cap - 0x4000;
                    temp_s0->state.enables.lights |= 1 << temp_a1_2;
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, temp_a1_2);
                    return;
                }
                if (cap >= GL_LIGHT0) {
                    if (cap >= GL_LIGHT1) {
                        if (cap == GL_LIGHT1) {
                            /* Duplicate return node #25. Try simplifying control flow for better match */
                            temp_a1_2 = cap - 0x4000;
                            temp_s0->state.enables.lights |= 1 << temp_a1_2;
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x20;
                            __glExpValidateLightSource(temp_s0, temp_a1_2);
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    temp_a1_2 = cap - 0x4000;
                    temp_s0->state.enables.lights |= 1 << temp_a1_2;
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, temp_a1_2);
                    return;
                }
                if (cap >= GL_CLIP_PLANE5) {
                    if (cap < 0x3006U) {
                        goto block_34;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                if (cap == GL_CLIP_PLANE4) {
                    goto block_34;
                }
                /* Duplicate return node #31. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            if (cap >= GL_POLYGON_OFFSET_POINT) {
                if (cap >= GL_POLYGON_OFFSET_LINE) {
                    if (cap >= GL_CLIP_PLANE1) {
                        if (cap >= GL_CLIP_PLANE2) {
                            if (cap == GL_CLIP_PLANE2) {
                                goto block_34;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        goto block_34;
                    }
                    if (cap >= GL_CLIP_PLANE0) {
                        if (cap < GL_CLIP_PLANE1) {
block_34:
                            temp_a2_2 = 1 << (cap - 0x3000);
                            temp_a1_4 = temp_s0->state.enables.clipPlanes | temp_a2_2;
                            temp_s0->state.enables.clipPlanes = temp_a1_4;
                            __glExpEnableClipPlanes(temp_s0, temp_s0, temp_a1_4, temp_a2_2, cap, 1);
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    if (cap == GL_POLYGON_OFFSET_LINE) {
                        temp_a1_5 = temp_s0->state.enables.texture | 0x400;
                        temp_s0->state.enables.texture = temp_a1_5;
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 4;
                        __glExpPassPolygonOffset(temp_s0, temp_s0, temp_a1_5, 2, cap, 1);
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                temp_a7 = temp_s0->state.enables.texture | 0x200;
                temp_s0->state.enables.texture = temp_a7;
                __glBeginMode = 2;
                temp_a5 = temp_s0->dirtyMask | 4;
                temp_s0->dirtyMask = temp_a5;
                __glExpPassPolygonOffset(temp_s0, temp_s0, temp_a1, 2, cap, 1, temp_a5, 2, temp_a7);
                /* Duplicate return node #4. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 1;
                return;
            }
            if (cap >= GL_TEXTURE_1D) {
                if (cap >= GL_TEXTURE_2D) {
                    if (cap == GL_TEXTURE_2D) {
                        temp_s0->state.enables.general |= 0x20000;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                temp_s0->state.enables.general |= 0x10000;
                /* Duplicate return node #4. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 1;
                return;
            }
            if (cap >= GL_MAP2_VERTEX_4) {
                if (cap < 0xDB9U) {
                    goto block_3;
                }
                /* Duplicate return node #31. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            if (cap == GL_MAP2_VERTEX_3) {
                goto block_3;
            }
            /* Duplicate return node #31. Try simplifying control flow for better match */
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        temp_a1_6 = cap < GL_TEXTURE_GEN_T;
        if (temp_a1_6 == 0) {
            if (cap >= GL_TEXTURE_GEN_R) {
                if (cap >= GL_MAP1_TEXTURE_COORD_4) {
                    if (cap >= GL_MAP1_VERTEX_3) {
                        if (cap >= GL_MAP2_NORMAL) {
                            if (cap >= GL_MAP2_TEXTURE_COORD_1) {
                                if (cap >= GL_MAP2_TEXTURE_COORD_2) {
                                    if (cap >= GL_MAP2_TEXTURE_COORD_3) {
                                        if (cap == GL_MAP2_TEXTURE_COORD_3) {
                                            goto block_3;
                                        }
                                        /* Duplicate return node #31. Try simplifying control flow for better match */
                                        __glSetError(GL_INVALID_ENUM);
                                        return;
                                    }
                                    goto block_3;
                                }
                                if (cap == GL_MAP2_TEXTURE_COORD_1) {
                                    goto block_3;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            goto block_3;
                        }
                        if (cap >= GL_MAP2_COLOR_4) {
                            if (cap >= GL_MAP2_INDEX) {
                                if (cap == GL_MAP2_INDEX) {
                                    goto block_3;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
block_3:
                            temp_s0->state.enables.eval |= (1 << (cap - 0xDB0)) & 0xFFFF;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        if (cap >= GL_MAP1_VERTEX_4) {
                            if (cap < 0xD99U) {
                                goto block_45;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        if (cap == GL_MAP1_VERTEX_3) {
                            goto block_45;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    goto block_45;
                }
                if (cap >= GL_MAP1_INDEX) {
                    switch (cap) {                  /* irregular */
                    case GL_MAP1_TEXTURE_COORD_3:
                        goto block_45;
                    case GL_MAP1_NORMAL:
                        goto block_45;
                    }
                } else {
                    if (cap >= GL_AUTO_NORMAL) {
                        if (cap >= 0xD81U) {
                            if (cap == GL_MAP1_COLOR_4) {
block_45:
                                temp_s0->state.enables.pixelPath |= (1 << (cap - 0xD90)) & 0xFFFF;
                                /* Duplicate return node #4. Try simplifying control flow for better match */
                                __glBeginMode = 2;
                                temp_s0->dirtyMask |= 1;
                                return;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        temp_s0->state.enables.general |= 0x800000;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    if (cap >= GL_TEXTURE_GEN_Q) {
                        if (cap < 0xC64U) {
                            temp_s0->state.enables.general |= 0x200000;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    if (cap == GL_TEXTURE_GEN_R) {
                        temp_s0->state.enables.general |= 0x100000;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                }
            } else {
                temp_s0->state.enables.general |= 0x80000;
                /* Duplicate return node #4. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 1;
            }
        } else {
            if (cap >= GL_DEPTH_TEST) {
                if (cap >= GL_DEPTH_WRITEMASK) {
                    temp_a1_7 = cap < 0xBE3U;
                    if (cap >= GL_BLEND) {
                        if (temp_a1_7 == 0) {
                            if (cap >= GL_SCISSOR_TEST) {
                                if (cap >= 0xC12U) {
                                    if (cap == GL_TEXTURE_GEN_S) {
                                        temp_s0->state.enables.general |= 0x40000;
                                        /* Duplicate return node #4. Try simplifying control flow for better match */
                                        __glBeginMode = 2;
                                        temp_s0->dirtyMask |= 1;
                                        return;
                                    }
                                    /* Duplicate return node #31. Try simplifying control flow for better match */
                                    __glSetError(GL_INVALID_ENUM);
                                    return;
                                }
                                temp_a2_3 = temp_s0->state.enables.general;
                                if (temp_s0->haveZ == 0) {
                                    if (!(temp_a2_3 & 0x4000)) {
                                        if ((temp_s0->state.depth.writeEnable != 0) && (temp_s0->modes.haveDepthBuffer != 0)) {
                                            temp_s0->depthBuffer.unk54 = temp_s0->depthBuffer.unk50;
                                        }
                                        goto block_171;
                                    }
                                    return;
                                }
block_171:
                                temp_a1_8 = temp_a2_3 | 0x4000;
                                temp_s0->state.enables.general = temp_a1_8;
                                ((? (*)(__GLcontext *, u32, u32, enum GLenum, ?)) temp_s0->procs.table[0x15])(temp_s0, temp_a1_8, temp_a2_3, cap, 1);
                                ((? (*)(__GLcontext *)) temp_s0->procs.table[0x13])(temp_s0);
                                /* Duplicate return node #4. Try simplifying control flow for better match */
                                __glBeginMode = 2;
                                temp_s0->dirtyMask |= 1;
                                return;
                            }
                            if (cap >= GL_COLOR_LOGIC_OP) {
                                if (cap < 0xBF3U) {
                                    temp_s0->state.enables.texture |= 0x800;
                                    __glexpim_BlendEquationEXT(GL_INDEX_LOGIC_OP);
                                    /* Duplicate return node #4. Try simplifying control flow for better match */
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 1;
                                    return;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            if (cap == GL_INDEX_LOGIC_OP) {
                                temp_s0->state.enables.general |= 4;
                                __glExpEnableLogicOp(temp_s0, temp_s0, temp_a1_7);
                                /* Duplicate return node #4. Try simplifying control flow for better match */
                                __glBeginMode = 2;
                                temp_s0->dirtyMask |= 1;
                                return;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        temp_s0->state.enables.general |= 2;
                        __glExpEnableBlendFunc(temp_s0, temp_s0, temp_a1_7);
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    temp_a1_9 = cap < GL_ALPHA_TEST_FUNC;
                    if (cap >= GL_ALPHA_TEST) {
                        if (temp_a1_9 == 0) {
                            if (cap == GL_DITHER) {
                                temp_s0->state.enables.general |= 8;
                                __glExpEnableDither(temp_s0, temp_s0, temp_a1_9);
                                /* Duplicate return node #4. Try simplifying control flow for better match */
                                __glBeginMode = 2;
                                temp_s0->dirtyMask |= 1;
                                return;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        temp_s0->state.enables.general |= 1;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    if (cap >= GL_NORMALIZE) {
                        if (cap < GL_VIEWPORT) {
                            temp_s0->state.enables.general |= 0x400000;
                            __glExpEnableNormalize(temp_s0, temp_s0, 0x400000);
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    if (cap == GL_STENCIL_TEST) {
                        temp_s0->state.enables.general |= 0x8000;
                        __glExpEnableStencilTest(temp_s0, temp_s0, temp_a1_9);
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                temp_a4_2 = temp_s0->state.enables.general | 0x10;
                temp_s0->state.enables.general = temp_a4_2;
                __glBeginMode = 2;
                temp_a2_4 = temp_s0->dirtyMask | 0x80;
                temp_s0->dirtyMask = temp_a2_4;
                __glExpEnableDepthTest(temp_s0, temp_s0, temp_a1_6, temp_a2_4, 2, temp_a4_2);
                /* Duplicate return node #4. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 1;
                return;
            }
            if (cap >= GL_POLYGON_STIPPLE) {
                if (cap >= GL_EDGE_FLAG) {
                    temp_a1_10 = cap < 0xB58U;
                    if (cap >= GL_COLOR_MATERIAL) {
                        if (temp_a1_10 == 0) {
                            if (cap != GL_FOG) {
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            temp_a2_5 = temp_s0->state.enables.general | 0x20;
                            temp_s0->state.enables.general = temp_a2_5;
                            __glExpEnableFog(temp_s0, temp_s0, temp_a1_10, temp_a2_5, cap, 1);
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        temp_s0->state.enables.general |= 0x80;
                        __glExpValidateColorMaterial(temp_s0, temp_s0, temp_a1_10);
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    if (cap >= GL_LIGHTING) {
                        if (cap < GL_LIGHT_MODEL_LOCAL_VIEWER) {
                            temp_s0->state.enables.general |= 0x40;
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x20;
                            __glSetError((enum GLenum) temp_s0);
                            ((? (*)(__GLcontext *)) temp_s0->procs.table[0x2A])(temp_s0);
                            __glExpEnableLighting(temp_s0, temp_s0);
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    if (cap == GL_CULL_FACE) {
                        temp_a2_6 = temp_s0->state.enables.general;
                        if (temp_a2_6 & 0x1000) {
                            return;
                        }
                        temp_a4_3 = temp_a2_6 | 0x1000;
                        temp_s0->state.enables.general = temp_a4_3;
                        __glBeginMode = 2;
                        temp_a1_11 = temp_s0->dirtyMask | 4;
                        temp_s0->dirtyMask = temp_a1_11;
                        __glExpEnableCullFace(temp_s0, temp_s0, temp_a1_11, temp_a2_6, 2, temp_a4_3);
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                temp_a3 = temp_s0->state.enables.general | 0x2000;
                temp_s0->state.enables.general = temp_a3;
                __glBeginMode = 2;
                temp_a1_12 = temp_s0->dirtyMask | 4;
                temp_s0->dirtyMask = temp_a1_12;
                __glExpEnablePolygonStipple(temp_s0, temp_s0, temp_a1_12, 2, temp_a3, 1);
                return;
            }
            if (cap >= GL_LINE_STIPPLE) {
                if (cap >= GL_LINE_STIPPLE_PATTERN) {
                    if (cap == GL_POLYGON_SMOOTH) {
                        temp_s0->state.enables.general |= 0x800;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                temp_a4_4 = temp_s0->state.enables.general | 0x100;
                temp_s0->state.enables.general = temp_a4_4;
                __glBeginMode = 2;
                temp_a2_7 = temp_s0->dirtyMask | 2;
                temp_s0->dirtyMask = temp_a2_7;
                __glExpEnableLineStipple(temp_s0, temp_s0, temp_a1_6, temp_a2_7, 2, temp_a4_4);
                return;
            }
            temp_a1_13 = cap < GL_LINE_WIDTH;
            if (cap >= GL_LINE_SMOOTH) {
                if (temp_a1_13 != 0) {
                    temp_a2_8 = temp_s0->state.enables.general | 0x200;
                    temp_s0->state.enables.general = temp_a2_8;
                    __glExpEnableLineSmooth(temp_s0, temp_s0, temp_a1_13, temp_a2_8, cap, 1);
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 1;
                    return;
                }
                /* Duplicate return node #31. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            if (cap == GL_POINT_SMOOTH) {
                temp_a1_14 = temp_s0->state.enables.general | 0x400;
                temp_s0->state.enables.general = temp_a1_14;
                __glExpEnablePointSmooth(temp_s0, temp_s0, temp_a1_14);
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 1;
                return;
            }
        default:
            __glSetError(GL_INVALID_ENUM);
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glexpim_Disable(enum GLenum cap) {
    __GLcontext *temp_s0;
    s32 temp_a1;
    s32 temp_a1_10;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_5;
    s32 temp_a1_9;
    s32 temp_a2;
    u32 temp_a1_4;
    u32 temp_a1_6;
    u32 temp_a1_7;
    u32 temp_a1_8;
    u32 temp_a2_2;
    u32 temp_a2_3;
    u32 temp_a2_4;
    u32 temp_a2_5;
    u32 temp_a2_6;
    u32 temp_a2_7;
    u32 temp_a4;
    u32 temp_a4_2;
    u32 temp_a4_3;
    u32 temp_a4_4;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (cap >= GL_MAP2_TEXTURE_COORD_4) {
            if (cap < GL_MAP2_VERTEX_3) {
                goto block_3;
            }
            if (cap >= GL_LIGHT6) {
                if (cap < GL_LIGHT7) {
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    temp_a1 = cap - 0x4000;
                    temp_s0->state.enables.lights &= ~(1 << temp_a1);
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, temp_a1);
                    return;
                }
                if (cap >= GL_NORMAL_ARRAY) {
                    if (cap > GL_NORMAL_ARRAY) {
                        if (cap >= GL_TEXTURE_COLOR_TABLE_SGI) {
                            if (cap > GL_TEXTURE_COLOR_TABLE_SGI) {
                                if (cap >= GL_POST_CONVOLUTION_COLOR_TABLE_SGI) {
                                    if (cap > GL_POST_CONVOLUTION_COLOR_TABLE_SGI) {
                                        if (cap == GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI) {
                                            temp_s0->state.enables.texture &= ~4;
                                            __glBeginMode = 2;
                                            temp_s0->dirtyMask |= 0x10;
                                            /* Duplicate return node #4. Try simplifying control flow for better match */
                                            __glBeginMode = 2;
                                            temp_s0->dirtyMask |= 1;
                                            return;
                                        }
                                        /* Duplicate return node #31. Try simplifying control flow for better match */
                                        __glSetError(GL_INVALID_ENUM);
                                        return;
                                    }
                                    temp_s0->state.enables.texture &= ~2;
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 0x10;
                                    /* Duplicate return node #4. Try simplifying control flow for better match */
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 1;
                                    return;
                                }
                                if (cap == GL_COLOR_TABLE_SGI) {
                                    temp_s0->state.enables.texture &= ~1;
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 0x10;
                                    /* Duplicate return node #4. Try simplifying control flow for better match */
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 1;
                                    return;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            temp_s0->state.enables.general &= 0x7FFFFFFF;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        if (cap >= GL_TEXTURE_COORD_ARRAY) {
                            if (cap > GL_TEXTURE_COORD_ARRAY) {
                                if (cap == GL_EDGE_FLAG_ARRAY) {
                                    temp_s0->unk1318 &= ~0x10;
                                    temp_s0->unk1314 &= ~0x08000000;
                                    return;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            temp_s0->unk1318 &= ~4;
                            temp_s0->unk1314 &= ~0x07F00000;
                            return;
                        }
                        if (cap >= GL_INDEX_ARRAY) {
                            if (cap <= GL_INDEX_ARRAY) {
                                temp_s0->unk1318 &= ~8;
                                temp_s0->unk1314 &= 0x0FFFFFFF;
                                return;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        if (cap == GL_COLOR_ARRAY) {
                            temp_s0->unk1318 &= ~2;
                            temp_s0->unk1314 &= ~0xFF000;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    temp_s0->unk1318 &= ~1;
                    temp_s0->unk1314 &= ~0xF00;
                    return;
                }
                if (cap >= GL_HISTOGRAM_EXT) {
                    if (cap > GL_HISTOGRAM_EXT) {
                        if (cap >= GL_TEXTURE_3D_EXT) {
                            if (cap > GL_TEXTURE_3D_EXT) {
                                if (cap == GL_VERTEX_ARRAY) {
                                    temp_s0->unk1318 &= ~0x20;
                                    temp_s0->unk1314 &= ~0xFF;
                                    return;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            temp_s0->state.enables.general &= ~0x40000000;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        if (cap >= GL_POLYGON_OFFSET_FILL) {
                            if (cap <= GL_POLYGON_OFFSET_FILL) {
                                temp_a1_2 = ~0x01000000;
                                temp_s0->state.enables.general &= temp_a1_2;
                                __glBeginMode = 2;
                                temp_s0->dirtyMask |= 4;
                                __glExpPassPolygonOffset(temp_s0, temp_s0, temp_a1_2, 2, cap, 1, 2);
                                /* Duplicate return node #4. Try simplifying control flow for better match */
                                __glBeginMode = 2;
                                temp_s0->dirtyMask |= 1;
                                return;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        if (cap == GL_MINMAX_EXT) {
                            temp_s0->state.enables.general &= ~0x20000000;
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x10;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    temp_s0->state.enables.general &= ~0x10000000;
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x10;
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 1;
                    return;
                }
                if (cap >= GL_CONVOLUTION_2D_EXT) {
                    if (cap > GL_CONVOLUTION_2D_EXT) {
                        if (cap == GL_SEPARABLE_2D_EXT) {
                            temp_s0->state.enables.general &= ~0x08000000;
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x10;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    temp_s0->state.enables.general &= ~0x04000000;
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x10;
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 1;
                    return;
                }
                if (cap >= GL_CONVOLUTION_1D_EXT) {
                    if (cap <= GL_CONVOLUTION_1D_EXT) {
                        temp_s0->state.enables.general &= ~0x02000000;
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 0x10;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                if (cap == GL_LIGHT7) {
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    temp_a1 = cap - 0x4000;
                    temp_s0->state.enables.lights &= ~(1 << temp_a1);
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, temp_a1);
                    return;
                }
                /* Duplicate return node #31. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            if (cap >= GL_CLIP_PLANE3) {
                if (cap < GL_CLIP_PLANE4) {
                    goto block_34;
                }
                if (cap >= GL_LIGHT2) {
                    if (cap >= GL_LIGHT3) {
                        if (cap >= GL_LIGHT4) {
                            if (cap >= GL_LIGHT5) {
                                if (cap == GL_LIGHT5) {
                                    /* Duplicate return node #25. Try simplifying control flow for better match */
                                    temp_a1 = cap - 0x4000;
                                    temp_s0->state.enables.lights &= ~(1 << temp_a1);
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 0x20;
                                    __glExpValidateLightSource(temp_s0, temp_a1);
                                    return;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            /* Duplicate return node #25. Try simplifying control flow for better match */
                            temp_a1 = cap - 0x4000;
                            temp_s0->state.enables.lights &= ~(1 << temp_a1);
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x20;
                            __glExpValidateLightSource(temp_s0, temp_a1);
                            return;
                        }
                        if (cap == GL_LIGHT3) {
                            /* Duplicate return node #25. Try simplifying control flow for better match */
                            temp_a1 = cap - 0x4000;
                            temp_s0->state.enables.lights &= ~(1 << temp_a1);
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x20;
                            __glExpValidateLightSource(temp_s0, temp_a1);
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    temp_a1 = cap - 0x4000;
                    temp_s0->state.enables.lights &= ~(1 << temp_a1);
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, temp_a1);
                    return;
                }
                if (cap >= GL_LIGHT0) {
                    if (cap >= GL_LIGHT1) {
                        if (cap == GL_LIGHT1) {
                            /* Duplicate return node #25. Try simplifying control flow for better match */
                            temp_a1 = cap - 0x4000;
                            temp_s0->state.enables.lights &= ~(1 << temp_a1);
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x20;
                            __glExpValidateLightSource(temp_s0, temp_a1);
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    temp_a1 = cap - 0x4000;
                    temp_s0->state.enables.lights &= ~(1 << temp_a1);
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 0x20;
                    __glExpValidateLightSource(temp_s0, temp_a1);
                    return;
                }
                if (cap >= GL_CLIP_PLANE5) {
                    if (cap < 0x3006U) {
                        goto block_34;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                if (cap == GL_CLIP_PLANE4) {
                    goto block_34;
                }
                /* Duplicate return node #31. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            if (cap >= GL_POLYGON_OFFSET_POINT) {
                temp_a1_3 = cap < GL_CLIP_PLANE1;
                if (cap >= GL_POLYGON_OFFSET_LINE) {
                    if (temp_a1_3 == 0) {
                        if (cap >= GL_CLIP_PLANE2) {
                            if (cap == GL_CLIP_PLANE2) {
                                goto block_34;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        goto block_34;
                    }
                    if (cap >= GL_CLIP_PLANE0) {
                        if (cap < GL_CLIP_PLANE1) {
block_34:
                            temp_a2 = ~(1 << (cap - 0x3000));
                            temp_a1_4 = temp_s0->state.enables.clipPlanes & temp_a2;
                            temp_s0->state.enables.clipPlanes = temp_a1_4;
                            __glExpEnableClipPlanes(temp_s0, temp_s0, temp_a1_4, temp_a2, cap, 1);
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    if (cap == GL_POLYGON_OFFSET_LINE) {
                        temp_s0->state.enables.texture &= ~0x400;
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 4;
                        __glExpPassPolygonOffset(temp_s0, temp_s0, -0x401, 2, cap, 1);
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                temp_a4 = temp_s0->state.enables.texture & ~0x200;
                temp_s0->state.enables.texture = temp_a4;
                __glBeginMode = 2;
                temp_a2_2 = temp_s0->dirtyMask | 4;
                temp_s0->dirtyMask = temp_a2_2;
                __glExpPassPolygonOffset(temp_s0, temp_s0, temp_a1_3, temp_a2_2, 2, temp_a4, -0x201);
                /* Duplicate return node #4. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 1;
                return;
            }
            if (cap >= GL_TEXTURE_1D) {
                if (cap >= GL_TEXTURE_2D) {
                    if (cap == GL_TEXTURE_2D) {
                        temp_s0->state.enables.general &= ~0x20000;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                temp_s0->state.enables.general &= ~0x10000;
                /* Duplicate return node #4. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 1;
                return;
            }
            if (cap >= GL_MAP2_VERTEX_4) {
                if (cap < 0xDB9U) {
                    goto block_3;
                }
                /* Duplicate return node #31. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            if (cap == GL_MAP2_VERTEX_3) {
                goto block_3;
            }
            /* Duplicate return node #31. Try simplifying control flow for better match */
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        temp_a1_5 = cap < GL_TEXTURE_GEN_T;
        if (temp_a1_5 == 0) {
            if (cap >= GL_TEXTURE_GEN_R) {
                if (cap >= GL_MAP1_TEXTURE_COORD_4) {
                    if (cap >= GL_MAP1_VERTEX_3) {
                        if (cap >= GL_MAP2_NORMAL) {
                            if (cap >= GL_MAP2_TEXTURE_COORD_1) {
                                if (cap >= GL_MAP2_TEXTURE_COORD_2) {
                                    if (cap >= GL_MAP2_TEXTURE_COORD_3) {
                                        if (cap == GL_MAP2_TEXTURE_COORD_3) {
                                            goto block_3;
                                        }
                                        /* Duplicate return node #31. Try simplifying control flow for better match */
                                        __glSetError(GL_INVALID_ENUM);
                                        return;
                                    }
                                    goto block_3;
                                }
                                if (cap == GL_MAP2_TEXTURE_COORD_1) {
                                    goto block_3;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            goto block_3;
                        }
                        if (cap >= GL_MAP2_COLOR_4) {
                            if (cap >= GL_MAP2_INDEX) {
                                if (cap == GL_MAP2_INDEX) {
                                    goto block_3;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
block_3:
                            temp_s0->state.enables.eval &= ~(1 << (cap - 0xDB0)) & 0xFFFF;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        if (cap >= GL_MAP1_VERTEX_4) {
                            if (cap < 0xD99U) {
                                goto block_45;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        if (cap == GL_MAP1_VERTEX_3) {
                            goto block_45;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    goto block_45;
                }
                if (cap >= GL_MAP1_INDEX) {
                    switch (cap) {                  /* irregular */
                    case GL_MAP1_TEXTURE_COORD_3:
                        goto block_45;
                    case GL_MAP1_NORMAL:
                        goto block_45;
                    }
                } else {
                    if (cap >= GL_AUTO_NORMAL) {
                        if (cap >= 0xD81U) {
                            if (cap == GL_MAP1_COLOR_4) {
block_45:
                                temp_s0->state.enables.pixelPath &= ~(1 << (cap - 0xD90)) & 0xFFFF;
                                /* Duplicate return node #4. Try simplifying control flow for better match */
                                __glBeginMode = 2;
                                temp_s0->dirtyMask |= 1;
                                return;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        temp_s0->state.enables.general &= ~0x800000;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    if (cap >= GL_TEXTURE_GEN_Q) {
                        if (cap < 0xC64U) {
                            temp_s0->state.enables.general &= ~0x200000;
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    if (cap == GL_TEXTURE_GEN_R) {
                        temp_s0->state.enables.general &= ~0x100000;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                }
            } else {
                temp_s0->state.enables.general &= ~0x80000;
                /* Duplicate return node #4. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 1;
            }
        } else {
            if (cap >= GL_DEPTH_TEST) {
                if (cap >= GL_DEPTH_WRITEMASK) {
                    temp_a1_6 = cap < 0xBE3U;
                    if (cap >= GL_BLEND) {
                        if (temp_a1_6 == 0) {
                            if (cap >= GL_SCISSOR_TEST) {
                                if (cap >= 0xC12U) {
                                    if (cap == GL_TEXTURE_GEN_S) {
                                        temp_s0->state.enables.general &= ~0x40000;
                                        /* Duplicate return node #4. Try simplifying control flow for better match */
                                        __glBeginMode = 2;
                                        temp_s0->dirtyMask |= 1;
                                        return;
                                    }
                                    /* Duplicate return node #31. Try simplifying control flow for better match */
                                    __glSetError(GL_INVALID_ENUM);
                                    return;
                                }
                                temp_s0->state.enables.general &= ~0x4000;
                                if (temp_s0->haveZ == 0) {
                                    __glReadjustZCounts(temp_s0, temp_a1_6);
                                }
                                ((? (*)(__GLcontext *)) temp_s0->procs.table[0x15])(temp_s0);
                                ((? (*)(__GLcontext *)) temp_s0->procs.table[0x13])(temp_s0);
                                /* Duplicate return node #4. Try simplifying control flow for better match */
                                __glBeginMode = 2;
                                temp_s0->dirtyMask |= 1;
                                return;
                            }
                            if (cap >= GL_COLOR_LOGIC_OP) {
                                if (cap < 0xBF3U) {
                                    temp_s0->state.enables.texture &= ~0x800;
                                    __glExpEnableLogicOp(temp_s0, temp_s0, -0x801);
                                    /* Duplicate return node #4. Try simplifying control flow for better match */
                                    __glBeginMode = 2;
                                    temp_s0->dirtyMask |= 1;
                                    return;
                                }
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            if (cap == GL_INDEX_LOGIC_OP) {
                                temp_a1_7 = temp_s0->state.enables.general & ~4;
                                temp_s0->state.enables.general = temp_a1_7;
                                __glExpEnableLogicOp(temp_s0, temp_s0, temp_a1_7, -5, cap, 1);
                                /* Duplicate return node #4. Try simplifying control flow for better match */
                                __glBeginMode = 2;
                                temp_s0->dirtyMask |= 1;
                                return;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        temp_s0->state.enables.general &= ~2;
                        __glExpEnableBlendFunc(temp_s0, temp_s0, temp_a1_6);
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    if (cap >= GL_ALPHA_TEST) {
                        if (cap >= GL_ALPHA_TEST_FUNC) {
                            if (cap == GL_DITHER) {
                                temp_a1_8 = temp_s0->state.enables.general & ~8;
                                temp_s0->state.enables.general = temp_a1_8;
                                __glExpEnableDither(temp_s0, temp_s0, temp_a1_8, -9, cap, 1);
                                /* Duplicate return node #4. Try simplifying control flow for better match */
                                __glBeginMode = 2;
                                temp_s0->dirtyMask |= 1;
                                return;
                            }
                            /* Duplicate return node #31. Try simplifying control flow for better match */
                            __glSetError(GL_INVALID_ENUM);
                            return;
                        }
                        temp_s0->state.enables.general &= ~1;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    if (cap >= GL_NORMALIZE) {
                        if (cap < GL_VIEWPORT) {
                            temp_a1_9 = ~0x400000;
                            temp_s0->state.enables.general &= temp_a1_9;
                            __glExpEnableNormalize(temp_s0, temp_s0, temp_a1_9);
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    if (cap == GL_STENCIL_TEST) {
                        temp_a1_10 = ~0x8000;
                        temp_s0->state.enables.general &= temp_a1_10;
                        __glExpEnableStencilTest(temp_s0, temp_s0, temp_a1_10);
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                temp_a4_2 = temp_s0->state.enables.general & ~0x10;
                temp_s0->state.enables.general = temp_a4_2;
                __glBeginMode = 2;
                temp_a2_3 = temp_s0->dirtyMask | 0x80;
                temp_s0->dirtyMask = temp_a2_3;
                __glExpEnableDepthTest(temp_s0, temp_s0, temp_a1_5, temp_a2_3, 2, temp_a4_2, -0x11);
                /* Duplicate return node #4. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 1;
                return;
            }
            if (cap >= GL_POLYGON_STIPPLE) {
                if (cap >= GL_EDGE_FLAG) {
                    if (cap >= GL_COLOR_MATERIAL) {
                        if (cap >= 0xB58U) {
                            if (cap != GL_FOG) {
                                /* Duplicate return node #31. Try simplifying control flow for better match */
                                __glSetError(GL_INVALID_ENUM);
                                return;
                            }
                            temp_s0->state.enables.general &= ~0x20;
                            __glExpEnableFog(temp_s0, temp_s0, -0x21);
                            /* Duplicate return node #4. Try simplifying control flow for better match */
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 1;
                            return;
                        }
                        temp_s0->state.enables.general &= ~0x80;
                        __glExpValidateColorMaterial(temp_s0, temp_s0, -0x81);
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    if (cap >= GL_LIGHTING) {
                        if (cap < GL_LIGHT_MODEL_LOCAL_VIEWER) {
                            temp_s0->state.enables.general &= ~0x40;
                            __glBeginMode = 2;
                            temp_s0->dirtyMask |= 0x20;
                            __glSetError((enum GLenum) temp_s0);
                            ((? (*)(__GLcontext *)) temp_s0->procs.table[0x2A])(temp_s0);
                            __glExpEnableLighting(temp_s0, temp_s0);
                            return;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        __glSetError(GL_INVALID_ENUM);
                        return;
                    }
                    if (cap == GL_CULL_FACE) {
                        temp_a2_4 = temp_s0->state.enables.general;
                        if (!(temp_a2_4 & 0x1000)) {
                            return;
                        }
                        temp_a4_3 = temp_a2_4 & ~0x1000;
                        temp_s0->state.enables.general = temp_a4_3;
                        __glBeginMode = 2;
                        temp_a2_5 = temp_s0->dirtyMask | 4;
                        temp_s0->dirtyMask = temp_a2_5;
                        __glExpEnableCullFace(temp_s0, temp_s0, 0xB44, temp_a2_5, 2, temp_a4_3);
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                temp_a4_4 = temp_s0->state.enables.general & ~0x2000;
                temp_s0->state.enables.general = temp_a4_4;
                __glBeginMode = 2;
                temp_a2_6 = temp_s0->dirtyMask | 4;
                temp_s0->dirtyMask = temp_a2_6;
                __glExpEnablePolygonStipple(temp_s0, temp_s0, temp_a1_5, temp_a2_6, 2, temp_a4_4, -0x2001);
                return;
            }
            if (cap >= GL_LINE_STIPPLE) {
                if (cap >= GL_LINE_STIPPLE_PATTERN) {
                    if (cap == GL_POLYGON_SMOOTH) {
                        temp_s0->state.enables.general &= ~0x800;
                        /* Duplicate return node #4. Try simplifying control flow for better match */
                        __glBeginMode = 2;
                        temp_s0->dirtyMask |= 1;
                        return;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(GL_INVALID_ENUM);
                    return;
                }
                temp_s0->state.enables.general &= ~0x100;
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 2;
                __glExpEnableLineStipple(temp_s0, temp_s0, -0x101);
                return;
            }
            if (cap >= GL_LINE_SMOOTH) {
                if (cap < GL_LINE_WIDTH) {
                    temp_s0->state.enables.general &= ~0x200;
                    __glExpEnableLineSmooth(temp_s0, temp_s0, -0x201);
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->dirtyMask |= 1;
                    return;
                }
                /* Duplicate return node #31. Try simplifying control flow for better match */
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            if (cap == GL_POINT_SMOOTH) {
                temp_a2_7 = temp_s0->state.enables.general & ~0x400;
                temp_s0->state.enables.general = temp_a2_7;
                __glExpEnablePointSmooth(temp_s0, temp_s0, 0xB10, temp_a2_7, -0x401, 1);
                __glBeginMode = 2;
                temp_s0->dirtyMask |= 1;
                return;
            }
        default:
            __glSetError(GL_INVALID_ENUM);
        }
    } else {
        __glSetError(GL_INVALID_OPERATION);
    }
}

void __glexpim_PolygonOffsetEXT(f32 factor, f32 bias) {
    u32 temp_a1;

    if (__glBeginMode != 1) {
        __glCurrentContext->state.polygon.units = bias;
        __glCurrentContext->state.polygon.factor = factor;
        __glBeginMode = 2;
        temp_a1 = __glCurrentContext->dirtyMask | 4;
        __glCurrentContext->dirtyMask = temp_a1;
        __glExpPassPolygonOffset(__glCurrentContext, __glCurrentContext, temp_a1, 2);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}

void __glexpim_PolygonOffset(f32 factor, f32 units) {
    u32 temp_a1;

    if (__glBeginMode != 1) {
        __glCurrentContext->state.polygon.factor = factor;
        __glCurrentContext->state.polygon.units = __glCurrentContext->state.polygon.mask * units;
        __glBeginMode = 2;
        temp_a1 = __glCurrentContext->dirtyMask | 4;
        __glCurrentContext->dirtyMask = temp_a1;
        __glExpPassPolygonOffset(__glCurrentContext, __glCurrentContext, temp_a1, 2);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}
