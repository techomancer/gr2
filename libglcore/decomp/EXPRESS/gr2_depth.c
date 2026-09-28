typedef struct __GLdepthBufferRec {
    /* 0x00 */ __GLbuffer buf;
    /* 0x1C */ char pad1C[0x2C];                    /* maybe part of buf[2]? */
    /* 0x48 */ u32 unk48;                           /* inferred */
    /* 0x4C */ u32 scale;
    /* 0x50 */ char pad50[0x28];                    /* maybe part of scale[0xB]? */
    /* 0x78 */ void (*clear)(__GLdepthBuffer *, s64, __GLcontext *);
    /* 0x7C */ char pad7C[8];                       /* maybe part of clear[3]? */
} __GLdepthBuffer;                                  /* size = 0x84 */

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
    /* 0x30 */ void *unk30;                         /* inferred */
    /* 0x34 */ void *unk34;                         /* inferred */
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
    /* 0x2060 */ char pad2060[0x30];                /* maybe part of line_width[0xD]? */
    /* 0x2090 */ s32 unk2090;                       /* inferred */
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

void __glExpEnableDepthTest(__GLcontext *gc, s32 arg1, ...) {
    s32 var_a1;

    var_a1 = arg1;
    if ((gc->haveZ != 0) && (gc->state.enables.general & 0x10)) {
        var_a1 = 1;
        HQ2_FIFO.depth_test_enable.w = 1;
    } else {
        HQ2_FIFO.depth_test_enable.w = 0;
    }
    __glExpPassDepthMask(gc, var_a1);
}

void __glExpPassDepthFunc(__GLcontext *gc, ...) {
    HQ2_FIFO.unk2090 = gc->state.depth.testFunc & 7;
}

void __glExpPassDepthMask(__GLcontext *gc, ...) {
    if (gc->haveZ != 0) {
        if (gc->state.depth.writeEnable != 0) {
            if (gc->state.enables.general & 0x10) {
                HQ2_FIFO.depth_mask.w = gc->depthBuffer.unk48;
                return;
            }
            /* Duplicate return node #5. Try simplifying control flow for better match */
            HQ2_FIFO.depth_mask.w = 0;
            return;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        HQ2_FIFO.depth_mask.w = 0;
        return;
    }
    HQ2_FIFO.depth_mask.w = 0;
}

void Fetch(__GLcontext **arg0, s32 arg1, s32 arg2) {
    s64 sp8;
    s32 sp0;
    __GLcontext *temp_a5;
    s32 temp_a1;

    temp_a5 = *arg0;
    HQ2_FIFO.buffer_mode.w = 2;
    HQ2_FIFO.buffer_mode.w = 0;
    HQ2_FIFO.pixel_read_setup_a.w = 0;
    HQ2_FIFO.pixel_read_setup_b.w = 0;
    HQ2_FIFO.pixel_read_mode.w = 0;
    HQ2_FIFO.read_x.w = arg1 - temp_a5->constants.viewportXAdjust;
    HQ2_FIFO.data_port.w = arg2 - temp_a5->constants.viewportYAdjust;
    HQ2_FIFO.data_port.w = 1;
    HQ2_FIFO.data_port.w = 1;
    HQ2_FIFO.data_port.w = 1;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
loop_2:
    temp_a1 = HQ2_STATUS_PORT.read_status.w & 1;
    if (temp_a1 == 0) {
        sp0 = 0;
        if (sp0 < 0xA) {
            do {
                sp0 += 1;
            } while (sp0 < 0xA);
        }
        goto loop_2;
    }
    sp8 = (s64) HQ2_READ_FIFO.data[0].w;
    HQ2_STATUS_PORT.read_ack.w = 0;
    HQ2_FIFO.read_done.w = 0;
    __glExpSetReadSource(temp_a5, temp_a5, temp_a1, 0x422F4, 0x6D000, 0x422A0, temp_a5, 0x4229C, 0x42428);
}

void Store(void) {

}

void Store2(void) {

}

void Clear(void *arg0) {
    s32 var_a2;

    var_a2 = 0;
    if (__glCurrentContext->state.enables.general & 8) {
        var_a2 = 1;
        HQ2_FIFO.dither_enable.w = 0;
    }
    HQ2_FIFO_CI.clear_depth.w = 0;
    HQ2_FIFO.data_port.w = (u32) (s32) (arg0->unk0->unk608 * (second half of f64));
    HQ2_FIFO.data_port.w = 0;
    if (var_a2 != 1) {
        return;
    }
    HQ2_FIFO.dither_enable.w = 1;
}

void Resize(void) {

}

void Move(void) {

}

void Pick(void) {

}

void __glExpInitDepth(__GLcontext *gc, s64 arg1, ...) {
    s64 sp18;

    sp18 = arg1;
    __glInitDepth32();
    gc->imports.getenv = NULL;
    gc->imports.free = sp18->unkC38;
    gc->exports.dispatchExec = &sub_0da60000 - 0x59F0;
    gc->imports.unk3C = &sub_0da60000 - 0x59F8;
    gc->imports.other = &sub_0da60000 - 0x5A00;
    gc->exports.destroyContext = (1 << (s32) sp18->unkC38) - 1;
    gc->exports.unk30 = &sub_0da60000 - 0x5A90;
    gc->exports.beginDispatchOverride = &sub_0da60000 - 0x5A98;
    gc->exports.endDispatchOverride = &sub_0da60000 - 0x5A88;
    gc->exports.unk34 = &sub_0da60000 - 0x5BC4;
    gc->imports.unk48 = (1 << (s32) sp18->unkC38) - 1;
}
