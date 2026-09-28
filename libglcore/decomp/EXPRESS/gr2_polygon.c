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
    /* 0x34 */ ? unk34;                             /* inferred */
    /* 0x34 */ char pad34[0x14];
} __GLexports;                                      /* size = 0x48 */

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
    /* 0x2060 */ char pad2060[0xC];                 /* maybe part of line_width[4]? */
    /* 0x206C */ s32 unk206C;                       /* inferred */
    /* 0x2070 */ s32 unk2070;                       /* inferred */
    /* 0x2074 */ char pad2074[4];
    /* 0x2078 */ s32 unk2078;                       /* inferred */
    /* 0x207C */ s32 unk207C;                       /* inferred */
    /* 0x2080 */ char pad2080[0x14];                /* maybe part of unk207C[6]? */
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
    /* 0x2338 */ char pad2338[0x50];                /* maybe part of get_origin[0x15]? */
    /* 0x2388 */ s32 unk2388;                       /* inferred */
    /* 0x238C */ char pad238C[4];
    /* 0x2390 */ f32 unk2390;                       /* inferred */
    /* 0x2394 */ char pad2394[4];
    /* 0x2398 */ gr2_reg32_t context_flush;
    /* 0x239C */ char pad239C[8];                   /* maybe part of context_flush[3]? */
    /* 0x23A4 */ gr2_reg32_t get_color;
    /* 0x23A8 */ gr2_reg32_t get_normal;
    /* 0x23AC */ char pad23AC[0x64];                /* maybe part of get_normal[0x1A]? */
    /* 0x2410 */ f32 clear_color;
    /* 0x2414 */ gr2_reg32_t pad2414;
    /* 0x2418 */ gr2_reg32_t pad2418;
    /* 0x241C */ gr2_reg32_t get_rasterpos;
    /* 0x2420 */ s32 unk2420;                       /* inferred */
    /* 0x2424 */ char pad2424[4];
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

void __glExpPassCullFace(__GLcontext *gc, ...) {
    enum GLenum temp_a2;

    if (gc->state.enables.general & 0x1000) {
        temp_a2 = gc->state.polygon.cull;
        switch (temp_a2) {                          /* irregular */
        case GL_FRONT_AND_BACK:
            HQ2_FIFO.unk206C = 1;
            HQ2_FIFO.unk2070 = 1;
            return;
        case GL_FRONT:
            HQ2_FIFO.unk206C = 1;
            HQ2_FIFO.unk2070 = 0;
            return;
        case GL_BACK:
            HQ2_FIFO.unk206C = 0;
            HQ2_FIFO.unk2070 = 1;
            return;
        }
    }
}

void __glExpEnableCullFace(__GLcontext *gc, ...) {
    if (gc->state.enables.general & 0x1000) {
        __glExpPassCullFace(gc, 0x40000);
        return;
    }
    HQ2_FIFO.unk206C = 0;
    HQ2_FIFO.unk2070 = 0;
}

void __glExpConvertStipple(__GLcontext *gc, ...) {
    __GLcontext *var_a0;
    __GLcontext *var_a0_2;
    s32 temp_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    u8 temp_a1_2;
    u8 temp_at;
    void *temp_a1;
    void *temp_v1;

    __glConvertStipple();
    var_a2 = 0;
    var_a0 = gc;
    do {
        temp_a1 = gc - (var_a2 * 8);
        temp_at = temp_a1->unk264;
        var_a0 += 4;
        var_a2 += 1;
        var_a0->unk7BCC = (s32) (temp_a1->unk265 | (temp_at << 8) | ((temp_a1->unk260 << 0x18) | (temp_a1->unk261 << 0x10)));
    } while (var_a2 != 0x10);
    var_a2_2 = 0;
    var_a0_2 = gc;
    do {
        temp_v1 = gc - (var_a2_2 * 8);
        temp_a1_2 = temp_v1->unk266;
        var_a0_2 += 4;
        var_a2_2 += 1;
        temp_a1_3 = temp_a1_2 << 8;
        var_a0_2->unk7C0C = (s32) (temp_v1->unk267 | temp_a1_3 | ((temp_v1->unk262 << 0x18) | (temp_v1->unk263 << 0x10)));
    } while (var_a2_2 != 0x10);
    __glExpPassPolygonStipple(gc, gc, temp_a1_3, var_a2_2, 0x10);
}

void __glExpPassFrontFace(__GLcontext *gc, ...) {
    enum GLenum temp_a2;

    temp_a2 = gc->state.polygon.frontFaceDirection;
    switch (temp_a2) {                              /* irregular */
    case GL_CCW:
        HQ2_FIFO.unk2420 = 1;
        return;
    case GL_CW:
        HQ2_FIFO.unk2420 = 0;
        return;
    }
}

void __glExpPassPolygonStipple(__GLcontext *gc, ...) {
    __GLcontext *var_a2;
    u32 temp_at;

    var_a2 = gc;
    if (gc->state.enables.general & 0x2000) {
        HQ2_FIFO.unk207C = 1;
        do {
            HQ2_FIFO.data_port.w = var_a2->unk7BD0;
            HQ2_FIFO.data_port.w = var_a2->unk7BD4;
            HQ2_FIFO.data_port.w = var_a2->unk7BD8;
            temp_at = var_a2->unk7BDC;
            var_a2 += 0x10;
            HQ2_FIFO.data_port.w = temp_at;
        } while (var_a2 != &gc->exports.unk34);
    }
}

void __glExpEnablePolygonStipple(__GLcontext *gc, ...) {
    if (gc->state.enables.general & 0x2000) {
        __glExpPassPolygonStipple(gc);
        return;
    }
    HQ2_FIFO.unk2078 = 0;
}

void __glExpPassPolygonMode(__GLcontext *gc, ...) {
    enum GLenum temp_a2;

    temp_a2 = gc->state.polygon.frontMode;
    switch (temp_a2) {                              /* irregular */
    case GL_LINE:
        HQ2_FIFO.unk2388 = 3;
        return;
    case GL_FILL:
        HQ2_FIFO.unk2388 = 1;
        return;
    case GL_POINT:
        HQ2_FIFO.unk2388 = 2;
        return;
    }
}

void __glExpPassPolygonOffset(__GLcontext *gc, ...) {
    if (gc->state.enables.general & 0x01000000) {
        HQ2_FIFO.unk2390 = gc->state.polygon.factor;
        HQ2_FIFO.unk2390 = gc->state.polygon.units * (f32) ((u64) ((s64) gc->depthBuffer.scale << 0x20) >> 0x20);
        return;
    }
    HQ2_FIFO.unk2390 = 0.0f;
    HQ2_FIFO.unk2390 = 0.0f;
}
