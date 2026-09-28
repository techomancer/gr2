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
    /* 0x38 */ char pad38[0x10];                    /* maybe part of unk34[5]? */
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

extern ? sub_0da50000;
extern ? sub_0da60000;

void Store(void *arg1) {
    HQ2_FIFO_CI.unk20AC = arg1->unk0;
    HQ2_FIFO_CI.data_port.w = arg1->unk4;
    HQ2_FIFO_CI.data_port.w = arg1->unk8;
    HQ2_FIFO.data_port_ci.w = arg1->unkC;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
}

void Store_ND(void **arg0, void *arg1) {
    HQ2_FIFO_CI.unk20AC = arg1->unk0;
    HQ2_FIFO_CI.data_port.w = arg1->unk4;
    HQ2_FIFO_CI.data_port.w = arg1->unk8;
    HQ2_FIFO.data_port_ci.w = (bitwise u32) (arg1->unkC + (*arg0)->unkCD0);
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
}

void Clear(void **arg0) {
    void *temp_a2;

    temp_a2 = *arg0;
    if (temp_a2->unk6A0 & 8) {
        HQ2_FIFO.dither_enable.w = 0;
    }
    HQ2_FIFO.clear_ci = temp_a2->unk6F0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
    if (temp_a2->unk6A0 & 8) {
        HQ2_FIFO.dither_enable.w = 1;
    }
}

void CZClear(void *arg1) {
    if (__glCurrentContext->state.enables.general & 8) {
        HQ2_FIFO.dither_enable.w = 0;
    }
    HQ2_FIFO_CI.clear_ci_depth.w = (s64) __glCurrentContext->state.raster.clearIndex << 0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = (u32) (s32) (second half of f64);
    HQ2_FIFO.data_port.w = -1U;
    if (__glCurrentContext->state.enables.general & 8) {
        HQ2_FIFO.dither_enable.w = 1;
    }
}

void ReadColor(void *arg0, s32 arg1, s32 arg2, s64 arg3) {
    s64 sp40;
    s64 sp30;
    s64 sp28;
    s32 sp0;
    __GLcontext *temp_s1;
    s32 temp_s0;
    u32 temp_s1_2;
    u32 temp_s2;

    sp28 = arg3;
    temp_s1 = arg0->unk0;
    temp_s0 = arg0->unkC;
    sp40 = (s64) temp_s1;
    HQ2_FIFO.pixel_read_setup_a.w = 0;
    HQ2_FIFO.pixel_read_setup_b.w = 0;
    temp_s2 = arg2 - temp_s1->constants.viewportYAdjust;
    temp_s1_2 = arg1 - temp_s1->constants.viewportXAdjust;
    __glExpSetReadBuffer(temp_s1, temp_s1);
    HQ2_FIFO.pixel_read_mode.w = 0;
    HQ2_FIFO.read_x.w = temp_s1_2;
    HQ2_FIFO.data_port.w = temp_s2;
    HQ2_FIFO.data_port.w = 1;
    HQ2_FIFO.data_port.w = 1;
    HQ2_FIFO.data_port.w = 1;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
loop_1:
    if (!(HQ2_STATUS_PORT.read_status.w & 1)) {
        sp0 = 0;
        if (sp0 < 0xA) {
            do {
                sp0 += 1;
            } while (sp0 < 0xA);
        }
        goto loop_1;
    }
    sp30 = (s64) HQ2_READ_FIFO.data[0].w;
    HQ2_STATUS_PORT.read_ack.w = 0;
    HQ2_FIFO.read_done.w = 0;
    __glExpSetReadSource((__GLcontext *) sp40, sp40);
    switch (temp_s0) {                              /* irregular */
    case 16:
        *sp28 = (f32) (sp30 & 0xFFFF);
        break;
    case 2:
        *sp28 = (f32) (sp30 & 3);
        break;
    case 4:
        *sp28 = (f32) (sp30 & 0xF);
        break;
    case 8:
        *sp28 = (f32) (sp30 & 0xFF);
        break;
    case 12:
        *sp28 = (f32) (sp30 & 0xFFF);
        break;
    }
}

void StoreSpan(void *arg0) {
    f32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 *var_s0;
    s32 temp_s5;
    s32 var_s1;
    void *temp_a0;

    sp0 = arg0->unk75F8;
    sp4 = arg0->unk75FC;
    var_s1 = arg0->unk762C - 1;
    sp8 = arg0->unk7600;
    var_s0 = arg0->unk7704;
    if (var_s1 >= 0) {
        temp_s5 = arg0->unk76E8 & 4;
loop_5:
        spC = *var_s0;
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
    f32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 *var_s1;
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
                spC = *var_s1;
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

void Resize(void *arg0, s32 arg1, s32 arg2) {
    arg0->unk8 = arg2;
    arg0->unk1C = arg1;
    arg0->unk4 = arg1;
}

void Move(void) {

}

void Pick(void *arg0, void *arg1) {
    if (arg0->unk6A0 & 8) {
        arg1->unkA4 = (void *) (&sub_0da50000 + 0x7BA8);
        return;
    }
    arg1->unkA4 = (void *) (&sub_0da50000 + 0x7BF8);
}

void __glExpInitCI(__GLcontext *gc, s64 arg1, ...) {
    s64 sp18;
    void (*temp_ra)(__GLcontext *, void *);
    void *temp_at;

    sp18 = arg1;
    __glInitBuffer();
    gc->imports.getenv = NULL;
    temp_ra = sp18->unkC40;
    gc->exports.shareContext = (u8 (*)(__GLcontext *, __GLcontext *))0x3F800000;
    gc->exports.copyContext = (u8 (*)(__GLcontext *, __GLcontext *, u32))0x3F800000;
    gc->exports.forceCurrent = (u8 (*)(__GLcontext *))0x3F800000;
    gc->exports.unk34 = 1.0f;
    gc->state.current.unk0 = &sub_0da60000 - 0x7E5C;
    gc->imports.unk3C = &sub_0da60000 - 0x7E64;
    gc->imports.free = temp_ra;
    gc->imports.other = &sub_0da60000 - 0x7E74;
    gc->state.current.unk4 = &sub_0da50000 + 0x7BA8;
    gc->imports.unk48 = (1 << (s32) temp_ra) - 1;
    gc->state.current.rasterPos.flagBits = (u32) (&sub_0da50000 + 0x7C54);
    temp_at = &sub_0da50000 + 0x7D5C;
    gc->state.current.color.r = (bitwise f32) temp_at;
    gc->state.current.color.g = (bitwise f32) temp_at;
    gc->state.current.color.b = (bitwise f32) __glReadSpan;
    gc->state.current.texture[0].x = (bitwise f32) __glFetchSpan;
    gc->state.current.texture[0].y = (bitwise f32) __glFetchSpan;
    gc->state.current.normal.x = (bitwise f32) (&sub_0da50000 + 0x7F7C);
    gc->state.current.normal.y = (bitwise f32) (&sub_0da60000 - 0x7FAC);
    sp18->unk7BCC = (void *) (&sub_0da50000 + 0x7CB8);
}
