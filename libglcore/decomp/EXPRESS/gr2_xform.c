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
    /* 0x20B8 */ s32 unk20B8;                       /* inferred */
    /* 0x20BC */ s32 unk20BC;                       /* inferred */
    /* 0x20C0 */ char pad20C0[0x1C];                /* maybe part of unk20BC[8]? */
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
    /* 0x2338 */ char pad2338[0x54];                /* maybe part of get_origin[0x16]? */
    /* 0x238C */ s32 unk238C;                       /* inferred */
    /* 0x2390 */ char pad2390[8];                   /* maybe part of unk238C[3]? */
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

void __glExpEnableNormalize(__GLcontext *gc, ...) {
    if (gc->state.enables.general & 0x400000) {
        HQ2_FIFO.unk238C = 1;
        HQ2_FIFO.normalize_enable_b.w = 1;
        return;
    }
    HQ2_FIFO.unk238C = 0;
    HQ2_FIFO.normalize_enable_b.w = 0;
}

void __glExpUpdateMatrixState(__GLcontext *gc, ...) {
    __GLtransform *temp_a1;
    __GLtransform *temp_v0;
    __GLtransform *temp_v1;

    temp_a1 = gc->transform.modelView;
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[0][0];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[0][1];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[0][2];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[0][3];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[1][0];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[1][1];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[1][2];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[1][3];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[2][0];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[2][1];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[2][2];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[2][3];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[3][0];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[3][1];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[3][2];
    HQ2_FIFO.modelview_matrix = temp_a1->matrix.matrix[3][3];
    temp_v1 = gc->transform.projection;
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[0][0];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[0][1];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[0][2];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[0][3];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[1][0];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[1][1];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[1][2];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[1][3];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[2][0];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[2][1];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[2][2];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[2][3];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[3][0];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[3][1];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[3][2];
    HQ2_FIFO.projection_matrix = temp_v1->matrix.matrix[3][3];
    temp_v0 = gc->transform.texture[0];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[0][0];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[0][1];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[0][2];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[0][3];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[1][0];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[1][1];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[1][2];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[1][3];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[2][0];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[2][1];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[2][2];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[2][3];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[3][0];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[3][1];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[3][2];
    HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[3][3];
}

void __glExpPassMatrix(__GLcontext *gc, ...) {
    s64 sp0;
    __GLtransform *temp_a2;
    __GLtransform *temp_v0;
    __GLtransform *var_a3;
    enum GLenum temp_a1;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f15;
    f32 temp_f15_2;

    temp_a1 = gc->state.transform.matrixMode;
    switch (temp_a1) {                              /* irregular */
    case GL_MODELVIEW:
        var_a3 = gc->transform.modelView;
        sp0 = (s64) gc;
        temp_f12 = var_a3->matrix.matrix[0][3];
        temp_f15 = var_a3->matrix.matrix[0][0];
        temp_f14 = var_a3->matrix.matrix[0][1];
        temp_f13 = var_a3->matrix.matrix[0][2];
        HQ2_FIFO.modelview_matrix = temp_f15;
        HQ2_FIFO.modelview_matrix = temp_f14;
        HQ2_FIFO.modelview_matrix = temp_f13;
        HQ2_FIFO.modelview_matrix = temp_f12;
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[1][0];
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[1][1];
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[1][2];
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[1][3];
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[2][0];
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[2][1];
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[2][2];
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[2][3];
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[3][0];
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[3][1];
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[3][2];
        HQ2_FIFO.modelview_matrix = var_a3->matrix.matrix[3][3];
        if (var_a3->updateInverse != 0) {
            sp0->unk2E84(sp0, var_a3, var_a3, temp_f12, temp_f13, temp_f14, temp_f15);
            var_a3 = sp0->unk73E0;
        }
        HQ2_FIFO.normal_matrix = var_a3->inverseTranspose.matrix[0][0];
        HQ2_FIFO.normal_matrix = var_a3->inverseTranspose.matrix[0][1];
        HQ2_FIFO.normal_matrix = var_a3->inverseTranspose.matrix[0][2];
        HQ2_FIFO.normal_matrix = var_a3->inverseTranspose.matrix[1][0];
        HQ2_FIFO.normal_matrix = var_a3->inverseTranspose.matrix[1][1];
        HQ2_FIFO.normal_matrix = var_a3->inverseTranspose.matrix[1][2];
        HQ2_FIFO.normal_matrix = var_a3->inverseTranspose.matrix[2][0];
        HQ2_FIFO.normal_matrix = var_a3->inverseTranspose.matrix[2][1];
        HQ2_FIFO.normal_matrix = var_a3->inverseTranspose.matrix[2][2];
        break;
    case GL_PROJECTION:
        temp_a2 = gc->transform.projection;
        temp_f12_2 = temp_a2->matrix.matrix[3][0];
        temp_f13_2 = temp_a2->matrix.matrix[2][3];
        temp_f14_2 = temp_a2->matrix.matrix[2][2];
        temp_f15_2 = temp_a2->matrix.matrix[2][1];
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[0][0];
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[0][1];
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[0][2];
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[0][3];
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[1][0];
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[1][1];
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[1][2];
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[1][3];
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[2][0];
        HQ2_FIFO.projection_matrix = temp_f15_2;
        HQ2_FIFO.projection_matrix = temp_f14_2;
        HQ2_FIFO.projection_matrix = temp_f13_2;
        HQ2_FIFO.projection_matrix = temp_f12_2;
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[3][1];
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[3][2];
        HQ2_FIFO.projection_matrix = temp_a2->matrix.matrix[3][3];
        if (gc->state.enables.clipPlanes != 0) {
            __glExpPassClipPlanes(gc, temp_a1, temp_a2, temp_f12_2, temp_f13_2, temp_f14_2, temp_f15_2);
        }
        break;
    case GL_TEXTURE:
        temp_v0 = gc->transform.texture[0];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[0][0];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[0][1];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[0][2];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[0][3];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[1][0];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[1][1];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[1][2];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[1][3];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[2][0];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[2][1];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[2][2];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[2][3];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[3][0];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[3][1];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[3][2];
        HQ2_FIFO.texture_matrix = temp_v0->matrix.matrix[3][3];
        break;
    }
}

void __glexpim_Frustum(f64 left, f64 right, f64 bottom, f64 top, f64 zNear, f64 zFar) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_Frustum(left, right, bottom, top, zNear, zFar);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_LoadIdentity(void) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_LoadIdentity();
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_LoadMatrixf(f32 *m) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_LoadMatrixf(m);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_LoadMatrixd(f64 *m) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_LoadMatrixd(m);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_MatrixMode(enum GLenum mode) {
    __glim_MatrixMode(mode);
}

void __glexpim_MultMatrixf(f32 *m) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_MultMatrixf(m);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_MultMatrixd(f64 *m) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_MultMatrixd(m);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_Ortho(f64 left, f64 right, f64 bottom, f64 top, f64 zNear, f64 zFar) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_Ortho(left, right, bottom, top, zNear, zFar);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_DepthRange(f64 n, f64 f) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_DepthRange(n, f);
    __glExpUpdateViewport(temp_s8, temp_s8);
}

void __glexpim_PopMatrix(void) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_PopMatrix();
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_PushMatrix(void) {
    __glim_PushMatrix();
}

void __glexpim_Rotated(f64 angle, f64 x, f64 y, f64 z) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_Rotated(angle, x, y, z);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_Rotatef(f32 angle, f32 x, f32 y, f32 z) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_Rotatef(angle, x, y, z);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_Scaled(f64 x, f64 y, f64 z) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_Scaled(x, y, z);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_Scalef(f32 x, f32 y, f32 z) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_Scalef(x, y, z);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_Translated(f64 x, f64 y, f64 z) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_Translated(x, y, z);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glexpim_Translatef(f32 x, f32 y, f32 z) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glim_Translated((f64) (second half of f64), second half of f64, (f64) z);
    __glExpPassMatrix(temp_s8, temp_s8);
}

void __glExpEnableClipPlanes(__GLcontext *gc, ...) {
    s32 var_a3;
    u32 var_a2;

    var_a3 = 0;
    var_a2 = gc->state.enables.clipPlanes;
    if (gc->constants.numberOfClipPlanes > 0) {
        do {
            HQ2_FIFO.unk20B8 = (var_a2 & 1) != 0;
            HQ2_FIFO.unk20B8 = var_a3;
            var_a3 += 1;
            var_a2 = (u32) ((s32) var_a2 >> 1);
        } while (var_a3 < gc->constants.numberOfClipPlanes);
    }
}

void __glExpPassClipPlanes(__GLcontext *gc, ...) {
    s32 var_a2;
    s32 var_a3;
    void *temp_v0;

    var_a2 = 0;
    if (gc->constants.numberOfClipPlanes > 0) {
        var_a3 = 0;
        do {
            HQ2_FIFO.unk20BC = var_a2;
            temp_v0 = gc->state.transform.eyeClipPlanes + var_a3;
            HQ2_FIFO.data_port.w = temp_v0->unk0;
            HQ2_FIFO.data_port.w = temp_v0->unk4;
            HQ2_FIFO.data_port.w = temp_v0->unk8;
            HQ2_FIFO.data_port.w = temp_v0->unkC;
            var_a2 += 1;
            var_a3 += 0x10;
        } while (var_a2 < gc->constants.numberOfClipPlanes);
    }
}

void __glexpim_ClipPlane(enum GLenum plane, f64 *equation) {
    s64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    __GLcontext *temp_s0;
    __GLtransform *temp_a4;
    s32 temp_a2;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a2 = (u32) (plane - 0x3000) < (u32) temp_s0->constants.numberOfClipPlanes;
        if (temp_a2 != 0) {
            sp0 = (f32) equation->unk0;
            sp4 = (f32) equation->unk8;
            sp8 = (f32) equation->unk10;
            spC = (f32) equation->unk18;
            temp_a4 = temp_s0->transform.modelView;
            if (temp_a4->updateInverse != 0) {
                sp10 = (s64) temp_a4;
                __glSetError((enum GLenum) temp_s0);
            }
            temp_a4->inverseTranspose.xf4(&temp_s0->state.transform.eyeClipPlanes[plane] - 0x30000, sp, &temp_a4->inverseTranspose, 0x30000, temp_a4);
            __glBeginMode = 2;
            temp_s0->dirtyMask |= 1;
            __glExpPassClipPlanes(temp_s0, temp_s0);
            return;
        }
        __glExpPassClipPlanes((__GLcontext *)0x500, 0x500, temp_a2);
        return;
    }
    __glSetError(GL_INVALID_OPERATION);
}
