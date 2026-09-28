/*
 * RE3.h - Silicon Graphics RE3 Raster Engine ASIC
 *
 * Scanline Rasterization, Span Interpolation, Z-Buffering, Logic Ops, Blits.
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Generated from SGI IRIX PROM, IDE diagnostics (bitp.c, ge7dma.c),
 * MAME sgi/sgi_re2.h, NetBSD sgimips, and GR4 schematics.
 */

#ifndef _SGI_RE3_H_
#define _SGI_RE3_H_

#include <stdint.h>

#ifndef _GR2_REG32_T_DEFINED
#define _GR2_REG32_T_DEFINED
typedef union {
    volatile uint32_t w;
    volatile uint16_t h;
    volatile uint8_t  b;
} gr2_reg32_t;
#endif

/*
 * ============================================================================
 * RE3 ASIC SPECIFICATIONS
 * ============================================================================
 *
 * Gate Count:      ~100,000 gates
 * Operating Clock: 50 MHz
 * Pipeline Depth:  25 to 40 variable-depth stages
 *
 * Architecture:
 *   - The RE3 Raster Engine receives primitive parameters (slopes, deltas,
 *     coordinates, colors, depth) from GE7 over a private internal bus.
 *   - Directly drives the 5 interleaved VRAM banks of the VM2 framebuffer.
 *   - Performs subpixel span rasterization with Gouraud color shading (dR, dG, dB)
 *     and perspective-correct Z interpolation (dZI, dZF).
 *   - Executes 20-pixel block writes for ultra-fast clears and flat rectangle fills.
 *   - Performs depth comparisons against 24-bit Z-buffer DRAMs.
 *   - Applies hardware scissor clipping (XMIN, XMAX, YMIN, YMAX).
 *   - Evaluates Window ID (WID) masks to prevent drawing outside active windows.
 */

/*
 * ============================================================================
 * RE3 GIO REGISTER REGIONS
 * ============================================================================
 *
 * RE3 registers are mapped into three address ranges:
 *
 * 1. 0x06c200 - 0x06c27f (128 bytes = 0x80):
 *    Buffered drawing registers (regs 0x00..0x1f). Writes are queued into
 *    the rasterization pipeline. Color parameters are 27-bit (R9, G9, B9).
 *
 * 2. 0x06c280 - 0x06c2ff (128 bytes = 0x80):
 *    Unbuffered control registers (regs 0x20..0x3f). Writes take effect
 *    immediately on raster mode, scissor bounds, WID, and plane write masks (24-bit).
 *
 * 3. 0x06c600 - 0x06c67f (128 bytes = 0x80):
 *    32-bit unpacked pixel alias window. Provides direct 32-bit CPU access to
 *    framebuffer memory through RWDATA (0x20) without bitfield packing.
 */
#define RE3_BASE_27_OFFSET          0x06c200    /* 27-bit buffered registers (0x6c200..0x6c27f) */
#define RE3_BASE_24_OFFSET          0x06c280    /* 24-bit control registers (0x6c280..0x6c2ff) */
#define RE3_BASE_32_OFFSET          0x06c600    /* 32-bit unpacked registers (0x6c600..0x6c67f) */

/*
 * ============================================================================
 * RE3 REGISTER DEFINITIONS (Evolved from RE2 register architecture)
 * ============================================================================
 */

/*
 * BUFFERED REGISTERS (0x04..0x1f)
 * Writes are queued into internal pipeline buffers:
 */
#define RE3_REG_ENABRGB             0x04    /* Enable 8-bit RGB mode */
/*
 * Colour packing: the GE sends colour in a neutral form (8.11 R/G/B
 * iterators, 8 bits per channel, deltas per pixel for shading) and RE3 packs
 * each pixel into the frame-buffer format of the target visual: 24-bit (R in
 * bits 7:0, G 15:8, B 23:16), 12-bit 4:4:4 (both 12-bit banks get the value;
 * the plane mask 0x000FFF / 0xFFF000 selects the buffer, see XMAP5.h) or
 * colour index (the index rides in the R iterator, which is 12.11 = 23 bits
 * against 8.11 for G and B, so a 12-bit index fits; showmap's 12-bit CI
 * window, (inferred) from the register widths and confirmed by rendering).
 * Packing has to happen in RE3 because a shaded span iterates
 * the channels independently. The register that selects 12-bit 4:4:4 packing
 * is not identified (ENABRGB is the 8-bit 3:3:2 mode; FBOPTION / UPACMODE
 * are candidates) (unverified). This is the same split as Newport, where
 * REX3 DRAWMODE1 (DRAWDEPTH, RGBMODE, DITHER) selects the packing and WRMASK
 * the buffer. With ENABDITH (0x2c) set, 12-bit RGB is dithered 8 -> 4 bits
 * per channel with REX3's 4x4 Bayer matrix and x15/255 scaling (emulator
 * implementation; the exact RE3 dither matrix and phase are (unverified)).
 * The GE drives ENABDITH from GL_DITHER (FIFO token 0x011).
 *
 * Per visual (the GE learns the visual from MAKECURRENT, HQ2.h 0x004: bit 3
 * = colour index, low bits = depth 1 / 2 / 4 = 8 / 12 / 24 bits):
 *   24-bit RGB   R 7:0, G 15:8, B 23:16, single buffer
 *   12-bit RGB   4:4:4, R 3:0, G 7:4, B 11:8, in both banks (11:0, 23:12)
 *   8-bit RGB    3:3:2, R 7:5, B 4:3, G 2:0 (Xsgi visual masks red 0xE0,
 *                green 0x07, blue 0x18; libglcore __glExpSetPixWritemask
 *                packs 8-bit masks the same way)
 *   12-bit CI    the index (12 bits) in both 12-bit banks
 *   8-bit CI     the index (8 bits) (gr_osview, MAKECURRENT 9)
 * For 8-bit double-buffered visuals libglcore builds the buffer masks by
 * shifting by the depth (0x00FF / 0xFF00): the second 8-bit buffer is
 * bits 15:8 (XMAP5.h). The emulator writes an 8-bit value as v | v << 8,
 * like the 12-bit packing's both-banks write, and the mask picks one.
 * GL blending does not apply in colour-index mode; the emulator skips it
 * for both CI formats (gr_osview's CI8 window would otherwise have its
 * indices blended as RGB).
 */
#define RE3_REG_BIGENDIAN           0x05    /* Enable big-endian byte order */
#define RE3_REG_FUNC                0x06    /* Raster operation logic function (4 bits) */
#define RE3_REG_HADDR               0x07    /* Starting horizontal pixel position (2 bits) */
#define RE3_REG_NOPUP               0x08    /* Size of auxiliary data */
#define RE3_REG_XYFRAC              0x09    /* Subpixel XY fraction (4 bits) */
/*
 * SHADED / FLAT are steppers, not horizontal spans: X and Y iterate by DX /
 * DY (s16, 14 fraction bits, so up to +-2 pixels) per pixel for NUMPIX
 * pixels (MAME sgi_re2 increment()). A horizontal span is DX = 1.0, DY = 0;
 * an aliased GL line is one SHADED primitive with DX / DY = the unit major
 * step and the minor slope, colour and Z iterated along it. RE3 clips it only
 * by the scissor and the WID test, so a line in a window with several visible
 * pieces is presumably issued once per piece with the scissor set to it
 * (inferred; fits the DDX's at-most-4-piece clip encoding, HQ2.h 0x1E5).
 * XYFRAC (4 bits, inferred): the MINOR axis's subpixel start in 1/16 pixel.
 * The GE snaps vertices to 1/16 pixel, and a line's major axis starts on a
 * pixel (its step is +-1.0), so one 4-bit fraction is all a DDA start needs;
 * it forms the top 4 bits of the minor iterator's 14-bit fraction. DX / DY
 * need their 14 fraction bits for the slope: a 1/16-precision slope would
 * drift ~30 pixels over a 1000-pixel line. The GR1 RE1 spec (a grain of
 * salt: older hardware) describes the same DDA: "iterators for X, Y, Z, R,
 * G, B ... draw the line ... until the count register reaches zero", "the
 * red iterator may also be interpreted as a 12-bit color index". MAME
 * leaves XYFRAC as a TODO.
 */
#define RE3_REG_RGB                 0x0a    /* Initial packed color values (27 bits) */
#define RE3_REG_YX                  0x0b    /* Initial packed Y (11 bits) and X (11 bits) */
#define RE3_REG_PUPDATA             0x0c    /* Popup plane data (2 bits) */
#define RE3_REG_PATL                0x0d    /* Pattern mask low (16 bits) */
#define RE3_REG_PATH                0x0e    /* Pattern mask high (16 bits) */
#define RE3_REG_DZI                 0x0f    /* Delta Z integer (24 bits) */
#define RE3_REG_DZF                 0x10    /* Delta Z fraction (14 bits) */
#define RE3_REG_DR                  0x11    /* Delta Red (24 bits) */
#define RE3_REG_DG                  0x12    /* Delta Green (20 bits) */
#define RE3_REG_DB                  0x13    /* Delta Blue (20 bits) */
#define RE3_REG_Z                   0x14    /* Initial Z integer (24 bits) */
#define RE3_REG_R                   0x15    /* Initial Red (23 bits) */
#define RE3_REG_G                   0x16    /* Initial Green (19 bits) */
#define RE3_REG_B                   0x17    /* Initial Blue (19 bits) */
#define RE3_REG_STIP                0x18    /* Stipple pattern (16 bits, RW) */
#define RE3_REG_STIPCOUNT           0x19    /* Stipple repeat count (8 bits, RW) */
#define RE3_REG_DX                  0x1a    /* Delta X (16 bits) */
#define RE3_REG_DY                  0x1b    /* Delta Y (16 bits) */
#define RE3_REG_NUMPIX              0x1c    /* Pixel count for span/line (11 bits) */
#define RE3_REG_X                   0x1d    /* Initial X coordinate (12 bits) */
#define RE3_REG_Y                   0x1e    /* Initial Y coordinate (11 bits) */
#define RE3_REG_IR                  0x1f    /* Instruction Register - Triggers execution! */

/*
 * UNBUFFERED CONTROL REGISTERS (0x20..0x3e)
 * Writes take effect immediately on pipeline state:
 */
#define RE3_REG_RWDATA              0x20    /* Read/Write data port (32 bits, RW) */
#define RE3_REG_PIXMASK             0x21    /* Color bitplane write mask (24 bits) */
#define RE3_REG_AUXMASK             0x22    /* Auxiliary plane write mask (9 bits) */
#define RE3_REG_WIDDATA             0x23    /* Window ID data (4 bits) */
#define RE3_REG_UAUXDATA            0x24    /* Underlay/auxiliary data (4 bits) */
#define RE3_REG_RWMODE              0x25    /* Read/Write target mode (3 bits) */
#define RE3_REG_READBUF             0x26    /* Framebuffer read buffer select (0/1) */
#define RE3_REG_PIXTYPE             0x27    /* Pixel type (2 bits) */
#define RE3_REG_ASELECT             0x28    /* Antialiasing mode select (6 bits) */
#define RE3_REG_ALIGNPAT            0x29    /* Pattern alignment enable */
#define RE3_REG_ENABPAT             0x2a    /* Enable pattern mask */
#define RE3_REG_ENABSTIP            0x2b    /* Enable stippling */
#define RE3_REG_ENABDITH            0x2c    /* Enable dithering */
#define RE3_REG_ENABWID             0x2d    /* Enable Window ID checking */
#define RE3_REG_CURWID              0x2e    /* Current Window ID (4 bits) */
#define RE3_REG_DEPTHFN             0x2f    /* Z-buffer depth function (4 bits) */
#define RE3_REG_REPSTIP             0x30    /* Repeat stipple factor (8 bits) */
#define RE3_REG_ENABLWID            0x31    /* Enable line Window ID check */
#define RE3_REG_FBOPTION            0x32    /* Framebuffer option configuration */
#define RE3_REG_TOPSCAN             0x33    /* Top scan line offset (18 bits) */
#define RE3_REG_TESTMODE            0x34
#define RE3_REG_TESTDATA            0x35
#define RE3_REG_ZBOPTION            0x36    /* Z-buffer option installed */
#define RE3_REG_XZOOM               0x37    /* X zoom factor (8 bits) */
#define RE3_REG_UPACMODE            0x38    /* Pixel unpack mode (2 bits) */
#define RE3_REG_YMIN                0x39    /* Scissor bottom bound (11 bits) */
#define RE3_REG_YMAX                0x3a    /* Scissor top bound (11 bits) */
#define RE3_REG_XMIN                0x3b    /* Scissor left bound (12 bits) */
#define RE3_REG_XMAX                0x3c    /* Scissor right bound (12 bits) */
#define RE3_REG_COLORCMP            0x3d    /* Color compare enable */
#define RE3_REG_MEGOPTION           0x3e    /* 1MB VRAM option (block write mode) */

/*
 * ============================================================================
 * INSTRUCTION REGISTER (IR) COMMANDS
 * ============================================================================
 *
 * Writing to RE3_REG_IR (0x1f) initiates raster execution:
 */
#define RE3_IR_SHADED               1       /* Draw Gouraud-shaded span with Z & RGB */
#define RE3_IR_FLAT                 2       /* Draw 1x5 flat-shaded span */
#define RE3_IR_FLAT4                3       /* Draw 1x20 flat span (MEGOPTION=0) */
#define RE3_IR_BLOCKWRITE           3       /* 20-pixel block write (MEGOPTION=1) */
#define RE3_IR_TOPLINE              4       /* Draw top half of antialiased line */
#define RE3_IR_BOTLINE              5       /* Draw bottom half of antialiased line */
#define RE3_IR_READBUF              6       /* Read pixel data from VRAM into RWDATA */
#define RE3_IR_WRITEBUF             7       /* Write pixel data from RWDATA into VRAM */

/*
 * ============================================================================
 * READ / WRITE MODES (RWMODE - 0x25)
 * ============================================================================
 */
#define RE3_RWMODE_FB               0       /* Framebuffer color bitplanes */
#define RE3_RWMODE_PUP              1       /* Popup bitplanes */
#define RE3_RWMODE_UAUX             2       /* Underlay auxiliary bitplanes */
#define RE3_RWMODE_ZB               3       /* Z-Buffer depth planes */
#define RE3_RWMODE_WID              4       /* Window ID bitplanes */
#define RE3_RWMODE_FB_P             6       /* Framebuffer direct port */
#define RE3_RWMODE_ZB_P             7       /* Z-Buffer direct port */

/*
 * ============================================================================
 * RASTER LOGIC OPERATIONS (FUNC - 0x06)
 * ============================================================================
 */
#define RE3_ROP_CLEAR               0       /* 0 */
#define RE3_ROP_AND                 1       /* src & dst */
#define RE3_ROP_AND_REVERSE         2       /* src & ~dst */
#define RE3_ROP_COPY                3       /* src */
#define RE3_ROP_AND_INVERTED        4       /* ~src & dst */
#define RE3_ROP_NOOP                5       /* dst */
#define RE3_ROP_XOR                 6       /* src ^ dst */
#define RE3_ROP_OR                  7       /* src | dst */
#define RE3_ROP_NOR                 8       /* ~(src | dst) */
#define RE3_ROP_EQUIV               9       /* ~(src ^ dst) */
#define RE3_ROP_INVERT              10      /* ~dst */
#define RE3_ROP_OR_REVERSE          11      /* src | ~dst */
#define RE3_ROP_COPY_INVERTED       12      /* ~src */
#define RE3_ROP_OR_INVERTED         13      /* ~src | dst */
#define RE3_ROP_NAND                14      /* ~(src & dst) */
#define RE3_ROP_SET                 15      /* all 1s */

/*
 * ============================================================================
 * Z-BUFFER DEPTH FUNCTIONS (DEPTHFN - 0x2f)
 * ============================================================================
 * Z values are SIGNED 24-bit (two's complement, -0x800000 .. 0x7FFFFF), and
 * the comparison is signed (inferred, three independent sources):
 *   - IRIS GL on GR2 uses the full signed range: zclear to ZMIN = 0xFF800000
 *     through HQ2 token 0x68A0, lsetdepth(ZMIN, ZMAX) and zfunction
 *     (ZF_GEQUAL), so half of all window z values are negative (powerflip,
 *     IRIX 6.5.22 trace);
 *   - OpenGL (libglcore) uses only 23 bits (depth mask 0x7FFFFF, zScale =
 *     zCenter = (2^23 - 1) / 2), i.e. the non-negative half, which only
 *     makes sense if the compare is signed;
 *   - the Z iterator register (0x14) is sign-extended from 24 bits (MAME RE2
 *     masks, emulator).
 * The emulator compares signed; an unsigned compare rejects every powerflip
 * pixel.
 */
#define RE3_DEPTH_NEVER             0       /* Never pass */
#define RE3_DEPTH_LESS              1       /* Pass if new Z < existing Z */
#define RE3_DEPTH_EQUAL             2       /* Pass if new Z == existing Z */
#define RE3_DEPTH_LEQUAL            3       /* Pass if new Z <= existing Z */
#define RE3_DEPTH_GREATER           4       /* Pass if new Z > existing Z */
#define RE3_DEPTH_NOTEQUAL          5       /* Pass if new Z != existing Z */
#define RE3_DEPTH_GEQUAL            6       /* Pass if new Z >= existing Z */
#define RE3_DEPTH_ALWAYS            7       /* Always pass */

/*
 * ============================================================================
 * BITFIELD ENCODING & EXTRACTION MACROS
 * ============================================================================
 */

/* 27-bit Packed RGB (reg 0x0a: bits [26:18]=R, [17:9]=G, [8:0]=B) */
#define RE3_PACK_RGB(r, g, b) \
    ((((uint32_t)(r) & 0x1ff) << 18) | (((uint32_t)(g) & 0x1ff) << 9) | ((uint32_t)(b) & 0x1ff))

#define RE3_UNPACK_R(rgb)           (((rgb) >> 18) & 0x1ff)
#define RE3_UNPACK_G(rgb)           (((rgb) >> 9) & 0x1ff)
#define RE3_UNPACK_B(rgb)           ((rgb) & 0x1ff)

/* Packed YX coordinate (reg 0x0b: bits [22:12]=Y 11-bit, bits [11:0]=X 12-bit) */
#define RE3_PACK_YX(y, x) \
    ((((uint32_t)(y) & 0x7ff) << 12) | ((uint32_t)(x) & 0xfff))

#define RE3_UNPACK_Y(yx)            (((yx) >> 12) & 0x7ff)
#define RE3_UNPACK_X(yx)            ((yx) & 0xfff)

/*
 * Scissor X Coordinate Translation (unverified, MAME-derived):
 * Framebuffer columns are 5-way interleaved across banks (pixel x is
 * displayed by XMAP5 x mod 5). MAME's RE2 model also treats the X registers
 * as bank-coded, X = (x / 5) * 8 + x mod 5, i.e. x = (X >> 3) * 5 + (X & 7).
 * Nothing confirms this for RE3, and it is not guest-observable: the PROM,
 * the kernel, Xsgi (gr2_ddx) and libglcore never write RE3 registers
 * directly (no accesses to 0x6C200-0x6C2FF in any of them); only the HQ2/GE7
 * microcode does. The emulator therefore uses linear X in the RE3 X, XMIN,
 * XMAX and YX registers.
 */
#define RE3_SCISSOR_X(x)            (((x) >> 3) * 5 + ((x) & 0x7))

/*
 * X COORDINATE ENCODING (from MAME sgi_re2.cpp - RE2 / GR1, the RE3's
 * predecessor; unverified on RE3):
 * MAME applies the same (X >> 3) * 5 + (X & 7) conversion to the X start
 * register (sgi_re2.cpp:242, "m_x = ((X >> 3) * 5 + (X & 7)) << 14") as to
 * the scissor, so X values given to the raster engine appear to be in a
 * "bank-coded" space: 8 codes per group of 5 real pixels, codes 5..7 of each
 * group unused. The 12-bit X register therefore spans roughly 1280 visible
 * pixels. To check against the IDE diagnostics (fforward/graphics/EXPRESS
 * bitp.c) and the textport microcode.
 *
 * Y ORIGIN: rendering Y = 0 is the BOTTOM scanline (GL convention, used by
 * the textport commands). MAME's RE2 scanout reads memory row 1023 for the top
 * of the screen. TOPSCAN (reg 0x33) is presumably the display-start row for
 * scrolling (unverified).
 *
 * MAME RE2 register write masks (sgi_re2.cpp regmask[]), a good starting
 * point for the RE3:
 *   0x04 ENABRGB 0x1     0x05 BIGENDIAN 0x1   0x06 FUNC 0xf     0x07 HADDR 0x3
 *   0x08 NOPUP 0x1       0x09 XYFRAC 0xf      0x0a RGB 0x7ffffff 0x0b YX 0x3fffff
 *   0x0c PUPDATA 0x3     0x0d PATL 0xffff     0x0e PATH 0xffff  0x0f DZI 0xffffff
 *   0x10 DZF 0x3fff      0x11 DR 0xffffff     0x12 DG 0xfffff   0x13 DB 0xfffff
 *   0x14 Z 0xffffff      0x15 R 0x7fffff      0x16 G 0x7ffff    0x17 B 0x7ffff
 *   0x18 STIP 0xffff     0x19 STIPCOUNT 0xff  0x1a DX 0xffff    0x1b DY 0xffff
 *   0x1c NUMPIX 0x7ff    0x1d X 0xffff        0x1e Y 0x7ff      0x1f IR 0x7
 *   0x20 RWDATA 0xffffffff 0x21 PIXMASK 0xffffff 0x22 AUXMASK 0x1ff 0x23 WIDDATA 0xf
 *   0x24 UAUXDATA 0xf    0x25 RWMODE 0x7      0x26 READBUF 0x1  0x27 PIXTYPE 0x3
 *   0x28 ASELECT 0x3f    0x29..0x2d enables 0x1 0x2e CURWID 0xf 0x2f DEPTHFN 0xf
 *   0x30 REPSTIP 0xff    0x31 ENABLWID 0x1    0x32 FBOPTION 0x3 0x33 TOPSCAN 0x3ffff
 *   0x34 TESTMODE 0x1    0x35 TESTDATA 0x3fff 0x36 ZBOPTION 0x1 0x37 XZOOM 0xff
 *   0x38 UPACMODE 0x3    0x39 YMIN 0x7ff      0x3a YMAX 0x7ff   0x3b XMIN 0xfff
 *   0x3c XMAX 0xfff      0x3d COLORCMP 0x1    0x3e MEGOPTION 0x1
 * MAME side effects: a write to RGB fans out to R/G/B (in MAME's 8-bit RGB
 * packing); a write to YX fans out to X (bits 11:0) and Y (bits 22:12). IR
 * executes. Readable registers: RWDATA (streaming), DZI, DZF, STIP, STIPCOUNT.
 * MAME PIXEL WORD (one u32 per pixel): WID[31:28] | AUX[27:24] | RGB/CI[23:0].
 */

/*
 * ============================================================================
 * HARDWARE REGISTER STRUCTURES
 * ============================================================================
 */

/*
 * Buffered drawing registers at offset 0x06c200 (128 bytes = 0x80)
 */
struct gr2_re3_buffered {
    gr2_reg32_t pad0[4];                /* 0x00 - 0x0f: Unused (regs 0..3) */
    gr2_reg32_t enabrgb;                /* 0x10: Enable 8-bit RGB mode (reg 0x04) */
    gr2_reg32_t bigendian;              /* 0x14: Enable big-endian byte order (reg 0x05) */
    gr2_reg32_t func;                   /* 0x18: Raster logic op function (reg 0x06) */
    gr2_reg32_t haddr;                  /* 0x1c: Starting horizontal pixel position (reg 0x07) */
    gr2_reg32_t nopup;                  /* 0x20: Size of auxiliary data (reg 0x08) */
    gr2_reg32_t xyfrac;                 /* 0x24: Subpixel XY fraction (reg 0x09) */
    gr2_reg32_t rgb;                    /* 0x28: Initial color (27 bits, reg 0x0a) */
    gr2_reg32_t yx;                     /* 0x2c: Initial Y (11 bits) and X (11 bits, reg 0x0b) */
    gr2_reg32_t pupdata;                /* 0x30: Popup plane data (reg 0x0c) */
    gr2_reg32_t patl;                   /* 0x34: Pattern mask low (reg 0x0d) */
    gr2_reg32_t path;                   /* 0x38: Pattern mask high (reg 0x0e) */
    gr2_reg32_t dzi;                    /* 0x3c: Delta Z integer (24 bits, reg 0x0f) */
    gr2_reg32_t dzf;                    /* 0x40: Delta Z fraction (14 bits, reg 0x10) */
    gr2_reg32_t dr;                     /* 0x44: Delta Red (24 bits, reg 0x11) */
    gr2_reg32_t dg;                     /* 0x48: Delta Green (20 bits, reg 0x12) */
    gr2_reg32_t db;                     /* 0x4c: Delta Blue (20 bits, reg 0x13) */
    gr2_reg32_t z;                      /* 0x50: Initial Z integer (24 bits, reg 0x14) */
    gr2_reg32_t r;                      /* 0x54: Initial Red (23 bits, reg 0x15) */
    gr2_reg32_t g;                      /* 0x58: Initial Green (19 bits, reg 0x16) */
    gr2_reg32_t b;                      /* 0x5c: Initial Blue (19 bits, reg 0x17) */
    gr2_reg32_t stip;                   /* 0x60: Stipple pattern (16 bits, RW, reg 0x18) */
    gr2_reg32_t stipcount;              /* 0x64: Stipple repeat count (8 bits, reg 0x19) */
    gr2_reg32_t dx;                     /* 0x68: Delta X (16 bits, reg 0x1a) */
    gr2_reg32_t dy;                     /* 0x6c: Delta Y (16 bits, reg 0x1b) */
    gr2_reg32_t numpix;                 /* 0x70: Pixel count for span/line (11 bits, reg 0x1c) */
    gr2_reg32_t x;                      /* 0x74: Initial X coordinate (12 bits, reg 0x1d) */
    gr2_reg32_t y;                      /* 0x78: Initial Y coordinate (11 bits, reg 0x1e) */
    gr2_reg32_t ir;                     /* 0x7c: Instruction register - triggers execution! (reg 0x1f) */
};

/*
 * Unbuffered control registers at offset 0x06c280 (128 bytes = 0x80)
 */
struct gr2_re3_control {
    gr2_reg32_t rwdata;                 /* 0x00 (0x6c280): Read/Write data port (reg 0x20) */
    gr2_reg32_t pixmask;                /* 0x04 (0x6c284): Pixel write mask (24 bits, reg 0x21) */
    gr2_reg32_t auxmask;                /* 0x08 (0x6c288): Auxiliary write mask (9 bits, reg 0x22) */
    gr2_reg32_t widdata;                /* 0x0c (0x6c28c): Window ID data (4 bits, reg 0x23) */
    gr2_reg32_t uauxdata;               /* 0x10 (0x6c290): Underlay/auxiliary data (4 bits, reg 0x24) */
    gr2_reg32_t rwmode;                 /* 0x14 (0x6c294): Read/Write mode (3 bits, reg 0x25) */
    gr2_reg32_t readbuf;                /* 0x18 (0x6c298): Read buffer select (0/1, reg 0x26) */
    gr2_reg32_t pixtype;                /* 0x1c (0x6c29c): Pixel type (2 bits, reg 0x27) */
    gr2_reg32_t aselect;                /* 0x20 (0x6c2a0): Antialiasing mode select (reg 0x28) */
    gr2_reg32_t alignpat;               /* 0x24 (0x6c2a4): Pattern alignment enable (reg 0x29) */
    gr2_reg32_t enabpat;                /* 0x28 (0x6c2a8): Enable pattern mask (reg 0x2a) */
    gr2_reg32_t enabstip;               /* 0x2c (0x6c2ac): Enable stippling (reg 0x2b) */
    gr2_reg32_t enabdith;               /* 0x30 (0x6c2b0): Enable dithering (reg 0x2c) */
    gr2_reg32_t enabwid;                /* 0x34 (0x6c2b4): Enable Window ID checking (reg 0x2d) */
    gr2_reg32_t curwid;                 /* 0x38 (0x6c2b8): Current Window ID (4 bits, reg 0x2e) */
    gr2_reg32_t depthfn;                /* 0x3c (0x6c2bc): Depth function (4 bits, reg 0x2f) */
    gr2_reg32_t repstip;                /* 0x40 (0x6c2c0): Repeat stipple factor (reg 0x30) */
    gr2_reg32_t enablwid;               /* 0x44 (0x6c2c4): Enable line Window ID check (reg 0x31) */
    gr2_reg32_t fboption;               /* 0x48 (0x6c2c8): Framebuffer option config (reg 0x32) */
    gr2_reg32_t topscan;                /* 0x4c (0x6c2cc): Top scanline offset (reg 0x33) */
    gr2_reg32_t testmode;               /* 0x50 (0x6c2d0): Test mode (reg 0x34) */
    gr2_reg32_t testdata;               /* 0x54 (0x6c2d4): Test data (reg 0x35) */
    gr2_reg32_t zboption;               /* 0x58 (0x6c2d8): Z-buffer option installed (reg 0x36) */
    gr2_reg32_t xzoom;                  /* 0x5c (0x6c2dc): X zoom factor (8 bits, reg 0x37) */
    gr2_reg32_t upacmode;               /* 0x60 (0x6c2e0): Pixel unpack mode (reg 0x38) */
    gr2_reg32_t ymin;                   /* 0x64 (0x6c2e4): Scissor bottom bound (reg 0x39) */
    gr2_reg32_t ymax;                   /* 0x68 (0x6c2e8): Scissor top bound (reg 0x3a) */
    gr2_reg32_t xmin;                   /* 0x6c (0x6c2ec): Scissor left bound (reg 0x3b) */
    gr2_reg32_t xmax;                   /* 0x70 (0x6c2f0): Scissor right bound (reg 0x3c) */
    gr2_reg32_t colorcmp;               /* 0x74 (0x6c2f4): Color compare enable (reg 0x3d) */
    gr2_reg32_t megoption;              /* 0x78 (0x6c2f8): 1MB VRAM block write option (reg 0x3e) */
    gr2_reg32_t pad3f;                  /* 0x7c (0x6c2fc): Pad to 0x80 (reg 0x3f) */
};

/*
 * 32-bit unpacked pixel alias window at offset 0x06c600 (128 bytes = 0x80)
 */
struct gr2_re3_32bit {
    gr2_reg32_t rwdata32;               /* 0x00 (0x6c600): 32-bit unpacked RWDATA */
    gr2_reg32_t pad[31];                /* 0x04 - 0x7f: Pad to 0x80 */
};

/*
 * ============================================================================
 * HYBRID TEXTURING & PIXEL STREAMING PIPELINE
 * ============================================================================
 *
 * GR2 has NO dedicated texture filtering or sampling ASIC (texture hardware
 * was first introduced on SGI workstations with MGRAS/Impact in 1995).
 * Texturing is implemented as an ultra-fast hybrid CPU/hardware pipeline:
 *
 * 1. CPU Span Rasterization & Texture Sampling:
 *    - The host MIPS CPU computes perspective texture coordinates (s/q, t/q).
 *    - The CPU samples texels from texture image memory in host system RAM.
 *    - The CPU evaluates GL_TEXTURE_ENV (MODULATE, DECAL, BLEND, REPLACE)
 *      in software, combining the sampled texel with the interpolated Gouraud
 *      color (Cf_r, Cf_g, Cf_b, Cf_a). RE3 contains no TexEnv ALU.
 *
 * 2. Hardware Span Setup & Pixel Streaming via HQ2 Command FIFO:
 *    - HQ2_GL_TEX_SPAN_SETUP (token 0x029, HQ2.h):
 *      Driver streams 6 floats: [startX, 1.0f, startY, 0.0f, startZ, deltaZ].
 *      Initializes RE3 starting coordinates (X, Y), starting depth Z, and
 *      horizontal depth slope dZ across the span.
 *    - HQ2_GL_TEX_SPAN_COLOR (token 0x02A):
 *      Driver streams 4 floats per pixel: [R, G, B, A] (premixed by CPU).
 *      RE3 performs 24-bit hardware Z-buffer test against ZB4 DRAM, WID test,
 *      logic ops, and writes to 5-way interleaved VRAM. (CORRECTED: RE3 has
 *      no blend unit; see GR2.h "BLENDING AND ALPHA TEST".)
 *      RE3 automatically increments X and steps Z by deltaZ.
 *    - HQ2_GL_TEX_SPAN_SKIP (token 0x02D):
 *      Driver writes 0 when a texel is rejected by alpha-test or stippling.
 *      RE3 increments X and steps Z by deltaZ WITHOUT writing VRAM.
 *
 * ============================================================================
 * DEPTH BUFFERING & SOFTWARE Z FALLBACK
 * ============================================================================
 *
 * 1. Hardware Z-Buffer (haveZ == 1):
 *    - Installed on GR2-XZ, Elan, Extreme, and optional daughtercard on XS/XS24.
 *    - 10 DRAM banks (Bank A through J, 24 bits each = 16-bit low + 8-bit high).
 *    - RE3 evaluates depth function (DEPTHFN: NEVER, LESS, EQUAL, LEQUAL, etc.)
 *      and writes depth (Z) on every pixel write with depth.writeEnable == 1.
 *
 * 2. Software Z Fallback (haveZ == 0):
 *    - When Z-buffer daughtercard is not installed, driver sets haveZ = 0.
 *    - If depth test is disabled: driver sends HQ2_GL_DEPTH_TEST (token 0x014) = 0
 *      and renders purely in 2D / painter's algorithm order.
 *    - If depth test is requested: driver allocates a software depth buffer
 *      in host system RAM (gc->depthBuffer), redirects primitive rendering procs
 *      to CPU software span routines (__glSpanRenderRGBA, __glSpanRenderStencil),
 *      and blits passing spans into VRAM via RE3 RWDATA or GIO VDMA.
 */

#if defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 201112L) && (__SIZEOF_POINTER__ == 4) && !defined(_LANGUAGE_C)
_Static_assert(sizeof(struct gr2_re3_buffered) == 0x80, "sizeof(struct gr2_re3_buffered) must be 0x80");
_Static_assert(__builtin_offsetof(struct gr2_re3_buffered, enabrgb) == 0x10, "gr2_re3_buffered.enabrgb offset");
_Static_assert(__builtin_offsetof(struct gr2_re3_buffered, rgb) == 0x28, "gr2_re3_buffered.rgb offset");
_Static_assert(__builtin_offsetof(struct gr2_re3_buffered, yx) == 0x2c, "gr2_re3_buffered.yx offset");
_Static_assert(__builtin_offsetof(struct gr2_re3_buffered, z) == 0x50, "gr2_re3_buffered.z offset");
_Static_assert(__builtin_offsetof(struct gr2_re3_buffered, ir) == 0x7c, "gr2_re3_buffered.ir offset");
_Static_assert(sizeof(struct gr2_re3_control) == 0x80, "sizeof(struct gr2_re3_control) must be 0x80");
_Static_assert(__builtin_offsetof(struct gr2_re3_control, rwdata) == 0x00, "gr2_re3_control.rwdata offset");
_Static_assert(__builtin_offsetof(struct gr2_re3_control, pixmask) == 0x04, "gr2_re3_control.pixmask offset");
_Static_assert(__builtin_offsetof(struct gr2_re3_control, rwmode) == 0x14, "gr2_re3_control.rwmode offset");
_Static_assert(__builtin_offsetof(struct gr2_re3_control, depthfn) == 0x3c, "gr2_re3_control.depthfn offset");
_Static_assert(__builtin_offsetof(struct gr2_re3_control, megoption) == 0x78, "gr2_re3_control.megoption offset");
_Static_assert(sizeof(struct gr2_re3_32bit) == 0x80, "sizeof(struct gr2_re3_32bit) must be 0x80");
#endif

#endif /* _SGI_RE3_H_ */
