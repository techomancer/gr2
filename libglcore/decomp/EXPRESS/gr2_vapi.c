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
    /* 0x23AC */ char pad23AC[0x2C];                /* maybe part of get_normal[0xC]? */
    /* 0x23D8 */ s32 unk23D8;                       /* inferred */
    /* 0x23DC */ char pad23DC[0x34];                /* maybe part of unk23D8[0xE]? */
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

void __glExpPassColor(__GLcontext *gc, ...) {
    if (gc->modes.rgbMode != 0) {
        HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.r;
        HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.g;
        HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.b;
        HQ2_FIFO.color_4f.w = (bitwise u32) gc->state.current.userColor.a;
    }
}

void __glExpPassIndex(__GLcontext *gc, ...) {
    if (gc->modes.colorIndexMode != 0) {
        HQ2_FIFO.index.w = (bitwise u32) gc->state.current.userColorIndex;
    }
}

void __glExpPassNormal(__GLcontext *gc, ...) {
    HQ2_FIFO.unk2434 = gc->state.current.normal.x;
    HQ2_FIFO.unk2434 = gc->state.current.normal.y;
    HQ2_FIFO.unk2434 = gc->state.current.normal.z;
}

void __glExpPassEdgeFlag(__GLcontext *gc, ...) {
    HQ2_FIFO.unk23D8 = (s32) gc->state.current.edgeTag;
}

void __glExpGetColor(__GLcontext *gc, ...) {
    s32 sp0;

    if (gc->modes.rgbMode != 0) {
        HQ2_FIFO.get_color.w = 0;
        HQ2_FIFO.readback_trigger.w = 0;
loop_3:
        if (!(HQ2_STATUS_PORT.read_status.w & 1)) {
            sp0 = 0;
            if (sp0 < 0xA) {
                do {
                    sp0 += 1;
                } while (sp0 < 0xA);
            }
            goto loop_3;
        }
        gc->state.current.userColor.r = (bitwise f32) HQ2_READ_FIFO.data[0].w;
        gc->state.current.userColor.g = (bitwise f32) HQ2_READ_FIFO.data[1].w;
        gc->state.current.userColor.b = (bitwise f32) HQ2_READ_FIFO.data[2].w;
        HQ2_STATUS_PORT.read_ack.w = 0;
        gc->state.current.userColor.a = (bitwise f32) HQ2_READ_FIFO.data[3].w;
        HQ2_FIFO.read_done.w = 0;
        ((? (*)(?, ?, ?, ?)) gc->procs.table[0x2A])(0x6D000, 0x12090, 0x1208C, 0x12088);
    }
}

void __glExpGetIndex(__GLcontext *gc, ...) {
    s32 sp0;

    if (gc->modes.colorIndexMode != 0) {
        HQ2_FIFO.get_color.w = 0;
        HQ2_FIFO.readback_trigger.w = 0;
loop_3:
        if (!(HQ2_STATUS_PORT.read_status.w & 1)) {
            sp0 = 0;
            if (sp0 < 0xA) {
                do {
                    sp0 += 1;
                } while (sp0 < 0xA);
            }
            goto loop_3;
        }
        gc->state.current.userColorIndex = (bitwise f32) HQ2_READ_FIFO.data[0].w;
        HQ2_STATUS_PORT.read_ack.w = 0;
        HQ2_FIFO.read_done.w = 0;
    }
}

void __glExpGetNormal(__GLcontext *gc, ...) {
    s32 sp0;

    HQ2_FIFO.get_normal.w = 0;
    HQ2_FIFO.readback_trigger.w = 0;
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
    gc->state.current.normal.x = (bitwise f32) HQ2_READ_FIFO.data[0].w;
    gc->state.current.normal.y = (bitwise f32) HQ2_READ_FIFO.data[1].w;
    gc->state.current.normal.z = (bitwise f32) HQ2_READ_FIFO.data[2].w;
    HQ2_STATUS_PORT.read_ack.w = 0;
    HQ2_FIFO.read_done.w = 0;
}

void __glExpGetEdgeFlag(__GLcontext *gc, ...) {

}

void __glexpim_EdgeFlag(u8 flag) {
    __glCurrentContext->state.current.edgeTag = flag;
    HQ2_FIFO.unk23D8 = (s32) flag;
}

void __glexpim_EdgeFlagv(u8 *flag) {
    __glCurrentContext->state.current.edgeTag = *flag;
    HQ2_FIFO.unk23D8 = (s32) *flag;
}

void __glexpim_Color3ub(u8 red, u8 green, u8 blue) {
    HQ2_FIFO_CI.color_3f.w = (u32) red;
    HQ2_FIFO_CI.color_3f.w = (u32) green;
    HQ2_FIFO_CI.color_3f.w = (u32) blue;
}

void __glexpim_Color3ubv(u8 *v) {
    HQ2_FIFO_CI.color_3f.w = (u32) v->unk0;
    HQ2_FIFO_CI.color_3f.w = (u32) v->unk1;
    HQ2_FIFO_CI.color_3f.w = (u32) v->unk2;
}

void __glexpim_Color3b(s8 red, s8 green, s8 blue) {
    HQ2_FIFO_CI.color_3f.w = red * 2;
    HQ2_FIFO_CI.color_3f.w = green * 2;
    HQ2_FIFO_CI.color_3f.w = blue * 2;
}

void __glexpim_Color3bv(s8 *v) {
    HQ2_FIFO_CI.color_3f.w = v->unk0 * 2;
    HQ2_FIFO_CI.color_3f.w = v->unk1 * 2;
    HQ2_FIFO_CI.color_3f.w = v->unk2 * 2;
}

void __glexpim_Color3d(f64 red, f64 green, f64 blue) {
    HQ2_FIFO.color_3f.w = (bitwise u32) (f32) red;
    HQ2_FIFO.color_3f.w = (bitwise u32) (f32) green;
    HQ2_FIFO.color_3f.w = (bitwise u32) (f32) blue;
}

void __glexpim_Color3dv(f64 *v) {
    HQ2_FIFO.color_3f.w = (bitwise u32) (f32) v->unk0;
    HQ2_FIFO.color_3f.w = (bitwise u32) (f32) v->unk8;
    HQ2_FIFO.color_3f.w = (bitwise u32) (f32) v->unk10;
}

void __glexpim_Color3f(f32 red, f32 green, f32 blue) {
    HQ2_FIFO.color_3f.w = (bitwise u32) red;
    HQ2_FIFO.color_3f.w = (bitwise u32) green;
    HQ2_FIFO.color_3f.w = (bitwise u32) blue;
}

void __glexpim_Color3fv(f32 *v) {
    HQ2_FIFO.color_3f.w = (bitwise u32) v->unk0;
    HQ2_FIFO.color_3f.w = v->unk4;
    HQ2_FIFO.color_3f.w = v->unk8;
}

void __glexpim_Color3i(s32 red, s32 green, s32 blue) {
    HQ2_FIFO_CI.color_3f.w = (u32) (red >> 0x17);
    HQ2_FIFO_CI.color_3f.w = (u32) (green >> 0x17);
    HQ2_FIFO_CI.color_3f.w = (u32) (blue >> 0x17);
}

void __glexpim_Color3iv(s32 *v) {
    HQ2_FIFO_CI.color_3f.w = (u32) ((s32) v->unk0 >> 0x17);
    HQ2_FIFO_CI.color_3f.w = (u32) ((s32) v->unk4 >> 0x17);
    HQ2_FIFO_CI.color_3f.w = (u32) ((s32) v->unk8 >> 0x17);
}

void __glexpim_Color3ui(u32 red, u32 green, u32 blue) {
    HQ2_FIFO_CI.color_3f.w = red >> 0x18;
    HQ2_FIFO_CI.color_3f.w = green >> 0x18;
    HQ2_FIFO_CI.color_3f.w = blue >> 0x18;
}

void __glexpim_Color3uiv(u32 *v) {
    HQ2_FIFO_CI.color_3f.w = (u32) v->unk0 >> 0x18;
    HQ2_FIFO_CI.color_3f.w = (u32) v->unk4 >> 0x18;
    HQ2_FIFO_CI.color_3f.w = (u32) v->unk8 >> 0x18;
}

void __glexpim_Color3s(s16 red, s16 green, s16 blue) {
    HQ2_FIFO_CI.color_3f.w = (u32) (red >> 7);
    HQ2_FIFO_CI.color_3f.w = (u32) (green >> 7);
    HQ2_FIFO_CI.color_3f.w = (u32) (blue >> 7);
}

void __glexpim_Color3sv(s16 *v) {
    HQ2_FIFO_CI.color_3f.w = (u32) ((s16) v->unk0 >> 7);
    HQ2_FIFO_CI.color_3f.w = (u32) ((s16) v->unk2 >> 7);
    HQ2_FIFO_CI.color_3f.w = (u32) ((s16) v->unk4 >> 7);
}

void __glexpim_Color3us(u16 red, u16 green, u16 blue) {
    HQ2_FIFO_CI.color_3f.w = red >> 8;
    HQ2_FIFO_CI.color_3f.w = green >> 8;
    HQ2_FIFO_CI.color_3f.w = blue >> 8;
}

void __glexpim_Color3usv(u16 *v) {
    HQ2_FIFO_CI.color_3f.w = (u16) v->unk0 >> 8;
    HQ2_FIFO_CI.color_3f.w = (u16) v->unk2 >> 8;
    HQ2_FIFO_CI.color_3f.w = (u16) v->unk4 >> 8;
}

void __glexpim_Color4ub(u8 red, u8 green, u8 blue, u8 alpha) {
    HQ2_FIFO_CI.color_4f.w = (u32) red;
    HQ2_FIFO_CI.color_4f.w = (u32) green;
    HQ2_FIFO_CI.color_4f.w = (u32) blue;
    HQ2_FIFO_CI.color_4f.w = (u32) alpha;
}

void __glexpim_Color4ubv(u8 *v) {
    HQ2_FIFO_CI.color_4f.w = (u32) v->unk0;
    HQ2_FIFO_CI.color_4f.w = (u32) v->unk1;
    HQ2_FIFO_CI.color_4f.w = (u32) v->unk2;
    HQ2_FIFO_CI.color_4f.w = (u32) v->unk3;
}

void __glexpim_Color4b(s8 red, s8 green, s8 blue, s8 alpha) {
    HQ2_FIFO_CI.color_4f.w = red * 2;
    HQ2_FIFO_CI.color_4f.w = green * 2;
    HQ2_FIFO_CI.color_4f.w = blue * 2;
    HQ2_FIFO_CI.color_4f.w = alpha * 2;
}

void __glexpim_Color4bv(s8 *v) {
    HQ2_FIFO_CI.color_4f.w = v->unk0 * 2;
    HQ2_FIFO_CI.color_4f.w = v->unk1 * 2;
    HQ2_FIFO_CI.color_4f.w = v->unk2 * 2;
    HQ2_FIFO_CI.color_4f.w = v->unk3 * 2;
}

void __glexpim_Color4d(f64 red, f64 green, f64 blue, f64 alpha) {
    HQ2_FIFO.color_4f.w = (bitwise u32) (f32) red;
    HQ2_FIFO.color_4f.w = (bitwise u32) (f32) green;
    HQ2_FIFO.color_4f.w = (bitwise u32) (f32) blue;
    HQ2_FIFO.color_4f.w = (bitwise u32) (f32) alpha;
}

void __glexpim_Color4dv(f64 *v) {
    HQ2_FIFO.color_4f.w = (bitwise u32) (f32) v->unk0;
    HQ2_FIFO.color_4f.w = (bitwise u32) (f32) v->unk8;
    HQ2_FIFO.color_4f.w = (bitwise u32) (f32) v->unk10;
    HQ2_FIFO.color_4f.w = (bitwise u32) (f32) v->unk18;
}

void __glexpim_Color4f(f32 red, f32 green, f32 blue, f32 alpha) {
    HQ2_FIFO.color_4f.w = (bitwise u32) red;
    HQ2_FIFO.color_4f.w = (bitwise u32) green;
    HQ2_FIFO.color_4f.w = (bitwise u32) blue;
    HQ2_FIFO.color_4f.w = (bitwise u32) alpha;
}

void __glexpim_Color4fv(f32 *v) {
    HQ2_FIFO.color_4f.w = (bitwise u32) v->unk0;
    HQ2_FIFO.color_4f.w = v->unk4;
    HQ2_FIFO.color_4f.w = v->unk8;
    HQ2_FIFO.color_4f.w = v->unkC;
}

void __glexpim_Color4i(s32 red, s32 green, s32 blue, s32 alpha) {
    HQ2_FIFO_CI.color_4f.w = (u32) (red >> 0x17);
    HQ2_FIFO_CI.color_4f.w = (u32) (green >> 0x17);
    HQ2_FIFO_CI.color_4f.w = (u32) (blue >> 0x17);
    HQ2_FIFO_CI.color_4f.w = (u32) (alpha >> 0x17);
}

void __glexpim_Color4iv(s32 *v) {
    HQ2_FIFO_CI.color_4f.w = (u32) ((s32) v->unk0 >> 0x17);
    HQ2_FIFO_CI.color_4f.w = (u32) ((s32) v->unk4 >> 0x17);
    HQ2_FIFO_CI.color_4f.w = (u32) ((s32) v->unk8 >> 0x17);
    HQ2_FIFO_CI.color_4f.w = (u32) ((s32) v->unkC >> 0x17);
}

void __glexpim_Color4ui(u32 red, u32 green, u32 blue, u32 alpha) {
    HQ2_FIFO_CI.color_4f.w = red >> 0x18;
    HQ2_FIFO_CI.color_4f.w = green >> 0x18;
    HQ2_FIFO_CI.color_4f.w = blue >> 0x18;
    HQ2_FIFO_CI.color_4f.w = alpha >> 0x18;
}

void __glexpim_Color4uiv(u32 *v) {
    HQ2_FIFO_CI.color_4f.w = (u32) v->unk0 >> 0x18;
    HQ2_FIFO_CI.color_4f.w = (u32) v->unk4 >> 0x18;
    HQ2_FIFO_CI.color_4f.w = (u32) v->unk8 >> 0x18;
    HQ2_FIFO_CI.color_4f.w = (u32) v->unkC >> 0x18;
}

void __glexpim_Color4s(s16 red, s16 green, s16 blue, s16 alpha) {
    HQ2_FIFO_CI.color_4f.w = (u32) (red >> 7);
    HQ2_FIFO_CI.color_4f.w = (u32) (green >> 7);
    HQ2_FIFO_CI.color_4f.w = (u32) (blue >> 7);
    HQ2_FIFO_CI.color_4f.w = (u32) (alpha >> 7);
}

void __glexpim_Color4sv(s16 *v) {
    HQ2_FIFO_CI.color_4f.w = (u32) ((s16) v->unk0 >> 7);
    HQ2_FIFO_CI.color_4f.w = (u32) ((s16) v->unk2 >> 7);
    HQ2_FIFO_CI.color_4f.w = (u32) ((s16) v->unk4 >> 7);
    HQ2_FIFO_CI.color_4f.w = (u32) ((s16) v->unk6 >> 7);
}

void __glexpim_Color4us(u16 red, u16 green, u16 blue, u16 alpha) {
    HQ2_FIFO_CI.color_4f.w = red >> 8;
    HQ2_FIFO_CI.color_4f.w = green >> 8;
    HQ2_FIFO_CI.color_4f.w = blue >> 8;
    HQ2_FIFO_CI.color_4f.w = alpha >> 8;
}

void __glexpim_Color4usv(u16 *v) {
    HQ2_FIFO_CI.color_4f.w = (u16) v->unk0 >> 8;
    HQ2_FIFO_CI.color_4f.w = (u16) v->unk2 >> 8;
    HQ2_FIFO_CI.color_4f.w = (u16) v->unk4 >> 8;
    HQ2_FIFO_CI.color_4f.w = (u16) v->unk6 >> 8;
}

void __glexpim_Indexd(f64 c) {
    HQ2_FIFO.index.w = (bitwise u32) (f32) c;
}

void __glexpim_Indexf(f32 c) {
    HQ2_FIFO.index.w = (bitwise u32) c;
}

void __glexpim_Indexi(s32 c) {
    HQ2_FIFO_CI.index.w = (u32) c;
}

void __glexpim_Indexs(s16 c) {
    HQ2_FIFO_CI.index.w = (u32) c;
}

void __glexpim_Indexub(u8 c) {
    HQ2_FIFO_CI.index.w = (u32) c;
}

void __glexpim_Indexdv(f64 *c) {
    HQ2_FIFO.index.w = (bitwise u32) (f32) *c;
}

void __glexpim_Indexfv(f32 *c) {
    HQ2_FIFO.index.w = (bitwise u32) *c;
}

void __glexpim_Indexiv(s32 *c) {
    HQ2_FIFO_CI.index.w = (u32) *c;
}

void __glexpim_Indexsv(s16 *c) {
    HQ2_FIFO_CI.index.w = (u32) *c;
}

void __glexpim_Indexubv(u8 *c) {
    HQ2_FIFO_CI.index.w = (u32) *c;
}

void __glexpim_Vertex2dv(f64 *v) {
    HQ2_FIFO.vertex_2f.w = (bitwise u32) (f32) v->unk0;
    HQ2_FIFO.vertex_2f.w = (bitwise u32) (f32) v->unk8;
}

void __glexpim_Vertex2fv(f32 *v) {
    HQ2_FIFO.vertex_2f.w = (bitwise u32) v->unk0;
    HQ2_FIFO.vertex_2f.w = v->unk4;
}

void __glexpim_Vertex2d(f64 x, f64 y) {
    HQ2_FIFO.vertex_2f.w = (bitwise u32) (f32) x;
    HQ2_FIFO.vertex_2f.w = (bitwise u32) (f32) y;
}

void __glexpim_Vertex2f(f32 x, f32 y) {
    HQ2_FIFO.vertex_2f.w = (bitwise u32) x;
    HQ2_FIFO.vertex_2f.w = (bitwise u32) y;
}

void __glexpim_Vertex2i(s32 x, s32 y) {
    HQ2_FIFO_CI.vertex_2f.w = (u32) x;
    HQ2_FIFO_CI.vertex_2f.w = (u32) y;
}

void __glexpim_Vertex2iv(s32 *v) {
    HQ2_FIFO_CI.vertex_2f.w = (u32) v->unk0;
    HQ2_FIFO_CI.vertex_2f.w = v->unk4;
}

void __glexpim_Vertex2s(s16 x, s16 y) {
    HQ2_FIFO_CI.vertex_2f.w = (u32) x;
    HQ2_FIFO_CI.vertex_2f.w = (u32) y;
}

void __glexpim_Vertex2sv(s16 *v) {
    HQ2_FIFO_CI.vertex_2f.w = (u32) v->unk0;
    HQ2_FIFO_CI.vertex_2f.w = (u32) v->unk2;
}

void __glexpim_Vertex3dv(f64 *v) {
    HQ2_FIFO.vertex_3f.w = (bitwise u32) (f32) v->unk0;
    HQ2_FIFO.vertex_3f.w = (bitwise u32) (f32) v->unk8;
    HQ2_FIFO.vertex_3f.w = (bitwise u32) (f32) v->unk10;
}

void __glexpim_Vertex3fv(f32 *v) {
    HQ2_FIFO.vertex_3f.w = (bitwise u32) v->unk0;
    HQ2_FIFO.vertex_3f.w = v->unk4;
    HQ2_FIFO.vertex_3f.w = v->unk8;
}

void __glexpim_Vertex3d(f64 x, f64 y, f64 z) {
    HQ2_FIFO.vertex_3f.w = (bitwise u32) (f32) x;
    HQ2_FIFO.vertex_3f.w = (bitwise u32) (f32) y;
    HQ2_FIFO.vertex_3f.w = (bitwise u32) (f32) z;
}

void __glexpim_Vertex3f(f32 x, f32 y, f32 z) {
    HQ2_FIFO.vertex_3f.w = (bitwise u32) x;
    HQ2_FIFO.vertex_3f.w = (bitwise u32) y;
    HQ2_FIFO.vertex_3f.w = (bitwise u32) z;
}

void __glexpim_Vertex3i(s32 x, s32 y, s32 z) {
    HQ2_FIFO_CI.vertex_3f.w = (u32) x;
    HQ2_FIFO_CI.vertex_3f.w = (u32) y;
    HQ2_FIFO_CI.vertex_3f.w = (u32) z;
}

void __glexpim_Vertex3iv(s32 *v) {
    HQ2_FIFO_CI.vertex_3f.w = (u32) v->unk0;
    HQ2_FIFO_CI.vertex_3f.w = v->unk4;
    HQ2_FIFO_CI.vertex_3f.w = v->unk8;
}

void __glexpim_Vertex3s(s16 x, s16 y, s16 z) {
    HQ2_FIFO_CI.vertex_3f.w = (u32) x;
    HQ2_FIFO_CI.vertex_3f.w = (u32) y;
    HQ2_FIFO_CI.vertex_3f.w = (u32) z;
}

void __glexpim_Vertex3sv(s16 *v) {
    HQ2_FIFO_CI.vertex_3f.w = (u32) v->unk0;
    HQ2_FIFO_CI.vertex_3f.w = (u32) v->unk2;
    HQ2_FIFO_CI.vertex_3f.w = (u32) v->unk4;
}

void __glexpim_Vertex4dv(f64 *v) {
    HQ2_FIFO.vertex_4f.w = (bitwise u32) (f32) v->unk0;
    HQ2_FIFO.vertex_4f.w = (bitwise u32) (f32) v->unk8;
    HQ2_FIFO.vertex_4f.w = (bitwise u32) (f32) v->unk10;
    HQ2_FIFO.vertex_4f.w = (bitwise u32) (f32) v->unk18;
}

void __glexpim_Vertex4fv(f32 *v) {
    HQ2_FIFO.vertex_4f.w = (bitwise u32) v->unk0;
    HQ2_FIFO.vertex_4f.w = v->unk4;
    HQ2_FIFO.vertex_4f.w = v->unk8;
    HQ2_FIFO.vertex_4f.w = v->unkC;
}

void __glexpim_Vertex4d(f64 x, f64 y, f64 z, f64 w) {
    HQ2_FIFO.vertex_4f.w = (bitwise u32) (f32) x;
    HQ2_FIFO.vertex_4f.w = (bitwise u32) (f32) y;
    HQ2_FIFO.vertex_4f.w = (bitwise u32) (f32) z;
    HQ2_FIFO.vertex_4f.w = (bitwise u32) (f32) w;
}

void __glexpim_Vertex4f(f32 x, f32 y, f32 z, f32 w) {
    HQ2_FIFO.vertex_4f.w = (bitwise u32) x;
    HQ2_FIFO.vertex_4f.w = (bitwise u32) y;
    HQ2_FIFO.vertex_4f.w = (bitwise u32) z;
    HQ2_FIFO.vertex_4f.w = (bitwise u32) w;
}

void __glexpim_Vertex4i(s32 x, s32 y, s32 z, s32 w) {
    HQ2_FIFO_CI.vertex_4f.w = (u32) x;
    HQ2_FIFO_CI.vertex_4f.w = (u32) y;
    HQ2_FIFO_CI.vertex_4f.w = (u32) z;
    HQ2_FIFO_CI.vertex_4f.w = (u32) w;
}

void __glexpim_Vertex4iv(s32 *v) {
    HQ2_FIFO_CI.vertex_4f.w = (u32) v->unk0;
    HQ2_FIFO_CI.vertex_4f.w = v->unk4;
    HQ2_FIFO_CI.vertex_4f.w = v->unk8;
    HQ2_FIFO_CI.vertex_4f.w = v->unkC;
}

void __glexpim_Vertex4s(s16 x, s16 y, s16 z, s16 w) {
    HQ2_FIFO_CI.vertex_4f.w = (u32) x;
    HQ2_FIFO_CI.vertex_4f.w = (u32) y;
    HQ2_FIFO_CI.vertex_4f.w = (u32) z;
    HQ2_FIFO_CI.vertex_4f.w = (u32) w;
}

void __glexpim_Vertex4sv(s16 *v) {
    HQ2_FIFO_CI.vertex_4f.w = (u32) v->unk0;
    HQ2_FIFO_CI.vertex_4f.w = (u32) v->unk2;
    HQ2_FIFO_CI.vertex_4f.w = (u32) v->unk4;
    HQ2_FIFO_CI.vertex_4f.w = (u32) v->unk6;
}

void __glexpim_Normal3d(f64 nx, f64 ny, f64 nz) {
    HQ2_FIFO.unk2434 = (f32) nx;
    HQ2_FIFO.unk2434 = (f32) ny;
    HQ2_FIFO.unk2434 = (f32) nz;
}

void __glexpim_Normal3dv(f64 *v) {
    HQ2_FIFO.unk2434 = (f32) v->unk0;
    HQ2_FIFO.unk2434 = (f32) v->unk8;
    HQ2_FIFO.unk2434 = (f32) v->unk10;
}

void __glexpim_Normal3f(f32 nx, f32 ny, f32 nz) {
    HQ2_FIFO.unk2434 = nx;
    HQ2_FIFO.unk2434 = ny;
    HQ2_FIFO.unk2434 = nz;
}

void __glexpim_Normal3fv(f32 *v) {
    HQ2_FIFO.unk2434 = v->unk0;
    HQ2_FIFO.unk2434 = v->unk4;
    HQ2_FIFO.unk2434 = v->unk8;
}

void __glexpim_Normal3b(s8 nx, s8 ny, s8 nz) {
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver255 * (f32) ((nx * 2) + 1);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver255 * (f32) ((ny * 2) + 1);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver255 * (f32) ((nz * 2) + 1);
}

void __glexpim_Normal3bv(s8 *v) {
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver255 * (f32) ((v->unk0 * 2) + 1);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver255 * (f32) ((v->unk1 * 2) + 1);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver255 * (f32) ((v->unk2 * 2) + 1);
}

void __glexpim_Normal3s(s16 nx, s16 ny, s16 nz) {
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver65535 * (f32) ((nx * 2) + 1);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver65535 * (f32) ((ny * 2) + 1);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver65535 * (f32) ((nz * 2) + 1);
}

void __glexpim_Normal3sv(s16 *v) {
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver65535 * (f32) ((v->unk0 * 2) + 1);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver65535 * (f32) ((v->unk2 * 2) + 1);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver65535 * (f32) ((v->unk4 * 2) + 1);
}

void __glexpim_Normal3i(s32 nx, s32 ny, s32 nz) {
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver4294965000 * (((f32) nx * 2.0f) + 1.0f);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver4294965000 * (((f32) ny * 2.0f) + 1.0f);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver4294965000 * (((f32) nz * 2.0f) + 1.0f);
}

void __glexpim_Normal3iv(s32 *v) {
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver4294965000 * (((f32) v->unk0 * 2.0f) + 1.0f);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver4294965000 * (((f32) v->unk4 * 2.0f) + 1.0f);
    HQ2_FIFO.unk2434 = __glCurrentContext->constants.oneOver4294965000 * (((f32) v->unk8 * 2.0f) + 1.0f);
}
