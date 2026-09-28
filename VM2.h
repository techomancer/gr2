/*
 * VM2.h - Silicon Graphics VM2 Framebuffer & Memory Subsystem
 *
 * Framebuffer VRAM, Auxiliary Planes, Window ID (WID/CID), and Z-Buffer Memory.
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Generated from SGI IRIX PROM, IDE diagnostics (bitp.c, RAMtools.c),
 * GR4 and VB3 schematics.
 */

#ifndef _SGI_VM2_H_
#define _SGI_VM2_H_

#include <stdint.h>

/*
 * ============================================================================
 * FRAMEBUFFER ARCHITECTURE & INTERLEAVING
 * ============================================================================
 *
 * Native Resolution: 1280 x 1024 pixels @ 60Hz or 72Hz
 * Low Resolution:   1024 x 768 (Corona Flat Panel)
 *
 * 5-Way Interleaved Memory Organization:
 * ----------------------------------------------------------------------------
 * The 1280-pixel scanline is divided into 5 interleaved banks of 256 pixels each.
 * Each bank is handled by dedicated VRAM and a corresponding XMAP5 ASIC:
 *
 *   Pixel X Coordinate -> Bank = (X % 5)
 *   Column in Bank     -> Col  = (X / 5) (0..255)
 *
 * Bitplane Configurations:
 * ----------------------------------------------------------------------------
 * 1. 8-bit Color (Entry-level GR2-XS):
 *    - 1 VM2 board installed (Slot A).
 *    - 8 bits per pixel (color index or 8-bit dithered RGB).
 *
 * 2. 24-bit True Color (GR2-XS24, XZ, Elan, Extreme):
 *    - 3 VM2 boards installed (Slots A, B, C) or integrated on GR4/VB3.
 *    - 24 bits per pixel: 8 bits Red, 8 bits Green, 8 bits Blue.
 *
 * 3. Auxiliary Planes (AUX):
 *    - 4 bitplanes per pixel for popups, menus, overlays, and underlays.
 *
 * 4. Window ID Planes (WID / CID):
 *    - 4 bitplanes per pixel (16 possible window IDs).
 *    - Drives per-pixel display mode selection in XMAP5.
 *
 * 5. Z-Buffer Subsystem (ZB4 / ZRB1):
 *    - 24-bit fixed-point depth per pixel.
 *    - 10 DRAM banks (Bank A through Bank J) buffered by 3 ZRB1 ASICs.
 */

#define VM2_SCREEN_WIDTH            1280
#define VM2_SCREEN_HEIGHT           1024
#define VM2_BANKS                   5
#define VM2_PIXELS_PER_BANK         256     /* 5 * 256 = 1280 pixels/line */

/* Screen Coordinates */
#define VM2_XMIN                    0
#define VM2_XMAX                    1279
#define VM2_YMIN                    0
#define VM2_YMAX                    1023

/*
 * Note on Coordinate Orientation:
 * SGI GR2 hardware places (0,0) at the LOWER-LEFT corner of the display,
 * matching OpenGL / Silicon Graphics IRIS GL coordinate conventions.
 * Top-left coordinate in hardware: (0, 1023).
 */
#define VM2_FLIP_Y(y)               (VM2_YMAX - (y))

/*
 * ============================================================================
 * READ SOURCE SELECTION (RE3 DIAG_READSOURCE)
 * ============================================================================
 *
 * Selects which physical plane is accessed during DMA or CPU readback:
 */
#define VM2_READSRC_BITPLANE        0       /* Color bitplanes (8-bit or 24-bit) */
#define VM2_READSRC_AUXPLANE        1       /* Auxiliary planes (popups/overlays) */
#define VM2_READSRC_ZPLANE          2       /* 24-bit Z-Buffer depth */
#define VM2_READSRC_CIDPLANE        3       /* Window ID / CID planes */

/*
 * ============================================================================
 * PIXEL FORMAT ENCODING
 * ============================================================================
 */

/* 24-bit Packed RGB (in 32-bit GIO word) */
#define VM2_PACK_RGB(r, g, b) \
    (((uint32_t)(r) & 0xff) | (((uint32_t)(g) & 0xff) << 8) | (((uint32_t)(b) & 0xff) << 16))

#define VM2_GET_R(pix)              ((pix) & 0xff)
#define VM2_GET_G(pix)              (((pix) >> 8) & 0xff)
#define VM2_GET_B(pix)              (((pix) >> 16) & 0xff)

/* 24-bit Z-Buffer Value */
#define VM2_Z_MASK                  0x00ffffff
#define VM2_Z_MAX                   0x00ffffff

/* Window ID / CID Value (4 bits) */
#define VM2_WID_MASK                0x0f

/* Auxiliary Planes (4 bits: Overlay, Underlay, Popup) */
#define VM2_AUX_MASK                0x0f

/*
 * ============================================================================
 * Z-BUFFER DRAM CONFIGURATIONS (ZB4 / ZRB1)
 * ============================================================================
 *
 * Controlled by bdvers.rd1 on Rev < 4:
 *   0: 64K x 16 DRAMs
 *   1: 256K x 4 DRAMs
 */
#define VM2_ZCONFIG_64K_16          0
#define VM2_ZCONFIG_256K_4          1

#endif /* _SGI_VM2_H_ */
