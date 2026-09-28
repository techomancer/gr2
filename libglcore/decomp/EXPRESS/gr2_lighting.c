typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ __GLattribute state;
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[3];                    /* maybe part of yInverted[4]? */
    /* 0x0CD0 */ __GLcontextConstants constants;
    /* 0x0DB4 */ char padDB4[0x203C];               /* maybe part of constants[0x25]? */
    /* 0x2DF0 */ u32 validateMask;
    /* 0x2DF4 */ u32 dirtyMask;
    /* 0x2DF8 */ __GLcolorBuffer *drawBuffer;
    /* 0x2DFC */ __GLcolorBuffer *readBuffer;
    /* 0x2E00 */ char pad2E00[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2E10 */ void (*validate)(__GLcontext *);
    /* 0x2E14 */ char pad2E14[0x1C];                /* maybe part of validate[8]? */
    /* 0x2E30 */ __GLprocs procs;
    /* 0x3184 */ __GLattributeMachine attributes;
    /* 0x318C */ char pad318C[0x3C3C];              /* maybe part of attributes[0x788]? */
    /* 0x6DC8 */ s32 unk6DC8;                       /* inferred */
    /* 0x6DCC */ char pad6DCC[0x610];               /* maybe part of unk6DC8[0x185]? */
    /* 0x73DC */ __GLtransformMachine transform;
    /* 0x7494 */ __GLlineMachine line;
    /* 0x7538 */ __GLpolygonMachine polygon;
    /* 0x7740 */ __GLpixelMachine pixel;
    /* 0x77C0 */ __GLbufferMachine buffers;
    /* 0x77C4 */ __GLcolorBuffer *front;
    /* 0x77C8 */ __GLcolorBuffer *back;
    /* 0x77CC */ __GLcolorBuffer frontBuffer;
    /* 0x78A8 */ __GLcolorBuffer backBuffer;
    /* 0x7984 */ __GLcolorBuffer *auxBuffer;
    /* 0x7988 */ __GLstencilBuffer stencilBuffer;
    /* 0x7A00 */ __GLdepthBuffer depthBuffer;
    /* 0x7A84 */ __GLaccumBuffer accumBuffer;
    /* 0x7AF4 */ char pad7AF4[0x1C];
    /* 0x7B10 */ s32 fd;
    /* 0x7B14 */ s32 boardIndex;
    /* 0x7B18 */ s32 zDepth;
    /* 0x7B1C */ s32 stencilDepth;
    /* 0x7B20 */ s8 rendererString[0x28];
    /* 0x7B48 */ u32 swapInterval;
    /* 0x7B4C */ u8 hwFlags;
    /* 0x7B4D */ u8 haveZ;
    /* 0x7B4E */ u8 haveStencil;
    /* 0x7B4F */ u8 fastMode;
    /* 0x7B50 */ void (*primitiveProcs[0xA])(__GLcontext *);
} __GLcontext;                                      /* size = 0x7B78 */

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
    /* 0x2338 */ char pad2338[0x18];                /* maybe part of get_origin[7]? */
    /* 0x2350 */ f32 unk2350;                       /* inferred */
    /* 0x2354 */ char pad2354[0x40];                /* maybe part of unk2350[0x11]? */
    /* 0x2394 */ f32 unk2394;                       /* inferred */
    /* 0x2398 */ gr2_reg32_t context_flush;
    /* 0x239C */ char pad239C[8];                   /* maybe part of context_flush[3]? */
    /* 0x23A4 */ gr2_reg32_t get_color;
    /* 0x23A8 */ gr2_reg32_t get_normal;
    /* 0x23AC */ char pad23AC[0x58];                /* maybe part of get_normal[0x17]? */
    /* 0x2404 */ f32 unk2404;                       /* inferred */
    /* 0x2408 */ f32 unk2408;                       /* inferred */
    /* 0x240C */ char pad240C[4];
    /* 0x2410 */ f32 clear_color;
    /* 0x2414 */ gr2_reg32_t pad2414;
    /* 0x2418 */ gr2_reg32_t pad2418;
    /* 0x241C */ gr2_reg32_t get_rasterpos;
    /* 0x2420 */ char pad2420[4];
    /* 0x2424 */ f32 unk2424;                       /* inferred */
    /* 0x2428 */ gr2_reg32_t buffer_mode;
    /* 0x242C */ gr2_reg32_t color_writemask;
    /* 0x2430 */ char pad2430[8];                   /* maybe part of color_writemask[3]? */
    /* 0x2438 */ f32 unk2438;                       /* inferred */
    /* 0x243C */ char pad243C[0x1F4];               /* maybe part of unk2438[0x7E]? */
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

f32 powf(f32, f32, f64, ?);                         /* extern */
? sub_0da60000(void *, __GLcoord *, ?, ?, ?, ?);    /* extern */
extern ? sub_0db30000;

void __glExpInitLUTCache(__GLcontext *gc, ...) {
    void *temp_v0;

    temp_v0 = gc->imports.malloc(gc, 0x14U);
    gc->unk7C78 = temp_v0;
    temp_v0->unk4 = 1;
    temp_v0->unk0 = 0;
}

void __glExpFreeLUTCache(__GLcontext *gc, ...) {
    s32 *temp_s1;
    s32 *var_s4;
    s32 temp_a1;

    temp_s1 = gc->unk7C78;
    temp_a1 = *temp_s1;
    if (temp_a1 > 0) {
        var_s4 = temp_s1;
        do {
            gc->imports.free(gc, var_s4->unk10);
            var_s4 += 0xC;
        } while (var_s4 != ((temp_a1 * 0xC) + temp_s1));
    }
    gc->imports.free(gc, temp_s1);
}

void findEntry(s32 *arg0, s32 *arg3, f32 fparg1, f32 fparg2) {
    s32 *var_a4;
    s32 temp_a2;
    s32 var_a5;

    temp_a2 = *arg0;
    var_a5 = 0;
    if (temp_a2 > 0) {
        var_a4 = arg0;
loop_3:
        if ((var_a4->unk8 == fparg1) && (var_a4->unkC == fparg2)) {
            *arg3 = var_a5;
            return;
        }
        var_a5 += 1;
        var_a4 += 0xC;
        if (temp_a2 != var_a5) {
            goto loop_3;
        }
        /* Duplicate return node #6. Try simplifying control flow for better match */
        *arg3 = var_a5;
        return;
    }
    *arg3 = var_a5;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54], gap at: 0x28. */
void __glExpCreateSpecLUT(__GLcontext *gc, f32 fparg1, ...) {
    f64 sp18;
    f64 sp10;
    f64 sp8;
    __GLcontext *temp_v0;
    __GLcontext *var_s0;
    f32 temp_f12;
    f64 temp_f1;
    f64 temp_f28;
    f64 var_f26;
    f64 var_f6;
    s32 *temp_s1;
    s32 temp_a6;
    s32 var_s2;
    void *(*temp_a5)(__GLcontext *, u32, u32);
    void *(*temp_s1_2)(__GLcontext *, u32);
    void *temp_a0;
    void *temp_a3;
    void *temp_a4;
    void *temp_s1_3;
    void *temp_v0_2;
    void *var_s0_2;

    var_s0 = gc->unk7C78;
    unksp28 = (s64) gc;
    __glExpFreeLUTCache(var_s0, var_s0, sp, -1.0f);
    temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        *temp_s1 += 1;
        return;
    }
    temp_a5 = var_s0->imports.calloc;
    temp_s1_2 = var_s0->imports.malloc + 1;
    var_s0->imports.malloc = temp_s1_2;
    if ((s32) temp_a5 < (s32) temp_s1_2) {
        var_s0->imports.calloc = temp_a5 + 6;
        temp_v0 = unksp28->unk8(unksp28, var_s0, ((((s32) temp_a5 * 4) - temp_a5) * 4) + 0x5C);
        var_s0 = temp_v0;
        unksp28->unk7C78 = temp_v0;
    }
    temp_a6 = temp_s1_2 - sp0;
    if (temp_a6 != 1) {
        temp_a0 = (sp0 * 0xC) + var_s0;
        memcpy(temp_a0 + 0x14, temp_a0 + 8, (temp_a6 * 0xC) - 0xC);
    }
    temp_a4 = (sp0 * 0xC) + var_s0;
    temp_a4->unk8 = fparg1;
    temp_a3 = temp_a4 + 8;
    temp_a3->unk4 = -1.0f;
    unksp30 = (s64) temp_a3;
    temp_v0_2 = unksp28->unk0(unksp28, 0x214);
    temp_f1 = (f64) fparg1;
    temp_s1_3 = temp_v0_2;
    sp8 = temp_f1;
    unksp30->unk8 = temp_v0_2;
    if (temp_f1 == GLUE_F64(M2C_ERROR(/* Read from unset register $f3 */), 0U)) {
        var_f6 = 0.0;
    } else {
        var_f6 = (f64) powf(0.0007f, (f32) (1.0 / sp8), sp8, second half of f64);
    }
    var_f26 = var_f6 - ((1.0 - var_f6) / 126.0);
    temp_f28 = 127.0 / (1.0 - var_f26);
    var_s0_2 = temp_s1_3 + 0x14;
    var_s2 = 0x7F;
    sp18 = var_f26;
    sp10 = temp_f28;
    do {
        temp_f12 = (f32) var_f26;
        var_f26 += 1.0 / temp_f28;
        var_s2 -= 1;
        var_s0_2 += 4;
        var_s0_2->unk-4 = powf(temp_f12, fparg1);
    } while (var_s2 != -1);
    if (GLUE_F64(sp8, 0U) < sp8) {
        temp_s1_3->unk14 = 0.0f;
    }
    temp_s1_3->unkC = fparg1;
    temp_s1_3->unk0 = 1;
    temp_s1_3->unk10 = -1.0f;
    temp_s1_3->unk4 = (f32) sp18;
    temp_s1_3->unk8 = (f32) (sp10 * 1.002);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x30, 0x34, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74], gap at: 0x38. */
void __glExpCreateSpotLUT(__GLcontext *gc, f32 fparg1, f32 fparg2, ...) {
    f64 sp10;
    f64 sp8;
    __GLcontext *temp_v0;
    __GLcontext *var_s0;
    f32 temp_f12;
    f64 temp_f28;
    f64 temp_f4;
    f64 temp_f6;
    f64 var_f24;
    f64 var_f6;
    s32 *temp_s1;
    s32 temp_a6;
    s32 var_s2;
    void *(*temp_a5)(__GLcontext *, u32, u32);
    void *(*temp_s1_2)(__GLcontext *, u32);
    void *temp_a0;
    void *temp_a3;
    void *temp_a4;
    void *temp_v0_2;
    void *var_s0_2;

    unksp38 = (s64) gc;
    var_s0 = gc->unk7C78;
    __glExpFreeLUTCache(var_s0, var_s0, sp);
    temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        *temp_s1 += 1;
        return;
    }
    temp_a5 = var_s0->imports.calloc;
    temp_s1_2 = var_s0->imports.malloc + 1;
    var_s0->imports.malloc = temp_s1_2;
    if ((s32) temp_a5 < (s32) temp_s1_2) {
        var_s0->imports.calloc = temp_a5 + 6;
        temp_v0 = unksp38->unk8(unksp38, var_s0, ((((s32) temp_a5 * 4) - temp_a5) * 4) + 0x5C);
        var_s0 = temp_v0;
        unksp38->unk7C78 = temp_v0;
    }
    temp_a6 = temp_s1_2 - sp0;
    if (temp_a6 != 1) {
        temp_a0 = (sp0 * 0xC) + var_s0;
        memcpy(temp_a0 + 0x14, temp_a0 + 8, (temp_a6 * 0xC) - 0xC);
    }
    temp_a4 = (sp0 * 0xC) + var_s0;
    temp_a4->unk8 = fparg1;
    temp_a3 = temp_a4 + 8;
    temp_a3->unk4 = fparg2;
    unksp40 = (s64) temp_a3;
    temp_v0_2 = unksp38->unk0(unksp38, 0x214);
    temp_f6 = (f64) fparg1;
    unksp40->unk8 = temp_v0_2;
    if (temp_f6 == (second half of f64)) {
        var_f6 = second half of f64;
    } else {
        var_f6 = (f64) powf(0.0007f, (f32) (1.0 / temp_f6));
    }
    temp_f4 = (f64) fparg2;
    var_s0_2 = temp_v0_2 + 0x14;
    if (var_f6 < temp_f4) {
        var_f6 = temp_f4;
    }
    var_f24 = var_f6 - (((second half of f64) - var_f6) / 30.0);
    temp_f28 = 31.0 / ((second half of f64) - var_f24);
    var_s2 = 0x1F;
    sp10 = var_f24;
    sp8 = temp_f28;
    do {
        temp_f12 = (f32) var_f24;
        var_f24 += (second half of f64) / temp_f28;
        var_s2 -= 1;
        var_s0_2 += 4;
        var_s0_2->unk-4 = powf(temp_f12, fparg1);
    } while (var_s2 != -1);
    temp_v0_2->unkC = fparg1;
    temp_v0_2->unk10 = fparg2;
    temp_v0_2->unk0 = 1;
    temp_v0_2->unk14 = 0.0f;
    temp_v0_2->unk4 = (f32) sp10;
    temp_v0_2->unk8 = (f32) (second half of f64);
}

void __glExpFreeLightLUT(__GLcontext *gc, void *arg1, ...) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    __GLcontext *temp_a0;
    s32 temp_a0_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v1;

    if (arg1 != NULL) {
        sp18 = (s64) gc;
        temp_v1 = arg1->unk0 - 1;
        arg1->unk0 = temp_v1;
        if (temp_v1 > 0) {
            return;
        }
        temp_a0 = sp18->unk7C78;
        sp10 = (s64) temp_a0;
        __glExpFreeLUTCache(temp_a0, temp_a0, sp, arg1->unkC, arg1->unk10);
        if (*M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            temp_a5 = *sp10;
            sp8 = M2C_ERROR(/* Read from unset register $v0 */);
            if (temp_a5 >= 0x20) {
                temp_a4 = temp_a5 - 1;
                *sp10 = temp_a4;
                temp_a0_2 = (sp0 * 0xC) + sp10;
                memcpy(temp_a0_2 + 8, temp_a0_2 + 0x14, (temp_a4 - sp0) * 0xC);
                sp18->unkC(sp18, sp8);
            }
        }
    }
}

void __glExpLoadSpecLUT(__GLcontext *gc, void *arg1, s32 arg2, ...) {
    s32 var_a1;
    void *temp_a5;
    void *var_a2;

    temp_a5 = arg1->unk4;
    var_a1 = 0;
    if (arg2 != 0) {
        HQ2_FIFO.light_select = 24.0f;
        HQ2_FIFO.light_select = temp_a5->unk8;
        HQ2_FIFO.light_select = 25.0f;
        HQ2_FIFO.light_select = temp_a5->unk4;
        HQ2_FIFO.light_select = 7.0f;
        HQ2_FIFO.light_select = 1.0f;
    } else {
        HQ2_FIFO.light_select = 2.0f;
        HQ2_FIFO.light_select = temp_a5->unk8;
        HQ2_FIFO.light_select = 3.0f;
        HQ2_FIFO.light_select = temp_a5->unk4;
        HQ2_FIFO.light_select = 7.0f;
        HQ2_FIFO.light_select = 0.0f;
    }
    var_a2 = temp_a5 + 0x14;
    do {
        HQ2_FIFO.load_spec_lut = var_a2->unk0;
        HQ2_FIFO.load_spec_lut = var_a2->unk4;
        HQ2_FIFO.load_spec_lut = var_a2->unk8;
        HQ2_FIFO.load_spec_lut = var_a2->unkC;
        HQ2_FIFO.load_spec_lut = var_a2->unk10;
        HQ2_FIFO.load_spec_lut = var_a2->unk14;
        HQ2_FIFO.load_spec_lut = var_a2->unk18;
        HQ2_FIFO.load_spec_lut = var_a2->unk1C;
        HQ2_FIFO.load_spec_lut = var_a2->unk20;
        HQ2_FIFO.load_spec_lut = var_a2->unk24;
        HQ2_FIFO.load_spec_lut = var_a2->unk28;
        HQ2_FIFO.load_spec_lut = var_a2->unk2C;
        HQ2_FIFO.load_spec_lut = var_a2->unk30;
        HQ2_FIFO.load_spec_lut = var_a2->unk34;
        HQ2_FIFO.load_spec_lut = var_a2->unk38;
        var_a2 += 0x40;
        var_a1 += 0x10;
        HQ2_FIFO.load_spec_lut = var_a2->unk-4;
    } while (var_a1 != 0x80);
}

void __glExpLoadSpotLUT(__GLcontext *gc, void *arg1, s32 arg2, ...) {
    f32 temp_f0;
    void *temp_a3;
    void *temp_a3_2;

    temp_a3 = arg1->unk8;
    temp_f0 = (f32) arg2;
    HQ2_FIFO.light_select = 31.0f;
    HQ2_FIFO.light_select = temp_f0;
    HQ2_FIFO.light_select = 29.0f;
    HQ2_FIFO.light_select = temp_a3->unk8;
    HQ2_FIFO.light_select = 30.0f;
    temp_a3_2 = temp_a3 + 0x14;
    HQ2_FIFO.light_select = temp_a3->unk4;
    HQ2_FIFO.light_select = 7.0f;
    HQ2_FIFO.light_select = temp_f0 + 2.0f;
    HQ2_FIFO.load_spot_lut = temp_a3->unk14;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk4;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk8;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unkC;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk10;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk14;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk18;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk1C;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk20;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk24;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk28;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk2C;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk30;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk34;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk38;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk3C;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk40;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk44;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk48;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk4C;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk50;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk54;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk58;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk5C;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk60;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk64;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk68;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk6C;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk70;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk74;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk78;
    HQ2_FIFO.load_spot_lut = temp_a3_2->unk7C;
}

void __glExpLoadAmbientSum(__GLcontext *gc, ...) {
    f32 sp8;
    f32 sp4;
    f32 sp0;
    __GLlightSourceState *temp_a4;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a6;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a2;
    u32 temp_a3;
    void *temp_v1;
    void *var_at;

    temp_a3 = gc->state.enables.lights;
    temp_a4 = gc->state.light.source;
    if (gc->modes.colorIndexMode != 0) {
        var_f4 = 0.0f;
        sp8 = 0.0f;
        sp4 = 0.0f;
    } else {
        var_f5 = gc->state.light.model.ambient.g;
        var_f4 = gc->state.light.model.ambient.r;
        sp4 = var_f5;
        var_f6 = gc->state.light.model.ambient.b;
        sp8 = var_f6;
        sp0 = var_f4;
        if (gc->unk7C6C == 0) {
            if ((gc->state.light.model.localViewer == 0) && (gc->state.light.model.twoSided == 0)) {
                temp_a6 = gc->constants.numberOfLights;
                var_a2 = 0;
                if (temp_a6 > 0) {
                    var_a0 = 0;
                    if (temp_a6 & 1) {
                        if ((1 << 0) & temp_a3) {
                            var_f4 += temp_a4->ambient.r;
                            sp0 = var_f4;
                            var_f5 += temp_a4->ambient.g;
                            sp4 = var_f5;
                            var_f6 += temp_a4->ambient.b;
                            sp8 = var_f6;
                        }
                        var_a0 = 0x74;
                        var_a2 = 1;
                    }
                    var_at = var_a0 + temp_a4;
                    if ((temp_a6 >> 1) != 0) {
loop_18:
                        temp_a1 = 1 << var_a2;
                        temp_a2 = var_a2 + 1;
                        temp_v0 = 1 << temp_a2;
                        var_a2 = temp_a2 + 1;
                        if (temp_a1 & temp_a3) {
                            var_f4 += var_at->unk0;
                            sp0 = var_f4;
                            var_f5 += var_at->unk4;
                            sp4 = var_f5;
                            var_f6 += var_at->unk8;
                            sp8 = var_f6;
                        }
                        temp_a0 = var_a0 + 0x74;
                        if (temp_v0 & temp_a3) {
                            temp_v1 = temp_a0 + temp_a4;
                            var_f4 += temp_v1->unk0;
                            sp0 = var_f4;
                            var_f5 += temp_v1->unk4;
                            sp4 = var_f5;
                            var_f6 += temp_v1->unk8;
                            sp8 = var_f6;
                        }
                        var_a0 = temp_a0 + 0x74;
                        if (temp_a6 != var_a2) {
                            var_at = var_a0 + temp_a4;
                            goto loop_18;
                        }
                    }
                }
            }
        }
    }
    HQ2_FIFO.material_shininess = var_f4;
    HQ2_FIFO.material_shininess = sp4;
    HQ2_FIFO.material_shininess = sp8;
}

void __glExpLoadLightPath(__GLcontext *gc, ...) {
    u8 temp_a5;

    if (gc->state.enables.general & 0x40) {
        HQ2_FIFO.unk2438 = 0.0f;
        HQ2_FIFO.data_port.w = 1;
        HQ2_FIFO.unk2350 = 1.0f;
        temp_a5 = gc->state.light.model.twoSided;
        HQ2_FIFO.data_port.w = (u32) temp_a5;
        __glExpFreeLightLUT(gc, gc, 0x42350, 0x4277C, temp_a5);
        HQ2_FIFO.light_model_viewer = 6.0f;
        HQ2_FIFO.light_model_viewer = (f32) gc->state.light.model.localViewer;
        if ((gc->unk7C6C != 0) || (gc->state.light.model.localViewer != 0)) {
            HQ2_FIFO.light_model_viewer = 3.0f;
            HQ2_FIFO.light_model_viewer = 1.0f;
            HQ2_FIFO.light_model_viewer = 4.0f;
            HQ2_FIFO.light_model_viewer = 0.0f;
            HQ2_FIFO.light_model_viewer = 5.0f;
            goto block_4;
        }
        HQ2_FIFO.light_model_viewer = 3.0f;
        HQ2_FIFO.light_model_viewer = 0.0f;
        if (gc->state.light.model.twoSided == 0) {
            if (gc->unk7C68 != 1) {
                HQ2_FIFO.light_model_viewer = 4.0f;
                HQ2_FIFO.light_model_viewer = 0.0f;
                HQ2_FIFO.light_model_viewer = 5.0f;
                HQ2_FIFO.light_model_viewer = 1.0f;
            } else {
                HQ2_FIFO.light_model_viewer = 4.0f;
                HQ2_FIFO.light_model_viewer = 1.0f;
                HQ2_FIFO.light_model_viewer = 5.0f;
                goto block_4;
            }
        } else {
            HQ2_FIFO.light_model_viewer = 4.0f;
            HQ2_FIFO.light_model_viewer = 0.0f;
            HQ2_FIFO.light_model_viewer = 5.0f;
block_4:
            HQ2_FIFO.light_model_viewer = 0.0f;
        }
        HQ2_FIFO.light_model_ambient = 0.0f;
        return;
    }
    HQ2_FIFO.unk2438 = 0.0f;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.unk2350 = 1.0f;
    HQ2_FIFO.data_port.w = 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x30, 0x34, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c], gap at: 0x38. */
void __glExpLoadLightSource(__GLcontext *gc, s64 arg1, ...) {
    s64 sp60;
    f64 sp28;
    s32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    __GLlightSourceState *temp_s0;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f24;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f4;
    s32 temp_a0;
    s32 temp_a1;
    s64 var_ra;
    void *temp_s2;

    var_ra = saved_reg_ra;
    unksp40 = arg1;
    temp_s2 = gc->unk7C50 + (arg1 * 0xC);
    HQ2_FIFO.light_select = 5.0f;
    unksp38 = gc->unk6DC8 + (arg1 * 0xE0);
    HQ2_FIFO.light_select = (f32) arg1;
    temp_s0 = &gc->state.light.source[arg1];
    if (gc->modes.colorIndexMode != 0) {
        HQ2_FIFO.unk2394 = 0.0f;
        HQ2_FIFO.unk2394 = 0.0f;
        HQ2_FIFO.unk2394 = 0.0f;
        temp_f3 = (temp_s0->diffuse.r * 0.3f) + (temp_s0->diffuse.g * 0.59f) + (temp_s0->diffuse.b * 0.11f);
        HQ2_FIFO.unk2404 = temp_f3;
        HQ2_FIFO.unk2404 = temp_f3;
        HQ2_FIFO.unk2404 = temp_f3;
        temp_f1 = (temp_s0->specular.r * 0.3f) + (temp_s0->specular.g * 0.59f) + (temp_s0->specular.b * 0.11f);
        HQ2_FIFO.unk2408 = temp_f1;
        HQ2_FIFO.unk2408 = temp_f1;
        HQ2_FIFO.unk2408 = temp_f1;
    } else {
        HQ2_FIFO.unk2394 = temp_s0->ambient.r;
        HQ2_FIFO.unk2394 = temp_s0->ambient.g;
        HQ2_FIFO.unk2394 = temp_s0->ambient.b;
        HQ2_FIFO.unk2404 = temp_s0->diffuse.r;
        HQ2_FIFO.unk2404 = temp_s0->diffuse.g;
        HQ2_FIFO.unk2404 = temp_s0->diffuse.b;
        HQ2_FIFO.unk2408 = temp_s0->specular.r;
        HQ2_FIFO.unk2408 = temp_s0->specular.g;
        HQ2_FIFO.unk2408 = temp_s0->specular.b;
    }
    if (temp_s0->position.w != 0.0f) {
        temp_f4 = temp_s0->positionEye.x / temp_s0->positionEye.w;
        sp10 = temp_f4;
        sp14 = temp_s0->positionEye.y / temp_s0->positionEye.w;
        temp_f2 = temp_s0->positionEye.z / temp_s0->positionEye.w;
        sp18 = temp_f2;
        temp_f1_2 = gc->constants.one;
        sp1C = temp_f1_2;
        HQ2_FIFO.light_position = temp_f4;
        HQ2_FIFO.light_position = sp14;
        HQ2_FIFO.light_position = temp_f2;
        HQ2_FIFO.light_position = temp_f1_2;
    } else {
        sub_0da60000(sp, &temp_s0->positionEye, 0x42200, 0x42408, 0x42404, 0x42394);
        spC = 0.0f;
        HQ2_FIFO.light_position = sp0;
        HQ2_FIFO.light_position = sp4;
        var_ra = sp60;
        HQ2_FIFO.light_position = sp8;
        HQ2_FIFO.light_position = spC;
    }
    if (temp_s0->position.w != 0.0f) {
        if ((f64) temp_s0->spotLightCutOffAngle != 180.0) {
            sp60 = var_ra;
            if (gc->unk7C7C != 0) {
                goto block_7;
            }
            sp20 = 4;
            temp_a0 = gc->fd;
            __glExpIoctl((__GLcontext *) temp_a0, temp_a0, 0x3AA7, &sp20, 4);
            if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
                gc->unk7C7C = 1U;
block_7:
                temp_f24 = temp_s0->spotLightExponent;
                temp_f0 = cosf(temp_s0->spotLightCutOffAngle * 0.017453292f);
                temp_a1 = temp_s2->unk8;
                if ((temp_a1 == 0) || (temp_s2->unk0 != temp_f24) || (sp28 = (bitwise f64) temp_f0, (temp_s2->unk4 != temp_f0))) {
                    sp28 = (bitwise f64) temp_f0;
                    __glExpFreeLightLUT(gc, gc, temp_a1);
                    __glExpCreateSpotLUT(gc, gc);
                    temp_s2->unk0 = temp_f24;
                    temp_s2->unk8 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
                    temp_s2->unk4 = (bitwise f32) sp28;
                }
                __glExpFreeLightLUT(gc, gc, temp_s2, unksp40);
                HQ2_FIFO.light_spot_direction = unksp38->unk84;
                HQ2_FIFO.light_spot_direction = unksp38->unk88;
                HQ2_FIFO.light_spot_direction = unksp38->unk8C;
                /* Duplicate return node #12. Try simplifying control flow for better match */
                HQ2_FIFO.unk2424 = temp_s0->linearAttenuation;
                HQ2_FIFO.unk2424 = temp_s0->quadraticAttenuation;
                HQ2_FIFO.unk2424 = temp_s0->constantAttenuation;
                return;
            }
            __glExpIoctl(gc, gc, &sub_0db30000 - 0x5360);
            return;
        }
        goto block_14;
    }
block_14:
    HQ2_FIFO.light_select = 31.0f;
    HQ2_FIFO.light_select = -1.0f;
    HQ2_FIFO.unk2424 = temp_s0->linearAttenuation;
    HQ2_FIFO.unk2424 = temp_s0->quadraticAttenuation;
    HQ2_FIFO.unk2424 = temp_s0->constantAttenuation;
}

void __glExpValidateMaterial(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, ...) {
    s64 sp20;
    f64 sp18;
    f32 temp_f28;
    f32 temp_f28_2;
    f64 var_f28;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_at;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 var_ra;

    var_f28 = saved_reg_f28;
    var_ra = saved_reg_ra;
    var_a3 = arg3;
    if (gc->modes.colorIndexMode != 0) {
        if (arg1 & 0x20) {
            HQ2_FIFO.light_select = 18.0f;
            var_a3 = 0x4E77C;
            HQ2_FIFO.data_port_ci.w = (bitwise u32) gc->state.light.front.cmapa;
            HQ2_FIFO.light_select = 19.0f;
            HQ2_FIFO.data_port_ci.w = (bitwise u32) (f32) ((f64) (second half of f64) + (second half of f64));
            HQ2_FIFO.light_select = 20.0f;
            HQ2_FIFO.data_port_ci.w = (bitwise u32) (f32) ((f64) (gc->state.light.front.cmaps - gc->state.light.front.cmapa) + (second half of f64));
        }
        goto block_3;
    }
    var_a3_2 = arg1 & 1;
    if (arg1 & 8) {
        HQ2_FIFO.mat_front_emissive = gc->state.light.front.emissive.r;
        HQ2_FIFO.mat_front_emissive = gc->state.light.front.emissive.g;
        HQ2_FIFO.mat_front_emissive = gc->state.light.front.emissive.b;
        var_a3_2 = arg1 & 1;
    }
    var_v0 = arg1 & 2;
    if (var_a3_2 != 0) {
        HQ2_FIFO.mat_front_ambient = gc->state.light.front.ambient.r;
        HQ2_FIFO.mat_front_ambient = gc->state.light.front.ambient.g;
        HQ2_FIFO.mat_front_ambient = gc->state.light.front.ambient.b;
        var_v0 = arg1 & 2;
    }
    var_a3 = arg1 & 4;
    if (var_v0 != 0) {
        HQ2_FIFO.mat_front_diffuse = gc->state.light.front.diffuse.r;
        HQ2_FIFO.mat_front_diffuse = gc->state.light.front.diffuse.g;
        HQ2_FIFO.mat_front_diffuse = gc->state.light.front.diffuse.b;
        HQ2_FIFO.mat_front_diffuse = gc->state.light.front.diffuse.a;
        var_a3 = arg1 & 4;
    }
    var_v0_2 = arg1 & 0x10;
    if (var_a3 != 0) {
        HQ2_FIFO.mat_front_specular = gc->state.light.front.specular.r;
        HQ2_FIFO.mat_front_specular = gc->state.light.front.specular.g;
        HQ2_FIFO.mat_front_specular = gc->state.light.front.specular.b;
block_3:
        var_v0_2 = arg1 & 0x10;
    }
    if (var_v0_2 != 0) {
        temp_a1 = gc->unk7C58;
        temp_f28 = gc->state.light.front.specularExponent;
        if ((temp_a1 == 0) || (gc->unk7C54 != temp_f28)) {
            __glExpFreeLightLUT(gc, gc, temp_a1, var_a3);
            __glExpCreateSpecLUT(gc, gc);
            gc->unk7C54 = temp_f28;
            gc->unk7C58 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        }
        var_f28 = sp18;
        __glExpFreeLightLUT(gc, gc, gc + 0x7C54, 0);
        var_ra = sp20;
    }
    if (gc->modes.colorIndexMode != 0) {
        if (arg2 & 0x20) {
            HQ2_FIFO.light_select = 21.0f;
            HQ2_FIFO.data_port_ci.w = (bitwise u32) gc->state.light.back.cmapa;
            HQ2_FIFO.light_select = 22.0f;
            HQ2_FIFO.data_port_ci.w = (bitwise u32) (f32) ((f64) (second half of f64) + (second half of f64));
            HQ2_FIFO.light_select = 23.0f;
            HQ2_FIFO.data_port_ci.w = (bitwise u32) (f32) ((f64) (gc->state.light.back.cmaps - gc->state.light.back.cmapa) + (second half of f64));
        }
        goto block_11;
    }
    var_a3_3 = arg2 & 1;
    if (arg2 & 8) {
        HQ2_FIFO.mat_back_emissive = gc->state.light.back.emissive.r;
        HQ2_FIFO.mat_back_emissive = gc->state.light.back.emissive.g;
        HQ2_FIFO.mat_back_emissive = gc->state.light.back.emissive.b;
        var_a3_3 = arg2 & 1;
    }
    var_v0_3 = arg2 & 2;
    if (var_a3_3 != 0) {
        HQ2_FIFO.mat_back_ambient = gc->state.light.back.ambient.r;
        HQ2_FIFO.mat_back_ambient = gc->state.light.back.ambient.g;
        HQ2_FIFO.mat_back_ambient = gc->state.light.back.ambient.b;
        var_v0_3 = arg2 & 2;
    }
    var_a3_4 = arg2 & 4;
    if (var_v0_3 != 0) {
        HQ2_FIFO.mat_back_diffuse = gc->state.light.back.diffuse.r;
        HQ2_FIFO.mat_back_diffuse = gc->state.light.back.diffuse.g;
        HQ2_FIFO.mat_back_diffuse = gc->state.light.back.diffuse.b;
        HQ2_FIFO.mat_back_diffuse = gc->state.light.back.diffuse.a;
        var_a3_4 = arg2 & 4;
    }
    var_at = arg2 & 0x10;
    if (var_a3_4 != 0) {
        HQ2_FIFO.mat_back_specular = gc->state.light.back.specular.r;
        HQ2_FIFO.mat_back_specular = gc->state.light.back.specular.g;
        HQ2_FIFO.mat_back_specular = gc->state.light.back.specular.b;
block_11:
        var_at = arg2 & 0x10;
    }
    if (var_at != 0) {
        temp_a1_2 = gc->unk7C60;
        sp18 = var_f28;
        temp_f28_2 = gc->state.light.back.specularExponent;
        if ((temp_a1_2 == 0) || (sp20 = var_ra, (gc->unk7C5C != temp_f28_2))) {
            sp20 = var_ra;
            __glExpFreeLightLUT(gc, gc, temp_a1_2);
            __glExpCreateSpecLUT(gc, gc);
            gc->unk7C5C = temp_f28_2;
            gc->unk7C60 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        }
        __glExpFreeLightLUT(gc, gc, gc + 0x7C5C, 1);
    }
    HQ2_FIFO.light_model_ambient = 0.0f;
}

void __glExpValidateColorMaterial(__GLcontext *gc, ...) {
    enum GLenum temp_a2;
    enum GLenum temp_a3;
    u32 var_a4;

    var_a4 = 0;
    if (gc->modes.rgbMode != 0) {
        if (gc->state.enables.general & 0x80) {
            temp_a3 = gc->state.light.colorMaterialFace;
            temp_a2 = gc->state.light.colorMaterialParam;
            switch (temp_a3) {                      /* switch 1; irregular */
            case GL_FRONT:                          /* switch 1 */
                var_a4 = 0;
                break;
            case GL_BACK:                           /* switch 1 */
                var_a4 = 1;
                break;
            case GL_FRONT_AND_BACK:                 /* switch 1 */
                var_a4 = 2;
                break;
            }
            switch (temp_a2) {                      /* switch 2; irregular */
            case GL_AMBIENT_AND_DIFFUSE:            /* switch 2 */
                HQ2_FIFO.light_enable_mask.w = 5;
                HQ2_FIFO.light_enable_mask.w = var_a4;
                HQ2_FIFO.light_enable_mask.w = 1;
                return;
            case GL_EMISSION:                       /* switch 2 */
                HQ2_FIFO.light_enable_mask.w = 1;
                HQ2_FIFO.light_enable_mask.w = var_a4;
                HQ2_FIFO.light_enable_mask.w = 1;
                return;
            case GL_SPECULAR:                       /* switch 2 */
                HQ2_FIFO.light_enable_mask.w = 4;
                HQ2_FIFO.light_enable_mask.w = var_a4;
                HQ2_FIFO.light_enable_mask.w = 1;
                return;
            case GL_AMBIENT:                        /* switch 2 */
                HQ2_FIFO.light_enable_mask.w = 2;
                HQ2_FIFO.light_enable_mask.w = var_a4;
                HQ2_FIFO.light_enable_mask.w = 1;
                return;
            case GL_DIFFUSE:                        /* switch 2 */
                HQ2_FIFO.light_enable_mask.w = 3;
                HQ2_FIFO.light_enable_mask.w = var_a4;
                HQ2_FIFO.light_enable_mask.w = 1;
                return;
            }
        } else {
            HQ2_FIFO.light_enable_mask.w = 0;
            HQ2_FIFO.light_enable_mask.w = 0;
            HQ2_FIFO.light_enable_mask.w = 0;
        }
    }
}

void __glExpValidateLightSource(__GLcontext *gc, s32 lightIndex) {
    gc->unk7C74 = (s32) (gc->unk7C74 | (1 << lightIndex));
}

void __glExpValidateLighting(__GLcontext *gc, ...) {
    s64 sp70;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    __GLcontext *var_s3;
    f32 temp_f4;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_at;
    s32 temp_s6;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_s0_2;
    s32 var_s2;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s5;
    s32 var_s5_2;
    s64 var_ra;
    s64 var_s0;
    u32 temp_s1;
    void *temp_a2_2;

    var_ra = saved_reg_ra;
    var_s3 = gc;
    temp_s6 = gc->unk7C74;
    temp_at = gc->unk7C64;
    temp_s1 = gc->state.enables.lights;
    sp58 = (s64) temp_at;
    if (temp_s1 != temp_at) {
        sp48 = 0;
        var_s4 = 0;
        var_s5 = 0;
        sp50 = 0;
        sp60 = -1;
        temp_v1 = var_s3->constants.numberOfLights;
        var_s0 = 0;
        sp28 = (s64) temp_v1;
        sp40 = (s64) var_s3->state.light.source;
        if (temp_v1 > 0) {
            sp38 = (s64) var_s3;
            var_s3_2 = 0;
loop_9:
            temp_a1 = 1 << var_s0;
            if (temp_a1 & temp_s1) {
                var_s5 |= temp_a1;
                temp_f4 = (f32) var_s0;
                if (sp60 >= 0) {
                    HQ2_FIFO.light_select = 6.0f;
                    HQ2_FIFO.light_select = temp_f4;
                } else {
                    sp60 = var_s0;
                }
                HQ2_FIFO.light_select = 5.0f;
                HQ2_FIFO.light_select = temp_f4;
                HQ2_FIFO.light_select = 6.0f;
                HQ2_FIFO.light_select = -1.0f;
                var_s4 += 1;
                if ((var_s3_2 + sp40)->unk3C != 0.0f) {
                    sp48 += 1;
                    sp50 |= temp_a1;
                }
                temp_a2 = temp_a1 & temp_s6;
                if (temp_a1 & sp58) {
                    if (temp_a2 != 0) {
                        goto block_6;
                    }
                } else {
block_6:
                    __glExpFreeLightLUT((__GLcontext *) sp38, sp38, var_s0, temp_a2);
                }
            }
            var_s0 += 1;
            var_s3_2 += 0x74;
            if (sp28 != var_s0) {
                goto loop_9;
            }
            var_ra = sp70;
            var_s3 = (__GLcontext *) sp38;
        }
        sp70 = var_ra;
        HQ2_FIFO.light_select = 4.0f;
        HQ2_FIFO.light_select = (f32) sp60;
        HQ2_FIFO.light_select = 10.0f;
        HQ2_FIFO.light_select = (f32) var_s4;
        var_s3->unk7C74 = 0;
        var_s3->unk7C70 = (s32) sp48;
        var_s3->unk7C6C = (s32) sp50;
        var_s3->unk7C64 = var_s5;
        var_s3->unk7C68 = var_s4;
    } else if (sp58 & temp_s6) {
        var_s5_2 = 0;
        var_s4_2 = 0;
        temp_v0 = var_s3->constants.numberOfLights;
        var_s0_2 = 0;
        sp20 = (s64) temp_v0;
        sp30 = (s64) var_s3->state.light.source;
        if (temp_v0 > 0) {
            var_s2 = 0;
loop_24:
            temp_a0 = 1 << var_s0_2;
            if (temp_a0 & temp_s1) {
                temp_a2_2 = var_s2 + sp30;
                if (temp_a2_2->unk3C != 0.0f) {
                    var_s4_2 |= temp_a0;
                    var_s5_2 += 1;
                }
                if (temp_a0 & temp_s6) {
                    __glExpFreeLightLUT(var_s3, var_s3, var_s0_2, temp_a2_2);
                }
            }
            var_s0_2 += 1;
            var_s2 += 0x74;
            if (sp20 != var_s0_2) {
                goto loop_24;
            }
            var_ra = sp70;
        }
        sp70 = var_ra;
        var_s3->unk7C74 = 0;
        var_s3->unk7C70 = var_s5_2;
        var_s3->unk7C6C = var_s4_2;
    }
    sp70 = var_ra;
    __glExpFreeLightLUT(var_s3, var_s3);
}

void __glExpUpdateLightingState(__GLcontext *gc, ...) {
    s32 temp_a5;
    s32 var_a0_2;
    s32 var_a3;
    void *temp_a4;
    void *var_a0;

    temp_a4 = gc->unk7C50;
    temp_a5 = gc->constants.numberOfLights;
    var_a3 = temp_a5 & 3;
    if (temp_a5 > 0) {
        var_a0 = temp_a4;
        if (var_a3 != 0) {
            do {
                var_a0 += 0xC;
                var_a0->unk-8 = -1.0f;
                var_a3 -= 1;
                var_a0->unk-C = -1.0f;
            } while (var_a3 != 0);
        }
        var_a3 = (s32) var_a0;
        if ((temp_a5 >> 2) != 0) {
            var_a0_2 = var_a3;
            do {
                var_a0_2->unk28 = -1.0f;
                var_a0_2->unk24 = -1.0f;
                var_a0_2->unk1C = -1.0f;
                var_a0_2->unk18 = -1.0f;
                var_a0_2->unk10 = -1.0f;
                var_a0_2->unkC = -1.0f;
                var_a0_2->unk4 = -1.0f;
                var_a0_2 += 0x30;
                var_a0_2->unk-30 = -1.0f;
            } while (var_a0_2 != ((temp_a5 * 0xC) + temp_a4));
        }
    }
    gc->unk7C5C = -1.0f;
    gc->unk7C54 = -1.0f;
    HQ2_FIFO.light_select = 4.0f;
    HQ2_FIFO.light_select = -1.0f;
    HQ2_FIFO.light_select = 10.0f;
    HQ2_FIFO.light_select = 0.0f;
    gc->unk7C74 = 0;
    gc->unk7C70 = 0;
    gc->unk7C6C = 0;
    gc->unk7C68 = 0;
    gc->unk7C64 = 0;
    __glExpValidateMaterial(gc, gc, 0x3F, 0x3F, var_a3, temp_a4, temp_a5, temp_a5);
    __glExpValidateColorMaterial(gc, gc);
    __glBeginMode = 2;
    gc->dirtyMask |= 0x20;
}

void __glExpEnableLighting(__GLcontext *gc, ...) {
    __glExpFreeLightLUT(gc);
}

void __glExpFreeLighting(__GLcontext *gc, ...) {
    s32 temp_a1;

    __glExpFreeLUTCache(gc);
    temp_a1 = gc->unk7C50;
    if (temp_a1 != 0) {
        __glExpFreeLUTCache(gc, gc, temp_a1);
    }
}

void __glExpInitLighting(__GLcontext *gc, ...) {
    s32 temp_s8;

    temp_s8 = gc->constants.numberOfLights;
    __glExpInitLUTCache(gc);
    __glExpInitLUTCache(gc, gc, temp_s8, 0xC);
    gc->unk7C50 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    HQ2_FIFO.light_model_viewer = 7.0f;
    HQ2_FIFO.light_model_viewer = 1.0f;
    if (gc->modes.colorIndexMode != 0) {
        HQ2_FIFO.mat_front_emissive = 0.0f;
        HQ2_FIFO.mat_front_emissive = 0.0f;
        HQ2_FIFO.mat_front_emissive = 0.0f;
        HQ2_FIFO.mat_front_ambient = 0.0f;
        HQ2_FIFO.mat_front_ambient = 0.0f;
        HQ2_FIFO.mat_front_ambient = 0.0f;
        HQ2_FIFO.mat_front_diffuse = 0.0f;
        HQ2_FIFO.mat_front_diffuse = 1.0f;
        HQ2_FIFO.mat_front_diffuse = 0.0f;
        HQ2_FIFO.mat_front_diffuse = 0.0f;
        HQ2_FIFO.mat_front_specular = 0.0f;
        HQ2_FIFO.mat_front_specular = 0.0f;
        HQ2_FIFO.mat_front_specular = 1.0f;
        HQ2_FIFO.mat_back_emissive = 0.0f;
        HQ2_FIFO.mat_back_emissive = 0.0f;
        HQ2_FIFO.mat_back_emissive = 0.0f;
        HQ2_FIFO.mat_back_ambient = 0.0f;
        HQ2_FIFO.mat_back_ambient = 0.0f;
        HQ2_FIFO.mat_back_ambient = 0.0f;
        HQ2_FIFO.mat_back_diffuse = 0.0f;
        HQ2_FIFO.mat_back_diffuse = 1.0f;
        HQ2_FIFO.mat_back_diffuse = 0.0f;
        HQ2_FIFO.mat_back_diffuse = 0.0f;
        HQ2_FIFO.mat_back_specular = 0.0f;
        HQ2_FIFO.mat_back_specular = 0.0f;
        HQ2_FIFO.mat_back_specular = 1.0f;
        HQ2_FIFO.light_model_viewer = 2.0f;
        HQ2_FIFO.light_model_viewer = 1.0f;
    } else {
        HQ2_FIFO.light_model_viewer = 2.0f;
        HQ2_FIFO.light_model_viewer = 0.0f;
    }
    __glExpUpdateLightingState(gc, gc);
}
