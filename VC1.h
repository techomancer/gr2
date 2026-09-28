/*
 * VC1.h - Silicon Graphics VC1 Video Controller ASIC
 *
 * Video Timing Generator (VTG), Hardware Cursor, Display ID (DID), Genlock.
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Generated from SGI IRIX PROM, IDE diagnostics (vc1tools.c, vidtim.h),
 * MAME sgi/vc1.cpp, NetBSD grtwo.c, and VB3 schematics.
 */

#ifndef _SGI_VC1_H_
#define _SGI_VC1_H_

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
 * VC1 ASIC SPECIFICATIONS
 * ============================================================================
 *
 * Gate Count:      ~50,000 gates
 * Operating Clock: 50 MHz (video dot clock domain)
 * Functions:
 *   1. Generates horizontal sync (HSYNC), vertical sync (VSYNC), blanking,
 *      and composite sync from programmable video timing tables in SRAM.
 *   2. Implements a 32x32 2-bpp hardware cursor with programmable color palette.
 *   3. Evaluates per-window Display IDs (DID) from frame/line tables to control
 *      per-pixel visuals (overlay, popup, truecolor, colormap index).
 *   4. Supports Genlock and external sync locking.
 */

/*
 * ============================================================================
 * VC1 DIRECT GIO REGISTERS (Offset 0x06c040 from GR2 base)
 * ============================================================================
 */
#define VC1_BASE_OFFSET             0x06c040

/* Direct Register Offsets */
#define VC1_COMMAND                 0x00    /* 0x00: Register data access (cmd0) */
#define VC1_XMAPMODE                0x04    /* 0x04: XMAP mode table access (cmd1) */
#define VC1_SRAM                    0x08    /* 0x08: External SRAM data access (cmd2) */
#define VC1_TESTREG                 0x0c    /* 0x0c: Test register / Chip Rev (cmd3) */
#define VC1_ADDRLO                  0x10    /* 0x10: Address pointer low byte (cmd4) */
#define VC1_ADDRHI                  0x14    /* 0x14: Address pointer high byte (cmd5) */
#define VC1_SYSCTL                  0x18    /* 0x18: System Control Register (cmd6) */

/*
 * VC1 SYSTEM CONTROL REGISTER (SYSCTL - 0x18)
 */
#define VC1_SYSCTL_INTERRUPT        0x01    /* Video interrupt enable */
#define VC1_SYSCTL_VTG              0x02    /* Video Timing Generator enable */
#define VC1_SYSCTL_VC1              0x04    /* VC1 core logic enable */
#define VC1_SYSCTL_DID              0x08    /* Display ID generation enable */
#define VC1_SYSCTL_CURSOR           0x10    /* Cursor logic enable */
#define VC1_SYSCTL_CURSOR_DISPLAY   0x20    /* Cursor display on screen enable */
#define VC1_SYSCTL_GENSYNC          0x40    /* Genlock sync enable */
#define VC1_SYSCTL_VIDEO            0x80    /* Video display output enable */

/* Test Register Revision Mask (cmd3) */
#define VC1_REVISION_MASK           0x07

/*
 * ============================================================================
 * VC1 INTERNAL REGISTERS (Addressed via ADDRHI:ADDRLO, accessed via cmd0)
 * ============================================================================
 */

/* Video Timing Generator Registers */
#define VC1_VID_EP                  0x00    /* 16-bit: Timing table entry pointer */
#define VC1_VID_LC                  0x02    /* 12-bit: Line count */
#define VC1_VID_SC                  0x04    /* 10-bit: Scan count */
#define VC1_VID_TSA                 0x06    /*  7-bit: Timing state A */
#define VC1_VID_TSB                 0x07    /*  7-bit: Timing state B */
#define VC1_VID_TSC                 0x08    /*  7-bit: Timing state C */
#define VC1_VID_LP                  0x09    /* 16-bit: Line pointer */
#define VC1_VID_LS_EP               0x0b    /* 16-bit: Line state entry pointer */
#define VC1_VID_LR                  0x0d    /*  8-bit: Line repeat */
#define VC1_VID_FC                  0x10    /* 32-bit: Frame count */
#define VC1_VID_ENAB                0x14    /*  6-bit: Video enable */

/* Hardware Cursor Generator Registers */
#define VC1_CUR_EP                  0x20    /* 16-bit: Cursor glyph SRAM pointer */
#define VC1_CUR_XL                  0x22    /* 11-bit: Cursor X coordinate */
#define VC1_CUR_YL                  0x24    /* 12-bit: Cursor Y coordinate */
#define VC1_CUR_MODE                0x26    /*  8-bit: Cursor mode */
#define VC1_CUR_BX                  0x27    /*  8-bit: Cursor box X offset */
#define VC1_CUR_LY                  0x28    /* 11-bit: Cursor line Y */
#define VC1_CUR_YC                  0x2a    /* 12-bit: Cursor line counter */
#define VC1_CUR_XC                  0x2c    /* 12-bit: Cursor pixel counter */
#define VC1_CUR_CC                  0x2e    /*  8-bit: Cursor color code */
#define VC1_CUR_RC                  0x30    /* 12-bit: Cursor repeat counter */

/* Display ID (DID) Controller Registers */
#define VC1_DID_EP                  0x40    /* 16-bit: DID format table SRAM pointer */
#define VC1_DID_END_EP              0x42    /* 16-bit: DID table end pointer */
#define VC1_DID_HOR_DIV             0x44    /*  8-bit: Pixels / 5 (horizontal division) */
#define VC1_DID_HOR_MOD             0x45    /*  3-bit: Pixels % 5 (horizontal modulo) */
#define VC1_DID_LP                  0x46    /* 16-bit: DID line pointer */
#define VC1_DID_LS_EP               0x48    /* 16-bit: DID line state entry pointer */
#define VC1_DID_WC                  0x4a    /* 16-bit: DID word count */
#define VC1_DID_RC                  0x4c    /* 16-bit: DID repeat count */

/* Control & Blackout Registers */
#define VC1_BLKOUT_EVEN             0x60    /*  8-bit: Blackout even fields */
#define VC1_BLKOUT_ODD              0x61    /*  8-bit: Blackout odd fields */
#define VC1_AUXVIDEO_MAP            0x62    /*  8-bit: Aux video mapping */

/*
 * ============================================================================
 * VC1 SRAM MEMORY MAP (32KB CMOS Static RAM TC55328)
 * ============================================================================
 *
 * SRAM is accessed through VC1_ADDRHI/ADDRLO and VC1_SRAM (cmd2):
 */
#define VC1_SRAM_SIZE               0x8000  /* 32KB */

#define VC1_VIDTIM_LST_BASE         0x0000  /* Line state table (standard) */
#define VC1_VIDTIM_CURSLST_BASE     0x0400  /* Line state table (cursor workaround) */
#define VC1_VIDTIM_FRMT_BASE        0x0800  /* Frame table (standard) */
#define VC1_VIDTIM_CURSFRMT_BASE    0x0900  /* Frame table (cursor workaround) */
#define VC1_SRAM_INTERLACED         0x09f0  /* Interlaced scan flag */
#define VC1_SRAM_SCREENWIDTH        0x09f2  /* Screen pixel width */
#define VC1_SRAM_NEXTDID_ADDR       0x09f4  /* Next DID table pointer */
#define VC1_CURSOR0_BASE            0x0a00  /* 32x32 2-bpp Cursor Glyph (128 words) */
#define VC1_DID_FRMT_BASE           0x0b00  /* DID Frame Table */
#define VC1_DID_MAX_FMTSIZE         0x0900  /* Max DID format size */
#define VC1_DID_LST_BASE            0x8000  /* DID line tables: Xsgi allocates downward from here; the textport uses 0x1400 */

/*
 * ACTUAL SRAM USE by the PROM (gr2_init.c:528-701) and kernel (gr2_init.c:560-660):
 * SRAM addresses are BYTE addresses. Each cmd2 (VC1_SRAM) access moves one
 * 16-bit word and advances the address pointer by 2.
 *   0x0000  line-state table (60 Hz kernel: 0xED words; PROM: vidtim.h
 *           ltableH60)
 *   0x0400  line-state table, cursor-workaround variant (kernel 0xDA words)
 *   0x0800  frame table (kernel 0x19 words)
 *   0x0900  frame table, cursor-workaround variant (kernel 0x19 words)
 *   0x09F0  kernel writes {0, 1280} (interlace flag, screen width)
 *   0x0A00  cursor glyph, 128 words (PROM: 16x16 arrow, plane 0 in words
 *           0..31, outline plane in words 64..95; kernel: all zero)
 *   0x0B00  DID frame table: ysize words. Rows 0..ysize-2 = 0x1400; the LAST
 *           row = 0x1404 ("HACK, bug in VC1. 4 dummy DID needed")
 *   0x1400  DID line table, 8 words: {1, did, 5, did, 0, 0, 0, 0} with
 *           did = 0 ("same DID for whole line"). Word [2] = word [0] + 4
 *           ("4 dummy DID with the previous scanline entry needed at the end").
 * The PROM, the kernel and the kernel decomp all agree on these values.
 * Read with the line-table format below ([count, (x << 5 | did) * count]):
 *   0x1400 = count 1, DID `did` from x 0 (the whole line);
 *   0x1404 = count 5: `did` plus the "4 dummy DID" entries, all at x 0.
 * So the textport tables are consistent with VC1_DID_ENTRY; see the Xsgi
 * tables under "DID Line Table" for a multi-window example.
 *
 * VC1 internal registers written at init (addrhi:addrlo, then 16-bit cmd0
 * writes that auto-increment by 2):
 *   0x00 VID_EP  = 0x900 if xpmax > 1025 (kernel: >= 0x402), else 0x800
 *   0x14 VID_ENAB = 0  ("always write in pair of bytes")
 *   0x40 DID_EP = 0xB00, 0x42 DID_END_EP = 0xB00 + 2*ysize,
 *   0x44 = (1279/5 << 8) | (1279 % 5) = 0xFF04 (HOR_DIV:HOR_MOD; NPIX 1276-1279
 *        so VC1 reuses the previous pixel's DID)
 *   0x60 BLKOUT_EVEN = 0 (colour-map index 0)
 *   0x20 CUR_EP = 0xA00, 0x22 CUR_XL = 0, 0x24 CUR_YL = 0, 0x26 CUR_MODE = 0
 * SYSCTL write order: 0x01 first (the PROM comment says "disable interrupt to
 * VC1, blackout"), and last:
 *   PROM:   0x3C = VC1 | DID | CURSOR | CURSOR_DISPLAY  (Indy PROM @0x169dc)
 *   kernel: 0x0C = VC1 | DID. The retrace handler turns CURSOR_DISPLAY (0x20)
 *           on and off.
 * Neither final value sets bit 0, yet retrace interrupts keep arriving in
 * IRIX. So bit 0 is probably NOT a retrace-interrupt enable; the old
 * VC1_SYSCTL_INTERRUPT name is (unverified).
 * Revision: addrhi = 0, addrlo = 5, then VC1Rev = testreg & 7
 * (Gr2ProbeChipRev).
 */

/*
 * Cursor position offsets - CORRECTED (2026-09). The old values 31/31 were
 * wrong. Kernel gr2.c:490-512 (per-board cursor_x_adj / cursor_y_adj) and
 * gr2_retrace.c:160-200:
 *   default (60 Hz 1280x1024):  x_adj = 0xFA (250), y_adj = 0x23 (35)
 *   MonitorType 1 (72 Hz):      x_adj = 0xF0 (240), y_adj = 0x22 (34)
 *   PROM (Gr2TpMovec, gr2_tp.c:358-414; values from the Indy PROM binary
 *   @0x36390): X +250, Y +0x22 (34).
 * The X offset is only added when the cursor's left edge is near the left
 * border, because the timing table is switched to work around a VC1 cursor bug:
 *   if (x - hotx) < 32:  VID_EP = 0x800 (VIDTIM_FRMT_BASE);      CUR_XL = x - hotx + x_adj
 *   else:                VID_EP = 0x900 (VIDTIM_CURSFRMT_BASE);  CUR_XL = x - hotx
 *   CUR_YL = (y - hoty) + y_adj   (y top-down; the kernel adds ypmax - 1024)
 * The kernel writes CUR_XL and CUR_YL as two consecutive 16-bit cmd0 writes
 * starting at internal address 0x22, then restores the saved address pointer.
 * Emulating the display: screen_x = CUR_XL - (VID_EP == 0x800 ? x_adj : 0),
 * screen_y = CUR_YL - y_adj (inferred from the host code; the exact hardware
 * pipeline delay is unverified).
 */
#define VC1_CURS_XOFF_1280          250     /* 0xFA; 240 (0xF0) on 72 Hz monitors */
#define VC1_CURS_YOFF_1280          35      /* 0x23 kernel; 0x22 PROM and 72 Hz */

/* Cursor Offsets for Corona 1024x768 Flat Panel Display */
#define VC1_CURS_XOFF_CORONA        25
#define VC1_CURS_YOFF_CORONA        25

/*
 * ============================================================================
 * VIDEO TIMING GENERATOR (VTG) MICROCODE FORMAT
 * ============================================================================
 *
 * VC1 executes video timing programs stored in SRAM:
 *
 * 1. Frame Table (frtable):
 *    Located at VC1_VIDTIM_FRMT_BASE (0x0800) / VC1_VIDTIM_CURSFRMT_BASE (0x0900).
 *    Preceded by a 1-byte header (0x04).
 *    Followed by an array of 3-byte scanline run descriptors:
 *      - lines:    Number of consecutive scanlines (1..126) to run this state.
 *      - line_ptr: 16-bit big-endian address in SRAM of the Line State sequence in ltable.
 *    Terminated when line_ptr == 0xFFFF.
 *
 * 2. Line State Table (ltable):
 *    Located at VC1_VIDTIM_LST_BASE (0x0000).
 *    Contains microcode sequences defining horizontal scanline timing.
 *    Each timing state consists of one or two 16-bit control words:
 *      Word 0:
 *        - Bit 15 (0x8000): End of Scanline (EOL). 1 = last state of scanline.
 *        - Bits 14..8:      Duration / run length in pixel clocks ((word >> 7) & 0x7F).
 *        - Bit 7 (0x0080):  Extension flag:
 *                           1 = single control word (no extra sync bits needed).
 *                           0 = followed by Word 1 containing detailed sync pulses.
 *        - Bits 6..1:       Timing State A (TSA) output signal levels.
 *        - Bit 0 (0x0001):  Blanking signal (0 = active video visible, 1 = blanked).
 *      Word 1 (only present if Word 0 bit 7 == 0):
 *        - Bit 15:          Second-word EOL flag.
 *        - Bits 14..8:      Timing State B (TSB) signals: HSYNC, VSYNC, CSYNC pulses.
 *        - Bits 6..0:       Timing State C (TSC) signals: CLAMP, FIELD, interrupt trigger.
 */

#pragma pack(push, 1)
struct vc1_sram_frame_entry {
    uint8_t     lines;          /* Number of consecutive scanlines */
    uint8_t     addr_hi;        /* High byte of Line State Table SRAM address */
    uint8_t     addr_lo;        /* Low byte of Line State Table SRAM address */
};
#pragma pack(pop)

static inline uint16_t vc1_frame_entry_addr(const struct vc1_sram_frame_entry *e) {
    return ((uint16_t)e->addr_hi << 8) | e->addr_lo;
}

static inline int vc1_frame_entry_is_term(const struct vc1_sram_frame_entry *e) {
    return (e->addr_hi == 0xFF && e->addr_lo == 0xFF);
}

/*
 * ============================================================================
 * DISPLAY ID (DID) DECOMPRESSION ENGINE
 * ============================================================================
 *
 * VC1 generates real-time 5-bit Window IDs (Display IDs, 0..31) for each pixel
 * on screen on-the-fly, without needing dedicated WID bitplanes in VRAM!
 *
 * DID Storage in SRAM:
 *   1. DID Frame Table (DID_FRMT_BASE, 0x0B00 or 0x4000):
 *      Array of 16-bit SRAM pointers, one per vertical scanline Y (0..ysize-1):
 *        frametable[Y] = SRAM address of DID Line Table for scanline Y.
 *      All scanlines that share the same horizontal window divisions point
 *      to the exact same DID Line Table in SRAM!
 *      A window move in Y only updates the pointers of the top and bottom edges.
 *
 *   2. DID Line Table (DID_LST_BASE, 0x4900 or 0x8000):
 *      Header:
 *        uint16_t entry_count; (Number of horizontal transition descriptors)
 *      Array of entry_count 16-bit Run-Length Transition Descriptors:
 *        Bits 15..5: X coordinate (11 bits, 0..2047) of window boundary
 *        Bits  4..0: DID value (5 bits, 0..31) starting at this X coordinate
 *
 * Hardware Decompression Algorithm:
 *   - At the start of scanline Y, VC1 loads line_ptr = frametable[Y].
 *   - Reads entry_count, initializes pixel X counter to 0.
 *   - Loads descriptor[0] -> (X_trans, DID_val).
 *   - As pixel counter advances:
 *     - If X reaches X_trans:
 *       DID_active = descriptor[i].DID;
 *       Loads next descriptor (X_trans = descriptor[i+1].X).
 *     - Outputs DID_active (5 bits) synchronized to pixel clock to XMAP5!
 *
 * Macro to pack and unpack DID Line Table Transition Descriptors:
 *   descriptor = (X << 5) | (DID & 0x1F)
 *
 * CONFIRMED against live tables written by IRIX 6.5.22 Xsgi (clogin, GR3-XZ,
 * read back from VC1 SRAM in the emulator):
 *   DID_EP = 0xB00, frame table rows point at line tables allocated
 *   downward from 0x8000 (not at 0x1400 as the kernel textport does):
 *     0x7FFC: [0x0001, 0x0003]                  whole line DID 3 (root)
 *     0x7FF4: [0x0003, 0x0003, 0x28C9, 0x7583]  DID 3 from x 0,
 *                                               DID 9 from x 326,
 *                                               DID 3 from x 940
 *   X is the plain screen pixel column: the VRAM contents of that window
 *   switch from 8-bit CI to 24-bit RGB exactly at x = 326. The first
 *   descriptor's X is 0. (Whether hardware requires X-sorted descriptors or
 *   pipeline dummies for multi-window lines is (unverified).)
 *
 * Xsgi's DID -> XMAP5 mode words on GR3-XZ (6.5.22), DID: mode:
 *   0 0xA0F00800 (4-bit CI pg 20)   1 0xA0F10800 (4-bit RGB)
 *   2 0x82F00800 (8-bit CI pg 16)   3 0x8AF00800 (8-bit CI pg 17)
 *   4 0x92F00800 (8-bit CI pg 18)   5 0x9AF00800 (8-bit CI pg 19)
 *   6 0x82F10800 (8-bit RGB 3:3:2)  7 0x04F00800 (12-bit CI)
 *   8 0x04F10800 (12-bit RGB)       9 0x07F10800 (24-bit RGB)
 *   (visual names inferred from the XMAP5 mode fields)
 */
#define VC1_DID_ENTRY(x, did) \
    ((uint16_t)((((uint16_t)(x) & 0x7FF) << 5) | ((did) & 0x1F)))

#define VC1_DID_GET_X(entry) \
    ((uint16_t)(((uint16_t)(entry) >> 5) & 0x7FF))

#define VC1_DID_GET_DID(entry) \
    ((uint8_t)((entry) & 0x1F))

/*
 * ============================================================================
 * SCREEN COMPOSITION, BITPLANES, & CLIPPING ARCHITECTURE
 * ============================================================================
 *
 * SGI GR2 (EXPRESS / Extreme / Elan) 56-bit Framebuffer Architecture:
 * Total 56 bits per pixel across 5-way interleaved VRAM & Z-buffer:
 *
 * 1. Physical Framebuffer Bitplanes (VM2 ASIC / VRAM):
 *    - Main Pixel Planes (BITPLANE - 24 bits):
 *        * 24-bit TrueColor RGB (8R, 8G, 8B)
 *        * 8-bit / 12-bit Color Index (Double-buffered: Bank 0 = Front, Bank 1 = Back)
 *    - Auxiliary Planes (AUXPLANE - 4 bits):
 *        * 4 physical bits total per pixel (AUX_VRAM).
 *        * Configurable via XMAP5 Mode Word:
 *          - Standard default: 2 bits Overlay (AUX[1:0]) + 2 bits Popup menu (AUX[3:2])
 *          - Full 4-bit Overlay (OLAYEN = 0xF: 15 overlay colors + transparent)
 *          - Full 4-bit Popup (POU_MODE = 2 or 3)
 *          - 1-bit Overlay + 1-bit Underlay + 2-bit Popup (ULAYEN enabled)
 *    - Context ID Planes (CIDPLANE / WID - 4 bits):
 *        * 4 physical bits in VRAM (CID_DRAM / VB2_CID_VRAM).
 *        * USED BY THE RASTER ENGINE (RE3) FOR DRAW MASKING / CLIPPING!
 *        * When RE3 draws geometry (triangles, spans, texels), if RE3_REG_ENABWID
 *          is set, RE3 tests: VRAM_CID == RE3_REG_CURWID.
 *        * If the pixel CID does not match CURWID, the write is discarded!
 *        * This provides per-pixel hardware clipping to arbitrary non-rectangular,
 *          overlapping, or shaped windows without software scissor overhead.
 *    - Depth & Stencil Planes (ZPLANE - 24 bits):
 *        * 24 bits depth/stencil in separate high-bandwidth ZB4 DRAM.
 *        * Partitioned as 20 bits Depth + 4 bits Stencil (when stencil enabled),
 *          or full 24 bits Depth (when stencil disabled).
 *        * Hardware stencil ops (KEEP, ZERO, REPLACE, INCR, DECR, INVERT) and
 *          comparisons (LESS, EQUAL, etc.) are executed directly by RE3 in parallel
 *          with Z comparisons.
 *
 * 2. Two Distinct Window ID Concepts in SGI Architecture:
 *    a) VC1 DID (Display ID - 5 bits):
 *       - Generated in real-time by the VC1 Video Controller from SRAM microcode.
 *       - Used ONLY for display / scanout / XMAP5 compositing.
 *       - Selects which visual mode (RGB vs CI, buffer bank, CLUT page) to display.
 *       - Requires ZERO VRAM bitplanes.
 *    b) VM2 CID (Context ID / Window Clipping ID - 4 bits):
 *       - Stored in physical VRAM bitplanes (CIDPLANE).
 *       - Used by the Raster Engine (RE3) during DRAWING to clip rendering.
 *
 * 3. Five Parallel XMAP5 Compositor ASICs:
 *    The 1280-pixel scanline is interleaved across 5 XMAP5 ASICs (each handles
 *    256 pixels, i.e. X % 5).
 *    For each pixel, XMAP5 evaluates the 5-bit DID from VC1:
 *      Level 1 (Highest): Hardware Cursor (VC1 32x32 2-bpp glyph + palette)
 *      Level 2:           Popup Planes (AUX[3:2] != 0 && POU_MODE enabled) -> POU_PG
 *      Level 3:           Overlay Planes (AUX[1:0] != 0 && OLAYEN enabled) -> OLAY CLUT
 *      Level 4:           Main Visual (Selected by DID Mode Word):
 *                         * PD_RGB: Direct 24-bit TrueColor RGB to DAC
 *                         * PD_CI:  Indexes into XMAP5 8192-entry CLUT at page PIX_PG
 *                         * PD_CIMM: Color Index Multimode
 *      Level 5:           Underlay Planes (ULAYEN enabled)
 *      Level 6 (Lowest):  Blackout Color (XMAP5_MISC_BLACK_RED/GRN/BLU)
 *
 * 4. Colormaps (CLUTs) vs RAMDAC:
 *    - XMAP5 contains an 8,192-entry x 24-bit CLUT partitioned into 32 pages of
 *      256 entries (selected by PIX_PG). Allows 32 concurrent 8-bit windows to
 *      have isolated, non-flashing palettes.
 *    - Brooktree Bt457 RAMDAC only receives the final 24-bit digital RGB (5:1 muxed)
 *      and applies an identity gamma ramp (paltram).
 *
 * 5. Software Architecture:
 *    - setmon: Issues ioctl(GIOCSETMON) to reload VC1 timing tables and dot clock.
 *    - Xsgi:   Opens /dev/gfx, allocates WIDs (0..31), maintains VC1 DID tables,
 *              writes window CID into VRAM CID planes to define clipping masks,
 *              programs XMAP5 mode words, and draws cursor glyphs.
 *    - Kernel (gr2_retrace.c): Services INT2 vertical retrace, moves cursor, and
 *              executes atomic double-buffer swaps via XMAPALL_ADDRLO / XMAPALL_MODE.
 */

/*
 * ============================================================================
 * HARDWARE CURSOR DATA STRUCTURE
 * ============================================================================
 *
 * 32x32 2-bpp cursor bitmap:
 *   - Words 0..63:   Cursor shape bitplane (16 lines x 2 words/line)
 *   - Words 64..127: Cursor outline / second bitplane
 */
#define VC1_CURSOR_WORDS            128

/*
 * ============================================================================
 * VC1 DIRECT REGISTER STRUCTURE (struct gr2_vc1)
 * ============================================================================
 */
struct gr2_vc1 {
    gr2_reg32_t cmd0;               /* 0x00: Command / Internal register access */
    gr2_reg32_t cmd1;               /* 0x04: XMAP mode table access */
    gr2_reg32_t cmd2;               /* 0x08: SRAM data read/write */
    gr2_reg32_t testreg;            /* 0x0c: Test register / Revision (cmd3) */
    gr2_reg32_t addrlo;             /* 0x10: Address pointer low byte (cmd4) */
    gr2_reg32_t addrhi;             /* 0x14: Address pointer high byte (cmd5) */
    gr2_reg32_t sysctl;             /* 0x18: System control register (cmd6) */
    uint32_t pad;                   /* 0x1c: Pad to 0x20 */
};

#endif /* _SGI_VC1_H_ */
