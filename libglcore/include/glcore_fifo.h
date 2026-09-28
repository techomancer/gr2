#ifndef __GLCORE_FIFO_H__
#define __GLCORE_FIFO_H__

/*
 * ============================================================================
 * SGI GR2 / HQ2 User-Space Virtual MMIO Apertures for libGLcore
 * ============================================================================
 *
 * WARNING: DO NOT REMOVE OR MODIFY THE LAYOUT OF THESE STRUCTS!
 *
 * These structures are REQUIRED for decompiling libGLcore.so using m2c.
 *
 * ARCHITECTURAL CONTEXT:
 * There are two distinct views of the GR2 / HQ2 FIFO and register space:
 *
 * 1. Physical Bus View (documented in HQ2.h):
 *    How registers and FIFO tokens actually look on the GIO bus to the hardware
 *    and kernel driver. On the bus:
 *      - Tokens 0x000..0x12C are command engine setup & status
 *      - Tokens 0x12D..0x162 are 2D rendering primitives & rasterops
 *      - Tokens 0x1E1..0x1F0 are GE context save/restore
 *      - Tokens 0x001..0x31DF are GL 3D tokens
 *
 * 2. User Virtual Aperture View (defined here in glcore_fifo.h):
 *    How libGLcore maps the graphics hardware into user-space virtual memory via
 *    the kernel graphics driver (/dev/graphics ioctl). The driver maps specific
 *    pages at fixed user virtual addresses:
 *      - 0x00010000: HQ2 Pixel Readback FIFO (HQ2_READ_FIFO)
 *      - 0x00040000: HQ2 Command FIFO RGB Aperture (HQ2_FIFO)
 *      - 0x00050000: HQ2 Command FIFO Color-Index Aperture (HQ2_FIFO_CI)
 *      - 0x00060000: HQ2 / VC1 Status & Acknowledge Port (HQ2_STATUS_PORT)
 *
 * In libGLcore's 0x00040000 / 0x00050000 mapping, the aperture has a 0x2000
 * byte bias relative to token 0 (HQ2_LIBGL_VIEW_BIAS):
 *    Virtual Address = 0x040000 + 0x2000 + (token * 4)
 * For example:
 *    - Token 0x006 (HQ2_GL_FLUSH) -> 0x40000 + 0x2000 + 0x018 = 0x42018 (swap_sync)
 *    - Token 0x1DF (GE_FIFO_DATA) -> 0x40000 + 0x2000 + 0x77C = 0x4277C (data_port)
 *
 * m2c uses these struct definitions and addresses to decompile raw pointer
 * stores like `*(f32 *)0x4277C` into `HQ2_FIFO.data_port.w`.
 * ============================================================================
 */

#ifndef _LANGUAGE_C
#include <stddef.h>
#endif
#include "GR2.h"

/*
 * ============================================================================
 * HQ2 Graphics FIFO User Virtual Aperture (0x00040000 RGB, 0x00050000 CI)
 * ============================================================================
 */
struct gr2_hq2_fifo {
    char                pad0[0x2018];           /* 0x0000..0x2017: 0x2000 view bias + token 0..5 */
    gr2_reg32_t         swap_sync;              /* 0x2018: token 0x006 HQ2_GL_FLUSH */
    char                pad201c[0x0c];          /* 0x201C..0x2027 */
    gr2_reg32_t         depth_mask;             /* 0x2028: token 0x00A HQ2_GL_DEPTH_MASK */
    char                pad202c[0x0c];          /* 0x202C..0x2037 */
    gr2_reg32_t         stencil_config;         /* 0x2038: token 0x00E HQ2_GL_STENCIL_CONFIG */
    gr2_reg32_t         stencil_mode;           /* 0x203C: token 0x00F HQ2_GL_STENCIL_MODE */
    gr2_reg32_t         stencil_mask;           /* 0x2040: token 0x010 HQ2_GL_STENCIL_WRITEMASK */
    gr2_reg32_t         dither_enable;          /* 0x2044: token 0x011 HQ2_GL_DITHER */
    gr2_reg32_t         pad2048;                /* 0x2048 */
    gr2_reg32_t         shade_model;            /* 0x204C: token 0x013 HQ2_GL_SHADE_MODEL */
    gr2_reg32_t         depth_test_enable;      /* 0x2050: token 0x014 HQ2_GL_DEPTH_TEST */
    gr2_reg32_t         pad2054;                /* 0x2054 */
    gr2_reg32_t         line_stipple;           /* 0x2058: token 0x016 HQ2_GL_LINE_STIPPLE */
    gr2_reg32_t         line_width;             /* 0x205C: token 0x017 HQ2_GL_LINE_WIDTH */
    char                pad2060[0x34];          /* 0x2060..0x2093 */
    gr2_reg32_t         blend_factor;           /* 0x2094: token 0x025 HQ2_GL_BLEND */
    gr2_reg32_t         blend_mode;             /* 0x2098: token 0x026 HQ2_GL_BLEND_FAST */
    char                pad209c[0x08];          /* 0x209C..0x20A3 */
    gr2_reg32_t         tex_span_setup;         /* 0x20A4: token 0x029 HQ2_GL_TEX_SPAN_SETUP */
    float               tex_span_color;         /* 0x20A8: token 0x02A HQ2_GL_TEX_SPAN_COLOR */
    char                pad20ac[0x08];          /* 0x20AC..0x20B3 */
    gr2_reg32_t         tex_span_skip;          /* 0x20B4: token 0x02D HQ2_GL_TEX_SPAN_SKIP */
    char                pad20b8[0x24];          /* 0x20B8..0x20DB */
    float               modelview_matrix;       /* 0x20DC: token 0x037 HQ2_GL_MODELVIEW */
    float               projection_matrix;      /* 0x20E0: token 0x038 HQ2_GL_PROJECTION */
    float               normal_matrix;          /* 0x20E4: token 0x039 HQ2_GL_NORMAL_MATRIX */
    float               texture_matrix;         /* 0x20E8: token 0x03A HQ2_GL_TEXTURE_MATRIX */
    char                pad20ec[0x0e4];         /* 0x20EC..0x21CF */
    float               load_spec_lut;          /* 0x21D0: token 0x074 HQ2_GL_SPEC_TABLE */
    float               material_shininess;     /* 0x21D4: token 0x075 HQ2_GL_AMBIENT_SUM */
    float               mat_front_emissive;     /* 0x21D8: token 0x076 HQ2_GL_MAT_EMISSION_FRONT */
    float               mat_back_emissive;      /* 0x21DC: token 0x077 HQ2_GL_MAT_EMISSION_BACK */
    float               mat_front_ambient;      /* 0x21E0: token 0x078 HQ2_GL_MAT_AMBIENT_FRONT */
    float               mat_back_ambient;       /* 0x21E4: token 0x079 HQ2_GL_MAT_AMBIENT_BACK */
    float               mat_front_diffuse;      /* 0x21E8: token 0x07A HQ2_GL_MAT_DIFFUSE_FRONT */
    float               mat_back_diffuse;       /* 0x21EC: token 0x07B HQ2_GL_MAT_DIFFUSE_BACK */
    float               mat_front_specular;     /* 0x21F0: token 0x07C HQ2_GL_MAT_SPECULAR_FRONT */
    float               mat_back_specular;      /* 0x21F4: token 0x07D HQ2_GL_MAT_SPECULAR_BACK */
    char                pad21f8[0x04];          /* 0x21F8..0x21FB */
    float               light_position;         /* 0x21FC: token 0x07F HQ2_GL_LIGHT_POSITION */
    float               light_select;           /* 0x2200: token 0x080 HQ2_GL_LIGHT_PARAM */
    gr2_reg32_t         light_enable_mask;      /* 0x2204: token 0x081 HQ2_GL_COLOR_MATERIAL */
    gr2_reg32_t         normalize_enable_b;     /* 0x2208: token 0x082 HQ2_GL_NORMALIZE_B */
    float               light_model_ambient;    /* 0x220C: token 0x083 HQ2_GL_LIGHT_DONE */
    float               light_spot_direction;   /* 0x2210: token 0x084 HQ2_GL_SPOT_DIRECTION */
    float               light_model_viewer;     /* 0x2214: token 0x085 HQ2_GL_LIGHT_MODEL */
    float               load_spot_lut;          /* 0x2218: token 0x086 HQ2_GL_SPOT_TABLE */
    char                pad221c[0x64];          /* 0x221C..0x227F */
    float               clear_color_depth;      /* 0x2280: token 0x0A0 HQ2_GL_CLEAR_COLOR_DEPTH */
    gr2_reg32_t         clear_stencil;          /* 0x2284: token 0x0A1 HQ2_GL_CLEAR_STENCIL */
    gr2_reg32_t         pad2288;                /* 0x2288 */
    gr2_reg32_t         readback_trigger;       /* 0x228C: token 0x0A3 HQ2_GL_FINISH */
    char                pad2290[0x0c];          /* 0x2290..0x229B */
    gr2_reg32_t         pixel_read_setup_a;     /* 0x229C: token 0x0A7 HQ2_GL_READ_SETUP_A */
    gr2_reg32_t         pixel_read_setup_b;     /* 0x22A0: token 0x0A8 HQ2_GL_READ_SETUP_B */
    char                pad22a4[0x10];          /* 0x22A4..0x22B3 */
    gr2_reg32_t         read_x;                 /* 0x22B4: token 0x0AD HQ2_GL_READ_RECT */
    char                pad22b8[0x0c];          /* 0x22B8..0x22C3 */
    gr2_reg32_t         pixel_draw_start;       /* 0x22C4: token 0x0B1 HQ2_GL_DRAW_START */
    gr2_reg32_t         pixel_draw_rect;        /* 0x22C8: token 0x0B2 HQ2_GL_DRAW_RECT */
    gr2_reg32_t         pixel_draw_end;         /* 0x22CC: token 0x0B3 HQ2_GL_DRAW_END */
    char                pad22d0[0x18];          /* 0x22D0..0x22E7 */
    gr2_reg32_t         copy_pixels;            /* 0x22E8: token 0x0BA HQ2_GL_COPY_PIXELS */
    float               pixel_zoom;             /* 0x22EC: token 0x0BB HQ2_GL_PIXEL_ZOOM */
    gr2_reg32_t         pixel_read_mode;        /* 0x22F0: token 0x0BC HQ2_GL_READ_MODE */
    gr2_reg32_t         read_done;              /* 0x22F4: token 0x0BD HQ2_GL_READ_DONE */
    char                pad22f8[0x3c];          /* 0x22F8..0x2333 */
    gr2_reg32_t         get_origin;             /* 0x2334: token 0x0CD HQ2_GL_GET_ORIGIN */
    char                pad2338[0x60];          /* 0x2338..0x2397 */
    gr2_reg32_t         context_flush;          /* 0x2398: token 0x0E6 HQ2_GL_CONTEXT_FLUSH */
    char                pad239c[0x08];          /* 0x239C..0x23A3 */
    gr2_reg32_t         get_color;              /* 0x23A4: token 0x0E9 HQ2_GL_GET_COLOR */
    gr2_reg32_t         get_normal;             /* 0x23A8: token 0x0EA HQ2_GL_GET_NORMAL */
    char                pad23ac[0x64];          /* 0x23AC..0x240F */
    float               clear_color;            /* 0x2410: token 0x104 HQ2_GL_CLEAR_COLOR */
    gr2_reg32_t         pad2414;                /* 0x2414: token 0x105 HQ2_GL_RASTER_POS */
    gr2_reg32_t         pad2418;                /* 0x2418: token 0x106 HQ2_GL_RASTER_POS_DATA */
    gr2_reg32_t         get_rasterpos;          /* 0x241C: token 0x107 HQ2_GL_GET_RASTERPOS */
    char                pad2420[0x08];          /* 0x2420..0x2427 */
    gr2_reg32_t         buffer_mode;            /* 0x2428: token 0x10A HQ2_GL_READ_BUFFER */
    gr2_reg32_t         color_writemask;        /* 0x242C: token 0x10B HQ2_GL_COLOR_WRITEMASK */
    char                pad2430[0x200];         /* 0x2430..0x262F */
    gr2_reg32_t         draw_bitmap;            /* 0x2630: token 0x18C HQ2_GL_BITMAP */
    char                pad2634[0x148];         /* 0x2634..0x277B */
    gr2_reg32_t         data_port;              /* 0x277C: token 0x1DF GE_FIFO_DATA */
    char                pad2780[0x1c];          /* 0x2780..0x279B */
    gr2_reg32_t         swap_buffers;           /* 0x279C: token 0x1E7 HQ2_GL_SWAP_BUFFERS */
    char                pad27a0[0x1ec];         /* 0x27A0..0x298B */
    gr2_reg32_t         vertex_4f;              /* 0x298C: token 0x263 = USEV|0x063 HQ2_GL_VERTEX */
    char                pad2990[0x1ffc];        /* 0x2990..0x498B */
    gr2_reg32_t         vertex_3f;              /* 0x498C: token 0xA63 = V3|USEV|0x063 HQ2_GL_VERTEX */
    char                pad4990[0x1ffc];        /* 0x4990..0x698B */
    gr2_reg32_t         vertex_2f;              /* 0x698C: token 0x1263 = V2|USEV|0x063 HQ2_GL_VERTEX */
    char                pad6990[0x1c78];        /* 0x6990..0x8607 */
    gr2_reg32_t         color_3f;               /* 0x8608: token 0x1982 = C3|0x182 HQ2_GL_COLOR */
    char                pad860c[0x1ffc];        /* 0x860C..0xA607 */
    gr2_reg32_t         color_4f;               /* 0xA608: token 0x2182 = C4|0x182 HQ2_GL_COLOR */
    char                pada60c[0x1c74];        /* 0xA60C..0xC27F */
    gr2_reg32_t         clear_depth;            /* 0xC280: token 0x28A0 = CP|0x0A0 HQ2_GL_CLEAR_COLOR_DEPTH */
    char                padc284[0x1ffc];        /* 0xC284..0xE27F */
    gr2_reg32_t         clear_ci_depth;         /* 0xE280: token 0x30A0 = C1|0x0A0 HQ2_GL_CLEAR_CI_DEPTH */
    char                pade284[0x174];         /* 0xE284..0xE3F7 */
    gr2_reg32_t         index;                  /* 0xE3F8: token 0x30FE = C1|0x0FE HQ2_GL_INDEX */
    char                pade3fc[0x14];          /* 0xE3FC..0xE40F */
    float               clear_ci;               /* 0xE410: token 0x3104 = C1|0x104 HQ2_GL_CLEAR_CI */
    char                pade414[0x368];         /* 0xE414..0xE77B */
    gr2_reg32_t         data_port_ci;           /* 0xE77C: token 0x31DF = C1|0x1DF GE_FIFO_DATA */
};

extern struct gr2_hq2_fifo HQ2_FIFO;
extern struct gr2_hq2_fifo HQ2_FIFO_CI;

/*
 * ============================================================================
 * HQ2 Pixel Readback FIFO Aperture (0x00010000)
 * ============================================================================
 */
struct gr2_hq2_read_fifo {
    char                pad0[0x2088];           /* 0x0000..0x2087 */
    gr2_reg32_t         data[4];                /* 0x2088: data[0] (R/X/CI), data[1] (G/Y), data[2] (B/Z), data[3] (A/W) */
};

extern struct gr2_hq2_read_fifo HQ2_READ_FIFO;

/*
 * ============================================================================
 * HQ2 Status and Acknowledge Port Aperture (0x00060000)
 * ============================================================================
 */
struct gr2_hq2_status_port {
    char                pad0[0xC040];           /* 0x0000..0xC03F */
    gr2_reg32_t         read_status;            /* 0xC040: bit 0 = read data ready */
    char                padC044[0x0FBC];         /* 0xC044..0xCFFF */
    gr2_reg32_t         read_ack;               /* 0xD000: write 0 to acknowledge / advance FIFO */
};

extern struct gr2_hq2_status_port HQ2_STATUS_PORT;

#if defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 201112L) && !defined(_LANGUAGE_C)
_Static_assert(offsetof(struct gr2_hq2_fifo, swap_sync) == 0x2018, "swap_sync");
_Static_assert(offsetof(struct gr2_hq2_fifo, depth_mask) == 0x2028, "depth_mask");
_Static_assert(offsetof(struct gr2_hq2_fifo, dither_enable) == 0x2044, "dither_enable");
_Static_assert(offsetof(struct gr2_hq2_fifo, blend_mode) == 0x2098, "blend_mode");
_Static_assert(offsetof(struct gr2_hq2_fifo, tex_span_setup) == 0x20A4, "tex_span_setup");
_Static_assert(offsetof(struct gr2_hq2_fifo, tex_span_color) == 0x20A8, "tex_span_color");
_Static_assert(offsetof(struct gr2_hq2_fifo, tex_span_skip) == 0x20B4, "tex_span_skip");
_Static_assert(offsetof(struct gr2_hq2_fifo, modelview_matrix) == 0x20DC, "modelview_matrix");
_Static_assert(offsetof(struct gr2_hq2_fifo, projection_matrix) == 0x20E0, "projection_matrix");
_Static_assert(offsetof(struct gr2_hq2_fifo, normal_matrix) == 0x20E4, "normal_matrix");
_Static_assert(offsetof(struct gr2_hq2_fifo, texture_matrix) == 0x20E8, "texture_matrix");
_Static_assert(offsetof(struct gr2_hq2_fifo, material_shininess) == 0x21D4, "material_shininess");
_Static_assert(offsetof(struct gr2_hq2_fifo, mat_front_diffuse) == 0x21E8, "mat_front_diffuse");
_Static_assert(offsetof(struct gr2_hq2_fifo, light_position) == 0x21FC, "light_position");
_Static_assert(offsetof(struct gr2_hq2_fifo, light_select) == 0x2200, "light_select");
_Static_assert(offsetof(struct gr2_hq2_fifo, clear_color_depth) == 0x2280, "clear_color_depth");
_Static_assert(offsetof(struct gr2_hq2_fifo, clear_color) == 0x2410, "clear_color");
_Static_assert(offsetof(struct gr2_hq2_fifo, data_port) == 0x277C, "data_port");
_Static_assert(offsetof(struct gr2_hq2_fifo, swap_buffers) == 0x279C, "swap_buffers");
_Static_assert(offsetof(struct gr2_hq2_fifo, vertex_4f) == 0x298C, "vertex_4f");
_Static_assert(offsetof(struct gr2_hq2_fifo, vertex_3f) == 0x498C, "vertex_3f");
_Static_assert(offsetof(struct gr2_hq2_fifo, vertex_2f) == 0x698C, "vertex_2f");
_Static_assert(offsetof(struct gr2_hq2_fifo, color_3f) == 0x8608, "color_3f");
_Static_assert(offsetof(struct gr2_hq2_fifo, color_4f) == 0xA608, "color_4f");
_Static_assert(offsetof(struct gr2_hq2_fifo, clear_depth) == 0xC280, "clear_depth");
_Static_assert(offsetof(struct gr2_hq2_fifo, clear_ci_depth) == 0xE280, "clear_ci_depth");
_Static_assert(offsetof(struct gr2_hq2_fifo, index) == 0xE3F8, "index");
_Static_assert(offsetof(struct gr2_hq2_fifo, clear_ci) == 0xE410, "clear_ci");
_Static_assert(offsetof(struct gr2_hq2_fifo, data_port_ci) == 0xE77C, "data_port_ci");
_Static_assert(offsetof(struct gr2_hq2_read_fifo, data[0]) == 0x2088, "read_data");
_Static_assert(offsetof(struct gr2_hq2_status_port, read_status) == 0xC040, "read_status");
_Static_assert(offsetof(struct gr2_hq2_status_port, read_ack) == 0xD000, "read_ack");
#endif

#endif /* __GLCORE_FIFO_H__ */
