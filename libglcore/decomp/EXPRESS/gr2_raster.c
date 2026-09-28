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
    /* 0x2060 */ char pad2060[8];                   /* maybe part of line_width[3]? */
    /* 0x2068 */ s32 unk2068;                       /* inferred */
    /* 0x206C */ char pad206C[0x18];                /* maybe part of unk2068[7]? */
    /* 0x2084 */ s32 unk2084;                       /* inferred */
    /* 0x2088 */ s32 unk2088;                       /* inferred */
    /* 0x208C */ char pad208C[8];                   /* maybe part of unk2088[3]? */
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

void __glExpPassDrawBuffer(__GLcontext *gc, ...) {
    __glExpSetPixWritemask(gc);
    __glExpSetReadSource(gc, gc);
}

void __glExpPassColorMask(__GLcontext *gc, ...) {
    __glExpSetPixWritemask(gc);
}

void __glExpPassIndexMask(__GLcontext *gc, ...) {
    __glExpSetPixWritemask(gc);
}

void __glExpEnableDither(__GLcontext *gc, ...) {
    HQ2_FIFO.dither_enable.w = (gc->state.enables.general & 8) != 0;
}

void __glExpPassBlendFunc(__GLcontext *gc, ...) {
    enum GLenum temp_a2_2;
    enum GLenum temp_a3;
    f32 temp_a2;
    s32 var_a2;
    u32 var_a0;
    u32 var_a2_2;
    u32 var_a3;
    u32 var_a4;
    u32 var_a5;
    u32 var_a6;

    var_a4 = 0;
    temp_a2 = gc->state.raster.blendColor.r;
    if (gc->modes.rgbMode != 0) {
        if ((gc->state.enables.general & 2) && ((bitwise s32) temp_a2 != 0x8007) && ((bitwise s32) temp_a2 != 0x8008) && ((bitwise s32) temp_a2 != 0x800A) && ((bitwise s32) temp_a2 != 0x800B)) {
            var_a2 = 0;
            if ((bitwise s32) temp_a2 != 0xBF1) {
                var_a2 = 1;
            }
        } else {
            var_a2 = 0;
        }
        var_a6 = 0;
        if (var_a2 != 0) {
            temp_a3 = gc->state.raster.blendSrc;
            var_a2_2 = 1;
            if (temp_a3 == GL_ONE) {
                var_a2_2 = 1;
                if (gc->state.raster.blendDst == GL_ZERO) {
                    var_a2_2 = 0;
                }
            }
            var_a6 = var_a2_2;
            if (temp_a3 == GL_SRC_ALPHA) {
                if (gc->state.raster.blendDst == GL_ONE_MINUS_SRC_ALPHA) {
                    var_a4 = 1;
                }
            }
            var_a5 = var_a4;
            if (temp_a3 >= GL_DST_COLOR) {
                if (temp_a3 >= GL_ONE_MINUS_DST_COLOR) {
                    if (temp_a3 < GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
                        if (temp_a3 >= GL_SRC_ALPHA_SATURATE) {
                            if (temp_a3 < 0x309U) {
                                var_a3 = 0;
                                goto block_22;
                            }
                        } else if (temp_a3 != GL_ONE_MINUS_DST_COLOR) {

                        } else {
                            var_a3 = 3;
                            goto block_22;
                        }
                    }
                } else {
                    var_a3 = 2;
                    goto block_22;
                }
            } else if (temp_a3 >= GL_ONE_MINUS_SRC_ALPHA) {
                if (temp_a3 < GL_DST_ALPHA) {
                    var_a3 = 5;
                    goto block_22;
                }
                if (temp_a3 >= GL_ONE_MINUS_DST_ALPHA) {
                    if (temp_a3 < GL_DST_COLOR) {
                        var_a3 = 0;
                        goto block_22;
                    }
                } else if (temp_a3 == GL_DST_ALPHA) {
                    var_a3 = 1;
                    goto block_22;
                }
            } else {
                if (temp_a3 != GL_ZERO) {
                    if (temp_a3 >= GL_LINE_LOOP) {
                        if (temp_a3 == GL_SRC_ALPHA) {
                            var_a3 = 4;
                            goto block_22;
                        }
                        return;
                    }
                    var_a3 = 1;
                    goto block_22;
                }
                var_a3 = 0;
block_22:
                temp_a2_2 = gc->state.raster.blendDst;
                if (temp_a2_2 >= GL_DST_ALPHA) {
                    var_a0 = 1;
                    if (temp_a2_2 < GL_ONE_MINUS_DST_ALPHA) {
                        /* Duplicate return node #24. Try simplifying control flow for better match */
                        HQ2_FIFO.blend_mode.w = var_a5;
                        HQ2_FIFO.blend_factor.w = var_a6;
                        HQ2_FIFO.blend_factor.w = var_a3;
                        HQ2_FIFO.blend_factor.w = var_a0;
                        return;
                    }
                    if ((temp_a2_2 < GL_ONE_MINUS_CONSTANT_COLOR_EXT) && (temp_a2_2 < GL_CONSTANT_COLOR_EXT) && (temp_a2_2 == GL_ONE_MINUS_DST_ALPHA)) {
                        var_a0 = 0;
                        /* Duplicate return node #24. Try simplifying control flow for better match */
                        HQ2_FIFO.blend_mode.w = var_a5;
                        HQ2_FIFO.blend_factor.w = var_a6;
                        HQ2_FIFO.blend_factor.w = var_a3;
                        HQ2_FIFO.blend_factor.w = var_a0;
                    }
                } else if (temp_a2_2 >= GL_ONE_MINUS_SRC_COLOR) {
                    if (temp_a2_2 >= GL_SRC_ALPHA) {
                        if (temp_a2_2 >= GL_ONE_MINUS_SRC_ALPHA) {
                            if (temp_a2_2 < GL_DST_ALPHA) {
                                var_a0 = 5;
                                /* Duplicate return node #24. Try simplifying control flow for better match */
                                HQ2_FIFO.blend_mode.w = var_a5;
                                HQ2_FIFO.blend_factor.w = var_a6;
                                HQ2_FIFO.blend_factor.w = var_a3;
                                HQ2_FIFO.blend_factor.w = var_a0;
                            }
                        } else if (temp_a2_2 == GL_SRC_ALPHA) {
                            var_a0 = 4;
                            /* Duplicate return node #24. Try simplifying control flow for better match */
                            HQ2_FIFO.blend_mode.w = var_a5;
                            HQ2_FIFO.blend_factor.w = var_a6;
                            HQ2_FIFO.blend_factor.w = var_a3;
                            HQ2_FIFO.blend_factor.w = var_a0;
                        }
                    } else {
                        var_a0 = 3;
                        /* Duplicate return node #24. Try simplifying control flow for better match */
                        HQ2_FIFO.blend_mode.w = var_a5;
                        HQ2_FIFO.blend_factor.w = var_a6;
                        HQ2_FIFO.blend_factor.w = var_a3;
                        HQ2_FIFO.blend_factor.w = var_a0;
                    }
                } else {
                    switch (temp_a2_2) {            /* irregular */
                    case GL_ZERO:
                        var_a0 = 0;
                        /* Duplicate return node #24. Try simplifying control flow for better match */
                        HQ2_FIFO.blend_mode.w = var_a5;
                        HQ2_FIFO.blend_factor.w = var_a6;
                        HQ2_FIFO.blend_factor.w = var_a3;
                        HQ2_FIFO.blend_factor.w = var_a0;
                        return;
                    default:
                        var_a0 = 1;
                        /* Duplicate return node #24. Try simplifying control flow for better match */
                        HQ2_FIFO.blend_mode.w = var_a5;
                        HQ2_FIFO.blend_factor.w = var_a6;
                        HQ2_FIFO.blend_factor.w = var_a3;
                        HQ2_FIFO.blend_factor.w = var_a0;
                        return;
                    case GL_SRC_COLOR:
                        var_a0 = 2;
                        /* Duplicate return node #24. Try simplifying control flow for better match */
                        HQ2_FIFO.blend_mode.w = var_a5;
                        HQ2_FIFO.blend_factor.w = var_a6;
                        HQ2_FIFO.blend_factor.w = var_a3;
                        HQ2_FIFO.blend_factor.w = var_a0;
                        return;
                    }
                }
            }
        } else {
            var_a5 = 0;
            var_a3 = 1;
            var_a0 = 0;
            HQ2_FIFO.blend_mode.w = var_a5;
            HQ2_FIFO.blend_factor.w = var_a6;
            HQ2_FIFO.blend_factor.w = var_a3;
            HQ2_FIFO.blend_factor.w = var_a0;
        }
    }
}

void __glExpEnableBlendFunc(__GLcontext *gc, ...) {
    __glExpPassBlendFunc(gc);
    __glExpPassLogicOp(gc, gc);
}

void __glExpPassLogicOp(__GLcontext *gc, ...) {
    s32 var_a2;
    u32 temp_a2;

    temp_a2 = gc->state.enables.general;
    if (!(temp_a2 & 4) && (var_a2 = 3, ((gc->state.enables.texture & 0x800) == 0)) && (!(gc->polygon.shader.modeFlags & 0x80000) || !(temp_a2 & 2) || ((bitwise s32) gc->state.raster.blendColor.r != 0xBF1))) {

    } else {
        var_a2 = gc->state.raster.logicOp & 0xF;
    }
    HQ2_FIFO.unk2068 = var_a2;
}

void __glExpEnableLogicOp(__GLcontext *gc, ...) {
    __glExpPassLogicOp(gc);
}

void __glExpEnableLineSmooth(__GLcontext *gc, ...) {
    if ((gc->state.enables.general & 0x200) && ((f64) (second half of f64) == (second half of f64)) && (gc->state.hints.lineSmooth != GL_NICEST)) {
        HQ2_FIFO.unk2088 = 1;
        return;
    }
    HQ2_FIFO.unk2088 = 0;
}

void __glExpEnablePointSmooth(__GLcontext *gc, ...) {
    if ((gc->state.enables.general & 0x400) && ((f64) (second half of f64) == (second half of f64)) && (gc->state.hints.pointSmooth != GL_NICEST)) {
        HQ2_FIFO.unk2084 = 1;
        return;
    }
    HQ2_FIFO.unk2084 = 0;
}

void __glExpPassShadeModel(__GLcontext *gc, ...) {
    enum GLenum temp_a2;

    temp_a2 = gc->state.light.shadingModel;
    switch (temp_a2) {                              /* irregular */
    case GL_SMOOTH:
        HQ2_FIFO.shade_model.w = 1;
        return;
    case GL_FLAT:
        HQ2_FIFO.shade_model.w = 0;
        return;
    }
}
