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
    /* 0x0DB4 */ char padDB4[0x818];                /* maybe part of constants[0xA]? */
    /* 0x15CC */ void *unk15CC;                     /* inferred */
    /* 0x15D0 */ char pad15D0[0x1820];              /* maybe part of unk15CC[0x609]? */
    /* 0x2DF0 */ u32 validateMask;
    /* 0x2DF4 */ u32 dirtyMask;
    /* 0x2DF8 */ __GLcolorBuffer *drawBuffer;
    /* 0x2DFC */ __GLcolorBuffer *readBuffer;
    /* 0x2E00 */ char pad2E00[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2E10 */ void (*validate)(__GLcontext *);
    /* 0x2E14 */ char pad2E14[0x1C];                /* maybe part of validate[8]? */
    /* 0x2E30 */ __GLprocs procs;
    /* 0x3184 */ __GLattributeMachine attributes;
    /* 0x318C */ char pad318C[0x3CC4];              /* maybe part of attributes[0x799]? */
    /* 0x6E50 */ ? unk6E50;                         /* inferred */
    /* 0x6E50 */ char pad6E50[0x48];
    /* 0x6E98 */ ? unk6E98;                         /* inferred */
    /* 0x6E98 */ char pad6E98[0x18];
    /* 0x6EB0 */ ? unk6EB0;                         /* inferred */
    /* 0x6EB0 */ char pad6EB0[0x18];
    /* 0x6EC8 */ ? unk6EC8;                         /* inferred */
    /* 0x6EC8 */ char pad6EC8[0x30];
    /* 0x6EF8 */ ? unk6EF8;                         /* inferred */
    /* 0x6EF8 */ char pad6EF8[0x18];
    /* 0x6F10 */ ? unk6F10;                         /* inferred */
    /* 0x6F10 */ char pad6F10[0x18];
    /* 0x6F28 */ ? unk6F28;                         /* inferred */
    /* 0x6F28 */ char pad6F28[0x28];
    /* 0x6F50 */ ? unk6F50;                         /* inferred */
    /* 0x6F50 */ char pad6F50[0x28];
    /* 0x6F78 */ ? unk6F78;                         /* inferred */
    /* 0x6F78 */ char pad6F78[0x28];
    /* 0x6FA0 */ ? unk6FA0;                         /* inferred */
    /* 0x6FA0 */ char pad6FA0[0x28];
    /* 0x6FC8 */ ? unk6FC8;                         /* inferred */
    /* 0x6FC8 */ char pad6FC8[0x28];
    /* 0x6FF0 */ ? unk6FF0;                         /* inferred */
    /* 0x6FF0 */ char pad6FF0[0x28];
    /* 0x7018 */ ? unk7018;                         /* inferred */
    /* 0x7018 */ char pad7018[0x28];
    /* 0x7040 */ ? unk7040;                         /* inferred */
    /* 0x7040 */ char pad7040[0x28];
    /* 0x7068 */ ? unk7068;                         /* inferred */
    /* 0x7068 */ char pad7068[0x28];
    /* 0x7090 */ s32 unk7090;                       /* inferred */
    /* 0x7094 */ char pad7094[8];                   /* maybe part of unk7090[3]? */
    /* 0x709C */ s32 unk709C;                       /* inferred */
    /* 0x70A0 */ s32 unk70A0;                       /* inferred */
    /* 0x70A4 */ s32 unk70A4;                       /* inferred */
    /* 0x70A8 */ char pad70A8[4];
    /* 0x70AC */ s32 unk70AC;                       /* inferred */
    /* 0x70B0 */ s32 unk70B0;                       /* inferred */
    /* 0x70B4 */ s32 unk70B4;                       /* inferred */
    /* 0x70B8 */ s32 unk70B8;                       /* inferred */
    /* 0x70BC */ s32 unk70BC;                       /* inferred */
    /* 0x70C0 */ s32 unk70C0;                       /* inferred */
    /* 0x70C4 */ s32 unk70C4;                       /* inferred */
    /* 0x70C8 */ s32 unk70C8;                       /* inferred */
    /* 0x70CC */ s32 unk70CC;                       /* inferred */
    /* 0x70D0 */ s32 unk70D0;                       /* inferred */
    /* 0x70D4 */ s32 unk70D4;                       /* inferred */
    /* 0x70D8 */ char pad70D8[0x304];               /* maybe part of unk70D4[0xC2]? */
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

typedef struct __GLevaluatorStateRec {
    /* 0x00 */ f32 unk0;                            /* inferred */
    /* 0x04 */ f32 unk4;                            /* inferred */
    /* 0x08 */ char pad8[4];
    /* 0x0C */ s32 unkC;                            /* inferred */
    /* 0x10 */ f32 unk10;                           /* inferred */
    /* 0x14 */ f32 unk14;                           /* inferred */
    /* 0x18 */ char pad18[4];
    /* 0x1C */ s32 unk1C;                           /* inferred */
    /* 0x20 */ f32 unk20;                           /* inferred */
    /* 0x24 */ f32 unk24;                           /* inferred */
    /* 0x28 */ char pad28[4];
    /* 0x2C */ s32 unk2C;                           /* inferred */
} __GLevaluatorState;                               /* size = 0x30 */

typedef struct __GLexportsRec {
    /* 0x00 */ u8 (*destroyContext)(__GLcontext *);
    /* 0x04 */ u8 (*loseCurrent)(__GLcontext *);
    /* 0x08 */ u8 (*makeCurrent)(__GLcontext *);
    /* 0x0C */ u8 (*shareContext)(__GLcontext *, __GLcontext *);
    /* 0x10 */ u8 (*copyContext)(__GLcontext *, __GLcontext *, u32);
    /* 0x14 */ u8 (*forceCurrent)(__GLcontext *);
    /* 0x18 */ u8 (*notifyResize)(__GLcontext *);
    /* 0x1C */ void (*notifyDestroy)(__GLcontext *);
    /* 0x20 */ void (*notifySwapBuffers)(__GLcontext *);
    /* 0x24 */ void *(*dispatchExec)(__GLcontext *);
    /* 0x28 */ void (*beginDispatchOverride)(__GLcontext *);
    /* 0x2C */ void (*endDispatchOverride)(__GLcontext *);
    /* 0x30 */ char pad30[0x14];                    /* maybe part of endDispatchOverride[6]? */
    /* 0x44 */ ? unk44;                             /* inferred */
    /* 0x44 */ char pad44[4];
} __GLexports;                                      /* size = 0x48 */

typedef struct __GLimportsRec {
    /* 0x00 */ void *(*malloc)(__GLcontext *, u32);
    /* 0x04 */ void *(*calloc)(__GLcontext *, u32, u32);
    /* 0x08 */ void *(*realloc)(__GLcontext *, void *, u32);
    /* 0x0C */ void (*free)(__GLcontext *, void *);
    /* 0x10 */ void (*warning)(__GLcontext *, s8 *);
    /* 0x14 */ void (*fatal)(__GLcontext *, s8 *);
    /* 0x18 */ s8 *(*getenv)(__GLcontext *, s8 *);
    /* 0x1C */ s32 (*atoi)(__GLcontext *, s8 *);
    /* 0x20 */ s32 (*sprintf)(__GLcontext *, s8 *, s8 *, ...);
    /* 0x24 */ void *(*fopen)(__GLcontext *, s8 *, s8 *);
    /* 0x28 */ s32 (*fclose)(__GLcontext *, void *);
    /* 0x2C */ s32 (*fprintf)(__GLcontext *, void *, s8 *, ...);
    /* 0x30 */ void *(*getDrawablePrivate)(__GLcontext *);
    /* 0x34 */ void *wscx;
    /* 0x38 */ void *other;
    /* 0x3C */ char pad3C[4];
    /* 0x40 */ ? unk40;                             /* inferred */
    /* 0x40 */ char pad40[0xC];
} __GLimports;                                      /* size = 0x4C */

struct gr2_hq2_fifo {
    /* 0x0000 */ char pad0[0x2018];
    /* 0x2018 */ gr2_reg32_t swap_sync;
    /* 0x201C */ char pad201C[0xC];                 /* maybe part of swap_sync[4]? */
    /* 0x2028 */ gr2_reg32_t depth_mask;
    /* 0x202C */ char pad202C[0xC];                 /* maybe part of depth_mask[4]? */
    /* 0x2038 */ gr2_reg32_t stencil_config;
    /* 0x203C */ gr2_reg32_t stencil_mode;
    /* 0x2040 */ gr2_reg32_t stencil_mask;
    /* 0x2044 */ gr2_reg32_t dither_enable;
    /* 0x2048 */ gr2_reg32_t pad2048;
    /* 0x204C */ gr2_reg32_t shade_model;
    /* 0x2050 */ gr2_reg32_t depth_test_enable;
    /* 0x2054 */ gr2_reg32_t pad2054;
    /* 0x2058 */ gr2_reg32_t line_stipple;
    /* 0x205C */ gr2_reg32_t line_width;
    /* 0x2060 */ char pad2060[0x34];                /* maybe part of line_width[0xE]? */
    /* 0x2094 */ gr2_reg32_t blend_factor;
    /* 0x2098 */ gr2_reg32_t blend_mode;
    /* 0x209C */ char pad209C[8];                   /* maybe part of blend_mode[3]? */
    /* 0x20A4 */ gr2_reg32_t tex_span_setup;
    /* 0x20A8 */ f32 tex_span_color;
    /* 0x20AC */ char pad20AC[8];                   /* maybe part of tex_span_color[3]? */
    /* 0x20B4 */ gr2_reg32_t tex_span_skip;
    /* 0x20B8 */ char pad20B8[0x24];                /* maybe part of tex_span_skip[0xA]? */
    /* 0x20DC */ f32 modelview_matrix;
    /* 0x20E0 */ f32 projection_matrix;
    /* 0x20E4 */ f32 normal_matrix;
    /* 0x20E8 */ f32 texture_matrix;
    /* 0x20EC */ char pad20EC[0xE4];                /* maybe part of texture_matrix[0x3A]? */
    /* 0x21D0 */ f32 load_spec_lut;
    /* 0x21D4 */ f32 material_shininess;
    /* 0x21D8 */ f32 mat_front_emissive;
    /* 0x21DC */ f32 mat_back_emissive;
    /* 0x21E0 */ f32 mat_front_ambient;
    /* 0x21E4 */ f32 mat_back_ambient;
    /* 0x21E8 */ f32 mat_front_diffuse;
    /* 0x21EC */ f32 mat_back_diffuse;
    /* 0x21F0 */ f32 mat_front_specular;
    /* 0x21F4 */ f32 mat_back_specular;
    /* 0x21F8 */ char pad21F8[4];
    /* 0x21FC */ f32 light_position;
    /* 0x2200 */ f32 light_select;
    /* 0x2204 */ gr2_reg32_t light_enable_mask;
    /* 0x2208 */ gr2_reg32_t normalize_enable_b;
    /* 0x220C */ f32 light_model_ambient;
    /* 0x2210 */ f32 light_spot_direction;
    /* 0x2214 */ f32 light_model_viewer;
    /* 0x2218 */ f32 load_spot_lut;
    /* 0x221C */ char pad221C[0x64];                /* maybe part of load_spot_lut[0x1A]? */
    /* 0x2280 */ f32 clear_color_depth;
    /* 0x2284 */ gr2_reg32_t clear_stencil;
    /* 0x2288 */ gr2_reg32_t pad2288;
    /* 0x228C */ gr2_reg32_t readback_trigger;
    /* 0x2290 */ char pad2290[0xC];                 /* maybe part of readback_trigger[4]? */
    /* 0x229C */ gr2_reg32_t pixel_read_setup_a;
    /* 0x22A0 */ gr2_reg32_t pixel_read_setup_b;
    /* 0x22A4 */ char pad22A4[0x10];                /* maybe part of pixel_read_setup_b[5]? */
    /* 0x22B4 */ gr2_reg32_t read_x;
    /* 0x22B8 */ char pad22B8[0xC];                 /* maybe part of read_x[4]? */
    /* 0x22C4 */ gr2_reg32_t pixel_draw_start;
    /* 0x22C8 */ gr2_reg32_t pixel_draw_rect;
    /* 0x22CC */ gr2_reg32_t pixel_draw_end;
    /* 0x22D0 */ char pad22D0[0x18];                /* maybe part of pixel_draw_end[7]? */
    /* 0x22E8 */ gr2_reg32_t copy_pixels;
    /* 0x22EC */ f32 pixel_zoom;
    /* 0x22F0 */ gr2_reg32_t pixel_read_mode;
    /* 0x22F4 */ gr2_reg32_t read_done;
    /* 0x22F8 */ char pad22F8[0x3C];                /* maybe part of read_done[0x10]? */
    /* 0x2334 */ gr2_reg32_t get_origin;
    /* 0x2338 */ char pad2338[0x60];                /* maybe part of get_origin[0x19]? */
    /* 0x2398 */ gr2_reg32_t context_flush;
    /* 0x239C */ char pad239C[8];                   /* maybe part of context_flush[3]? */
    /* 0x23A4 */ gr2_reg32_t get_color;
    /* 0x23A8 */ gr2_reg32_t get_normal;
    /* 0x23AC */ char pad23AC[0x64];                /* maybe part of get_normal[0x1A]? */
    /* 0x2410 */ f32 clear_color;
    /* 0x2414 */ gr2_reg32_t pad2414;
    /* 0x2418 */ gr2_reg32_t pad2418;
    /* 0x241C */ gr2_reg32_t get_rasterpos;
    /* 0x2420 */ char pad2420[8];                   /* maybe part of get_rasterpos[3]? */
    /* 0x2428 */ gr2_reg32_t buffer_mode;
    /* 0x242C */ gr2_reg32_t color_writemask;
    /* 0x2430 */ char pad2430[4];
    /* 0x2434 */ f32 unk2434;                       /* inferred */
    /* 0x2438 */ char pad2438[0x1F8];               /* maybe part of unk2434[0x7F]? */
    /* 0x2630 */ gr2_reg32_t draw_bitmap;
    /* 0x2634 */ char pad2634[0x148];               /* maybe part of draw_bitmap[0x53]? */
    /* 0x277C */ gr2_reg32_t data_port;
    /* 0x2780 */ char pad2780[0x1C];                /* maybe part of data_port[8]? */
    /* 0x279C */ gr2_reg32_t swap_buffers;
    /* 0x27A0 */ char pad27A0[0x1EC];               /* maybe part of swap_buffers[0x7C]? */
    /* 0x298C */ gr2_reg32_t vertex_4f;
    /* 0x2990 */ char pad2990[0x1FFC];              /* maybe part of vertex_4f[0x800]? */
    /* 0x498C */ gr2_reg32_t vertex_3f;
    /* 0x4990 */ char pad4990[0x1FFC];              /* maybe part of vertex_3f[0x800]? */
    /* 0x698C */ gr2_reg32_t vertex_2f;
    /* 0x6990 */ char pad6990[0x1C78];              /* maybe part of vertex_2f[0x71F]? */
    /* 0x8608 */ gr2_reg32_t color_3f;
    /* 0x860C */ char pad860C[0x1FFC];              /* maybe part of color_3f[0x800]? */
    /* 0xA608 */ gr2_reg32_t color_4f;
    /* 0xA60C */ char padA60C[0x1C74];              /* maybe part of color_4f[0x71E]? */
    /* 0xC280 */ gr2_reg32_t clear_depth;
    /* 0xC284 */ char padC284[0x1FFC];              /* maybe part of clear_depth[0x800]? */
    /* 0xE280 */ gr2_reg32_t clear_ci_depth;
    /* 0xE284 */ char padE284[0x174];               /* maybe part of clear_ci_depth[0x5E]? */
    /* 0xE3F8 */ gr2_reg32_t index;
    /* 0xE3FC */ char padE3FC[0x14];                /* maybe part of index[6]? */
    /* 0xE410 */ f32 clear_ci;
    /* 0xE414 */ char padE414[0x368];               /* maybe part of clear_ci[0xDB]? */
    /* 0xE77C */ gr2_reg32_t data_port_ci;
};                                                  /* size = 0xE780 */

? sub_0da60000(__GLcontext *);                      /* extern */

void __glExpEvalPassCurrentState(__GLcontext *gc, ...) {
    if (gc->modes.rgbMode != 0) {
        if (!(gc->state.enables.general & 0x80)) {
            HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.color.r;
            HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.color.g;
            HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.color.b;
            HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.color.a;
        } else {
            HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.r;
            HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.g;
            HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.b;
            HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.a;
        }
    } else {
        HQ2_FIFO.index.w = (bitwise u32) gc->state.current.userColorIndex;
    }
    HQ2_FIFO.unk2434 = gc->state.current.normal.x;
    HQ2_FIFO.unk2434 = gc->state.current.normal.y;
    HQ2_FIFO.unk2434 = gc->state.current.normal.z;
}

void __glExpEvalRestoreCurrentState(__GLcontext *gc, ...) {
    if (gc->modes.rgbMode != 0) {
        HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.r;
        HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.g;
        HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.b;
        HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.a;
    } else {
        HQ2_FIFO.index.w = (bitwise u32) gc->state.current.userColorIndex;
    }
    HQ2_FIFO.unk2434 = gc->state.current.normal.x;
    HQ2_FIFO.unk2434 = gc->state.current.normal.y;
    HQ2_FIFO.unk2434 = gc->state.current.normal.z;
}

void __glexpim_EvalMesh1(enum GLenum mode, s32 i1, s32 i2) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp0;
    __GLcontext *var_a4;
    enum GLenum var_a0;
    s32 var_a1;
    s32 var_a2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a0 = mode;
    var_a1 = i1;
    var_a2 = i2;
    var_a4 = __glCurrentContext;
    if (__glBeginMode != 0) {
        sp28 = (s64) var_a0;
        sp0 = (s64) var_a4;
        sp20 = (s64) var_a2;
        sp18 = (s64) var_a1;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        sp0->unk2E10(sp0);
        __glBeginMode = 0;
        var_a1 = (s32) sp18;
        var_a2 = (s32) sp20;
        var_a4 = (__GLcontext *) sp0;
        var_a0 = (enum GLenum) sp28;
        var_ra = sp10;
        goto block_4;
    }
block_4:
    if (var_a0 != GL_LINE) {
        sp10 = var_ra;
        if (var_a0 != GL_POINT) {
            __glSetError(GL_INVALID_ENUM);
            return;
        }
        __glExpEvalMesh1Point(var_a4, var_a4, var_a1, var_a2);
    } else {
        sp10 = var_ra;
        __glExpEvalMesh1Line(var_a4, var_a4, var_a1, var_a2);
    }
}

void __glexpim_EvalPoint1(s32 i) {
    if (__glCurrentContext->state.evaluator.unkC == i) {

    }
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x27])(__glCurrentContext);
}

void __glexpim_EvalMesh2(enum GLenum mode, s32 i1, s32 i2, s32 j1, s32 j2) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp0;
    __GLcontext *var_a6;
    s32 var_a1;
    s32 var_a4;
    s32 var_a7;
    s32 var_t0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a1 = i1;
    var_a4 = j2;
    var_a6 = __glCurrentContext;
    var_t0 = j1;
    var_a7 = i2;
    if (__glBeginMode != 0) {
        sp0 = (s64) var_a6;
        sp38 = (s64) var_a7;
        sp30 = (s64) var_a4;
        sp28 = (s64) var_t0;
        sp20 = (s64) var_a1;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        sp0->unk2E10(sp0);
        __glBeginMode = 0;
        var_a1 = (s32) sp20;
        var_t0 = (s32) sp28;
        var_a4 = (s32) sp30;
        var_a7 = (s32) sp38;
        var_a6 = (__GLcontext *) sp0;
        var_ra = sp18;
        goto block_4;
    }
block_4:
    if (mode != GL_FILL) {
        if (mode != GL_LINE) {
            sp18 = var_ra;
            if (mode != GL_POINT) {
                __glSetError(GL_INVALID_ENUM);
                return;
            }
            __glExpEvalMesh2Point(var_a6, var_a6, var_a1, var_t0, var_a7, var_a4);
        } else {
            sp18 = var_ra;
            __glExpEvalMesh2Line(var_a6, var_a6, var_a1, var_t0, var_a7, var_a4);
        }
    } else {
        sp18 = var_ra;
        __glExpEvalMesh2Fill(var_a6, var_a6, var_a1, var_t0, var_a7, var_a4);
    }
}

void __glexpim_EvalPoint2(s32 i, s32 j) {
    if (__glCurrentContext->state.evaluator.unk1C == i) {

    }
    if (__glCurrentContext->state.evaluator.unk2C == j) {

    }
    ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x28])(__glCurrentContext);
}

void PreEvaluate(s32 arg0, void *arg2, f32 fparg1) {
    f32 *var_a3_2;
    f32 *var_a3_3;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f1_3;
    f32 temp_f1_4;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f6;
    f32 temp_f9;
    f32 var_f4;
    f32 var_f5;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_t0;

    if (arg0 != 1) {
        temp_f9 = 1.0f - fparg1;
        arg2->unk4 = fparg1;
        arg2->unk0 = temp_f9;
        if (arg0 != 2) {
            var_a5 = 2;
            if (arg0 >= 3) {
                var_a7 = 8;
                var_t0 = 1;
loop_11:
                temp_f5 = arg2->unk0;
                var_a3 = 1;
                var_a6 = var_t0 & 3;
                var_f5 = temp_f5 * fparg1;
                arg2->unk0 = (f32) (temp_f5 * temp_f9);
                if (var_a5 >= 2) {
                    var_a3_2 = arg2 + 4;
                    if (var_a6 != 0) {
                        do {
                            temp_f1 = *var_a3_2;
                            temp_f0 = temp_f9 * temp_f1;
                            var_a3_2 += 4;
                            temp_f0_2 = temp_f0 + var_f5;
                            var_a6 -= 1;
                            var_f5 = temp_f1 * fparg1;
                            var_a3_2->unk-4 = temp_f0_2;
                        } while (var_a6 != 0);
                    }
                    if ((var_t0 >> 2) != 0) {
                        var_a3_3 = var_a3_2;
                        var_f4 = var_f5;
                        do {
                            temp_f6 = var_a3_3->unkC;
                            temp_f3 = var_a3_3->unk8;
                            temp_f2 = var_a3_3->unk4;
                            temp_f1_2 = var_a3_3->unk0;
                            temp_f5_2 = (temp_f9 * temp_f6) + (temp_f3 * fparg1);
                            temp_f1_3 = temp_f9 * temp_f1_2;
                            temp_f3_2 = (temp_f9 * temp_f3) + (temp_f2 * fparg1);
                            temp_f2_2 = (temp_f9 * temp_f2) + (temp_f1_2 * fparg1);
                            var_a3_3 += 0x10;
                            temp_f1_4 = temp_f1_3 + var_f4;
                            var_f4 = temp_f6 * fparg1;
                            var_a3_3->unk-4 = temp_f5_2;
                            var_a3_3->unk-8 = temp_f3_2;
                            var_a3_3->unk-C = temp_f2_2;
                            var_a3_3->unk-10 = temp_f1_4;
                        } while (var_a3_3 != (var_a7 + arg2));
                        var_f5 = var_f4;
                    }
                    var_a3 = var_a5;
                }
                var_t0 += 1;
                var_a7 += 4;
                var_a5 += 1;
                *((var_a3 * 4) + arg2) = var_f5;
                if (arg0 != var_a5) {
                    goto loop_11;
                }
            }
            return;
        }
        return;
    }
    arg2->unk0 = 1.0f;
}

void PreEvaluateWithDeriv(s32 arg0, void *arg2, void *arg3, f32 fparg1) {
    f32 *temp_t8;
    f32 *var_a0;
    f32 *var_a0_3;
    f32 *var_a4_2;
    f32 *var_a4_3;
    f32 *var_a4_4;
    f32 *var_a4_5;
    f32 *var_a4_7;
    f32 *var_a7_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f1_3;
    f32 temp_f1_4;
    f32 temp_f1_5;
    f32 temp_f1_6;
    f32 temp_f1_7;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f3_3;
    f32 temp_f3_4;
    f32 temp_f3_5;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f5_5;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f7;
    f32 temp_f9;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f5;
    f32 var_f5_2;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_t1;
    s32 var_a0_2;
    s32 var_a4;
    s32 var_a4_6;
    s32 var_a6;
    s32 var_a7;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t3;

    if (arg0 != 1) {
        temp_f9 = 1.0f - fparg1;
        if (arg0 != 2) {
            var_f4 = temp_f9;
            var_a6 = 2;
            arg2->unk4 = fparg1;
            arg2->unk0 = temp_f9;
            if (arg0 >= 4) {
                var_t3 = arg0 - 1;
                var_t0 = 8;
                var_t1 = 1;
loop_11:
                temp_f5 = arg2->unk0;
                var_a4 = 1;
                var_a7 = var_t1 & 3;
                var_f5 = temp_f5 * fparg1;
                arg2->unk0 = (f32) (temp_f5 * temp_f9);
                if (var_a6 >= 2) {
                    var_a4_2 = arg2 + 4;
                    if (var_a7 != 0) {
                        do {
                            temp_f1 = *var_a4_2;
                            temp_f0 = temp_f9 * temp_f1;
                            var_a4_2 += 4;
                            temp_f0_2 = temp_f0 + var_f5;
                            var_a7 -= 1;
                            var_f5 = temp_f1 * fparg1;
                            var_a4_2->unk-4 = temp_f0_2;
                        } while (var_a7 != 0);
                    }
                    if ((var_t1 >> 2) != 0) {
                        var_a4_3 = var_a4_2;
                        var_f4_2 = var_f5;
                        do {
                            temp_f6 = var_a4_3->unkC;
                            temp_f3 = var_a4_3->unk8;
                            temp_f2 = var_a4_3->unk4;
                            temp_f1_2 = var_a4_3->unk0;
                            temp_f5_2 = (temp_f9 * temp_f6) + (temp_f3 * fparg1);
                            temp_f1_3 = temp_f9 * temp_f1_2;
                            temp_f3_2 = (temp_f9 * temp_f3) + (temp_f2 * fparg1);
                            temp_f2_2 = (temp_f9 * temp_f2) + (temp_f1_2 * fparg1);
                            var_a4_3 += 0x10;
                            temp_f1_4 = temp_f1_3 + var_f4_2;
                            var_f4_2 = temp_f6 * fparg1;
                            var_a4_3->unk-4 = temp_f5_2;
                            var_a4_3->unk-8 = temp_f3_2;
                            var_a4_3->unk-C = temp_f2_2;
                            var_a4_3->unk-10 = temp_f1_4;
                        } while (var_a4_3 != (var_t0 + arg2));
                        var_f5 = var_f4_2;
                    }
                    var_a4 = var_a6;
                }
                var_t1 += 1;
                var_t0 += 4;
                var_a6 += 1;
                *((var_a4 * 4) + arg2) = var_f5;
                if (var_t3 != var_a6) {
                    goto loop_11;
                }
                var_a6 = var_t3;
                var_f4 = arg2->unk0;
            } else {
                var_t3 = arg0 - 1;
            }
            temp_t1 = arg0 - 2;
            var_t0_2 = 1;
            if (temp_t1 >= 1) {
                var_t0_2 = temp_t1;
            }
            var_a7_2 = arg3 + 4;
            temp_t8 = arg2 + 4;
            var_a4_4 = temp_t8;
            arg3->unk0 = (f32) -var_f4;
            if (var_t0_2 & 1) {
                temp_f1_5 = var_a4_4->unk-4 - arg2->unk4;
                var_a4_4 += 4;
                var_a7_2 += 4;
                var_a7_2->unk-4 = temp_f1_5;
            }
            if ((var_t0_2 >> 1) != 0) {
                var_a4_5 = var_a7_2;
                var_a0 = var_a4_4;
                do {
                    *var_a4_5 = var_a0->unk-4 - var_a0->unk0;
                    var_a4_5 += 8;
                    temp_f3_3 = var_a0->unk0 - var_a0->unk4;
                    var_a0 += 8;
                    var_a4_5->unk-4 = temp_f3_3;
                } while ((u32) var_a0 < (u32) ((var_t3 * 4) + arg2));
            }
            temp_a1 = var_t0_2 * 4;
            (temp_a1 + arg3)->unk4 = (f32) *(temp_a1 + arg2);
            temp_f5_3 = arg2->unk0;
            var_a4_6 = 1;
            var_f5_2 = temp_f5_3 * fparg1;
            arg2->unk0 = (f32) (temp_f5_3 * temp_f9);
            if (var_a6 >= 2) {
                var_a4_7 = temp_t8;
                temp_a3 = var_a6 - 1;
                var_a0_2 = temp_a3 & 3;
                if (var_a0_2 != 0) {
                    do {
                        temp_f2_3 = *var_a4_7;
                        temp_f1_6 = temp_f9 * temp_f2_3;
                        var_a4_7 += 4;
                        temp_f1_7 = temp_f1_6 + var_f5_2;
                        var_a0_2 -= 1;
                        var_f5_2 = temp_f2_3 * fparg1;
                        var_a4_7->unk-4 = temp_f1_7;
                    } while (var_a0_2 != 0);
                }
                if ((temp_a3 >> 2) != 0) {
                    var_a0_3 = var_a4_7;
                    var_f4_3 = var_f5_2;
                    do {
                        temp_f7 = var_a0_3->unkC;
                        temp_f5_4 = var_a0_3->unk8;
                        temp_f3_4 = var_a0_3->unk4;
                        temp_f2_4 = var_a0_3->unk0;
                        temp_f6_2 = (temp_f9 * temp_f7) + (temp_f5_4 * fparg1);
                        temp_f2_5 = temp_f9 * temp_f2_4;
                        temp_f5_5 = (temp_f9 * temp_f5_4) + (temp_f3_4 * fparg1);
                        temp_f3_5 = (temp_f9 * temp_f3_4) + (temp_f2_4 * fparg1);
                        var_a0_3 += 0x10;
                        temp_f2_6 = temp_f2_5 + var_f4_3;
                        var_f4_3 = temp_f7 * fparg1;
                        var_a0_3->unk-4 = temp_f6_2;
                        var_a0_3->unk-8 = temp_f5_5;
                        var_a0_3->unk-C = temp_f3_5;
                        var_a0_3->unk-10 = temp_f2_6;
                    } while (var_a0_3 != ((var_a6 * 4) + arg2));
                    var_f5_2 = var_f4_3;
                }
                var_a4_6 = var_a6;
            }
            *((var_a4_6 * 4) + arg2) = var_f5_2;
            return;
        }
        arg3->unk4 = 1.0f;
        arg3->unk0 = -1.0f;
        arg2->unk4 = fparg1;
        arg2->unk0 = temp_f9;
        return;
    }
    arg2->unk0 = 1.0f;
    arg3->unk0 = 0.0f;
}

void DoDomain1(void *arg0, s32 arg1, void *arg2, s64 arg3, s64 arg4, f32 fparg1) {
    s64 sp20;
    s64 sp18;
    f64 sp0;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 var_f4;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a6;
    s32 var_a2;
    s64 var_a0;
    s64 var_a5;
    s64 var_a7;
    void *var_a3;

    temp_f5 = arg2->unkC;
    temp_f6 = arg2->unk8;
    if (temp_f6 != temp_f5) {
        temp_f4 = (fparg1 - temp_f6) / (temp_f5 - temp_f6);
        temp_a0 = arg2->unk4;
        if ((arg0->unk2F4 != temp_f4) || (sp0 = (bitwise f64) temp_f4, (arg0->unk57C != temp_a0))) {
            sp20 = arg4;
            sp18 = arg3;
            sp0 = (bitwise f64) temp_f4;
            __glexpim_EvalPoint2(temp_a0, arg1);
            arg0->unk584 = 2;
            arg0->unk2F4 = (bitwise f32) sp0;
            arg0->unk57C = (s32) arg2->unk4;
        }
        temp_a2 = arg2->unk0;
        if (temp_a2 > 0) {
            var_a5 = arg3;
            var_a7 = arg4;
            temp_a6 = temp_a2 * 4;
loop_8:
            *var_a5 = 0.0f;
            var_f4 = 0.0f;
            var_a0 = var_a7;
            var_a7 += 4;
            var_a2 = 0;
            if (arg2->unk4 > 0) {
                var_a3 = arg0;
                do {
                    var_f4 += *var_a0 * var_a3->unk2FC;
                    *var_a5 = var_f4;
                    var_a3 += 4;
                    var_a2 += 1;
                    var_a0 += temp_a6;
                } while (var_a2 < arg2->unk4);
            }
            var_a5 += 4;
            if (var_a7 != (temp_a6 + arg4)) {
                goto loop_8;
            }
        }
    }
}

void DoEvalCoord1(__GLcontext *arg0, s32 arg1, f32 fparg1) {
    s64 sp5E0;
    f64 sp5C8;
    f64 sp5C0;
    f64 sp5B8;
    f64 sp5B0;
    ? sp5A0;
    ? sp590;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a4;
    s32 var_a2;
    s32 var_a3;
    s32 var_v0;
    s64 *temp_at;
    s64 *temp_v0;
    s64 var_ra;
    u32 temp_a0;
    u32 temp_a0_2;

    var_ra = saved_reg_ra;
    var_a3 = 0xB1;
    var_a2 = 0;
    temp_a4 = arg0 + 0x6E50;
    sp5C0 = (bitwise f64) arg0->state.current.userColor.a;
    sp5B0 = (bitwise f64) arg0->state.current.userColor.b;
    sp5B8 = (bitwise f64) arg0->state.current.userColor.g;
    sp5C8 = (bitwise f64) arg0->state.current.userColor.r;
    do {
        temp_v0 = var_a2 + sp;
        temp_at = var_a2 + temp_a4;
        var_a2 += 8;
        var_a3 -= 1;
        *temp_v0 = *temp_at;
    } while (var_a3 > 0);
    *(var_a2 + sp) = *(var_a2 + temp_a4);
    temp_a0 = arg0->state.enables.pixelPath;
    if (arg0->modes.colorIndexMode != 0) {
        temp_a1 = temp_a0 & 2;
        if (temp_a1 != 0) {
            __glexpim_EvalPoint2((s32) sp, temp_a1);
            var_ra = sp5E0;
        }
    } else if (temp_a0 & 1) {
        __glexpim_EvalPoint2((s32) sp, arg1);
        ((? (*)(__GLcontext *)) arg0->procs.table[0x2A])(arg0);
        var_ra = sp5E0;
        if (!(arg0->state.enables.general & 0x80)) {
            arg0->state.current.userColor.a = (bitwise f32) sp5C0;
            arg0->state.current.userColor.b = second half of f64;
            arg0->state.current.userColor.g = (bitwise f32) sp5B8;
            arg0->state.current.userColor.r = second half of f64;
        }
    }
    if (arg0->state.enables.pixelPath & 0x40) {
        sp5E0 = var_ra;
        __glexpim_EvalPoint2((s32) sp, M2C_ERROR(/* Read from unset register $a1 */));
        goto block_7;
    }
    if (arg0->state.enables.pixelPath & 0x20) {
        sp5E0 = var_ra;
        __glexpim_EvalPoint2((s32) sp, M2C_ERROR(/* Read from unset register $a1 */));
        arg0->state.current.texture[0].w = arg0->constants.one;
        goto block_7;
    }
    if (arg0->state.enables.pixelPath & 0x10) {
        sp5E0 = var_ra;
        __glexpim_EvalPoint2((s32) sp, M2C_ERROR(/* Read from unset register $a1 */));
        arg0->state.current.texture[0].w = arg0->constants.one;
        arg0->state.current.texture[0].z = 0.0f;
        goto block_7;
    }
    var_v0 = arg0->state.enables.pixelPath & 4;
    if (arg0->state.enables.pixelPath & 8) {
        sp5E0 = var_ra;
        __glexpim_EvalPoint2((s32) sp, M2C_ERROR(/* Read from unset register $a1 */));
        arg0->state.current.texture[0].w = arg0->constants.one;
        arg0->state.current.texture[0].z = 0.0f;
        arg0->state.current.texture[0].y = 0.0f;
block_7:
        var_v0 = arg0->state.enables.pixelPath & 4;
    }
    sp5E0 = var_ra;
    if (var_v0 != 0) {
        __glexpim_EvalPoint2((s32) sp, M2C_ERROR(/* Read from unset register $a1 */));
    }
    __glExpEvalPassCurrentState(arg0, arg0);
    temp_a0_2 = arg0->state.enables.pixelPath;
    temp_a1_2 = temp_a0_2 & 0x80;
    if (temp_a0_2 & 0x100) {
        __glexpim_EvalPoint2((s32) sp, temp_a1_2);
        __glExpEvalPassCurrentState((__GLcontext *) &sp590, &sp590);
    } else if (temp_a1_2 != 0) {
        __glexpim_EvalPoint2((s32) sp, temp_a1_2);
        arg0->unk15CC->unk5F8(&sp5A0);
    }
    if ((arg0->state.enables.pixelPath & 1) && (arg0->state.enables.general & 0x80)) {
        ((? (*)(__GLcontext *)) arg0->procs.table[0x2A])(arg0);
        arg0->state.current.userColor.a = second half of f64;
        arg0->state.current.userColor.b = (bitwise f32) sp5B0;
        arg0->state.current.userColor.g = (bitwise f32) sp5B8;
        arg0->state.current.userColor.r = second half of f64;
        ((? (*)(__GLcontext *)) arg0->procs.table[0x2A])(arg0);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x60, 0x64, 0x68, 0x6c], gap at: 0x8. */
void __glExpDoEvalCoord1(__GLcontext *gc, s32 arg1, ...) {
    f32 temp_f30;

    temp_f30 = gc->state.current.color.r;
    unksp8 = (bitwise f64) gc->state.current.texture[0].w;
    unksp10 = (bitwise f64) gc->state.current.texture[0].z;
    unksp18 = (bitwise f64) gc->state.current.texture[0].y;
    unksp20 = (bitwise f64) gc->state.current.texture[0].x;
    unksp28 = (bitwise f64) gc->state.current.normal.w;
    unksp30 = (bitwise f64) gc->state.current.normal.z;
    unksp38 = (bitwise f64) gc->state.current.normal.y;
    unksp40 = (bitwise f64) gc->state.current.normal.x;
    unksp48 = (bitwise f64) gc->state.current.color.a;
    unksp50 = (bitwise f64) gc->state.current.color.b;
    unksp58 = (bitwise f64) gc->state.current.color.g;
    __glexpim_EvalPoint2((s32) gc, arg1);
    gc->state.current.color.r = temp_f30;
    gc->state.current.texture[0].w = (bitwise f32) unksp8;
    gc->state.current.texture[0].z = (bitwise f32) unksp10;
    gc->state.current.texture[0].y = (bitwise f32) unksp18;
    gc->state.current.texture[0].x = second half of f64;
    gc->state.current.normal.w = (bitwise f32) unksp28;
    gc->state.current.normal.z = second half of f64;
    gc->state.current.normal.y = (bitwise f32) unksp38;
    gc->state.current.normal.x = second half of f64;
    gc->state.current.color.a = (bitwise f32) unksp48;
    gc->state.current.color.b = second half of f64;
    gc->state.current.color.g = (bitwise f32) unksp58;
    __glExpEvalRestoreCurrentState(gc, gc, second half of f64, unksp48, second half of f64, unksp38, second half of f64, unksp28, second half of f64, unksp18);
}

void ComputeFirstPartials(void *arg0, void *arg1, void *arg2) {
    f32 temp_f2;
    f32 temp_f4;

    temp_f4 = arg1->unkC;
    arg1->unk0 = (f32) ((arg1->unk0 * arg0->unkC) - (arg0->unk0 * temp_f4));
    arg1->unk4 = (f32) ((arg1->unk4 * arg0->unkC) - (arg0->unk4 * temp_f4));
    arg1->unk8 = (f32) ((arg1->unk8 * arg0->unkC) - (arg0->unk8 * temp_f4));
    temp_f2 = arg2->unkC;
    arg2->unk0 = (f32) ((arg2->unk0 * arg0->unkC) - (arg0->unk0 * temp_f2));
    arg2->unk4 = (f32) ((arg2->unk4 * arg0->unkC) - (arg0->unk4 * temp_f2));
    arg2->unk8 = (f32) ((arg2->unk8 * arg0->unkC) - (arg0->unk8 * temp_f2));
}

void ComputeNormal2(void *arg0, void *arg1, void *arg2, void *arg3) {
    arg1->unk0 = (f32) ((arg2->unk4 * arg3->unk8) - (arg3->unk4 * arg2->unk8));
    arg1->unk4 = (f32) ((arg3->unk0 * arg2->unk8) - (arg2->unk0 * arg3->unk8));
    arg1->unk8 = (f32) ((arg2->unk0 * arg3->unk4) - (arg3->unk0 * arg2->unk4));
    arg0->unk2E88(arg1);
}

void DoDomain2(void *arg0, s32 arg1, void *arg3, s64 arg4, s64 arg5, f32 fparg1, f32 fparg2) {
    s64 sp30;
    s64 sp18;
    s64 sp10;
    f64 sp8;
    f64 sp0;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_v1;
    s32 var_a6;
    s32 var_t0;
    s64 var_a0;
    s64 var_a2;
    s64 var_ra;
    s64 var_t1;
    s64 var_t2;
    void *temp_a5;
    void *var_a2_2;
    void *var_a7;
    void *var_t8;

    var_ra = saved_reg_ra;
    temp_f6 = arg3->unk10;
    temp_f5 = arg3->unkC;
    sp18 = arg4;
    sp10 = arg5;
    if (temp_f5 != temp_f6) {
        temp_f8 = arg3->unk14;
        temp_f7 = arg3->unk18;
        if (temp_f8 != temp_f7) {
            temp_f4 = (fparg1 - temp_f5) / (temp_f6 - temp_f5);
            temp_a0 = arg3->unk4;
            sp0 = (bitwise f64) ((fparg2 - temp_f8) / (temp_f7 - temp_f8));
            if ((arg0->unk2F4 == temp_f4) && (sp8 = (bitwise f64) temp_f4, (arg0->unk57C == temp_a0))) {

            } else {
                sp8 = (bitwise f64) temp_f4;
                __glexpim_EvalPoint2(temp_a0, arg1);
                arg0->unk584 = 2;
                arg0->unk2F4 = (bitwise f32) sp8;
                arg0->unk57C = (s32) arg3->unk4;
                var_ra = sp30;
            }
            temp_a0_2 = arg3->unk8;
            if ((arg0->unk2F8 != (bitwise f32) sp0) || (arg0->unk580 != temp_a0_2)) {
                sp30 = var_ra;
                __glexpim_EvalPoint2(temp_a0_2, M2C_ERROR(/* Read from unset register $a1 */));
                arg0->unk588 = 2;
                arg0->unk2F8 = (bitwise f32) sp0;
                arg0->unk580 = (s32) arg3->unk8;
            }
            temp_a2 = arg3->unk0;
            if (temp_a2 > 0) {
                var_t1 = sp18;
                temp_a3 = temp_a2 * 4;
                var_t2 = sp10;
loop_11:
                *var_t1 = 0.0f;
                var_a2 = var_t2;
                var_f6 = 0.0f;
                var_a6 = 0;
                if (arg3->unk4 > 0) {
                    var_a7 = arg0;
loop_19:
                    temp_f5_2 = *var_a2;
                    temp_a0_3 = arg3->unk8;
                    var_a2 += temp_a3;
                    temp_v1 = temp_a0_3 - 1;
                    var_f5 = temp_f5_2 * arg0->unk39C;
                    if (temp_a0_3 >= 2) {
                        var_t0 = 1;
                        if (temp_v1 >= 1) {
                            var_t0 = temp_v1;
                        }
                        temp_a5 = arg0 + 4;
                        var_t8 = temp_a5;
                        if (var_t0 & 1) {
                            temp_f1 = *var_a2 * temp_a5->unk39C;
                            var_a2 += temp_a3;
                            var_f5 += temp_f1;
                            var_t8 = temp_a5 + 4;
                        }
                        if ((var_t0 >> 1) != 0) {
                            var_f4 = var_f5;
                            var_a2_2 = var_t8;
                            var_a0 = var_a2;
                            do {
                                temp_a1 = temp_a3 + var_a0;
                                temp_f1_2 = *var_a0 * var_a2_2->unk39C;
                                temp_f0 = *temp_a1 * var_a2_2->unk3A0;
                                var_a0 = (s64) (temp_a3 + temp_a1);
                                var_a2_2 += 8;
                                var_f4 = temp_f0 + (temp_f1_2 + var_f4);
                            } while ((u32) var_a2_2 < (u32) ((temp_a0_3 * 4) + arg0));
                            var_f5 = var_f4;
                            var_a2 = var_a0;
                        }
                    }
                    var_a6 += 1;
                    var_f6 += var_a7->unk2FC * var_f5;
                    *var_t1 = var_f6;
                    var_a7 += 4;
                    if (var_a6 < arg3->unk4) {
                        goto loop_19;
                    }
                }
                var_t2 += 4;
                var_t1 += 4;
                if (var_t2 != (temp_a3 + sp10)) {
                    goto loop_11;
                }
            }
        }
    }
}

void DoDomain2WithDerivs(void *arg0, s32 arg1, void *arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, f32 fparg1, f32 fparg2) {
    s64 sp40;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    f64 sp8;
    f64 sp0;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 var_f4;
    f32 var_f5;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_t1;
    s32 var_a6;
    s64 var_a0;
    s64 var_a2;
    s64 var_a7;
    s64 var_ra;
    s64 var_t0;
    s64 var_t2;
    void *var_a3;
    void *var_t8;

    var_ra = saved_reg_ra;
    temp_f5 = arg3->unk10;
    temp_f4 = arg3->unkC;
    sp10 = arg4;
    sp18 = arg5;
    sp20 = arg6;
    sp28 = arg7;
    if (temp_f4 != temp_f5) {
        temp_f7 = arg3->unk14;
        temp_f6 = arg3->unk18;
        if (temp_f7 != temp_f6) {
            temp_f3 = (fparg1 - temp_f4) / (temp_f5 - temp_f4);
            sp8 = (bitwise f64) temp_f3;
            sp0 = (bitwise f64) ((fparg2 - temp_f7) / (temp_f6 - temp_f7));
            if (arg0->unk2F4 == temp_f3) {
                if (arg0->unk584 == 1) {
                    if (arg0->unk57C == arg3->unk4) {

                    } else {
                        goto block_8;
                    }
                } else {
                    goto block_7;
                }
            } else {
block_7:
block_8:
                __glexpim_EvalPoint2(arg3->unk4, arg1);
                arg0->unk584 = 1;
                arg0->unk2F4 = (bitwise f32) sp8;
                arg0->unk57C = (s32) arg3->unk4;
                var_ra = sp40;
            }
            if (arg0->unk2F8 == (bitwise f32) sp0) {
                if (arg0->unk588 == 1) {
                    if (arg0->unk580 != arg3->unk8) {
                        sp40 = var_ra;
                        goto block_16;
                    }
                } else {
                    goto block_16;
                }
            } else {
                sp40 = var_ra;
block_16:
                sp40 = var_ra;
                __glexpim_EvalPoint2(arg3->unk8, M2C_ERROR(/* Read from unset register $a1 */));
                arg0->unk588 = 1;
                arg0->unk2F8 = (bitwise f32) sp0;
                arg0->unk580 = (s32) arg3->unk8;
            }
            temp_a3 = arg3->unk0;
            if (temp_a3 > 0) {
                var_a0 = sp10;
                var_a7 = sp18;
                var_t0 = sp20;
                temp_a4 = temp_a3 * 4;
                var_t2 = sp28;
loop_20:
                *var_t0 = 0.0f;
                *var_a7 = 0.0f;
                *var_a0 = 0.0f;
                var_a2 = var_t2;
                var_a6 = 0;
                if (arg3->unk4 > 0) {
                    var_t8 = arg0;
loop_25:
                    temp_f0 = *var_a2;
                    var_a2 += temp_a4;
                    temp_t1 = arg3->unk8;
                    var_f4 = arg0->unk4DC * temp_f0;
                    var_f5 = arg0->unk39C * temp_f0;
                    if (temp_t1 >= 2) {
                        var_a3 = arg0 + 4;
                        do {
                            temp_f3_2 = *var_a2;
                            temp_f2 = var_a3->unk4DC * temp_f3_2;
                            temp_f1 = var_a3->unk39C * temp_f3_2;
                            var_a2 += temp_a4;
                            var_a3 += 4;
                            var_f4 += temp_f2;
                            var_f5 += temp_f1;
                        } while ((u32) var_a3 < (u32) ((temp_t1 * 4) + arg0));
                    }
                    var_a6 += 1;
                    *var_a0 = (f32) (*var_a0 + (var_t8->unk2FC * var_f5));
                    *var_a7 = (f32) (*var_a7 + (var_t8->unk43C * var_f5));
                    *var_t0 = (f32) (*var_t0 + (var_t8->unk2FC * var_f4));
                    var_t8 += 4;
                    if (var_a6 < arg3->unk4) {
                        goto loop_25;
                    }
                }
                var_t0 += 4;
                var_a7 += 4;
                var_t2 += 4;
                var_a0 += 4;
                if (var_t2 != (temp_a4 + sp28)) {
                    goto loop_20;
                }
            }
        }
    }
}

void DoEvalCoord2(__GLcontext *arg0, void *arg3, f32 fparg1, f32 fparg2) {
    s64 sp628;
    f64 sp5F8;
    f64 sp5F0;
    f64 sp5E8;
    f64 sp5E0;
    ? sp5D0;
    ? sp5C0;
    s32 (*sp5B0)(__GLcontext *, s8 *, s8 *, ...);
    void (*sp5A0)(__GLcontext *, s8 *);
    f32 sp590;
    f32 var_f0;
    s32 temp_a1;
    s32 temp_a5;
    s32 var_a1;
    s32 var_a2;
    s32 var_a4;
    s32 var_s2;
    s64 *temp_at;
    s64 *temp_v0;
    s64 var_ra;
    u32 temp_a0;

    var_ra = saved_reg_ra;
    var_a4 = 0xB1;
    var_a2 = 0;
    temp_a5 = arg0 + 0x6E50;
    sp5E0 = (bitwise f64) arg0->state.current.userColor.a;
    sp5E8 = (bitwise f64) arg0->state.current.userColor.b;
    sp5F0 = (bitwise f64) arg0->state.current.userColor.g;
    sp5F8 = (bitwise f64) arg0->state.current.userColor.r;
    do {
        temp_v0 = var_a2 + sp;
        temp_at = var_a2 + temp_a5;
        var_a2 += 8;
        var_a4 -= 1;
        *temp_v0 = *temp_at;
    } while (var_a4 > 0);
    *(var_a2 + sp) = *(var_a2 + temp_a5);
    if (arg3 != NULL) {
        arg3->unk0 = 0;
    }
    temp_a0 = arg0->state.enables.eval;
    var_s2 = -1;
    if (arg0->state.enables.general & 0x800000) {
        if (temp_a0 & 0x100) {
            __glExpDoEvalCoord1(sp, sp, 0x800000, var_a2, arg0 + 0x7068, &sp590, &sp5A0, &sp5B0, arg0->unk70D4, fparg1, fparg2);
            __glExpDoEvalCoord1((__GLcontext *) &sp590, &sp590, &sp5A0, &sp5B0);
            __glExpDoEvalCoord1(arg0, arg0, arg0 + 0xB8, &sp5A0, &sp5B0);
            var_ra = sp628;
            if (arg3 != NULL) {
                arg3->unk0 = (s32) (arg3->unk0 | 0x12);
                arg3->unk14 = (f32) arg0->state.current.normal.x;
                arg3->unk18 = (f32) arg0->state.current.normal.y;
                arg3->unk1C = (f32) arg0->state.current.normal.z;
                arg3->unk20 = (f32) arg0->state.current.normal.w;
                arg3->unk34 = sp590;
                arg3->unk38 = sp594;
                arg3->unk3C = sp598;
                arg3->unk40 = sp59C;
            }
            var_s2 = 4;
        } else if (temp_a0 & 0x80) {
            __glExpDoEvalCoord1(sp, sp, 0x800000, var_a2, &arg0->unk7040, &sp590, &sp5C0, &sp5D0, arg0->unk70D0, fparg1, fparg2);
            __glExpDoEvalCoord1(arg0, arg0, &arg0->state.current.normal, &sp5C0, &sp5D0);
            var_ra = sp628;
            if (arg3 != NULL) {
                arg3->unk0 = (s32) (arg3->unk0 | 0xA);
                arg3->unk14 = (f32) arg0->state.current.normal.x;
                arg3->unk18 = (f32) arg0->state.current.normal.y;
                arg3->unk1C = (f32) arg0->state.current.normal.z;
                arg3->unk20 = (f32) arg0->state.current.normal.w;
                arg3->unk34 = sp590;
                arg3->unk38 = sp594;
                arg3->unk3C = sp598;
                arg3->unk40 = sp59C;
            }
            var_s2 = 3;
        }
    } else {
        temp_a1 = temp_a0 & 4;
        if (temp_a1 != 0) {
            __glExpDoEvalCoord1(sp, sp, temp_a1, var_a2, &arg0->unk6F78, &arg0->state.current.normal, arg0->unk70BC, sp, fparg1, fparg2);
            var_ra = sp628;
            if (arg3 != NULL) {
                arg3->unk0 = (s32) (arg3->unk0 | 2);
                arg3->unk14 = (f32) arg0->state.current.normal.x;
                arg3->unk18 = (f32) arg0->state.current.normal.y;
                arg3->unk1C = (f32) arg0->state.current.normal.z;
                arg3->unk20 = (f32) arg0->state.current.normal.w;
            }
        }
        if (arg0->state.enables.eval & 0x100) {
            sp628 = var_ra;
            __glExpDoEvalCoord1(sp, sp);
            if (arg3 != NULL) {
                arg3->unk0 = (s32) (arg3->unk0 | 0x10);
                arg3->unk34 = sp590;
                arg3->unk38 = sp594;
                arg3->unk3C = sp598;
                arg3->unk40 = sp59C;
            }
            var_s2 = 4;
        } else if (arg0->state.enables.eval & 0x80) {
            sp628 = var_ra;
            __glExpDoEvalCoord1(sp, sp);
            if (arg3 != NULL) {
                arg3->unk0 = (s32) (arg3->unk0 | 8);
                arg3->unk34 = sp590;
                arg3->unk38 = sp594;
                arg3->unk3C = sp598;
                arg3->unk40 = sp59C;
            }
            var_s2 = 3;
        }
    }
    if (arg0->modes.colorIndexMode != 0) {
        var_a1 = arg0->state.enables.eval & 0x40;
        if (arg0->state.enables.eval & 2) {
            sp628 = var_ra;
            __glExpDoEvalCoord1(sp, sp, var_a1);
            if (arg3 != NULL) {
                arg3->unk0 = (s32) (arg3->unk0 | 1);
                arg3->unk4 = (f32) arg0->state.current.color.r;
                arg3->unk8 = (f32) arg0->state.current.color.g;
                arg3->unkC = (f32) arg0->state.current.color.b;
                arg3->unk10 = (f32) arg0->state.current.color.a;
            }
            goto block_14;
        }
    } else {
        var_a1 = arg0->state.enables.eval & 0x40;
        if (arg0->state.enables.eval & 1) {
            sp628 = var_ra;
            __glExpDoEvalCoord1(sp, sp, var_a1);
            sub_0da60000(arg0);
            if (arg3 != NULL) {
                arg3->unk0 = (s32) (arg3->unk0 | 1);
                if (!(arg0->state.enables.general & 0x80)) {
                    arg3->unk4 = (f32) arg0->state.current.color.r;
                    arg3->unk8 = (f32) arg0->state.current.color.g;
                    arg3->unkC = (f32) arg0->state.current.color.b;
                    var_f0 = arg0->state.current.color.a;
                } else {
                    arg3->unk4 = (f32) arg0->state.current.userColor.r;
                    arg3->unk8 = (f32) arg0->state.current.userColor.g;
                    arg3->unkC = (f32) arg0->state.current.userColor.b;
                    var_f0 = arg0->state.current.userColor.a;
                }
                arg3->unk10 = var_f0;
            }
            if (!(arg0->state.enables.general & 0x80)) {
                arg0->state.current.userColor.a = second half of f64;
                arg0->state.current.userColor.b = (bitwise f32) sp5E8;
                arg0->state.current.userColor.g = (bitwise f32) sp5F0;
                arg0->state.current.userColor.r = second half of f64;
            }
block_14:
            var_a1 = arg0->state.enables.eval & 0x40;
        }
    }
    if (var_a1 != 0) {
        sp628 = var_ra;
        __glExpDoEvalCoord1(sp, sp, var_a1);
        if (arg3 != NULL) {
            arg3->unk0 = (s32) (arg3->unk0 | 4);
            arg3->unk24 = (f32) arg0->state.current.texture[0].x;
            arg3->unk28 = (f32) arg0->state.current.texture[0].y;
            arg3->unk2C = (f32) arg0->state.current.texture[0].z;
            goto block_18;
        }
    } else if (arg0->state.enables.eval & 0x20) {
        sp628 = var_ra;
        __glExpDoEvalCoord1(sp, sp, var_a1);
        arg0->state.current.texture[0].w = arg0->constants.one;
        if (arg3 != NULL) {
            arg3->unk0 = (s32) (arg3->unk0 | 4);
            arg3->unk24 = (f32) arg0->state.current.texture[0].x;
            arg3->unk28 = (f32) arg0->state.current.texture[0].y;
            arg3->unk2C = (f32) arg0->state.current.texture[0].z;
            goto block_18;
        }
    } else if (arg0->state.enables.eval & 0x10) {
        sp628 = var_ra;
        __glExpDoEvalCoord1(sp, sp, var_a1);
        arg0->state.current.texture[0].z = 0.0f;
        arg0->state.current.texture[0].w = arg0->constants.one;
        if (arg3 != NULL) {
            arg3->unk0 = (s32) (arg3->unk0 | 4);
            arg3->unk24 = (f32) arg0->state.current.texture[0].x;
            arg3->unk28 = (f32) arg0->state.current.texture[0].y;
            arg3->unk2C = (f32) arg0->state.current.texture[0].z;
            goto block_18;
        }
    } else {
        sp628 = var_ra;
        if (arg0->state.enables.eval & 8) {
            __glExpDoEvalCoord1(sp, sp, var_a1);
            arg0->state.current.texture[0].z = 0.0f;
            arg0->state.current.texture[0].y = 0.0f;
            arg0->state.current.texture[0].w = arg0->constants.one;
            if (arg3 != NULL) {
                arg3->unk0 = (s32) (arg3->unk0 | 4);
                arg3->unk24 = (f32) arg0->state.current.texture[0].x;
                arg3->unk28 = (f32) arg0->state.current.texture[0].y;
                arg3->unk2C = (f32) arg0->state.current.texture[0].z;
block_18:
                arg3->unk30 = arg0->state.current.texture[0].w;
            }
        }
    }
    __glExpEvalPassCurrentState(arg0, arg0);
    if (var_s2 != 3) {
        if (var_s2 == 4) {
            arg0->unk15CC->unk618(&sp590, 4);
        }
    } else {
        arg0->unk15CC->unk5F8(&sp590);
    }
    if ((arg0->state.enables.eval & 1) && (arg0->state.enables.general & 0x80)) {
        __glExpEvalPassCurrentState(arg0, arg0);
        arg0->state.current.userColor.a = second half of f64;
        arg0->state.current.userColor.b = (bitwise f32) sp5E8;
        arg0->state.current.userColor.g = (bitwise f32) sp5F0;
        arg0->state.current.userColor.r = second half of f64;
        ((? (*)(__GLcontext *)) arg0->procs.table[0x2A])(arg0);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x60, 0x64, 0x68, 0x6c], gap at: 0x8. */
void __glExpDoEvalCoord2(__GLcontext *gc, ...) {
    f32 temp_f30;

    temp_f30 = gc->state.current.color.r;
    unksp8 = (bitwise f64) gc->state.current.texture[0].w;
    unksp10 = (bitwise f64) gc->state.current.texture[0].z;
    unksp18 = (bitwise f64) gc->state.current.texture[0].y;
    unksp20 = (bitwise f64) gc->state.current.texture[0].x;
    unksp28 = (bitwise f64) gc->state.current.normal.w;
    unksp30 = (bitwise f64) gc->state.current.normal.z;
    unksp38 = (bitwise f64) gc->state.current.normal.y;
    unksp40 = (bitwise f64) gc->state.current.normal.x;
    unksp48 = (bitwise f64) gc->state.current.color.a;
    unksp50 = (bitwise f64) gc->state.current.color.b;
    unksp58 = (bitwise f64) gc->state.current.color.g;
    __glExpDoEvalCoord1(gc, 0);
    gc->state.current.color.r = temp_f30;
    gc->state.current.texture[0].w = (bitwise f32) unksp8;
    gc->state.current.texture[0].z = (bitwise f32) unksp10;
    gc->state.current.texture[0].y = (bitwise f32) unksp18;
    gc->state.current.texture[0].x = second half of f64;
    gc->state.current.normal.w = (bitwise f32) unksp28;
    gc->state.current.normal.z = second half of f64;
    gc->state.current.normal.y = (bitwise f32) unksp38;
    gc->state.current.normal.x = second half of f64;
    gc->state.current.color.a = (bitwise f32) unksp48;
    gc->state.current.color.b = second half of f64;
    gc->state.current.color.g = (bitwise f32) unksp58;
    __glExpEvalRestoreCurrentState(gc, gc, second half of f64, unksp48, second half of f64, unksp38, second half of f64, unksp28, second half of f64, unksp18);
}

void __glExpEvalMesh1Line(__GLcontext *gc, s64 arg1, s32 arg2, ...) {
    s64 sp60;
    f64 sp58;
    f64 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    f32 temp_f22;
    s32 temp_a4;
    s64 var_s1;

    sp60 = arg1;
    temp_a4 = gc->state.evaluator.unkC;
    if (temp_a4 != 0) {
        sp8 = (bitwise f64) gc->state.current.texture[0].w;
        sp30 = (bitwise f64) gc->state.current.texture[0].z;
        sp20 = (bitwise f64) gc->state.current.texture[0].y;
        sp18 = (bitwise f64) gc->state.current.texture[0].x;
        sp28 = (bitwise f64) gc->state.current.normal.w;
        sp58 = (bitwise f64) gc->state.current.normal.z;
        sp50 = (bitwise f64) gc->state.current.normal.y;
        sp48 = (bitwise f64) gc->state.current.normal.x;
        sp40 = (bitwise f64) gc->state.current.color.a;
        sp38 = (bitwise f64) gc->state.current.color.b;
        sp10 = (bitwise f64) gc->state.current.color.g;
        sp0 = (bitwise f64) gc->state.current.color.r;
        temp_f22 = (gc->state.evaluator.unk4 - gc->state.evaluator.unk0) / (f32) temp_a4;
        gc->unk15CC->unk1C(3, temp_a4);
        var_s1 = sp60;
        if (arg2 >= sp60) {
loop_7:
            if (gc->state.evaluator.unkC == var_s1) {

            }
            __glexpim_EvalPoint2((s32) gc, M2C_ERROR(/* Read from unset register $a1 */));
            var_s1 += 1;
            if ((arg2 + 1) != var_s1) {
                goto loop_7;
            }
        }
        gc->unk15CC->unk2C();
        gc->state.current.texture[0].w = (bitwise f32) sp8;
        gc->state.current.texture[0].z = second half of f64;
        gc->state.current.texture[0].y = (bitwise f32) sp20;
        gc->state.current.texture[0].x = (bitwise f32) sp18;
        gc->state.current.normal.w = second half of f64;
        gc->state.current.normal.z = (bitwise f32) sp58;
        gc->state.current.normal.y = second half of f64;
        gc->state.current.normal.x = (bitwise f32) sp48;
        gc->state.current.color.a = second half of f64;
        gc->state.current.color.b = (bitwise f32) sp38;
        gc->state.current.color.g = second half of f64;
        gc->state.current.color.r = (bitwise f32) sp0;
        __glExpEvalRestoreCurrentState(gc, gc, sp8, second half of f64);
    }
}

void __glExpEvalMesh1Point(__GLcontext *gc, s64 arg1, s32 arg2, ...) {
    s64 sp60;
    f64 sp58;
    f64 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    f32 temp_f22;
    s32 temp_a4;
    s64 var_s1;

    sp60 = arg1;
    temp_a4 = gc->state.evaluator.unkC;
    if (temp_a4 != 0) {
        sp8 = (bitwise f64) gc->state.current.texture[0].w;
        sp30 = (bitwise f64) gc->state.current.texture[0].z;
        sp20 = (bitwise f64) gc->state.current.texture[0].y;
        sp18 = (bitwise f64) gc->state.current.texture[0].x;
        sp28 = (bitwise f64) gc->state.current.normal.w;
        sp58 = (bitwise f64) gc->state.current.normal.z;
        sp50 = (bitwise f64) gc->state.current.normal.y;
        sp48 = (bitwise f64) gc->state.current.normal.x;
        sp40 = (bitwise f64) gc->state.current.color.a;
        sp38 = (bitwise f64) gc->state.current.color.b;
        sp10 = (bitwise f64) gc->state.current.color.g;
        sp0 = (bitwise f64) gc->state.current.color.r;
        temp_f22 = (gc->state.evaluator.unk4 - gc->state.evaluator.unk0) / (f32) temp_a4;
        gc->unk15CC->unk1C(0, temp_a4);
        var_s1 = sp60;
        if (arg2 >= sp60) {
loop_7:
            if (gc->state.evaluator.unkC == var_s1) {

            }
            __glexpim_EvalPoint2((s32) gc, M2C_ERROR(/* Read from unset register $a1 */));
            var_s1 += 1;
            if ((arg2 + 1) != var_s1) {
                goto loop_7;
            }
        }
        gc->unk15CC->unk2C();
        gc->state.current.texture[0].w = (bitwise f32) sp8;
        gc->state.current.texture[0].z = second half of f64;
        gc->state.current.texture[0].y = (bitwise f32) sp20;
        gc->state.current.texture[0].x = (bitwise f32) sp18;
        gc->state.current.normal.w = second half of f64;
        gc->state.current.normal.z = (bitwise f32) sp58;
        gc->state.current.normal.y = second half of f64;
        gc->state.current.normal.x = (bitwise f32) sp48;
        gc->state.current.color.a = second half of f64;
        gc->state.current.color.b = (bitwise f32) sp38;
        gc->state.current.color.g = second half of f64;
        gc->state.current.color.r = (bitwise f32) sp0;
        __glExpEvalRestoreCurrentState(gc, gc, sp8, second half of f64);
    }
}

void sendChange(__GLcontext *arg0, void *arg1) {
    s64 sp30;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_a0;
    f32 temp_f4;
    s32 temp_a3;
    s32 var_a2;
    s32 var_a3;
    s32 var_at;
    s64 var_ra;

    var_ra = saved_reg_ra;
    sp0 = (bitwise f64) arg0->state.current.userColor.a;
    var_a3 = arg1->unk0;
    sp8 = (bitwise f64) arg0->state.current.userColor.b;
    sp10 = (bitwise f64) arg0->state.current.userColor.g;
    sp18 = (bitwise f64) arg0->state.current.userColor.r;
    if (var_a3 & 1) {
        temp_f4 = arg1->unk4;
        if (arg0->state.enables.general & 0x80) {
            arg0->state.current.userColor.r = temp_f4;
            arg0->state.current.userColor.g = arg1->unk8;
            arg0->state.current.userColor.b = arg1->unkC;
            arg0->state.current.userColor.a = arg1->unk10;
            arg0->procs.table[0x2A](arg0, var_a3);
            var_ra = sp30;
        } else {
            arg0->state.current.color.r = temp_f4;
            arg0->state.current.color.g = arg1->unk8;
            arg0->state.current.color.b = arg1->unkC;
            arg0->state.current.color.a = arg1->unk10;
        }
        var_a3 = arg1->unk0;
    }
    var_a2 = var_a3 & 2;
    if (var_a3 & 4) {
        arg0->state.current.texture[0].x = arg1->unk24;
        arg0->state.current.texture[0].y = arg1->unk28;
        arg0->state.current.texture[0].z = arg1->unk2C;
        arg0->state.current.texture[0].w = arg1->unk30;
        var_a2 = arg1->unk0 & 2;
    }
    if (var_a2 != 0) {
        arg0->state.current.normal.x = arg1->unk14;
        arg0->state.current.normal.y = arg1->unk18;
        arg0->state.current.normal.z = arg1->unk1C;
        sp30 = var_ra;
        arg0->state.current.normal.w = arg1->unk20;
    }
    sp30 = var_ra;
    __glExpEvalPassCurrentState(arg0, arg0);
    temp_a3 = arg1->unk0;
    if (temp_a3 & 8) {
        temp_a0 = arg1 + 0x34;
        __glExpEvalPassCurrentState(temp_a0, temp_a0);
        goto block_11;
    }
    var_at = temp_a3 & 1;
    if (temp_a3 & 0x10) {
        arg0->unk15CC->unk618(arg1 + 0x34);
block_11:
        var_at = arg1->unk0 & 1;
    }
    if ((var_at != 0) && (arg0->state.enables.general & 0x80)) {
        ((? (*)(__GLcontext *)) arg0->procs.table[0x2A])(arg0);
        arg0->state.current.userColor.a = (bitwise f32) sp0;
        arg0->state.current.userColor.b = second half of f64;
        arg0->state.current.userColor.g = (bitwise f32) sp10;
        arg0->state.current.userColor.r = (bitwise f32) sp18;
        ((? (*)(__GLcontext *)) arg0->procs.table[0x2A])(arg0);
    }
}

void __glExpEvalMesh2Fill(__GLcontext *gc, s32 arg1, s32 arg2, s64 arg3, s64 arg4, ? arg_sp0, ...) {
    s64 sp110;
    s64 spA8;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    f64 sp60;
    f64 sp58;
    f64 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f32 temp_f26;
    f32 temp_f28;
    s32 temp_a0;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 var_s5;
    s64 var_a0;
    s64 var_s2;
    void *var_s1;

    temp_a6 = gc->state.evaluator.unk1C;
    sp70 = arg4;
    spA8 = arg3;
    if (temp_a6 != 0) {
        temp_a0 = gc->state.evaluator.unk2C;
        if (temp_a0 == 0) {
            return;
        }
        var_s5 = arg1;
        temp_f26 = (gc->state.evaluator.unk24 - gc->state.evaluator.unk20) / (f32) temp_a0;
        sp40 = (bitwise f64) gc->state.current.texture[0].y;
        sp48 = (bitwise f64) gc->state.current.texture[0].z;
        sp18 = (bitwise f64) gc->state.current.normal.x;
        sp38 = (bitwise f64) gc->state.current.texture[0].x;
        sp50 = (bitwise f64) gc->state.current.color.a;
        sp30 = (bitwise f64) gc->state.current.normal.w;
        sp10 = (bitwise f64) gc->state.current.texture[0].w;
        sp28 = (bitwise f64) gc->state.current.normal.z;
        sp20 = (bitwise f64) gc->state.current.normal.y;
        sp60 = (bitwise f64) gc->state.current.color.b;
        sp58 = (bitwise f64) gc->state.current.color.g;
        sp8 = (bitwise f64) gc->state.current.color.r;
        temp_f28 = (gc->state.evaluator.unk14 - gc->state.evaluator.unk10) / (f32) temp_a6;
        if (arg1 < spA8) {
            var_a0 = var_s5 + 1;
            sp68 = arg2 - 1;
            sp80 = (sp70 - arg2) + 1;
            sp78 = sp70 >= arg2;
loop_7:
            temp_a6_2 = gc->state.evaluator.unk1C;
            if (temp_a6_2 == var_s5) {
                if (temp_a6_2 != var_a0) {
                    goto block_9;
                }
                goto block_23;
            }
            if (temp_a6_2 == var_a0) {
block_23:
                sp110 = var_a0;
            } else {
block_9:
                sp110 = var_a0;
            }
            gc->unk15CC->unk1C(8);
            var_s2 = sp70;
            if (sp78 != 0) {
                var_s1 = &arg_sp0 + 0xFFFEEFD0;
loop_15:
                if (gc->state.evaluator.unk2C == var_s2) {

                }
                if ((u32) var_s1 < (u32) (&arg_sp0 - 0x30)) {
                    if (arg1 != var_s5) {
                        __glExpEvalMesh1Point(gc, gc, var_s1);
                    } else {
                        __glExpDoEvalCoord1(gc, gc);
                    }
                    __glExpDoEvalCoord1(gc, gc);
                } else {
                    __glExpDoEvalCoord1(gc, gc);
                    __glExpDoEvalCoord1(gc, gc);
                }
                var_s2 -= 1;
                var_s1 += 0x44;
                if (sp68 != var_s2) {
                    goto loop_15;
                }
            }
            gc->unk15CC->unk2C();
            var_s5 += 1;
            var_a0 = sp110 + 1;
            if (spA8 != var_s5) {
                goto loop_7;
            }
        }
        gc->state.current.texture[0].w = (bitwise f32) sp10;
        gc->state.current.texture[0].z = second half of f64;
        gc->state.current.texture[0].y = (bitwise f32) sp40;
        gc->state.current.texture[0].x = (bitwise f32) sp38;
        gc->state.current.normal.w = second half of f64;
        gc->state.current.normal.z = (bitwise f32) sp28;
        gc->state.current.normal.y = second half of f64;
        gc->state.current.normal.x = (bitwise f32) sp18;
        gc->state.current.color.a = second half of f64;
        gc->state.current.color.b = (bitwise f32) sp60;
        gc->state.current.color.g = second half of f64;
        gc->state.current.color.r = (bitwise f32) sp8;
        __glExpEvalRestoreCurrentState(gc, gc, sp10, second half of f64);
    }
}

void __glExpEvalMesh2Point(__GLcontext *gc, s64 arg1, s32 arg2, s32 arg3, s64 arg4, ...) {
    s64 spB8;
    s64 sp68;
    s64 sp60;
    f64 sp58;
    f64 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    f32 temp_f22;
    f32 temp_f24;
    s32 temp_a2;
    s32 temp_a6;
    s32 var_s2;
    s64 var_s5;

    temp_a6 = gc->state.evaluator.unk1C;
    if (temp_a6 != 0) {
        temp_a2 = gc->state.evaluator.unk2C;
        spB8 = arg1;
        sp68 = arg4;
        if (temp_a2 != 0) {
            temp_f22 = (gc->state.evaluator.unk24 - gc->state.evaluator.unk20) / (f32) temp_a2;
            sp40 = (bitwise f64) gc->state.current.texture[0].w;
            sp30 = (bitwise f64) gc->state.current.texture[0].z;
            sp28 = (bitwise f64) gc->state.current.texture[0].y;
            sp20 = (bitwise f64) gc->state.current.texture[0].x;
            sp18 = (bitwise f64) gc->state.current.normal.w;
            sp10 = (bitwise f64) gc->state.current.normal.z;
            sp38 = (bitwise f64) gc->state.current.normal.y;
            sp58 = (bitwise f64) gc->state.current.normal.x;
            sp50 = (bitwise f64) gc->state.current.color.a;
            sp48 = (bitwise f64) gc->state.current.color.b;
            sp8 = (bitwise f64) gc->state.current.color.g;
            sp0 = (bitwise f64) gc->state.current.color.r;
            temp_f24 = (gc->state.evaluator.unk14 - gc->state.evaluator.unk10) / (f32) temp_a6;
            gc->unk15CC->unk1C(0, temp_a2, temp_a6);
            var_s5 = spB8;
            if (arg3 >= spB8) {
                sp60 = (sp68 - arg2) + 1;
loop_5:
                var_s2 = arg2;
                if (gc->state.evaluator.unk1C == var_s5) {

                }
                if (sp68 >= arg2) {
loop_12:
                    if (gc->state.evaluator.unk2C == var_s2) {

                    }
                    __glExpDoEvalCoord1(gc, gc);
                    var_s2 += 1;
                    if ((sp68 + 1) != var_s2) {
                        goto loop_12;
                    }
                }
                var_s5 += 1;
                if ((arg3 + 1) != var_s5) {
                    goto loop_5;
                }
            }
            gc->unk15CC->unk2C();
            gc->state.current.texture[0].w = (bitwise f32) sp40;
            gc->state.current.texture[0].z = second half of f64;
            gc->state.current.texture[0].y = (bitwise f32) sp28;
            gc->state.current.texture[0].x = (bitwise f32) sp20;
            gc->state.current.normal.w = second half of f64;
            gc->state.current.normal.z = (bitwise f32) sp10;
            gc->state.current.normal.y = second half of f64;
            gc->state.current.normal.x = (bitwise f32) sp58;
            gc->state.current.color.a = second half of f64;
            gc->state.current.color.b = (bitwise f32) sp48;
            gc->state.current.color.g = second half of f64;
            gc->state.current.color.r = (bitwise f32) sp0;
            __glExpEvalRestoreCurrentState(gc, gc, sp40, second half of f64);
        }
    }
}

void __glExpEvalMesh2Line(__GLcontext *gc, s64 arg1, s64 arg2, s64 arg3, s64 arg4, ? arg_sp0, ...) {
    s64 sp150;
    s64 sp140;
    s64 sp120;
    f64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    u64 spD0;
    s64 spC8;
    s64 spC0;
    s64 sp98;
    s64 sp90;
    u64 sp88;
    s64 sp80;
    u64 sp78;
    s64 sp70;
    f64 sp68;
    f64 sp60;
    f64 sp58;
    f64 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 temp_f26;
    f32 temp_f30;
    f64 var_f20;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 var_a6;
    s64 temp_a0_3;
    s64 var_a0;
    s64 var_ra;
    s64 var_s1;
    s64 var_s1_2;
    s64 var_s1_3;
    s64 var_s4;
    s64 var_s5;
    s64 var_s6;
    u64 var_s3;
    void *var_s4_2;
    void *var_s5_2;
    void *var_s5_3;

    var_s1 = saved_reg_s1;
    var_s5 = saved_reg_s5;
    var_f20 = saved_reg_f20;
    var_ra = saved_reg_ra;
    var_a6 = gc->state.evaluator.unk1C;
    sp70 = arg4;
    spD8 = arg3;
    sp80 = arg2;
    if (var_a6 != 0) {
        temp_a0 = gc->state.evaluator.unk2C;
        if (temp_a0 != 0) {
            var_s6 = arg1;
            temp_f26 = (gc->state.evaluator.unk24 - gc->state.evaluator.unk20) / (f32) temp_a0;
            sp50 = (bitwise f64) gc->state.current.texture[0].y;
            sp18 = (bitwise f64) gc->state.current.texture[0].z;
            sp48 = (bitwise f64) gc->state.current.normal.x;
            sp28 = (bitwise f64) gc->state.current.texture[0].x;
            sp58 = (bitwise f64) gc->state.current.color.a;
            sp30 = (bitwise f64) gc->state.current.normal.w;
            sp10 = (bitwise f64) gc->state.current.texture[0].w;
            sp38 = (bitwise f64) gc->state.current.normal.z;
            sp40 = (bitwise f64) gc->state.current.normal.y;
            sp60 = (bitwise f64) gc->state.current.color.b;
            sp20 = (bitwise f64) gc->state.current.color.g;
            sp68 = (bitwise f64) gc->state.current.color.r;
            temp_f30 = (gc->state.evaluator.unk14 - gc->state.evaluator.unk10) / (f32) var_a6;
            if (arg1 < spD8) {
                spE0 = var_s6 + 1;
                spE8 = sp70 + 1;
                sp88 = (u64) (&arg_sp0 - 0x74 + 0x44);
                spC0 = (sp70 - sp80) + 1;
                sp98 = sp70 >= sp80;
                spC8 = sp80 + 1;
                sp78 = (u64) (&arg_sp0 - 0x30 + 0x44);
                spD0 = (u64) (&arg_sp0 + 0xFFFEEFD0 + 0x44);
loop_6:
                var_a0 = 0;
                if (var_a6 == spE0) {
                    if (var_a6 != var_s6) {

                    }
                } else if (var_a6 == var_s6) {

                }
                var_s1_2 = sp80;
                var_s3 = spD0;
                if (sp98 != 0) {
                    var_s4 = spC8;
                    var_s5_2 = &arg_sp0 + 0xFFFEEFD0;
loop_15:
                    temp_a0_2 = gc->state.evaluator.unk2C;
                    if (temp_a0_2 == var_s1_2) {
                        if (temp_a0_2 != var_s4) {

                        }
                    } else if (temp_a0_2 == var_s4) {

                    }
                    gc->unk15CC->unk1C(3);
                    if (sp70 != var_s1_2) {
                        if (var_s3 < sp88) {
                            if (arg1 != var_s6) {
                                __glExpEvalMesh1Point(gc, gc, var_s3);
                            } else {
                                __glExpDoEvalCoord1(gc, gc);
                            }
                        } else {
                            __glExpDoEvalCoord1(gc, gc);
                        }
                    }
                    if (var_s3 < sp78) {
                        if (arg1 != var_s6) {
                            if (sp80 != var_s1_2) {
                                __glExpEvalMesh1Point(gc, gc, var_s5_2);
                            } else {
                                goto block_12;
                            }
                        } else {
block_12:
                            __glExpDoEvalCoord1(gc, gc);
                        }
                        __glExpDoEvalCoord1(gc, gc);
                    } else {
                        __glExpDoEvalCoord1(gc, gc);
                        __glExpDoEvalCoord1(gc, gc);
                    }
                    gc->unk15CC->unk2C();
                    var_s4 += 1;
                    var_s3 += 0x44;
                    var_s1_2 += 1;
                    var_s5_2 += 0x44;
                    if (spE8 != var_s1_2) {
                        goto loop_15;
                    }
                    var_a0 = spC0;
                    var_a6 = gc->state.evaluator.unk1C;
                }
                var_s6 += 1;
                spE0 += 1;
                if (spD8 != var_s6) {
                    goto loop_6;
                }
                var_s6 = spD8;
                var_f20 = spF0;
                var_ra = sp120;
                var_s5 = sp150;
                var_s1 = sp140;
                var_s4_2 = &arg_sp0 + 0xFFFEEFD0;
            } else {
                var_a0 = (s64) sp8;
                var_s4_2 = &arg_sp0 + 0xFFFEEFD0;
                sp98 = sp70 >= sp80;
            }
            spF0 = var_f20;
            temp_a0_3 = var_a0 - 1;
            if (var_a6 == var_s6) {
                sp90 = temp_a0_3;
                sp120 = var_ra;
            } else {
                sp90 = temp_a0_3;
                sp120 = var_ra;
            }
            sp140 = var_s1;
            sub_0da60000((__GLcontext *)3);
            var_s1_3 = sp70;
            if (sp98 != 0) {
                sp150 = var_s5;
                var_s5_3 = (sp90 * 0x44) + var_s4_2;
loop_41:
                if (gc->state.evaluator.unk2C == var_s1_3) {

                }
                var_s1_3 -= 1;
                if (((u32) var_s5_3 >= (u32) var_s4_2) && ((u32) var_s5_3 < (u32) (&arg_sp0 - 0x30))) {
                    __glExpEvalMesh1Point(gc, gc, var_s5_3);
                } else {
                    __glExpDoEvalCoord1(gc, gc);
                }
                var_s5_3 -= 0x44;
                if ((sp80 - 1) != var_s1_3) {
                    goto loop_41;
                }
            }
            gc->unk15CC->unk2C();
            gc->state.current.texture[0].w = (bitwise f32) sp10;
            gc->state.current.texture[0].z = second half of f64;
            gc->state.current.texture[0].y = (bitwise f32) sp50;
            gc->state.current.texture[0].x = (bitwise f32) sp28;
            gc->state.current.normal.w = second half of f64;
            gc->state.current.normal.z = (bitwise f32) sp38;
            gc->state.current.normal.y = second half of f64;
            gc->state.current.normal.x = (bitwise f32) sp48;
            gc->state.current.color.a = second half of f64;
            gc->state.current.color.b = (bitwise f32) sp60;
            gc->state.current.color.g = second half of f64;
            gc->state.current.color.r = (bitwise f32) sp68;
            __glExpEvalRestoreCurrentState(gc, gc, sp10, second half of f64);
        }
    }
}
