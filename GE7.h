/*
 * GE7.h - Silicon Graphics GE7 Geometry Engine ASIC
 *
 * 128-bit VLIW Floating-Point Geometry and Lighting Processor.
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Generated from SGI IRIX PROM, IDE diagnostics (ge7diag.c, ge7dma.c, RAMtools.c,
 * hqdiag.c, dwnload.c, gu1_loc.h, gr2_loc.h), NetBSD sgimips, and hardware analysis.
 */

#ifndef _SGI_GE7_H_
#define _SGI_GE7_H_

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
 * 1. GE7 ASIC SPECIFICATIONS & SYSTEM ARCHITECTURE
 * ============================================================================
 *
 * Gate Count:      ~80,000 gates per chip
 * Operating Clock: 50 MHz
 * Peak Throughput: 32 MFLOPS peak per GE7 (256 MFLOPS on 8-GE Extreme)
 * Architecture:    128-bit VLIW (Very Long Instruction Word) SIMD/Vector Processor
 * Instruction Set: Custom Harvard-architecture microcode (64K microwords)
 * Internal State:  Stateful execution engine with internal Register File,
 *                  3 on-chip RAM blocks, 2 hardware math lookup ROMs,
 *                  arithmetic condition codes, and polygon assembly state machines.
 *
 * Parallel Scaling Across SGI Board Configurations:
 *   - GR2-XS / XS24: 1 GE7  (Indigo Entry)
 *   - GR2-XZ:        2 GE7  (Indigo2 / Indy Midrange)
 *   - GR2-Elan:      4 GE7  (Indy Elan / Indigo2 Elan)
 *   - GR2-Extreme:   8 GE7  (Indigo2 Extreme / Onyx)
 *
 * Hardware Data Flow:
 *   CPU (GIO Bus) ──► HQ2 (Command Engine / FIFO)
 *                      │
 *                      ├──► GE7 #0..#N (Geometry Pipeline: Round-Robin Token Dispatch)
 *                      │      │
 *                      │      ├── Matrix Transforms (ModelView & Projection)
 *                      │      ├── Lighting & Specular Shading Equations
 *                      │      ├── Frustum Clipping & Viewport Mapping
 *                      │      └── Primitive Assembly (QSAM, TSAM, VPSAM)
 *                      │
 *                      └──► RE3 #0..#1 (Raster Engines via Internal Bus)
 *                             └──► Framebuffer (VRAM) / Z-Buffer (DRAM)
 */

/*
 * ============================================================================
 * 2. GE7 GIO ADDRESS MAP & REGISTER WINDOWS
 * ============================================================================
 *
 * Each GE7 exposes a 1KB (256 x 32-bit words) register window on the GIO bus:
 *   Base: 0x068000, spacing: 0x400 bytes per engine
 *     GE0: 0x068000
 *     GE1: 0x068400
 *     GE2: 0x068800
 *     GE3: 0x068c00
 *     GE4: 0x069000
 *     GE5: 0x069400
 *     GE6: 0x069800
 *     GE7: 0x069c00
 */
/*
 * GE COUNT DETECTION (PROM Gr2HQ2RegInit, gr2_init.c:401-420; the kernel does
 * the same): for i = 1..7 the host writes ge[i].ram0[0] = 0x1f1f1f1f,
 * [31] = 0x2e2e2e2e, [63] = 0x3d3d3d3d, [95] = 0x4c4c4c4c,
 * [127] = 0x5b5b5b5b, then reads all five back. GEs = i + 1 for the highest i
 * that passes. So on a real board, windows of installed GEs behave as RAM at
 * those words, and windows past the installed count must NOT read the
 * patterns back. Extreme: ge[1..7] pass -> 8. XZ: ge[1] passes -> 2.
 * Elan: ge[1..3] pass -> 4.
 */
#define GE7_BASE_OFFSET             0x068000
#define GE7_WINDOW_SIZE             0x000400    /* 1KB per GE */
#define GE7_MAX_COUNT               8

/*
 * Special GE7 RAM0 Register Offsets (Word Indices 0..255)
 */
#define GE7_REG_VTX_X               0x00        /* Input: Vertex X coordinate / Color Red / Color Index */
#define GE7_REG_VTX_Y               0x01        /* Input: Vertex Y coordinate / Color Green */
#define GE7_REG_VTX_Z               0x02        /* Input: Vertex Z coordinate / Color Blue */
#define GE7_REG_VTX_W               0x03        /* Input: Vertex W coordinate / Color Alpha */

#define GE7_REG_COL_R               0x00        /* Input: Color Red */
#define GE7_REG_COL_G               0x01        /* Input: Color Green */
#define GE7_REG_COL_B               0x02        /* Input: Color Blue */
#define GE7_REG_COL_A               0x03        /* Input: Color Alpha */

/*
 * Word 0x3F (Byte offset 0x0FC from GE base): GE7 Chip Revision Register
 * Read by NetBSD (grtwo.c) and SGI diagnostics (hwinv.c) at 0x0680FC.
 */
#define GE7_REG_CHIP_REV            0x3f        /* Word index 63 */
#define GE7_REVISION_REG_ADDR       0x0680fc    /* Byte address: ge[0].ram0[0x3f] */
#define GE7_REVISION_MASK           0x000000f0  /* Revision number in bits [7:4] */
#define GE7_REVISION_SHIFT          4
/*
 * SOURCES DISAGREE on the GE7 revision:
 *   NetBSD / this define: ram0[0x3f] (0x680fc) bits 7:4.
 *   PROM Gr2ProbeChipRev (gr2_init.c:447-461) and kernel: write
 *     ge[0].ram0[0xFD] = 0, then GE7Rev = (ram0[0xFD] & 0xff) >> 5, i.e. bits
 *     7:5 of word 0xFD.
 * So word 0xFD is writable (RAM bank select, below) and its upper bits read
 * back the chip revision. Which of the two is the "real" revision register
 * is (unverified); a model should satisfy both.
 */

/*
 * Words 0xF8..0xFB: Microcode Upload Staging Registers
 * Used by Gr2DownloadGE7() to stage 128-bit microwords into GE7 holding registers.
 */
#define GE7_REG_UCODE_STAGE0        0xf8        /* Word 248: Microword bits [31:0]   (ucode[8..9]) */
#define GE7_REG_UCODE_STAGE1        0xf9        /* Word 249: Microword bits [63:32]  (ucode[6..7]) */
#define GE7_REG_UCODE_STAGE2        0xfa        /* Word 250: Microword bits [95:64]  (ucode[4..5]) */
#define GE7_REG_UCODE_STAGE3        0xfb        /* Word 251: Microword bits [127:96] (bits [102:96] verified) */

/*
 * GE7 MICROCODE LOAD PROTOCOL (PROM Gr2DownloadGE7 gr2_init.c:857-1011;
 * kernel gr2_init.c:711-824). All accesses go through GE #0's window plus
 * two HQ2 registers:
 *
 *   1. shram[0..511] = mcout_t.data[0..511] (CONSTMEM), then read back. The
 *      PROM only prints mismatches; the KERNEL FAILS the textport setup.
 *   2. Clear loop, i = 0..65535:
 *        hq.gepc = i; ram0[0xF8..0xFB] = 0; hq.ge7loaducode = 0.
 *      (About 390k GIO writes; it works around a ucode RAM init problem.)
 *   3. For each GE_RECORD (ucode[0..9], most-significant halfword first):
 *        hq.gepc      = address
 *        ram0[0xF8]   = ucode[8]:ucode[9]   microword bits  31:0
 *        ram0[0xF9]   = ucode[6]:ucode[7]   microword bits  63:32
 *        ram0[0xFA]   = ucode[4]:ucode[5]   microword bits  95:64
 *        ram0[0xFB]   = ucode[2]:ucode[3]   microword bits 127:96 (only
 *                                           102:96 are stored/checked)
 *        hq.ge7loaducode = ucode[0]:ucode[1]  (bits 159:128, stored in HQ2)
 *      The write to hq.ge7loaducode COMMITS the whole microword to GE
 *      microcode RAM at gepc.
 *   4. Verify, for each record:
 *        hq.gepc = address
 *        check hq.ge7loaducode & 0x03DFFFFF == (ucode[0]:ucode[1]) & 0x03DFFFFF
 *        check ram0[0xF8], [0xF9], [0xFA] (full 32 bits), ram0[0xFB] & 0x7f
 *      So a WRITE to hq.gepc READS the microword at that address back into
 *      the staging registers and hq.ge7loaducode. The PROM ignores GE errors
 *      (it always returns 1); the kernel fails on any mismatch.
 * GE microcode RAM depth: 64K words (GE7URAM_SIZE).
 */

/*
 * Word 0xFD (Byte offset 0x3F4): Internal RAM Bank Selector Register
 * Confirmed in SGI IDE diagnostics (RAMtools.c:1778-1836: rdram12).
 * Allows the host CPU to page internal RAM1 or RAM2 into the first 64 words of RAM0.
 */
#define GE7_REG_RAM_BANK_SEL        0xfd        /* Word 253: RAM Bank Select */
#define GE7_RAM_BANK_REG_ADDR       0x0683f4    /* Byte address: ge[0].ram0[0xfd] */

#define GE7_RAM_BANK_RAM0           0           /* Map RAM0 into window ram0[0..63] */
#define GE7_RAM_BANK_RAM1           1           /* Map internal RAM1 into window ram0[0..63] */
#define GE7_RAM_BANK_RAM2           2           /* Map internal RAM2 into window ram0[0..63] */

/*
 * ============================================================================
 * 3. GE7 ON-CHIP STORAGE & MEMORY HIERARCHY
 * ============================================================================
 *
 * Each GE7 contains four distinct memory structures:
 *
 * 1. RegFile (Internal Multi-Port Register File):
 *    - Zero-wait-state vector register file.
 *    - Dual read ports: Port A (selected by ucode[4]) and Port B (selected by ucode[5]).
 *    - Single write port: Destination selected by ucode[6] with strobe lines (0x9000).
 *    - Tested in SGI ge7diag.c (RegFile test).
 *
 * 2. RAM0 (256 x 32-bit words = 1 KB):
 *    - Primary on-chip data memory directly mapped onto the GIO bus.
 *    - Words 0..3: Operand staging for FIFO token primitives (vertices, normals, colors).
 *    - Words 0..63: General scratchpad / matrix accumulation buffer.
 *    - Words 0xf8..0xfb: Microcode staging registers.
 *
 * 3. RAM1 (64 x 32-bit words = 256 bytes):
 *    - High-speed internal scratchpad RAM for lighting calculations:
 *      stores light position vectors, ambient/diffuse/specular material coefficients,
 *      and normal attenuation parameters.
 *    - Paged into ram0[0..63] when ram0[GE7_REG_RAM_BANK_SEL] == GE7_RAM_BANK_RAM1.
 *
 * 4. RAM2 (64 x 32-bit words = 256 bytes):
 *    - High-speed internal scratchpad RAM for transform matrices and clipping:
 *      stores current ModelView matrix (16 floats), Projection matrix (16 floats),
 *      and 6 canonical frustum clipping plane equations.
 *    - Paged into ram0[0..63] when ram0[GE7_REG_RAM_BANK_SEL] == GE7_RAM_BANK_RAM2.
 */
#define GE7_RAM0_SIZE               256         /* 256 x 32-bit words */
#define GE7_RAM1_SIZE               64          /* 64 x 32-bit words */
#define GE7_RAM2_SIZE               64          /* 64 x 32-bit words */

struct gr2_ge7_win {
    gr2_reg32_t ram0[256];          /* 0x000..0x3fc: GE internal RAM0 window */
};

/*
 * ============================================================================
 * 4. SHARED DATA RAM (SHRAM) - 0x000000..0x01ffff (128 KB)
 * ============================================================================
 *
 * 32,768 x 32-bit words (128 KB) shared between CPU, HQ2, all GE7s, and RE3.
 * Physical chips: 4 x 8-bit external SRAMs (GE7_SRAM0..3).
 *
 * Detailed Memory Organization & Hardware Allocations:
 * ────────────────────────────────────────────────────────────────────────────
 * Offset (Bytes)  Word Index    Region Name & Purpose
 * ────────────────────────────────────────────────────────────────────────────
 * 0x00000..0x007ff 0x000..0x1ff CONSTMEM: 512 floating-point & integer math
 *                               constants loaded from ge7.bin (0.0, 1.0, PI, seeds).
 * 0x00c08          0x302        CX_SIZE_MAIN: Word count of primary context save
 *                               (read by gr2_kernel Gr2PcxSwap after token 0x1F0).
 * 0x00c0c          0x303        CX_OWNER: RRMrn offset (GE_HQMSAV id) of the context
 *                               whose main state is to be saved (HQ2.h
 *                               "KERNEL TOKENS").
 * 0x00c10          0x304        CX_SIZE_EXT: Word count of dynamic attribute state
 *                               (read by gr2_kernel Gr2PcxSwap).
 * 0x01000..0x01fff 0x400..0x7ff GE_STATUS & Diagnostic report return vectors.
 * 0x04000..0x04fff 0x1000..0x13ff DMAREGS: DMA shadow registers (diag_glob.h).
 * 0x010088..0x010097 0x4022..0x4025 READBACK MAILBOX (libglcore address 0x12088;
 *                               CORRECTED, see GR2.h): Hardware staging buffer for
 *                               OpenGL queries (__glExpGetColor, __glExpGetNormal,
 *                               __glExpGetIndex, __glExpGetRasterPosData).
 * 0x01fffc         0x7fff       TP_PROBE_ID: Textport / microcode probe flag.
 * ────────────────────────────────────────────────────────────────────────────
 */
#define GE7_SHRAM_SIZE_WORDS        32768
#define GE7_SHRAM_SIZE_BYTES        (32768 * 4)

/* Constants Memory (512 words loaded from ge7.bin) */
#define GE7_SHRAM_CONSTMEM          0x0000      /* Word 0x000: 512 constant floats */
#define GE7_SHRAM_CONSTMEM_COUNT    512

/* Kernel Context Switching Mailbox (gr2_kernel / gr2.c) */
#define GE7_SHRAM_CX_SIZE_MAIN      0x0302      /* Word 0x302 (byte 0x00c08): Primary context size */
#define GE7_SHRAM_CX_OWNER          0x0303      /* Word 0x303 (byte 0x00c0c): owner (RRMrn offset) of that state */
#define GE7_SHRAM_CX_SIZE_EXT       0x0304      /* Word 0x304 (byte 0x00c10): Extended state size */

/* Diagnostic and DMA Shadow Areas */
#define GE7_SHRAM_STATUS_BASE       0x0400      /* Word 0x400: Diagnostic return vector area */
#define GE7_SHRAM_DMAREGS_BASE      0x1000      /* Word 0x1000 (byte 0x04000): DMA shadow registers */

/* Hardware State Readback Mailbox (libGLcore / gr2_get.c, gr2_context.c) */
#define GE7_SHRAM_READBACK_BASE_ADDR 0x012088   /* Byte address of 4-word query return mailbox */
#define GE7_SHRAM_READBACK_WORD0    0x4822      /* Word 0x4822: Color R / Index / Normal X / RasterPos X */
#define GE7_SHRAM_READBACK_WORD1    0x4823      /* Word 0x4823: Color G / Normal Y / RasterPos Y */
#define GE7_SHRAM_READBACK_WORD2    0x4824      /* Word 0x4824: Color B / Normal Z / RasterPos Z */
#define GE7_SHRAM_READBACK_WORD3    0x4825      /* Word 0x4825: Color A / RasterPos W */

/* Microcode Activity State Flags written to shram[TP_PROBE_ID] */
#define TP_PROBE_ID                 0x7fff      /* Word 0x7fff (byte 0x01fffc): Ucode probe flag */
#define UCODE_NONE                  0           /* Microcode uninitialized or download in progress */
#define UCODE_TP                    1           /* Textport microcode active (2D console mode) */
#define UCODE_DIAG                  2           /* Diagnostics / 3D GL microcode active */

/*
 * Context Switching Buffer Sizes (gr2_kernel / Gr2AllocCXData):
 * When swapping contexts, gr2_kernel allocates discrete VDMA backup buffers:
 *   - Main Context:   base->shram[GE7_SHRAM_CX_SIZE_MAIN] words (dynamic)
 *   - Extended State 1: 0x12c0 bytes (4,800 bytes / 1,200 words) - Lighting & matrix stack
 *   - Extended State 2: 0x400 bytes (1,024 bytes / 256 words) - Entire GE7 RAM0 dump
 *   - Extended State 3: 0x400 bytes (1,024 bytes / 256 words) - Auxiliary hardware registers
 */
#define GE7_CX_EXT_LIGHT_MATRIX_SIZE 0x12c0     /* 4,800 bytes: Lighting and matrix stack buffer */
#define GE7_CX_EXT_RAM0_SIZE         0x0400     /* 1,024 bytes: Full 256-word RAM0 state */
#define GE7_CX_EXT_AUX_SIZE          0x0400     /* 1,024 bytes: Auxiliary state */

/*
 * ============================================================================
 * 5. GE7 INTERNAL LOOKUP TABLE ROMs
 * ============================================================================
 *
 * GE7 integrates two internal hardware lookup table ROMs to accelerate division
 * and square-root operations using Newton-Raphson iterations:
 *
 * 1. Inverse / Reciprocal Seed ROM (128 entries x 8 bits):
 *    Provides initial seed X0 for 1/D reciprocal calculation:
 *      X1 = X0 * (2 - D * X0)
 *
 * 2. Inverse Square Root Seed ROM (128 entries x 8 bits):
 *    Provides initial seed Y0 for 1/sqrt(S) normalization:
 *      Y1 = Y0 * (1.5 - 0.5 * S * Y0^2)
 *    Enables single-cycle vector normalizations in vertex lighting shaders.
 */
#define GE7_SEEDROM_SIZE            128
#define GE7_SQROM_SIZE              128

/*
 * ============================================================================
 * 6. 160-BIT VLIW MICROWORD FORMAT & INSTRUCTION DECODING
 * ============================================================================
 *
 * GE7 instructions are 160-bit VLIW microwords stored across 10 x uint16 fields
 * in MetaStep linker (.bin) format:
 *
 *  Bit Range   Field Name         Description
 *  ─────────   ──────────         ───────────
 *  [159:144]   ucode[0]           Sequencer Branch Target PC (13 bits: 0x0000..0x1fff)
 *  [143:128]   ucode[1]           Sequencer Flags / Branch Condition Selection
 *  [127:112]   ucode[2]           ALU Opcode (bits [117:112] = 6-bit opcode, see GE7_OP_*)
 *  [111:96]    ucode[3]           ALU Mode, Condition Flag Enable, SPF State Control
 *  [95:80]     ucode[4]           Source Port A (Register File index / Bus Mux A)
 *  [79:64]     ucode[5]           Source Port B (Register File index / Bus Mux B)
 *  [63:48]     ucode[6]           Destination Register Write Enable Strobes (0x9000, 0x5000)
 *  [47:32]     ucode[7]           Internal Bus / RE3 FIFO Output Routing / SHRAM Strobe
 *  [31:16]     ucode[8]           Immediate Constant / Secondary Control Flags
 *  [15:0]      ucode[9]           Operand Address Offset (bits [11:0] = 0..4095 RAM/CONSTMEM)
 *
 * Physical Storage Allocation:
 *   - Bits [102:0]   (103 bits): Staged into GE7 on-chip execution core via ram0[0xf8..0xfb].
 *   - Bits [153:128]  (26 bits): Stored in HQ2 sequencer dispatch core via hq.ge7loaducode.
 *   - External Board (GU1): 8 x 16-bit SRAMs (URAM0..7) provide 128-bit external bus storage.
 */
#define GE7_MAGIC                   0x966e
#define GE7_URAM_SIZE               (64 * 1024)

/*
 * GE_RECORD - CORRECTED (2026-09). The same record layout as HQ_RECORD
 * (HQ2.h): the microword starts at +4, and the stride is (20 + 6) & ~1 =
 * 26 bytes. The previous layout (count, flags, ucode at +6) was wrong.
 * Example, kernel gr2_tpucode.o GE image, first record:
 *   0000 0001 | 02b6 0000 0000 0000 0200 0048 0000 9000 0000 0000 | 0193
 *   addr  cnt   ucode[0..9]                                       trailer
 */
#pragma pack(push, 2)
typedef struct {
    uint16_t address;               /* +0: Microcode address (0xffff = end of records) */
    uint16_t count;                 /* +2: always 1 in known images */
    uint16_t ucode[10];             /* +4: 160-bit VLIW microword, MS halfword first */
    uint16_t trailer;               /* +24: present in the file, never loaded */
} GE_RECORD;
#pragma pack(pop)

/*
 * ============================================================================
 * 7. HARDWARE ALU OPCODES (enum ge7_alu_op)
 * ============================================================================
 *
 * Reverse-engineered from SGI ge7diag.c (opstr table).
 * Encoded directly in microword ucode[2], bits [117:112] (6-bit opcode: 0..62).
 */
enum ge7_alu_op {
    GE7_OP_NOP          = 0,        /* No operation */

    /* Floating-Point Arithmetic Unit (IEEE-754 Single Precision) */
    GE7_OP_FADD         = 3,        /* Floating-point add:          R = A + B */
    GE7_OP_FPASSA       = 4,        /* Float pass operand A:        R = A */
    GE7_OP_FNEGA        = 5,        /* Float negate operand A:      R = -A */
    GE7_OP_FPASSB       = 6,        /* Float pass operand B:        R = B */
    GE7_OP_FNEGB        = 7,        /* Float negate operand B:      R = -B */
    GE7_OP_FSUB         = 8,        /* Float subtract:              R = A - B */
    GE7_OP_FRSUB        = 9,        /* Float reverse subtract:      R = B - A */
    GE7_OP_FMIN         = 10,       /* Float minimum:               R = min(A, B) */
    GE7_OP_FMAX         = 11,       /* Float maximum:               R = max(A, B) */
    GE7_OP_FLOATA       = 12,       /* Integer to Float convert A:  R = (float)A */
    GE7_OP_FLOATB       = 13,       /* Integer to Float convert B:  R = (float)B */
    GE7_OP_FIXA         = 14,       /* Float to Integer convert A:  R = (int)round(A) */
    GE7_OP_FIXB         = 15,       /* Float to Integer convert B:  R = (int)round(B) */
    GE7_OP_FABSA        = 20,       /* Float absolute value:        R = |A| */
    GE7_OP_FABSB        = 22,       /* Float absolute value:        R = |B| */
    GE7_OP_FMINABS      = 30,       /* Float min absolute:          R = min(|A|, |B|) */
    GE7_OP_FMAXABS      = 31,       /* Float max absolute:          R = max(|A|, |B|) */

    /* Hardware Multiplier-Accumulator Unit */
    GE7_OP_IMPY         = 16,       /* Integer multiply:            R = (A * B) & 0xffffffff */
    GE7_OP_FMPY         = 17,       /* Floating-point multiply:     R = A * B */
    GE7_OP_MPASSA       = 18,       /* Multiply pass A:             R = A (multiplier bypass) */
    GE7_OP_MPASSB       = 19,       /* Multiply pass B:             R = B (multiplier bypass) */

    /* Bitwise Logic Unit */
    GE7_OP_NOTA         = 32,       /* Bitwise NOT A:               R = ~A */
    GE7_OP_AND          = 33,       /* Bitwise AND:                 R = A & B */
    GE7_OP_OR           = 34,       /* Bitwise OR:                  R = A | B */
    GE7_OP_XOR          = 35,       /* Bitwise XOR:                 R = A ^ B */
    GE7_OP_ANDNOTB      = 36,       /* Bitwise A AND NOT B:         R = A & ~B */
    GE7_OP_ANDNOTA      = 37,       /* Bitwise NOT A AND B:         R = ~A & B */
    GE7_OP_ORNOTB       = 38,       /* Bitwise A OR NOT B:          R = A | ~B */
    GE7_OP_ORNOTA       = 39,       /* Bitwise NOT A OR B:          R = ~A | B */

    /* 32-bit Integer Arithmetic Unit */
    GE7_OP_IADD         = 40,       /* Integer add:                 R = A + B */
    GE7_OP_ISUB         = 41,       /* Integer subtract:            R = A - B */
    GE7_OP_IRSUB        = 42,       /* Integer reverse subtract:    R = B - A */
    GE7_OP_IMIN         = 48,       /* Integer minimum:             R = min(A, B) */
    GE7_OP_IMINABS      = 49,       /* Integer min absolute:        R = min(|A|, |B|) */
    GE7_OP_IMAX         = 50,       /* Integer maximum:             R = max(A, B) */
    GE7_OP_IMAXABS      = 51,       /* Integer max absolute:        R = max(|A|, |B|) */
    GE7_OP_IPASSA       = 52,       /* Integer pass A:              R = A */
    GE7_OP_INEGA        = 53,       /* Integer negate A:            R = -A */
    GE7_OP_IABSA        = 54,       /* Integer absolute value A:    R = |A| */
    GE7_OP_IPASSB       = 55,       /* Integer pass B:              R = B */
    GE7_OP_INEGB        = 56,       /* Integer negate B:            R = -B */
    GE7_OP_IABSB        = 57,       /* Integer absolute value B:    R = |B| */

    /* Shifter & Barrel Shifter Unit */
    GE7_OP_SLRREG       = 44,       /* Shift logical right by reg:  R = A >> (B & 31) */
    GE7_OP_SARREG       = 45,       /* Shift arithmetic right reg:  R = (int32)A >> (B & 31) */
    GE7_OP_SLLREG       = 46,       /* Shift logical left by reg:   R = A << (B & 31) */
    GE7_OP_SLRBR        = 60,       /* Shift logical right barrel:  Single-cycle barrel shift */
    GE7_OP_SARBR        = 61,       /* Shift arithmetic right barrel: Single-cycle barrel shift */
    GE7_OP_SLLBR        = 62        /* Shift logical left barrel:   Single-cycle barrel shift */
};

/*
 * ============================================================================
 * 8. CONDITION CODES & SEQUENCER CONTROL
 * ============================================================================
 *
 * Evaluated by ucode[3] to direct conditional branches and subroutine returns:
 */
#define GE7_COND_ZERO               0x01        /* Zero flag: result == 0.0 or 0 */
#define GE7_COND_NEG                0x02        /* Negative flag: result < 0.0 (MSB set) */
#define GE7_COND_PASS               0x04        /* Comparison condition true (FMIN/FMAX/IMIN/IMAX) */

/* Multi-GE Synchronization & Finish Flags (signaled through HQ2_VERSION) */
#define GE7_FINISH_FLAG1            0x04        /* Signaled in HQ2_VERSION bit 2 */
#define GE7_FINISH_FLAG2            0x02        /* Signaled in HQ2_VERSION bit 1 */
#define GE7_FINISH_FLAG3            0x01        /* Signaled in HQ2_VERSION bit 0 */

/*
 * ============================================================================
 * 9. SURFACE & POLYGON FORMATTER (SPF) STATE MACHINES
 * ============================================================================
 *
 * Dedicated hardware state machines inside GE7 that manage primitive vertex
 * assembly, strip/fan decomposition, and viewport clipping:
 *
 * 1. QSAM (Quad Surface Attribute Manager):
 *    - Tracks 4-vertex sequencing (v0, v1, v2, v3).
 *    - Automatically decomposes quads into 2 triangles or packages quad packets for RE3.
 *
 * 2. TSAM (Triangle Surface Attribute Manager):
 *    - Tracks 3-vertex triangle topology.
 *    - Manages vertex reuse and winding order for GL_TRIANGLE_STRIP and GL_TRIANGLE_FAN.
 *
 * 3. VPSAM (Viewport / Vertex Processor State Machine):
 *    - Evaluates 6-plane frustum clipping outcodes against [-W, +W].
 *    - Triggers polygon clipping subroutines if any vertex falls outside the view volume.
 *    - Normalizes homogeneous coordinates via perspective divide (X/W, Y/W, Z/W).
 *    - Scales NDC coordinates to screen-space integer pixel boundaries.
 */
#define GE7_SPF_MODE_QSAM           0x01        /* Quad sequencing active */
#define GE7_SPF_MODE_TSAM           0x02        /* Triangle sequencing active */
#define GE7_SPF_MODE_VPSAM          0x04        /* Viewport clipping & scaling active */

/*
 * ============================================================================
 * 10. FIFO COMMAND TOKEN MODIFIER BITFIELDS
 * ============================================================================
 *
 * The same bits as HQ2.h DIAG_USEV .. DIAG_CONVC1 / HQ2_TOK_ITOF: they are
 * part of the FIFO word index (token = entry | flags), not of the data word.
 * See HQ2.h "HQ2 FIFO TOKENS: ADDRESSING AND ARGUMENT CONVENTIONS".
 */
#define GE_MOD_DATA                 0x0000      /* Raw 32-bit data word */
#define GE_MOD_USEV                 0x0200      /* Use vertex in current polygon assembly */
#define GE_MOD_LOADV                0x0400      /* Load vertex into staging register without drawing */
#define GE_MOD_CONVV3               0x0800      /* 3-component coord conversion (X, Y, Z, stuff W=1.0) */
#define GE_MOD_CONVV2               0x1000      /* 2-component coord conversion (X, Y, stuff Z=0.0, W=1.0) */
#define GE_MOD_CONVC3               0x1800      /* 3-component color conversion (R, G, B, stuff A=1.0) */
#define GE_MOD_CONVC4               0x2000      /* 4-component color conversion (R, G, B, A) */
#define GE_MOD_CONVCP               0x2800      /* Packed 32-bit RGBA unpack (4 x 8-bit -> 4 normalized floats) */
#define GE_MOD_CONVC1               0x3000      /* Single component color index (12-bit clamped float) */
#define GE_MOD_ITOF                 0x4000      /* Hardware automatic Integer-to-Float conversion */

/*
 * ============================================================================
 * 11. TYPICAL FLOW OF OPERATION & PIPELINE EXECUTION
 * ============================================================================
 *
 * This section details the complete hardware execution lifecycle from OpenGL /
 * IrisGL API calls down to pixel generation in the RE3 raster engines:
 *
 * ────────────────────────────────────────────────────────────────────────────
 * STEP 1: MATRICES, MATERIALS, LIGHTS & CLIPPING PLANES UPLOAD
 * ────────────────────────────────────────────────────────────────────────────
 * (Token numbers and argument layouts: HQ2.h "OPENGL TOKENS". Where the GE
 * keeps this state in its RAMs is not decoded (inferred below).)
 *
 * 1. Transform Matrices (ModelView & Projection):
 *    - libglcore does matrix stack and multiply on the host and loads the
 *      result: HQ2_GL_MODELVIEW (0x037), HQ2_GL_PROJECTION (0x038),
 *      HQ2_GL_TEXTURE_MATRIX (0x03A), 16 floats each, all written to the
 *      token itself; 0x037 is always followed by the 3x3 normal matrix
 *      (HQ2_GL_NORMAL_MATRIX 0x039, computed on the host). There are no
 *      push/pop/multiply tokens.
 *
 * 2. Material & Lighting Parameters:
 *    - glMaterial / glLight / glLightModel become the lighting tokens of HQ2.h
 *      "Lighting": material ports 0x076..0x07D, per-light ports 0x0E5, 0x101,
 *      0x102, 0x07F, 0x084, 0x109 for the slot selected through GE parameter
 *      pairs on 0x080, light-model pairs on 0x085, and 128/32-entry specular
 *      and spot tables (0x074, 0x086) computed on the host.
 *
 * 3. User Clipping Planes & Viewport Parameters:
 *    - Clip planes (eye space a, b, c, d): HQ2_GL_CLIP_PLANE (0x02F) and
 *      HQ2_GL_CLIP_PLANE_ENABLE (0x02E).
 *    - Viewport: HQ2_GL_VIEWPORT (0x03B) = 1.0; DATA x0, x1, y0, y1 (window
 *      coordinates, inclusive), zScale, zCenter.
 *
 * ────────────────────────────────────────────────────────────────────────────
 * STEP 2: NORMAL, COLOR & VERTEX STAGING (PROCESSING TRIGGER)
 * ────────────────────────────────────────────────────────────────────────────
 * 1. Latent Attribute Staging:
 *    - glNormal3f(nx, ny, nz) writes the 3 components to HQ2_GL_NORMAL (0x10D;
 *      IRIS GL n3f: 0x035). They become the current normal.
 *    - glColor* writes HQ2_GL_COLOR (0x182) with a conversion modifier: C3
 *      (0x1982), C4 (0x2182), ITOF for integer colours pre-scaled to 0..255;
 *      IRIS GL cpack uses 0x113 with ITOF|CP. Where the GE stages the colour
 *      (ram0[0..3]) is (inferred).
 *
 * 2. Vertex Coordinate Submission & Execution Trigger:
 *    - glVertex2f / 3f / 4f write the coordinates to HQ2_GL_VERTEX (0x063) with
 *      USEV and a conversion: 0x1263 (V2), 0xA63 (V3), 0x263 (4 words), all
 *      to the token itself; the vertex routine selected by the last LOADV
 *      (Begin) assembles the primitive.
 *    - In multi-GE systems (2 in XZ, 4 in Elan, 8 in Extreme), HQ2 distributes
 *      incoming vertices across GE7 engines in round-robin fashion or polygon batches.
 *    - WRITING THE FINAL COORDINATE (Z or W) ACTS AS THE HARDWARE TRIGGER:
 *      GE7 microcode immediately launches vertex transformation and lighting.
 *
 * ────────────────────────────────────────────────────────────────────────────
 * STEP 3: VERTEX TRANSFORMATION & LIGHTING EXECUTION (GE7 VLIW CORE)
 * ────────────────────────────────────────────────────────────────────────────
 * Once triggered, the GE7 128-bit VLIW processor executes four pipeline stages:
 *
 * 1. Object-to-Eye Coordinate Transformation:
 *    - Multiplies object-space vertex v_obj by ModelView matrix M_mv:
 *        v_eye = M_mv * v_obj
 *    - Executed using 4 parallel single-cycle FMPY + FADD instructions across
 *      the vector ALU and RegFile.
 *
 * 2. Normal Transformation & Normalization:
 *    - Multiplies object-space normal n_obj by inverse transpose matrix M_norm:
 *        n_eye = M_norm * n_obj
 *    - Normal vector is normalized to unit length (|n| = 1.0) using the internal
 *      SqRom seed lookup table and Newton-Raphson inverse square-root iterations:
 *        inv_len = 1.0 / sqrt(nx^2 + ny^2 + nz^2)
 *
 * 3. Lighting Equation Evaluation (Phong / Gouraud Shading):
 *    - Evaluates ambient, diffuse, and specular components for active light sources:
 *        I_diffuse  = max(0.0, n_eye . L_dir) * Mat_diffuse * Light_diffuse
 *        I_specular = (max(0.0, n_eye . H_dir) ^ shininess) * Mat_specular * Light_specular
 *    - Applies distance attenuation and spot cutoff.
 *    - Clamps final vertex color components to [0.0, 1.0] using FMIN / FMAX opcodes.
 *
 * 4. Eye-to-Clip Projection Transformation:
 *    - Multiplies eye-space vertex v_eye by Projection matrix M_proj:
 *        v_clip = M_proj * v_eye = (X_c, Y_c, Z_c, W_c)
 *
 * ────────────────────────────────────────────────────────────────────────────
 * STEP 4: PRIMITIVE ASSEMBLY, CLIPPING & VIEWPORT TRANSFORMATION
 * ────────────────────────────────────────────────────────────────────────────
 * 1. Primitive Assembly via SPF State Machines:
 *    - TSAM (Triangle Surface Attribute Manager) tracks 3-vertex sequences:
 *      * Manages alternating vertex swap rules for GL_TRIANGLE_STRIP.
 *      * Manages center-vertex pinning for GL_TRIANGLE_FAN.
 *    - QSAM (Quad Surface Attribute Manager) tracks 4-vertex sequences:
 *      * Automatically decomposes quads into 2 triangles or packages quad packets.
 *
 * 2. Frustum Clipping via VPSAM:
 *    - VPSAM evaluates canonical view volume clipping planes:
 *        -W_c <= X_c <= W_c,   -W_c <= Y_c <= W_c,   -W_c <= Z_c <= W_c
 *    - Generates a 6-bit clipping outcode per vertex:
 *      * Trivial Accept: If all vertices of the polygon have outcode == 0,
 *        the polygon is fully inside the frustum; clipping is bypassed entirely.
 *      * Trivial Reject: If the bitwise AND of all vertex outcodes != 0,
 *        the polygon lies completely outside a common plane; it is instantly discarded.
 *      * Partial Clip: If outcodes differ, GE7 jumps to its microcode clipping
 *        subroutine, computes edge-plane intersection parameters (t), interpolates
 *        colors and coordinates, and emits new clipped polygon vertices back to TSAM.
 *
 * 3. Perspective Division & Viewport Mapping:
 *    - For surviving vertices, GE7 computes W_inv = 1.0 / W_c using the internal
 *      SeedRom lookup table and Newton-Raphson reciprocal iteration.
 *    - Computes Normalized Device Coordinates (NDC):
 *        X_ndc = X_c * W_inv,   Y_ndc = Y_c * W_inv,   Z_ndc = Z_c * W_inv
 *    - Evaluates Viewport Transformation to screen pixel coordinates:
 *        X_screen = X_origin + (Width  / 2.0) * (X_ndc + 1.0)
 *        Y_screen = Y_origin + (Height / 2.0) * (Y_ndc + 1.0)
 *        Z_screen = Z_min    + (Depth  / 2.0) * (Z_ndc + 1.0)
 *
 * ────────────────────────────────────────────────────────────────────────────
 * STEP 5: TRIANGLE SETUP & RE3 RASTER ENGINE DISPATCH
 * ────────────────────────────────────────────────────────────────────────────
 * 1. Triangle Setup & Gradient Parameter Computation:
 *    - Before dispatching to rasterization, GE7 computes triangle setup coefficients:
 *      * Edge deltas: dX12, dY12, dX23, dY23, dX31, dY31
 *      * Reciprocal triangle area: 1.0 / Area
 *      * Screen-space parameter gradients (slopes):
 *          Depth slopes: dZ/dX, dZ/dY
 *          Color slopes: dR/dX, dR/dY, dG/dX, dG/dY, dB/dX, dB/dY, dA/dX, dA/dY
 *
 * 2. Packet Emission Across Internal Graphics Bus:
 *    - GE7 packages the vertices, edge equations, and slope gradients into a
 *      fixed-format hardware primitive packet.
 *    - Microword field ucode[7] (Bus / FIFO dispatch) bursts the packet across the
 *      50 MHz internal graphics bus directly into the RE3 input FIFO.
 *
 * 3. RE3 Dual-Engine Rasterization:
 *    - In dual-RE3 systems (GR2-Elan and Extreme):
 *      * RE3 Even (U20) rasterizes even screen scanlines (y = 0, 2, 4, ...).
 *      * RE3 Odd  (U16) rasterizes odd screen scanlines  (y = 1, 3, 5, ...).
 *    - RE3's 25-40 stage variable-depth pipeline performs:
 *      * Edge stepping along bounding trapezoids.
 *      * Span interpolation of Z, R, G, B (RE3 has no alpha iterator).
 *      * Z-buffer depth comparison against external DRAM banks.
 *      * Dithering and 16-ROP logic operations.
 *    - CORRECTED: earlier revisions listed "alpha testing" and alpha
 *      interpolation here. RE3 has neither; see GR2.h "BLENDING AND ALPHA
 *      TEST" (blending is done by the GE7 microcode, alpha test by the host).
 *      * Final pixel burst write into VRAM framebuffers for VC1 / DAC display scanout.
 */

/*
 * ============================================================================
 * 12. PHYSICAL BOARD TOPOLOGY (From SGI EXPRESS gu1_loc.h / gr2_loc.h)
 * ============================================================================
 *
 * Board Component Locations:
 *   - GE7 Microcode SRAMs: 8 x 16-bit chips (128-bit external bus [127:0]):
 *       URAM0 (U510/U51: [15:0]),   URAM1 (U17/U56: [31:16]),
 *       URAM2 (U511/U61: [47:32]),  URAM3 (U18/U66: [63:48]),
 *       URAM4 (U515/U67: [79:64]),  URAM5 (U22/U76: [95:80]),
 *       URAM6 (U513/U79: [111:96]), URAM7 (U25/U84: [127:112])
 *   - GE7 Shared Data SRAMs: 4 x 8-bit chips (32-bit bus [31:0]):
 *       SRAM0 (U516/U57: [7:0]),    SRAM1 (U517/U58: [15:8]),
 *       SRAM2 (U33/U59: [23:16]),   SRAM3 (U32/U60: [31:24])
 *   - HQ2 Microcode SRAMs: 3 x 8-bit chips (24-bit bus [23:0]):
 *       URAM0 (U34/U86: [7:0]),     URAM1 (U35/U87: [15:8]),
 *       URAM2 (U518/U88: [23:16])
 */

#endif /* _SGI_GE7_H_ */
