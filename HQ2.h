/*
 * HQ2.h - Silicon Graphics HQ2 Command Engine ASIC
 *
 * Command FIFO, Geometry Sequencer, Microcode Dispatch, Interrupt & DMA Control.
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Generated from SGI IRIX PROM, IDE diagnostics (hq2regs.c, hqdiag.c, diagcmds.h),
 * NetBSD sgimips grtworeg.h, and GR4 schematics.
 */

#ifndef _SGI_HQ2_H_
#define _SGI_HQ2_H_

#include <stdint.h>
#ifndef _LANGUAGE_C
#include <stddef.h>
#endif

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
 * HQ2 ASIC SPECIFICATIONS
 * ============================================================================
 *
 * Gate Count:      ~80,000 gates
 * Operating Clock: 33 MHz (Synchronous to GIO bus)
 * Functions:
 *   1. Interfaces between host CPU GIO bus and geometry subsystem.
 *   2. Implements a 512-word hardware command FIFO with programmable high/low
 *      watermarks and timeout interrupts.
 *   3. Dispatches commands and distributes vertices round-robin to 1, 2, 4, or 8
 *      GE7 geometry engines.
 *   4. Controls microcode execution, stalling, and unstalling of HQ2 and GE7.
 *   5. Mediates host-to-graphics DMA (VDMA) through the HQ2_GEDMA port.
 *   6. Generates vertical retrace and FIFO interrupts back to host (INT2/LIO).
 */

/*
 * ============================================================================
 * HQ2 REGISTER MAP (Offset 0x6a000 from GR2 base)
 * ============================================================================
 */
#define HQ2_BASE_OFFSET             0x06a000

/* Register byte offsets relative to HQ2_BASE */
#define HQ2_ATTRJUMP_OFFSET         0x00    /* 0x00..0x3c: Attribute Jump Table (16 regs) */
#define HQ2_VERSION_OFFSET          0x40    /* 0x40: Version & Status Register */
#define HQ2_NUMGE_OFFSET            0x44    /* 0x44: Number of GE7s & Fast ShRAM config */
#define HQ2_FIN1_OFFSET             0x48    /* 0x48: Finish Flag 1 */
#define HQ2_FIN2_OFFSET             0x4c    /* 0x4c: Finish Flag 2 */
#define HQ2_DMASYNC_OFFSET          0x50    /* 0x50: DMA Sync Source Control */
#define HQ2_FIFO_FULL_TIMEOUT_OFFSET 0x54   /* 0x54: FIFO Full Timeout */
#define HQ2_FIFO_EMPTY_TIMEOUT_OFFSET 0x58  /* 0x58: FIFO Empty Timeout */
#define HQ2_FIFO_FULL_OFFSET        0x5c    /* 0x5c: FIFO High Watermark (Full) */
#define HQ2_FIFO_EMPTY_OFFSET       0x60    /* 0x60: FIFO Low Watermark (Empty) */
#define HQ2_GE7_LOAD_UCODE_OFFSET   0x64    /* 0x64: GE7 Microcode Load Port (HQ bits) */
#define HQ2_GEDMA_OFFSET            0x68    /* 0x68: Host DMA Data Port (VDMA target) */
#define HQ2_HQ_GEPC_OFFSET          0x6c    /* 0x6c: HQ2-tracked GE Program Counter */
#define HQ2_GEPC_OFFSET             0x70    /* 0x70: GE Program Counter Load Register */
#define HQ2_INTR_OFFSET             0x74    /* 0x74: Interrupt Control & Status */
#define HQ2_UNSTALL_OFFSET          0x78    /* 0x78: HQ2 / GE7 Unstall Trigger */
#define HQ2_MYSTERY_OFFSET          0x7c    /* 0x7c: Magic Signature (0xdeadbeef) */
#define HQ2_REFRESH_OFFSET          0x80    /* 0x80: DRAM Refresh Timer */
#define HQ2_FIN3_OFFSET             0x100   /* 0x100: Finish Flag 3 */

/*
 * ============================================================================
 * HQ2 REGISTER BITFIELDS & MASKS
 * ============================================================================
 */

/*
 * HQ2 VERSION & STATUS REGISTER (0x40)
 *
 * Bit 0:       Finish Flag 3
 * Bit 1:       Finish Flag 2
 * Bit 2:       Finish Flag 1
 * Bits 4:3:    DMA Sync Source (0 = Vert Intr, 1 = Video Sync, 2 = Clear, 3 = Set)
 * Bit 5:       FIFO Overflow Flag
 * Bits 12:6:   FIFO Word Count (0..512)
 * Bit 13:      FIFO Low Watermark Flag (FIFO count <= fifo_empty)
 * Bits 15:14:  Reserved (always 0)
 * Bits 19:16:  GE Counter (current active GE count)
 * Bits 22:20:  GE Round-Robin Pointer (next GE to receive vertex)
 * Bits 31:23:  HQ2 ASIC Revision (e.g. rev 1, rev 2)
 */
#define HQ2_STATUS_FIN3             (1U << 0)
#define HQ2_STATUS_FIN2             (1U << 1)
#define HQ2_STATUS_FIN1             (1U << 2)
#define HQ2_STATUS_DMASYNC_MASK     (0x3U << 3)
#define HQ2_STATUS_DMASYNC_SHIFT    3
#define HQ2_STATUS_FIFO_OVF         (1U << 5)
#define HQ2_STATUS_FIFO_CNT_MASK    (0x7fU << 6)
#define HQ2_STATUS_FIFO_CNT_SHIFT   6
#define HQ2_STATUS_FIFO_LOWATER     (1U << 13)
#define HQ2_STATUS_GECTR_MASK       (0xfU << 16)
#define HQ2_STATUS_GECTR_SHIFT      16
#define HQ2_STATUS_GEPTR_MASK       (0x7U << 20)
#define HQ2_STATUS_GEPTR_SHIFT      20
#define HQ2_STATUS_VERSION_MASK     (0x1ffU << 23)
#define HQ2_STATUS_VERSION_SHIFT    23
/*
 * HQ2 revision - SOURCES DISAGREE on where it is read:
 *   PROM Gr2ProbeChipRev: HQ2Rev = hq.version >> 23.
 *   NetBSD grtworeg.h:77-79: (version & 0xff000000) >> 23.
 *   Kernel gr2_init.o (0x1ac): lw hq_gepc (0x6a06c) >> 16. The kernel also
 *     prints hq_gepc & 0xffff as the current GE PC (gr2.c:134).
 * A board model should present the revision in both places.
 *
 * FIFO count (bits 12:6): the field is 7 bits wide (0..127), so the old
 * "0..512" label cannot be right as a word count. The kernel thresholds
 * (0x24, 0x29, max 0x3f) suggest the count is in hardware FIFO slots of
 * unknown size (unverified).
 * Bits 2..0 (finish flags 1/2/3) are only used by IDE diagnostics
 * (ge7dma.c:156, ge7diag.c:816).
 */

/* DMA Sync Sources (written to HQ2_DMASYNC or read in HQ2_VERSION) */
#define HQ2_DMASYNC_VERT_INTR       0   /* Synchronize to vertical retrace interrupt */
#define HQ2_DMASYNC_VID_SYNC        1   /* Synchronize to video display sync */
#define HQ2_DMASYNC_CLEAR           2   /* Clear sync source */
#define HQ2_DMASYNC_SET             3   /* Force sync set */

/*
 * NUMGE REGISTER (0x44)
 *
 * Bits 3:0: Number of GE7 chips installed (1, 2, 4, 8)
 * Bit 4:    Fast Shared RAM Buffer enable (used when NUMGE == 8 on Extreme)
 */
#define HQ2_NUMGE_MASK              0x0f
#define HQ2_FASTSHRAMCNT_4          0x10

/*
 * FINISH FLAGS FIN1 / FIN2 / FIN3 (summary; details in the sections below):
 *   Three latched completion flags, readable together in hq.version (FIN3 =
 *   bit 0, FIN2 = bit 1, FIN1 = bit 2), each with its own write port. The
 *   microcode sets a flag when it reaches the request that asks for it; the
 *   host clears it (writes 0), queues the request, then spins until the flag
 *   is set again. They are events, not live busy / idle status.
 *     FIN2  kernel requests. Port hq.fin2 (0x6A04C). Used by the kernel for
 *           the microcode start argument, context switch (GE_HQMSAV,
 *           0x1E0, 0x1E6), context save / restore DMA (0x1E1..0x1E4) and
 *           pixel DMA (0x147); polled in _Gr2UcodeReady. No FIN2 = "TIMEOUT
 *           gfx" and a textport reload.
 *     FIN3  user-level requests. Write port 0x6B000 (outside the HQ block;
 *           HQ2_FIN3_OFFSET 0x100 unverified, never used). Raised by
 *           libglcore Finish (0x0A3, which also brackets the get_* readbacks)
 *           and Xsgi 2D sync (0x155, which also brackets READ_IMAGE). The
 *           client acks by writing 0. The kernel saves FIN3 per context in
 *           Gr2PcxSwap and writes it back to 0x6B000.
 *     FIN1  port hq.fin1 (0x6A048). No user found in the PROM, kernel,
 *           libglcore, libgl.so or the Xsgi DDX (the DDX's 0x6C048 writes
 *           are VC1, in its unshifted view). Meaning (unverified).
 *   Because they are latched, a flag left set by an older request (or
 *   restored by a context switch) satisfies the next wait at once. On
 *   hardware the pipeline drains in microseconds, so this is harmless.
 *   The live front-end status is elsewhere in hq.version: the FIFO word count
 *   (bits 12:6), the low-water flag (bit 13) and overflow (bit 5), read by
 *   the kernel only when the FIFO-full interrupt fires (Gr2FIFOPollLowater).
 *   Emulator note: IRIS' HQ2 FIFO is far deeper than 512 words, so FIN3 is
 *   shown only when no FIN3-raising token is still queued (otherwise GL runs
 *   a frame behind its swaps; see the Finish entry); the FIFO-full interrupt
 *   is never raised and low-water always reads set (back-pressure is BUS_BUSY
 *   on the store instead).
 */

/*
 * FINISH-FLAG HANDSHAKE (kernel gr2.c _Gr2UcodeReady; gr2_dma.c):
 *   Every kernel request that needs completion follows the same pattern:
 *     hq.fin2 (0x6a04c) = 0;  issue FIFO words;  poll hq.version bit 1 (FIN2)
 *   with us_delay(1) up to 1,000,000 times (100,000 in the pixel-DMA path).
 *   The microcode sets FIN2 when it has finished. A timeout gives
 *   "TIMEOUT gfx ..." warnings and gr2_error(), which reloads the textport.
 *   Requests seen:
 *     Gr2Start: gepc = 0; unstall = 0; fin2 = 0;
 *               fifo[0x1df] = 0/1/2 (start argument by board rev, as for
 *               PUC_INIT: 1 for rev 4/9/10/11, 2 for rev 5..8);
 *               wait FIN2; then info+0x32 = shram[0x7ff8] and
 *               shram[TP_PROBE_ID] = 2 (GL microcode active).
 *               So after unstall, the microcode's reset path consumes one
 *               DATA word and then sets FIN2.
 *     Gr2PcxSwap (context switch): fifo[0x1f0 GE_HQMSAV] = context id;
 *               fifo[0x1df] = state (0..3, e.g. 3 on first use);
 *               fifo[0x1df] = mode (< 3); wait FIN2.
 *               Then shram word 0x302 (byte 0xc08) = main context size in
 *               words. If it is > 0 the kernel allocates a buffer and runs
 *               _Gr2CXSaveRestore(0x1e1, save via VDMA from HQ2_GEDMA);
 *               0 skips the save.
 *               It also stores version bit 0 (FIN3) in the per-context
 *               state, writes fifo[0x1e0] = 1 or fifo[0x1e6] = 1 (then waits
 *               FIN2), and writes the incoming context's saved FIN3 to base +
 *               0x6b000 (the FIN3 port; see "FIN3 AND THE 0x6b000 PORT").
 *     _Gr2CXSaveRestore: dmasync = 2; fin2 = 0; fifo[0x1e1..0x1e4] = size
 *               (0x1e4 also writes fifo[0x1df] = bytes/4); VDMA to/from
 *               HQ2_GEDMA (32-bit, see GR2.h); wait FIN2.
 *     _Gr2DMAtrigger / _Gr2MCDMAtrigger (pixel DMA): dmasync = 2; fin2 = 0;
 *               fifo[cmd] = x0; then fifo[0] (index 0!) = x1, y0, height,
 *               pixsize, flag, 0; start DMA; wait FIN2.
 * The emulator raises FIN2 for the start argument, GE_HQMSAV, the context
 * save / restore tokens and the 0x1e0/0x1e6 requests; it reports the size
 * of its GL state in shram[0x302] so the kernel saves and restores it (see
 * "KERNEL TOKENS").
 */

/*
 * FIN3 AND THE 0x6b000 PORT (2026-09, from Xsgi and the kernel):
 *   Xsgi (GL microcode loaded) sends FIFO token 0x155 (fifo offset 0x554)
 *   and then spins on hq.version bit 0 (FIN3) through its user mapping of
 *   the board:
 *       lw v1, 0x6a040(board); andi v1, 1; beq v1, zero, loop
 *   Once the bit is set it writes 0 to board + 0x6b000 and starts
 *   reinitialising XMAP state. The kernel's Gr2PcxSwap saves version & 1
 *   into the per-context state and writes it back to board + 0x6b000.
 *   So 0x6b000 is the FIN3 write port (clear/restore). HQ2_FIN3_OFFSET 0x100
 *   above is (unverified) and no traffic to it has been seen.
 *   Other GL-microcode tokens seen at Xsgi start-up (meaning (unverified)):
 *       0x14b [0x1004]; 0x135 [0]; 0x14c [0, 0xffffff, 3, 0];
 *       0x162 [0, 0xffff, 0, 0, 0, 0]; 0x1ea [0]; then 0x155 -> FIN3.
 *   Note the GL microcode's token numbers are not the PUC_* (textport) or
 *   the GE_* numbers listed below.
 */

/*
 * HQ2 register init (PROM Gr2HQ2RegInit, gr2_init.c:401-440):
 *   numge              = GEs | (GEs == 8 ? HQ2_FASTSHRAMCNT_4 : 0)   (Extreme: 0x18)
 *   refresh            = 0x10
 *   fifo_full_timeout  = 100
 *   fifo_empty_timeout = 10  (PROM; the kernel uses 0xFF)
 *   fifo_full          = 40  (high watermark)
 *   fifo_empty         = 1   (low watermark, "not using it")
 *
 * FIFO-full interrupt handling (kernel gr2.c:133-331, Gr2FIFOInterrupt):
 *   reads hq.version; bit 5 (overflow) -> gr2_error + board reset.
 *   Waits for the count to fall below 0x24 or 0x29. It may raise
 *   hq.fifo_full to max(count + 1, 40), capped at 0x3f.
 *   Gr2FIFOPollLowater restores fifo_full = 0x28 once count < 0x23
 *   (gr2.c:191-214).
 * IP22.h also defines LIO_DRAIN0/1 "gfx fifo not full"; GR2 code does not use
 * them.
 */

/* Magic Presence Register Value */
#define HQ2_MYSTERY_SIGNATURE       0xdeadbeef

/*
 * ============================================================================
 * HQ2 REGISTER STRUCTURE (struct gr2_hq2)
 * ============================================================================
 */
struct gr2_hq2 {
    /* 0x00..0x3c: Attribute Jump Registers (16 words) */
    gr2_reg32_t attrjmp[16];

    /* 0x40..0x80: Internal Control Registers */
    gr2_reg32_t version;                /* 0x40: Version and status */
    gr2_reg32_t numge;                  /* 0x44: Number of GEs (1..8) */
    gr2_reg32_t fin1;                   /* 0x48: Finish flag 1 */
    gr2_reg32_t fin2;                   /* 0x4c: Finish flag 2 */
    gr2_reg32_t dmasync;                /* 0x50: DMA synchronization control */
    gr2_reg32_t fifo_full_timeout;      /* 0x54: FIFO full timeout ticks */
    gr2_reg32_t fifo_empty_timeout;     /* 0x58: FIFO empty timeout ticks */
    gr2_reg32_t fifo_full;              /* 0x5c: FIFO high watermark (typ 40-48) */
    gr2_reg32_t fifo_empty;             /* 0x60: FIFO low watermark (typ 1-16) */
    gr2_reg32_t ge7loaducode;           /* 0x64: GE7 ucode load (bits 127:103) */
    gr2_reg32_t gedma;                  /* 0x68: GIO DMA data port */
    gr2_reg32_t hq_gepc;                /* 0x6c: HQ-monitored GE PC */
    gr2_reg32_t gepc;                   /* 0x70: GE PC write register */
    gr2_reg32_t intr;                   /* 0x74: Interrupt register */
    gr2_reg32_t unstall;                /* 0x78: Unstall trigger (write 0) */
    gr2_reg32_t mystery;                /* 0x7c: 0xdeadbeef magic value */
    gr2_reg32_t refresh;                /* 0x80: DRAM refresh rate */

    uint32_t pad[31];                   /* 0x84..0xfc: Reserved */

    gr2_reg32_t fin3;                   /* 0x100: Finish flag 3 */
};

/*
 * ============================================================================
 * HQ2 MICROCODE FORMAT
 * ============================================================================
 *
 * Microcode words are 32 bits wide, stored in 8192 words of SRAM (0x60000).
 * Microcode binaries use SGI MetaStep linker format (.bin):
 *   Magic:   0x965e (HQ2_MAGIC)
 *   Header:  28-byte mcout header + ASCII metadata + attribute jump tables
 *   Records: 6-byte record header (address, count, flags) + 4-byte microword
 */
#define HQ2_MAGIC                   0x965e
#define HQ2_URAM_SIZE               8192

/*
 * HQ_RECORD - CORRECTED (2026-09). Kernel gr2_init.o Gr2DownloadHQ2 (0x13e0)
 * builds the microword as (lhu 4(rec) << 16) | lhu 6(rec) and steps records
 * by (length16 + 6) & ~1 = 10 bytes. The trailing halfword at +8 is never
 * loaded. The previous layout (count, flags, then ucode at +6) was wrong.
 * Example records from the kernel textport image:
 *   0000 0001 0000 6200 0063     addr 0x000  -> hqucode[0x000]  = 0x00006200
 *   0191 0001 0000 6201 01f5     addr 0x191  -> hqucode[0x191]  = 0x00006201
 * See mcout_t in GR2.h for the file header.
 */
#pragma pack(push, 2)
typedef struct {
    uint16_t address;                       /* +0: 0xffff signals end of records */
    uint16_t count;                         /* +2: always 1 in known images */
    uint16_t ucode[2];                      /* +4: microword = (ucode[0] << 16) | ucode[1] */
    uint16_t trailer;                       /* +8: present in the file, never loaded */
} HQ_RECORD;
#pragma pack(pop)

/*
 * HQ2 microcode entry points == FIFO command word index.
 * Writing base->fifo[N] dispatches the HQ2 microcode at address N. In the
 * textport images, records at 0x191..0x1a3 line up exactly with PUC_INIT
 * (401 = 0x191), PUC_COLOR (0x192), PUC_PNT2I..PUC_DRAWCHAR (0x194..0x198),
 * PUC_RECTCOPY (0x199, PROM image only) and 0x1a1..0x1a3 (unnamed). The
 * kernel image also has a dense block from 0x200 upward (internal routines).
 * PUC_DATA (479 = 0x1df) has no entry: it is the argument stream consumed by
 * the running routine. Whether other data-port addresses behave the same way
 * (GE_FIFO_DATA aliases 0x4277c, 0x4e77c) is (unverified).
 *
 * START SEQUENCE (PROM Gr2TpSetup gr2_init.c:1025-1053; kernel gr2_tpucode):
 *   hq.gepc = 0; hq.unstall = 0 (any write releases HQ2 + GEs);
 *   fifo[PUC_INIT] = arg; FLUSHBUS; DELAY(9 us); shram[TP_PROBE_ID] = 1.
 *   There is no ready flag or mailbox handshake.
 *
 * ATTRIBUTE JUMP TABLE: hq.attrjmp[0..15] (0x6a000..0x6a03c) = mcout_t.data[0..15]
 * (all 0x275 in the textport image).
 */

/*
 * ============================================================================
 * FIFO COMMAND TOKENS (DIAGNOSTIC & GL PROTOCOL)
 * ============================================================================
 *
 * Writes to base->fifo[TOKEN] = DATA pass tokens and parameters to HQ2/GE7:
 */

/* Token Modifiers */
#define DIAG_DATA                   0x0000
#define DIAG_USEV                   0x0200  /* Use vertex */
#define DIAG_LOADV                  0x0400  /* Load vertex */
#define DIAG_CONVV3                 0x0800  /* Convert 3-component vertex */
#define DIAG_CONVV2                 0x1000  /* Convert 2-component vertex */
#define DIAG_CONVC3                 0x1800  /* Convert 3-component color */
#define DIAG_CONVC4                 0x2000  /* Convert 4-component color */
#define DIAG_CONVCP                 0x2800  /* Convert packed color */
#define DIAG_CONVC1                 0x3000  /* Convert 1-component color */
#define DIAG_ITOF                   0x4000  /* Convert integer to float */
#define DIAG_DATAF                  (DIAG_DATA | DIAG_ITOF)

/* Diagnostic Command Tokens */
#define DIAG_FINISH2                1       /* Set finish flag 2 */
#define DIAG_GERAM12                2       /* Test GE7 internal RAM */
#define DIAG_GESHRAM                3       /* Test GE7 to Shared RAM datapath */
#define DIAG_SEEDROM                4       /* Test GE7 inverse seed ROM */
#define DIAG_SQROM                  5       /* Test GE7 square root ROM */
#define DIAG_REINIT                 6       /* Initialize RE3 registers */
#define DIAG_GEBUS                  7       /* Test GE bus between GE7s */
#define DIAG_GEFIFO                 8       /* Test GE7 to RE3 FIFO path */
#define DIAG_REDMA                  9       /* Setup DMA from Host to RE3 */
#define DIAG_SHRAMDMA               10      /* Setup DMA from Host to Shared RAM */
#define DIAG_SHRAMREDMA             11      /* Setup DMA from Shared RAM to RE3 */
#define DIAG_GESEQ                  12      /* Test GE7 sequencer commands */
#define DIAG_ATTR                   13      /* Set attribute */
#define DIAG_ATTR_ALL               14      /* Broadcast attribute to all GEs */
#define DIAG_ACTATTR                15      /* Active attribute test */
#define DIAG_RELVCTR                16      /* Relative vector test */
#define DIAG_GECTR                  17      /* GE counter test */
#define DIAG_BIGTEST                18
#define DIAG_S4F                    19
#define DIAG_S4I                    20
#define DIAG_S3F                    21
#define DIAG_S3I                    22
#define DIAG_S2I                    23
#define DIAG_S2F                    24
#define DIAG_C4I                    25
#define DIAG_C4F                    26
#define DIAG_C3I                    27
#define DIAG_C3F                    28
#define DIAG_CPACK                  29
#define DIAG_CINDEX                 30
#define DIAG_CFLT                   31
#define DIAG_LOOPY                  32
#define DIAG_ONE_QUAD               33      /* Draw 1 quadrilateral */
#define DIAG_FOUR_QUAD              34      /* Draw 4 quadrilaterals */
#define DIAG_CLEAR_SCREEN           35      /* Clear entire framebuffer */
#define DIAG_ONE_QUAD_SERIAL        36
#define DIAG_SMALL_QUAD             37
#define DIAG_CLEAR_NOGRANT          38
#define DIAG_SMALL_QUAD_NOGRANT     39
#define DIAG_STRIDEDMA              47      /* Stride DMA test */
#define DIAG_SIMDRECTW              48
#define DIAG_SETCTX                 49      /* Set context */
#define DIAG_CMOV                   50      /* Character move / cursor */
#define DIAG_DRAWCHAR               51      /* Draw glyph */
#define DIAG_ZDRAW                  52      /* Z-buffer draw enable */
#define DIAG_READSOURCE             53      /* Set read source: 0=Bitp, 1=Aux, 2=Z, 3=CID */
#define DIAG_RDVTX                  54
#define DIAG_VTX                    55      /* Vertex command base */
#define DIAG_V4F                    (DIAG_VTX | DIAG_USEV)
#define DIAG_V4I                    (DIAG_V4F | DIAG_ITOF)
#define DIAG_V3F                    (DIAG_V4F | DIAG_CONVV3)
#define DIAG_V3I                    (DIAG_V3F | DIAG_ITOF)
#define DIAG_V2F                    (DIAG_V4F | DIAG_CONVV2)
#define DIAG_V2I                    (DIAG_V2F | DIAG_ITOF)
#define DIAG_REDMA_ZB               56      /* DMA from Host to RE3 with Z */
#define DIAG_FPUCOND                57
#define DIAG_SPFCOND                58
#define DIAG_FLOATOPS               59
#define DIAG_NORM_QUAD              60
#define DIAG_AUXPLANE               67      /* Auxplane test */
#define DIAG_CIDPLANE               68      /* CID plane test */
#define DIAG_PASS32                 69
#define DIAG_SIMV3f                 70
#define DIAG_CTXSW                  511     /* Context switch token */

/*
 * ============================================================================
 * HQ2 FIFO TOKENS: ADDRESSING AND ARGUMENT CONVENTIONS
 * ============================================================================
 *
 * Every command reaches the HQ2 as a 32-bit store into the FIFO aperture
 * (board offset 0x40000 - 0x5FFFF). The word index of the store address is
 * the TOKEN, and the stored word is its data:
 *
 *     index = (board offset - 0x40000) / 4        board offset = HQ2_TOK_ADDR(index)
 *
 * Every token in this header is given as that index (hex), never as an
 * address. The index splits into (see DIAG_* above):
 *     bits  8:0   microcode entry point (512 entries). The HQ microcode entry
 *                 address equals this number (0x191 = PUC_INIT, and so on).
 *     bit   9     USEV   (DIAG_USEV)   run the vertex routine selected by LOADV
 *     bit  10     LOADV  (DIAG_LOADV)  select that routine (Begin/End)
 *     bits 13:11  input conversion (DIAG_CONV*): 0 none, 1 V3 (x,y,z; w = 1),
 *                 2 V2 (x,y; z = 0, w = 1), 3 C3 (r,g,b; a = 1), 4 C4,
 *                 5 CP (packed colour), 6 C1
 *     bit  14     ITOF   integer data, converted to float by the HQ2
 * Modifier bits apply only where the microcode expects them (vertex, colour,
 * data and clear ports); 2D, textport and kernel tokens are plain. The
 * conversion semantics are inferred from the DIAG_* names and confirmed for
 * the vertex/colour forms by rendering them in the emulator.
 *
 * Address views. Software sees the aperture through different mappings, so
 * the same token appears at different addresses in disassembly:
 *   - board / kernel / PROM / Xsgi DDX: address = 0x40000 + 4 * index;
 *   - libglcore (OpenGL) and libgl.so (IRIS GL): the board is mapped 0x2000
 *     higher, so its `struct gr2_hq2_fifo` offset X = index * 4 + 0x2000 and
 *     its "0x04xxxx" addresses are board + 0x2000 (its FIN3 ack at 0x6D000 =
 *     board 0x6B000). Its second copy at +0x10000 ("0x05xxxx", HQ2_FIFO_CI)
 *     is the same tokens with ITOF set.
 *
 * Data ports. The words after a token's first word go either to the token
 * itself again or to the DATA token; which one is fixed per token:
 *     DATA           0x1DF   HQ2_TOK_DATA (= PUC_DATA = GE_FIFO_DATA)
 *     DATA|C1        0x31DF  DATA with C1 conversion (libglcore data_port_ci)
 *     ITOF DATA      0x41DF  DATA with integer-to-float conversion
 *     index 0        0x000   GE_DATA; used as the data port by the kernel's
 *                            pixel DMA command (0x147)
 *
 * Entry template used for every token below:
 *
 *   0xNNN NAME -- what it does                       emitter (source file)
 *     token      a                                   type / meaning
 *     token      b
 *     DATA       c, d
 *     then       what follows (a data stream, another token, a readback)
 *
 *   Each line is one or more 32-bit stores, in order. "token" = a store to
 *   this token's own index; "DATA" = a store to 0x1DF (or the variant
 *   named). "x N" = N stores of the same form. Types: f32 = IEEE float,
 *   i32/u32 = integer. Emitter names come from the symbol tables;
 *   libglcore struct member names (stencil_mode, pixel_draw_rect, ...) are
 *   the decompiler author's guesses and are quoted only as cross references.
 */
#define HQ2_FIFO_BASE               0x40000
#define HQ2_TOK_ADDR(tok)           (HQ2_FIFO_BASE + ((tok) << 2))
#define HQ2_TOK_ITOF                0x4000
#define HQ2_TOK_DATA                0x1DF
#define HQ2_TOK_DATA_C1             (DIAG_CONVC1 | HQ2_TOK_DATA)
#define HQ2_TOK_DATA_ITOF           (HQ2_TOK_ITOF | HQ2_TOK_DATA)
#define HQ2_LIBGL_VIEW_BIAS         0x2000      /* libglcore/libgl.so struct offset = index * 4 + this */

/*
 * The IrisGL-era GE_* names that earlier revisions of this header listed for
 * indices below 0x12C (GE_COLOR 10, GE_RGBCOLOR 36, GE_RWMODE 38,
 * GE_PIXWRITEMASK 26, GE_DRAWCHAR 15, GE_ZBUFFER 46, ...) were removed: no
 * microcode on IRIX 6.5 uses them. The same indices carry the OpenGL state
 * below, and IRIS GL (libgl.so) uses the tokens in the IRIS GL section.
 */

/*
 * ============================================================================
 * KERNEL TOKENS (context switch, pixel DMA)
 * ============================================================================
 *
 * 0x000 GE_DATA -- data port of the pixel DMA command (see 0x147)
 * 0x1DF GE_FIFO_DATA -- the DATA port (= HQ2_TOK_DATA, PUC_DATA)
 *
 * ---- GL context switching (kernel gr2.c Gr2PcxSwap, _Gr2CXSaveRestore) ----
 * The GE holds the state of ONE GL context. When another context gets the
 * pipe, the kernel has the microcode stream the old state out to kernel
 * memory and a saved state back in, by VDMA through HQ2_GEDMA (0x6A068).
 * Everything below is from the IRIX 6.5.22 kernel (gr2.o, decompile and
 * disassembly) and a trace of amesh starting while blast was running, unless
 * marked.
 *
 * Context id. The kernel's Rendering Resource Manager (RRM) keeps a table of
 * rendering nodes, RRMrn[], 0x74 bytes per entry. The id is the byte offset
 * of the context's entry: `rn - RRMrn` (disassembly: subu a1, s1, RRMrn), so
 * 0x74 = entry 1, 0xE8 = entry 2. The kernel assigns it; libgl / libglcore
 * never see it. Per-context bookkeeping hangs off rn->unk4C (state word at
 * +4, mode at +8, flags at +0x48, buffers from +0x4C) and rn->unk8 / unkC
 * (main save buffer and its size in bytes).
 *
 * Shared RAM mailbox (written by the microcode, read by the kernel):
 *     word 0x302 (byte 0xC08) CX_SIZE_MAIN   words of main state to save;
 *                                            0 = nothing to save
 *     word 0x303 (byte 0xC0C) CX_OWNER       id of the context that state
 *                                            belongs to (the kernel adds it
 *                                            to RRMrn to find the node)
 *     word 0x304 (byte 0xC10) CX_SIZE_EXT    words of extended state (read
 *                                            for the outgoing context)
 *
 * Gr2PcxSwap(incoming rn, outgoing rn), in order:
 *  1. fin2 = 0; GE_HQMSAV = id (incoming); DATA state; DATA mode; wait FIN2.
 *     state: 0 = new context (first use); 1 = its state is live on the GE;
 *     2 = its state was saved to memory (set by the kernel after a 0x1E1
 *     save); 3 = detach: the context's live state leaves the GE, which then
 *     has no owner. The kernel sends 3 in two places:
 *       - Gr2PcxSwap, a live context (state 1) whose mode changed: (id, 3,
 *         mode), then it reads CX_SIZE_MAIN, saves (0x1E1) into that same
 *         context's buffer, marks it 2, and sends (id, 2, mode) + 0x1E2;
 *       - Gr2DestroyDDRN (context exit), if the dying context is live:
 *         (id, 3, mode), then GE_HQMSAV for the kernel's current context
 *         with its own state (no save / restore DMA), then it frees the
 *         context's data (rn->unk4C = NULL).
 *     So after a detach the microcode must not name that context as
 *     CX_OWNER again: the next Gr2PcxSwap would dereference its freed node
 *     (IRIX 6.5.22 panic "KERNEL FAULT, bad addr 0x4" in the emulator when
 *     ideas exited while powerflip ran, before the HLE handled state 3).
 *     mode: < 3 (meaning (unverified)). The kernel also records hq.version
 *     bit 0 (FIN3) in the outgoing context.
 *  2. Extended state (flag bit 0 of the outgoing context, size CX_SIZE_EXT):
 *     save with 0x1E3 into a page-allocated (kvpalloc) buffer that grows as
 *     needed; restore the incoming context's with 0x1E4.
 *  3. Three more lazily owned resources (flag bits 1, 2, 3): the driver data
 *     remembers the last owner of each; only when a different context needs
 *     one is the previous owner's copy saved (0x1E3) and the new one's
 *     restored (0x1E4). Sizes come from the context (+0x5C, +0x64, +0x6C).
 *     What they hold is (unverified) (pixel / texture / accumulation state
 *     are candidates).
 *  4. Main state: if CX_SIZE_MAIN > 0, kmem_alloc(CX_SIZE_MAIN * 4) for the
 *     node CX_OWNER names, 0x1E1 into it, mark that context state 2.
 *  5. If the incoming context is in state 2: 0x1E2 from its buffer, free it.
 *  6. New context: 0x001 = a board / monitor code 0..3 (3 on Indy Elan).
 *     Then 0x1E0 / 0x1E6 = 0 or 1 by board and mode (wait FIN2; meaning
 *     (unverified)), and 0x1E5 with the window and its clip rectangles.
 *
 * _Gr2CXSaveRestore(buffer, bytes, token): dmasync = 2; fin2 = 0; the token;
 * VDMA between the buffer and HQ2_GEDMA (vdma_kv: 32-bit words, direction
 * GIO -> memory for saves); wait FIN2.
 *     0x1E1 GE_CX_SAVE_MAIN      token = 0; the microcode then supplies
 *                                CX_SIZE_MAIN words on HQ2_GEDMA reads
 *     0x1E2 GE_CX_RESTORE_MAIN   token = words; that many words follow on
 *                                HQ2_GEDMA writes
 *     0x1E3 GE_CX_SAVE_EXT       token = (register value the decompile lost);
 *                                words on HQ2_GEDMA reads
 *     0x1E4 GE_CX_RESTORE_EXT    token; DATA = words; the words follow on
 *                                HQ2_GEDMA writes
 *
 * HQ2_GEDMA read port flow control (inferred): the kernel starts the save
 * VDMA right after queuing 0x1E1, with no barrier in between (only the FIN2
 * wait of the preceding GE_HQMSAV, which drains the FIFO up to it). The
 * VDMA is the MC as GIO master reading an HQ2 slave port, and dmasync (2 =
 * clear sync source) is a retrace sync, not flow control. So the HQ2 itself
 * must not hand out a word before the microcode has run 0x1E1 and supplied
 * it: reads are held off (GIO wait) until the data exists. An emulator whose
 * HQ2 runs asynchronously must do the same: a read that beat 0x1E1 in IRIS
 * returned a stale word, shifting the saved image by one; the restore then
 * failed and the other context's GL state stayed live (IRIX 6.5.22, amesh +
 * ideas). The image is the state at 0x1E1's place in the command stream,
 * so it cannot be produced lazily at read time. Reads past the end of the
 * image are a kernel error on hardware (the emulator returns 0).
 *
 * Size limits: none beyond kernel memory. The main buffer comes from
 * kmem_alloc; the extended ones grow in whole pages. vdma_kv splits a
 * transfer into 32 KB lines; a buffer outside the direct-mapped segment is
 * mapped through the VDMA's 4-entry uTLB, one entry per 4 MB of page table
 * (irix/kern/io/vdma.c). So a context's state is limited only by what the
 * microcode reports.
 *
 * Why it matters: a new context starts from the GE defaults, and IRIS GL
 * relies on it (winopen sets matrices, viewport, depth and light ambients
 * but never turns lighting, blending or fog off; amesh after blast kept
 * blast's lighting while the emulator had one shared state). A context that
 * never draws GL (0x74 in the trace) is switched to and saved as well.
 *
 * The emulator's microcode HLE (src/dev/gr2/gl.rs): its state is plain data
 * (#[repr(C)], numbers and arrays only, no padding), so the saved image is
 * that struct behind a 2-word header ("GLCX", byte size): 976 words (3904
 * bytes) at present. It reports that size and the owner at GE_HQMSAV, hands
 * the image out at 0x1E1 and loads it back at 0x1E2, exactly through the
 * kernel's buffers; it reports CX_SIZE_EXT = 0.
 */
#define GE_DATA                     0x000
#define GE_FIFO_DATA                0x1DF
#define GE_CX_SAVE_MAIN             0x1E1
#define GE_CX_RESTORE_MAIN          0x1E2
#define GE_CX_SAVE_EXT              0x1E3
#define GE_CX_RESTORE_EXT           0x1E4
#define GE_HQMSAV                   0x1F0

/*
 * 0x147 HQ2_DMA_WRITE_PIXELS -- pixel rectangle by VDMA  _Gr2DMAtrigger /
 *                                                        _Gr2MCDMAtrigger
 *     before     dmasync = 2; fin2 = 0
 *     token      x
 *     GE_DATA    y, width (pixels), height, words per row, flag (0/1), 0
 *     then       VDMA streams height * words per row words into HQ2_GEDMA
 *                (0x6A068); the kernel polls FIN2 (up to 100 ms; without it
 *                the ioctl fails and the X client gets an I/O error)
 *   Seen from xsetmon: x 38, y 730, 1128 px, 25 rows, 282 words/row = 8-bit
 *   pixels, 4 per word, MSB first. Pixel size appears to follow width /
 *   words per row; 16/32-bit are (unverified).
 */
#define HQ2_DMA_WRITE_PIXELS        0x147

/*
 * ============================================================================
 * OPENGL TOKENS (libglcore EXPRESS, IRIX 6.5)
 * ============================================================================
 * Sources: the libglcore decompile (ignore/extreme/libglcore/decomp/EXPRESS,
 * function names below), IRIX 6.5.22 traces of glprim, octahedra and the
 * GL demos, and rendering checks in the emulator. Tokens are grouped by
 * function; within a group, by index.
 */

/* ---- Frame, context, synchronization -------------------------------------- */

/*
 * 0x003 HQ2_GL_AUX_WRITEMASK -- overlay/popup plane mask  __glExpSetPixWritemask
 *     token      mask                                u32; 0 in normal contexts
 *   Sent instead of 0x10B by contexts with aux buffers (overlay / popup
 *   visuals), which then send 0x10B = 0, 0.
 *
 * 0x004 HQ2_GL_MAKECURRENT -- context bind            MakeCurrent (gr2_context.c)
 *     token      value                               visual of the bound window
 *                                                    (inferred from IRIS GL
 *                                                    traces): 4 = 24-bit RGB,
 *                                                    2 = 12-bit RGB, 10 = 12-bit
 *                                                    colour index (showmap);
 *                                                    others unknown
 *
 * 0x006 HQ2_GL_FLUSH -- swap sync / Flush             Flush, SwapBuffers
 *     token      0
 *
 * 0x020 HQ2_GL_MAKECURRENT_B                          MakeCurrent
 *     token      0                                   meaning unknown
 *
 * 0x0A3 HQ2_GL_FINISH -- drain the pipeline           Finish (readback_trigger)
 *     token      0
 *     then       spin until version (0x6A040) bit 0 = FIN3, then write 0 to
 *                the FIN3 ack (0x6B000). The microcode raises FIN3 when
 *                everything queued ahead of the token has been drawn.
 *   FIN3 is a level flag and queuing the token does not clear it: a FIN3
 *   left set (a late earlier Finish, or one restored per context by
 *   Gr2PcxSwap) satisfies the next wait at once. Harmless on hardware, whose
 *   pipeline drains in microseconds. An emulator with a deep FIFO must show
 *   FIN3 only once no Finish is still queued, or the client swaps a frame
 *   that is not drawn yet and then stays one frame behind (ideas flicker in
 *   IRIS, found with an event log of the kernel's swap path).
 *
 * 0x0E6 HQ2_GL_CONTEXT_FLUSH                          MakeCurrent
 *     token      0
 *
 * 0x10A HQ2_GL_READ_BUFFER -- read source select     __glExpSetReadBuffer,
 *                                                    Fetch, ReadColor
 *     token      buffer                              format (unverified)
 *
 * 0x10B HQ2_GL_COLOR_WRITEMASK -- per-swap-state plane masks
 *                                                    __glExpSetPixWritemask
 *     token      mask used in swap state 0           u32
 *     token      mask used in swap state 1           u32
 *   The per-channel masks are packed for the visual's depth and shifted by
 *   the depth for the buffer not displayed: GL_BACK in a 12-bit visual sends
 *   0xFFF000, 0x000FFF; FRONT_AND_BACK sends 0xFFFFFF twice. Packing per the
 *   decompile: 24: R 7:0, G 15:8, B 23:16; 16: R 15:11, G 10:5, B 4:0;
 *   12: G 3:0, R 7:4, B 11:8; 8: G 2:0, B 4:3, R 7:5; 4: B 0, G 2:1, R 3.
 *   The 8-bit and 4-bit orders match the Xsgi TrueColor visuals (XMAP5.h).
 *   The 12-bit one does not: the X 12-bit TrueColor visual and the DDX say
 *   R 3:0, G 7:4, B 11:8, so the decompile's 12-bit case is probably
 *   misread (R and G swapped) (unverified; a glColorMask test can tell).
 *
 * 0x1E5 HQ2_GL_WINDOW -- window and clip list       kernel Gr2ValidateClip,
 *                                                    Gr2PcxSwap (not libglcore)
 *     before     0x006 = 0 (Flush)
 *     token      x origin                            screen
 *     DATA       y origin                            GL (bottom-up): 0x400 -
 *                                                    (yorg + ysize)
 *     DATA       width, height
 *     DATA       wid                                 RRM_ValidateClip.wid (1
 *                                                    and 0x10 seen)
 *     DATA       obscured                            RRM_ValidateClip.obscured
 *     DATA       pieces                              number of visible
 *                                                    rectangles (numpieces)
 *     DATA x8    up to 4 rectangles, 2 words each, zero-padded:
 *                (x1 << 11) | x0, (ytop << 10) | ybottom (inclusive, screen,
 *                GL y up: ytop = 0x3FF - y)
 *
 *   How the pieces are to be read (Gr2ValidateClip, and IRIX 6.5.22 traces
 *   of atlantis and ideas with windows moved over them):
 *     pieces 1..4  the pieces come from the Xsgi DDX (gr2.so exp_window.c
 *                  expValidateClip, ioctl 0x3F3 RRM_ValidateClip); the kernel
 *                  forwards them unchanged. It starts from wid = the window's
 *                  id (RRM window private +0x18), obscured = 1, widcheck = 1,
 *                  numpieces = n visible rectangles of the clip region, then:
 *                    whole window or n = 1: that piece, obscured = 0
 *                    n = 2: both rectangles, wid = 1, obscured = 0
 *                    n = 3..4 and (window box - region) is ONE rectangle:
 *                      2 pieces [window box, that hole], wid = 0,
 *                      obscured = 0 (a C / O shape)
 *                    n = 3..4 otherwise: the n rectangles, obscured = 1
 *                    n >= 5: numpieces = 0, obscured = 1 (WID test)
 *                  So "wid" doubles as the piece mode (1 = list, 0 = window
 *                  + hole). Drawing where a pixel lies in an ODD number of
 *                  pieces (XOR) is right for all of these: lists are disjoint
 *                  and the hole lies inside the window. A union reads the C
 *                  as the whole window (atlantis drew under ideas,
 *                  clipping.log: [60-318 x 566-885, 165-318 x 582-865]).
 *                  The obscured flag does NOT gate this: atlantis partly covered by another window
 *                  arrived with obscured = 0, pieces = 2 (an L-shape: x
 *                  106-205 y 911-917 and x 106-127 y 818-910 of a 100x100
 *                  window at 106, 818). An unobscured window arrives with
 *                  obscured = 0, pieces = 1 = the whole window.
 *     pieces 0     obscured = 0: the whole window. obscured != 0: the kernel
 *                  sends one rectangle in the first pair (the window clamped
 *                  to the screen) while the count stays 0. That box is only
 *                  a bound: the visible region is too complex for a piece
 *                  list and comes from the WID test, as for pieces > 4.
 *                  twilight (IRIX 6.5.22 trace) draws the root window this
 *                  way (1280x1024, wid 1, obscured 1, 0 pieces): Xsgi first
 *                  paints the root's visible region with CID 1 (2D_CID_WRITE
 *                  0xF100), then the GL draw, then CID 0 again; drawing the
 *                  whole box painted over every desktop window.
 *     pieces > 4   no rectangles; the only way left is the per-pixel WID test
 *                  against the window-id (CID) planes Xsgi paints with
 *                  2D_CID_WRITE (inferred: that the microcode does this, and
 *                  that the kernel's wid is the DDX's CID numbering; ideas
 *                  under a window and an icon clipped correctly this way in
 *                  the emulator).
 *
 *   When it is sent: Gr2ValidateClip sends it when the RRM clip changes;
 *   Gr2PcxSwap re-sends it when a context gets the pipe and its clip
 *   generation (rn->unk58) differs from the one last sent. In practice (the
 *   atlantis trace) a moved window's new clip reached the GE on the next
 *   switch into the context, right after its state was restored (0x1E2),
 *   not during the move. The clip therefore belongs to the context's GE
 *   state and is saved / restored with it.
 *
 *   Emulator (src/dev/gr2/gl.rs): the clip is part of GlState (saved with the
 *   context). Clipping is done at span level: every GL span is cut to the
 *   window's visible pieces (intersected with window, scissor and screen),
 *   and each piece is its own RE3 span with the colour, alpha and Z
 *   iterators started at its left end, so shading is continuous across the
 *   cut. Clears and Z / stencil fills go per visible rectangle; points, lines
 *   and software fragments (0x02A spans, 0x402B) are tested per pixel. With
 *   pieces > 4 the RE3 WID test is enabled for GL drawing (ENABWID, CURWID =
 *   wid, FBOPTION 1 = 4-bit compare) and switched off afterwards; Z / stencil
 *   fills are not WID-clipped in that case (they cover the window rectangle).
 *   Note why clipping matters beyond looks: X's 8-bit colour-index pixels
 *   and a 12-bit double-buffered GL window's buffer 0 share VRAM bits 7:0,
 *   so an unclipped GL write shows up inside the window in front.
 *
 * 0x1E7 HQ2_GL_SWAP_BUFFERS                           SwapBuffers, MakeCurrent
 *     before     Finish (0x0A3), Flush (0x006)
 *     token      new swap interval                   0/1 = the buffer now
 *                                                    displayed
 *     then       ioctl 1005 (0x3ED) {board, interval, flags}. The kernel
 *                flips the XMAP mode of the window's DID at the next retrace
 *                (Gr2SchedSwapBuf; unverified in the microcode).
 */
#define HQ2_GL_AUX_WRITEMASK        0x003
#define HQ2_GL_MAKECURRENT          0x004
#define HQ2_GL_FLUSH                0x006
#define HQ2_GL_MAKECURRENT_B        0x020
#define HQ2_GL_FINISH               0x0A3
#define HQ2_GL_CONTEXT_FLUSH        0x0E6
#define HQ2_GL_READ_BUFFER          0x10A
#define HQ2_GL_COLOR_WRITEMASK      0x10B
#define HQ2_GL_WINDOW               0x1E5
#define HQ2_GL_SWAP_BUFFERS         0x1E7

/* ---- Transform, viewport, clipping ---------------------------------------- */

/*
 * 0x037 HQ2_GL_MODELVIEW                             __glExpPassMatrix
 *     token x16  m[0][0] .. m[3][3]                  f32, glLoadMatrix order
 *     then       0x039 (the normal matrix) always follows
 * 0x038 HQ2_GL_PROJECTION                            __glExpUpdateMatrixState
 *     token x16  m[0][0] .. m[3][3]                  f32
 * 0x039 HQ2_GL_NORMAL_MATRIX
 *     token x9   n[0][0] .. n[2][2]                  f32, inverse transpose of
 *                                                    the modelview's 3x3
 * 0x03A HQ2_GL_TEXTURE_MATRIX
 *     token x16  m[0][0] .. m[3][3]                  f32
 *
 * 0x03B HQ2_GL_VIEWPORT                              __glExpUpdateViewport
 *     token      1.0                                 f32
 *     DATA       x0, x0 + w - 1, y0, y0 + h - 1      f32, window coordinates
 *     DATA       zScale, zCenter                     f32
 *   zScale = zCenter = (2^zbits - 1) / 2 (0x4A7FFFFE for 23 bits, 0x48FFFFF0
 *   for 20 bits with 4 stencil bits), so window z runs 0 .. 2^zbits - 1.
 *
 * 0x03C HQ2_GL_SCISSOR                               ApplyScissor
 *     token      x0                                  i32
 *     DATA       y0, x1, y1                          i32, inclusive;
 *                                                    0, 0, 0x7FF, 0x7FF = off
 *
 * 0x02E HQ2_GL_CLIP_PLANE_ENABLE, per plane           __glExpEnableClipPlanes
 *     token      enabled                             0/1
 *     token      plane                               0..5
 *
 * 0x02F HQ2_GL_CLIP_PLANE, per plane                  __glExpPassClipPlanes
 *     token      plane                               0..5
 *     DATA       a, b, c, d                          f32, eye space
 *
 * 0x0E3 HQ2_GL_NORMALIZE                             __glExpEnableNormalize
 *     token      enable                              0/1
 *     then       0x082 with the same value
 * 0x082 HQ2_GL_NORMALIZE_B
 *     token      enable                              0/1
 */
#define HQ2_GL_CLIP_PLANE_ENABLE    0x02E
#define HQ2_GL_CLIP_PLANE           0x02F
#define HQ2_GL_MODELVIEW            0x037
#define HQ2_GL_PROJECTION           0x038
#define HQ2_GL_NORMAL_MATRIX        0x039
#define HQ2_GL_TEXTURE_MATRIX       0x03A
#define HQ2_GL_VIEWPORT             0x03B
#define HQ2_GL_SCISSOR              0x03C
#define HQ2_GL_NORMALIZE_B          0x082
#define HQ2_GL_NORMALIZE            0x0E3

/* ---- Primitives and vertex data ------------------------------------------- */

/*
 * Begin/End (gr2_prim.c):
 *     Begin:     token <begin> = 0, then LOADV | <vertex routine> = 0
 *     vertices:  colour / normal / index / edge flag stores, then a USEV
 *                vertex store; the vertex routine assembles the primitive
 *     End:       token <end> = 0, then LOADV | 0x065 = 0 (the routine for
 *                vertices outside Begin/End)
 *
 *     mode            begin  LOADV routine  end
 *     POINTS          0x11D  0x123          0x168
 *     LINES           0x17C  0x0EB          0x057
 *     LINE_STRIP      0x17C  0x056          0x057
 *     LINE_LOOP       0x058  0x059          0x05A
 *     TRIANGLES       0x0F0  0x0F2          0x0F1
 *     TRIANGLE_STRIP  0x046  0x047          0x04A
 *     TRIANGLE_FAN    0x046  0x0ED          0x04A
 *     QUADS           0x0F3  0x0F5          0x0F4
 *     QUAD_STRIP      0x04C  0x04D          0x051
 *     POLYGON         0x0F7  0x0F8          0x0FC, then 0x0FD
 *     (outside)       -      0x065          -
 *
 * 0x063 HQ2_GL_VERTEX -- vertex, always with USEV     __glexpim_Vertex*
 *     token x4   x, y, z, w      index 0x263 (USEV)          f32
 *     token x3   x, y, z         index 0xA63 (V3|USEV)       f32
 *     token x2   x, y            index 0x1263 (V2|USEV)      f32
 *     ITOF forms (0x4263, 0x4A63, 0x5263) take integers.
 *
 * 0x182 HQ2_GL_COLOR -- current colour               __glexpim_Color*, __glExpPassColor
 *     token x3   r, g, b         index 0x1982 (C3)            f32 0..1
 *     token x4   r, g, b, a      index 0x2182 (C4)            f32 0..1
 *   Integer colours (glColor{3,4}{b,ub,s,us,i,ui}) use the ITOF forms
 *   (0x5982, 0x6182) with each component pre-scaled by libglcore to 0..255
 *   (ub as is, b * 2, us >> 8, s >> 7, ui >> 24, i >> 23), so the GE's unit
 *   for ITOF colours is 1/255. Confirmed by rendering glColor3ub/4ub.
 *
 * 0x0FE HQ2_GL_INDEX -- current colour index          __glExpPassIndex
 *     token      index           index 0x30FE (C1)            f32
 *
 * 0x10D HQ2_GL_NORMAL -- current normal               __glExpPassNormal
 *     token x3   nx, ny, nz                          f32, object space
 *   Transformed by 0x039 and renormalized when 0x0E3 is set.
 *
 * 0x0F6 HQ2_GL_EDGE_FLAG                              __glExpPassEdgeFlag
 *     token      edge flag                           0/1
 *
 * 0x105 HQ2_GL_RASTER_POS -- glRasterPos (fast path)  __glexpim_RasterPos*
 *     token      x                                   f32
 *     DATA       y, z, w                             f32
 *
 * 0x106 HQ2_GL_RASTER_POS_DATA -- a host-computed raster position
 *                                                    __glExpPassRasterPosData
 *     token      valid                               0/1
 *     DATA       window x, y, z, eye z, clip w       f32
 *     DATA       r, g, b, a (each * 0.99609375)      f32, RGB mode; or
 *     DATA|C1    index, 0, 0, 0                      CI mode
 */
#define HQ2_GL_VERTEX               0x063
#define HQ2_GL_VR_OUTSIDE           0x065       /* LOADV routine outside Begin/End */
#define HQ2_GL_EDGE_FLAG            0x0F6
#define HQ2_GL_INDEX                0x0FE
#define HQ2_GL_RASTER_POS           0x105
#define HQ2_GL_RASTER_POS_DATA      0x106
#define HQ2_GL_NORMAL               0x10D
#define HQ2_GL_COLOR                0x182

/* ---- Rasterization state -------------------------------------------------- */

/*
 * 0x011 HQ2_GL_DITHER                                 __glExpEnableDither
 *     token      enable                              0/1
 * 0x013 HQ2_GL_SHADE_MODEL                            __glExpPassShadeModel
 *     token      1 smooth, 0 flat
 * 0x016 HQ2_GL_LINE_STIPPLE                           __glExpPassLineStipple
 *     token      pattern                             u16; 0xFFFF = off
 *     token      software path                       1 if the line must be
 *                                                    drawn on the CPU (width >
 *                                                    100, or > 9 and stippled)
 * 0x017 HQ2_GL_LINE_WIDTH                             __glExpPassLineWidth
 *     token      width                               i32
 *     token      software path                       as for 0x016
 * 0x018 HQ2_GL_LINE_STIPPLE_REPEAT                    __glExpPassLineStipple
 *     token      repeat                              i32; 1 when disabled.
 *                                                    Sent before 0x016.
 * 0x01B HQ2_GL_CULL_FRONT, 0x01C HQ2_GL_CULL_BACK     __glExpPassCullFace
 *     token      cull                                0/1 each; both are sent
 * 0x01E HQ2_GL_POLYGON_STIPPLE_OFF                    __glExpEnablePolygonStipple
 *     token      0
 * 0x01F HQ2_GL_POLYGON_STIPPLE -- load and enable     __glExpPassPolygonStipple
 *     token      1
 *     DATA x32   stipple rows                        u32; row 0 first = window
 *                                                    y mod 32 from the bottom;
 *                                                    MSB = window x mod 32 = 0
 *   The glPolygonStipple mask as stored by __glFillImage; window-aligned as
 *   in the GL spec.
 * 0x021 HQ2_GL_POINT_SMOOTH, 0x022 HQ2_GL_LINE_SMOOTH
 *     token      enable                              0/1
 * 0x0E2 HQ2_GL_POLYGON_MODE                           __glExpPassPolygonMode
 *     token      1 FILL, 2 POINT, 3 LINE
 * 0x0E4 HQ2_GL_POLYGON_OFFSET                         __glExpPassPolygonOffset
 *     token      factor                              f32
 *     token      units * depth scale                 f32; 0, 0 = off
 * 0x108 HQ2_GL_FRONT_FACE                             __glExpPassFrontFace
 *     token      1 CCW, 0 CW
 * 0x18F HQ2_GL_POINT_SIZE                             __glExpPassPointSize
 *     token      size                                i32, >= 1
 */
#define HQ2_GL_DITHER               0x011
#define HQ2_GL_SHADE_MODEL          0x013
#define HQ2_GL_LINE_STIPPLE         0x016
#define HQ2_GL_LINE_WIDTH           0x017
#define HQ2_GL_LINE_STIPPLE_REPEAT  0x018
#define HQ2_GL_CULL_FRONT           0x01B
#define HQ2_GL_CULL_BACK            0x01C
#define HQ2_GL_POLYGON_STIPPLE_OFF  0x01E
#define HQ2_GL_POLYGON_STIPPLE      0x01F
#define HQ2_GL_POINT_SMOOTH         0x021
#define HQ2_GL_LINE_SMOOTH          0x022
#define HQ2_GL_POLYGON_MODE         0x0E2
#define HQ2_GL_POLYGON_OFFSET       0x0E4
#define HQ2_GL_FRONT_FACE           0x108
#define HQ2_GL_POINT_SIZE           0x18F

/* ---- Per-fragment state --------------------------------------------------- */

/*
 * 0x00A HQ2_GL_DEPTH_MASK                             __glExpPassDepthMask
 *     token      Z write mask                        (1 << zbits) - 1, e.g.
 *                                                    0x7FFFFF for 23 bits; 0 =
 *                                                    writes off
 * 0x00E HQ2_GL_STENCIL_CONFIG                         MakeCurrent
 *     token      stencil bits                        0 or 4
 * 0x00F HQ2_GL_STENCIL_MODE                           __glExpPassStencilMode,
 *                                                    __glExpEnableStencilTest
 *     token      enable                              0/1
 *     DATA       ref, func                           func 0..7 = NEVER..ALWAYS
 *     DATA       mask
 *     DATA       fail op, zfail op, zpass op         0 KEEP 1 INVERT 2 ZERO
 *                                                    3 REPLACE 4 INCR 5 DECR
 *   All seven words 0 = stencil off.
 * 0x010 HQ2_GL_STENCIL_WRITEMASK                      __glExpPassStencilMask
 *     token      mask
 * 0x014 HQ2_GL_DEPTH_TEST                             __glExpEnableDepthTest
 *     token      enable                              0/1
 * 0x01A HQ2_GL_LOGIC_OP                               __glExpPassLogicOp
 *     token      op                                  logicOp & 0xF, 3 = COPY;
 *                                                    same order as RE3 FUNC
 * 0x024 HQ2_GL_DEPTH_FUNC                             __glExpPassDepthFunc
 *     token      func & 7                            NEVER..ALWAYS
 * Blending has two paths, each switched on by its own token:
 *   - fast: 0x026 = 1 selects a dedicated SRC_ALPHA / ONE_MINUS_SRC_ALPHA
 *     blend path in the GE7 microcode; the factors are implied and the
 *     factors in 0x025 are not used;
 *   - general: 0x025 enable = 1 blends with the factors it carries,
 *     presumably through a slower microcode path that selects the factor
 *     per pixel.
 * Neither set = no blending. The two-paths reading is (inferred): the
 * microcode is not executed or decoded; the tokens and their use are
 * confirmed. libglcore sets 0x026 = 1 only together with 0x025 = (1,
 * SRC_ALPHA, ONE_MINUS_SRC_ALPHA), so both paths agree there. IRIS GL
 * blendfunction(BF_SA, BF_MSA) sends 0x025 = (0, ONE, ZERO) and then 0x026 =
 * 1 (blast, IRIX 6.5.22 trace): taking 0x025's factors while 0x026 is set
 * would turn the blend into a plain copy.
 *
 * 0x026 HQ2_GL_BLEND_FAST -- fast SRC_ALPHA path       __glExpPassBlendFunc
 *     token      1 = on, 0 = off                     libglcore sends it
 *                                                    before 0x025, IRIS GL
 *                                                    after
 * 0x025 HQ2_GL_BLEND -- general blend                  __glExpPassBlendFunc
 *     token      enable                              0 for (ONE, ZERO)
 *     token      src factor
 *     token      dst factor
 *   Factor codes: 0 ZERO, 1 ONE, 2 DST_COLOR (src) / SRC_COLOR (dst),
 *   3 ONE_MINUS_ of 2, 4 SRC_ALPHA, 5 ONE_MINUS_SRC_ALPHA. DST_ALPHA ->
 *   ONE and ONE_MINUS_DST_ALPHA -> ZERO (no alpha planes).
 *   GR2 has no alpha test and RE3 no blender: the GE microcode blends (see
 *   GR2.h "BLENDING AND ALPHA TEST").
 */
#define HQ2_GL_DEPTH_MASK           0x00A
#define HQ2_GL_STENCIL_CONFIG       0x00E
#define HQ2_GL_STENCIL_MODE         0x00F
#define HQ2_GL_STENCIL_WRITEMASK    0x010
#define HQ2_GL_DEPTH_TEST           0x014
#define HQ2_GL_LOGIC_OP             0x01A
#define HQ2_GL_DEPTH_FUNC           0x024
#define HQ2_GL_BLEND                0x025
#define HQ2_GL_BLEND_FAST           0x026

/* ---- Clears --------------------------------------------------------------- */

/*
 * 0x0A0 HQ2_GL_CLEAR_COLOR_DEPTH                      CZClear (gr2_rgb.c)
 *     token      r                                   f32
 *     DATA       g, b                                f32
 *     DATA       0
 *     DATA       depth                               i32, clearDepth * zScale
 *                                                    (0x7FFFFF = 1.0 at 23 bits)
 *     DATA       0xFFFFFFFF
 * 0x68A0 (ITOF|CP|0x0A0) HQ2_GL_CLEAR_DEPTH -- packed-colour CZClear
 *                                                    Clear (gr2_depth.c), IRIS GL
 *                                                    czclear
 *     token      colour                              packed 0xAABBGGRR (CP)
 *     DATA       depth                               i32, signed 24-bit (IRIS GL
 *                                                    sends ZMIN = 0xFF800000)
 *     DATA       colour plane mask                   0 = depth only (libglcore);
 *                                                    IRIS GL: the drawn buffer's
 *                                                    planes, 0x000FFF / 0xFFF000
 *                                                    alternating per frame
 *   Confirmed by rendering powerflip: without the colour part its frames
 *   accumulate.
 * 0x30A0 (C1|0x0A0) HQ2_GL_CLEAR_CI_DEPTH -- colour index + depth
 *                                                    CZClear (gr2_ci.c)
 *     token      index, then DATA words as for 0x0A0 (unverified)
 * 0x0A1 HQ2_GL_CLEAR_STENCIL                          Clear (gr2_stencil.c)
 *     token      value
 *     DATA       write mask
 * 0x104 HQ2_GL_CLEAR_COLOR                            Clear (gr2_rgb.c)
 *     token      r                                   f32
 *     DATA       g, b, a                             f32 (a sent raw)
 * 0x3104 (C1|0x104) HQ2_GL_CLEAR_CI                   Clear (gr2_ci.c)
 *     token      index                               f32
 *     DATA|C1    0, 0
 *   Colour clears are bracketed by 0x011 = 0 / 1 when the colour is
 *   integral. No rectangle is sent: the area is the window and scissor.
 */
#define HQ2_GL_CLEAR_COLOR_DEPTH    0x0A0
#define HQ2_GL_CLEAR_DEPTH          0x68A0
#define HQ2_GL_CLEAR_CI_DEPTH       0x30A0
#define HQ2_GL_CLEAR_STENCIL        0x0A1
#define HQ2_GL_CLEAR_COLOR          0x104
#define HQ2_GL_CLEAR_CI             0x3104

/* ---- Software spans and fragments ----------------------------------------- */

/*
 * GR2 has no texture unit. Textured and alpha-tested primitives are
 * rasterized on the CPU and sent as spans or single fragments.
 *
 * 0x029 HQ2_GL_TEX_SPAN_SETUP                         __glExpTextureSpan,
 *                                                    IRIS GL (blast)
 *     token      x + 6144                            f32, window relative
 *     token      dx                                  f32 (libglcore: 1.0)
 *     token      y + 6144                            f32
 *     token      dy                                  f32 (libglcore: 0.0)
 *     token      z, dz                               f32 (per step)
 *   IRIS GL sends vertical (0, 1) and diagonal steps too, for its software
 *   lines. Confirmed by rendering blast (IRIX 6.5.22 trace).
 * 0x02A HQ2_GL_TEX_SPAN_COLOR, per pixel
 *     token x4   r, g, b, a                          f32 (libglcore); the pixel
 *                                                    is written, then x, y, z
 *                                                    step
 *     or ITOF|CP (0x682A): token = 0xAABBGGRR packed (IRIS GL)
 *   Blending (0x025 / 0x026) applies; IRIS GL's textured asteroids send
 *   alpha 0 for transparent texels.
 * 0x02C, per pixel -- same format as 0x02A              IRIS GL (blast HUD
 *                                                    lines, cpack colour)
 *   How it differs from 0x02A is (unverified); rendered the same.
 * 0x02D HQ2_GL_TEX_SPAN_SKIP, per rejected pixel      __glExpTextureStippledSpan
 *     token      0                                   x, z step, nothing written
 *
 * 0x402B (ITOF|0x02B) HQ2_GL_FRAGMENT -- one pixel    Store / Store_B (gr2_rgb.c)
 *     token      x + 6144                            i32
 *     ITOF DATA  y + 6144, z                         i32
 *     DATA       r, g, b, a                          f32
 *   6144 = viewportX/YAdjust (__glExpCreateContext). Used for alpha test,
 *   which the GE cannot do.
 */
#define HQ2_GL_TEX_SPAN_SETUP       0x029
#define HQ2_GL_TEX_SPAN_COLOR       0x02A
#define HQ2_GL_FRAGMENT             0x402B
#define HQ2_GL_TEX_SPAN_SKIP        0x02D

/* ---- Readback and pixel transfers ----------------------------------------- */

/*
 * State readback (gr2_vapi.c, gr2_rapi.c, gr2_pixel.c):
 * 0x0E9 HQ2_GL_GET_COLOR, 0x0EA HQ2_GL_GET_NORMAL, 0x107 HQ2_GL_GET_RASTERPOS,
 * 0x0CD HQ2_GL_GET_ORIGIN
 *     token      0
 *     then       Finish (0x0A3), read 4 words from the mailbox at shram word
 *                0x4022 (board 0x10088; libglcore address 0x12088), then
 *                0x0BD = 0
 * 0x0BD HQ2_GL_READ_DONE
 *     token      0
 *
 * Pixel reads (ReadColor, ReadSpan, Fetch, __glExpReadPixels*):
 *     0x0A7 = 0; 0x0A8 = 0; 0x0BC = mode (0)
 *     0x0AD HQ2_GL_READ_RECT
 *       token    x
 *       DATA     y, width, height, 1, 0, 0           (ReadColor: y, 1, 1, 1, 0, 0)
 *     then       Finish, read the mailbox / staging area, 0x0BD = 0
 *
 * Pixel draws (__glExpDrawPixelsUnpack1/4):
 *     0x0BB HQ2_GL_PIXEL_ZOOM
 *       token x3 0.0, zoom, 1.0                      f32 (meaning of the 3
 *                                                    words unverified)
 *     0x0B1 = 0 (start)
 *     0x0B2 HQ2_GL_DRAW_RECT, per chunk
 *       token    x
 *       DATA     y, width, height, flags             (unverified)
 *     0x071 HQ2_GL_PIXEL_DATA, per group of pixels  __glExpCopyToPipe1/4,
 *                                                    __glExpSwapToPipe1/4
 *       token    first word
 *       DATA     up to 3 more words                  packed pixels, first
 *                                                    pixel in the MSB
 *     0x0B3 = 0 (end)
 *
 * Pixel DMA writes (IRIS GL lrectwrite, libgl.so gl_gr2dma_lrectwrite;
 * IRIX 5.3 MRI software trace):
 *     0x0BC = 1, then the GR2 pixel-DMA ioctl; the kernel (_Gr2DMAtrigger,
 *     see "FINISH-FLAG HANDSHAKE") sends
 *     0x0B5 HQ2_GL_DMA_WRITE (pixel zoom 1) or 0x0B8 HQ2_GL_DMA_WRITE_ZOOM
 *       token    x                                   window-relative
 *       GE_DATA  y, width, height, words per row,    y = bottom edge of the
 *                flag, 0                             rectangle (GL y up)
 *   Rows arrive TOP row first: lrectwrite arrays are bottom row first, and
 *   the kernel builds the VDMA "high to low" from the end of the array
 *   (gr2_dma.c _Gr2HtoLmkudmada) unless the request says the client rows
 *   are already top-down (request bit 2: _Gr2mkudmada). Large images come
 *   in bands: OPART sends a 512x512 slice as 4 transfers of 128 rows at
 *   y = 0, 128, 256, 384; filling each band bottom-up flipped every band
 *   (confirmed by rendering the traced slice).
 *     then       height * words-per-row words through HQ2_GEDMA (VDMA); the
 *                kernel waits FIN2 (100 ms). Pixels per word = width / words
 *                per row: 2 = 16-bit colour indices (seen: 64x64 image, 32
 *                words/row, indices 0x2xx), first pixel in the high half;
 *                1 = 32-bit, 4 = 8-bit (unverified).
 *   libgl picks 0x0B8 when the rounded x pixel zoom is not 1 and sets flag
 *   bit 0x10 in its request; the ioctl flag word also has bit 0 (write),
 *   bit 1 (row stride set) and bits 2/3 from pixel-mode state. The word
 *   the kernel forwards as "flag" is request bit 3 (meaning unverified).
 *   Without a FIN2 the kernel logs "Gr2PixelDma: TIMEOUT gfx DMA did not
 *   complete (finish flag not set)", raises a graphics error and detaches
 *   the graphics process (Xsgi).
 *
 * Pixel copies (__glExpFastCopyPixels):
 *     0x0A7 = 0; 0x0A8 = 0; 0x0BB x3 = 0.0, zoom x, zoom y
 *     0x0BA HQ2_GL_COPY_PIXELS
 *       token    0
 *       DATA     6 words: source x, y, width, height, destination x, y
 *                (order unverified)
 *
 * 0x18C HQ2_GL_BITMAP (draw_bitmap)                   (layout not decoded)
 */
#define HQ2_GL_PIXEL_DATA           0x071
#define HQ2_GL_READ_SETUP_A         0x0A7
#define HQ2_GL_READ_SETUP_B         0x0A8
#define HQ2_GL_READ_RECT            0x0AD
#define HQ2_GL_DRAW_START           0x0B1
#define HQ2_GL_DRAW_RECT            0x0B2
#define HQ2_GL_DRAW_END             0x0B3
#define HQ2_GL_DMA_WRITE            0x0B5
#define HQ2_GL_DMA_WRITE_ZOOM       0x0B8
#define HQ2_GL_COPY_PIXELS          0x0BA
#define HQ2_GL_PIXEL_ZOOM           0x0BB
#define HQ2_GL_READ_MODE            0x0BC
#define HQ2_GL_READ_DONE            0x0BD
#define HQ2_GL_GET_ORIGIN           0x0CD
#define HQ2_GL_GET_COLOR            0x0E9
#define HQ2_GL_GET_NORMAL           0x0EA
#define HQ2_GL_GET_RASTERPOS        0x107
#define HQ2_GL_BITMAP               0x18C

/* ---- Fog ------------------------------------------------------------------ */

/*
 * 0x027 HQ2_GL_FOG_ENABLE                             __glExpEnableFog
 *     token      enable                              0/1 (always 0 in CI mode)
 * 0x028 HQ2_GL_FOG                                    __glExpPassFog
 *     token      mode                                bit pattern: 0 LINEAR,
 *                                                    1 EXP, 2 EXP2
 *     token      a                                   f32
 *     token      b                                   f32
 *     token x3   fog r, g, b                         f32
 *   LINEAR: a = end, b = 1.002 / (end - start). EXP: a = density *
 *   0.18046425546276915, b unused. EXP2: a = density * a constant the
 *   decompile lost (unverified). The fog distance is eye-space |z|.
 */
#define HQ2_GL_FOG_ENABLE           0x027
#define HQ2_GL_FOG                  0x028

/* ---- Lighting ------------------------------------------------------------- */

/*
 * Where the state lives. Lights, materials and tables are not in shared
 * RAM: shram holds only the microcode handoff and the readback mailboxes.
 * All lighting state goes through the FIFO into GE7 memory, where the GE
 * microcode places it (not decoded; the emulator's HLE keeps its own copy).
 * libglcore keeps the master copy in __GLcontext and re-sends it
 * (state.light.source[n], 0x74 bytes per light; state.light.front / back; a
 * LUT cache of {exponent, cutoff, table} per light at gc + 0x7C50, the
 * specular LUT keys at gc + 0x7C54 .. 0x7C60). Whether GE memory is saved
 * per context depends on the kernel's context save (CX_SIZE_*; unverified).
 *
 * The GE side is organized as:
 *   - a light model: scene ambient, the lighting path, flags;
 *   - two materials, front (0) and back (1): emission, ambient, diffuse
 *     RGBA, specular, and a 128-entry specular table with scale / start;
 *   - 8 light slots: ambient, diffuse, specular, position, spot direction,
 *     attenuation, and a 32-entry spot table with scale / start;
 *   - a linked list of the enabled slots (head, a next field per slot,
 *     count); the GE walks this list, not all 8 slots.
 * It is addressed in four ways:
 *   - vector tokens with a fixed target: 0x075 and the materials;
 *   - per-light vector tokens that go to the slot selected by GE parameter
 *     5: 0x0E5, 0x101, 0x102, 0x07F, 0x084, 0x109 (and IRIS GL 0x07E);
 *   - GE parameter pairs on 0x080: (parameter number, value);
 *   - light-model pairs on 0x085: (parameter number, value).
 * The tables stream into whichever table GE parameter 7 selects.
 *
 * 0x080 HQ2_GL_LIGHT_PARAM -- GE parameter pair       gr2_lighting.c
 *     token      parameter number                    f32
 *     token      value                               f32 (18..23: see below)
 *   parameter:
 *      2 /  3  front specular table scale / start
 *     24 / 25  back specular table scale / start
 *      4       head of the enabled-light list (-1 = none)
 *      5       select light slot n for the per-light tokens and for 6
 *      6       next slot after the selected one (-1 = end of list)
 *      7       target of the next table upload: 0 front specular, 1 back
 *              specular, 2 + n spot table of light n
 *     10       number of enabled lights
 *     18..20   front colour-index material: ambient index, diffuse - ambient,
 *              specular - ambient. For these the value word goes to DATA|C1
 *              (0x31DF) instead of the token (confirmed in IRIS GL traces:
 *              0x080 18.0, 0x31DF value).
 *              A decoder must pair the DATA word with the pending parameter
 *              number, or every later pair is misaligned.
 *     21..23   back, the same
 *     29 / 30  spot table scale / start (of the light named by 31)
 *     31       light that owns the spot table being loaded; -1 = the
 *              selected light has no spot
 *
 * 0x085 HQ2_GL_LIGHT_MODEL -- light-model pair        __glExpLoadLightPath,
 *                                                    __glExpInitLighting
 *     token      parameter number                    f32
 *     token      value                               f32
 *   parameter:
 *      2       colour-index lighting: 1 CI, 0 RGB
 *      3, 4, 5 lighting path, at most one set: (1,0,0) local lights or local
 *              viewer; (0,1,0) one infinite light, one-sided; (0,0,1)
 *              several infinite lights, one-sided; (0,0,0) infinite lights,
 *              two-sided
 *      6       local viewer 0/1
 *      7       1 at init (meaning unknown)
 *
 * 0x074 HQ2_GL_SPEC_TABLE                             __glExpLoadSpecLUT
 *     token x128 table                               f32: pow(x, shininess)
 *                                                    for x = start + i / scale,
 *                                                    start = 0.0007^(1 /
 *                                                    shininess) - step; entry
 *                                                    0 = 0. Looked up by N.H.
 * 0x086 HQ2_GL_SPOT_TABLE                             __glExpLoadSpotLUT
 *     token x32  table                               f32: pow(cos, exponent)
 *                                                    from cos(cutoff) to 1;
 *                                                    entry 0 = 0 (outside)
 * 0x075 HQ2_GL_AMBIENT_SUM                            __glExpLoadAmbientSum
 *     token x3   r, g, b                             f32: model ambient, plus
 *                                                    the enabled lights'
 *                                                    ambient when there are no
 *                                                    local lights, no local
 *                                                    viewer and no two-sided
 *                                                    lighting; 0 in CI mode
 * 0x076 / 0x077 HQ2_GL_MAT_EMISSION front / back      __glExpValidateMaterial
 *     token x3   r, g, b                             f32
 * 0x078 / 0x079 HQ2_GL_MAT_AMBIENT front / back
 *     token x3   r, g, b                             f32
 * 0x07A / 0x07B HQ2_GL_MAT_DIFFUSE front / back
 *     token x4   r, g, b, a                          f32; a = the lit alpha
 * 0x07C / 0x07D HQ2_GL_MAT_SPECULAR front / back
 *     token x3   r, g, b                             f32
 * 0x083 HQ2_GL_LIGHT_DONE
 *     token      0                                   ends each material update
 *                                                    and each light-path load
 * 0x0E5 HQ2_GL_LIGHT_AMBIENT  (selected slot)         __glExpLoadLightSource
 *     token x3   r, g, b                             f32; 0 in CI mode
 * 0x101 HQ2_GL_LIGHT_DIFFUSE  (selected slot)
 *     token x3   r, g, b                             f32; CI mode: luminance
 *                                                    (0.3 R + 0.59 G + 0.11 B)
 *                                                    x 3
 * 0x102 HQ2_GL_LIGHT_SPECULAR (selected slot)
 *     token x3   r, g, b                             f32; CI mode as 0x101
 * 0x07F HQ2_GL_LIGHT_POSITION (selected slot)
 *     token x4   x, y, z, w                          f32, eye space: a local
 *                                                    light sends (x/w, y/w,
 *                                                    z/w, 1), a directional one
 *                                                    the normalized direction
 *                                                    towards it with w = 0
 * 0x084 HQ2_GL_SPOT_DIRECTION (selected slot)
 *     token x3   x, y, z                             f32, eye space
 * 0x109 HQ2_GL_ATTENUATION    (selected slot)
 *     token x3   linear, quadratic, constant         f32
 * 0x081 HQ2_GL_COLOR_MATERIAL                         __glExpValidateColorMaterial
 *     token      parameter                           u32: 1 EMISSION 2 AMBIENT
 *                                                    3 DIFFUSE 4 SPECULAR
 *                                                    5 AMBIENT_AND_DIFFUSE
 *     token      face                                u32: 0 FRONT 1 BACK 2 BOTH
 *     token      enable                              u32; 0, 0, 0 = off.
 *                                                    RGB mode only.
 * 0x10E HQ2_GL_LIGHTING                               __glExpLoadLightPath
 *     token      0.0
 *     DATA       enable                              0/1
 * 0x0D4 HQ2_GL_TWO_SIDED                              __glExpLoadLightPath
 *     token      1.0
 *     DATA       two-sided                           0/1
 *
 * Sequences (in the order libglcore sends them):
 *   __glExpInitLighting (context creation):
 *     0x085 (7, 1); CI mode: materials emission 0, ambient 0, diffuse
 *     (0, 1, 0, 0), specular (0, 0, 1) for both faces, then 0x085 (2, 1);
 *     RGB mode: 0x085 (2, 0). Then __glExpUpdateLightingState.
 *   __glExpUpdateLightingState:
 *     0x080 (4, -1), (10, 0); all material tokens for both faces; 0x081.
 *   __glExpValidateLighting (the set of enabled lights changed), for each
 *   enabled light n in slot order:
 *     0x080 (6, n)       except for the first: links the previous slot to n
 *     0x080 (5, n), (6, -1)
 *     __glExpLoadLightSource(n) if n is new or dirty
 *   then 0x080 (4, first), (10, count).
 *   __glExpLoadLightSource(n):
 *     0x080 (5, n); 0x0E5 x 3; 0x101 x 3; 0x102 x 3; 0x07F x 4; then
 *     spot light (local, cutoff != 180):
 *       0x080 (31, n), (29, scale), (30, start), (7, 2 + n); 0x086 x 32;
 *       0x084 x 3; 0x109 x 3
 *     otherwise:
 *       0x080 (31, -1); 0x109 x 3
 *   __glExpValidateMaterial(front dirty bits, back dirty bits), front then
 *   back:
 *     emission (bit 8), ambient (bit 1), diffuse (bit 2), specular (bit 4)
 *     tokens; shininess changed (bit 0x10): 0x080 (2, scale), (3, start),
 *     (7, 0), 0x074 x 128 (back: 24, 25, (7, 1)); CI indexes (bit 0x20):
 *     0x080 18..20 (back 21..23). Ends with 0x083 = 0.
 *   __glExpLoadLightPath, lighting on:
 *     0x10E 0.0; DATA 1. 0x0D4 1.0; DATA two-sided. 0x075 x 3.
 *     0x085 (6, local viewer), (3, ..), (4, ..), (5, ..). 0x083 = 0.
 *   __glExpLoadLightPath, lighting off:
 *     0x10E 0.0; DATA 0. 0x0D4 1.0; DATA 0.
 *   Spot lights are gated by a one-time ioctl 0x3AA7 (argument 4) per
 *   context (meaning unknown).
 */
#define HQ2_GL_SPEC_TABLE           0x074
#define HQ2_GL_AMBIENT_SUM          0x075
#define HQ2_GL_MAT_EMISSION_FRONT   0x076
#define HQ2_GL_MAT_EMISSION_BACK    0x077
#define HQ2_GL_MAT_AMBIENT_FRONT    0x078
#define HQ2_GL_MAT_AMBIENT_BACK     0x079
#define HQ2_GL_MAT_DIFFUSE_FRONT    0x07A
#define HQ2_GL_MAT_DIFFUSE_BACK     0x07B
#define HQ2_GL_MAT_SPECULAR_FRONT   0x07C
#define HQ2_GL_MAT_SPECULAR_BACK    0x07D
#define HQ2_GL_LIGHT_POSITION       0x07F
#define HQ2_GL_LIGHT_PARAM          0x080
#define HQ2_GL_COLOR_MATERIAL       0x081
#define HQ2_GL_LIGHT_DONE           0x083
#define HQ2_GL_SPOT_DIRECTION       0x084
#define HQ2_GL_LIGHT_MODEL          0x085
#define HQ2_GL_SPOT_TABLE           0x086
#define HQ2_GL_TWO_SIDED            0x0D4
#define HQ2_GL_LIGHT_AMBIENT        0x0E5
#define HQ2_GL_LIGHT_DIFFUSE        0x101
#define HQ2_GL_LIGHT_SPECULAR       0x102
#define HQ2_GL_ATTENUATION          0x109
#define HQ2_GL_LIGHTING             0x10E

/*
 * Other token seen from libglcore: octahedra (the default screen saver)
 * sends per object 0x037 x 16, 0x039 x 9, then TRIANGLES with {0x1982 x 3,
 * 0xA63 x 3} per vertex and no normals (it lights on the host).
 */

/*
 * ============================================================================
 * IRIS GL TOKENS (libgl.so, /usr/gfx/arch/IP12GR232, IRIX 6.5)
 * ============================================================================
 * IRIS GL uses the OpenGL lighting, matrix and vertex tokens above plus the
 * ones below. From traces of atlantis on IRIX 6.5.22, confirmed by rendering
 * them; the libgl.so emitters are not decompiled yet (inferred from traces).
 *
 * 0x005 HQ2_IGL_WRITEMASK                             wmpack / swapbuffers
 *     token      plane mask                          0x000FFF / 0xFFF000 in
 *                                                    12-bit double buffering
 * 0x008 HQ2_IGL_BUFFER -- draw buffer                 frontbuffer / backbuffer
 *     token      0
 *     token      buffer                              0/1
 * 0x035 HQ2_IGL_NORMAL                                n3f
 *     token x3   nx, ny, nz                          f32 (OpenGL uses 0x10D)
 * 0x030 HQ2_IGL_INDEX -- current colour index        color(i) (showmap)
 *     token      index           index 0x7030 (ITOF|C1)      integer
 *   Sent to the RE3 R iterator as index << 11 (R is 12.11, RE3.h); G and B
 *   are 0. Confirmed by rendering showmap's 4096 cells.
 * 0x036 HQ2_IGL_MATRIX -- mmode(MSINGLE) matrix       any matrix call
 *     token x16  m[0][0] .. m[3][3]                  f32, same order as 0x037
 *   The whole object-to-clip transform, multiplied on the host: libgl.so
 *   re-sends the full product after every matrix call (amesh sends 8 per
 *   frame: perspective, then each translate / rotate / scale folded in).
 *   It replaces projection * modelview until the next 0x037 / 0x038. amesh
 *   (IRIX 6.5.22 trace), confirmed by rendering it.
 * 0x041 HQ2_IGL_ENDPOLYGON                            endpolygon
 *     token      0
 *     then       LOADV | 0x065 = 0
 * 0x042 HQ2_IGL_PCLOS -- close a pmv/pdr polygon      pclos (gl_i_pclos)
 *     token      0
 *     then       LOADV | 0x065 = 0
 * 0x044 HQ2_IGL_PMV -- start a pmv/pdr polygon        pmv (gl_i_pmv2)
 *     token      0
 *     then       LOADV | 0x1AE = 0, then the point on 0x045
 * 0x045 HQ2_IGL_PDR -- polygon point                  pmv / pdr (gl_i_pdr)
 *     token x3   x, y, z         index 0x845 (V3) f32, 0x4845 (ITOF|V3) int
 *   The old move/draw polygon interface, also used by rectf / circf
 *   (gl_g_circf) and showmap (ITOF, 12-bit colour-index window): one
 *   polygon through the same routine as bgnpolygon (0x1AE).
 * 0x05B HQ2_IGL_MOVE -- pen up                        move (gl_i_move2)
 *     token      0
 *     then       the point on 0x05D
 * 0x05D HQ2_IGL_DRAW -- line to a point               draw (gl_i_draw)
 *     token x3   x, y, z         index 0x85D (V3) f32, ITOF forms for ints
 *   A line from the previous point (the move, or the last draw) to this
 *   one. gr_osview draws its outlines this way.
 * 0x066 HQ2_IGL_CMOV -- current character position    cmov (gl_c_cmov)
 *     token x3   x, y, z         index 0x866 (V3) f32
 *   Object coordinates, transformed like a vertex.
 * 0x04B HQ2_IGL_SWAPTMESH                            swaptmesh (gl_i_swaptmesh)
 *     token      0
 *   Inside bgntmesh (0x046, LOADV|0x047 ... 0x04A, the TRIANGLE_STRIP
 *   tokens): swaps the two vertices the mesh keeps, so the next vertex
 *   makes a triangle with them in the other order (fans and irregular
 *   meshes; Backseat Driver's road and terrain send one per few vertices).
 *   The emulator keeps one winding by flipping it per triangle and per
 *   swap (inferred; matters only with back-face culling).
 * 0x053 HQ2_IGL_SBOXF -- screen-aligned filled box  sboxf (gl_i_sboxf)
 *     token      x1                                  f32
 *     DATA       y1, x2, y2                          f32
 *   sboxfi (gl_i_sboxfi) sends integers on 0x4053 / 0x41DF (ITOF). The two
 *   corners are transformed and the axis-aligned box between them filled
 *   in the current colour. twilight draws its stars as two crossed boxes.
 * 0x069 / 0x06A / 0x06D HQ2_IGL_CHAR* -- a character bitmap at the cmov
 *   position, which then advances (gr_osview labels; IRIX 6.5.22 trace).
 *   The sender is not in libgl.so; the format is (inferred) from the glyph
 *   data, which decodes to recognisable italic letters:
 *     token x4   w << 16 | h                         glyph size
 *                xorig << 16 | yorig                 i16 each; bottom-left =
 *                                                    cpos - orig
 *                xmove << 16 | ymove                 i16 each, advance
 *                flags                               bit 0 clear: the first
 *                                                    16-bit row slot is
 *                                                    padding (odd h); high
 *                                                    half 0xFFFF in 0x069/6A
 *     token xN   rows, top row first, MSB = leftmost pixel, zero-padded:
 *       0x069  N = 9:  two 16-bit rows per word, low half first (h <= 17)
 *       0x06A  N = 17: the same (h <= 33)
 *       0x06D  N = 17: one 32-bit row per word (w <= 32)
 *   Drawn in the colour current at the cmov.
 * 0x068 HQ2_IGL_GETCPOS -- read it back               getcpos (gl_g_getcpos)
 *     token      0
 *     then       Finish, read 3 words of the mailbox (shram 0x4022): x, y
 *                (window pixels, stored to the caller as shorts), status
 *                (sign bit set = position invalid, caller's values left
 *                alone); then 0x0BD = 0. That x, y are window-relative
 *                is (inferred) from the IRIS GL man page.
 *   gr_osview lays out its labels from cmov + getcpos pairs.
 * All tokens above: libgl.so of /usr/gfx/arch/IP12GR232 (IRIX 6.5), FIFO
 * address = 0x42000 + index * 4 in its view of the board.
 * 0x07E HQ2_IGL_LCOLOR -- light colour (selected slot)  lmdef LCOLOR
 *     token x3   r, g, b                             f32: diffuse and specular
 *                                                    of the slot. IRIS GL sends
 *                                                    no 0x101 / 0x102; without
 *                                                    0x07E the lights
 *                                                    contribute nothing.
 * 0x09E HQ2_IGL_CLEAR                                 clear
 *     token      0                                   clear the window to the
 *                                                    current colour
 * 0x09F HQ2_IGL_ZCLEAR                                zclear (atlantis)
 *     token      Z plane mask                        0x00FFFFFF
 *   Clears Z to the far value GD_ZMAX = 0x7FFFFF (IRIS GL: "zclear sets the
 *   z-buffer to the maximum z value"). Z is signed 24-bit (RE3.h), so the
 *   word cannot be the value (0xFFFFFF = -1 would hide atlantis' fish under
 *   LEQUAL); reading it as a plane mask is (inferred).
 *   powerflip clears with czclear = 0x68A0 instead (Z = 0xFF800000 = ZMIN) and
 *   draws with zfunction(ZF_GEQUAL) = 0x024 value 6; Z is signed (RE3.h).
 * 0x0CF readback                                     (blast, per frame)
 *     token      0
 *     then       Finish, read 3 words from the mailbox (shram 0x4022..), then
 *                0x0BD = 0. What it returns is (unverified).
 * 0x0DB HQ2_IGL_LIGHTING                              lmbind
 *     token      0
 *     DATA       enable                              0/1 (like 0x10E); 0x0D4
 *                                                    follows
 * 0x113 HQ2_IGL_COLOR                                 c3f / c4f / cpack / ...
 *     token xN   colour                              any conversion (C3, C4,
 *                                                    ITOF); cpack = ITOF|CP
 *                                                    (0x6913), 0xAABBGGRR
 * 0x1A4 HQ2_IGL_BGNPOLYGON                            bgnpolygon
 *     token      0
 *     then       LOADV | 0x1AE = 0; vertices as 0xA63 (V3|USEV)
 *
 * GE parameters seen: 0x080 (8, 1), (9, 0), (17, 1), (28, 0) at lmbind and
 * (12, 0), (10, 1) per object (8, 9, 12, 17, 28 unknown); 0x080 18..23 with
 * (0, 127.5, 255) even in RGB mode; 0x085 (2, 0), (3, 0), (4, 1), (5, 0),
 * (6, 0), (7, 0).
 */
#define HQ2_IGL_WRITEMASK           0x005
#define HQ2_IGL_BUFFER              0x008
#define HQ2_IGL_NORMAL              0x035
#define HQ2_IGL_INDEX               0x030
#define HQ2_IGL_MATRIX              0x036
#define HQ2_IGL_ENDPOLYGON          0x041
#define HQ2_IGL_PCLOS               0x042
#define HQ2_IGL_PMV                 0x044
#define HQ2_IGL_PDR                 0x045
#define HQ2_IGL_MOVE                0x05B
#define HQ2_IGL_DRAW                0x05D
#define HQ2_IGL_CMOV                0x066
#define HQ2_IGL_GETCPOS             0x068
#define HQ2_IGL_SWAPTMESH           0x04B
#define HQ2_IGL_SBOXF               0x053
#define HQ2_IGL_CHAR16              0x069
#define HQ2_IGL_CHAR16_TALL         0x06A
#define HQ2_IGL_CHAR32              0x06D
#define HQ2_IGL_LCOLOR              0x07E
#define HQ2_IGL_CLEAR               0x09E
#define HQ2_IGL_ZCLEAR              0x09F
#define HQ2_IGL_LIGHTING            0x0DB
#define HQ2_IGL_COLOR               0x113
#define HQ2_IGL_BGNPOLYGON          0x1A4
#define HQ2_IGL_VR_POLYGON          0x1AE       /* LOADV routine for bgnpolygon */

/*
 * ============================================================================
 * XSGI 2D TOKENS (dyDDX gr2.so, IRIX 6.5)
 * ============================================================================
 * Sources: the DDX decompile (gr2_ddx/decomp, function names below), IRIX
 * 6.5.22 traces (xdm, 4Dwm, xterm, xsetmon) and the emulator's rendering.
 * Conventions for all 2D tokens: coordinates are X-style (y down from the
 * top of the screen) unless noted; boxes are X BoxRecs (x2, y2 exclusive);
 * a streaming command takes any number of records after one initiator and
 * ends with END_PRIMITIVE (0x1EA). MODE / COLOR_AUX / ROP select the target
 * planes and the ALU for everything that follows.
 *
 * ---- State ----
 *
 * 0x12C HQ2_2D_BEGIN                                  expInitHW
 *     token      0                                   first word expInitHW sends
 *                                                    (meaning unverified)
 * 0x135 HQ2_2D_COLOR_AUX                              expDrawSolidRects, ...
 *     token      aux-plane write mask                0 for colour-plane draws
 * 0x137 HQ2_2D_COLOR_OFF
 *     token      pixel for clear bits                opaque glyphs / stipples
 * 0x138 HQ2_2D_COLOR_ON
 *     token      pixel for set bits                  glyph / mono / stipple
 *                                                    foreground
 * 0x139 HQ2_2D_STIPPLE_AUX                            expOpStippledFillRects
 *     token      1 before opaque stippled fills, 0 after
 * 0x14B HQ2_2D_MODE                                   expDrawSolidRects, ...
 *     token      visual type (| 0x1000)              from nfbWindowPriv+0x14:
 *                                                    12 (4-bit overlay) -> 8,
 *                                                    COLOR_AUX = mask & 0xF;
 *                                                    13 (2-bit overlay, bits
 *                                                    1:0) -> 0xB, mask & 3;
 *                                                    14 (popup, bits 3:2) ->
 *                                                    0xB, mask & 0xC; other
 *                                                    (colour) -> the type,
 *                                                    COLOR_AUX 0. Bit 12
 *                                                    (unverified).
 *   expInitHW uses MODE 8 (overlay clear) and MODE 4 (colour clear).
 * 0x14C HQ2_2D_ROP
 *     token      fg pixel
 *     DATA       planemask & 0xFFFFFF
 *     DATA       alu                                 X11 GXclear..GXset = 0..15,
 *                                                    same as RE3 FUNC
 *     DATA       flag                                1 / 9 for aux draws; for
 *                                                    colour draws dbc buffer
 *                                                    * 8 (unverified)
 * 0x150 HQ2_2D_CID_WRITE                              expDrawCID, expInitHW
 *     token      (cid << 8) | 0xF000                 routes the following
 *                                                    SOLID_RECTs into the CID
 *                                                    planes; 0 = off
 * 0x151 HQ2_2D_BUF_SELECT -- image pixel format       expReadImage*, expDrawImage*
 *     token      format                              2 = 8-bit (4 per word),
 *                                                    1 = 16-bit (2 per word,
 *                                                    12-bit visuals), 0 =
 *                                                    32-bit (1 per word)
 *     DATA       first-pixel slot                    position of each row's
 *                                                    first pixel in its first
 *                                                    word (dst & 3 for 8-bit)
 *   Used for both transfer directions.
 * 0x155 HQ2_2D_SYNC                                   (unverified)
 *     token      0                                   raises FIN3
 * 0x1EA HQ2_2D_END_PRIMITIVE
 *     token      0                                   ends a streaming command
 *
 * ---- Fills ----
 *
 * 0x130 HQ2_2D_SOLID_RECT                             expDrawSolidRects, expInitHW
 *     token      0
 *     DATA x4    x1, y1, x2, y2                      per box, repeated
 *     then       END_PRIMITIVE
 *   expInitHW clears the screen with (0, 0, 1280, 1024).
 * 0x131 HQ2_2D_POLY_SPAN                              expSolidSpans
 *     token      0
 *     DATA x3    x, y, width                         per span, repeated;
 *                                                    padded with (1280, 1024, 1)
 * 0x13A HQ2_2D_TILE_SETUP                             expTileRects
 *     token      size                                0x40 for a 4x4 tile
 *     DATA       width, height, format, 0xD022       format: 2 = 8-bit (4 per
 *                                                    word), 1 = 16-bit, 0 =
 *                                                    24/32-bit, 3 = 1-bit
 *                                                    stipple; 0x40 and 0xD022
 *                                                    (unverified)
 * 0x13B..0x13E HQ2_2D_TILE_DATA -- tile words in 64/32/16/8-word chunks
 *     token xN   tile words                          row stride = ceil(w * bpp
 *                                                    / 32) words; MSB first
 *   Up to 0x1300 words per tile (expTileRects: words per row * rows <=
 *   0x1300), padded to a multiple of 8. 4Dwm draws minimized-window icon
 *   images this way: 85x67 8-bit TrueColor, 22 words per row, 1480 words,
 *   then TILE_RECT_ODD.
 * 0x141 HQ2_2D_TILE_RECT, one per box (0x142 HQ2_2D_TILE_RECT_ODD when the
 * tile width is not a whole number of words)
 *     token      0
 *     DATA       origin x, x1, origin y, y1, x2, y2
 *   In overlay modes (MODE 8 / 0xB) tile pixels are aux values (4Dwm menus).
 *   Seen at xdm start: a 4x4 tile of CI 0x10 filling the root window.
 * 0x13F HQ2_2D_STIPPLE_BOX_POW2, 0x140 HQ2_2D_STIPPLE_BOX, 0x15C
 * HQ2_2D_STIPPLE_RECT, one per box                    expStippledFillRects
 *     token      0
 *     DATA       origin x, x1, origin y, y1, x2, y2
 *   The stipple is loaded first with TILE_SETUP [size, w, h, 3, 0xD022] and
 *   TILE_DATA (one word per row for w <= 32, padded to 8 words). 0x13F when
 *   the width is a power of two, 0x140 otherwise. Set bits draw COLOR_ON,
 *   clear bits COLOR_OFF when STIPPLE_AUX = 1.
 * 0x15A HQ2_2D_STIPPLED_SPAN_A, 0x15B HQ2_2D_STIPPLED_SPAN_B
 *                                                    expStippledFillSpans
 *     token      0
 *     DATA x4    x, y, w, pattern                    per span, repeated
 *     then       END_PRIMITIVE
 *   The pattern is pre-rotated so its MSB is pixel x and repeats every 32
 *   pixels. 0x15B for 32-wide stipples (any w), 0x15A for other widths
 *   (w <= 32 per span). IRIX icon halftones (0xAAAAAAAA / 0x55555555).
 *
 * ---- Lines ----
 *
 * 0x12D HQ2_2D_LINE_SEG -- CapNotLast segments       expSegmentSS, expLineSS
 *     token      0
 *     DATA x4    x1, y1, x2, y2                      per segment; (x2, y2) is
 *                                                    NOT drawn; padding
 *                                                    x1 = x2 = 1280 or all 0
 *     then       END_PRIMITIVE
 *   expSegmentSS sends LINE_SEG when the GC cap style is CapNotLast and
 *   SEGMENTS (0x159) otherwise (0x163 / 0x164 when the DDX's board field is
 *   >= 5). It swaps a segment running towards -x / -y as (x2+1, y2+1) ->
 *   (x1+1, y1+1) so the same pixels are drawn: xterm's hollow cursor
 *   (103,497)-(110,497), (110,497)-(110,511), (104,511)-(111,511),
 *   (103,498)-(103,512), (0,0)-(0,0). expLineSS also uses it for clipped
 *   polyline pieces. 4Dwm's XOR move frame chains the four sides end to
 *   start, so every corner is drawn once.
 * 0x148 HQ2_2D_LINE_MODE
 *     token      mode                                0xA seen
 * 0x14A HQ2_2D_LINE_CLIP
 *     token      x1
 *     DATA       x2 - 1, y1, y2 - 1                  inclusive clip box
 * 0x12E HQ2_2D_POLYLINE (0x165 HQ2_2D_POLYLINE_ALT when the DDX's board field
 * is >= 5)
 *     token      0
 *     DATA x2    x, y                                per point, repeated
 * 0x159 HQ2_2D_SEGMENTS
 *     token      0
 *     DATA x4    x1, y1, x2, y2                      per segment; padded with
 *                                                    (1280, 1024) pairs
 *   SEGMENTS draws both endpoints. A polyline draws each segment up to but
 *   not including its end point, so joints are drawn once and the final
 *   point is not drawn: expLineSS appends an (x + 1, y) point when the cap
 *   style is not CapNotLast and the line is not closed.
 * 0x12F HQ2_2D_POINTS, 0x133 HQ2_2D_LINE, 0x162 HQ2_2D_FAST_LINE_AUX
 *     named from the DDX struct layout only (not seen in traces; unverified)
 *
 * ---- Text and bitmaps ----
 *
 * 0x143..0x146 HQ2_2D_GLYPH_8/16/32/64                expPolyGlyphBlt*, xterm text
 *     token      x
 *     DATA       y, width, rows
 *     DATA xN    8 / 16 / 32 / 64 bitmap words       N = the suffix; packing
 *                                                    as for MONO_IMAGE
 *   Drawn transparent in COLOR_ON; image-text background is a separate
 *   SOLID_RECT.
 * 0x15D..0x160 HQ2_2D_MONO_IMAGE_8/16/32/64           expDrawMonoImage,
 *                                                    expDrawOpaqueMonoImage
 *     token      x
 *     DATA       y, width, rows
 *     DATA xN    a fixed block by row-width class:   _8: 4 words, 2 x 16-bit
 *                                                    rows per word (first row
 *                                                    high); _16: 8 words, the
 *                                                    same; _32: 16 words, 1
 *                                                    row per word; _64: 32
 *                                                    words (unverified)
 *   MSB = leftmost. "rows" = valid rows; taller bitmaps are split. Both
 *   emitters send identical state, so how opaque bitmaps differ is
 *   (unverified).
 *
 * ---- Images and copies ----
 *
 * 0x154 HQ2_2D_COPY_RECT                              expCopyRect
 *     token      span pitch
 *     DATA       chunk size, src x, src y, width, height, dst x, dst y
 * 0x156 HQ2_2D_DRAW_IMAGE (0x157 HQ2_2D_DRAW_IMAGE_SMALL)   expDrawImage
 *     token      x
 *     DATA       y, width, rows, words per row, format (2), left skip (pixels)
 *     DATA xN    rows * words per row pixel words, then 0xDEADBEEF padding to
 *                the chunk size
 *   Format 2 = 8-bit, 4 per word, MSB first (others unverified).
 * 0x158 HQ2_2D_READ_IMAGE                             expReadImage, 12, 24
 *     before     *0x6B000 = 0 (clear FIN3); MODE / COLOR_AUX / ROP select
 *                the planes; BUF_SELECT [format, slot]
 *     token      words per row
 *     DATA       x, y, width, rows
 *     then       spin on version (0x6A040) bit 0 (FIN3); *0x6B000 = 0; read
 *                rows * words per row words from shram word 0x6C00 (board
 *                0x1B000)
 *   Rows are packed back to back, words per row = ceil((slot + w) / pixels
 *   per word), first pixel in the most significant bits. The DDX splits
 *   reads to fit the staging area (<= 0x1000 bytes 8-bit, 0x4C00 16-bit,
 *   0x1300 pixels 32-bit). No DMA: the microcode copies VRAM into shram
 *   (microcode side inferred).
 */
#define HQ2_2D_BEGIN                0x12C
#define HQ2_2D_LINE_SEG             0x12D
#define HQ2_2D_POLYLINE             0x12E
#define HQ2_2D_POINTS               0x12F
#define HQ2_2D_SOLID_RECT           0x130
#define HQ2_2D_POLY_SPAN            0x131
#define HQ2_2D_LINE                 0x133
#define HQ2_2D_COLOR_AUX            0x135
#define HQ2_2D_COLOR_OFF            0x137
#define HQ2_2D_COLOR_ON             0x138
#define HQ2_2D_STIPPLE_AUX          0x139
#define HQ2_2D_TILE_SETUP           0x13A
#define HQ2_2D_TILE_DATA_FIRST      0x13B
#define HQ2_2D_TILE_DATA_LAST       0x13E
#define HQ2_2D_STIPPLE_BOX_POW2     0x13F
#define HQ2_2D_STIPPLE_BOX          0x140
#define HQ2_2D_TILE_RECT            0x141
#define HQ2_2D_TILE_RECT_ODD        0x142
#define HQ2_2D_GLYPH_8              0x143
#define HQ2_2D_GLYPH_16             0x144
#define HQ2_2D_GLYPH_32             0x145
#define HQ2_2D_GLYPH_64             0x146
#define HQ2_2D_LINE_MODE            0x148
#define HQ2_2D_LINE_CLIP            0x14A
#define HQ2_2D_MODE                 0x14B
#define HQ2_2D_ROP                  0x14C
#define HQ2_2D_CID_WRITE            0x150
#define HQ2_2D_BUF_SELECT           0x151
#define HQ2_2D_COPY_RECT            0x154
#define HQ2_2D_SYNC                 0x155
#define HQ2_2D_DRAW_IMAGE           0x156
#define HQ2_2D_DRAW_IMAGE_SMALL     0x157
#define HQ2_2D_READ_IMAGE           0x158
#define HQ2_2D_SEGMENTS             0x159
#define HQ2_2D_STIPPLED_SPAN_A      0x15A
#define HQ2_2D_STIPPLED_SPAN_B      0x15B
#define HQ2_2D_STIPPLE_RECT         0x15C
#define HQ2_2D_MONO_IMAGE_8         0x15D
#define HQ2_2D_MONO_IMAGE_16        0x15E
#define HQ2_2D_MONO_IMAGE_32        0x15F
#define HQ2_2D_MONO_IMAGE_64        0x160
#define HQ2_2D_FAST_LINE_AUX        0x162
#define HQ2_2D_POLYLINE_ALT         0x165
#define HQ2_2D_END_PRIMITIVE        0x1EA

/*
 * ============================================================================
 * HQ2 GRAPHICS FIFO APERTURE STRUCTURE (struct gr2_hq2_fifo)
/*
 * ============================================================================
 * HQ2 Command FIFO & Register Views: Physical Bus vs libGLcore Virtual Mapping
 * ============================================================================
 *
 * NOTE ON HARDWARE FIFO LAYOUT VS LIBGLCORE VIRTUAL VIEW:
 *
 * 1. Physical Bus View:
 *    On the physical GIO bus, HQ2 exposes its command FIFO and registers
 *    starting at board base + 0x40000. Words written to the FIFO are
 *    indexed by token numbers:
 *        physical_offset = 0x40000 + (token * 4)
 *    Hardware tokens:
 *        - 0x000..0x12C: HQ2 Command Engine Setup, Control, Status & GL core
 *        - 0x12D..0x162: 2D primitives & raster operations (X server DDX)
 *        - 0x1E1..0x1F0: GE7 Context Save/Restore (VDMA context switching)
 *        - 0x263..0x31DF: 3D geometry, vertex, lighting, color, clear tokens
 *
 * 2. libGLcore User Virtual Aperture View:
 *    The IRIX kernel graphics driver (/dev/graphics) maps hardware pages into
 *    the user process at fixed virtual addresses with selective page mappings
 *    and an address shift/bias:
 *        - 0x00010000: HQ2 pixel readback FIFO (SHRAM readback)
 *        - 0x00040000: HQ2 Command FIFO RGB Aperture (HQ2_LIBGL_VIEW_BIAS = 0x2000)
 *        - 0x00050000: HQ2 Command FIFO Color-Index Aperture
 *        - 0x00060000: HQ2 / VC1 Status & Acknowledge Port
 *
 * WARNING:
 * The libGLcore user-space decompiler structures (struct gr2_hq2_fifo,
 * struct gr2_hq2_read_fifo, struct gr2_hq2_status_port, HQ2_FIFO, HQ2_FIFO_CI)
 * have been moved out of HQ2.h to `libglcore/include/glcore_fifo.h`.
 *
 * DO NOT re-add `struct gr2_hq2_fifo` to this file (HQ2.h).
 * Modifying or restructuring it here breaks decompilation of libGLcore.so!
 * HQ2.h documents the physical hardware bus registers and token protocol.
 * ============================================================================
 */

#endif /* _SGI_HQ2_H_ */
