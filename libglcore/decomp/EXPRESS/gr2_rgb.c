typedef struct __GLaccumBufferRec {
    /* 0x00 */ __GLbuffer buf;
    /* 0x1C */ char pad1C[0x3C];                    /* maybe part of buf[3]? */
    /* 0x58 */ f32 unk58;                           /* inferred */
    /* 0x5C */ f32 unk5C;                           /* inferred */
    /* 0x60 */ f32 unk60;                           /* inferred */
    /* 0x64 */ f32 unk64;                           /* inferred */
    /* 0x68 */ char pad68[4];
    /* 0x6C */ void (*clear)(__GLaccumBuffer *);
} __GLaccumBuffer;                                  /* size = 0x70 */

typedef struct __GLcurrentStateRec {
    /* 0x000 */ void *unk0;                         /* inferred */
    /* 0x004 */ void *unk4;                         /* inferred */
    /* 0x008 */ __GLcolor color;
    /* 0x018 */ __GLcoord normal;
    /* 0x028 */ __GLcoord texture[1];
    /* 0x038 */ __GLvertex rasterPos;
    /* 0x0F8 */ __GLcolor userColor;
    /* 0x108 */ f32 userColorIndex;
    /* 0x10C */ u8 validRasterPos;
    /* 0x10D */ u8 edgeTag;
    /* 0x10E */ u8 pad10E[2];
} __GLcurrentState;                                 /* size = 0x110 */

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
    /* 0x30 */ char pad30[4];
    /* 0x34 */ f32 unk34;                           /* inferred */
    /* 0x38 */ s32 unk38;                           /* inferred */
    /* 0x3C */ char pad3C[0xC];                     /* maybe part of unk38[4]? */
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
    /* 0x3C */ void *unk3C;                         /* inferred */
    /* 0x40 */ char pad40[8];                       /* maybe part of unk3C[3]? */
    /* 0x48 */ s32 unk48;                           /* inferred */
} __GLimports;                                      /* size = 0x4C */

typedef struct __GLprocsRec {
    /* 0x000 */ void (*validate)(__GLcontext *);
    /* 0x004 */ void (*finish)(__GLcontext *);
    /* 0x008 */ void (*flush)(__GLcontext *);
    /* 0x00C */ void (*applyColor)(__GLcontext *);
    /* 0x010 */ void *table[0x80];
    /* 0x210 */ char pad210[0xB4];
    /* 0x2C4 */ ? (*unk2C4)(__GLcontext *, void *, u32, f32, f32, f32, f32, f32); /* inferred */
    /* 0x2C8 */ char pad2C8[0x8C];                  /* maybe part of unk2C4[0x24]? */
} __GLprocs;                                        /* size = 0x354 */

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
    /* 0x20AC */ s32 unk20AC;                       /* inferred */
    /* 0x20B0 */ char pad20B0[4];
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
    /* 0x2430 */ char pad2430[0x200];               /* maybe part of color_writemask[0x81]? */
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

extern ? sub_0da60000;
extern ? sub_0da70000;

void Store(void *arg1) {
    HQ2_FIFO_CI.unk20AC = arg1->unk0;
    HQ2_FIFO_CI.data_port.w = arg1->unk4;
    HQ2_FIFO_CI.data_port.w = arg1->unk8;
    HQ2_FIFO.data_port.w = arg1->unkC;
    HQ2_FIFO.data_port.w = arg1->unk10;
    HQ2_FIFO.data_port.w = arg1->unk14;
    HQ2_FIFO.data_port.w = arg1->unk18;
}

void Store_B(void **arg0, void *arg1) {
    void *temp_a5;
    void *var_s8;

    temp_a5 = *arg0;
    if (temp_a5->unk6A0 & 2) {
        var_s8 = sp;
        temp_a5->unk3104(temp_a5, arg0, arg1, sp, temp_a5, arg0);
    } else {
        var_s8 = arg1 + 0xC;
    }
    HQ2_FIFO_CI.unk20AC = arg1->unk0;
    HQ2_FIFO_CI.data_port.w = arg1->unk4;
    HQ2_FIFO_CI.data_port.w = arg1->unk8;
    HQ2_FIFO.data_port.w = var_s8->unk0;
    HQ2_FIFO.data_port.w = var_s8->unk4;
    HQ2_FIFO.data_port.w = var_s8->unk8;
    HQ2_FIFO.data_port.w = var_s8->unkC;
}

void Clear(void *arg0) {
    f32 temp_f4;
    f32 temp_f5;
    s32 var_a3;
    void *temp_a2;

    temp_a2 = arg0->unk0;
    var_a3 = 0;
    temp_f4 = temp_a2->unk6E0;
    if (temp_a2->unk6A0 & 8) {
        temp_f5 = temp_a2->unk6E8 + (temp_a2->unk6E4 + temp_f4);
        if ((arg0->unkC == 0x18) || ((f32) (s32) temp_f5 == temp_f5)) {
            var_a3 = 1;
            HQ2_FIFO.dither_enable.w = 0;
        }
    }
    HQ2_FIFO.clear_color = temp_f4;
    HQ2_FIFO.data_port.w = (bitwise u32) temp_a2->unk6E4;
    HQ2_FIFO.data_port.w = (bitwise u32) temp_a2->unk6E8;
    HQ2_FIFO.data_port.w = temp_a2->unk6EC;
    if (var_a3 != 1) {
        return;
    }
    HQ2_FIFO.dither_enable.w = 1;
}

void CZClear(void *arg0, void *arg1) {
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    s32 var_a3;

    var_a3 = 0;
    temp_f6 = __glCurrentContext->state.raster.clear.b;
    temp_f5 = __glCurrentContext->state.raster.clear.g;
    temp_f4 = __glCurrentContext->state.raster.clear.r;
    if (__glCurrentContext->state.enables.general & 8) {
        if ((arg0->unkC == 0x18) || (temp_f3 = temp_f4 + temp_f5 + temp_f6, ((f32) (s32) temp_f3 == temp_f3))) {
            var_a3 = 1;
            HQ2_FIFO.dither_enable.w = 0;
        }
    }
    HQ2_FIFO.clear_color_depth = temp_f4;
    HQ2_FIFO.data_port.w = (bitwise u32) temp_f5;
    HQ2_FIFO.data_port.w = (bitwise u32) temp_f6;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = (u32) (s32) (arg1->unk0->unk608 * (second half of f64));
    HQ2_FIFO.data_port.w = -1U;
    if (var_a3 != 1) {
        return;
    }
    HQ2_FIFO.dither_enable.w = 1;
}

void ReadColor(__GLcontext **arg0, s32 arg1, s32 arg2, s64 arg3) {
    s64 sp8;
    s32 sp0;
    __GLcontext *temp_s0;
    s32 var_a1;
    u32 temp_s2;
    u32 temp_s2_2;
    u32 temp_s7;

    sp8 = arg3;
    temp_s0 = *arg0;
    HQ2_FIFO.pixel_read_setup_a.w = 0;
    HQ2_FIFO.pixel_read_setup_b.w = 0;
    temp_s7 = arg2 - temp_s0->constants.viewportYAdjust;
    temp_s2 = arg1 - temp_s0->constants.viewportXAdjust;
    __glExpSetReadBuffer(temp_s0, temp_s0);
    var_a1 = 0x422F0;
    HQ2_FIFO.pixel_read_mode.w = 0;
    HQ2_FIFO.read_x.w = temp_s2;
    HQ2_FIFO.data_port.w = temp_s7;
    HQ2_FIFO.data_port.w = 1;
    HQ2_FIFO.data_port.w = 1;
    HQ2_FIFO.data_port.w = 1;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
loop_2:
    if (!(HQ2_STATUS_PORT.read_status.w & 1)) {
        sp0 = 0;
        var_a1 = sp0 < 0xA;
        if (var_a1 != 0) {
            do {
                sp0 += 1;
            } while (sp0 < 0xA);
        }
        goto loop_2;
    }
    temp_s2_2 = HQ2_READ_FIFO.data[0].w;
    HQ2_STATUS_PORT.read_ack.w = 0;
    HQ2_FIFO.read_done.w = 0;
    __glExpSetReadSource(temp_s0, temp_s0, var_a1);
    sp8->unk0 = (f32) *(temp_s0->unk7C80 + ((temp_s2_2 & 0xFF) * 4));
    sp8->unk4 = (f32) *(temp_s0->unk7C84 + (((temp_s2_2 >> 8) & 0xFF) * 4));
    sp8->unkC = 1.0f;
    sp8->unk8 = (f32) *(temp_s0->unk7C88 + (((temp_s2_2 >> 0x10) & 0xFF) * 4));
}

void StoreSpan(void *arg0) {
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_s5;
    s32 var_s1;
    void *temp_a0;
    void *var_s0;

    sp0 = arg0->unk75F8;
    sp4 = arg0->unk75FC;
    var_s1 = arg0->unk762C - 1;
    sp8 = arg0->unk7600;
    var_s0 = arg0->unk7704;
    if (var_s1 >= 0) {
        temp_s5 = arg0->unk76E8 & 4;
loop_5:
        spC = var_s0->unk0;
        sp10 = var_s0->unk4;
        sp14 = var_s0->unk8;
        sp18 = var_s0->unkC;
        temp_a0 = arg0->unk2DF8;
        var_s0 += 0x10;
        var_s1 -= 1;
        temp_a0->unkA4(temp_a0, sp);
        sp0 += 1;
        if (temp_s5 != 0) {
            sp8 += arg0->unk7678;
        }
        if (var_s1 != -1) {
            goto loop_5;
        }
    }
}

void StoreStippledSpan(void *arg0) {
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 *var_s7;
    s32 temp_s4;
    s32 temp_s5;
    s32 var_a2;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s6;
    s32 var_v1;
    u32 var_s0;
    void *temp_a0;
    void *var_s1;

    var_s7 = arg0->unk770C;
    var_a2 = arg0->unk75F8;
    var_s6 = arg0->unk762C;
    sp0 = var_a2;
    sp4 = arg0->unk75FC;
    sp8 = arg0->unk7600;
    var_s1 = arg0->unk7704;
    if (var_s6 != 0) {
        temp_s5 = arg0->unk76E8 & 4;
loop_3:
        var_s2 = var_s6;
        if (var_s6 >= 0x21) {
            var_s2 = 0x20;
        }
        var_s0 = 0x80000000;
        temp_s4 = *var_s7;
        var_s6 -= var_s2;
        var_s2_2 = var_s2 - 1;
        var_s7 += 4;
        if (var_s2_2 >= 0) {
            var_v1 = temp_s4 & 0x80000000;
loop_10:
            var_s2_2 -= 1;
            if (var_v1 != 0) {
                spC = var_s1->unk0;
                sp10 = var_s1->unk4;
                sp14 = var_s1->unk8;
                sp18 = var_s1->unkC;
                temp_a0 = arg0->unk2DF8;
                temp_a0->unkA4(temp_a0, sp, var_a2);
                var_a2 = sp0;
            }
            var_s1 += 0x10;
            var_a2 += 1;
            sp0 = var_a2;
            if (temp_s5 != 0) {
                sp8 += arg0->unk7678;
            }
            var_s0 = var_s0 >> 1;
            var_v1 = temp_s4 & var_s0;
            if (var_s2_2 != -1) {
                goto loop_10;
            }
        }
        if (var_s6 != 0) {
            goto loop_3;
        }
    }
}

void __glExpTextureSpan(__GLcontext *gc, ...) {
    s64 sp78;
    s64 sp70;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f18;
    f32 temp_f28;
    f32 temp_f30;
    f32 var_f20;
    f32 var_f22;
    f32 var_f24;
    f32 var_f26;
    f32 var_f28;
    f32 var_f30;
    s32 temp_s4;
    s32 var_s3;
    s64 temp_a0;
    s64 var_ra;
    u32 temp_a2;

    var_ra = saved_reg_ra;
    temp_a2 = gc->polygon.shader.modeFlags;
    var_f30 = gc->polygon.shader.frag.texture[0].qw;
    var_f28 = gc->polygon.shader.frag.texture[0].t;
    var_f22 = gc->polygon.shader.frag.color[0].a;
    var_f24 = gc->polygon.shader.frag.color[0].b;
    var_f26 = gc->polygon.shader.frag.color[0].g;
    var_f20 = gc->polygon.shader.frag.color[0].r;
    HQ2_FIFO.tex_span_setup.w = (bitwise u32) (f32) gc->polygon.shader.frag.x;
    HQ2_FIFO.tex_span_setup.w = 0x3F800000;
    sp20 = (bitwise f64) gc->polygon.shader.frag.texture[0].s;
    sp10 = (bitwise f64) gc->polygon.shader.frag.texture[0].r;
    HQ2_FIFO.tex_span_setup.w = (bitwise u32) (f32) gc->polygon.shader.frag.y;
    HQ2_FIFO.tex_span_setup.w = 0;
    sp18 = (bitwise f64) gc->polygon.shader.frag.texture[0].rhow;
    HQ2_FIFO.tex_span_setup.w = (bitwise u32) (f32) ((u64) ((s64) gc->polygon.shader.frag.z << 0x20) >> 0x20);
    var_s3 = gc->polygon.shader.length - 1;
    HQ2_FIFO.tex_span_setup.w = (bitwise u32) (f32) gc->polygon.shader.dzdx;
    if (var_s3 >= 0) {
        temp_s4 = temp_a2 & 2;
        temp_a0 = var_s3 + 1;
        if (temp_a0 & 1) {
            temp_f18 = gc->constants.one / var_f30;
            sp70 = temp_a0;
            spC = var_f22;
            sp8 = var_f24;
            sp4 = var_f26;
            sp0 = var_f20;
            gc->procs.unk2C4(gc, sp, temp_a2, (bitwise f32) sp20 * temp_f18, var_f28 * temp_f18, (second half of f64) * temp_f18, (bitwise f32) sp18 * temp_f18, temp_f18);
            HQ2_FIFO.tex_span_color = sp0;
            HQ2_FIFO.tex_span_color = sp4;
            HQ2_FIFO.tex_span_color = sp8;
            var_ra = sp78;
            HQ2_FIFO.tex_span_color = spC;
            if (temp_s4 != 0) {
                var_f22 += gc->polygon.shader.colorIter[0].dadx;
                var_f24 += gc->polygon.shader.colorIter[0].dbdx;
                var_f26 += gc->polygon.shader.colorIter[0].dgdx;
                var_f20 += gc->polygon.shader.colorIter[0].drdx;
            }
            var_s3 -= 1;
            var_f30 += gc->polygon.shader.texture[0].dqwdx;
            sp18 = second half of f64;
            sp10 = (bitwise f64) (gc->polygon.shader.texture[0].drdx + (bitwise f32) sp10);
            var_f28 += gc->polygon.shader.texture[0].dtdx;
            sp20 = (bitwise f64) ((second half of f64) + (bitwise f32) sp20);
        }
        sp78 = var_ra;
        if ((temp_a0 >> 1) != 0) {
loop_9:
            spC = var_f22;
            sp8 = var_f24;
            sp4 = var_f26;
            sp0 = var_f20;
            gc->procs.unk2C4(gc, sp);
            HQ2_FIFO.tex_span_color = sp0;
            HQ2_FIFO.tex_span_color = sp4;
            HQ2_FIFO.tex_span_color = sp8;
            HQ2_FIFO.tex_span_color = spC;
            if (temp_s4 != 0) {
                var_f22 += gc->polygon.shader.colorIter[0].dadx;
                var_f24 += gc->polygon.shader.colorIter[0].dbdx;
                var_f26 += gc->polygon.shader.colorIter[0].dgdx;
                var_f20 += gc->polygon.shader.colorIter[0].drdx;
            }
            temp_f30 = gc->polygon.shader.texture[0].dqwdx + var_f30;
            temp_f28 = gc->polygon.shader.texture[0].dtdx + var_f28;
            sp18 = (bitwise f64) (gc->polygon.shader.texture[0].drhowdx + (second half of f64));
            spC = var_f22;
            sp8 = var_f24;
            sp4 = var_f26;
            sp0 = var_f20;
            sp10 = (bitwise f64) (gc->polygon.shader.texture[0].drdx + (bitwise f32) sp10);
            sp20 = (bitwise f64) (gc->polygon.shader.texture[0].dsdx + (bitwise f32) sp20);
            gc->procs.unk2C4(gc, sp);
            HQ2_FIFO.tex_span_color = sp0;
            HQ2_FIFO.tex_span_color = sp4;
            HQ2_FIFO.tex_span_color = sp8;
            HQ2_FIFO.tex_span_color = spC;
            if (temp_s4 != 0) {
                var_f22 += gc->polygon.shader.colorIter[0].dadx;
                var_f24 += gc->polygon.shader.colorIter[0].dbdx;
                var_f26 += gc->polygon.shader.colorIter[0].dgdx;
                var_f20 += gc->polygon.shader.colorIter[0].drdx;
            }
            var_s3 -= 2;
            var_f30 = gc->polygon.shader.texture[0].dqwdx + temp_f30;
            var_f28 = gc->polygon.shader.texture[0].dtdx + temp_f28;
            sp18 = (bitwise f64) (gc->polygon.shader.texture[0].drhowdx + (second half of f64));
            sp10 = (bitwise f64) (gc->polygon.shader.texture[0].drdx + (bitwise f32) sp10);
            sp20 = (bitwise f64) (gc->polygon.shader.texture[0].dsdx + (bitwise f32) sp20);
            if (var_s3 != -1) {
                goto loop_9;
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x78, 0x7c, 0x80, 0x84, 0x90, 0x94, 0xa0, 0xa4], gap at: 0x70. */
void __glExpTextureStippledSpan(__GLcontext *gc, ...) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 var_f30;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    s32 temp_s3;
    s32 temp_s4;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s8;
    u32 var_s0;

    var_f4 = gc->polygon.shader.frag.color[0].a;
    var_f5 = gc->polygon.shader.frag.color[0].b;
    var_f6 = gc->polygon.shader.frag.color[0].g;
    var_f30 = gc->polygon.shader.frag.color[0].r;
    var_s8 = gc->polygon.shader.length;
    HQ2_FIFO.tex_span_setup.w = (bitwise u32) (f32) gc->polygon.shader.frag.x;
    HQ2_FIFO.tex_span_setup.w = 0x3F800000;
    HQ2_FIFO.tex_span_setup.w = (bitwise u32) (f32) gc->polygon.shader.frag.y;
    HQ2_FIFO.tex_span_setup.w = 0;
    HQ2_FIFO.tex_span_setup.w = (bitwise u32) (f32) ((u64) ((s64) gc->polygon.shader.frag.z << 0x20) >> 0x20);
    unksp70 = (s64) gc->polygon.shader.stipplePat;
    HQ2_FIFO.tex_span_setup.w = (bitwise u32) (f32) gc->polygon.shader.dzdx;
    if (var_s8 != 0) {
        temp_s4 = gc->polygon.shader.modeFlags & 2;
loop_3:
        var_s2 = var_s8;
        if (var_s8 >= 0x21) {
            var_s2 = 0x20;
        }
        var_s0 = 0x80000000;
        temp_s3 = *unksp70;
        var_s8 -= var_s2;
        var_s2_2 = var_s2 - 1;
        unksp70 += 4;
        if (var_s2_2 >= 0) {
loop_11:
            if (temp_s3 & var_s0) {
                sp10 = (bitwise f64) var_f4;
                sp18 = (bitwise f64) var_f5;
                sp20 = (bitwise f64) var_f6;
                spC = var_f4;
                sp8 = var_f5;
                sp4 = var_f6;
                sp0 = var_f30;
                gc->procs.unk2C4(gc, sp);
                HQ2_FIFO.tex_span_color = sp0;
                HQ2_FIFO.tex_span_color = sp4;
                HQ2_FIFO.tex_span_color = sp8;
                var_f5 = second half of f64;
                HQ2_FIFO.tex_span_color = spC;
            } else {
                HQ2_FIFO.tex_span_skip.w = 0;
            }
            var_s2_2 -= 1;
            if (temp_s4 != 0) {
                var_f4 += gc->polygon.shader.colorIter[0].dadx;
                var_f5 += gc->polygon.shader.colorIter[0].dbdx;
                var_f6 += gc->polygon.shader.colorIter[0].dgdx;
                var_f30 += gc->polygon.shader.colorIter[0].drdx;
            }
            var_s0 = var_s0 >> 1;
            if (var_s2_2 != -1) {
                goto loop_11;
            }
        }
        if (var_s8 != 0) {
            goto loop_3;
        }
    }
}

void ReadSpan(__GLcontext **arg0, s32 arg1, s32 arg2, void *arg3, s32 arg4) {
    s32 sp0;
    __GLcontext *temp_s0;
    s32 var_a2;
    s32 var_a5;
    s32 var_a6;
    s32 var_s1;
    u32 temp_s5;
    u32 temp_v0;
    u32 temp_v1;
    u32 var_s4;
    void *var_a2_2;
    void *var_a3;
    void *var_a3_2;
    void *var_s3;

    var_s1 = arg4;
    var_s3 = arg3;
    temp_s0 = *arg0;
    HQ2_FIFO.pixel_read_setup_a.w = 0;
    HQ2_FIFO.pixel_read_setup_b.w = 0;
    temp_s5 = arg2 - temp_s0->constants.viewportYAdjust;
    var_s4 = arg1 - temp_s0->constants.viewportXAdjust;
    __glExpSetReadBuffer(temp_s0, temp_s0);
    if (var_s1 > 0) {
loop_10:
        var_a6 = 0x578;
        if (var_s1 < 0x578) {
            var_a6 = var_s1;
        }
        var_s1 -= var_a6;
        HQ2_FIFO.pixel_read_mode.w = 0;
        HQ2_FIFO.read_x.w = var_s4;
        var_s4 += var_a6;
        HQ2_FIFO.data_port.w = temp_s5;
        HQ2_FIFO.data_port.w = (u32) var_a6;
        HQ2_FIFO.data_port.w = 1;
        HQ2_FIFO.data_port.w = (u32) var_a6;
        HQ2_FIFO.data_port.w = 0;
        HQ2_FIFO.data_port.w = 0;
loop_13:
        var_a2 = var_a6 - 1;
        if (!(HQ2_STATUS_PORT.read_status.w & 1)) {
            sp0 = 0;
            if (sp0 < 0xA) {
                do {
                    sp0 += 1;
                } while (sp0 < 0xA);
            }
            goto loop_13;
        }
        var_a3 = (void *)0x12088;
        if (var_a2 >= 0) {
            if (var_a6 & 1) {
                var_s3->unk0 = (f32) *(temp_s0->unk7C80 + ((HQ2_READ_FIFO.data[0].w & 0xFF) * 4));
                var_a2 -= 1;
                var_s3->unk4 = (f32) *(temp_s0->unk7C84 + ((((u32) HQ2_READ_FIFO.data[0].w >> 8) & 0xFF) * 4));
                var_s3 += 0x10;
                var_a3 = (void *)0x1208C;
                var_s3->unk-4 = 1.0f;
                var_s3->unk-8 = (f32) *(temp_s0->unk7C88 + ((((u32) HQ2_READ_FIFO.data[0].w >> 0x10) & 0xFF) * 4));
            }
            if ((var_a6 >> 1) != 0) {
                var_a5 = var_a2;
                var_a2_2 = var_s3;
                var_a3_2 = var_a3;
                do {
                    temp_v0 = var_a3_2->unk0;
                    var_a2_2->unk0 = (f32) *(temp_s0->unk7C80 + ((temp_v0 & 0xFF) * 4));
                    var_a2_2->unk4 = (f32) *(temp_s0->unk7C84 + (((temp_v0 >> 8) & 0xFF) * 4));
                    temp_v1 = var_a3_2->unk4;
                    var_a2_2->unk8 = (f32) *(temp_s0->unk7C88 + (((temp_v0 >> 0x10) & 0xFF) * 4));
                    var_a2_2->unkC = 1.0f;
                    var_a2_2->unk10 = (f32) *(temp_s0->unk7C80 + ((temp_v1 & 0xFF) * 4));
                    var_a2_2 += 0x20;
                    var_a3_2 += 8;
                    var_a2_2->unk-C = (f32) *(temp_s0->unk7C84 + (((temp_v1 >> 8) & 0xFF) * 4));
                    var_a5 -= 2;
                    var_a2_2->unk-4 = 1.0f;
                    var_a2_2->unk-8 = (f32) *(temp_s0->unk7C88 + (((temp_v1 >> 0x10) & 0xFF) * 4));
                } while (var_a5 != -1);
                var_s3 = var_a2_2;
            }
        }
        HQ2_STATUS_PORT.read_ack.w = 0;
        HQ2_FIFO.read_done.w = 0;
        if (var_s1 > 0) {
            goto loop_10;
        }
    }
    __glExpSetReadSource(temp_s0, temp_s0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x88, 0x8c, 0x90, 0x94], gap at: 0x68. */
void ReturnSpan(void *arg0, s64 arg1, s64 arg2, void *arg3, s32 arg5, f64 fparg4) {
    s64 spB8;
    f64 sp38;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_s3;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f28;
    f32 temp_f30;
    s32 var_s1;
    s64 temp_a4;
    s64 temp_at;
    s64 temp_at_2;
    s64 var_ra;
    u32 temp_a6;
    void *var_s0;

    var_ra = saved_reg_ra;
    sp38 = fparg4;
    var_s0 = arg3;
    unksp78 = arg2;
    unksp70 = arg1;
    temp_s3 = arg0->unk0;
    temp_a6 = temp_s3->state.enables.general;
    temp_at = temp_a6 & 2;
    unksp80 = temp_at;
    if (temp_at != 0) {
        temp_s3->state.enables.general = temp_a6 & ~2;
        __glExpEnableBlendFunc(temp_s3, temp_s3, temp_a6);
        var_ra = spB8;
    }
    temp_a4 = temp_a6 & 0x10;
    unksp60 = temp_a4;
    if (temp_a4 != 0) {
        spB8 = var_ra;
        temp_s3->state.enables.general &= ~0x10;
        __glExpEnableDepthTest(temp_s3, temp_s3);
    }
    temp_at_2 = temp_a6 & 0x8000;
    unksp68 = temp_at_2;
    if (temp_at_2 != 0) {
        spB8 = var_ra;
        temp_s3->state.enables.general &= ~0x8000;
        __glExpEnableStencilTest(temp_s3, temp_s3);
    }
    var_s1 = arg5 - 1;
    temp_f30 = temp_s3->accumBuffer.unk64 * (f32) sp38;
    temp_f22 = temp_s3->accumBuffer.unk60 * (f32) sp38;
    sp4 = (s32) unksp78;
    temp_f24 = temp_s3->accumBuffer.unk5C * (f32) sp38;
    sp0 = (s32) unksp70;
    temp_f28 = temp_s3->accumBuffer.unk58 * (f32) sp38;
    if (var_s1 >= 0) {
        spB8 = var_ra;
        do {
            spC = (f32) var_s0->unk0 * temp_f28;
            sp10 = (f32) var_s0->unk2 * temp_f24;
            sp14 = (f32) var_s0->unk4 * temp_f22;
            var_s1 -= 1;
            sp18 = (f32) var_s0->unk6 * temp_f30;
            __glClampRGBColor(arg0->unk0, &spC, &spC);
            arg0->unkA4(arg0, sp);
            var_s0 += 8;
            sp0 += 1;
        } while (var_s1 != -1);
        var_ra = spB8;
    }
    if (temp_a6 & 0x8012) {
        temp_s3->state.enables.general = temp_a6;
    }
    if (unksp80 != 0) {
        spB8 = var_ra;
        __glExpEnableBlendFunc(temp_s3, temp_s3);
    }
    if (unksp60 != 0) {
        spB8 = var_ra;
        __glExpEnableDepthTest(temp_s3, temp_s3);
    }
    if (unksp68 != 0) {
        spB8 = var_ra;
        __glExpEnableStencilTest(temp_s3, temp_s3);
    }
}

void Resize(void *arg0, s32 arg1, s32 arg2) {
    arg0->unk8 = arg2;
    arg0->unk1C = arg1;
    arg0->unk4 = arg1;
}

void Move(void) {

}

void Pick(void *arg0, void *arg1) {
    if ((arg0->unk76E8 & 0x80000) && (arg0->unk6C8 != 0xBF1)) {
        arg1->unkA4 = (void *) (&sub_0da60000 + 0x79C8);
        return;
    }
    arg1->unkA4 = (void *) (&sub_0da60000 + 0x7974);
}

void __glExpInitRGB(__GLcontext *gc, s64 arg1, ...) {
    s64 sp18;
    void *temp_a0;

    sp18 = arg1;
    __glInitBuffer();
    gc->imports.getenv = NULL;
    gc->exports.shareContext = (u8 (*)(__GLcontext *, __GLcontext *))0x3F800000;
    gc->exports.copyContext = (u8 (*)(__GLcontext *, __GLcontext *, u32))0x3F800000;
    gc->imports.unk3C = &sub_0da70000 - 0x7460;
    gc->exports.forceCurrent = (u8 (*)(__GLcontext *))0x3F800000;
    gc->exports.unk34 = 1.0f;
    temp_a0 = &sub_0da60000 + 0x7C08;
    gc->state.current.color.r = (bitwise f32) temp_a0;
    gc->state.current.color.g = (bitwise f32) temp_a0;
    gc->imports.other = &sub_0da70000 - 0x7470;
    gc->state.current.texture[0].x = (bitwise f32) __glFetchSpan;
    gc->state.current.texture[0].y = (bitwise f32) __glFetchSpan;
    gc->state.current.unk4 = &sub_0da60000 + 0x7974;
    gc->imports.unk48 = 1;
    gc->exports.destroyContext = (u8 (*)(__GLcontext *))1;
    gc->exports.loseCurrent = (u8 (*)(__GLcontext *))1;
    gc->exports.notifyResize = (u8 (*)(__GLcontext *))1;
    gc->exports.notifyDestroy = (void (*)(__GLcontext *))1;
    gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))1;
    gc->exports.unk38 = 1;
    gc->imports.free = sp18->unkC4C + (sp18->unkC44 + sp18->unkC48);
    gc->state.current.unk0 = &sub_0da70000 - 0x7458;
    gc->state.current.rasterPos.flagBits = (u32) (&sub_0da60000 + 0x7A8C);
    gc->state.current.normal.y = (bitwise f32) (&sub_0da60000 + 0x7E90);
    gc->state.current.color.a = (bitwise f32) (&sub_0da70000 - 0x76F4);
    gc->state.current.color.b = (bitwise f32) (&sub_0da70000 - 0x79D0);
    gc->state.current.normal.x = (bitwise f32) (&sub_0da60000 + 0x7DA0);
    sp18->unk7BCC = (void *) (&sub_0da60000 + 0x7B34);
}
