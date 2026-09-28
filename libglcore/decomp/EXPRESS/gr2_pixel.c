typedef struct __GLpixelStateRec {
    /* 0x000 */ char pad0[0x68];
    /* 0x068 */ f32 unk68;                          /* inferred */
    /* 0x06C */ f32 unk6C;                          /* inferred */
    /* 0x070 */ char pad70[0x158];                  /* maybe part of unk6C[0x57]? */
    /* 0x1C8 */ u8 unk1C8;                          /* inferred */
    /* 0x1C9 */ u8 unk1C9;                          /* inferred */
    /* 0x1CA */ char pad1CA[2];                     /* maybe part of unk1C9[3]? */
    /* 0x1CC */ s32 unk1CC;                         /* inferred */
    /* 0x1D0 */ s32 unk1D0;                         /* inferred */
    /* 0x1D4 */ s32 unk1D4;                         /* inferred */
    /* 0x1D8 */ s32 unk1D8;                         /* inferred */
    /* 0x1DC */ char pad1DC[0x10];                  /* maybe part of unk1D8[5]? */
    /* 0x1EC */ u8 unk1EC;                          /* inferred */
    /* 0x1ED */ u8 unk1ED;                          /* inferred */
    /* 0x1EE */ char pad1EE[2];                     /* maybe part of unk1ED[3]? */
    /* 0x1F0 */ s32 unk1F0;                         /* inferred */
    /* 0x1F4 */ s32 unk1F4;                         /* inferred */
    /* 0x1F8 */ s32 unk1F8;                         /* inferred */
    /* 0x1FC */ s32 unk1FC;                         /* inferred */
    /* 0x200 */ char pad200[0x14];                  /* maybe part of unk1FC[6]? */
    /* 0x214 */ __GLcontext *unk214;                /* inferred */
    /* 0x218 */ char pad218[0x90];                  /* maybe part of unk214[0x25]? */
} __GLpixelState;                                   /* size = 0x2A8 */

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
    /* 0x20EC */ char pad20EC[0xD8];                /* maybe part of texture_matrix[0x37]? */
    /* 0x21C4 */ s32 unk21C4;                       /* inferred */
    /* 0x21C8 */ char pad21C8[8];                   /* maybe part of unk21C4[3]? */
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

extern ? sub_0db30000;

void __glExpCopyToPipe4(__GLcontext *gc, s32 *arg1, s32 arg2, ...) {
    s32 *var_a1;
    s32 *var_a5;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a4;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_at;
    u32 temp_at_2;
    u32 temp_v0;

    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 0x10) {
        temp_a4 = (s32) (((u32) (var_a2 >> 3) >> 0x1C) + var_a2) >> 4;
        if (temp_a4 & 1) {
            HQ2_FIFO.unk21C4 = var_a1->unk0;
            HQ2_FIFO.data_port.w = var_a1->unk4;
            HQ2_FIFO.data_port.w = var_a1->unk8;
            HQ2_FIFO.data_port.w = var_a1->unkC;
            HQ2_FIFO.data_port.w = var_a1->unk10;
            HQ2_FIFO.data_port.w = var_a1->unk14;
            HQ2_FIFO.data_port.w = var_a1->unk18;
            HQ2_FIFO.data_port.w = var_a1->unk1C;
            HQ2_FIFO.data_port.w = var_a1->unk20;
            HQ2_FIFO.data_port.w = var_a1->unk24;
            HQ2_FIFO.data_port.w = var_a1->unk28;
            HQ2_FIFO.data_port.w = var_a1->unk2C;
            HQ2_FIFO.data_port.w = var_a1->unk30;
            HQ2_FIFO.data_port.w = var_a1->unk34;
            HQ2_FIFO.data_port.w = var_a1->unk38;
            temp_at = var_a1->unk3C;
            var_a1 += 0x40;
            var_a2 -= 0x10;
            HQ2_FIFO.data_port.w = temp_at;
        }
        if ((temp_a4 >> 1) != 0) {
            var_a4 = var_a2;
            var_a5 = var_a1;
            do {
                HQ2_FIFO.unk21C4 = var_a5->unk0;
                HQ2_FIFO.data_port.w = var_a5->unk4;
                HQ2_FIFO.data_port.w = var_a5->unk8;
                HQ2_FIFO.data_port.w = var_a5->unkC;
                HQ2_FIFO.data_port.w = var_a5->unk10;
                HQ2_FIFO.data_port.w = var_a5->unk14;
                HQ2_FIFO.data_port.w = var_a5->unk18;
                HQ2_FIFO.data_port.w = var_a5->unk1C;
                HQ2_FIFO.data_port.w = var_a5->unk20;
                HQ2_FIFO.data_port.w = var_a5->unk24;
                HQ2_FIFO.data_port.w = var_a5->unk28;
                HQ2_FIFO.data_port.w = var_a5->unk2C;
                HQ2_FIFO.data_port.w = var_a5->unk30;
                HQ2_FIFO.data_port.w = var_a5->unk34;
                HQ2_FIFO.data_port.w = var_a5->unk38;
                HQ2_FIFO.data_port.w = var_a5->unk3C;
                HQ2_FIFO.unk21C4 = var_a5->unk40;
                HQ2_FIFO.data_port.w = var_a5->unk44;
                HQ2_FIFO.data_port.w = var_a5->unk48;
                HQ2_FIFO.data_port.w = var_a5->unk4C;
                HQ2_FIFO.data_port.w = var_a5->unk50;
                HQ2_FIFO.data_port.w = var_a5->unk54;
                HQ2_FIFO.data_port.w = var_a5->unk58;
                HQ2_FIFO.data_port.w = var_a5->unk5C;
                HQ2_FIFO.data_port.w = var_a5->unk60;
                HQ2_FIFO.data_port.w = var_a5->unk64;
                HQ2_FIFO.data_port.w = var_a5->unk68;
                HQ2_FIFO.data_port.w = var_a5->unk6C;
                HQ2_FIFO.data_port.w = var_a5->unk70;
                HQ2_FIFO.data_port.w = var_a5->unk74;
                temp_a0 = var_a5->unk78;
                var_a5 += 0x80;
                HQ2_FIFO.data_port.w = temp_a0;
                var_a4 -= 0x20;
                HQ2_FIFO.data_port.w = var_a5->unk-4;
            } while (var_a4 >= 0x10);
            var_a2 = var_a4;
            var_a1 = var_a5;
        }
    }
    if (var_a2 > 0) {
        if (var_a2 & 8) {
            HQ2_FIFO.unk21C4 = var_a1->unk0;
            HQ2_FIFO.data_port.w = var_a1->unk4;
            HQ2_FIFO.data_port.w = var_a1->unk8;
            HQ2_FIFO.data_port.w = var_a1->unkC;
            HQ2_FIFO.data_port.w = var_a1->unk10;
            HQ2_FIFO.data_port.w = var_a1->unk14;
            HQ2_FIFO.data_port.w = var_a1->unk18;
            temp_a0_2 = var_a1->unk1C;
            var_a1 += 0x20;
            HQ2_FIFO.data_port.w = temp_a0_2;
        }
        if (var_a2 & 4) {
            HQ2_FIFO.unk21C4 = var_a1->unk0;
            HQ2_FIFO.data_port.w = var_a1->unk4;
            HQ2_FIFO.data_port.w = var_a1->unk8;
            temp_at_2 = var_a1->unkC;
            var_a1 += 0x10;
            HQ2_FIFO.data_port.w = temp_at_2;
        }
        if (var_a2 & 2) {
            HQ2_FIFO.unk21C4 = var_a1->unk0;
            temp_v0 = var_a1->unk4;
            var_a1 += 8;
            HQ2_FIFO.data_port.w = temp_v0;
        }
        if (var_a2 & 1) {
            HQ2_FIFO.unk21C4 = *var_a1;
        }
        var_a2_2 = 0x10 - var_a2;
        temp_a4_2 = var_a2_2;
        if (var_a2_2 > 0) {
            var_a1_2 = var_a2_2 & 3;
            if (var_a1_2 != 0) {
                do {
                    var_a2_2 -= 1;
                    var_a1_2 -= 1;
                    HQ2_FIFO.data_port.w = 0;
                } while (var_a1_2 != 0);
            }
            if ((temp_a4_2 >> 2) != 0) {
                var_a1_3 = var_a2_2;
                do {
                    var_a1_3 -= 4;
                    HQ2_FIFO.data_port.w = 0;
                    HQ2_FIFO.data_port.w = 0;
                    HQ2_FIFO.data_port.w = 0;
                    HQ2_FIFO.data_port.w = 0;
                } while (var_a1_3 != 0);
            }
        }
    }
}

void __glExpCopyToPipe1(__GLcontext *gc, void *arg1, s32 arg2, ...) {
    s32 temp_a3;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a4;
    s32 var_at;
    s32 var_v0;
    u8 temp_a0;
    u8 temp_a0_2;
    u8 temp_at;
    u8 temp_at_2;
    u8 temp_v0;
    void *var_a1;

    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 0x40) {
        var_a3 = 4;
        do {
loop_2:
            HQ2_FIFO.unk21C4 = var_a1->unk3 | (var_a1->unk2 << 8) | ((var_a1->unk0 << 0x18) | (var_a1->unk1 << 0x10));
            HQ2_FIFO.data_port.w = var_a1->unk7 | (var_a1->unk6 << 8) | ((var_a1->unk4 << 0x18) | (var_a1->unk5 << 0x10));
            HQ2_FIFO.data_port.w = var_a1->unkB | (var_a1->unkA << 8) | ((var_a1->unk8 << 0x18) | (var_a1->unk9 << 0x10));
            temp_a0 = var_a1->unkE;
            var_a1 += 0x10;
            var_a3 -= 1;
            HQ2_FIFO.data_port.w = var_a1->unk-1 | (temp_a0 << 8) | ((var_a1->unk-4 << 0x18) | (var_a1->unk-3 << 0x10));
            if (var_a3 != 0) {
                goto loop_2;
            }
            var_a2 -= 0x40;
            var_a3 = 4;
        } while (var_a2 >= 0x40);
    }
    if (var_a2 > 0) {
        var_a3_2 = 2;
        if (var_a2 & 0x20) {
            do {
                HQ2_FIFO.unk21C4 = var_a1->unk3 | (var_a1->unk2 << 8) | ((var_a1->unk0 << 0x18) | (var_a1->unk1 << 0x10));
                HQ2_FIFO.data_port.w = var_a1->unk7 | (var_a1->unk6 << 8) | ((var_a1->unk4 << 0x18) | (var_a1->unk5 << 0x10));
                HQ2_FIFO.data_port.w = var_a1->unkB | (var_a1->unkA << 8) | ((var_a1->unk8 << 0x18) | (var_a1->unk9 << 0x10));
                temp_a0_2 = var_a1->unkE;
                var_a1 += 0x10;
                var_a3_2 -= 1;
                HQ2_FIFO.data_port.w = var_a1->unk-1 | (temp_a0_2 << 8) | ((var_a1->unk-4 << 0x18) | (var_a1->unk-3 << 0x10));
            } while (var_a3_2 != 0);
        }
        var_at = var_a2 & 8;
        if (var_a2 & 0x10) {
            HQ2_FIFO.unk21C4 = var_a1->unk3 | (var_a1->unk2 << 8) | ((var_a1->unk0 << 0x18) | (var_a1->unk1 << 0x10));
            HQ2_FIFO.data_port.w = var_a1->unk7 | (var_a1->unk6 << 8) | ((var_a1->unk4 << 0x18) | (var_a1->unk5 << 0x10));
            HQ2_FIFO.data_port.w = var_a1->unkB | (var_a1->unkA << 8) | ((var_a1->unk8 << 0x18) | (var_a1->unk9 << 0x10));
            temp_at = var_a1->unkE;
            var_a1 += 0x10;
            HQ2_FIFO.data_port.w = var_a1->unk-1 | (temp_at << 8) | ((var_a1->unk-4 << 0x18) | (var_a1->unk-3 << 0x10));
            var_at = var_a2 & 8;
        }
        var_v0 = var_a2 & 4;
        if (var_at != 0) {
            HQ2_FIFO.unk21C4 = var_a1->unk3 | (var_a1->unk2 << 8) | ((var_a1->unk0 << 0x18) | (var_a1->unk1 << 0x10));
            temp_at_2 = var_a1->unk6;
            var_a1 += 8;
            HQ2_FIFO.data_port.w = var_a1->unk-1 | (temp_at_2 << 8) | ((var_a1->unk-4 << 0x18) | (var_a1->unk-3 << 0x10));
            var_v0 = var_a2 & 4;
        }
        var_a3_3 = var_a2 & 3;
        if (var_v0 != 0) {
            temp_v0 = var_a1->unk2;
            var_a1 += 4;
            HQ2_FIFO.unk21C4 = var_a1->unk-1 | (temp_v0 << 8) | ((var_a1->unk-4 << 0x18) | (var_a1->unk-3 << 0x10));
            var_a3_3 = var_a2 & 3;
        }
        if (var_a3_3 != 0) {
            var_a4 = 0;
            switch (var_a3_3) {                     /* irregular */
            case 3:
                var_a4 = var_a1->unk2 << 8;
                /* fallthrough */
            case 2:
                var_a4 |= var_a1->unk1 << 0x10;
                /* fallthrough */
            case 1:
                var_a4 |= var_a1->unk0 << 0x18;
                break;
            }
            HQ2_FIFO.unk21C4 = var_a4;
        }
        var_a2_2 = (s32) (0x40 - var_a2) >> 2;
        if (var_a2_2 > 0) {
            temp_a3 = var_a2_2;
            var_a1_2 = var_a2_2 & 3;
            if (var_a1_2 != 0) {
                do {
                    var_a2_2 -= 1;
                    var_a1_2 -= 1;
                    HQ2_FIFO.data_port.w = 0;
                } while (var_a1_2 != 0);
            }
            if ((temp_a3 >> 2) != 0) {
                var_a1_3 = var_a2_2;
                do {
                    var_a1_3 -= 4;
                    HQ2_FIFO.data_port.w = 0;
                    HQ2_FIFO.data_port.w = 0;
                    HQ2_FIFO.data_port.w = 0;
                    HQ2_FIFO.data_port.w = 0;
                } while (var_a1_3 != 0);
            }
        }
    }
}

void __glExpSwapToPipe1(__GLcontext *gc, void *arg1, s32 arg2, ...) {
    s32 temp_a3;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_at;
    s32 var_v0;
    s32 var_v1;
    u8 temp_a0;
    u8 temp_a0_2;
    u8 temp_at;
    u8 temp_at_2;
    void *var_a1;

    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 0x40) {
        var_a3 = 4;
        do {
loop_2:
            HQ2_FIFO.unk21C4 = var_a1->unk0 | (var_a1->unk1 << 8) | ((var_a1->unk2 << 0x10) | (var_a1->unk3 << 0x18));
            HQ2_FIFO.data_port.w = var_a1->unk4 | (var_a1->unk5 << 8) | ((var_a1->unk6 << 0x10) | (var_a1->unk7 << 0x18));
            HQ2_FIFO.data_port.w = var_a1->unk8 | (var_a1->unk9 << 8) | ((var_a1->unkA << 0x10) | (var_a1->unkB << 0x18));
            temp_a0 = var_a1->unkD;
            var_a1 += 0x10;
            var_a3 -= 1;
            HQ2_FIFO.data_port.w = var_a1->unk-4 | (temp_a0 << 8) | ((var_a1->unk-2 << 0x10) | (var_a1->unk-1 << 0x18));
            if (var_a3 != 0) {
                goto loop_2;
            }
            var_a2 -= 0x40;
            var_a3 = 4;
        } while (var_a2 >= 0x40);
    }
    if (var_a2 > 0) {
        var_a3_2 = 2;
        if (var_a2 & 0x20) {
            do {
                HQ2_FIFO.unk21C4 = var_a1->unk0 | (var_a1->unk1 << 8) | ((var_a1->unk2 << 0x10) | (var_a1->unk3 << 0x18));
                HQ2_FIFO.data_port.w = var_a1->unk4 | (var_a1->unk5 << 8) | ((var_a1->unk6 << 0x10) | (var_a1->unk7 << 0x18));
                HQ2_FIFO.data_port.w = var_a1->unk8 | (var_a1->unk9 << 8) | ((var_a1->unkA << 0x10) | (var_a1->unkB << 0x18));
                temp_a0_2 = var_a1->unkD;
                var_a1 += 0x10;
                var_a3_2 -= 1;
                HQ2_FIFO.data_port.w = var_a1->unk-4 | (temp_a0_2 << 8) | ((var_a1->unk-2 << 0x10) | (var_a1->unk-1 << 0x18));
            } while (var_a3_2 != 0);
        }
        var_at = var_a2 & 8;
        if (var_a2 & 0x10) {
            HQ2_FIFO.unk21C4 = var_a1->unk0 | (var_a1->unk1 << 8) | ((var_a1->unk2 << 0x10) | (var_a1->unk3 << 0x18));
            HQ2_FIFO.data_port.w = var_a1->unk4 | (var_a1->unk5 << 8) | ((var_a1->unk6 << 0x10) | (var_a1->unk7 << 0x18));
            HQ2_FIFO.data_port.w = var_a1->unk8 | (var_a1->unk9 << 8) | ((var_a1->unkA << 0x10) | (var_a1->unkB << 0x18));
            temp_at = var_a1->unkD;
            var_a1 += 0x10;
            HQ2_FIFO.data_port.w = var_a1->unk-4 | (temp_at << 8) | ((var_a1->unk-2 << 0x10) | (var_a1->unk-1 << 0x18));
            var_at = var_a2 & 8;
        }
        var_v0 = var_a2 & 4;
        if (var_at != 0) {
            HQ2_FIFO.unk21C4 = var_a1->unk0 | (var_a1->unk1 << 8) | ((var_a1->unk2 << 0x10) | (var_a1->unk3 << 0x18));
            temp_at_2 = var_a1->unk5;
            var_a1 += 8;
            HQ2_FIFO.data_port.w = var_a1->unk-4 | (temp_at_2 << 8) | ((var_a1->unk-2 << 0x10) | (var_a1->unk-1 << 0x18));
            var_v0 = var_a2 & 4;
        }
        var_v1 = var_a2 & 3;
        if (var_v0 != 0) {
            HQ2_FIFO.unk21C4 = var_a1->unk0 | (var_a1->unk1 << 8) | ((var_a1->unk2 << 0x10) | (var_a1->unk3 << 0x18));
            var_v1 = var_a2 & 3;
        }
        if (var_v1 != 0) {
            HQ2_FIFO.unk21C4 = 0;
        }
        var_a2_2 = (s32) (0x40 - var_a2) >> 2;
        if (var_a2_2 > 0) {
            temp_a3 = var_a2_2;
            var_a1_2 = var_a2_2 & 3;
            if (var_a1_2 != 0) {
                do {
                    var_a2_2 -= 1;
                    var_a1_2 -= 1;
                    HQ2_FIFO.data_port.w = 0;
                } while (var_a1_2 != 0);
            }
            if ((temp_a3 >> 2) != 0) {
                var_a1_3 = var_a2_2;
                do {
                    var_a1_3 -= 4;
                    HQ2_FIFO.data_port.w = 0;
                    HQ2_FIFO.data_port.w = 0;
                    HQ2_FIFO.data_port.w = 0;
                    HQ2_FIFO.data_port.w = 0;
                } while (var_a1_3 != 0);
            }
        }
    }
}

void __glExpSwapAndCopy1(__GLcontext *gc, void *arg1, s32 arg2, ...) {
    __GLcontext *var_a0;
    __GLcontext *var_a1_2;
    s32 temp_a4;
    s32 var_a0_2;
    s32 var_a6;
    u32 temp_at_3;
    void *(*temp_at)(__GLcontext *, u32);
    void *(*temp_at_2)(__GLcontext *, u32);
    void *var_a1;
    void *var_a2;

    var_a0 = gc;
    var_a0 = gc;
    var_a1 = arg1;
    if (arg2 >= 4) {
        temp_a4 = (s32) (((u32) (arg2 >> 1) >> 0x1E) + arg2) >> 2;
        var_a6 = arg2;
        if (temp_a4 & 1) {
            var_a1 += 4;
            temp_at = var_a0->imports.malloc;
            var_a0 += 4;
            var_a1->unk-4 = (s8) temp_at;
            var_a1->unk-1 = (s8) ((u32) temp_at >> 0x18);
            var_a1->unk-2 = (s8) ((u32) temp_at >> 0x10);
            var_a1->unk-3 = (s8) ((u32) temp_at >> 8);
            var_a6 = arg2 - 4;
        }
        if ((temp_a4 >> 1) != 0) {
            var_a2 = var_a1;
            var_a0_2 = var_a6;
            var_a1_2 = var_a0;
            do {
                temp_at_2 = var_a1_2->imports.malloc;
                var_a2 += 8;
                var_a2->unk-8 = (s8) temp_at_2;
                var_a2->unk-7 = (s8) ((u32) temp_at_2 >> 8);
                var_a2->unk-6 = (s8) ((u32) temp_at_2 >> 0x10);
                var_a2->unk-5 = (s8) ((u32) temp_at_2 >> 0x18);
                var_a1_2 += 8;
                temp_at_3 = var_a1_2->unk-4;
                var_a0_2 -= 8;
                var_a2->unk-4 = (s8) temp_at_3;
                var_a2->unk-1 = (s8) (temp_at_3 >> 0x18);
                var_a2->unk-2 = (s8) (temp_at_3 >> 0x10);
                var_a2->unk-3 = (s8) (temp_at_3 >> 8);
            } while (var_a0_2 >= 4);
        }
    }
}

void __glExpSwapStuffAndCopy1(__GLcontext *gc, void *arg1, s32 arg2, ...) {
    __GLcontext *var_a0;
    __GLcontext *var_a1_2;
    s32 temp_a5;
    s32 var_a0_2;
    s32 var_t0;
    u32 temp_a3;
    u32 temp_at;
    void *(*temp_v1)(__GLcontext *, u32);
    void *var_a1;
    void *var_a2;

    var_a0 = gc;
    var_a0 = gc;
    var_a1 = arg1;
    if (arg2 >= 4) {
        temp_a5 = (s32) (((u32) (arg2 >> 1) >> 0x1E) + arg2) >> 2;
        var_t0 = arg2;
        if (temp_a5 & 1) {
            var_a1 += 4;
            var_a0 += 4;
            temp_at = var_a0->unk-4;
            var_a1->unk-1 = 0xFF;
            var_a1->unk-4 = (s8) temp_at;
            var_a1->unk-2 = (s8) (temp_at >> 0x10);
            var_a1->unk-3 = (s8) (temp_at >> 8);
            var_t0 = arg2 - 4;
        }
        if ((temp_a5 >> 1) != 0) {
            var_a2 = var_a1;
            var_a0_2 = var_t0;
            var_a1_2 = var_a0;
            do {
                temp_v1 = var_a1_2->imports.malloc;
                var_a2 += 8;
                var_a1_2 += 8;
                var_a2->unk-8 = (s8) temp_v1;
                var_a2->unk-7 = (s8) ((u32) temp_v1 >> 8);
                var_a2->unk-6 = (s8) ((u32) temp_v1 >> 0x10);
                var_a2->unk-5 = 0xFF;
                var_a0_2 -= 8;
                temp_a3 = var_a1_2->unk-4;
                var_a2->unk-1 = 0xFF;
                var_a2->unk-4 = (s8) temp_a3;
                var_a2->unk-2 = (s8) (temp_a3 >> 0x10);
                var_a2->unk-3 = (s8) (temp_a3 >> 8);
            } while (var_a0_2 >= 4);
        }
    }
}

void __glExpCopyFromPipe1(__GLcontext *gc, void *arg1, s32 arg2, ...) {
    __GLcontext *var_a0;
    __GLcontext *var_a6;
    s32 temp_a4;
    s32 var_a2;
    s32 var_a5;
    s32 var_t1;
    u32 temp_at_3;
    u32 var_a3;
    u32 var_at;
    void *(*temp_a4_2)(__GLcontext *, u32);
    void *(*temp_at)(__GLcontext *, u32);
    void *(*temp_at_2)(__GLcontext *, u32);
    void *var_a1;
    void *var_a4;

    var_a0 = gc;
    var_a0 = gc;
    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 4) {
        temp_a4 = (s32) (((u32) (var_a2 >> 1) >> 0x1E) + var_a2) >> 2;
        var_t1 = var_a2;
        if (temp_a4 & 1) {
            var_a1 += 4;
            temp_at = var_a0->imports.malloc;
            var_a0 += 4;
            var_a2 -= 4;
            var_a1->unk-1 = (s8) temp_at;
            var_a1->unk-2 = (s8) ((u32) temp_at >> 8);
            var_a1->unk-3 = (s8) ((u32) temp_at >> 0x10);
            var_a1->unk-4 = (s8) ((u32) temp_at >> 0x18);
            var_t1 = var_a2;
        }
        var_a4 = var_a1;
        if ((temp_a4 >> 1) != 0) {
            var_a5 = var_t1;
            var_a6 = var_a0;
            do {
                temp_at_2 = var_a6->imports.malloc;
                var_a4 += 8;
                var_a4->unk-8 = (s8) ((u32) temp_at_2 >> 0x18);
                var_a4->unk-7 = (s8) ((u32) temp_at_2 >> 0x10);
                var_a4->unk-6 = (s8) ((u32) temp_at_2 >> 8);
                var_a4->unk-5 = (s8) temp_at_2;
                var_a6 += 8;
                temp_at_3 = var_a6->unk-4;
                var_a5 -= 8;
                var_a4->unk-1 = (s8) temp_at_3;
                var_a4->unk-2 = (s8) (temp_at_3 >> 8);
                var_a4->unk-3 = (s8) (temp_at_3 >> 0x10);
                var_a4->unk-4 = (s8) (temp_at_3 >> 0x18);
            } while (var_a5 >= 4);
            var_a2 = var_a5;
            var_a0 = var_a6;
            var_a1 = var_a4;
        }
    }
    if (var_a2 > 0) {
        temp_a4_2 = var_a0->imports.malloc;
        if (var_a2 != 3) {
            var_a3 = (u32) temp_a4_2 >> 0x10;
            if (var_a2 != 2) {
                var_at = (u32) temp_a4_2 >> 0x18;
                if (var_a2 != 1) {

                } else {
                    /* Duplicate return node #14. Try simplifying control flow for better match */
                    var_a1->unk0 = (s8) var_at;
                }
            } else {
                goto block_13;
            }
        } else {
            var_a1->unk2 = (s8) ((u32) temp_a4_2 >> 8);
            var_a3 = (u32) temp_a4_2 >> 0x10;
block_13:
            var_a1->unk1 = (s8) var_a3;
            var_at = (u32) temp_a4_2 >> 0x18;
            var_a1->unk0 = (s8) var_at;
        }
    }
}

void __glExpDrawPixelsUnpack4(__GLcontext *gc, void *arg1, ...) {
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp18;
    s64 sp10;
    s32 temp_a2;
    s32 temp_at;
    s64 temp_at_2;
    s64 temp_at_3;
    s64 var_a3_2;
    s64 var_s0;
    s64 var_s1;
    s64 var_s2;
    s64 var_s6;
    u32 var_s7;
    u32 var_s8;
    void (*var_a3)(__GLcontext *, ...);

    sp18 = (s64) gc;
    if (arg1->unk18 != 0x1908) {
        var_a3 = __glExpCopyToPipe4;
    } else {
        var_a3 = __glExpSwapToPipe4;
    }
    sp10 = (s64) var_a3;
    temp_at = arg1->unk10;
    sp78 = (s64) arg1->unkC;
    sp70 = (s64) temp_at;
    sp98 = (s64) arg1->unk14;
    temp_a2 = arg1->unk8;
    sp68 = (s64) arg1->unk4;
    sp90 = (s64) arg1->unk4C;
    if (temp_at >= 0) {
        var_s8 = 0;
        if (sp98 >= 0) {
            goto block_4;
        }
        goto block_22;
    }
    var_s8 = 1;
    sp70 = -sp70;
    if (sp98 < 0) {
block_22:
        spA8 = -1;
        sp68 -= 1;
        sp98 = -sp98;
    } else {
block_4:
        spA8 = 1;
    }
    HQ2_FIFO.pixel_zoom = 0.0f;
    HQ2_FIFO.pixel_zoom = (f32) sp70;
    HQ2_FIFO.pixel_zoom = 1.0f;
    sp88 = (s64) temp_a2;
    var_s7 = arg1->unk0;
    sp80 = (s64) arg1->unk58;
    if (temp_a2 > 0) {
loop_9:
        var_s1 = 0x30;
        if (sp88 < 0x30) {
            var_s1 = sp88;
        }
        HQ2_FIFO.pixel_draw_start.w = 0;
        spA0 = sp78;
        if (var_s8 != 0) {
            var_s7 -= var_s1 * sp70;
        }
        var_a3_2 = sp78;
        var_s2 = sp68;
        var_s6 = sp80;
        if (var_a3_2 > 0) {
loop_16:
            var_s0 = sp98;
            if (sp98 > 0) {
                do {
                    ((? (*)(s64, s64, s64, s64)) sp10)(sp18, var_s6, var_s1, var_a3_2);
                    var_s0 -= 1;
                    var_a3_2 = spA8;
                    HQ2_FIFO.pixel_draw_rect.w = var_s7;
                    HQ2_FIFO.data_port.w = (u32) var_s2;
                    var_s2 += var_a3_2;
                    HQ2_FIFO.data_port.w = (u32) var_s1;
                    HQ2_FIFO.data_port.w = (u32) var_s1;
                    HQ2_FIFO.data_port.w = var_s8;
                    HQ2_FIFO.pixel_draw_end.w = 0;
                } while (var_s0 != 0);
            }
            var_s6 += sp90;
            temp_at_2 = spA0 - 1;
            spA0 = temp_at_2;
            if (temp_at_2 != 0) {
                goto loop_16;
            }
        }
        if (var_s8 == 0) {
            var_s7 += var_s1 * sp70;
        }
        temp_at_3 = sp88 - var_s1;
        sp88 = temp_at_3;
        sp80 += var_s1 * 4;
        if (temp_at_3 > 0) {
            goto loop_9;
        }
    }
}

void __glExpDrawPixelsUnpack1(__GLcontext *gc, void *arg1, ...) {
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_at;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_s0;
    s64 var_s1;
    s64 var_s5;
    s64 var_s6;
    s64 var_s7;
    u32 var_s8;
    void (*var_a3)(__GLcontext *, ...);

    sp0 = (s64) gc;
    if (arg1->unk18 != 0x1908) {
        var_a3 = __glExpCopyToPipe1;
    } else {
        var_a3 = __glExpSwapToPipe1;
    }
    sp8 = (s64) var_a3;
    temp_at = arg1->unk10;
    spA8 = (s64) arg1->unk14;
    temp_a2 = arg1->unk48;
    sp80 = (s64) arg1->unkC;
    sp70 = (s64) temp_at;
    spA0 = (s64) arg1->unk4C;
    temp_a0 = arg1->unk8;
    sp68 = (s64) arg1->unk4;
    if (temp_at >= 0) {
        var_s8 = 0;
        if (spA8 >= 0) {
            goto block_4;
        }
        goto block_24;
    }
    var_s8 = 1;
    sp70 = -sp70;
    if (spA8 < 0) {
block_24:
        spB8 = -1;
        sp68 -= 1;
        spA8 = -spA8;
    } else {
block_4:
        spB8 = 1;
    }
    spC8 = (s64) arg1->unk0;
    sp98 = (s64) temp_a0;
    HQ2_FIFO.pixel_zoom = 0.0f;
    HQ2_FIFO.pixel_zoom = (f32) sp70;
    HQ2_FIFO.pixel_zoom = 1.0f;
    sp90 = (s64) temp_a2;
    sp88 = (s64) arg1->unk58;
    if (temp_a2 > 0) {
        M2C_TRAP_IF(temp_a2 == 0);
        sp78 = (s64) ((s32) (temp_a0 * 0xC0) / temp_a2);
loop_9:
        var_s7 = 0xC0;
        if (sp90 < 0xC0) {
            var_s7 = sp90;
        }
        var_s6 = sp78;
        if (sp98 < sp78) {
            var_s6 = sp98;
        }
        HQ2_FIFO.pixel_draw_start.w = 0;
        spB0 = sp80;
        if (var_s8 != 0) {
            spC8 -= var_s6 * sp70;
        }
        var_s1 = sp68;
        var_s5 = sp88;
        if (sp80 > 0) {
            spC0 = (s64) ((s32) (var_s7 + 3) >> 2);
loop_18:
            var_s0 = spA8;
            if (spA8 > 0) {
                do {
                    ((? (*)(s64, s64, s64)) sp8)(sp0, var_s5, var_s7);
                    var_s0 -= 1;
                    HQ2_FIFO.pixel_draw_rect.w = (u32) spC8;
                    HQ2_FIFO.data_port.w = (u32) var_s1;
                    var_s1 += spB8;
                    HQ2_FIFO.data_port.w = (u32) var_s6;
                    HQ2_FIFO.data_port.w = (u32) spC0;
                    HQ2_FIFO.data_port.w = var_s8;
                    HQ2_FIFO.pixel_draw_end.w = 0;
                } while (var_s0 != 0);
            }
            var_s5 += spA0;
            temp_v0 = spB0 - 1;
            spB0 = temp_v0;
            if (temp_v0 != 0) {
                goto loop_18;
            }
        }
        if (var_s8 == 0) {
            spC8 += var_s6 * sp70;
        }
        temp_v0_2 = sp90 - var_s7;
        sp98 -= var_s6;
        sp90 = temp_v0_2;
        sp88 += var_s7;
        if (temp_v0_2 > 0) {
            goto loop_9;
        }
    }
}

void __glExpDrawPixelsKDMA(__GLcontext *gc, void *arg1, ...) {
    s64 sp70;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    u16 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_a0;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s6;
    s32 temp_t0;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    u16 var_a0;
    u16 var_a0_2;

    var_a4 = arg1->unk10;
    temp_a5 = arg1->unk48;
    temp_a3 = arg1->unkC;
    temp_t0 = arg1->unk8;
    var_a7 = arg1->unk4;
    var_a6 = arg1->unk0;
    temp_s6 = arg1->unk4C;
    sp70 = (s64) gc;
    var_s5 = arg1->unk14;
    HQ2_FIFO.pixel_read_mode.w = 1;
    if ((var_s5 < -1) || (var_a0 = 1, ((var_s5 < 2) == 0))) {
        var_a0 = 0x11;
        sp14 = 0x11;
        sp0 = 0xB8;
    } else {
        sp14 = 1;
        sp0 = 0xB5;
    }
    if (var_a4 < 0) {
        var_a4 = -var_a4;
        var_a0 = (var_a0 | 8) & 0xFFFF;
        sp14 = var_a0;
        var_a6 -= temp_t0 * var_a4;
        if (var_s5 < 0) {
            goto block_27;
        }
    } else if (var_s5 < 0) {
block_27:
        var_s5 = -var_s5;
        sp14 = var_a0 | 4;
        var_a7 -= temp_a3 * var_s5;
    }
    HQ2_FIFO.pixel_zoom = 0.0f;
    HQ2_FIFO.pixel_zoom = (f32) var_a4;
    HQ2_FIFO.pixel_zoom = (f32) var_s5;
    var_a0_2 = sp14;
    if (temp_a5 != temp_s6) {
        sp18 = temp_s6 >> 2;
        var_a0_2 = (var_a0_2 | 2) & 0xFFFF;
        sp14 = var_a0_2;
    } else {
        sp18 = 0;
    }
    var_s1 = temp_a3;
    sp1C = var_s5;
    sp8 = temp_t0;
    sp4 = var_a6;
    var_s4 = 0;
    sp24 = temp_a5 >> 2;
    if (var_a0_2 & 4) {
        var_s4 = 1;
        var_s2 = (temp_a3 * var_s5) + var_a7;
    } else {
        var_s2 = var_a7;
    }
    var_s3 = arg1->unk58;
    if (temp_a3 > 0) {
        temp_lo = 0x20000 / temp_s6;
        M2C_TRAP_IF(temp_s6 == 0);
loop_20:
        var_s0 = var_s1;
        if (var_s1 < temp_lo) {

        } else {
            var_s0 = temp_lo;
        }
        if (var_s4 != 0) {
            var_s2 -= var_s0 * var_s5;
        }
        temp_lo_2 = var_s0 * temp_s6;
        sp10 = var_s0;
        spC = var_s2;
        sp28 = var_s3;
        sp20 = temp_lo_2;
        temp_a0 = sp70->unk7B10;
        __glExpIoctl(temp_a0, temp_a0, 0x3AA2, sp);
        var_s3 += temp_lo_2;
        if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
            if (var_s4 == 0) {
                var_s2 += var_s0 * var_s5;
            }
            var_s1 -= var_s0;
            if (var_s1 > 0) {
                goto loop_20;
            }
        } else {
            sp70->unk14(sp70, &sub_0db30000 - 0x5348);
        }
    }
}

void __glExpReadPixelsPack1(__GLcontext *gc, void *arg1, ...) {
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s32 sp0;
    __GLcontext *var_s0;
    s32 temp_at;
    s32 temp_s3;
    s32 temp_s5;
    s32 temp_s6;
    s32 var_s1;
    s32 var_s7;
    s64 var_a0;
    s64 var_s2;
    void (*var_s4)(__GLcontext *, ...);

    if (arg1->unk18 != 0x1908) {
        var_s4 = __glExpCopyFromPipe1;
    } else {
        var_s4 = __glExpSwapStuffAndCopy1;
    }
    sp80 = (s64) arg1->unk4;
    temp_s5 = arg1->unk4C;
    sp68 = (s64) arg1->unk8;
    temp_s3 = arg1->unk48;
    sp70 = (s64) arg1->unk0;
    var_s7 = arg1->unkC;
    HQ2_FIFO.pixel_read_mode.w = 0;
    HQ2_FIFO.pixel_zoom = 0.0f;
    HQ2_FIFO.pixel_zoom = 1.0f;
    HQ2_FIFO.pixel_zoom = 1.0f;
    var_s1 = arg1->unk58;
    if (var_s7 > 0) {
        temp_s6 = temp_s3 + 3;
        temp_at = temp_s6 >> 2;
        sp60 = (s64) temp_at;
        M2C_TRAP_IF(temp_at == 0);
        sp78 = (s64) (0x578 / temp_at);
loop_7:
        var_a0 = sp78;
        if (var_s7 < sp78) {
            var_a0 = (s64) var_s7;
        }
        var_s2 = var_a0;
        var_s7 -= var_a0;
        HQ2_FIFO.read_x.w = (u32) sp70;
        HQ2_FIFO.data_port.w = (u32) sp80;
        sp80 += var_a0;
        HQ2_FIFO.data_port.w = (u32) sp68;
        HQ2_FIFO.data_port.w = (u32) var_a0;
        HQ2_FIFO.data_port.w = (u32) sp60;
        HQ2_FIFO.data_port.w = 0;
        HQ2_FIFO.data_port.w = 0;
loop_10:
        if (!(HQ2_STATUS_PORT.read_status.w & 1)) {
            sp0 = 0;
            if (sp0 < 0xA) {
                do {
                    sp0 += 1;
                } while (sp0 < 0xA);
            }
            goto loop_10;
        }
        var_s0 = (__GLcontext *)0x12088;
        if (var_a0 > 0) {
            do {
                var_s2 -= 1;
                var_s4(var_s0, var_s0, var_s1, temp_s3);
                var_s1 += temp_s5;
                var_s0 += (temp_s6 >> 2) * 4;
            } while (var_s2 != 0);
        }
        HQ2_STATUS_PORT.read_ack.w = 0;
        HQ2_FIFO.read_done.w = 0;
        if (var_s7 > 0) {
            goto loop_7;
        }
    }
}

void __glExpReadPixelsKDMA(__GLcontext *gc, void *arg1, ...) {
    s64 sp48;
    u32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    u16 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_a0;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s6;
    s32 var_s0;
    s32 var_s1;
    s32 var_s3;
    u32 var_a1;
    u32 var_s2;

    sp48 = (s64) gc;
    temp_a4 = arg1->unk48;
    temp_a7 = arg1->unkC;
    temp_s6 = arg1->unk4C;
    HQ2_FIFO.pixel_read_mode.w = 1;
    sp14 = 0;
    sp0 = 0xAC;
    HQ2_FIFO.pixel_zoom = 0.0f;
    HQ2_FIFO.pixel_zoom = 1.0f;
    HQ2_FIFO.pixel_zoom = 1.0f;
    if (temp_a4 != temp_s6) {
        sp18 = temp_s6 >> 2;
        sp14 |= 2;
    } else {
        sp18 = 0;
    }
    var_s1 = arg1->unk4;
    var_s0 = temp_a7;
    sp1C = 1;
    sp8 = arg1->unk8;
    sp4 = arg1->unk0;
    sp24 = temp_a4 >> 2;
    var_s2 = arg1->unk58;
    if (temp_a7 > 0) {
        temp_lo = 0x20000 / temp_s6;
        M2C_TRAP_IF(temp_s6 == 0);
loop_9:
        var_s3 = var_s0;
        if (var_s0 < temp_lo) {

        } else {
            var_s3 = temp_lo;
        }
        temp_lo_2 = var_s3 * temp_s6;
        sp10 = var_s3;
        spC = var_s1;
        sp28 = var_s2;
        sp20 = temp_lo_2;
        temp_a0 = sp48->unk7B10;
        __glExpIoctl(temp_a0, temp_a0, 0x3AA2, sp);
        var_s1 += var_s3;
        if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
            var_s0 -= var_s3;
            if (arg1->unk18 == 0x8000) {
                var_a1 = sp28;
                if ((arg1->unk1C == 0x1401) && (var_a1 < (u32) (sp20 + var_a1))) {
                    do {
                        *var_a1 = 0xFF;
                        var_a1 += 4;
                    } while (var_a1 < (u32) (sp20 + sp28));
                }
            }
            var_s2 += temp_lo_2;
            if (var_s0 > 0) {
                goto loop_9;
            }
        } else {
            sp48->unk14(sp48, &sub_0db30000 - 0x5328);
        }
    }
}

void __glExpReadPixelsKDMARGBA(__GLcontext *gc, void *arg1, ...) {
    s64 sp98;
    s64 sp38;
    s64 sp30;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a3;
    __GLcontext *var_s4;
    s32 temp_lo;
    s32 temp_s1;
    s32 temp_s2;
    s32 var_s5;
    s32 var_s7;
    s32 var_s8;
    s64 var_a1;
    s64 var_s0;
    s64 var_s3;

    temp_s2 = arg1->unk4C;
    var_s7 = arg1->unkC;
    var_s8 = arg1->unk4;
    sp38 = (s64) gc;
    temp_s1 = arg1->unk48;
    HQ2_FIFO.pixel_read_mode.w = 1;
    HQ2_FIFO.pixel_zoom = 0.0f;
    HQ2_FIFO.pixel_zoom = 1.0f;
    HQ2_FIFO.pixel_zoom = 1.0f;
    sp30 = (s64) arg1->unk58;
    if (var_s7 > 0) {
        M2C_TRAP_IF(temp_s1 == 0);
        sp98 = (s64) (0x8000 / temp_s1);
loop_8:
        var_s3 = sp98;
        if (var_s7 < sp98) {
            var_s3 = (s64) var_s7;
        }
        temp_lo = var_s3 * temp_s1;
        temp_a3 = sp38->unk7C8C;
        temp_a0 = sp38->unk7B10;
        __glExpIoctl(temp_a0, temp_a0, 0x3AA2, sp, temp_a3, var_s8, (s32) var_s3, temp_lo, temp_a3);
        if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
            var_s7 -= var_s3;
            temp_a0_2 = sp38->unk7C8C;
            if (temp_s1 != temp_s2) {
                var_s5 = 0;
                var_s4 = temp_a0_2;
                var_s0 = sp30;
                if (var_s3 > 0) {
                    var_a1 = var_s0;
                    do {
                        var_s5 += 1;
                        __glExpSwapStuffAndCopy4(var_s4, var_s4, var_a1, temp_s1 >> 2);
                        var_s4 += temp_s1;
                        var_s0 += temp_s2;
                        var_a1 = var_s0;
                    } while (var_s3 != var_s5);
                }
            } else {
                __glExpSwapStuffAndCopy4(temp_a0_2, temp_a0_2, sp30, temp_lo >> 2);
            }
            var_s8 += var_s3;
            sp30 += var_s3 * temp_s2;
            if (var_s7 > 0) {
                goto loop_8;
            }
        } else {
            sp38->unk14(sp38, &sub_0db30000 - 0x5328);
        }
    }
}

void __glExpGetOrigin(__GLcontext *gc, u32 *arg1, u32 *arg2, ...) {
    s32 sp0;

    HQ2_FIFO.get_origin.w = 0;
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
    *arg1 = HQ2_READ_FIFO.data[0].w;
    HQ2_STATUS_PORT.read_ack.w = 0;
    *arg2 = HQ2_READ_FIFO.data[1].w;
    HQ2_FIFO.read_done.w = 0;
}

void __glExpClipPixels(__GLcontext *gc, void *arg1, ...) {
    s32 sp4;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_lo;
    s32 temp_lo_10;
    s32 temp_lo_11;
    s32 temp_lo_12;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_lo_5;
    s32 temp_lo_6;
    s32 temp_lo_7;
    s32 temp_lo_8;
    s32 temp_lo_9;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_a7;
    s32 var_t0;
    s32 var_t2;

    __glExpGetOrigin(gc, sp, &sp4);
    if (sp0 > 0) {
        var_a5 = sp0;
    } else {
        var_a5 = 0;
    }
    var_a7 = sp4;
    if (sp4 <= 0) {
        var_a7 = 0;
    }
    var_a6 = 0x4FF;
    if (sp0 < -0x301) {
        var_a6 = sp0 + 0x800;
    }
    var_t0 = sp4 + 0x800;
    if (sp4 >= -0x401) {
        var_t0 = 0x3FF;
    }
    var_a2 = arg1->unk8;
    if (arg1->unk28 <= 0) {
        arg1->unk28 = var_a2;
    }
    temp_a3 = arg1->unk10;
    temp_t3 = arg1->unk0;
    temp_t1 = temp_t3 + sp0;
    if (temp_a3 >= 0) {
        var_a4 = temp_t1;
        if (temp_t1 < var_a5) {
            temp_lo = (s32) (var_a5 - var_a4) / temp_a3;
            M2C_TRAP_IF(temp_a3 == 0);
            if (temp_lo >= var_a2) {
                return;
            }
            var_a2 -= temp_lo;
            temp_lo_2 = temp_a3 * temp_lo;
            arg1->unk8 = var_a2;
            arg1->unk34 = (s32) (arg1->unk34 + temp_lo);
            var_a4 += temp_lo_2;
            arg1->unk0 = (s32) (temp_t3 + temp_lo_2);
            goto block_13;
        }
block_13:
        temp_t2 = ((var_a2 * temp_a3) + var_a4) - 1;
        if (var_a6 < temp_t2) {
            temp_lo_3 = (s32) (temp_t2 - var_a6) / temp_a3;
            M2C_TRAP_IF(temp_a3 == 0);
            if (temp_lo_3 >= var_a2) {
                return;
            }
            arg1->unk8 = (s32) (var_a2 - temp_lo_3);
            goto block_17;
        }
        goto block_17;
    }
    var_t2 = temp_t1 - 1;
    if (var_a6 < var_t2) {
        temp_at = -temp_a3;
        temp_lo_4 = (s32) (var_t2 - var_a6) / temp_at;
        M2C_TRAP_IF(temp_at == 0);
        if (temp_lo_4 >= var_a2) {
            return;
        }
        temp_lo_5 = temp_a3 * temp_lo_4;
        var_a2 -= temp_lo_4;
        arg1->unk8 = var_a2;
        arg1->unk34 = (s32) (arg1->unk34 + temp_lo_4);
        var_t2 += temp_lo_5;
        arg1->unk0 = (s32) (temp_t3 + temp_lo_5);
        goto block_34;
    }
block_34:
    temp_a4 = (var_a2 * temp_a3) + var_t2 + 1;
    if (temp_a4 < var_a5) {
        temp_at_2 = -temp_a3;
        temp_lo_6 = (s32) (var_a5 - temp_a4) / temp_at_2;
        M2C_TRAP_IF(temp_at_2 == 0);
        if (temp_lo_6 >= var_a2) {
            return;
        }
        arg1->unk8 = (s32) (var_a2 - temp_lo_6);
        goto block_17;
    }
block_17:
    temp_a6 = arg1->unk4;
    temp_a3_2 = arg1->unk14;
    temp_a1 = sp4 + temp_a6;
    if (temp_a3_2 >= 0) {
        var_a4_2 = temp_a1;
        var_a2_2 = arg1->unkC;
        if (temp_a1 < var_a7) {
            temp_lo_7 = (s32) (var_a7 - var_a4_2) / temp_a3_2;
            M2C_TRAP_IF(temp_a3_2 == 0);
            if (temp_lo_7 >= var_a2_2) {
                return;
            }
            temp_lo_8 = temp_a3_2 * temp_lo_7;
            var_a2_2 -= temp_lo_7;
            arg1->unkC = var_a2_2;
            arg1->unk30 = (s32) (arg1->unk30 + temp_lo_7);
            var_a4_2 += temp_lo_8;
            arg1->unk4 = (s32) (temp_a6 + temp_lo_8);
            goto block_22;
        }
block_22:
        temp_a5 = ((temp_a3_2 * var_a2_2) + var_a4_2) - 1;
        if (var_t0 < temp_a5) {
            temp_lo_9 = (s32) (temp_a5 - var_t0) / temp_a3_2;
            M2C_TRAP_IF(temp_a3_2 == 0);
            if (temp_lo_9 >= var_a2_2) {
                return;
            }
            arg1->unkC = (s32) (var_a2_2 - temp_lo_9);
        }
    } else {
        var_a5_2 = temp_a1 - 1;
        var_a2_3 = arg1->unkC;
        if (var_t0 < var_a5_2) {
            temp_at_3 = -temp_a3_2;
            temp_lo_10 = (s32) (var_a5_2 - var_t0) / temp_at_3;
            M2C_TRAP_IF(temp_at_3 == 0);
            if (temp_lo_10 >= var_a2_3) {
                return;
            }
            temp_lo_11 = temp_a3_2 * temp_lo_10;
            var_a2_3 -= temp_lo_10;
            arg1->unkC = var_a2_3;
            arg1->unk30 = (s32) (arg1->unk30 + temp_lo_10);
            var_a5_2 += temp_lo_11;
            arg1->unk4 = (s32) (temp_a6 + temp_lo_11);
            goto block_41;
        }
block_41:
        temp_a4_2 = (temp_a3_2 * var_a2_3) + var_a5_2 + 1;
        if (temp_a4_2 < var_a7) {
            temp_at_4 = -temp_a3_2;
            temp_lo_12 = (s32) (var_a7 - temp_a4_2) / temp_at_4;
            M2C_TRAP_IF(temp_at_4 == 0);
            if (temp_lo_12 >= var_a2_3) {
                return;
            }
            arg1->unkC = (s32) (var_a2_3 - temp_lo_12);
        }
    }
}

void __glExpInitPackAndUnpack(__GLcontext *gc, void *arg1, ...) {
    s64 sp30;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_at;
    s32 temp_f0;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a1;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s1;
    s32 var_t0;
    s32 var_t1;
    s32 var_t2;

    __glExpClipPixels(gc);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        temp_s3 = arg1->unk34;
        temp_s2 = arg1->unk30;
        temp_s4 = arg1->unk2C;
        temp_v0 = arg1->unk28;
        temp_s5 = arg1->unk8;
        if (temp_v0 > 0) {
            var_s1 = temp_v0;
        } else {
            var_s1 = temp_s5;
        }
        var_a7 = sp0;
        temp_a0 = arg1->unk1C;
        if (temp_a0 == 0x1A00) {
            temp_t2 = temp_s4 * 8;
            var_t0 = sp4;
            var_a5 = temp_s5;
            M2C_TRAP_IF(temp_t2 == 0);
            temp_lo = ((s32) ((temp_t2 + var_s1) - 1) / temp_t2) * temp_s4;
            var_t2 = 0;
            HQ2_FIFO.pixel_read_setup_a.w = 3;
            HQ2_FIFO.pixel_read_setup_b.w = 0;
            temp_t1 = (temp_s3 & 7) + temp_s5 + 7;
            var_a6 = (s32) (((u32) (temp_t1 >> 2) >> 0x1D) + temp_t1) >> 3;
            var_a4 = arg1->unk20;
            var_t1 = temp_lo * 8;
            temp_a2 = var_t1 + 7;
            var_a1 = (s32) (((u32) (temp_a2 >> 2) >> 0x1D) + temp_a2) >> 3;
            if (temp_s2 != 0) {
                goto block_5;
            }
            if (temp_s3 != 0) {
block_5:
                temp_t2_2 = (temp_lo * temp_s2 * 8) + temp_s3;
                temp_at = (s32) (((u32) (temp_t2_2 >> 2) >> 0x1D) + temp_t2_2) >> 3;
                var_a4 += temp_at;
                var_t2 = temp_t2_2 - (temp_at * 8);
            }
            var_a0 = sp8;
        } else {
            __glBytesPerElement(temp_a0);
            temp_f0 = (s32) M2C_ERROR(/* Read from unset register $f0 */);
            sp30 = (s64) temp_f0;
            __glElementsPerGroup(arg1->unk18);
            var_t0 = M2C_ERROR(/* Read from unset register $v0 */);
            var_a0 = (s32) sp30;
            var_a7 = M2C_ERROR(/* Read from unset register $v0 */) * temp_f0;
            switch (var_a7) {                       /* irregular */
            case 1:
                HQ2_FIFO.pixel_read_setup_a.w = 2;
                break;
            case 2:
                HQ2_FIFO.pixel_read_setup_a.w = 1;
                break;
            case 4:
                HQ2_FIFO.pixel_read_setup_a.w = 0;
                break;
            }
            var_a6 = temp_s5 * var_a7;
            temp_lo_2 = temp_f0 * var_t0 * var_s1;
            var_t1 = 0;
            var_a5 = 0;
            HQ2_FIFO.pixel_read_setup_b.w = 0;
            var_a1 = temp_lo_2;
            if (temp_f0 < temp_s4) {
                M2C_TRAP_IF(temp_s4 == 0);
                M2C_TRAP_IF(temp_f0 == 0);
                var_a1 = (temp_s4 / temp_f0) * temp_f0 * ((s32) ((temp_lo_2 + temp_s4) - 1) / temp_s4);
            }
            var_t2 = 0;
            var_a4 = arg1->unk20;
            if (temp_s2 != 0) {
                goto block_13;
            }
            if (temp_s3 != 0) {
block_13:
                var_a4 += (temp_s2 * var_a1) + (temp_s3 * var_a7);
            }
        }
        if ((var_a1 < var_a6) || (var_a6 & 3)) {
            goto block_17;
        }
        if (!(var_a1 & 3) && !(var_a4 & 3)) {
            arg1->unk60 = 0;
        } else {
block_17:
            arg1->unk60 = 1;
        }
        if (var_t1 >= var_a5) {
            if (!(var_a5 & 0x1F) && !(var_t1 & 0x1F)) {
                if (var_t2 > 0) {
                    goto block_22;
                }
                arg1->unk61 = 0;
            } else {
                goto block_23;
            }
        } else {
block_22:
block_23:
            arg1->unk61 = 1;
        }
        arg1->unk5C = var_t2;
        arg1->unk58 = var_a4;
        arg1->unk4C = var_a1;
        arg1->unk54 = var_t1;
        arg1->unk48 = var_a6;
        arg1->unk50 = var_a5;
        arg1->unk44 = var_s1;
        arg1->unk40 = var_a7;
        arg1->unk3C = var_t0;
        arg1->unk38 = var_a0;
    }
}

void __glExpFastDrawPixels(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, ...) {
    s64 sp68;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    u8 sp25;
    u8 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_f0;
    s32 var_a2;

    var_a2 = arg2;
    temp_f0 = (s32) (gc->constants.half + (gc->state.current.rasterPos.window.x - gc->constants.fviewportXAdjust));
    sp0 = temp_f0;
    spC = var_a2;
    sp8 = arg1;
    sp4 = (s32) (gc->constants.half + (gc->state.current.rasterPos.window.y - gc->constants.fviewportYAdjust));
    sp10 = (s32) gc->state.pixel.unk68;
    sp20 = arg5;
    sp1C = arg4;
    sp18 = arg3;
    sp14 = (s32) gc->state.pixel.unk6C;
    if (arg6 != 0) {
        sp68 = (s64) arg3;
        sp34 = 0;
        sp30 = 0;
        sp28 = arg1;
        sp25 = 0;
        sp24 = 0;
        sp2C = 1;
    } else {
        sp24 = gc->state.pixel.unk1EC;
        sp25 = gc->state.pixel.unk1ED;
        sp28 = gc->state.pixel.unk1F0;
        sp2C = gc->state.pixel.unk1FC;
        var_a2 = gc->state.pixel.unk1F4;
        sp30 = var_a2;
        sp68 = (s64) arg3;
        sp34 = gc->state.pixel.unk1F8;
    }
    __glExpInitPackAndUnpack(gc, gc, sp, var_a2, temp_f0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        if (sp60 != 0) {

        } else if (sp61 == 0) {
            if (sp68 != 0x1908) {

            }
        }
        __glExpDrawPixelsUnpack1(gc, gc, sp);
    }
}

void __glExpFastReadPixels(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, ...) {
    s64 spA0;
    s64 sp68;
    s32 sp34;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3_2;
    s32 temp_lo;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a2_3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s64 var_a0_4;
    s64 var_a2;
    s64 var_a2_2;
    u8 temp_a2;
    u8 temp_a3;
    void (*var_a3)(__GLcontext *, ...);

    temp_a3 = gc->state.pixel.unk1C8;
    temp_a2 = gc->state.pixel.unk1C9;
    sp68 = (s64) arg7;
    sp34 = gc->state.pixel.unk1D4;
    __glExpInitPackAndUnpack(gc, gc, sp, temp_a2, temp_a3, 1, arg1, arg2, arg3, arg4, 1, 1, arg5, arg6, arg7, temp_a3, temp_a2, gc->state.pixel.unk1CC, gc->state.pixel.unk1D8, gc->state.pixel.unk1D0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        var_a3 = __glExpReadPixelsPack1;
        if (sp60 == 0) {
            var_a3 = __glExpReadPixelsPack1;
            if (sp61 == 0) {
                if (arg5 != 0x1908) {
                    var_a3 = __glExpReadPixelsKDMA;
                } else {
                    var_a3 = __glExpReadPixelsKDMARGBA;
                }
            }
        }
        if (arg5 != 0x1902) {
            spA0 = (s64) var_a3;
            __glExpSetReadBuffer(gc, gc);
        } else {
            HQ2_FIFO.buffer_mode.w = 2;
            HQ2_FIFO.buffer_mode.w = 0;
            HQ2_FIFO.pixel_read_setup_a.w = 0;
            HQ2_FIFO.pixel_read_setup_b.w = 0;
        }
        var_a3(gc, gc, sp);
        var_a1 = 0x1902;
        if (arg5 == 0x1902) {
            var_a2 = sp68;
            temp_a3_2 = 0x20 - gc->depthBuffer.buf.resize;
            if (sp60 != 0) {
                goto block_7;
            }
            if (sp61 == 0) {
                temp_lo = arg3 * arg4;
                var_a0 = temp_lo;
                if (temp_lo != 0) {
                    var_a4 = temp_lo & 3;
                    if (var_a4 != 0) {
                        do {
                            var_a0 -= 1;
                            temp_a1 = *var_a2;
                            var_a2 += 4;
                            var_a4 -= 1;
                            var_a1 = temp_a1 << temp_a3_2;
                            var_a2->unk-4 = var_a1;
                        } while (var_a4 != 0);
                    }
                    if ((temp_lo >> 2) != 0) {
                        var_a0_2 = var_a0;
                        var_a2_2 = var_a2;
                        do {
                            var_a2_2->unk0 = (s32) (var_a2_2->unk0 << temp_a3_2);
                            var_a1 = var_a2_2->unk4 << temp_a3_2;
                            var_a2_2->unk4 = var_a1;
                            var_a2_2->unk8 = (s32) (var_a2_2->unk8 << temp_a3_2);
                            temp_v0 = var_a2_2->unkC;
                            var_a2_2 += 0x10;
                            var_a0_2 -= 4;
                            var_a2_2->unk-4 = (s32) (temp_v0 << temp_a3_2);
                        } while (var_a0_2 != 0);
                    }
                }
            } else {
block_7:
                var_a5 = 0;
                if (arg4 > 0) {
loop_23:
                    var_a0_3 = 0;
                    if (arg3 > 0) {
                        var_a4_2 = arg3 & 3;
                        if (var_a4_2 != 0) {
                            do {
                                var_a0_3 += 1;
                                temp_v0_2 = *var_a2;
                                var_a2 += 4;
                                var_a4_2 -= 1;
                                var_a2->unk-4 = (s32) (temp_v0_2 << temp_a3_2);
                            } while (var_a4_2 != 0);
                        }
                        if ((arg3 >> 2) != 0) {
                            var_a2_3 = var_a0_3;
                            var_a0_4 = var_a2;
                            do {
                                var_a0_4->unk0 = (s32) (var_a0_4->unk0 << temp_a3_2);
                                var_a0_4->unk4 = (s32) (var_a0_4->unk4 << temp_a3_2);
                                var_a0_4->unk8 = (s32) (var_a0_4->unk8 << temp_a3_2);
                                temp_a1_2 = var_a0_4->unkC;
                                var_a0_4 += 0x10;
                                var_a2_3 += 4;
                                var_a0_4->unk-4 = (s32) (temp_a1_2 << temp_a3_2);
                            } while (arg3 != var_a2_3);
                            var_a2 = var_a0_4;
                        }
                    }
                    var_a5 += 1;
                    var_a1 = sp34 * 4;
                    var_a2 += var_a1;
                    if (arg4 != var_a5) {
                        goto loop_23;
                    }
                }
            }
        }
        __glExpSetReadSource(gc, gc, var_a1);
    }
}

void __glExpFastCopyPixels(__GLcontext *gc, u32 arg1, s64 arg2, u32 arg3, u32 arg4, ...) {
    s64 sp30;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;

    sp30 = arg2;
    __glExpSetReadBuffer(gc);
    HQ2_FIFO.pixel_read_setup_a.w = 0;
    var_a2 = (s32) gc->state.pixel.unk6C;
    var_a6 = (s32) gc->state.pixel.unk68;
    var_a3 = (s32) (gc->state.current.rasterPos.window.y - gc->constants.fviewportYAdjust);
    var_a4 = (s32) (gc->state.current.rasterPos.window.x - gc->constants.fviewportXAdjust);
    HQ2_FIFO.pixel_read_setup_b.w = 0;
    if (var_a6 < 0) {
        var_a6 = -var_a6;
        var_a4 -= arg3 * var_a6;
    }
    if (var_a2 < 0) {
        var_a2 = -var_a2;
        var_a3 -= arg4 * var_a2;
    }
    HQ2_FIFO.pixel_zoom = 0.0f;
    HQ2_FIFO.pixel_zoom = (f32) var_a6;
    HQ2_FIFO.pixel_zoom = (f32) var_a2;
    HQ2_FIFO.copy_pixels.w = 0;
    HQ2_FIFO.data_port.w = (u32) sp30;
    HQ2_FIFO.data_port.w = (u32) var_a3;
    HQ2_FIFO.data_port.w = arg4;
    HQ2_FIFO.data_port.w = arg1;
    HQ2_FIFO.data_port.w = (u32) var_a4;
    HQ2_FIFO.data_port.w = arg3;
    __glExpSetReadSource(gc, gc, sp30, 0x4277C, var_a3, var_a4, 0x422E8, 0x422EC);
}

void __glExpPickDrawPixels(__GLcontext *gc, s32 arg3, s32 arg4, s32 arg6, u8 arg7, ...) {
    u8 var_a7;
    void (*var_t0)(u8);

    var_a7 = arg7;
    var_t0 = __glSlowPickDrawPixels;
    if (arg4 != 0x1401) {
        if (arg4 != 0x1403) {
            var_a7 = 0x1900;
            if (arg4 == 0x1405) {
                if ((arg3 == 0x1900) && (gc->pixel.modifyCI == 0)) {
                    var_t0 = (void (*)(u8)) __glExpFastDrawPixels;
                }
            }
        } else if ((arg3 == 0x1900) && (gc->pixel.modifyCI == 0)) {
            var_t0 = (void (*)(u8)) __glExpFastDrawPixels;
        }
    } else if ((arg3 != 0x1908) && (var_a7 = 0x1900, (arg3 != 0x8000))) {
        if ((arg3 == 0x1900) && (gc->pixel.modifyCI == 0)) {
            var_t0 = (void (*)(u8)) __glExpFastDrawPixels;
        }
    } else if (gc->pixel.modifyRGBA == 0) {
        var_t0 = (void (*)(u8)) __glExpFastDrawPixels;
    }
    if (arg6 == 0) {
        var_a7 = gc->state.pixel.unk1EC;
        if ((var_a7 != 0) && (arg4 != 0x1401) && (arg4 != 0x1400)) {
            var_t0 = __glSlowPickDrawPixels;
        }
    }
    var_t0(var_a7);
}

void __glExpPickReadPixels(__GLcontext *gc, s32 arg5, s32 arg6, ...) {
    void (*var_t1)(__GLcontext *, ...);

    var_t1 = __glSlowPickReadPixels;
    switch (arg6) {                                 /* switch 1; irregular */
    case 0x1401:                                    /* switch 1 */
        switch (arg5) {                             /* switch 2; irregular */
        case 0x1900:                                /* switch 2 */
            if (gc->pixel.modifyCI == 0) {
                var_t1 = __glExpFastReadPixels;
            }
            break;
        case 0x1908:                                /* switch 2 */
        case 0x8000:                                /* switch 2 */
            if ((gc->pixel.modifyRGBA == 0) && (gc->modes.rgbMode != 0)) {
                var_t1 = __glExpFastReadPixels;
            }
            break;
        }
        break;
    case 0x1403:                                    /* switch 1 */
        if ((arg5 == 0x1900) && (gc->pixel.modifyCI == 0)) {
            var_t1 = __glExpFastReadPixels;
        }
        break;
    case 0x1405:                                    /* switch 1 */
        if (arg5 != 0x1900) {
            if ((arg5 == 0x1902) && (gc->pixel.modifyDepth == 0) && (gc->haveZ != 0)) {
                var_t1 = __glExpFastReadPixels;
            }
        } else if (gc->pixel.modifyCI == 0) {
            var_t1 = __glExpFastReadPixels;
        }
        break;
    }
    if ((gc->state.pixel.unk1EC != 0) && (arg6 != 0x1401) && (arg6 != 0x1400)) {
        var_t1 = __glSlowPickReadPixels;
    }
    var_t1(gc);
}

void __glExpPickCopyPixels(__GLcontext *gc, s32 arg5, u8 arg6, ...) {
    u8 var_a6;
    void (*var_a7)(__GLcontext *, ...);

    var_a6 = arg6;
    var_a7 = __glSlowPickCopyPixels;
    if (arg5 != 0x1908) {
        if (arg5 == 0x1900) {
            var_a6 = gc->pixel.modifyCI;
            if (var_a6 == 0) {
                var_a7 = __glExpFastCopyPixels;
            }
        }
    } else if (gc->pixel.modifyRGBA == 0) {
        var_a7 = __glExpFastCopyPixels;
    }
    if (((f64) gc->state.pixel.unk68 < GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) || ((f64) gc->state.pixel.unk6C < GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) || ((var_a6 = (u8) gc->state.pixel.unk214, (var_a6 != gc->state.raster.drawBuffer)) && (gc->state.enables.general & 6))) {
        var_a7 = __glSlowPickCopyPixels;
    }
    var_a7(gc, var_a6, var_a7);
}

void __glExpFreePixelState(__GLcontext *gc, ...) {
    s64 sp10;
    s64 var_ra;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;

    var_ra = saved_reg_ra;
    temp_a1 = gc->unk7C8C;
    if (temp_a1 != NULL) {
        gc->imports.free(gc, temp_a1);
        var_ra = sp10;
    }
    temp_a1_2 = gc->unk7C80;
    if (temp_a1_2 != NULL) {
        sp10 = var_ra;
        gc->imports.free(gc, temp_a1_2);
    }
    temp_a1_3 = gc->unk7C84;
    if (temp_a1_3 != NULL) {
        sp10 = var_ra;
        gc->imports.free(gc, temp_a1_3);
    }
    temp_a1_4 = gc->unk7C88;
    if (temp_a1_4 == NULL) {
        return;
    }
    sp10 = var_ra;
    gc->imports.free(gc, temp_a1_4);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void __glExpInitPixelState(__GLcontext *gc, ...) {
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f8_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_at;
    s32 temp_ra;
    s32 var_a3;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a0;
    s64 var_a4;
    void *var_v0;

    gc->unk7C8C = gc->imports.malloc(gc, 0x8000U);
    if (gc->modes.rgbMode != 0) {
        temp_v0 = gc->imports.calloc(gc, 0x100U, 4U);
        unksp8 = temp_v0;
        gc->unk7C80 = (s32) temp_v0;
        temp_v0_2 = gc->imports.calloc(gc, 0x100U, 4U);
        unksp10 = temp_v0_2;
        gc->unk7C84 = (s32) temp_v0_2;
        var_v0 = gc->imports.calloc(gc, 0x100U, 4U);
        temp_a5 = gc->modes.blueBits;
        temp_f8 = gc->constants.one;
        temp_f6 = temp_f8 / (f32) ((1 << temp_a5) - 1);
        temp_a7 = gc->modes.greenBits;
        temp_f7 = temp_f8 / (f32) ((1 << temp_a7) - 1);
        var_a3 = 0;
        var_a4 = unksp10;
        temp_ra = gc->modes.redBits;
        var_a0 = unksp8;
        gc->unk7C88 = var_v0;
        temp_a5_2 = 8 - temp_a5;
        temp_a7_2 = 8 - temp_a7;
        temp_a6 = 8 - temp_ra;
        temp_f8_2 = temp_f8 / (f32) ((1 << temp_ra) - 1);
        do {
            temp_at = var_a3 + 1;
            temp_f1 = (f32) (temp_at >> temp_a7_2) * temp_f7;
            temp_f3 = (f32) (var_a3 >> temp_a5_2) * temp_f6;
            temp_f4 = (f32) (var_a3 >> temp_a7_2) * temp_f7;
            temp_f0 = (f32) (temp_at >> temp_a5_2);
            temp_f5 = (f32) (var_a3 >> temp_a6) * temp_f8_2;
            var_a0 += 8;
            var_a4 += 8;
            temp_f2 = (f32) (temp_at >> temp_a6) * temp_f8_2;
            var_v0 += 8;
            var_a3 = temp_at + 1;
            var_a0->unk-8 = temp_f5;
            var_a4->unk-8 = temp_f4;
            var_v0->unk-8 = temp_f3;
            var_a0->unk-4 = temp_f2;
            var_a4->unk-4 = temp_f1;
            var_v0->unk-4 = (f32) (temp_f0 * temp_f6);
        } while (var_a3 != 0x100);
    }
}
