/*
 * GR2.h - Silicon Graphics GR2 (Express / Elan / Extreme / XZ) Graphics Subsystem
 *
 * Historic 3D Graphics Architecture for SGI Indigo (IP20), Indy (IP22),
 * and Indigo2 (IP22/IP26/IP28).
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Generated from SGI IRIX PROM (libsk), IDE diagnostics (stand/arcs/ide),
 * NetBSD sgimips grtwo driver, MAME drivers, and hardware schematics (GR4 & VB3).
 */

#ifndef _SGI_GR2_H_
#define _SGI_GR2_H_

#include <stdint.h>

/*
 * Multi-width 32-bit register type for SGI hardware registers.
 * Hardware registers are mapped on 32-bit aligned boundaries in GIO space,
 * but CPU instructions access them with byte (sb/lbu), halfword (sh/lhu),
 * or word (sw/lw) operations.
 */
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
 * ARCHITECTURE OVERVIEW
 * ============================================================================
 *
 * Elan Graphics (internal codename GR2) consists of five major subsystems:
 *
 *   CPU / GIO Bus
 *         │
 *         ▼
 *     ┌───────┐  FIFO   ┌───────────────┐ Internal  ┌─────────┐
 *     │  HQ2  │────────►│ GE7 (1,2,4,8) │──────────►│   RE3   │
 *     └───────┘         └───────────────┘   Bus     └─────────┘
 *     Command               Geometry                  Raster
 *     Engine                 Engine                   Engine
 *                                                       │
 *                                                       ▼
 *                                                   ┌─────────┐
 *                                                   │   VM2   │ Framebuffer
 *                                                   └─────────┘ Memory (VRAM)
 *                                                       │
 *                                                       ▼
 *                                                   ┌─────────┐
 *                                                   │   VC1   │ Video Timing,
 *                                                   └─────────┘ Cursor & DID
 *                                                       │
 *                                                       ▼
 *                                                   ┌─────────┐
 *                                                   │  XMAP5  │ Compositor &
 *                                                   │  (x 5)  │ Colormap (CLUT)
 *                                                   └─────────┘
 *                                                       │
 *                                                       ▼
 *                                                   ┌─────────┐
 *                                                   │  Bt457  │ 3x RAMDACs
 *                                                   │  (x 3)  │ (Red, Green, Blue)
 *                                                   └─────────┘
 *                                                       │
 *                                                       ▼
 *                                                  RGB Monitor
 *
 * Board Configurations & Marketing Names:
 * ----------------------------------------------------------------------------
 *  Model         Board ID    GE7 Count  RE3 Count  Color Depth   Z-Buffer
 * ----------------------------------------------------------------------------
 *  GR2-XS        GR2 rev <4      1          1         8-bit       Optional
 *  GR2-XS24      GR2 rev <4      1          1        24-bit       Optional
 *  GR2-XZ        GR2 rev >=4     2          1        24-bit       Included
 *  GR2-Elan      GR2 rev <4      4          1        24-bit       Included
 *  Indy Elan     GR4 + VB3       4          1        24-bit       Included
 *  GR2-Extreme   GU1 / GR3       8          2        24-bit       Included
 * ----------------------------------------------------------------------------
 *
 * Key Architectural Principles:
 * 1. The CPU communicates with the graphics pipe primarily through the HQ2
 *    command FIFO at offset 0x40000. Commands are written as base->fifo[TOKEN] = DATA.
 * 2. The CPU NEVER writes directly to RE3 for rendering. HQ2 dispatches tokens
 *    to GE7, which runs geometry microcode and generates rasterization commands
 *    over an internal private bus to RE3.
 * 3. High-speed pixel transfer (DMA) between CPU memory and graphics bitplanes
 *    flows through GIO VDMA targeting the HQ2 register HQ2_GEDMA (0x6a068).
 * 4. Display composition is handled by 5 parallel XMAP5 ASICs feeding three
 *    Brooktree Bt457 RAMDACs (Red, Green, Blue) at 1280x1024 resolution.
 */

/*
 * ============================================================================
 * GIO BUS MEMORY MAP
 * ============================================================================
 *
 * GR2 boards occupy a 2MB physical slot in GIO space:
 *
 *   Indigo (IP20) GIO Slot 0:  0x1f000000 (K1: 0xbf000000)
 *   Indy / Indigo2 Slot 0:     0x1f000000
 *   Indy / Indigo2 Slot 1:     0x1f400000 or 0x1f600000
 */
#define GR2_BASE_PHYS           0x1f000000
#define GR2_BASE1_PHYS          0x1f400000
#define GR2_BASE2_PHYS          0x1f600000

/* Region Offsets relative to GR2 base address */
#define GR2_SHRAM_OFFSET        0x000000    /* Shared Data RAM (32K x 32-bit = 128KB) */
#define GR2_SHRAM_CONSTMEM      0x000000    /* 512 constant floats loaded from ge7.bin */
#define GR2_SHRAM_CX_SIZE_MAIN  0x000c08    /* Word count of primary context save (word 0x302) */
#define GR2_SHRAM_CX_OWNER      0x000c0c    /* RRMrn offset (GE_HQMSAV id) of the context that state belongs to (word 0x303) */
#define GR2_SHRAM_CX_SIZE_EXT   0x000c10    /* Word count of extended context save (word 0x304) */
#define GR2_SHRAM_READBACK      0x010088    /* GL state readback mailbox, 4 words (word 0x4022). libglcore addresses it as 0x12088 because its view of the board is shifted by 0x2000 (see HQ2.h); earlier revisions listed 0x12088 here */
#define GR2_SHRAM_READ_IMAGE    0x01b000    /* 2D READ_IMAGE result (word 0x6C00; Xsgi expReadImage*, see HQ2.h) */
#define GR2_FIFO_OFFSET         0x040000    /* Command FIFO (32K x 32-bit word indexed) */
#define GR2_HQUCODE_OFFSET      0x060000    /* HQ2 Microcode RAM (8K x 32-bit words) */
#define GR2_GE7_OFFSET          0x068000    /* GE7 Internal RAM/Window (8 x 256 words) */
#define GR2_HQ2_OFFSET          0x06a000    /* HQ2 Control Registers */
#define GR2_BDVERS_OFFSET       0x06c000    /* Board Version & Configuration */
#define GR2_CLOCK_OFFSET        0x06c020    /* Clock & Crystal Select / PLL */
#define GR2_VC1_OFFSET          0x06c040    /* VC1 Display Controller */
#define GR2_UNUSED_60_OFFSET    0x06c060    /* Unused chip-select slot (speculatively labeled bt479_rd in NetBSD) */
#define GR2_UNUSED_80_OFFSET    0x06c080    /* Unused chip-select slot (speculatively labeled bt479_wr in NetBSD) */
#define GR2_BT457_RED_OFFSET    0x06c0a0    /* Bt457 RAMDAC (Red) */
#define GR2_BT457_GRN_OFFSET    0x06c0c0    /* Bt457 RAMDAC (Green) */
#define GR2_BT457_BLU_OFFSET    0x06c0e0    /* Bt457 RAMDAC (Blue) */
#define GR2_XMAP0_OFFSET        0x06c100    /* XMAP5 Channel 0 */
#define GR2_XMAP1_OFFSET        0x06c120    /* XMAP5 Channel 1 */
#define GR2_XMAP2_OFFSET        0x06c140    /* XMAP5 Channel 2 */
#define GR2_XMAP3_OFFSET        0x06c160    /* XMAP5 Channel 3 */
#define GR2_XMAP4_OFFSET        0x06c180    /* XMAP5 Channel 4 */
#define GR2_XMAPALL_OFFSET      0x06c1a0    /* XMAP5 Broadcast to All Channels */

/*
 * ============================================================================
 * BLENDING AND ALPHA TEST (GR2 family: XZ, Elan, Extreme)
 * ============================================================================
 *
 * The board has no alpha-test hardware and RE3 has no blending hardware:
 *
 *   - RE3's register set (64 registers, see RE3.h) has no alpha iterator,
 *     no alpha reference or function, and no blend factor registers. The
 *     only compare function is DEPTHFN. ASELECT (0x28) belongs with the
 *     anti-aliased line machinery (TOPLINE/BOTLINE) as far as is known.
 *   - SGI's IDE diagnostics for Express only exercise alpha in the HQ2
 *     colour conversion ("stuff alpha" / clamp, hqdiag.c), never in RE3.
 *
 * ALPHA TEST is done on the host. libglcore (EXPRESS) never sends the alpha
 * function or reference to the FIFO. With GL_ALPHA_TEST enabled it
 * rasterizes on the CPU and sends each surviving fragment through the
 * fragment port (FIFO index 0x2B|ITOF, gr2_rgb.c Store/Store_B; see HQ2.h).
 * Confirmed by trace (IRIX 6.5.22, glprim --scene alphatest).
 *
 * BLENDING is done by the HQ2/GE7 microcode. libglcore sends the blend
 * state (blend_factor 0x25: enable, src, dst; blend_mode 0x26: 1 for the
 * SRC_ALPHA / ONE_MINUS_SRC_ALPHA fast path) and then ordinary primitives
 * whose colours carry per-vertex alpha (C4 colour port), with no software
 * fallback even for smooth (per-vertex varying) alpha:
 *   glprim --scene blendsmooth (a triangle with vertex alpha 0 / 0.5 / 1 over
 *   red and green squares) on a real Indy XZ shows a smooth per-pixel fade
 *   (photo, 2026-09-26), matching the per-pixel result the emulator draws.
 * Since RE3 cannot interpolate alpha or blend, the GE7 microcode must
 * compute the blended colours itself, presumably reading the destination
 * back through RE3 (READBUF / RWDATA) and writing the result (WRITEBUF).
 * The exact microcode mechanism is (unverified).
 * Destination-alpha factors collapse to ONE / ZERO (no alpha planes).
 *
 * AB1 (0x06C1C0, "Kaleidoscope Alpha Blender") is part of the video option
 * path (graphics / live video mixing), not the GL fragment path.
 *
 * Emulator (IRIS): blending is implemented as an RE3 extension (private
 * RE3_OP_BLEND / RE3_OP_ALPHA with a per-pixel alpha iterator) instead of a
 * GE7-side read-modify-write, for speed; the pixels are the same. Alpha test
 * is deliberately NOT implemented: the driver already hands over only the
 * fragments that pass.
 */

#define GR2_AB1_OFFSET          0x06c1c0    /* Kaleidoscope Alpha Blender (AB1) */
#define GR2_CC1_OFFSET          0x06c1e0    /* Kaleidoscope Color Converter (CC1) */
#define GR2_RE3_27_OFFSET       0x06c200    /* RE3 Raster Engine (27-bit registers) */
#define GR2_RE3_24_OFFSET       0x06c280    /* RE3 Raster Engine (24-bit registers) */
#define GR2_RE3_32_OFFSET       0x06c600    /* RE3 Raster Engine (32-bit registers) */

/*
 * ============================================================================
 * BOARD REVISION & CONFIGURATION REGISTERS (0x06c000)
 * ============================================================================
 *
 * Board revision is determined by reading 4 32-bit registers at 0x6c000..0x6c00c.
 * Note: Bits on GR2 are active-low / 1's complement representation in hardware.
 *
 * Board Revision < 4 (Indigo IP20 GR2-XS, XS24, Elan):
 * -----------------------------------------------------
 *  rd0 (0x6c000):
 *      bits 3:0  = ~rd0 & 0x0f: GR2 board revision (0..3)
 *      bit 5     = RE3 count (0 = 1 RE3, 1 = 2 RE3s)
 *  rd1 (0x6c004):
 *      bit 0     = Monitor type bit 0
 *      bit 1     = Z-buffer DRAM configuration (0 = 64Kx16, 1 = 256Kx4)
 *      bits 3:2  = Z-buffer option version (3 = not installed, 2 = v1, 1 = v2, 0 = v3)
 *  rd2 (0x6c008):
 *      bits 2:1  = Monitor type bits 2:1 (MonType = (rd1 & 1) | ((rd2 & 7) << 1))
 *      bits 3:2  = Video Backend (VB1) revision (3 = not installed)
 *      bits 5:4  = Super Video board option revision (3 = not installed)
 *  rd3 (0x6c00c):
 *      bits 1:0  = VM2 Slot A bitplanes (3 = empty, else installed)
 *      bits 3:2  = VM2 Slot B bitplanes (3 = empty, else installed)
 *      bits 5:4  = VM2 Slot C bitplanes (3 = empty, else installed)
 *                  (1 slot = 8bpp, 2 slots = 16bpp [unsupported], 3 slots = 24bpp)
 *
 * Board Revision >= 4 (Indy Elan GR4, Indigo2 Extreme / XZ):
 * -----------------------------------------------------------
 *  rd0 (0x6c000):
 *      bits 3:0  = ~rd0 & 0x0f: GR2 board revision (4..15)
 *      bits 7:4  = Monitor type ID
 *  rd1 (0x6c004):
 *      bits 1:0  = Video Backend (VB2) revision
 *      bits 3:2  = Super Video board revision
 *      bit 4     = Framebuffer depth (0 = 8bpp, 1 = 24bpp)
 *      bit 5     = Z-buffer installed (0 = no, 1 = yes)
 *
 * Write Mode on rd0 / rd1:
 *  rd0 write:
 *      Rev < 4:  0x1 = select 107.352 MHz crystal (60Hz)
 *                0x2 = select 132.000 MHz crystal (72Hz)
 *      Rev >= 4: 0x47 config mode
 *  rd1 write:
 *      Rev < 4:  0x00 = VC1 reset assert
 *                0x40 = VC1 reset release, expanded backend mode
 *      Rev >= 4: 0x00 = VC1 reset assert
 *                0x01 = VC1 reset release
 */

#define GR2_REV_BOARDREV_MASK   0x0f
#define GR2_REV_RE3_COUNT       0x20    /* Rev < 4 */

/*
 * Monitor Types
 *
 * How the software actually uses MonitorType (rev >= 4: (rd0 & 0xf0) >> 4,
 * NOT inverted; rev < 4: ((rd2 & 3) << 1) | (rd1 & 1)):
 *   - PROM Gr2StartClock / Gr2RegisterInit: (mon & 7) == 1 selects the 72 Hz
 *     132 MHz PLL table and the H72 VC1 timing tables. Cases 1 and 9 are
 *     72 Hz; 6 and 14 load no timing table. Everything else gets the 60 Hz
 *     107.352 MHz / H60 tables and 1280x1024.
 *   - PROM Gr2InitInfo: MonitorType 6 -> 1024x768; anything else -> 1280x1024.
 *   - PROM gr2_install (gr2_init.c:1423): 7 is treated as "no monitor" and the
 *     ARCS monitor node is not added. This CONTRADICTS the old label
 *     "7 = 1280x1024@60" below; the name is kept only for reference.
 *   - Kernel Gr2Probe (gr2_init.o) rejects MonitorType 6.
 *   - Kernel: (mon & 7) == 7 is special-cased when fp_id == 0xFF (flat panel).
 *   - 0x82/0x83: Indy Elan uses bit 7 to flag a flat panel (PROM comment,
 *     gr2_init.c Gr2RegisterInit).
 * A plain 60 Hz 1280x1024 CRT should report a value not in
 * {1, 9, 6, 14, 7, 0x82, 0x83}. Which ID real 60 Hz Extreme monitors return is
 * (unverified).
 */
#define GR2_MONITOR_19_72HZ     1       /* 19" 1280x1024 @ 72Hz */
#define GR2_MONITOR_16_MULTISCAN 2      /* 16" multiscan */
#define GR2_MONITOR_STEREO      4       /* 1280x1024 stereo (492 / 512 lines) */
#define GR2_MONITOR_DUAL_SCAN   5       /* Dual scan, high and low res */
#define GR2_MONITOR_1024_768    6       /* 1024x768 low resolution (kernel rejects) */
#define GR2_MONITOR_1280_1024   7       /* PROM treats 7 as "no monitor" - see above */
#define MONITORID_CORONA        6       /* Flat panel 1024x768 */
#define MONITORID_ICHIBAN       8       /* Flat panel 1280x1024 */

/*
 * ============================================================================
 * PROM / KERNEL PROBE & INIT SEQUENCE (what a board must answer)
 * ============================================================================
 *
 * Sources: PROM stand/arcs/lib/libsk/graphics/EXPRESS/gr2_init.c (P),
 * gr2_tp.c (T); kernel gr2_kernel/ objects and decomp (K).
 *
 *  1. Presence (P Gr2Probe:108): badaddr(&hq.mystery) must not bus-error and
 *     hq.mystery (0x6a07c) must read 0xdeadbeef. Bases tried: 0x1f000000,
 *     then 0x1f400000 (IP22).
 *  2. Board reset, Indigo2 only: clear then set PCON_SG_RESET_N (0x02) in
 *     PORT_CONFIG (0x1fbd901f). Use PCON_S0_RESET_N (0x04) for the slot-1
 *     board.
 *  3. Board info (P Gr2InitInfo:122):
 *       rev = ~rd0 & 0xf, and must be != 0.
 *       rev >= 4:
 *         VB rev = ~rd1 & 3 in the PROM, and must be != 0 (so rd1 & 3 != 3).
 *           The kernel reads rd1 & 3 without inverting. Both only need != 3.
 *         Zbuffer = rd1 bit 5, 24bpp = rd1 bit 4.
 *         MonitorType = (rd0 & 0xf0) >> 4.
 *         Kernel: corona_rev = ~((rd1 & 0xC) >> 2) & 3. A non-zero value makes
 *           every retrace call ev1_dropevent(), so a non-flat-panel board
 *           needs rd1[3:2] = 11.
 *       rd2/rd3 are only read when rev < 4.
 *     The kernel reads these registers with lbu at the word address (byte
 *     lane 0 = bits 31:24 on the big-endian bus). NetBSD reads 32-bit words
 *     and masks the low byte. The board must present the value on every lane
 *     and for every access width.
 *  4. Clock (P Gr2StartClock:273), rev >= 4:
 *       rd0 = 0x47. The kernel writes 0x07 for the first graphics slot and
 *         0x47 otherwise (K gr2_init.c:335-339). These are configuration
 *         writes and do not change what rd0 reads back.
 *       7 PLL bytes (PLLclk107 {00,10,00,15,18,01,0F} or PLLclk132
 *         {00,00,00,04,05,04,06}) go to clock.write (0x6c020) one bit at a
 *         time, LSB first: bit 0 = data, bit 1 = load strobe, set on the very
 *         last bit only.
 *       rd1 = 0 (VC1 reset), DELAY(3 us), rd1 = 1 (release).
 *     Rev < 4: rd0 = 1 (107 MHz) or 2 (132 MHz), rd1 = 0, then the 17-byte
 *     clk107B table is written bytewise to clock.write, then rd1 = 0x40.
 *  5. Flat-panel probe (libsk/io/corona_i2c.c:83-137; K gr2_corona_i2c.o): the
 *     host writes 0x00, 0x55, 0xAA to CC1 (0x6c1e0) and reads each back. If
 *     the values echo, it takes the flat-panel path. A board without a panel
 *     must NOT echo them (e.g. read 0).
 *  6. Gr2RegisterInit (P:463): clear the retrace latch, init the three
 *     Bt457s, VC1 (see VC1.h), XMAP5 (XMAP5.h), then Gr2HQ2RegInit and
 *     Gr2ProbeChipRev (HQ2.h, GE7.h).
 *  7. Gr2TpSetup (P:1013): download HQ2 and GE7 microcode, verify, start
 *     (HQ2.h), then shram[TP_PROBE_ID] = UCODE_TP.
 *  8. Cursor colours (P Gr2SetCursorColor:1059): XMAP CLUT 0x1C01 = (255,0,0),
 *     0x1C02 = (255,255,255). The Indy PROM binary writes index 0xc01/0xc02
 *     relative to the 8-bit textport CLUT base 0x1000.
 *
 * Board naming (P gr2_install:1340-1413):
 *   rev 4 -> "SGI-GR3"; rev 5..8 and unknown revs -> "SGI-GU1";
 *   rev 9..11 -> "SGI-GR5".
 *   Suffix "-Extreme" for 8 GEs, "-XZ" for 2 GEs. " missing bitplanes" and
 *   " missing Z" are appended when the board is not 24bpp + Z.
 * PUC_INIT argument (P Gr2TpSetup:1031): 0 for rev 0-3, 1 for rev 4/9/10/11,
 * 2 for rev 5-8 and the default case.
 *
 * Unbounded host spins on the init/textport path:
 *   - GEWAIT (T:75): while (*(u8*)LIO_0_ISR & LIO_FIFO) - see INTERRUPTS below.
 *   - Kernel Gr2SetGammaRamp waits on XMAP fifostatus bit 0 with no timeout.
 *     This is not on the textport path.
 * Bounded waits: XMAP fifostatus (XMAP5.h).
 *
 * ============================================================================
 * REGISTER ACCESS WIDTH / BYTE LANES
 * ============================================================================
 * Peripheral registers (bdvers, clock, VC1, Bt457, XMAP5, CC1/AB1) are
 * 8/16-bit chips on 32-bit aligned word addresses. Software mixes sw, sh, sb
 * and lw, lhu, lbu at the WORD address. Examples: K Gr2LoadVC1SRAM uses sh at
 * 0x6c048; K Gr2Probe reads bdvers with lbu. The value is carried on whatever
 * lanes the access uses. A model should decode on (addr & ~3) and treat the
 * access data as the register value regardless of width.
 *
 * ============================================================================
 * GIO BUS WIDTH / VDMA
 * ============================================================================
 * GR2 is a 32-bit GIO device. The MC's per-slot transfer width lives in
 * GIO64_ARB (0x1fa00084 on big-endian): GRX_SIZE_64 = 0x02 (graphics slot),
 * EXP0_SIZE_64 = 0x04, EXP1_SIZE_64 = 0x08 (sys/mc.h). The PROM's IP22 default
 * for Indy (_gio64_arb_gns = HPC_SIZE_64 | 1_GIO, libsk/ml/IP22.c:78) leaves
 * GRX_SIZE_64 clear. Only Newport's Ng1Probe (libsk/graphics/NEWPORT/
 * ng1_init.c:178) sets it before touching REX3; the EXPRESS code never does.
 * So VDMA to a GR2 (e.g. the HQ2_GEDMA port at 0x6a068, used for context
 * save/restore and pixel DMA) moves 32-bit words, one bus transaction per
 * word, bytes MSB-first. The emulator's MC VDMA picks its 32- or 64-bit
 * engine from the target slot's GIO64_ARB bit.
 *
 * ============================================================================
 * INTERRUPTS (IP22 Indigo2 / IP24 Indy)
 * ============================================================================
 * GR2 drives three GIO interrupt pins. Kernel registration: gr2.o
 * setgiovector, K gr2.c:540-573.
 *   GIO INT0 = HQ2 FIFO full/timeout -> INT2 LIO_0 status bit 0 (LIO_FIFO).
 *     K Gr2FIFOInterrupt. BOTH textports (PROM GEWAIT and the kernel textport)
 *     busy-wait on this bit before every command, so it must be deasserted
 *     whenever the FIFO can take a command.
 *   GIO INT2 = vertical retrace -> INT2 LIO_1 status bit 7 (LIO_GIO_2),
 *     K Gr2RetraceInterrupt / gr2_retr_intr. On Indigo2 it arrives through
 *     the HPC3 EXTIO fan-out (EXTIO_SG_RETRACE 0x100 for the graphics slot).
 *     It is a LATCH that stays asserted until the host clears it:
 *       Indigo2 (fullhouse): pulse PORT_CONFIG (0x1fbd901f)
 *         PCON_CLR_SG_RETRACE_N (0x08) low then high; PCON_CLR_S0_RETRACE_N
 *         (0x10) for slot 1. Per-slot table in gr2.o .data: {0xbf000000,
 *         slot id 2, mask 0x08}, {0xbf400000, slot id 0, mask 0x10}.
 *       Indy (guinness, IOC1) with Elan/XZ: pulse HPC3_GEN_CONTROL
 *         (0x1fbd984c) bit 0 low then high (P Gr2RegisterInit, is_indyelan()
 *         branch).
 *     GR2 itself has no retrace acknowledge register. The retrace source is
 *     presumably VC1 vertical sync (unverified). The kernel retrace handler
 *     also spins up to 10 us on HPC3 EXTIO (0x1fbd9900) bit 0
 *     (EXTIO_SG_STAT_0), or bit 2 for board 1 (K gr2_retrace.c:73-87).
 *   GIO INT1: not used by the GR2 kernel driver.
 *
 * VERTICAL STATUS LEVEL (Indigo2): HPC3 EXTIO (0x1fbd9900) bit 0
 * (EXTIO_SG_STAT_0) is a level driven by the graphics-slot board, not a
 * latch. The embedded IP22 PROM (070-1367-012, loop at 0x9fc066ac) waits for
 * it to go LOW and then HIGH again before touching the DACs/colour maps:
 *     while (EXTIO & mask) ;   while (!(EXTIO & mask)) ;
 * mask = 1 (SG_STAT_0) for the gfx slot, 4 (S0_STAT_0) for slot 1. If the bit
 * never toggles, the PROM hangs there with the DACs still blanked.
 * Emulator model (confirmed by boot): low during vertical blank (~0.7 ms of
 * each 16.7 ms frame), high otherwise. Which exact VC1 timing signal drives it
 * is (unverified). The kernel retrace handler spins on the same bit
 * (gr2_retrace.c:73-87).
 * The PROM never enables retrace; it only clears the latch in
 * Gr2RegisterInit.
 */

/*
 * ============================================================================
 * CLOCK GENERATOR (0x06c020)
 * ============================================================================
 *
 * On Rev < 4: Programmable clock generator written byte-by-byte with clk107B table.
 * On Rev >= 4: ICS1562 / PLL dual-wire serial bit-bang protocol:
 *   bit 0: Data bit
 *   bit 1: Load / Strobe bit (set on last bit of transmission)
 */
struct gr2_clock {
    gr2_reg32_t write;                  /* 0x00: Clock programming register */
};

/*
 * ============================================================================
 * BROOKTREE Bt457 RAMDAC REGISTERS (3x ASICs: Red, Green, Blue)
 * ============================================================================
 *
 * Physical GR2 hardware strictly uses three monolithic Bt457 RAMDACs:
 * one for each color channel (Red = 0x6c0a0, Green = 0x6c0c0, Blue = 0x6c0e0).
 * Bt457 includes internal 5:1 pixel multiplexing (GR2_DAC_5TO1MUX) to serialize
 * the 5-phase interleaved pixel streams from the 5 XMAP5 ASICs.
 *
 * Note on Bt479: Christopher Sekiya's NetBSD grtworeg.h speculatively marked
 * offsets 0x06c060 and 0x06c080 as "BT479 Triple-DAC (read/write)". However,
 * the Bt479 does not support 5:1 multiplexing and was only used on LG1 (Light)
 * and Newport (REX3) boards. On GR2, 0x06c060 and 0x06c080 are simply unpopulated
 * decoded slots in the 4-to-16 peripheral address decoder.
 *
 * Each Bt457 DAC occupies 16 bytes (4 x 32-bit registers) spaced 0x20 apart:
 *   0x00: Address Register (addr)
 *   0x04: Color Palette RAM (paltram)
 *   0x08: Control / Command Register 2 (cmd2)
 *   0x0c: Overlay Color Register (ovrlay)
 */
struct gr2_bt457_dac {
    gr2_reg32_t addr;                   /* 0x00: Internal address pointer */
    gr2_reg32_t paltram;                /* 0x04: 256x8 color palette RAM data */
    gr2_reg32_t cmd2;                   /* 0x08: Control / Command register */
    gr2_reg32_t ovrlay;                 /* 0x0c: Overlay palette data */
    uint32_t pad[4];                    /* Pad to 0x20 bytes */
};

/* Bt457 Internal Register Addresses */
#define GR2_DAC_READMASK        0x04    /* Read mask register */
#define GR2_DAC_BLINKMASK       0x05    /* Blink mask register */
#define GR2_DAC_CMD             0x06    /* Command register */
#define GR2_DAC_TEST            0x07    /* Test register */

/* Bt457 Command Register Bits */
#define GR2_DAC_5TO1MUX         0x80    /* 5:1 multiplexing mode */
#define GR2_DAC_RAMENBL         0x40    /* Palette RAM enable */
#define GR2_DAC_OL0ENBL         0x01    /* Overlay 0 enable */

#define GR2_DAC_NGAMMAENT       256     /* 256 gamma ramp entries */
#define GR2_DAC_NOVLMAPENT      4       /* 4 overlay entries */

/*
 * Bt457 init (P Gr2DacInit:301; K gr2_init.c:398-422), per DAC:
 *   addr = READMASK(4); cmd2 = 0x00   screen blanked
 *   addr = BLINKMASK(5); cmd2 = 0
 *   addr = CMD(6);      cmd2 = 0xC1   (5TO1MUX | RAMENBL | OL0ENBL)
 *   addr = TEST(7);     cmd2 = 0
 *   addr = 0; paltram <- 0,1,..,255   identity ramp, auto-increment
 *   addr = 0; ovrlay  <- 0,1,2,3
 * Note: "cmd2" (offset 0x08) is the control-register data port selected by
 * addr (4..7). "paltram" (0x04) is palette data and auto-increments addr.
 * Unblank (T Gr2TpBlankscreen:108; kernel Gr2BlankScreen(0)): READMASK = 0xFF
 * on all three DACs. The display is black until this happens, so a display
 * model must AND each channel with READMASK before the palette lookup.
 */

/*
 * ============================================================================
 * TEXTPORT & PROM FIFO COMMAND TOKENS
 * ============================================================================
 *
 * Writes to base->fifo[TOKEN] = DATA execute microcoded graphics primitives:
 * Token numbers are word indices into the 128KB FIFO region at offset 0x40000:
 * (Byte Offset = 0x40000 + TOKEN * 4)
 */
#define PUC_INIT                401     /* 0x40644: Hardware initialize / reset */
#define PUC_COLOR               402     /* 0x40648: Set current color (index or packed) */
#define PUC_FINISH              403     /* 0x4064c: Finish / synchronization */
#define PUC_PNT2I               404     /* 0x40650: 2D integer point (X, then DATA=Y) */
#define PUC_RECTI2D             405     /* 0x40654: 2D filled rect (x1, then DATA: y1, x2, y2) */
#define PUC_CMOV2I              406     /* 0x40658: Move raster position (X, then DATA=Y) */
#define PUC_LINE2I              407     /* 0x4065c: 2D integer line */
#define PUC_DRAWCHAR            408     /* 0x40660: Draw character glyph bitmap */
#define PUC_RECTCOPY            409     /* 0x40664: Screen-to-screen blit / copy */
#define PUC_DATA                479     /* 0x4077c: Data parameter word */

/*
 * Textport command formats. Verified from PROM gr2_tp.c (T), kernel
 * gr2_tport.o (K), NetBSD grtwo.c (N).
 *
 * The FIFO word index IS the HQ2 microcode entry address: the textport
 * microcode images contain records at 0x191, 0x192, 0x194..0x198, 0x1a1..0x1a3,
 * and 0x199 in the PROM image only.
 * The first word is written to base->fifo[CMD]. Every further argument is
 * written to base->fifo[PUC_DATA].
 *
 *   PUC_INIT    arg: 0 / 1 / 2 by board rev (see probe section). No other
 *               args. Host then FLUSHBUS + DELAY(9 us); there is no
 *               handshake.
 *   PUC_COLOR   arg: colour index. The textport has no RGB path.
 *   PUC_PNT2I   x; DATA: y.
 *   PUC_RECTI2D x1; DATA: y1, x2, y2. Inclusive filled box in the current
 *               colour.
 *   PUC_CMOV2I  x; DATA: y. Sets the character raster position.
 *   PUC_DRAWCHAR (T Gr2TpDrawBitmap:239) - always 25 words total:
 *       cmd word  xsize (pixels, <= 32; the kernel sends <= 16-wide columns)
 *       DATA      ysize (<= 18, "max height in ucode")
 *       DATA      mode: 1 = one 16-bit row per word (low 16 bits, MSB =
 *                 leftmost pixel); 2 = 32-bit rows, sent as
 *                 (buf[0] << 16) | buf[1]. The kernel always uses 1.
 *       DATA      xorig (signed; the PROM passes htp_bitmap.xorig - column
 *                 x offset)
 *       DATA      yorig (signed)
 *       DATA      xmove (added to the raster x afterwards)
 *       DATA      ymove
 *       DATA x18  row bitmaps, BOTTOM ROW FIRST, zero-padded to 18.
 *     Bottom-row-first is shown three ways: glyphs taller than 18 are sent as
 *     18-row pieces with yorig -= 18 for each later piece (T:257-280), N walks
 *     its font rows backwards (N:629-639), and K does the same.
 *     Wider than 32: each extra 32-pixel column is sent as a separate
 *     DRAWCHAR with xorig - 32*n.
 *     Placement (inferred from the Newport ng1_tp.c analogue, unverified on
 *     GR2): left x = cx - xorig, bottom y = cy - yorig. Only set bits are
 *     drawn; the background is painted separately with RECTI2D. Afterwards
 *     cx += xmove, cy += ymove.
 *     NetBSD sends mode 2 with the glyph byte duplicated into bits 15:0
 *     (N:621-633). That does not match the PROM convention; don't rely on it.
 *   PUC_RECTCOPY (T Gr2TpBmove:416) - PROM microcode only; the kernel textport
 *     image has no 0x199 entry and the kernel redraws instead of scrolling:
 *       cmd word  word_len = (w + 3) >> 2  (4 CI pixels per shram word)
 *       DATA      max_lines = 4864 / word_len (size of the shram staging area)
 *       DATA      srcx, srcy, w, h, dstx, dsty
 *     y values here are X-style (top-down, top edge): y = 1024 - y_gl - h.
 *     If the move goes down and h > max_lines, the host sends bottom-up
 *     pieces so that each piece fits in the staging area.
 *
 * Coordinates: RECTI2D/PNT2I/CMOV2I/DRAWCHAR use GL-style window coordinates
 * with y = 0 at the BOTTOM of the screen (N:264-266). RECTCOPY alone uses
 * X-style y.
 * PUC_FINISH (403) and PUC_LINE2I (407) are never sent by either textport,
 * and neither microcode image has an entry at 0x193.
 * Flat panels: the PROM adds 256 to y on the 768-line corona panel (T), and
 * the kernel adds 0x100 for monitor 0x82 (K:107-110).
 *
 * TEXTPORT HANDOFF, PROM -> kernel (K gr2_earlyinit, gr2.c:362-387):
 *   if shram[TP_PROBE_ID] == UCODE_TP, the kernel does NOT re-initialize. It
 *   copies shram[0x7FF8] into gr2_info+0x32 (meaning unknown; probably
 *   written by the microcode; unverified), reloads a blank cursor, registers
 *   the textport and writes hq.dmasync = 0.
 *   Otherwise it runs Gr2Reset, StartClock, Gr2Init and
 *   Gr2TpSetup(base, xpmax-1, ypmax-1, 0) with ITS OWN, older textport
 *   microcode (gr2_tpucode.o). After PUC_INIT it sends PUC_COLOR 0 and
 *   RECTI2D (0, 0, xmax-1, ymax-1), then Gr2BlankScreen(0).
 *   So shram contents must survive from the PROM to the kernel.
 */

#include "HQ2.h"
#include "GE7.h"
#include "VM2.h"
#include "VC1.h"
#include "XMAP5.h"
#include "RE3.h"

/*
 * ============================================================================
 * OVERALL HARDWARE STRUCTURE (struct gr2_hw)
 * ============================================================================
 *
 * Exact memory layout of the 2MB GR2 GIO address space.
 * Offsets have been verified against SGI IRIX kernel (gr2_init.o) and PROM binaries.
 */

struct gr2_bdvers {
    gr2_reg32_t rd0;                    /* 0x6c000: Version & monitor */
    gr2_reg32_t rd1;                    /* 0x6c004: VB / Z-buffer / depth */
    gr2_reg32_t rd2;                    /* 0x6c008: MonType high / VB1 */
    gr2_reg32_t rd3;                    /* 0x6c00c: VM2 bitplane slots */
    uint32_t pad[4];                    /* Pad to 0x20 */
};

struct gr2_hw {
    /* 0x000000: Shared Data RAM (32K x 32-bit = 128KB) */
    volatile uint32_t shram[32768];

    /* 0x020000: Unused / Reserved (128KB) */
    uint32_t pad0[32768];

    /* 0x040000: Command FIFO (32K x 32-bit = 128KB) */
    volatile uint32_t fifo[32768];

    /* 0x060000: HQ2 Microcode RAM (8K x 32-bit = 32KB, 24-bit ucode words) */
    volatile uint32_t hqucode[8192];

    /* 0x068000: GE7 Geometry Engines (Up to 8 GEs, 256 words = 1KB each) */
    struct gr2_ge7_win ge[8];

    /* 0x06a000: HQ2 Control Registers (see HQ2.h) */
    struct gr2_hq2 hq;
    uint32_t pad_hq[(0x6c000 - 0x6a000 - sizeof(struct gr2_hq2)) / 4];

    /* 0x06c000: Board Revision & Configuration Registers */
    struct gr2_bdvers bdvers;           /* 0x6c000 */

    /* 0x06c020: Clock & Frequency Select */
    struct gr2_clock clock;             /* 0x6c020 */
    uint32_t pad1[7];                   /* Pad to 0x6c040 */

    /* 0x06c040: VC1 Video Controller (see VC1.h) */
    struct gr2_vc1 vc1;                 /* 0x6c040..0x6c05f */

    /* 0x06c060..0x06c09f: Unpopulated chip-select slots in 4-to-16 address decoder */
    uint32_t pad_cs3[8];                /* 0x6c060..0x6c07f */
    uint32_t pad_cs4[8];                /* 0x6c080..0x6c09f */

    /* 0x06c0a0: Bt457 Monolithic RAMDACs (Red, Green, Blue) */
    struct gr2_bt457_dac reddac;        /* 0x6c0a0 */
    struct gr2_bt457_dac grndac;        /* 0x6c0c0 */
    struct gr2_bt457_dac bluedac;       /* 0x6c0e0 */

    /* 0x06c100: XMAP5 Multimode Color Mappers (Channels 0..4) */
    struct gr2_xmap5 xmap[5];           /* 0x6c100, 120, 140, 160, 180 */

    /* 0x06c1a0: XMAP5 Broadcast / All-Channel Port */
    struct gr2_xmap5 xmapall;           /* 0x6c1a0 */

    /* 0x06c1c0: Kaleidoscope AB1 (Alpha Blender) */
    gr2_reg32_t ab1;                    /* 0x6c1c0 */
    uint32_t pad4[7];

    /* 0x06c1e0: Kaleidoscope CC1 (Color Space Converter) */
    gr2_reg32_t cc1;                    /* 0x6c1e0 */
    uint32_t pad5[7];

    /* 0x06c200: RE3 Raster Engine (see RE3.h) */
    struct gr2_re3_buffered re3_buf;    /* 0x6c200: 27-bit buffered registers */
    struct gr2_re3_control  re3_ctrl;   /* 0x6c280: 24-bit control registers */
    uint8_t pad6[0x300];                /* Pad to 0x6c600 */
    struct gr2_re3_32bit    re3_32;     /* 0x6c600: 32-bit unpacked pixel alias */
};

/*
 * ============================================================================
 * BOARD DESCRIPTOR STRUCTURE (IRIX gr2_info - 60 bytes / 0x3c)
 * ============================================================================
 */
struct gfx_info {
    char name[16];                      /* 0x00: "GR2" */
    char label[16];                     /* 0x10: Manager label */
    uint16_t xpmax;                     /* 0x20: Screen X size (1280, 1024) */
    uint16_t ypmax;                     /* 0x22: Screen Y size (1024, 768) */
    uint32_t length;                    /* 0x24: Total length (0x3c = 60 bytes) */
};

struct gr2_info {
    struct gfx_info gfx_info;           /* 0x00..0x27: Generic graphics info */
    uint8_t BoardType;                  /* 0x28: Board type (0 = GR2) */
    uint8_t Bitplanes;                  /* 0x29: Color depth (8, 16, 24) */
    uint8_t Auxplanes;                  /* 0x2a: Auxiliary planes (4) */
    uint8_t Wids;                       /* 0x2b: Window ID planes (4) */
    uint8_t Zbuffer;                    /* 0x2c: Z-buffer installed (0 or 1) */
    uint8_t MonitorType;                /* 0x2d: Monitor frequency & ID */
    uint8_t GfxBoardRev;                /* 0x2e: Board revision (from rd0) */
    uint8_t mc_rev;                     /* 0x2f: Memory controller rev | 0x80 */
    uint8_t HQ2Rev;                     /* 0x30: HQ2 ASIC revision */
    uint8_t GE7Rev;                     /* 0x31: GE7 ASIC revision */
    uint8_t pad32;                      /* 0x32 */
    uint8_t VC1Rev;                     /* 0x33: VC1 ASIC revision */
    uint8_t VidBckEndRev;               /* 0x34: Video backend revision */
    uint8_t pad35;                      /* 0x35 */
    uint8_t GEs;                        /* 0x36: Number of GE7s (1, 2, 4, 8) */
    uint8_t pad37;                      /* 0x37 */
    uint8_t corona_rev;                 /* 0x38: Flat panel corona revision */
    uint8_t fp_id;                      /* 0x39: Flat panel ID */
    uint8_t pad3a[2];                   /* 0x3a..0x3b: Pad to 0x3c bytes */
};

/*
 * ============================================================================
 * VC1 & BUFFER SWAP SHADOW STATE (796 bytes / 0x31c)
 * ============================================================================
 */
struct gr2_wid_swap {
    uint32_t current_mode;              /* 0x00: Current visual/XMAP mode */
    uint32_t new_mode;                  /* 0x04: Pending visual/XMAP mode */
    int32_t  swap_interval;             /* 0x08: Swap interval countdown */
    void    *rrm_buf;                   /* 0x0c: RRM buffer handle */
    void    *mgr_buf;                   /* 0x10: MGR swap buffer handle */
    uint8_t  pending_type;              /* 0x14: 1 = RRM swap, 2 = MGR swap, 0 = idle */
    uint8_t  pad15[3];                  /* 0x15..0x17 */
};

struct vc1_shadow {
    struct gr2_hw       *base;          /* 0x00: Physical register base */
    uint16_t             cur_ep;        /* 0x04: Saved VC1 internal address */
    uint8_t              sysctl;        /* 0x06: Shadow of VC1 SYSCTL */
    uint8_t              pad07;         /* 0x07 */
    uint32_t             shadow_locked; /* 0x08: Shadow locked / valid */
    uint32_t             num_pending_wids; /* 0x0c: Pending WID updates count */
    struct gr2_wid_swap  wid_swaps[32]; /* 0x10..0x30f: 32 WID swap slots (0x18 each) */
    void                *pending_events;/* 0x310: Linked list of retrace events */
    uint32_t             cursor_moved;  /* 0x314: Cursor position updated */
    uint32_t             cursor_on;     /* 0x318: Cursor visibility changed */
};

/*
 * ============================================================================
 * PER-BOARD DRIVER PRIVATE INSTANCE DATA (336 bytes / 0x150)
 * ============================================================================
 */
struct gr2_data {
    void                *gfx_board;     /* 0x00: Pointer to kernel gfx_board */
    uint8_t              pad04[0x40];   /* 0x04..0x43 */
    uint32_t             board_index;   /* 0x44: Board index */
    uint8_t              pad48[4];      /* 0x48..0x4b */
    uint32_t             retrace_count; /* 0x4c: Retrace frame counter */
    uint32_t             retrace_ticks; /* 0x50: Frame ticks */
    uint32_t             video_sync_flag;/* 0x54: Video sync flag */
    uint8_t              pad58[0x20];   /* 0x58..0x77 */
    struct gr2_info     *info;          /* 0x78: Board descriptor */
    struct gr2_hw       *base;          /* 0x7c: GIO hardware registers */
    uint8_t              pad80[4];      /* 0x80..0x83 */
    int32_t              cursor_x;      /* 0x84: Cursor screen X */
    int32_t              cursor_y;      /* 0x88: Cursor screen Y */
    int32_t              hotspot_x;     /* 0x8c: Cursor hotspot X */
    int32_t              hotspot_y;     /* 0x90: Cursor hotspot Y */
    int32_t              cursor_x_adj;  /* 0x94: Silicon bug compensation X */
    int32_t              cursor_y_adj;  /* 0x98: Silicon bug compensation Y */
    struct vc1_shadow   *vc1_shadow;    /* 0x9c: VC1 shadow state */
    uint8_t              padA0[8];      /* 0xa0..0xa7 */
    void                *dma_buf;       /* 0xa8: Kernel DMA buffer (kvpalloc) */
    void                *pcx_data;      /* 0xac: Pipe context data (kern_malloc 0x190) */
    uint8_t              padB0[0x90];   /* 0xb0..0x13f */
    uint32_t             lock[2];       /* 0x140: Retrace nested spinlock */
    uint8_t              pad148[4];     /* 0x148..0x14b */
    uint8_t              fp_installed;  /* 0x14c: Flat panel installed flag */
    uint8_t              pad14d[3];     /* 0x14d..0x14f */
};

/*
 * ============================================================================
 * SGI METASTEP MICROCODE FILE FORMAT (.bin)
 * ============================================================================
 *
 * Microcode binaries (hq2.bin, ge7.bin) downloaded to HQ2 and GE7 engines.
 */
#define HQ2_MAGIC                   0x965e
#define GE7_MAGIC                   0x966e
#define TP_PROBE_ID                 0x7fff      /* base->shram[0x7fff] probe flag */
#define UCODE_NONE                  0           /* Microcode inactive / download in progress */
#define UCODE_TP                    1           /* Textport microcode active */
#define UCODE_DIAG                  2           /* Diagnostics / 3D microcode active */

/*
 * mcout_t layout - CORRECTED (2026-09) against the actual images and loaders:
 *   - bytes: IRIX kernel gr2_tpucode.o .data (ge_ucode_str @0x0, hq_ucode_str
 *     @0x23d0, "v1.0 Thu Feb 25 1993 jeffs"); the same layout in the Indy PROM
 *     images (file offsets 0x72714 HQ, 0x735d8 GE).
 *   - loaders: kernel gr2_init.o Gr2DownloadHQ2 (0x13e0) reads data[] with
 *     "lw 252(a1)" (0xFC) and the record stride with "lh 248(a1)" (0xF8).
 *     The Indy PROM does the same (lh 0xf8 @0x16d74).
 * The earlier version of this struct put data[] at 0xE0. That was wrong:
 * 0xE0..0xFB is a second, mostly-zero header block (f_dataoff points at it).
 *
 * Observed field values:        HQ image      GE image
 *   f_nscns                     1             1
 *   f_hdrlen                    0x1c          0x1c
 *   f_dataoff                   0xe0          0xe0
 *   f_codeoff                   0x8cc         0x8cc
 *   length (u32 @0x10)          4             20
 *   f_constoff (@0x14)          0xfc          0xfc   (offset of data[])
 *   rev (@0x18)                 0             0xec
 *   length16 (u16 @0xF8)        4             20     (the copy the loaders use)
 *
 * data[] meaning:
 *   - HQ image: data[0..15] = the 16 HQ2 attribute jump registers
 *     (hq.attrjmp[0..15]). All 0x275 in the textport image.
 *   - GE image: data[0..511] = CONSTMEM float table, copied to shram[0..511].
 *     NOTE: 512 words from 0xFC run to 0x8FC, past f_codeoff (0x8cc). The last
 *     12 words the loaders copy are really record bytes. This is harmless and
 *     the hardware/loader never cares.
 */
#pragma pack(push, 2)
typedef struct {
    uint16_t f_magic;               /* 0x00: Magic number (0x965e HQ2 / 0x966e GE7) */
    uint16_t f_nscns;               /* 0x02: Section count (1) */
    uint32_t f_hdrlen;              /* 0x04: Header length (0x1c = 28 bytes) */
    uint32_t f_dataoff;             /* 0x08: Offset of 2nd header block (0xe0) */
    uint32_t f_codeoff;             /* 0x0c: Offset of code records (0x8cc) */
    uint32_t length;                /* 0x10: Microword length in bytes (4 HQ2, 20 GE7) */
    uint32_t f_constoff;            /* 0x14: Offset of data[] (0xfc) */
    uint32_t rev;                   /* 0x18: Revision / flags (HQ 0, GE 0xec) */
    char     version[24];           /* 0x1c: Version string */
    char     date[32];              /* 0x34: Date string */
    char     user[12];              /* 0x54: Build author */
    char     path[128];             /* 0x60: Source build path */
    uint32_t hdr2[6];               /* 0xe0: 2nd header block, all zero in known images */
    uint16_t length16;              /* 0xf8: Microword length in bytes - what loaders read */
    uint16_t pad_fa;                /* 0xfa */
    uint32_t data[512];             /* 0xfc: HQ attrjmp[16] / GE CONSTMEM[512] */
} mcout_t;
#pragma pack(pop)

/*
 * Microcode records, starting at f_codeoff. Both HQ and GE use this layout
 * (kernel Gr2DownloadHQ2: microword = (lhu 4(rec) << 16) | lhu 6(rec)):
 *   +0  uint16 address     microcode address; 0xffff ends the list
 *   +2  uint16 (always 1)  word count?
 *   +4  uint16 ucode[len/2] microword, most-significant halfword first
 *   +4+len uint16          trailing halfword, NEVER loaded by any loader
 * Record stride = (length16 + 6) & ~1 = 10 bytes (HQ), 26 bytes (GE).
 * See HQ_RECORD (HQ2.h) and GE_RECORD (GE7.h).
 *
 * Record counts: kernel textport image 129 HQ / 264 GE. Indy PROM image 150 HQ /
 * 308 GE (dated Feb 25 08:24 1993).
 */

#if defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 201112L) && (__SIZEOF_POINTER__ == 4) && !defined(_LANGUAGE_C)
_Static_assert(sizeof(struct gr2_wid_swap) == 0x18, "struct gr2_wid_swap must be 24 bytes");
_Static_assert(sizeof(struct vc1_shadow) == 0x31c, "struct vc1_shadow must be 796 bytes");
_Static_assert(sizeof(struct gr2_data) == 0x150, "struct gr2_data must be 336 bytes");
_Static_assert(__builtin_offsetof(struct gr2_data, info) == 0x78, "gr2_data.info offset");
_Static_assert(__builtin_offsetof(struct gr2_data, base) == 0x7c, "gr2_data.base offset");
_Static_assert(__builtin_offsetof(struct gr2_data, cursor_x) == 0x84, "gr2_data.cursor_x offset");
_Static_assert(__builtin_offsetof(struct gr2_data, vc1_shadow) == 0x9c, "gr2_data.vc1_shadow offset");
_Static_assert(__builtin_offsetof(struct gr2_data, lock) == 0x140, "gr2_data.lock offset");
_Static_assert(__builtin_offsetof(struct gr2_data, fp_installed) == 0x14c, "gr2_data.fp_installed offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, shram) == 0x000000, "gr2_hw.shram offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, fifo) == 0x040000, "gr2_hw.fifo offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, hqucode) == 0x060000, "gr2_hw.hqucode offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, ge) == 0x068000, "gr2_hw.ge offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, hq) == 0x06a000, "gr2_hw.hq offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, bdvers) == 0x06c000, "gr2_hw.bdvers offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, clock) == 0x06c020, "gr2_hw.clock offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, vc1) == 0x06c040, "gr2_hw.vc1 offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, pad_cs3) == 0x06c060, "gr2_hw.pad_cs3 offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, pad_cs4) == 0x06c080, "gr2_hw.pad_cs4 offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, reddac) == 0x06c0a0, "gr2_hw.reddac offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, grndac) == 0x06c0c0, "gr2_hw.grndac offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, bluedac) == 0x06c0e0, "gr2_hw.bluedac offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, xmap) == 0x06c100, "gr2_hw.xmap offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, xmapall) == 0x06c1a0, "gr2_hw.xmapall offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, ab1) == 0x06c1c0, "gr2_hw.ab1 offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, cc1) == 0x06c1e0, "gr2_hw.cc1 offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, re3_buf) == 0x06c200, "gr2_hw.re3_buf offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, re3_ctrl) == 0x06c280, "gr2_hw.re3_ctrl offset");
_Static_assert(__builtin_offsetof(struct gr2_hw, re3_32) == 0x06c600, "gr2_hw.re3_32 offset");
_Static_assert(sizeof(struct gr2_hw) == 0x06c680, "sizeof(struct gr2_hw) must be 0x06c680");
#endif

#endif /* _SGI_GR2_H_ */
