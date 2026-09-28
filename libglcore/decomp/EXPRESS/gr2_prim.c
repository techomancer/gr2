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
    /* 0x20EC */ char pad20EC[0x2C];                /* maybe part of texture_matrix[0xC]? */
    /* 0x2118 */ s32 unk2118;                       /* inferred */
    /* 0x211C */ char pad211C[0xC];                 /* maybe part of unk2118[4]? */
    /* 0x2128 */ s32 unk2128;                       /* inferred */
    /* 0x212C */ char pad212C[4];
    /* 0x2130 */ s32 unk2130;                       /* inferred */
    /* 0x2134 */ char pad2134[0x10];                /* maybe part of unk2130[5]? */
    /* 0x2144 */ s32 unk2144;                       /* inferred */
    /* 0x2148 */ char pad2148[0x14];                /* maybe part of unk2144[6]? */
    /* 0x215C */ s32 unk215C;                       /* inferred */
    /* 0x2160 */ s32 unk2160;                       /* inferred */
    /* 0x2164 */ char pad2164[4];
    /* 0x2168 */ s32 unk2168;                       /* inferred */
    /* 0x216C */ char pad216C[0x64];                /* maybe part of unk2168[0x1A]? */
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
    /* 0x23AC */ char pad23AC[0x14];                /* maybe part of get_normal[6]? */
    /* 0x23C0 */ s32 unk23C0;                       /* inferred */
    /* 0x23C4 */ s32 unk23C4;                       /* inferred */
    /* 0x23C8 */ char pad23C8[4];
    /* 0x23CC */ s32 unk23CC;                       /* inferred */
    /* 0x23D0 */ s32 unk23D0;                       /* inferred */
    /* 0x23D4 */ char pad23D4[8];                   /* maybe part of unk23D0[3]? */
    /* 0x23DC */ s32 unk23DC;                       /* inferred */
    /* 0x23E0 */ char pad23E0[0x10];                /* maybe part of unk23DC[5]? */
    /* 0x23F0 */ s32 unk23F0;                       /* inferred */
    /* 0x23F4 */ s32 unk23F4;                       /* inferred */
    /* 0x23F8 */ char pad23F8[0x18];                /* maybe part of unk23F4[7]? */
    /* 0x2410 */ f32 clear_color;
    /* 0x2414 */ gr2_reg32_t pad2414;
    /* 0x2418 */ gr2_reg32_t pad2418;
    /* 0x241C */ gr2_reg32_t get_rasterpos;
    /* 0x2420 */ char pad2420[8];                   /* maybe part of get_rasterpos[3]? */
    /* 0x2428 */ gr2_reg32_t buffer_mode;
    /* 0x242C */ gr2_reg32_t color_writemask;
    /* 0x2430 */ char pad2430[0x44];                /* maybe part of color_writemask[0x12]? */
    /* 0x2474 */ s32 unk2474;                       /* inferred */
    /* 0x2478 */ char pad2478[0x128];               /* maybe part of unk2474[0x4B]? */
    /* 0x25A0 */ s32 unk25A0;                       /* inferred */
    /* 0x25A4 */ char pad25A4[0x4C];                /* maybe part of unk25A0[0x14]? */
    /* 0x25F0 */ s32 unk25F0;                       /* inferred */
    /* 0x25F4 */ char pad25F4[0x3C];                /* maybe part of unk25F0[0x10]? */
    /* 0x2630 */ gr2_reg32_t draw_bitmap;
    /* 0x2634 */ char pad2634[0x148];               /* maybe part of draw_bitmap[0x53]? */
    /* 0x277C */ gr2_reg32_t data_port;
    /* 0x2780 */ char pad2780[0x1C];                /* maybe part of data_port[8]? */
    /* 0x279C */ gr2_reg32_t swap_buffers;
    /* 0x27A0 */ char pad27A0[0x1EC];               /* maybe part of swap_buffers[0x7C]? */
    /* 0x298C */ gr2_reg32_t vertex_4f;
    /* 0x2990 */ char pad2990[0x78C];               /* maybe part of vertex_4f[0x1E4]? */
    /* 0x311C */ s32 unk311C;                       /* inferred */
    /* 0x3120 */ char pad3120[0x14];                /* maybe part of unk311C[6]? */
    /* 0x3134 */ s32 unk3134;                       /* inferred */
    /* 0x3138 */ char pad3138[0x20];                /* maybe part of unk3134[9]? */
    /* 0x3158 */ s32 unk3158;                       /* inferred */
    /* 0x315C */ char pad315C[8];                   /* maybe part of unk3158[3]? */
    /* 0x3164 */ s32 unk3164;                       /* inferred */
    /* 0x3168 */ char pad3168[0x2C];                /* maybe part of unk3164[0xC]? */
    /* 0x3194 */ s32 unk3194;                       /* inferred */
    /* 0x3198 */ char pad3198[0x214];               /* maybe part of unk3194[0x86]? */
    /* 0x33AC */ s32 unk33AC;                       /* inferred */
    /* 0x33B0 */ char pad33B0[4];
    /* 0x33B4 */ s32 unk33B4;                       /* inferred */
    /* 0x33B8 */ char pad33B8[0x10];                /* maybe part of unk33B4[5]? */
    /* 0x33C8 */ s32 unk33C8;                       /* inferred */
    /* 0x33CC */ char pad33CC[8];                   /* maybe part of unk33C8[3]? */
    /* 0x33D4 */ s32 unk33D4;                       /* inferred */
    /* 0x33D8 */ char pad33D8[8];                   /* maybe part of unk33D4[3]? */
    /* 0x33E0 */ s32 unk33E0;                       /* inferred */
    /* 0x33E4 */ char pad33E4[0xA8];                /* maybe part of unk33E0[0x2B]? */
    /* 0x348C */ s32 unk348C;                       /* inferred */
    /* 0x3490 */ char pad3490[0x14FC];              /* maybe part of unk348C[0x540]? */
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

void __glExpEndLLoop(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glNop;
    HQ2_FIFO.unk2168 = 0;
    HQ2_FIFO.unk3194 = 0;
}

void __glExpBeginLLoop(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glExpEndLLoop;
    HQ2_FIFO.unk2160 = 0;
    HQ2_FIFO.unk3164 = 0;
}

void __glExpEndLStrip(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glNop;
    HQ2_FIFO.unk215C = 0;
    HQ2_FIFO.unk3194 = 0;
}

void __glExpBeginLStrip(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glExpEndLStrip;
    HQ2_FIFO.unk25F0 = 0;
    HQ2_FIFO.unk3158 = 0;
}

void __glExpEndLines(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glNop;
    HQ2_FIFO.unk215C = 0;
    HQ2_FIFO.unk3194 = 0;
}

void __glExpBeginLines(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glExpEndLines;
    HQ2_FIFO.unk25F0 = 0;
    HQ2_FIFO.unk33AC = 0;
}

void __glExpEndPoints(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glNop;
    HQ2_FIFO.unk25A0 = 0;
    HQ2_FIFO.unk3194 = 0;
}

void __glExpBeginPoints(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glExpEndPoints;
    HQ2_FIFO.unk2474 = 0;
    HQ2_FIFO.unk348C = 0;
}

void __glExpEndPolygon(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glNop;
    if (gc->state.polygon.frontMode != GL_FILL) {
        HQ2_FIFO.unk23F0 = 0;
    }
    HQ2_FIFO.unk23F4 = 0;
    HQ2_FIFO.unk3194 = 0;
}

void __glExpBeginPolygon(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glExpEndPolygon;
    HQ2_FIFO.unk23DC = 0;
    HQ2_FIFO.unk33E0 = 0;
}

void __glExpEndTStrip(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glNop;
    HQ2_FIFO.unk2128 = 0;
    HQ2_FIFO.unk3194 = 0;
}

void __glExpBeginTStrip(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glExpEndTStrip;
    HQ2_FIFO.unk2118 = 0;
    HQ2_FIFO.unk311C = 0;
}

void __glExpEndTFan(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glNop;
    HQ2_FIFO.unk2128 = 0;
    HQ2_FIFO.unk3194 = 0;
}

void __glExpBeginTFan(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glExpEndTFan;
    HQ2_FIFO.unk2118 = 0;
    HQ2_FIFO.unk33B4 = 0;
}

void __glExpEndTriangles(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glNop;
    HQ2_FIFO.unk23C4 = 0;
    HQ2_FIFO.unk3194 = 0;
}

void __glExpBeginTriangles(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glExpEndTriangles;
    HQ2_FIFO.unk23C0 = 0;
    HQ2_FIFO.unk33C8 = 0;
}

void __glExpEndQStrip(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glNop;
    HQ2_FIFO.unk2144 = 0;
    HQ2_FIFO.unk3194 = 0;
}

void __glExpBeginQStrip(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glExpEndQStrip;
    HQ2_FIFO.unk2130 = 0;
    HQ2_FIFO.unk3134 = 0;
}

void __glExpEndQuads(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glNop;
    HQ2_FIFO.unk23D0 = 0;
    HQ2_FIFO.unk3194 = 0;
}

void __glExpBeginQuads(__GLcontext *gc, ...) {
    gc->procs.table[0x3B] = __glExpEndQuads;
    HQ2_FIFO.unk23CC = 0;
    HQ2_FIFO.unk33D4 = 0;
}

void __glexpim_Begin(enum GLenum mode) {
    s64 sp18;
    u64 sp8;
    s64 sp0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    sp8 = (u64) mode;
    sp0 = (s64) __glCurrentContext;
    if (__glBeginMode != 0) {
        if (__glBeginMode == 2) {
            sp0->unk2E10(sp0);
            var_ra = sp18;
            goto block_3;
        }
        __glSetError(GL_INVALID_OPERATION);
        return;
    }
block_3:
    sp18 = var_ra;
    if (sp8 >= 0xAU) {
        __glSetError(GL_INVALID_ENUM);
        return;
    }
    __glBeginMode = 1;
    ((sp8 * 4) + sp0)->unk7B50(sp0);
}

void __glexpim_End(void) {
    if (__glBeginMode != 0) {
        ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x3B])(__glCurrentContext);
        __glBeginMode = 0;
        return;
    }
    __glSetError(GL_INVALID_ENUM);
}
