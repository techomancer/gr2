typedef struct __GLaccumBufferRec {
    /* 0x00 */ __GLbuffer buf;
    /* 0x1C */ char pad1C[0x1C];
    /* 0x38 */ ? (*unk38)(s32, s32, s32);           /* inferred */
    /* 0x3C */ char pad3C[4];
    /* 0x40 */ ? (*unk40)(__GLaccumBuffer *, __GLcontext *); /* inferred */
    /* 0x44 */ char pad44[0x28];                    /* maybe part of unk40[0xB]? */
    /* 0x6C */ void (*clear)(__GLaccumBuffer *);
} __GLaccumBuffer;                                  /* size = 0x70 */

typedef struct __GLcontextConstantsRec {
    /* 0x00 */ f32 half;
    /* 0x04 */ f32 one;
    /* 0x08 */ f32 val255;
    /* 0x0C */ f32 oneOver255;
    /* 0x10 */ f32 val65535;
    /* 0x14 */ f32 oneOver65535;
    /* 0x18 */ f32 val4294965000;
    /* 0x1C */ f32 oneOver4294965000;
    /* 0x20 */ s8 *vendor;
    /* 0x24 */ s8 *renderer;
    /* 0x28 */ s8 *version;
    /* 0x2C */ s8 *extensions;
    /* 0x30 */ s32 numberOfLights;
    /* 0x34 */ s32 numberOfClipPlanes;
    /* 0x38 */ s32 maxViewportWidth;
    /* 0x3C */ s32 maxViewportHeight;
    /* 0x40 */ char pad40[0x1C];                    /* maybe part of maxViewportHeight[8]? */
    /* 0x5C */ s32 viewportXAdjust;
    /* 0x60 */ s32 viewportYAdjust;
    /* 0x64 */ f32 fviewportXAdjust;
    /* 0x68 */ f32 fviewportYAdjust;
    /* 0x6C */ char pad6C[0x18];                    /* maybe part of fviewportYAdjust[7]? */
    /* 0x84 */ s32 unk84;                           /* inferred */
    /* 0x88 */ s32 unk88;                           /* inferred */
    /* 0x8C */ char pad8C[0x3C];                    /* maybe part of unk88[0x10]? */
    /* 0xC8 */ s32 maxAttribStackDepth;
    /* 0xCC */ s32 maxClientAttribStackDepth;
    /* 0xD0 */ s32 maxNameStackDepth;
    /* 0xD4 */ s32 maxColorStackDepth;
    /* 0xD8 */ s32 maxModelViewStackDepth;
    /* 0xDC */ s32 maxProjectionStackDepth;
    /* 0xE0 */ s32 maxTextureStackDepth;
} __GLcontextConstants;                             /* size = 0xE4 */

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
    /* 0x0DB4 */ char padDB4[0x49C];                /* maybe part of constants[6]? */
    /* 0x1250 */ s32 unk1250;                       /* inferred */
    /* 0x1254 */ char pad1254[0x378];               /* maybe part of unk1250[0xDF]? */
    /* 0x15CC */ ? *unk15CC;                        /* inferred */
    /* 0x15D0 */ ? unk15D0;                         /* inferred */
    /* 0x15D0 */ char pad15D0[0x810];
    /* 0x1DE0 */ ? unk1DE0;                         /* inferred */
    /* 0x1DE0 */ char pad1DE0[0x808];
    /* 0x25E8 */ ? unk25E8;                         /* inferred */
    /* 0x25E8 */ char pad25E8[0x808];
    /* 0x2DF0 */ u32 validateMask;
    /* 0x2DF4 */ u32 dirtyMask;
    /* 0x2DF8 */ __GLcolorBuffer *drawBuffer;
    /* 0x2DFC */ __GLcolorBuffer *readBuffer;
    /* 0x2E00 */ char pad2E00[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2E10 */ void (*validate)(__GLcontext *);
    /* 0x2E14 */ char pad2E14[0x1C];                /* maybe part of validate[8]? */
    /* 0x2E30 */ __GLprocs procs;
    /* 0x3184 */ __GLattributeMachine attributes;
    /* 0x318C */ char pad318C[0x4250];              /* maybe part of attributes[0x84B]? */
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

typedef struct __GLdepthBufferRec {
    /* 0x00 */ __GLbuffer buf;
    /* 0x1C */ char pad1C[0x24];                    /* maybe part of buf[2]? */
    /* 0x40 */ ? (*unk40)(__GLdepthBuffer *, __GLcontext *, u8); /* inferred */
    /* 0x44 */ char pad44[8];                       /* maybe part of unk40[3]? */
    /* 0x4C */ u32 scale;
    /* 0x50 */ char pad50[0x28];                    /* maybe part of scale[0xB]? */
    /* 0x78 */ void (*clear)(__GLdepthBuffer *, s64, __GLcontext *);
    /* 0x7C */ char pad7C[8];                       /* maybe part of clear[3]? */
} __GLdepthBuffer;                                  /* size = 0x84 */

typedef struct __GLpixelStateRec {
    /* 0x000 */ char pad0[0x214];
    /* 0x214 */ s32 unk214;                         /* inferred */
    /* 0x218 */ char pad218[0x90];                  /* maybe part of unk214[0x25]? */
} __GLpixelState;                                   /* size = 0x2A8 */

typedef struct __GLprocsRec {
    /* 0x000 */ void (*validate)(__GLcontext *);
    /* 0x004 */ void (*finish)(__GLcontext *);
    /* 0x008 */ void (*flush)(__GLcontext *);
    /* 0x00C */ void (*applyColor)(__GLcontext *);
    /* 0x010 */ void *table[0x80];
    /* 0x210 */ char pad210[0x138];
    /* 0x348 */ ? (*unk348)(__GLcontext *);         /* inferred */
    /* 0x34C */ char pad34C[8];                     /* maybe part of unk348[3]? */
} __GLprocs;                                        /* size = 0x354 */

typedef struct __GLstencilBufferRec {
    /* 0x00 */ __GLbuffer buf;
    /* 0x1C */ char pad1C[0x24];                    /* maybe part of buf[2]? */
    /* 0x40 */ ? (*unk40)(__GLstencilBuffer *, __GLcontext *); /* inferred */
    /* 0x44 */ char pad44[0x30];                    /* maybe part of unk40[0xD]? */
    /* 0x74 */ void (*clear)(__GLstencilBuffer *, s64, __GLcontext *);
} __GLstencilBuffer;                                /* size = 0x78 */

struct gr2_hq2_fifo {
    /* 0x0000 */ char pad0[0x200C];
    /* 0x200C */ s32 unk200C;                       /* inferred */
    /* 0x2010 */ s32 unk2010;                       /* inferred */
    /* 0x2014 */ char pad2014[4];
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
    /* 0x2060 */ char pad2060[0x20];                /* maybe part of line_width[9]? */
    /* 0x2080 */ s32 unk2080;                       /* inferred */
    /* 0x2084 */ char pad2084[0x10];                /* maybe part of unk2080[5]? */
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
    /* 0x20EC */ f32 unk20EC;                       /* inferred */
    /* 0x20F0 */ s32 unk20F0;                       /* inferred */
    /* 0x20F4 */ char pad20F4[0xDC];                /* maybe part of unk20F0[0x38]? */
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

? __glexpim_dispatchTable(?, ?, s32, s32);          /* extern */
? strcat(void *, void *, u8);                       /* extern */
? strcpy(void *, ? *);                              /* extern */
extern ? __glExpListExecTable;
extern ? __glListExecTable;
extern ? __gl_GenericDlOps;
extern ? __gl_varray_funcs;
extern ? __glexpim_colorDispatchTable;
extern ? __glexpim_normalDispatchTable;
extern ? __glexpim_rasterPosDispatchTable;
extern ? __glexpim_rectDispatchTable;
extern ? __glexpim_texCoordDispatchTable;
extern ? __glexpim_vertexDispatchTable;
extern ? __glexplc_colorDispatchTable;
extern ? __glexplc_dispatchTable;
extern ? __glexplc_normalDispatchTable;
extern ? __glexplc_rasterPosDispatchTable;
extern ? __glexplc_rectDispatchTable;
extern ? __glexplc_texCoordDispatchTable;
extern ? __glexplc_vertexDispatchTable;
extern ? sub_0da60000;
extern ? sub_0dbf0000;

void __glExpIoctl(__GLcontext *gc, u32 arg1, ...) {
    ioctl((s32) gc, arg1);
}

void GetBoardInfo(void *arg0) {
    s64 sp50;
    ? sp10;
    __GLcontext *temp_a0;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 var_a0;
    s32 var_a3;
    void *temp_a0_2;

    temp_a0 = arg0->unk7B10;
    __glExpIoctl(temp_a0, temp_a0, 0x66, sp, arg0->unk20(), &sp10, 0x3C);
    if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
        arg0->unk14(arg0, &sub_0dbf0000 - 0x4FB0);
    }
    if (sp3E != 4) {
        if (sp3E != 5) {
            strcpy(arg0 + 0x7B20, &sp10);
        } else {
            arg0->unk7B20 = (s32) *(saved_reg_gp - 0x5848);
        }
    } else {
        arg0->unk7B20 = (s32) *(saved_reg_gp - 0x5850);
    }
    switch (sp46) {                                 /* irregular */
    case 2:
        if (sp39 == 0x18) {
            if (sp3C != 0) {
                strcat(arg0 + 0x7B20, saved_reg_gp - 0x5828, sp46);
            }
        }
        break;
    case 4:
        if ((sp39 == 0x18) && (sp3C != 0)) {
            strcat(arg0 + 0x7B20, saved_reg_gp - 0x5820, sp46);
        } else {
            strcat(arg0 + 0x7B20, saved_reg_gp - 0x5818, sp46);
        }
        break;
    case 8:
        if (sp39 == 0x18) {
            if (sp3C != 0) {
                strcat(arg0 + 0x7B20, &sub_0dbf0000 - 0x4F98, sp46);
            }
        }
        break;
    case 1:
        temp_a0_2 = arg0 + 0x7B20;
        sp50 = (s64) temp_a0_2;
        strcat(temp_a0_2, saved_reg_gp - 0x5840, sp46);
        if (sp39 == 0x18) {
            strcat((void *) sp50, saved_reg_gp - 0x5838);
        }
        if (sp3C != 0) {
            strcat((void *) sp50, saved_reg_gp - 0x5830);
        }
        break;
    }
    var_a3 = 0x18;
    if (sp3C != 0) {
        if ((arg0->unkC25 != 0) && (temp_a4 = arg0->unkC38, ((temp_a4 < 0x19) != 0))) {
            arg0->unk7B18 = temp_a4;
            arg0->unk7B4D = 1U;
            var_a3 = 0x18 - temp_a4;
        } else {
            arg0->unk7B18 = 0;
            arg0->unk7B4D = 0U;
        }
        var_a0 = 0;
        if ((arg0->unkC26 != 0) && (temp_a4_2 = arg0->unkC3C, ((var_a3 < temp_a4_2) == 0))) {
            arg0->unk7B1C = temp_a4_2;
            var_a0 = 1;
            arg0->unk7B4E = 1;
        } else {
            arg0->unk7B1C = 0;
            goto block_18;
        }
    } else {
        arg0->unk7B1C = 0;
        arg0->unk7B18 = 0;
        arg0->unk7B4D = 0U;
        var_a0 = 0;
block_18:
        arg0->unk7B4E = 0;
    }
    if ((arg0->unkC25 != 0) && (arg0->unkC26 != 0) && (arg0->unk7B4D != var_a0)) {
        arg0->unk7B4E = 0;
        arg0->unk7B4D = 0U;
    }
}

void GetPixModeValue(void *arg0) {
    s64 sp0;
    s32 temp_a3;
    s32 temp_a3_2;

    if (arg0->unkC20 != 0) {
        temp_a3 = arg0->unkC4C + (arg0->unkC44 + arg0->unkC48);
        switch (temp_a3) {                          /* switch 1; irregular */
        default:                                    /* switch 1 */
            sp0 = 0;
            if (temp_a3 != 4) {
                arg0->unk14(&sub_0dbf0000 - 0x4F88, 8, temp_a3);
            } else {
                sp0 = 0;
            }
            break;
        case 24:                                    /* switch 1 */
            sp0 = 4;
            break;
        case 12:                                    /* switch 1 */
            sp0 = 2;
            break;
        case 8:                                     /* switch 1 */
            sp0 = 1;
            break;
        }
    } else {
        temp_a3_2 = arg0->unkC40;
        switch (temp_a3_2) {                        /* switch 2; irregular */
        default:                                    /* switch 2 */
            sp0 = 0;
            if (temp_a3_2 != 2) {
                arg0->unk14(&sub_0dbf0000 - 0x4F68, 0xC, temp_a3_2);
            } else {
                sp0 = 0xB;
            }
            break;
        case 12:                                    /* switch 2 */
            sp0 = 0xA;
            break;
        case 8:                                     /* switch 2 */
            sp0 = 9;
            break;
        case 4:                                     /* switch 2 */
            sp0 = 8;
            break;
        }
    }
}

void __glExpAllocAccum(__GLcontext *gc, s32 arg1, ...) {
    gc->accumBuffer.unk38(arg1, gc->constants.unk84, gc->constants.unk88);
}

void __glExpUpdateViewport(__GLcontext *gc, ...) {
    f32 temp_f0;
    f32 temp_f3;

    __glUpdateViewport();
    temp_f3 = (f32) gc->state.viewport.y;
    temp_f0 = (f32) gc->state.viewport.x;
    HQ2_FIFO.unk20EC = 1.0f;
    HQ2_FIFO.data_port.w = (bitwise u32) temp_f0;
    HQ2_FIFO.data_port.w = (bitwise u32) ((f32) (gc->state.viewport.width - 1) + temp_f0);
    HQ2_FIFO.data_port.w = (bitwise u32) temp_f3;
    HQ2_FIFO.data_port.w = (bitwise u32) ((f32) (gc->state.viewport.height - 1) + temp_f3);
    HQ2_FIFO.data_port.w = (bitwise u32) gc->state.viewport.zScale;
    HQ2_FIFO.data_port.w = (bitwise u32) gc->state.viewport.zCenter;
}

void ApplyViewport(__GLcontext *arg0) {
    __glFindWindowSize();
    __glExpUpdateViewport(arg0, arg0);
}

void ApplyScissor(void *arg0) {
    s32 var_a2;
    u32 var_a3;
    u32 var_a4;
    u32 var_a5;

    var_a2 = 0;
    var_a4 = 0;
    if (arg0->unk6A0 & 0x4000) {
        var_a4 = arg0->unk970;
        var_a2 = arg0->unk96C;
        var_a5 = (arg0->unk978 + var_a4) - 1;
        var_a3 = (arg0->unk974 + var_a2) - 1;
    } else {
        var_a3 = 0x7FF;
        var_a5 = 0x7FF;
    }
    HQ2_FIFO.unk20F0 = var_a2;
    HQ2_FIFO.data_port.w = var_a4;
    HQ2_FIFO.data_port.w = var_a3;
    HQ2_FIFO.data_port.w = var_a5;
}

void __glExpSetPixWritemask(__GLcontext *gc, ...) {
    enum GLenum temp_a5;
    s32 temp_a5_2;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7;
    u8 temp_a3;

    temp_a3 = gc->modes.rgbMode;
    if (temp_a3 != 0) {
        var_a2 = gc->modes.blueBits + (gc->modes.redBits + gc->modes.greenBits);
    } else {
        var_a2 = gc->modes.indexBits;
    }
    temp_a5 = gc->state.raster.drawBuffer;
    var_a4 = 0xFF;
    var_a7 = 0xFF;
    if (temp_a5 != GL_ZERO) {
        if (temp_a3 != 0) {
            if (gc->state.raster.rMask == 0) {
                var_a7 = 0;
            }
            var_a6 = 0xFF;
            if (gc->state.raster.gMask == 0) {
                var_a6 = 0;
            }
            if (gc->state.raster.bMask == 0) {
                var_a4 = 0;
            }
            switch (var_a2) {                       /* switch 1; irregular */
            default:                                /* switch 1 */
                var_a3 = sp0;
                if (var_a2 == 0x18) {
                    var_a3 = (var_a7 & 0xFF) | (((var_a6 & 0xFF) << 8) | ((var_a4 & 0xFF) << 0x10));
                }
                break;
            case 4:                                 /* switch 1 */
                var_a3 = ((u32) (var_a7 & 0x80) >> 4) | ((u32) (var_a6 & 0xC0) >> 5) | ((u32) (var_a4 & 0x80) >> 7);
                break;
            case 8:                                 /* switch 1 */
                var_a3 = (var_a7 & 0xE0) | ((u32) (var_a4 & 0xC0) >> 3) | ((u32) (var_a6 & 0xE0) >> 5);
                break;
            case 12:                                /* switch 1 */
                var_a3 = (var_a7 & 0xF0) | ((var_a4 & 0xF0) * 0x10) | ((u32) (var_a6 & 0xF0) >> 4);
                break;
            case 16:                                /* switch 1 */
                var_a3 = ((var_a7 & 0xF8) << 8) | ((var_a6 & 0xFC) * 8) | ((u32) (var_a4 & 0xF8) >> 3);
                break;
            }
        } else {
            var_a3 = gc->state.raster.writeMask;
        }
    } else {
        var_a3 = 0;
    }
    var_a6_2 = var_a3;
    if (gc->modes.doubleBufferMode != 0) {
        switch (temp_a5) {                          /* switch 2; irregular */
        case GL_FRONT:                              /* switch 2 */
            var_a6_2 <<= var_a2;
            break;
        case GL_BACK:                               /* switch 2 */
            var_a3 <<= var_a2;
            break;
        case GL_FRONT_AND_BACK:                     /* switch 2 */
            var_a3 |= var_a3 << var_a2;
            var_a6_2 = var_a3;
            break;
        }
    }
    temp_a5_2 = gc->modes.maxAuxBuffers;
    if (temp_a5_2 > 0) {
        if ((gc->modes.indexBits == 2) && (temp_a5_2 == 1)) {
            var_a3 *= 4;
        }
        HQ2_FIFO.unk200C = var_a3;
        HQ2_FIFO.color_writemask.w = 0;
        HQ2_FIFO.color_writemask.w = 0;
    } else {
        HQ2_FIFO.unk200C = 0;
        HQ2_FIFO.color_writemask.w = (u32) var_a3;
        HQ2_FIFO.color_writemask.w = (u32) var_a6_2;
    }
}

void __glExpSetReadSource(__GLcontext *gc, ...) {
    u32 sp0;
    enum GLenum temp_a4;
    s32 temp_a4_2;
    u32 var_a0;

    if (gc->modes.doubleBufferMode != 0) {
        temp_a4 = gc->state.raster.drawBuffer;
        switch (temp_a4) {
        case GL_FRONT:
            goto block_3;
        case GL_BACK:
            sp0 = 1;
            break;
        case GL_FRONT_AND_BACK:
            goto block_3;
        case GL_AUX0:
        case GL_AUX1:
        case GL_AUX2:
        case GL_AUX3:
            if ((temp_a4 - 0x409) < gc->modes.numAuxBuffers) {
                goto block_3;
            }
            break;
        }
    } else {
block_3:
        sp0 = 0;
    }
    temp_a4_2 = gc->modes.maxAuxBuffers;
    if (temp_a4_2 > 0) {
        var_a0 = 0;
        if (gc->modes.indexBits == 2) {
            if (temp_a4_2 == 1) {
                var_a0 = 1;
            }
        }
        HQ2_FIFO.buffer_mode.w = 1;
        HQ2_FIFO.buffer_mode.w = var_a0;
    } else {
        HQ2_FIFO.buffer_mode.w = 0;
        HQ2_FIFO.buffer_mode.w = sp0;
    }
}

void __glExpSetReadBuffer(__GLcontext *gc, ...) {
    u32 sp0;
    s32 temp_a3;
    s32 temp_a3_2;
    u32 var_a0;

    if (gc->modes.doubleBufferMode != 0) {
        temp_a3 = gc->state.pixel.unk214;
        switch (temp_a3) {                          /* irregular */
        case 0x409:
        case 0x40A:
        case 0x40B:
        case 0x40C:
            if ((temp_a3 - 0x409) < gc->modes.numAuxBuffers) {
                sp0 = 0;
            }
            break;
        case 0x404:
            sp0 = 0;
            break;
        case 0x405:
            sp0 = 1;
            break;
        }
    } else {
        sp0 = 0;
    }
    temp_a3_2 = gc->modes.maxAuxBuffers;
    if (temp_a3_2 > 0) {
        var_a0 = 0;
        if (gc->modes.indexBits == 2) {
            if (temp_a3_2 == 1) {
                var_a0 = 1;
            }
        }
        HQ2_FIFO.buffer_mode.w = 1;
        HQ2_FIFO.buffer_mode.w = var_a0;
    } else {
        HQ2_FIFO.buffer_mode.w = 0;
        HQ2_FIFO.buffer_mode.w = sp0;
    }
}

void __glExpUpdateHardwareState(__GLcontext *gc, ...) {
    __glExpPassDrawBuffer(gc);
    __glExpEnableDither(gc, gc);
    __glExpPassBlendFunc(gc, gc);
    __glExpEnableBlendFunc(gc, gc);
    __glExpPassLogicOp(gc, gc);
    __glExpEnableLogicOp(gc, gc);
    __glExpPassColorMask(gc, gc);
    __glExpPassIndexMask(gc, gc);
    __glExpPassColor(gc, gc);
    __glExpPassIndex(gc, gc);
    __glExpPassNormal(gc, gc);
    __glExpPassRasterPosData(gc, gc);
    __glExpPassEdgeFlag(gc, gc);
    __glExpPassDepthFunc(gc, gc);
    __glExpPassDepthMask(gc, gc);
    __glExpEnableDepthTest(gc, gc);
    __glExpEnableFog(gc, gc);
    __glExpPassFog(gc, gc);
    __glExpPassShadeModel(gc, gc);
    __glExpUpdateLightingState(gc, gc);
    __glExpPassLineWidth(gc, gc);
    __glExpPassLineStipple(gc, gc);
    __glExpEnableLineStipple(gc, gc);
    __glExpEnableLineSmooth(gc, gc);
    __glExpEnablePointSmooth(gc, gc);
    __glExpPassCullFace(gc, gc);
    __glExpEnableCullFace(gc, gc);
    __glExpPassFrontFace(gc, gc);
    __glExpEnablePolygonStipple(gc, gc);
    __glExpPassPolygonMode(gc, gc);
    __glExpPassPolygonOffset(gc, gc);
    gc->procs.unk348(gc);
    ((? (*)(__GLcontext *)) gc->procs.table[0x13])(gc);
    __glExpPassStencilMode(gc, gc);
    __glExpEnableStencilTest(gc, gc);
    __glExpPassStencilMask(gc, gc);
    __glExpUpdateMatrixState(gc, gc);
    __glExpEnableClipPlanes(gc, gc);
    __glExpPassClipPlanes(gc, gc);
    __glExpEnableNormalize(gc, gc);
    ((? (*)(__GLcontext *)) gc->procs.table[0x14])(gc);
    gc->hwFlags = 1;
}

void __glExpPassMachineState(__GLcontext *gc, ...) {
    __glExpPassColor(gc);
    __glExpPassIndex(gc, gc);
    __glExpPassNormal(gc, gc);
    __glExpPassRasterPosData(gc, gc);
    __glExpPassEdgeFlag(gc, gc);
}

void __glExpGetMachineState(__GLcontext *gc, ...) {
    s64 sp0;

    sp0 = (s64) gc;
    if (gc->fastMode == 0) {
        __glExpGetColor((__GLcontext *) sp0, sp0);
        __glExpGetIndex((__GLcontext *) sp0, sp0);
        __glExpGetNormal((__GLcontext *) sp0, sp0);
        __glExpGetRasterPosData((__GLcontext *) sp0, sp0);
        __glExpGetEdgeFlag((__GLcontext *) sp0, sp0);
    }
}

void SwapBuffers(__GLcontext *arg0) {
    s32 sp10;
    u32 spC;
    s32 sp8;
    s32 sp0;
    __GLcolorBuffer *temp_v0;
    __GLcontext *temp_a0_2;
    s32 temp_a0;

    if (arg0->modes.doubleBufferMode != 0) {
        temp_v0 = arg0->front;
        arg0->front = arg0->back;
        arg0->back = temp_v0;
        arg0->drawBuffer = temp_v0;
        arg0->swapInterval = 1 - arg0->swapInterval;
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
        HQ2_STATUS_PORT.read_ack.w = 0;
        HQ2_FIFO.swap_sync.w = 0;
        HQ2_FIFO.swap_buffers.w = arg0->swapInterval;
        temp_a0 = arg0->unk7B40;
        if (arg0->swapInterval != 0) {
            arg0->unk7B40 = (s32) (temp_a0 | 4);
        } else {
            arg0->unk7B40 = (s32) (temp_a0 & ~4);
        }
        sp8 = arg0->boardIndex;
        spC = arg0->swapInterval;
        sp10 = arg0->unk7B40;
        temp_a0_2 = arg0->fd;
        __glExpIoctl(temp_a0_2, temp_a0_2, 0x3ED, &sp8);
        if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
            __glExpIoctl(arg0, arg0, &sub_0dbf0000 - 0x4F20);
        }
    }
}

void Finish(void) {
    s32 sp0;

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
    HQ2_STATUS_PORT.read_ack.w = 0;
}

void Flush(void) {
    HQ2_FIFO.swap_sync.w = 0;
}

void DestroyContext(__GLcontext *arg0) {
    ? (*temp_t9)(__GLaccumBuffer *, __GLcontext *);
    ? (*temp_t9_2)(__GLdepthBuffer *, __GLcontext *, u8);
    ? (*temp_t9_3)(__GLstencilBuffer *, __GLcontext *);
    __GLcontext *var_s1;
    u8 temp_a2;

    var_s1 = __glCurrentContext;
    __glCurrentContext = arg0;
    __glFreeAttributeState();
    arg0->imports.getDrawablePrivate(arg0);
    if (arg0->modes.haveAccumBuffer != 0) {
        temp_t9 = arg0->accumBuffer.unk40;
        if (temp_t9 != NULL) {
            temp_t9(&arg0->accumBuffer, arg0);
        }
    }
    if (arg0->modes.haveDepthBuffer != 0) {
        temp_a2 = arg0->haveZ;
        if (temp_a2 == 0) {
            temp_t9_2 = arg0->depthBuffer.unk40;
            if (temp_t9_2 != NULL) {
                temp_t9_2(&arg0->depthBuffer, arg0, temp_a2);
            }
        }
    }
    if (arg0->modes.haveStencilBuffer != 0) {
        if (arg0->haveStencil != 0) {

        } else {
            temp_t9_3 = arg0->stencilBuffer.unk40;
            if (temp_t9_3 != NULL) {
                temp_t9_3(&arg0->stencilBuffer, arg0);
            }
        }
    }
    __glExpFreeLighting(arg0, arg0);
    __glExpFreePixelState(arg0, arg0);
    __glDestroyContext(arg0);
    if (arg0 == var_s1) {
        var_s1 = NULL;
    }
    __glCurrentContext = var_s1;
}

void LoseCurrent(void *arg0) {
    s64 sp0;

    if ((arg0->unkC14 != 0x1C00) || (sp0 = (s64) arg0, (__glBeginMode == 1))) {
        return;
    }
    __glLoseCurrentBuffers(sp0, sp0->unk7B48);
    sp0->unkC10 = (u32) __glBeginMode;
    sp0->unk7C94 = (s32) *(s32 *)0x101C;
    __glCurrentContext = NULL;
}

void InitFnPtrs(void *arg0) {
    arg0->unk7B4C = 0;
    arg0->unk30BC = __glSpanRenderStencil2;
    arg0->unk3180 = __glColorTableSGI;
    arg0->unk30AC = __glSpanRenderRGBA2;
    arg0->unk30B8 = __glSpanRenderStencil;
    arg0->unk309C = __glSpanReadStencil2;
    arg0->unk30A8 = __glSpanRenderRGBA;
    arg0->unk308C = __glSpanReadRGBA2;
    arg0->unk3098 = __glSpanReadStencil;
    arg0->unk3128 = __glGenericPickReadImage;
    arg0->unk3088 = __glSpanReadRGBA;
    arg0->unk2E30 = __glGenericPickTriangleProcs;
    arg0->unk3124 = __glGenericPickCopyImage;
    arg0->unk2E34 = __glGenericPickRenderBitmapProcs;
    arg0->unk2E1C = __glGenericPickTextureProcs;
    arg0->unk2E5C = __glGenericPickMvpMatrixProcs;
    arg0->unk2E28 = __glGenericPickPointProcs;
    arg0->unk2E24 = __glGenericPickTransformProcs;
    arg0->unk2E58 = __glGenericPickInvTransposeProcs;
    arg0->unk2E44 = __glExpPickBufferProcs;
    arg0->unk2E20 = __glGenericPickFogProcs;
    arg0->unk3154 = __glRasterPos3;
    arg0->unk2E14 = __glGenericPickBlendProcs;
    arg0->unk2EC8 = __glOddTStripVertex;
    arg0->unk3150 = __glRasterPos2;
    arg0->unk2F20 = __glBeginQuads;
    arg0->unk2ECC = __glEvenTStripVertex;
    arg0->unk2F18 = __glBeginTStrip;
    arg0->unk2F24 = __glBeginQStrip;
    arg0->unk2F10 = __glBeginLStrip;
    arg0->unk2F28 = __glBeginPolygon;
    arg0->unk2E74 = __glMipsMultMatrix;
    arg0->unk2F0C = __glBeginLLoop;
    arg0->unk2E80 = __glLoadIdentityModelViewMatrix;
    arg0->unk2E70 = __glMakeIdentity;
    arg0->unk2E10 = __glGenericValidate;
    arg0->unk2E7C = __glPopModelViewMatrix;
    arg0->unk2EE0 = __glExpDoEvalCoord2;
    arg0->unk2F44 = __glClipPolygon;
    arg0->unk2E00 = (void *) (&sub_0da60000 - 0x6C18);
    arg0->unk2EDC = __glExpDoEvalCoord1;
    arg0->unk317C = &__gl_varray_funcs;
    arg0->unk2E94 = __glComputeClipBox;
    arg0->unk30B4 = __glSpanRenderDepth2;
    arg0->unk30B0 = __glSpanRenderDepth;
    arg0->unk30A4 = __glSpanRenderCI2;
    arg0->unk30A0 = __glSpanRenderCI;
    arg0->unk3094 = __glSpanReadDepth2;
    arg0->unk3090 = __glSpanReadDepth;
    arg0->unk3084 = __glSpanReadCI2;
    arg0->unk3080 = __glSpanReadCI;
    arg0->unk2E60 = __glGenericPickDepthProcs;
    arg0->unk2E50 = __glGenericPickVertexProcs;
    arg0->unk2E48 = __glGenericPickStoreProcs;
    arg0->unk2E4C = __glExpPickSpanProcs;
    arg0->unk2E38 = __glExpPickPixelProcs;
    arg0->unk2E40 = __glGenericPickParameterClipProcs;
    arg0->unk2E54 = __glGenericPickMatrixProcs;
    arg0->unk2E2C = __glExpPickLineProcs;
    arg0->unk2E18 = __glGenericPickColorMaterialProcs;
    arg0->unk2E3C = __glGenericPickClipProcs;
    arg0->unk2E64 = __glExpPickAllProcs;
    arg0->unk3158 = __glRasterPos4;
    arg0->unk2EC4 = __glSecondLinesVertex;
    arg0->unk2EC0 = __glFirstLinesVertex;
    arg0->unk2EB4 = __glNop;
    arg0->unk2F2C = __glEndPrim;
    arg0->unk2F14 = __glBeginTriangles;
    arg0->unk2F1C = __glBeginTFan;
    arg0->unk2F04 = __glBeginPoints;
    arg0->unk2F08 = __glBeginLines;
    arg0->unk2E88 = __glMipsNormalize;
    arg0->unk2E84 = __glComputeInverseTranspose;
    arg0->unk2E6C = __glInvertTransposeMatrix;
    arg0->unk2E68 = __glCopyMatrix;
    arg0->unk2E78 = __glPushModelViewMatrix;
    arg0->unk3178 = __glExpConvertStipple;
    arg0->unk2F4C = __glRect;
    arg0->unk30E4 = __glDrawBitmap;
    arg0->unk54 = (void *) (&sub_0da60000 - 0x6C08);
    arg0->unk78 = (void *) (&sub_0da60000 - 0x6DF4);
    arg0->unk2E04 = (void *) (&sub_0da60000 - 0x6C90);
    arg0->unk2E90 = (void *) (&sub_0da60000 - 0x7558);
    arg0->unk2E8C = (void *) (&sub_0da60000 - 0x7510);
}

void InitBuffers(void *arg0) {
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a3;
    s32 var_s1;
    s32 var_s2;
    u8 temp_a2;
    u8 temp_a2_2;
    u8 temp_a2_3;
    u8 temp_a2_4;

    temp_a3 = arg0 + 0x77CC;
    __glBeginMode = 2;
    arg0->unk77C4 = temp_a3;
    arg0->unk2DF4 = (s32) (arg0->unk2DF4 | 0xFF);
    if (arg0->unkC22 != 0) {
        temp_a2 = arg0->unkC21;
        arg0->unk77C8 = (__GLcontext *) (arg0 + 0x78A8);
        if (temp_a2 != 0) {
            __glExpInitCI(temp_a3, temp_a3, arg0, temp_a2, temp_a3);
            temp_a0 = arg0->unk77C8;
            __glExpInitCI(temp_a0, temp_a0, arg0);
        } else {
            __glExpInitRGB(temp_a3, temp_a3, arg0, temp_a2, temp_a3);
            temp_a0_2 = arg0->unk77C8;
            __glExpInitRGB(temp_a0_2, temp_a0_2, arg0);
        }
    } else {
        temp_a2_2 = arg0->unkC21;
        if (temp_a2_2 != 0) {
            __glExpInitCI(temp_a3, temp_a3, arg0, temp_a2_2, temp_a3);
        } else {
            __glExpInitRGB(temp_a3, temp_a3, arg0, temp_a2_2, temp_a3);
        }
    }
    if (arg0->unkC6C > 0) {
        var_s2 = 0;
        var_s1 = 0;
loop_7:
        temp_a2_3 = arg0->unkC21;
        temp_a0_3 = arg0->unk7984 + var_s1;
        if (temp_a2_3 == 0) {
            __glExpInitRGB(temp_a0_3, temp_a0_3, arg0, temp_a2_3);
        } else {
            __glExpInitCI(temp_a0_3, temp_a0_3, arg0, temp_a2_3);
        }
        var_s2 += 1;
        var_s1 += 0xDC;
        if (var_s2 < arg0->unkC6C) {
            goto loop_7;
        }
    }
    arg0->unk11C8 = 0;
    arg0->unk11CC = 1;
    if (arg0->unkC24 != 0) {
        __glInitAccum64(arg0 + 0x7A84, arg0);
        arg0->unk7B08 = __glExpAllocAccum;
    }
    temp_a2_4 = arg0->unkC25;
    temp_a0_4 = arg0 + 0x7A00;
    if (temp_a2_4 != 0) {
        if (arg0->unk7B4D != 0) {
            __glExpInitDepth(temp_a0_4, temp_a0_4, arg0, temp_a2_4);
        } else {
            __glInitDepth(temp_a0_4, arg0, temp_a2_4);
        }
    } else {
        arg0->unk7A4C = 0x7FFFFF80;
    }
    temp_a0_5 = arg0 + 0x7988;
    if (arg0->unkC26 != 0) {
        if (arg0->unk7B4E != 0) {
            __glExpInitStencil(temp_a0_5, temp_a0_5, arg0);
        } else {
            __glInitStencil8(temp_a0_5, arg0);
        }
    }
    __glUpdateDepthRange(arg0);
}

void MakeCurrent(__GLcontext *arg0) {
    s64 sp30;
    s64 sp10;
    s32 spC;
    s32 sp8;
    ? sp4;
    ? *temp_v0_2;
    s32 temp_a2_2;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 *temp_a2;
    s64 *temp_a2_3;
    s64 *temp_a3_2;
    s64 *temp_at;
    s64 *temp_at_2;
    s64 *temp_at_3;
    s64 *temp_v1;
    s64 *temp_v1_2;
    s64 *temp_v1_3;
    s64 *temp_v1_4;
    u32 temp_a3;
    void *temp_a1;
    void *temp_a6;

    __glCurrentContext = arg0;
    __glBeginMode = arg0->beginMode;
    *(s32 *)0x101C = arg0->unk7C94;
    temp_v0 = ((s32 (*)()) arg0->imports.other)();
    var_a0 = 0;
    if (temp_v0 == 0) {
        var_a1 = 0x101;
        temp_v0_2 = &arg0->unk1DE0;
        arg0->unk15CC = temp_v0_2;
        temp_a6 = &sub_0dbf0000 + 0x2338;
        do {
            temp_at = var_a0 + (temp_a6 + 0x808);
            temp_v1 = var_a0 + &arg0->unk1DE0;
            var_a0 += 8;
            var_a1 -= 1;
            *temp_v1 = *temp_at;
        } while (var_a1 > 0);
        var_a1_2 = 0x101;
        var_a0_2 = 0;
        do {
            temp_v1_2 = var_a0_2 + temp_a6;
            temp_a2 = var_a0_2 + &arg0->unk15D0;
            var_a0_2 += 8;
            var_a1_2 -= 1;
            *temp_a2 = *temp_v1_2;
        } while (var_a1_2 > 0);
        __glBeginMode = 2;
        sp10 = (s64) temp_v0_2;
        temp_a3 = arg0->dirtyMask | 0x80;
        temp_a2_2 = arg0->gcState & 1;
        arg0->dirtyMask = temp_a3;
        if (temp_a2_2 != 0) {
            goto block_6;
        }
        arg0->unk7C90 = (void *)0x2000;
        __glExpUpdateHardwareState(arg0, arg0, 0x2000, temp_a2_2, temp_a3, 0x2000, temp_a6, temp_a6);
        temp_a1 = arg0->unk7C90;
        arg0->fd = M2C_ERROR(/* Read from unset register $v0 */);
        temp_v0_3 = arg0->imports.fprintf(arg0, temp_a1, M2C_ERROR(/* Read from unset register $a2 */), arg0, temp_a1);
        arg0->boardIndex = temp_v0_3;
        if (temp_v0_3 >= 0) {
            __glExpIoctl(arg0, arg0);
block_6:
            arg0->fd = arg0->imports.fclose(arg0, arg0->unk7C90);
            ((? (*)(__GLcontext *)) arg0->imports.wscx)(arg0);
            if (!(arg0->gcState & 1)) {
                HQ2_FIFO.context_flush.w = 0;
                __glExpIoctl(arg0, arg0);
                HQ2_FIFO.unk2010 = M2C_ERROR(/* Read from unset register $v0 */);
                HQ2_FIFO.unk2080 = 0;
                if (arg0->haveStencil != 0) {
                    HQ2_FIFO.stencil_config.w = (u32) arg0->modes.stencilBits;
                } else {
                    HQ2_FIFO.stencil_config.w = 0;
                }
            }
            if (!(arg0->gcState & 2)) {
                __glExpGetMachineState(arg0, arg0);
            }
            __glMakeCurrentBuffers(arg0, &arg0->swapInterval);
            HQ2_FIFO.swap_sync.w = 0;
            HQ2_FIFO.swap_buffers.w = arg0->swapInterval;
            if (!(arg0->gcState & 2)) {
                sp30 = M2C_ERROR(/* Read from unset register $v0 */);
                __glExpGetMachineState(arg0, arg0);
            }
            if (arg0->gcState & 6) {
                if (M2C_ERROR(/* Read from unset register $v0 */) & 0xFF) {
                    __glFindWindowSize(arg0);
                }
                __glExpUpdateViewport(arg0, arg0);
            } else {
                __glSoftResetContext(arg0);
                arg0->imports.atoi(arg0, sp);
                __glexpim_dispatchTable(0, 0, sp8, spC);
                __glexpim_dispatchTable(0, 0, sp8, spC);
            }
            if (!(arg0->gcState & 1)) {
                arg0->constants.renderer = arg0->rendererString;
                __glExpPassMachineState(arg0, arg0);
                __glExpInitPrimDispatchState(arg0, arg0);
                __glExpInitLighting(arg0, arg0);
                __glExpInitPixelState(arg0, arg0);
                arg0->validate(arg0);
            }
            __glContextSetColorScales(arg0);
            __glExpLoadPrimDispatchVectors(arg0, arg0);
            if (arg0->hwFlags == 0) {
                __glExpUpdateHardwareState(arg0, arg0);
            }
            temp_v0_4 = arg0->unk1250;
            if (*(s32 *)0x1040 != 0) {
                if (temp_v0_4 != 0) {
                    var_a0_3 = 0x101;
                    var_v0 = 0;
                    arg0->unk15CC = &arg0->unk25E8;
                    do {
                        temp_v1_3 = var_v0 + &arg0->unk1DE0;
                        temp_at_2 = var_v0 + &arg0->unk15D0;
                        var_v0 += 8;
                        var_a0_3 -= 1;
                        *temp_v1_3 = *temp_at_2;
                    } while (var_a0_3 > 0);
                } else {
                    arg0->unk15CC = (? *) sp10;
                }
            } else {
                var_a0_4 = 0x101;
                if (temp_v0_4 != 0) {
                    var_v0_2 = 0;
                    arg0->unk15CC = &arg0->unk25E8;
                    do {
                        temp_at_3 = var_v0_2 + 0x1048;
                        temp_a3_2 = var_v0_2 + &arg0->unk15D0;
                        var_v0_2 += 8;
                        var_a0_4 -= 1;
                        *temp_at_3 = *temp_a3_2;
                    } while (var_a0_4 > 0);
                } else {
                    var_v0_3 = 0x101;
                    var_a0_5 = 0;
                    arg0->unk15CC = (? *)0x1048;
                    do {
                        temp_a2_3 = var_a0_5 + 0x1048;
                        temp_v1_4 = var_a0_5 + &arg0->unk1DE0;
                        var_a0_5 += 8;
                        var_v0_3 -= 1;
                        *temp_a2_3 = *temp_v1_4;
                    } while (var_v0_3 > 0);
                }
            }
            arg0->gcState = (arg0->gcState | 3) & ~4;
            return;
        }
        __glContextSetColorScales(NULL, arg0);
        return;
    }
    *(void *)0x101C = -1;
    arg0->unk7C94 = -1;
    __glPixmapMakeCurrent(arg0, temp_v0, -1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c], gap at: 0x10. */
void __glExpCreateContext(__GLcontext *gc, s64 arg1, s32 arg2, ...) {
    s32 *temp_a3;
    s32 *temp_a3_10;
    s32 *temp_a3_2;
    s32 *temp_a3_3;
    s32 *temp_a3_4;
    s32 *temp_a3_5;
    s32 *temp_a3_6;
    s32 *temp_a3_7;
    s32 *temp_a3_8;
    s32 *temp_a3_9;
    s32 *temp_a4;
    s32 *temp_a4_2;
    s32 *temp_a4_3;
    s32 *temp_a4_4;
    s32 *temp_a4_5;
    s32 *temp_a4_6;
    s32 *temp_a4_7;
    s32 *temp_a4_8;
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_at_3;
    s32 *temp_at_4;
    s32 *temp_at_5;
    s32 *temp_at_6;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 *temp_v1_4;
    s32 *temp_v1_5;
    s32 *temp_v1_6;
    s32 *temp_v1_7;
    s32 *temp_v1_8;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_12;
    s32 var_a0_13;
    s32 var_a0_14;
    s32 var_a0_15;
    s32 var_a0_16;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_10;
    s32 var_a1_11;
    s32 var_a1_12;
    s32 var_a1_13;
    s32 var_a1_14;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_v0;
    s32 var_v0_2;
    void *temp_a4_9;
    void *temp_a5;
    void *temp_v0;
    void *temp_v0_2;

    unksp10 = arg1;
    unksp8 = (s64) gc;
    temp_v0 = gc->imports.calloc(NULL, 1U, 0x7C98U);
    var_a0 = 0x13;
    if (temp_v0 != NULL) {
        var_v0 = 0;
        do {
            temp_a3 = var_v0 + temp_v0;
            temp_v1 = var_v0 + unksp8;
            var_v0 += 4;
            var_a0 -= 1;
            *temp_a3 = *temp_v1;
        } while (var_a0 > 0);
        var_v0_2 = 0x16;
        var_a0_2 = 0;
        do {
            temp_a4 = var_a0_2 + (temp_v0 + 0xC1C);
            temp_a3_2 = var_a0_2 + unksp10;
            var_a0_2 += 4;
            var_v0_2 -= 1;
            *temp_a4 = *temp_a3_2;
        } while (var_v0_2 > 0);
        var_a1 = 0;
        var_a0_3 = 0x173;
        if (temp_v0->unkC38 >= 0x18) {
            temp_v0->unkC38 = 0x17;
        }
        temp_v0_2 = &sub_0dbf0000 + 0x2338;
        do {
            temp_v1_2 = var_a1 + &__glexplc_dispatchTable;
            temp_a3_3 = var_a1 + temp_v0_2;
            var_a1 += 4;
            var_a0_3 -= 1;
            *temp_a3_3 = *temp_v1_2;
        } while (var_a0_3 > 0);
        var_a1_2 = 0x18;
        var_a0_4 = 0;
        do {
            temp_a3_4 = var_a0_4 + &__glexplc_vertexDispatchTable;
            temp_a4_2 = var_a0_4 + (temp_v0_2 + 0x5CC);
            var_a0_4 += 4;
            var_a1_2 -= 1;
            *temp_a4_2 = *temp_a3_4;
        } while (var_a1_2 > 0);
        var_a0_5 = 0x2A;
        var_a1_3 = 0;
        do {
            temp_a4_3 = var_a1_3 + &__glexplc_colorDispatchTable;
            temp_at = var_a1_3 + (temp_v0_2 + 0x62C);
            var_a1_3 += 4;
            var_a0_5 -= 1;
            *temp_at = *temp_a4_3;
        } while (var_a0_5 > 0);
        var_a1_4 = 0xA;
        var_a0_6 = 0;
        do {
            temp_at_2 = var_a0_6 + &__glexplc_normalDispatchTable;
            temp_v1_3 = var_a0_6 + (temp_v0_2 + 0x6D4);
            var_a0_6 += 4;
            var_a1_4 -= 1;
            *temp_v1_3 = *temp_at_2;
        } while (var_a1_4 > 0);
        var_a1_5 = 0x20;
        var_a0_7 = 0;
        do {
            temp_v1_4 = var_a0_7 + &__glexplc_texCoordDispatchTable;
            temp_a3_5 = var_a0_7 + (temp_v0_2 + 0x6FC);
            var_a0_7 += 4;
            var_a1_5 -= 1;
            *temp_a3_5 = *temp_v1_4;
        } while (var_a1_5 > 0);
        var_a1_6 = 0x18;
        var_a0_8 = 0;
        do {
            temp_a3_6 = var_a0_8 + &__glexplc_rasterPosDispatchTable;
            temp_a4_4 = var_a0_8 + (temp_v0_2 + 0x77C);
            var_a0_8 += 4;
            var_a1_6 -= 1;
            *temp_a4_4 = *temp_a3_6;
        } while (var_a1_6 > 0);
        var_a0_9 = 8;
        var_a1_7 = 0;
        do {
            temp_a4_5 = var_a1_7 + &__glexplc_rectDispatchTable;
            temp_at_3 = var_a1_7 + (temp_v0_2 + 0x7DC);
            var_a1_7 += 4;
            var_a0_9 -= 1;
            *temp_at_3 = *temp_a4_5;
        } while (var_a0_9 > 0);
        var_a1_8 = 0x173;
        var_a0_10 = 0;
        do {
            temp_at_4 = var_a0_10 + __glexpim_dispatchTable;
            temp_v1_5 = var_a0_10 + (temp_v0_2 + 0x808);
            var_a0_10 += 4;
            var_a1_8 -= 1;
            *temp_v1_5 = *temp_at_4;
        } while (var_a1_8 > 0);
        var_a1_9 = 0x18;
        var_a0_11 = 0;
        do {
            temp_v1_6 = var_a0_11 + &__glexpim_vertexDispatchTable;
            temp_a3_7 = var_a0_11 + (temp_v0_2 + 0xDD4);
            var_a0_11 += 4;
            var_a1_9 -= 1;
            *temp_a3_7 = *temp_v1_6;
        } while (var_a1_9 > 0);
        var_a0_12 = 0x2A;
        var_a1_10 = 0;
        do {
            temp_a3_8 = var_a1_10 + &__glexpim_colorDispatchTable;
            temp_a4_6 = var_a1_10 + (temp_v0_2 + 0xE34);
            var_a1_10 += 4;
            var_a0_12 -= 1;
            *temp_a4_6 = *temp_a3_8;
        } while (var_a0_12 > 0);
        var_a1_11 = 0xA;
        var_a0_13 = 0;
        do {
            temp_a4_7 = var_a0_13 + &__glexpim_normalDispatchTable;
            temp_at_5 = var_a0_13 + (temp_v0_2 + 0xEDC);
            var_a0_13 += 4;
            var_a1_11 -= 1;
            *temp_at_5 = *temp_a4_7;
        } while (var_a1_11 > 0);
        var_a0_14 = 0x20;
        var_a1_12 = 0;
        do {
            temp_at_6 = var_a1_12 + &__glexpim_texCoordDispatchTable;
            temp_v1_7 = var_a1_12 + (temp_v0_2 + 0xF04);
            var_a1_12 += 4;
            var_a0_14 -= 1;
            *temp_v1_7 = *temp_at_6;
        } while (var_a0_14 > 0);
        var_a1_13 = 0x18;
        var_a0_15 = 0;
        do {
            temp_v1_8 = var_a0_15 + &__glexpim_rasterPosDispatchTable;
            temp_a3_9 = var_a0_15 + (temp_v0_2 + 0xF84);
            var_a0_15 += 4;
            var_a1_13 -= 1;
            *temp_a3_9 = *temp_v1_8;
        } while (var_a1_13 > 0);
        var_a0_16 = 8;
        var_a1_14 = 0;
        temp_a5 = temp_v0_2 + 0xFE4;
        do {
            temp_a3_10 = var_a1_14 + &__glexpim_rectDispatchTable;
            temp_a4_8 = var_a1_14 + temp_a5;
            var_a1_14 += 4;
            var_a0_16 -= 1;
            *temp_a4_8 = *temp_a3_10;
        } while (var_a0_16 > 0);
        temp_v0->unk122C = __glNop;
        temp_v0->unk1228 = __glNop;
        temp_v0->unkD8C = 0.125f;
        temp_v0->unkD80 = 0.125f;
        temp_v0->unkD88 = 10.0f;
        temp_v0->unkD7C = 10.0f;
        temp_v0->unkD84 = 0.5f;
        temp_v0->unkD28 = 0xB;
        temp_v0->unkD24 = 0xB;
        temp_v0->unkD20 = 0xB;
        temp_v0->unkD1C = 0xB;
        temp_v0->unkD18 = 0xB;
        temp_v0->unkD6C = 0xB;
        temp_v0->unkD64 = 0xB;
        temp_v0->unkD70 = 3;
        temp_v0->unkDB0 = 2;
        temp_v0->unkDA0 = 0x80;
        temp_v0->unkD90 = 0x1E;
        temp_v0->unk1230 = &__glListExecTable;
        temp_v0->unkD04 = 6;
        temp_v0->unkD14 = 0x800;
        temp_v0->unkD10 = 0x800;
        temp_v0->unkD78 = 0.5f;
        temp_v0->unk1224 = __glGenericDlistCompiler;
        temp_v0->unkDAC = 0xA;
        temp_v0->unkDA8 = 0xA;
        temp_v0->unkD9C = 0x10;
        temp_v0->unkD98 = 0x10;
        temp_v0->unkD74 = 0x40;
        temp_v0->unkD00 = 8;
        temp_v0->unkDA4 = 0x20;
        temp_v0->unkD94 = 0x10000;
        temp_v0->unkD0C = 1;
        temp_v0->unkD08 = 1;
        temp_v0->unkD30 = 0x1800;
        temp_v0->unkD2C = 0x1800;
        temp_v0->unk1238 = &__glExpListExecTable;
        temp_v0->unk1234 = &__gl_GenericDlOps;
        temp_v0->unk5C = (void *) (&sub_0da60000 - 0x65C8);
        temp_v0->unk1220 = __glExpDlistOptimizer;
        temp_a4_9 = &sub_0da60000 - 0x6AF8;
        temp_v0->unk58 = temp_a4_9;
        if (arg2 != 0) {
            __glShareDlist(temp_v0, arg2, __glNop, __glGenericDlistCompiler, temp_a4_9, temp_a5, &__glexpim_rectDispatchTable);
            __glShareTextureObjects(temp_v0, arg2);
        }
        __glEarlyInitContext(temp_v0);
        temp_v0->unk74 = __glExpCopyContext;
    }
}
