/*
 * XMAP5.h - Silicon Graphics XMAP5 Multimode Color Mapper ASIC
 *
 * Pixel Compositor, Window ID (DID) Lookup, Colormap (CLUT), Overlay/Popup Mixer.
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Generated from SGI IRIX PROM, IDE diagnostics (xmap.h, xmaptest1.c),
 * NetBSD sgimips, and VB3 schematics.
 */

#ifndef _SGI_XMAP5_H_
#define _SGI_XMAP5_H_

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
 * XMAP5 ASIC SPECIFICATIONS
 * ============================================================================
 *
 * Gate Count:      ~18,000 gates each (5 instances = ~90,000 gates)
 * Operating Clock: 25 MHz (interleaved dot clock slice)
 *
 * Architecture:
 *   - 5 parallel XMAP5 ASICs on the video backend (VB1/VB2/VB3).
 *   - Each XMAP5 processes one 256-pixel bank of each 1280-pixel scanline.
 *   - Each XMAP5 contains an 8192-entry Color Lookup Table (CLUT) for 24-bit RGB.
 *   - Evaluates Display IDs (DID) and Auxiliary plane bits to composite
 *     popups, menus, overlays, underlays, 24-bit RGB, and 8-bit/12-bit colormaps.
 *   - Outputs 24-bit digital RGB to the Brooktree Bt457 RAMDACs.
 */

/*
 * ============================================================================
 * XMAP5 GIO REGISTER OFFSETS
 * ============================================================================
 */
#define XMAP5_CHANNEL0_OFFSET       0x06c100    /* Bank 0 (pixels 0, 5, 10...) */
#define XMAP5_CHANNEL1_OFFSET       0x06c120    /* Bank 1 (pixels 1, 6, 11...) */
#define XMAP5_CHANNEL2_OFFSET       0x06c140    /* Bank 2 (pixels 2, 7, 12...) */
#define XMAP5_CHANNEL3_OFFSET       0x06c160    /* Bank 3 (pixels 3, 8, 13...) */
#define XMAP5_CHANNEL4_OFFSET       0x06c180    /* Bank 4 (pixels 4, 9, 14...) */
#define XMAP5_BROADCAST_OFFSET      0x06c1a0    /* Broadcast to all 5 XMAP5s */

/* Register offsets relative to XMAP base */
#define XMAP5_MISC_OFFSET           0x00        /* 0x00: Miscellaneous registers */
#define XMAP5_MODE_OFFSET           0x04        /* 0x04: 32-bit Mode register */
#define XMAP5_CLUT_OFFSET           0x08        /* 0x08: CLUT data port (R, G, B) */
#define XMAP5_CRC_OFFSET            0x0c        /* 0x0c: CRC signature register */
#define XMAP5_ADDRLO_OFFSET         0x10        /* 0x10: Address pointer low byte */
#define XMAP5_ADDRHI_OFFSET         0x14        /* 0x14: Address pointer high byte */
#define XMAP5_BYTECNT_OFFSET        0x18        /* 0x18: Byte counter (read-only) */
#define XMAP5_FIFOSTATUS_OFFSET     0x1c        /* 0x1c: FIFO status register */

/*
 * ============================================================================
 * XMAP5 REGISTER STRUCTURE (struct gr2_xmap5)
 * ============================================================================
 */
struct gr2_xmap5 {
    gr2_reg32_t misc;                   /* 0x00: Miscellaneous control */
    gr2_reg32_t mode;                   /* 0x04: 32-bit Mode word */
    gr2_reg32_t clut;                   /* 0x08: CLUT write (R, G, B) */
    gr2_reg32_t crc;                    /* 0x0c: CRC test register */
    gr2_reg32_t addrlo;                 /* 0x10: Address low byte */
    gr2_reg32_t addrhi;                 /* 0x14: Address high byte */
    gr2_reg32_t bytecnt;                /* 0x18: Byte count (RO) */
    gr2_reg32_t fifostatus;             /* 0x1c: FIFO status */
};

/*
 * ============================================================================
 * FIFO STATUS REGISTER (0x1c)
 * ============================================================================
 */
#define XMAP5_FIFO_EMPTY            0x01        /* (name doubtful - see below) */
#define XMAP5_FIFO_HALF_FULL        0x02        /* (name doubtful - see below) */
#define XMAP5_FIFO_OVF              0x04        /* FIFO has overflowed */
#define XMAP5_FIFO_DEPTH            512         /* FIFO depth in words */
/*
 * How software actually tests fifostatus (it only reads xmap[0], as a byte):
 *   kernel gr2_tport.c:45-62, gr2_init.c:897: while (fifostatus & 1) wait
 *     (bounded at 1000 us) before CLUT writes.
 *   kernel _Gr2XMAPInit3 (gr2_init.c:471-513): while (!(fifostatus & 2)) wait
 *     (bounded at 10000 us) before each 256-entry block of CLUT writes.
 *   kernel Gr2SetGammaRamp (gr2_retrace.c:712-744): while (fifostatus & 1),
 *     NO timeout.
 * So bit 0 SET = busy/not ready and bit 1 SET = room for a burst. That makes
 * the EMPTY/HALF_FULL names above misleading; they are probably active-low
 * flags (unverified). An idle board should read 0x02.
 * WRITES to fifostatus have another meaning: on flat-panel systems
 * the PROM and kernel write xmap[0..4].fifostatus = 0xF, 0xC, 0xD, 0xE, 0xF
 * to enable output to the panel connector (gr2_init.c FLAT_PANEL block).
 */

/*
 * ============================================================================
 * MISCELLANEOUS REGISTERS (Addressed via addrlo = 0..6)
 * ============================================================================
 */
#define XMAP5_MISC_BLACK_RED        0           /* Red component of blackout value */
#define XMAP5_MISC_BLACK_GRN        1           /* Green component of blackout value */
#define XMAP5_MISC_BLACK_BLU        2           /* Blue component of blackout value */
#define XMAP5_MISC_PG_REG           3           /* Popup / Overlay Green reg (4 bits) */
#define XMAP5_MISC_CU_REG           4           /* Cursor color index reg (5 bits) */
#define XMAP5_MISC_CTRL5            5
#define XMAP5_MISC_CTRL6            6

/*
 * ============================================================================
 * 32-BIT MODE REGISTER BITFIELDS (Addressed per Window ID / DID 0..31)
 * ============================================================================
 *
 * The 32-bit mode word determines how VRAM bitplanes are mapped to the display:
 *
 *   Bits 31:27: PIX_PG     Pixel page in CLUT (5 bits)
 *   Bits 26:24: PIX_MODE   Pixel plane mode (3 bits)
 *   Bits 23:20: OLAYEN     Overlay enable mask (4 bits)
 *   Bits 19:18: ALT_VIDEO  Alternate video / genlock mode (2 bits)
 *   Bits 17:16: PD_MODE    Pixel display mode (2 bits)
 *   Bit  15:    POU_PX     Popup pixel mode enable
 *   Bit  14:    POU_OVER   Popup over video enable
 *   Bits 13:9:  AUX_PG     Auxiliary CLUT page (5 bits)
 *   Bit  8:     ULAYEN     Underlay enable
 *   Bits 7:6:   POU_MM     Popup multimode (2 bits)
 *   Bit  5:     POU_MODE   Popup mode (2 bits)
 *   Bits 4:0:   POU_PG     Popup CLUT page (5 bits)
 */

/*
 * Pixel Plane Modes (PIX_MODE, bits 26:24)
 *
 * Paired with PD_MODE (bits 17:16):
 *   When PD_MODE == XMAP5_PD_RGB:
 *     - XMAP5_PIX_24:   24-bit TrueColor RGB (8R, 8G, 8B), single-buffered
 *     - XMAP5_PIX_16:   16-bit RGB (5R, 6G, 5B)
 *     - XMAP5_PIX_12_0: 12-bit 4:4:4 TrueColor RGB (4R, 4G, 4B), Bank 0 (Front buffer)
 *     - XMAP5_PIX_12_1: 12-bit 4:4:4 TrueColor RGB (4R, 4G, 4B), Bank 1 (Back buffer)
 *                       Each 4-bit nibble C is expanded to 8 bits for the DAC:
 *                         C8 = (C4 << 4) | C4  (e.g., 0xF -> 0xFF, 0x0 -> 0x00)
 *                       Bit placement: bank 0 = VRAM bits 11:0, bank 1 =
 *                       bits 23:12, each 12 contiguous planes. Evidence:
 *                       libglcore __glExpPassDrawBuffer builds the plane
 *                       masks 0x000FFF / 0xFFF000 for the two buffers of a
 *                       12-bit RGB double-buffered visual, and the kernel's
 *                       swap flips the DID mode between PIX_12_0 and
 *                       PIX_12_1 (0x04F10800 <-> 0x05F10800, IRIX 6.5.22).
 *                       Nibble order inside a bank: R in bits 3:0, G 7:4,
 *                       B 11:8. Same convention as Newport/REX3, where it
 *                       is established (DRAWMODE1 DRAWDEPTH 12: 4-4-4 with R
 *                       low, value replicated val | val << 12, WRMASK
 *                       0x000FFF / 0xFFF000 selecting the buffer, same
 *                       libGL masks). Confirmed by the Xsgi 12-bit
 *                       TrueColor visual (xdpyinfo on IRIX 6.5.22, XZ: red
 *                       0x00F, green 0x0F0, blue 0xF00) and by the DDX's
 *                       expReadImage12 conversion (R = bits 3:0, G = 7:4,
 *                       B = 11:8).
 *     - XMAP5_PIX_8_0:  8-bit 3:3:2 TrueColor RGB, Bank 0
 *     - XMAP5_PIX_8_1:  8-bit 3:3:2 TrueColor RGB, Bank 1
 *                       Bit order: R in bits 7:5, B 4:3, G 2:0 (NOT the
 *                       R-low 3:3:2 of REX3). Sources: the Xsgi 8-bit
 *                       TrueColor visual 0x27 (xdpyinfo, IRIX 6.5.22 XZ: red
 *                       0xE0, green 0x07, blue 0x18); libglcore
 *                       __glExpSetPixWritemask packs 8-bit masks the same
 *                       way; 4Dwm's minimized-window icon images (8-bit
 *                       TrueColor tiles) only look right decoded this way.
 *     - 4-bit TrueColor (Xsgi visual 0x24): red 0x8, green 0x6, blue 0x1.
 *   When PD_MODE == XMAP5_PD_CI:
 *     - XMAP5_PIX_12_0/1: 12-bit Color Index (4,096 colors through CLUT), Bank 0 / 1
 *     - XMAP5_PIX_8_0/1:   8-bit Color Index (256 colors at page PIX_PG), Bank 0 / 1
 *     - XMAP5_PIX_4_0/1:   4-bit Color Index (16 colors), Bank 0 / 1
 */
#define XMAP5_PIX_4_0               0           /* 4-bit, bank 0 */
#define XMAP5_PIX_4_1               1           /* 4-bit, bank 1 */
#define XMAP5_PIX_8_0               2           /* 8-bit, bank 0 */
#define XMAP5_PIX_8_1               3           /* 8-bit, bank 1 */
#define XMAP5_PIX_12_0              4           /* 12-bit (4:4:4 RGB or 12-bit CI), bank 0 */
#define XMAP5_PIX_12_1              5           /* 12-bit (4:4:4 RGB or 12-bit CI), bank 1 */
#define XMAP5_PIX_16                6           /* 16-bit RGB */
#define XMAP5_PIX_24                7           /* 24-bit TrueColor RGB */

/* Pixel Display Modes (PD_MODE, bits 17:16) */
#define XMAP5_PD_CI                 0           /* Color Index through CLUT */
#define XMAP5_PD_RGB                1           /* Direct TrueColor RGB */
#define XMAP5_PD_CIMM               2           /* Color Index Multimode */
#define XMAP5_PD_BLACKOUT           3           /* Blackout mode */

/* Alternate Video Modes (ALT_VIDEO, bits 19:18) */
#define XMAP5_VIDEO_OFF             0           /* Video off */
#define XMAP5_VIDEO_OVER            1           /* Video over graphics */
#define XMAP5_VIDEO_UNDER           2           /* Video under graphics */
#define XMAP5_VIDEO_REP             3           /* Video replace */

/* Popup Modes (POU_MODE, bits 6:5) */
#define XMAP5_POU_OFF               0           /* Popup planes disabled */
#define XMAP5_POU_8                 1           /* 8-bit popup */
#define XMAP5_POU_4_0               2           /* 4-bit popup bank 0 */
#define XMAP5_POU_4_1               3           /* 4-bit popup bank 1 */

/* Mode Field Packing Macros */
#define XMAP5_SET_PIX_MODE(m)       (((uint32_t)(m) & 0x7) << 24)
#define XMAP5_SET_PIX_PG(pg)        ((((uint32_t)(pg) & 0x1f) << 3) << 24)
#define XMAP5_SET_PD_MODE(pd)       (((uint32_t)(pd) & 0x3) << 16)
#define XMAP5_SET_ALT_VIDEO(v)      ((((uint32_t)(v) & 0x3) << 2) << 16)
#define XMAP5_SET_OLAYEN(ol)        ((((uint32_t)(ol) & 0xf) << 4) << 16)
#define XMAP5_SET_ULAYEN(ul)        (((uint32_t)(ul) & 0x1) << 8)
#define XMAP5_SET_AUX_PG(pg)        ((((uint32_t)(pg) & 0x1f) << 1) << 8)
#define XMAP5_SET_POU_OVER(po)      (((uint32_t)(po) & 0x1) << 14)
#define XMAP5_SET_POU_PX(px)        (((uint32_t)(px) & 0x1) << 15)
#define XMAP5_SET_POU_PG(pg)        ((uint32_t)(pg) & 0x1f)
#define XMAP5_SET_POU_MODE(pm)      (((uint32_t)(pm) & 0x3) << 5)
#define XMAP5_SET_POU_MM(mm)        (((uint32_t)(mm) & 0x3) << 7)

/*
 * ============================================================================
 * COLOR LOOKUP TABLE (CLUT) SPECIFICATIONS
 * ============================================================================
 *
 * Size: 8192 entries x 24-bit RGB (3 bytes per entry).
 * Addressed via:
 *   addrhi = (index & 0x1f00) >> 8;
 *   addrlo = index & 0xff;
 * Data written to XMAP5_CLUT in 3 consecutive writes: Red, Green, Blue.
 */
#define XMAP5_CLUT_SIZE             8192

#define XMAP5_CLUT_TEXTPORT_BASE    4096        /* 8-bit Textport colormap base (page 16) */
/*
 * CORRECTED (2026-09): the cursor colours are CLUT entries 0x1C01 (colour 1,
 * PROM: red) and 0x1C02 (colour 2, PROM: white), per PROM Gr2SetCursorColor /
 * the Indy PROM binary. 0x1C03 is presumably the both-planes colour
 * (unverified). The old value (4096 + 1) was wrong.
 */
#define XMAP5_CLUT_CURSOR_BASE      0x1C00      /* cursor colour n at 0x1C00 + n */

/*
 * CLUT PORT IS ACCESS-WIDTH SENSITIVE (2026-09, Xsgi DDX trace):
 *   - byte stores (sb; kernel clut.b, PROM): one component per store, R then
 *     G then B, and the address advances after B (described below);
 *   - 32-bit stores (sw; Xsgi DDX exp_cmap): ONE WHOLE ENTRY per store,
 *     R = bits 31:24, G = 23:16, B = 15:8, low byte ignored, then the address
 *     advances. Example from the DDX loading its default map at page 17:
 *     addrhi = 0x11; addrlo = n; clut = 0x000000ff (black), 0xff000000 (red),
 *     0x00ff00ff (green), ... 0xffffff55 (white), 0x555555c6 (grey). The low
 *     byte is the next entry's red, left over from packing a byte stream.
 *     The DDX sets addrlo/addrhi before every entry.
 *
 * CLUT WRITE SEQUENCE: addrhi = (index & 0x1f00) >> 8, addrlo = index & 0xff,
 * then three byte writes to clut: R, G, B. The address auto-increments after
 * each B, carrying from addrlo into addrhi. Kernel _Gr2XMAPInit3 sets the
 * address once (0x100) and streams 31 x 256 entries of zeros up to 0x1FFF.
 * NOTE: that wipes the 8 colours _Gr2XMAPInit2 loaded at 0x1000; the textport
 * reloads its colours afterwards through htport mapcolor.
 * Writes normally go through xmapall (0x6c1a0) so all five XMAPs stay
 * identical.
 *
 * AUX-PLANE CLUT BLOCK (2026-09, Xsgi DDX exp_cmap.c):
 *   The aux planes (4 bits: overlay + popup) are looked up as ONE 4-bit index
 *   into a 16-entry block at CLUT[0x1C00 + AUX_PG * 16]:
 *     - Xsgi mode words always carry 0x800 (AUX_PG = 4) and OLAYEN = 0xF,
 *       POU_MODE = 0; expStoreOverlay4Colors writes CLUT[0x1C40 + pixel],
 *       expStorePupColors writes 0x1C40/0x1C44/0x1C48/0x1C4C + v (popup value
 *       in aux bits 3:2).
 *     - The hardware cursor colours 0x1C01..0x1C03 are the same scheme at
 *       AUX_PG 0.
 *   A pixel whose enabled aux bits (aux & OLAYEN) are non-zero shows that
 *   entry; zero shows the main visual. POU_MODE != 0 popups are (unverified).

 * TEXTPORT DISPLAY STATE (PROM Gr2XMAPInit gr2_init.c:343-398, kernel
 * _Gr2XMAPInit1):
 *   xmapall.addr = 0; mode = 0x82000000 for DID 0 only:
 *     PIX_PG = 16, PIX_MODE = 2 (8-bit colour index, buffer 0), PD_MODE = 0 (CI).
 *   => a textport pixel is displayed as CLUT[16*256 + (pixel & 0xff)] =
 *      CLUT[0x1000 + ci].
 *   xmapall.addr = 0; misc <- 0, 0, 0 (blackout R, G, B), 14 (PG_REG),
 *      0 (CU_REG). misc auto-increments.
 * Mode-table addressing is BYTE-based: addrhi = 0, addrlo = DID * 4, then a
 * 32-bit write to mode (kernel gr2_retrace.c:99-105 buffer swap:
 * xmapall.addrlo = did*4; xmapall.mode = new_mode). DID 0 is at 0, so the
 * PROM/kernel init writes at address 0 look the same either way. Whether the
 * address advances by 4 after a mode access is (unverified); the kernel sets
 * it before every write. The emulator advances by 4.
 */

#endif /* _SGI_XMAP5_H_ */
