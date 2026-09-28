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
    /* 0x40 */ char pad40[0xC];                     /* maybe part of unk3C[4]? */
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

extern ? sub_0da70000;

void __glExpEnableStencilTest(__GLcontext *gc, ...) {
    if ((gc->haveStencil != 0) && (gc->state.enables.general & 0x8000)) {
        __glExpPassStencilMode(gc, gc);
    } else {
        HQ2_FIFO.stencil_mode.w = 0;
        HQ2_FIFO.data_port.w = 0;
        HQ2_FIFO.data_port.w = 0;
        HQ2_FIFO.data_port.w = 0;
        HQ2_FIFO.data_port.w = 0;
        HQ2_FIFO.data_port.w = 0;
        HQ2_FIFO.data_port.w = 0;
    }
    __glExpPassStencilMask(gc, gc);
}

void __glExpPassStencilMask(__GLcontext *gc, ...) {
    if (gc->haveStencil != 0) {
        if (gc->state.enables.general & 0x8000) {
            HQ2_FIFO.stencil_mask.w = (u32) gc->state.stencil.writeMask;
            return;
        }
        /* Duplicate return node #4. Try simplifying control flow for better match */
        HQ2_FIFO.stencil_mask.w = 0;
        return;
    }
    HQ2_FIFO.stencil_mask.w = 0;
}

void __glExpPassStencilMode(__GLcontext *gc, ...) {
    enum GLenum temp_a3;
    enum GLenum temp_a3_2;
    enum GLenum temp_a3_3;
    enum GLenum temp_a3_4;
    u32 var_a3;
    u32 var_a4;
    u32 var_a5;
    u32 var_a6;

    temp_a3 = gc->state.stencil.testFunc;
    var_a4 = 0;
    switch (temp_a3) {                              /* switch 1 */
    case GL_NEVER:                                  /* switch 1 */
        var_a4 = 0;
        break;
    case GL_LESS:                                   /* switch 1 */
        var_a4 = 1;
        break;
    case GL_EQUAL:                                  /* switch 1 */
        var_a4 = 2;
        break;
    case GL_LEQUAL:                                 /* switch 1 */
        var_a4 = 3;
        break;
    case GL_GREATER:                                /* switch 1 */
        var_a4 = 4;
        break;
    case GL_NOTEQUAL:                               /* switch 1 */
        var_a4 = 5;
        break;
    case GL_GEQUAL:                                 /* switch 1 */
        var_a4 = 6;
        break;
    case GL_ALWAYS:                                 /* switch 1 */
        var_a4 = 7;
        break;
    }
    temp_a3_2 = gc->state.stencil.fail;
    switch (temp_a3_2) {                            /* switch 2; irregular */
    default:                                        /* switch 2 */
        var_a6 = 0;
        if (temp_a3_2 == GL_DECR) {
            var_a6 = 5;
        }
        break;
    case GL_KEEP:                                   /* switch 2 */
        var_a6 = 0;
        break;
    case GL_INVERT:                                 /* switch 2 */
        var_a6 = 1;
        break;
    case GL_ZERO:                                   /* switch 2 */
        var_a6 = 2;
        break;
    case GL_REPLACE:                                /* switch 2 */
        var_a6 = 3;
        break;
    case GL_INCR:                                   /* switch 2 */
        var_a6 = 4;
        break;
    }
    temp_a3_3 = gc->state.stencil.depthFail;
    switch (temp_a3_3) {                            /* switch 3; irregular */
    default:                                        /* switch 3 */
        var_a5 = 0;
        if (temp_a3_3 == GL_DECR) {
            var_a5 = 5;
        }
        break;
    case GL_KEEP:                                   /* switch 3 */
        var_a5 = 0;
        break;
    case GL_INVERT:                                 /* switch 3 */
        var_a5 = 1;
        break;
    case GL_ZERO:                                   /* switch 3 */
        var_a5 = 2;
        break;
    case GL_REPLACE:                                /* switch 3 */
        var_a5 = 3;
        break;
    case GL_INCR:                                   /* switch 3 */
        var_a5 = 4;
        break;
    }
    temp_a3_4 = gc->state.stencil.depthPass;
    switch (temp_a3_4) {                            /* switch 4; irregular */
    default:                                        /* switch 4 */
        var_a3 = 0;
        if (temp_a3_4 == GL_DECR) {
            var_a3 = 5;
        }
        break;
    case GL_KEEP:                                   /* switch 4 */
        var_a3 = 0;
        break;
    case GL_INVERT:                                 /* switch 4 */
        var_a3 = 1;
        break;
    case GL_ZERO:                                   /* switch 4 */
        var_a3 = 2;
        break;
    case GL_REPLACE:                                /* switch 4 */
        var_a3 = 3;
        break;
    case GL_INCR:                                   /* switch 4 */
        var_a3 = 4;
        break;
    }
    if (gc->state.enables.general & 0x8000) {
        HQ2_FIFO.stencil_mode.w = 1;
    } else {
        HQ2_FIFO.stencil_mode.w = 0;
    }
    HQ2_FIFO.data_port.w = (u32) gc->state.stencil.reference;
    HQ2_FIFO.data_port.w = var_a4;
    HQ2_FIFO.data_port.w = (u32) gc->state.stencil.mask;
    HQ2_FIFO.data_port.w = var_a6;
    HQ2_FIFO.data_port.w = var_a5;
    HQ2_FIFO.data_port.w = var_a3;
}

void Fetch(__GLcontext **arg0, s32 arg1, s32 arg2) {
    s64 sp8;
    s32 sp0;
    __GLcontext *temp_a5;

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
    if (!(HQ2_STATUS_PORT.read_status.w & 1)) {
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
    __glExpSetReadSource(temp_a5, temp_a5, 0x6D000, 0x422F0, 0x422A0, 0x6C040, temp_a5, 0x4229C, 0x42428);
}

void Store(__GLcontext **arg0, s32 arg1, u32 arg2, u32 arg3) {
    __GLcontext *temp_v1;
    s16 temp_a3;

    temp_v1 = *arg0;
    HQ2_FIFO.stencil_mode.w = 1;
    HQ2_FIFO.data_port.w = arg3;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0xF;
    HQ2_FIFO.data_port.w = 3;
    HQ2_FIFO.data_port.w = 3;
    HQ2_FIFO.data_port.w = 3;
    temp_a3 = (*arg0)->state.stencil.writeMask;
    HQ2_FIFO.stencil_mask.w = (u32) temp_a3;
    HQ2_FIFO_CI.unk20AC = arg1;
    HQ2_FIFO_CI.data_port.w = arg2;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0;
    __glExpEnableStencilTest(temp_v1, temp_v1, temp_a3, 0x42040, 0xF, 1, 0x4203C);
}

void TestFunc(void) {

}

void Clear(void **arg0) {
    HQ2_FIFO.clear_stencil.w = (u32) (*arg0)->unk624;
    HQ2_FIFO.data_port.w = (u32) (*arg0)->unk62A;
}

void Resize(void) {

}

void Move(void) {

}

void Pick(void) {

}

void __glExpInitStencil(__GLcontext *gc, s64 arg1, ...) {
    s64 sp18;

    sp18 = arg1;
    __glInitBuffer();
    gc->imports.getenv = NULL;
    gc->exports.dispatchExec = (void *(*)(__GLcontext *)) __glNop;
    gc->exports.notifySwapBuffers = __glNop;
    gc->exports.notifyDestroy = __glNop;
    gc->exports.notifyResize = &sub_0da70000 - 0x524C;
    gc->exports.forceCurrent = &sub_0da70000 - 0x5430;
    gc->exports.copyContext = &sub_0da70000 - 0x5300;
    gc->imports.free = sp18->unkC3C;
    gc->exports.beginDispatchOverride = &sub_0da70000 - 0x5244;
    gc->exports.shareContext = &sub_0da70000 - 0x5208;
    gc->imports.unk3C = &sub_0da70000 - 0x5210;
    gc->imports.other = &sub_0da70000 - 0x5218;
}
