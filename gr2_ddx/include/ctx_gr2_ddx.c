/*
 * ctx_gr2_ddx.c
 *
 * C context header for m2c decompiler on SGI GR2 dyDDX driver (gr2.so).
 * Defines standard X11 types, NFB/DDX types, and GR2 hardware registers.
 */

typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef float f32;
typedef double f64;
typedef unsigned int size_t;
typedef int bool;

#define NULL ((void *)0)
#define TRUE 1
#define FALSE 0

typedef unsigned long XID;
typedef unsigned long Mask;
typedef unsigned long Atom;
typedef unsigned long VisualID;
typedef unsigned long Time;

typedef struct _xPoint {
    s16 x, y;
} xPoint;

typedef struct _xRectangle {
    s16 x, y;
    u16 width, height;
} xRectangle;

typedef struct _xArc {
    s16 x, y;
    u16 width, height;
    s16 angle1, angle2;
} xArc;

typedef struct _xSegment {
    s16 x1, y1, x2, y2;
} xSegment;

typedef struct _Box {
    s16 x1, y1, x2, y2;
} BoxRec, *BoxPtr;

typedef struct _xColorItem {
    u32 pixel;
    u16 red, green, blue;
    u8 flags;
    u8 pad;
} xColorItem;

typedef struct _Region {
    BoxRec extents;
    BoxPtr data;
} RegionRec, *RegionPtr;

/* Forward declarations */
struct _Screen;
struct _Window;
struct _Drawable;
struct _GC;
struct _Colormap;
struct _Visual;

typedef struct _Screen *ScreenPtr;
typedef struct _Window *WindowPtr;
typedef struct _Drawable *DrawablePtr;
typedef struct _GC *GCPtr;
typedef struct _Colormap *ColormapPtr;
typedef struct _Visual *VisualPtr;

typedef union _DevUnion {
    void *ptr;
    long val;
    unsigned long uval;
    void (*fptr)(void);
} DevUnion;

/* Screen private structure for GR2 Express */
struct expScreenPrivate {
    void *base;                 /* 0x00: GR2 hardware base (0x1f000000 / mmap) */
    void *info;                 /* 0x04: Board info */
    u32 board_index;           /* 0x08 */
    u32 num_ge;                /* 0x0c */
    u32 num_re;                /* 0x10 */
    u32 zbuffer;               /* 0x14 */
    u32 flags;                 /* 0x18 */
    u32 pad[25];
};

/* Window private structure */
struct expWindowPrivate {
    u32 cid;                   /* Context ID / Window ID */
    u32 visual_id;
    u32 pad[14];
};

/* GC private structure */
struct expGCPrivate {
    u32 planemask;
    u32 alu;
    u32 fg_pixel;
    u32 bg_pixel;
    u32 fill_style;
    u32 pad[11];
};
