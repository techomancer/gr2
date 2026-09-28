/*
 * Master context source for m2c decompiler.
 * Preprocessed with: gcc -E -P -D_LANGUAGE_C ctx_source.h -o ctx.c
 */

typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;

#include "GR2.h"

/* External variables referenced in kernel modules */
extern u32 mc_rev_level;
extern u32 vdma_rev;

/* External library / kernel helper functions */
int badaddr(void *addr, int size);
void flushbus(void);
void us_delay(int usec);
int is_indyelan(void);
int is_fullhouse(void);
int gr2_base2index(struct gr2_hw *base);
int gr2_firstgfxslot(void);
int gr2_i2cProbe(struct gr2_hw *base);
void gr2_i2cSetup(int val);
int gr2_i2cPanelID(void *buf);
void gr2_i2cPanelOn(void);
void gr2_i2cPanelOff(void);
void *find_inventory(int a0, int a1, int a2, int a3, int a4);
void add_to_inventory(int a0, int a1, int a2, int a3, int a4);
void replace_in_inventory(void *inv, int a0, int a1, int a2, int a3, int a4);
void bzero(void *b, unsigned int len);
char *strncpy(char *dst, const char *src, unsigned int n);
int printf(const char *fmt, ...);

/* gr2_init module function prototypes */
void Gr2Reset(struct gr2_hw *base);
void _Gr2ProbeGEs(struct gr2_hw *base, struct gr2_info *info);
void _Gr2ProbeChipRev(struct gr2_hw *base, struct gr2_info *info);
void Gr2ProbeVC1(struct gr2_hw *base, struct gr2_info *info);
int gr2_fp_probe(struct gr2_info *info);
void gr2_fp_reinit(struct gr2_data *data);
int Gr2Probe(struct gr2_hw *base, struct gr2_info *info);
void Gr2StartClock(struct gr2_hw *base, struct gr2_info *info);
void _Gr2DacInit(struct gr2_bt457_dac *dac);
void Gr2LoadVC1SRAM(struct gr2_hw *base, uint16_t *data, uint32_t addr, uint32_t length);
void _Gr2XMAPInit1(struct gr2_hw *base);
void _Gr2XMAPInit2(struct gr2_hw *base);
void _Gr2XMAPInit3(struct gr2_hw *base);
void _Gr2RegisterInit(struct gr2_hw *base, struct gr2_info *info);
void initGr2Cursor(struct gr2_hw *base);
void _Gr2HQ2RegInit(struct gr2_hw *base, struct gr2_info *info);
int Gr2DownloadGE7(struct gr2_hw *base, GE_RECORD *ucode, int numge);
int Gr2DownloadHQ2(struct gr2_hw *base, HQ_RECORD *ucode);
void _Gr2Debug(struct gr2_hw *base);
void Gr2BlankScreen(struct gr2_hw *base, int blank);
int Gr2Init(struct gr2_hw *base, struct gr2_info *info);

/* Textport bitmap structure */
struct htp_bitmap {
    unsigned short *buf;
    short xsize, ysize;
    short xorig, yorig;
    short xmove, ymove;
    short sper;
};

/* gr2_tport module function prototypes */
void Gr2TpInit(struct gr2_hw *base, int *x, int *y);
void Gr2TpMapcolor(struct gr2_hw *base, int index, int red, int green, int blue);
void Gr2TpColor(struct gr2_hw *base, int color);
void Gr2TpSboxfi(struct gr2_hw *base, int x1, int y1, int x2, int y2);
void Gr2TpPnt2i(struct gr2_hw *base, int x, int y);
void Gr2TpDrawBitmap(struct gr2_hw *base, struct htp_bitmap *b);
void Gr2TpCmov2i(struct gr2_hw *base, int x, int y);
void Gr2TpUnblank(struct gr2_hw *base);
void *Gr2TpGetDesc(void);

/* gr2_retrace module kernel helpers & validation callbacks */
void *kern_malloc(u32 size);
void nested_spinlock(void *lock);
void nested_spinunlock(void *lock);
int splhi(void);
void splx(int s, ...);
void ev1_dropevent(void);
void rrmValidateBuffer(void *buf, int cond, u32 mode);
void rrmValidateMGRSwapBuf(void *board, void *mgr_buf, u32 mode);
void rrmValidateRetrace(void *event);
void rrmValidateVideoSync(struct gr2_data *data, u32 flag, u32 count);

/* IRIX gfx / RRM context structures */
struct RRM_ValidateClip {
    int rnid;                   /* 0x00 */
    int clipid;                 /* 0x04 */
    int xorg;                   /* 0x08 */
    int yorg;                   /* 0x0c */
    int xsize;                  /* 0x10 */
    int ysize;                  /* 0x14 */
    int numpieces;              /* 0x18 */
    void *piecelist;            /* 0x1c */
    int wid;                    /* 0x20 */
    int obscured;               /* 0x24 */
    int widcheck;               /* 0x28 */
    int changed;                /* 0x2c */
    u32 hwi_mode;               /* 0x30 */
    int fboffset;               /* 0x34 */
};

struct gfx_gfx {
    void *gx_board;             /* 0x00: struct gfx_board * */
    u32 gx_thd;                 /* 0x04: thread_handle_t */
    struct gfx_gfx *gx_next;    /* 0x08 */
    void *gx_fncs;              /* 0x0c: struct gfx_fncs * */
    struct gr2_data *gx_bdata;  /* 0x10: driver private data */
    u32 gx_ddv;                 /* 0x14: ddv_handle_t */
    u32 gx_flags;               /* 0x18 */
    u32 gx_sflags;              /* 0x1c */
    u32 gx_tlbmask;             /* 0x20: cpumask_t */
    void *gx_openrns;           /* 0x24 */
    void *gx_boundrn;           /* 0x28 */
};

/* Pixel DMA argument structure (ioctl 0x3AA2, 44 bytes / 0x2c) */
struct gr2_pixeldma_args {
    void    *buf;       /* 0x00: User buffer address */
    int32_t  x0;        /* 0x04: Screen X0 */
    int32_t  y0;        /* 0x08: Screen Y0 */
    int32_t  x1;        /* 0x0c: Screen X1 */
    int32_t  y1;        /* 0x10: Screen Y1 */
    int32_t  flags;     /* 0x14: DMA flags (stride, direction, etc.) */
    int32_t  stride;    /* 0x18: Line stride in bytes */
    int32_t  width;     /* 0x1c: Width in bytes */
    int32_t  height;    /* 0x20: Height in lines */
    int32_t  pixsize;   /* 0x24: Bytes per line / pixel size */
    int32_t  pad28;     /* 0x28: Pad to 0x2c bytes */
};

/* gr2_dma module function prototypes */
s64 Gr2PixelDma(struct gfx_gfx *gfxp, struct gr2_pixeldma_args *args);
s64 Gr2MCPixDma(struct gfx_gfx *gfxp, struct gr2_pixeldma_args *args);

/* gr2_retrace module function prototypes */
void Gr2RetraceHandler(struct gr2_data *data);
s32 Gr2SetDisplayMode(struct gfx_gfx *gfxp, s32 mode, u32 flags);
s32 Gr2SchedMgrSwapBuf(struct gfx_gfx *gfxp, s64 mgr_buf, s32 mode);
s32 Gr2SchedSwapBuf(struct gr2_data *data, s64 rrm_buf, s32 mode, s64 interval);
s32 Gr2UnSchedSwapBuf(struct gfx_gfx *gfxp, void *rn, s32 wid);
s32 Gr2SchedRetraceEvent(struct gr2_data *data, void *event);
void Gr2RetraceInit(struct gr2_data *data);
void Gr2FillVc1Shadow_Locked(struct gr2_data *data);
void Gr2FillVc1Shadow(struct gr2_data *data, s32 arg1);
void Gr2ReleaseVc1Shadow(struct gr2_data *data);
void Gr2RetraceCloseRN(struct gr2_data *data, s32 arg1);
s32 Gr2PositionCursor(struct gr2_data *data, u32 x, s32 y);
s32 Gr2SetCursorHotspot(struct gr2_data *data, u32 x, u32 y);
s32 Gr2SetGammaRamp(struct gr2_data *data, u8 *table, s64 count, s64 flags);

/* gr2 driver (struct gfx_fncs) prototypes */
s32 Gr2Start(struct gfx_gfx *gfxp);
s32 Gr2Initialize(struct gfx_gfx *gfxp);
s64 Gr2Download(struct gfx_gfx *gfxp, void *args);
s32 Gr2Attach(struct gfx_gfx *gfxp, void *arg1);
s32 Gr2Detach(struct gfx_gfx *gfxp);
s32 Gr2MapGfx(struct gfx_gfx *gfxp, u32 arg1, int arg2);
s32 Gr2UnMapGfx(struct gfx_gfx *gfxp);
s32 Gr2InvalTLB(struct gfx_gfx *gfxp);
s32 Gr2Info(struct gr2_data *data, void *arg1, u32 arg2, int *arg3);
s32 Gr2CreateDDRN(struct gr2_data *data, void *rn);
s32 Gr2DestroyDDRN(struct gr2_data *data, struct gfx_gfx *gfxp, void *rn);
s32 Gr2ValidateClip(struct gfx_gfx *gfxp, void *rn1, void *rn2, struct RRM_ValidateClip *clip);
s32 Gr2SetNullClip(struct RRM_ValidateClip *clip);
s32 Gr2PcxSwap(struct gr2_data *data, void *rn1, void *rn2, void *rn3);
s32 Gr2PcxSwitch(struct gr2_data *data, void *rn1, void *rn2);
s32 Gr2Suspend(struct gr2_data *data, struct gfx_gfx *gfxp, int arg2);
s32 Gr2Resume(struct gr2_data *data, struct gfx_gfx *gfxp, int arg2);
s32 Gr2Private(struct gfx_gfx *gfxp, void *rn, u32 cmd, void *arg, int *flags);



