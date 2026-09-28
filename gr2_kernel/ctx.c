typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
__extension__ typedef signed long long int __int64_t;
__extension__ typedef unsigned long long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
__extension__ typedef long long int __quad_t;
__extension__ typedef unsigned long long int __u_quad_t;
__extension__ typedef long long int __intmax_t;
__extension__ typedef unsigned long long int __uintmax_t;
__extension__ typedef __uint64_t __dev_t;
__extension__ typedef unsigned int __uid_t;
__extension__ typedef unsigned int __gid_t;
__extension__ typedef unsigned long int __ino_t;
__extension__ typedef __uint64_t __ino64_t;
__extension__ typedef unsigned int __mode_t;
__extension__ typedef unsigned int __nlink_t;
__extension__ typedef long int __off_t;
__extension__ typedef __int64_t __off64_t;
__extension__ typedef int __pid_t;
__extension__ typedef struct { int __val[2]; } __fsid_t;
__extension__ typedef long int __clock_t;
__extension__ typedef unsigned long int __rlim_t;
__extension__ typedef __uint64_t __rlim64_t;
__extension__ typedef unsigned int __id_t;
__extension__ typedef long int __time_t;
__extension__ typedef unsigned int __useconds_t;
__extension__ typedef long int __suseconds_t;
__extension__ typedef __int64_t __suseconds64_t;
__extension__ typedef int __daddr_t;
__extension__ typedef int __key_t;
__extension__ typedef int __clockid_t;
__extension__ typedef void * __timer_t;
__extension__ typedef long int __blksize_t;
__extension__ typedef long int __blkcnt_t;
__extension__ typedef __int64_t __blkcnt64_t;
__extension__ typedef unsigned long int __fsblkcnt_t;
__extension__ typedef __uint64_t __fsblkcnt64_t;
__extension__ typedef unsigned long int __fsfilcnt_t;
__extension__ typedef __uint64_t __fsfilcnt64_t;
__extension__ typedef int __fsword_t;
__extension__ typedef int __ssize_t;
__extension__ typedef long int __syscall_slong_t;
__extension__ typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
__extension__ typedef int __intptr_t;
__extension__ typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
__extension__ typedef __int64_t __time64_t;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
typedef signed char int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
__extension__
typedef long long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
__extension__
typedef unsigned long long int uint_fast64_t;
typedef int intptr_t;
typedef unsigned int uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
#pragma GCC diagnostic pop
typedef union {
    volatile uint32_t w;
    volatile uint16_t h;
    volatile uint8_t b;
} gr2_reg32_t;
struct gr2_clock {
    gr2_reg32_t write;
};
struct gr2_bt457_dac {
    gr2_reg32_t addr;
    gr2_reg32_t paltram;
    gr2_reg32_t cmd2;
    gr2_reg32_t ovrlay;
    uint32_t pad[4];
};
struct gr2_hq2 {
    gr2_reg32_t attrjmp[16];
    gr2_reg32_t version;
    gr2_reg32_t numge;
    gr2_reg32_t fin1;
    gr2_reg32_t fin2;
    gr2_reg32_t dmasync;
    gr2_reg32_t fifo_full_timeout;
    gr2_reg32_t fifo_empty_timeout;
    gr2_reg32_t fifo_full;
    gr2_reg32_t fifo_empty;
    gr2_reg32_t ge7loaducode;
    gr2_reg32_t gedma;
    gr2_reg32_t hq_gepc;
    gr2_reg32_t gepc;
    gr2_reg32_t intr;
    gr2_reg32_t unstall;
    gr2_reg32_t mystery;
    gr2_reg32_t refresh;
    uint32_t pad[31];
    gr2_reg32_t fin3;
};
#pragma pack(push, 2)
typedef struct {
    uint16_t address;
    uint16_t count;
    uint16_t flags;
    uint16_t ucode[2];
} HQ_RECORD;
#pragma pack(pop)
struct gr2_ge7_win {
    gr2_reg32_t ram0[256];
};
#pragma pack(push, 2)
typedef struct {
    uint16_t address;
    uint16_t count;
    uint16_t flags;
    uint16_t ucode[10];
} GE_RECORD;
#pragma pack(pop)
enum ge7_alu_op {
    GE7_OP_NOP = 0,
    GE7_OP_FADD = 3,
    GE7_OP_FPASSA = 4,
    GE7_OP_FNEGA = 5,
    GE7_OP_FPASSB = 6,
    GE7_OP_FNEGB = 7,
    GE7_OP_FSUB = 8,
    GE7_OP_FRSUB = 9,
    GE7_OP_FMIN = 10,
    GE7_OP_FMAX = 11,
    GE7_OP_FLOATA = 12,
    GE7_OP_FLOATB = 13,
    GE7_OP_FIXA = 14,
    GE7_OP_FIXB = 15,
    GE7_OP_FABSA = 20,
    GE7_OP_FABSB = 22,
    GE7_OP_FMINABS = 30,
    GE7_OP_FMAXABS = 31,
    GE7_OP_IMPY = 16,
    GE7_OP_FMPY = 17,
    GE7_OP_MPASSA = 18,
    GE7_OP_MPASSB = 19,
    GE7_OP_NOTA = 32,
    GE7_OP_AND = 33,
    GE7_OP_OR = 34,
    GE7_OP_XOR = 35,
    GE7_OP_ANDNOTB = 36,
    GE7_OP_ANDNOTA = 37,
    GE7_OP_ORNOTB = 38,
    GE7_OP_ORNOTA = 39,
    GE7_OP_IADD = 40,
    GE7_OP_ISUB = 41,
    GE7_OP_IRSUB = 42,
    GE7_OP_IMIN = 48,
    GE7_OP_IMINABS = 49,
    GE7_OP_IMAX = 50,
    GE7_OP_IMAXABS = 51,
    GE7_OP_IPASSA = 52,
    GE7_OP_INEGA = 53,
    GE7_OP_IABSA = 54,
    GE7_OP_IPASSB = 55,
    GE7_OP_INEGB = 56,
    GE7_OP_IABSB = 57,
    GE7_OP_SLRREG = 44,
    GE7_OP_SARREG = 45,
    GE7_OP_SLLREG = 46,
    GE7_OP_SLRBR = 60,
    GE7_OP_SARBR = 61,
    GE7_OP_SLLBR = 62
};
struct gr2_vc1 {
    gr2_reg32_t cmd0;
    gr2_reg32_t cmd1;
    gr2_reg32_t cmd2;
    gr2_reg32_t testreg;
    gr2_reg32_t addrlo;
    gr2_reg32_t addrhi;
    gr2_reg32_t sysctl;
    uint32_t pad;
};
struct gr2_xmap5 {
    gr2_reg32_t misc;
    gr2_reg32_t mode;
    gr2_reg32_t clut;
    gr2_reg32_t crc;
    gr2_reg32_t addrlo;
    gr2_reg32_t addrhi;
    gr2_reg32_t bytecnt;
    gr2_reg32_t fifostatus;
};
struct gr2_bdvers {
    gr2_reg32_t rd0;
    gr2_reg32_t rd1;
    gr2_reg32_t rd2;
    gr2_reg32_t rd3;
    uint32_t pad[4];
};
struct gr2_re3_buffered {
    gr2_reg32_t pad0[4];
    gr2_reg32_t enabrgb;
    gr2_reg32_t bigendian;
    gr2_reg32_t func;
    gr2_reg32_t haddr;
    gr2_reg32_t nopup;
    gr2_reg32_t xyfrac;
    gr2_reg32_t rgb;
    gr2_reg32_t yx;
    gr2_reg32_t pupdata;
    gr2_reg32_t patl;
    gr2_reg32_t path;
    gr2_reg32_t dzi;
    gr2_reg32_t dzf;
    gr2_reg32_t dr;
    gr2_reg32_t dg;
    gr2_reg32_t db;
    gr2_reg32_t z;
    gr2_reg32_t r;
    gr2_reg32_t g;
    gr2_reg32_t b;
    gr2_reg32_t stip;
    gr2_reg32_t stipcount;
    gr2_reg32_t dx;
    gr2_reg32_t dy;
    gr2_reg32_t numpix;
    gr2_reg32_t x;
    gr2_reg32_t y;
    gr2_reg32_t ir;
};
struct gr2_re3_control {
    gr2_reg32_t rwdata;
    gr2_reg32_t pixmask;
    gr2_reg32_t auxmask;
    gr2_reg32_t widdata;
    gr2_reg32_t uauxdata;
    gr2_reg32_t rwmode;
    gr2_reg32_t readbuf;
    gr2_reg32_t pixtype;
    gr2_reg32_t aselect;
    gr2_reg32_t alignpat;
    gr2_reg32_t enabpat;
    gr2_reg32_t enabstip;
    gr2_reg32_t enabdith;
    gr2_reg32_t enabwid;
    gr2_reg32_t curwid;
    gr2_reg32_t depthfn;
    gr2_reg32_t repstip;
    gr2_reg32_t enablwid;
    gr2_reg32_t fboption;
    gr2_reg32_t topscan;
    gr2_reg32_t testmode;
    gr2_reg32_t testdata;
    gr2_reg32_t zboption;
    gr2_reg32_t xzoom;
    gr2_reg32_t upacmode;
    gr2_reg32_t ymin;
    gr2_reg32_t ymax;
    gr2_reg32_t xmin;
    gr2_reg32_t xmax;
    gr2_reg32_t colorcmp;
    gr2_reg32_t megoption;
    gr2_reg32_t pad3f;
};
struct gr2_re3_32bit {
    gr2_reg32_t rwdata32;
    gr2_reg32_t pad[31];
};
struct gr2_hw {
    volatile uint32_t shram[32768];
    uint32_t pad0[32768];
    volatile uint32_t fifo[32768];
    volatile uint32_t hqucode[8192];
    struct gr2_ge7_win ge[8];
    struct gr2_hq2 hq;
    uint32_t pad_hq[(0x6c000 - 0x6a000 - sizeof(struct gr2_hq2)) / 4];
    struct gr2_bdvers bdvers;
    struct gr2_clock clock;
    uint32_t pad1[7];
    struct gr2_vc1 vc1;
    uint32_t pad_cs3[8];
    uint32_t pad_cs4[8];
    struct gr2_bt457_dac reddac;
    struct gr2_bt457_dac grndac;
    struct gr2_bt457_dac bluedac;
    struct gr2_xmap5 xmap[5];
    struct gr2_xmap5 xmapall;
    gr2_reg32_t ab1;
    uint32_t pad4[7];
    gr2_reg32_t cc1;
    uint32_t pad5[7];
    struct gr2_re3_buffered re3_buf;
    struct gr2_re3_control  re3_ctrl;
    uint8_t pad6[0x300];
    struct gr2_re3_32bit    re3_32;
};
struct gfx_info {
    char name[16];
    char label[16];
    uint16_t xpmax;
    uint16_t ypmax;
    uint32_t length;
};
struct gr2_info {
    struct gfx_info gfx_info;
    uint8_t BoardType;
    uint8_t Bitplanes;
    uint8_t Auxplanes;
    uint8_t Wids;
    uint8_t Zbuffer;
    uint8_t MonitorType;
    uint8_t GfxBoardRev;
    uint8_t mc_rev;
    uint8_t HQ2Rev;
    uint8_t GE7Rev;
    uint8_t pad32;
    uint8_t VC1Rev;
    uint8_t VidBckEndRev;
    uint8_t pad35;
    uint8_t GEs;
    uint8_t pad37;
    uint8_t corona_rev;
    uint8_t fp_id;
    uint8_t pad3a[2];
};
struct gr2_wid_swap {
    uint32_t current_mode;
    uint32_t new_mode;
    int32_t swap_interval;
    void *rrm_buf;
    void *mgr_buf;
    uint8_t pending_type;
    uint8_t pad15[3];
};
struct vc1_shadow {
    struct gr2_hw *base;
    uint16_t cur_ep;
    uint8_t sysctl;
    uint8_t pad07;
    uint32_t shadow_locked;
    uint32_t num_pending_wids;
    struct gr2_wid_swap wid_swaps[32];
    void *pending_events;
    uint32_t cursor_moved;
    uint32_t cursor_on;
};
struct gr2_data {
    void *gfx_board;
    uint8_t pad04[0x40];
    uint32_t board_index;
    uint8_t pad48[4];
    uint32_t retrace_count;
    uint32_t retrace_ticks;
    uint32_t video_sync_flag;
    uint8_t pad58[0x20];
    struct gr2_info *info;
    struct gr2_hw *base;
    uint8_t pad80[4];
    int32_t cursor_x;
    int32_t cursor_y;
    int32_t hotspot_x;
    int32_t hotspot_y;
    int32_t cursor_x_adj;
    int32_t cursor_y_adj;
    struct vc1_shadow *vc1_shadow;
    uint8_t padA0[8];
    void *dma_buf;
    void *pcx_data;
    uint8_t padB0[0x90];
    uint32_t lock[2];
    uint8_t pad148[4];
    uint8_t fp_installed;
    uint8_t pad14d[3];
};
#pragma pack(push, 2)
typedef struct {
    uint16_t f_magic;
    uint16_t f_nscns;
    uint32_t f_hdrlen;
    uint32_t f_dataoff;
    uint32_t f_codeoff;
    uint32_t length;
    uint32_t f_nrecs;
    uint32_t rev;
    char version[24];
    char date[32];
    char user[12];
    char path[128];
    uint32_t data[512];
} mcout_t;
#pragma pack(pop)
extern u32 mc_rev_level;
extern u32 vdma_rev;
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
struct htp_bitmap {
    unsigned short *buf;
    short xsize, ysize;
    short xorig, yorig;
    short xmove, ymove;
    short sper;
};
void Gr2TpInit(struct gr2_hw *base, int *x, int *y);
void Gr2TpMapcolor(struct gr2_hw *base, int index, int red, int green, int blue);
void Gr2TpColor(struct gr2_hw *base, int color);
void Gr2TpSboxfi(struct gr2_hw *base, int x1, int y1, int x2, int y2);
void Gr2TpPnt2i(struct gr2_hw *base, int x, int y);
void Gr2TpDrawBitmap(struct gr2_hw *base, struct htp_bitmap *b);
void Gr2TpCmov2i(struct gr2_hw *base, int x, int y);
void Gr2TpUnblank(struct gr2_hw *base);
void *Gr2TpGetDesc(void);
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
struct RRM_ValidateClip {
    int rnid;
    int clipid;
    int xorg;
    int yorg;
    int xsize;
    int ysize;
    int numpieces;
    void *piecelist;
    int wid;
    int obscured;
    int widcheck;
    int changed;
    u32 hwi_mode;
    int fboffset;
};
struct gfx_gfx {
    void *gx_board;
    u32 gx_thd;
    struct gfx_gfx *gx_next;
    void *gx_fncs;
    struct gr2_data *gx_bdata;
    u32 gx_ddv;
    u32 gx_flags;
    u32 gx_sflags;
    u32 gx_tlbmask;
    void *gx_openrns;
    void *gx_boundrn;
};
struct gr2_pixeldma_args {
    void *buf;
    int32_t x0;
    int32_t y0;
    int32_t x1;
    int32_t y1;
    int32_t flags;
    int32_t stride;
    int32_t width;
    int32_t height;
    int32_t pixsize;
    int32_t pad28;
};
s64 Gr2PixelDma(struct gfx_gfx *gfxp, struct gr2_pixeldma_args *args);
s64 Gr2MCPixDma(struct gfx_gfx *gfxp, struct gr2_pixeldma_args *args);
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
