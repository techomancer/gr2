#ifndef __GLCORE_TYPES_H__
#define __GLCORE_TYPES_H__

/* Primitive integer and floating point types */
typedef signed char         s8;
typedef unsigned char       u8;
typedef signed short        s16;
typedef unsigned short      u16;
typedef signed int          s32;
typedef unsigned int        u32;
typedef signed long long    s64;
typedef unsigned long long  u64;
typedef float               f32;
typedef double              f64;
typedef unsigned int        size_t;

/* Standard OpenGL 1.1 types and enums */
#include "gl_enums.h"
typedef unsigned char       GLboolean;
typedef unsigned int        GLbitfield;
typedef signed char         GLbyte;
typedef short               GLshort;
typedef int                 GLint;
typedef int                 GLsizei;
typedef unsigned char       GLubyte;
typedef unsigned short      GLushort;
typedef unsigned int        GLuint;
typedef float               GLfloat;
typedef float               GLclampf;
typedef double              GLdouble;
typedef double              GLclampd;
typedef void                GLvoid;

/* SGI Hardware headers */
#include "GR2.h"
#include "HQ2.h"
#include "GE7.h"
#include "RE3.h"
#include "glcore_fifo.h"

/* Forward declarations */
struct __GLcontextRec;
typedef struct __GLcontextRec __GLcontext;
struct __GLattributeRec;
typedef struct __GLattributeRec __GLattribute;

/* OpenGL Begin/End Execution State */
typedef enum __GLbeginModeEnum {
    __GL_NOT_IN_BEGIN   = 0,
    __GL_IN_BEGIN       = 1,
    __GL_NEED_VALIDATE  = 2
} __GLbeginMode;

/* Basic geometric structures */
typedef struct __GLcoordRec {
    GLfloat x, y, z, w;
} __GLcoord;

typedef struct __GLcolorRec {
    GLfloat r, g, b, a;
} __GLcolor;

struct __GLmatrixRec;
typedef struct __GLmatrixRec __GLmatrix;

struct __GLmatrixRec {
    GLfloat matrix[4][4];       /* 0x00 - 0x3F (64 bytes) */
    GLenum  matrixType;         /* 0x40 */
    GLshort width, height;      /* 0x44, 0x46 */
    void (*xf2)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m); /* 0x48 */
    void (*xf3)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m); /* 0x4C */
    void (*xf4)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m); /* 0x50 */
    char pad[4];                /* 0x54 - 0x57 */
};

typedef struct __GLtransformRec {
    __GLmatrix matrix;             /* 0x00 - 0x57 (88 bytes) */
    __GLmatrix inverseTranspose;   /* 0x58 - 0xAF (88 bytes) */
    __GLmatrix mvp;                /* 0xB0 - 0x107 (88 bytes) */
    GLuint sequence;               /* 0x108 */
    GLboolean updateInverse;       /* 0x10C */
    char pad[3];
    GLfloat rescaleFactor;         /* 0x110 */
} __GLtransform;

/* Vertex structure (__GLvertexRec: 192 bytes = 0xC0) */
typedef struct __GLvertexRec {
    /* 0x00 */ GLuint                   flagBits;           /* 0x00 */
    /* 0x04 */ GLuint                   pad4;               /* 0x04 */
    /* 0x08 */ void                     (*validate)(struct __GLcontextRec *gc, struct __GLvertexRec *v); /* 0x08 */
    /* 0x0C */ GLuint                   pad0C;              /* 0x0C */
    /* 0x10 */ __GLcoord                obj;                /* 0x10 */
    /* 0x20 */ __GLcoord                normal;             /* 0x20 */
    /* 0x30 */ __GLcoord                texture[1];         /* 0x30 */
    /* 0x40 */ char                     pad40[0x20];        /* 0x40 */
    /* 0x60 */ __GLcoord                eye;                /* 0x60 */
    /* 0x70 */ __GLcoord                clip;               /* 0x70 */
    /* 0x80 */ __GLcoord                window;             /* 0x80 */
    /* 0x90 */ __GLcolor                colors[2];          /* 0x90 */
    /* 0xB0 */ char                     padB0[0x10];        /* 0xB0 */
} __GLvertex;


/* Operating System / Window System Interfaces */
typedef struct __GLimportsRec {
    void *(*malloc)(__GLcontext *gc, size_t size);
    void *(*calloc)(__GLcontext *gc, size_t numElem, size_t elemSize);
    void *(*realloc)(__GLcontext *gc, void *oldAddr, size_t newSize);
    void (*free)(__GLcontext *gc, void *addr);
    void (*warning)(__GLcontext *gc, char *fmt);
    void (*fatal)(__GLcontext *gc, char *fmt);
    char *(*getenv)(__GLcontext *gc, const char *var);
    int (*atoi)(__GLcontext *gc, const char *str);
    int (*sprintf)(__GLcontext *gc, char *str, const char *fmt, ...);
    void *(*fopen)(__GLcontext *gc, const char *path, const char *mode);
    int (*fclose)(__GLcontext *gc, void *stream);
    int (*fprintf)(__GLcontext *gc, void *stream, const char *fmt, ...);
    void *(*getDrawablePrivate)(__GLcontext *gc);
    void *wscx;
    void *other;
    char pad[16];
} __GLimports;

typedef struct __GLexportsRec {
    GLboolean (*destroyContext)(__GLcontext *gc);
    GLboolean (*loseCurrent)(__GLcontext *gc);
    GLboolean (*makeCurrent)(__GLcontext *gc);
    GLboolean (*shareContext)(__GLcontext *gc, __GLcontext *gcShare);
    GLboolean (*copyContext)(__GLcontext *dst, const __GLcontext *src, GLuint mask);
    GLboolean (*forceCurrent)(__GLcontext *gc);
    GLboolean (*notifyResize)(__GLcontext *gc);
    void (*notifyDestroy)(__GLcontext *gc);
    void (*notifySwapBuffers)(__GLcontext *gc);
    void *(*dispatchExec)(__GLcontext *gc);
    void (*beginDispatchOverride)(__GLcontext *gc);
    void (*endDispatchOverride)(__GLcontext *gc);
    char pad[24];
} __GLexports;

/* Point state */
typedef struct __GLpointStateRec {
    GLfloat requestedSize;              /* 0x00 */
    GLfloat smoothSize;                 /* 0x04 */
    GLint   aliasedSize;                /* 0x08 */
} __GLpointState;

/* Line state */
typedef struct __GLlineStateRec {
    GLfloat  requestedWidth;            /* 0x00 */
    GLfloat  smoothWidth;               /* 0x04 */
    GLint    aliasedWidth;              /* 0x08 */
    GLushort stipple;                   /* 0x0C */
    GLshort  stippleRepeat;             /* 0x0E */
} __GLlineState;

/* Polygon state */
typedef struct __GLpolygonStateRec {
    GLenum   frontMode;                 /* 0x00 */
    GLenum   backMode;                  /* 0x04 */
    GLenum   cull;                      /* 0x08 */
    GLenum   frontFaceDirection;        /* 0x0C */
    GLfloat  factor;                    /* 0x10 */
    GLfloat  units;                     /* 0x14 */
    GLfloat  mask;                      /* 0x18 */
} __GLpolygonState;

/* Polygon stipple state */
typedef struct __GLpolygonStippleStateRec {
    GLubyte stipple[128];               /* 128 bytes = 0x80 */
} __GLpolygonStippleState;

/* Pixel state */
typedef struct __GLpixelStateRec {
    char pad[680];                      /* 680 bytes = 0x2A8 */
} __GLpixelState;

/* Material state */
typedef struct __GLmaterialStateRec {
    __GLcolor ambient;                  /* 0x00 (16 bytes) */
    __GLcolor diffuse;                  /* 0x10 (16 bytes) */
    __GLcolor specular;                 /* 0x20 (16 bytes) */
    __GLcolor emissive;                 /* 0x30 (16 bytes) */
    GLfloat   specularExponent;         /* 0x40 */
    GLfloat   cmapa, cmaps, cmapd;      /* 0x44 (12 bytes) */
} __GLmaterialState;

/* Light model state */
typedef struct __GLlightModelStateRec {
    __GLcolor ambient;                  /* 0x00 */
    GLboolean localViewer;              /* 0x10 */
    GLboolean twoSided;                 /* 0x11 */
    char      pad[2];                   /* 0x12 */
} __GLlightModelState;

/* Light source state (0x74 bytes each) */
typedef struct __GLlightSourceStateRec {
    __GLcolor ambient;                  /* 0x00 */
    __GLcolor diffuse;                  /* 0x10 */
    __GLcolor specular;                 /* 0x20 */
    __GLcoord position;                 /* 0x30 */
    __GLcoord positionEye;              /* 0x40 */
    __GLcoord direction;                /* 0x50 */
    GLfloat   spotLightExponent;        /* 0x60 */
    GLfloat   spotLightCutOffAngle;     /* 0x64 */
    GLfloat   constantAttenuation;      /* 0x68 */
    GLfloat   linearAttenuation;        /* 0x6C */
    GLfloat   quadraticAttenuation;     /* 0x70 */
} __GLlightSourceState;

/* Light state */
typedef struct __GLlightStateRec {
    GLenum               colorMaterialFace;  /* 0x00 */
    GLenum               colorMaterialParam; /* 0x04 */
    GLenum               shadingModel;       /* 0x08 */
    __GLlightModelState  model;              /* 0x0C */
    __GLmaterialState    front;              /* 0x20 */
    __GLmaterialState    back;               /* 0x70 */
    __GLlightSourceState *source;            /* 0xC0 */
} __GLlightState;

/* Fog state */
typedef struct __GLfogStateRec {
    GLenum    mode;                     /* 0x00 */
    __GLcolor color;                    /* 0x04 */
    GLfloat   density;                  /* 0x14 */
    GLfloat   start;                    /* 0x18 */
    GLfloat   end;                      /* 0x1C */
    GLfloat   oneOverEMinusS;           /* 0x20 */
    GLfloat   index;                    /* 0x24 */
} __GLfogState;

/* Depth buffer state */
typedef struct __GLdepthStateRec {
    GLenum    testFunc;                 /* 0x00 */
    GLboolean writeEnable;              /* 0x04 */
    char      pad[3];                   /* 0x05 */
    GLdouble  clear;                    /* 0x08 */
} __GLdepthState;

/* Accumulation buffer state */
typedef struct __GLaccumStateRec {
    __GLcolor clear;                    /* 0x00 */
} __GLaccumState;

/* Stencil state */
typedef struct __GLstencilStateRec {
    GLenum  testFunc;                   /* 0x00 */
    GLshort clear;                      /* 0x04 */
    GLshort reference;                  /* 0x06 */
    GLshort mask;                       /* 0x08 */
    GLshort writeMask;                  /* 0x0A */
    GLenum  fail;                       /* 0x0C */
    GLenum  depthFail;                  /* 0x10 */
    GLenum  depthPass;                  /* 0x14 */
} __GLstencilState;

/* Viewport state */
typedef struct __GLviewportRec {
    GLint    x, y;                      /* 0x00, 0x04 */
    GLsizei  width, height;             /* 0x08, 0x0C */
    GLdouble zNear, zFar;               /* 0x10, 0x18 */
    GLfloat  xScale, xCenter;           /* 0x20, 0x24 */
    GLfloat  yScale, yCenter;           /* 0x28, 0x2C */
    GLfloat  zScale, zCenter;           /* 0x30, 0x34 */
} __GLviewport;

/* Transform state */
typedef struct __GLtransformStateRec {
    GLenum    matrixMode;               /* 0x00 */
    __GLcoord *eyeClipPlanes;           /* 0x04 */
    char      pad[8];                   /* 0x08 */
} __GLtransformState;

/* Enable state */
typedef struct __GLenableStateRec {
    GLuint general;                     /* 0x00 (offset 0x6A0 in gc) */
    GLuint texture;                     /* 0x04 (offset 0x6A4 in gc) */
    GLuint lights;                      /* 0x08 (offset 0x6A8 in gc) */
    GLuint clipPlanes;                  /* 0x0C (offset 0x6AC in gc) */
    GLuint pixelPath;                   /* 0x10 (offset 0x6B0 in gc) */
    GLuint eval;                        /* 0x14 (offset 0x6B4 in gc) */
} __GLenableState;

/* Raster state machine (76 bytes = 0x4C) */
typedef struct __GLrasterStateRec {
    GLenum    alphaFunction;            /* 0x00 (offset 1720 / 0x6B8 in gc) */
    GLclampf  alphaReference;           /* 0x04 (offset 1724 / 0x6BC in gc) */
    GLenum    blendSrc;                 /* 0x08 (offset 1728 / 0x6C0 in gc) */
    GLenum    blendDst;                 /* 0x0C (offset 1732 / 0x6C4 in gc) */
    __GLcolor blendColor;               /* 0x10 (offset 1736 / 0x6C8 in gc) */
    GLenum    blendMode;                /* 0x20 (offset 1752 / 0x6D8 in gc) */
    GLenum    logicOp;                  /* 0x24 (offset 1756 / 0x6DC in gc) */
    __GLcolor clear;                    /* 0x28 (offset 1760 / 0x6E0 in gc) */
    GLfloat   clearIndex;               /* 0x38 (offset 1776 / 0x6F0 in gc) */
    GLint     writeMask;                /* 0x3C (offset 1780 / 0x6F4 in gc) */
    GLboolean rMask, gMask, bMask, aMask; /* 0x40 (offset 1784 / 0x6F8 in gc) */
    GLenum    drawBuffer;               /* 0x44 (offset 1788 / 0x6FC in gc) */
    GLenum    drawBufferReturn;         /* 0x48 (offset 1792 / 0x700 in gc) */
} __GLrasterState;


/* Hint state */
typedef struct __GLhintStateRec {
    GLenum perspectiveCorrection;       /* 0x00 (offset 0x704 in gc) */
    GLenum pointSmooth;                 /* 0x04 (offset 0x708 in gc) */
    GLenum lineSmooth;                  /* 0x08 (offset 0x70C in gc) */
    GLenum polygonSmooth;               /* 0x0C (offset 0x710 in gc) */
    GLenum fog;                         /* 0x10 (offset 0x714 in gc) */
    GLenum textureBuffer;               /* 0x14 (offset 0x718 in gc) */
    GLenum generateMipmap;              /* 0x18 (offset 0x71C in gc) */
} __GLhintState;

/* Evaluator state */
typedef struct __GLevaluatorStateRec {
    char pad[48];                       /* 0x00 (offset 0x720 in gc) */
} __GLevaluatorState;

/* Display list state */
typedef struct __GLdlistStateRec {
    GLuint listBase;                    /* 0x00 (offset 0x750 in gc) */
} __GLdlistState;

/* Texture state */
typedef struct __GLtextureStateRec {
    char pad[536];                      /* 0x00 (offset 0x754 in gc) */
} __GLtextureState;

/* Scissor state */
typedef struct __GLscissorRec {
    GLint   scissorX;                   /* 0x00 (offset 0x96C in gc) */
    GLint   scissorY;                   /* 0x04 (offset 0x970 in gc) */
    GLsizei scissorWidth;               /* 0x08 (offset 0x974 in gc) */
    GLsizei scissorHeight;              /* 0x0C (offset 0x978 in gc) */
} __GLscissor;

/* Color table state */
typedef struct __GLcolorTableStateRec {
    char pad[660];                      /* 0x00 (offset 0x97C in gc) */
} __GLcolorTableState;

/* Current state (__GLcurrentStateRec: 272 bytes = 0x110) */
typedef struct __GLcurrentStateRec {
    /* 0x000 */ char                    pad0[8];            /* 0x00 (offset 0x0A0 in gc) */
    /* 0x008 */ __GLcolor               color;              /* 0x08 (offset 0x0A8 in gc) */
    /* 0x018 */ __GLcoord               normal;             /* 0x18 (offset 0x0B8 in gc) */
    /* 0x028 */ __GLcoord               texture[1];         /* 0x28 (offset 0x0C8 in gc) */
    /* 0x038 */ __GLvertex              rasterPos;          /* 0x38 (offset 0x0D8 in gc) */
    /* 0x0F8 */ __GLcolor               userColor;          /* 0xF8 (offset 0x198 in gc) */
    /* 0x108 */ GLfloat                 userColorIndex;     /* 0x108 (offset 0x1A8 in gc) */
    /* 0x10C */ GLboolean               validRasterPos;     /* 0x10C (offset 0x1AC in gc) */
    /* 0x10D */ GLboolean               edgeTag;            /* 0x10D (offset 0x1AD in gc) */
    /* 0x10E */ GLubyte                 pad10E[2];          /* 0x10E (offset 0x1AE in gc) */
} __GLcurrentState;


/* Stackable attribute state (__GLattributeRec: 2936 bytes = 0xB78) */
struct __GLattributeRec {
    GLuint                  mask;               /* 0x000 (offset 0x098 in gc) */
    GLint                   pad4;               /* 0x004 */
    __GLcurrentState        current;            /* 0x008 (offset 0x0A0 in gc) */
    __GLpointState          point;              /* 0x118 (offset 0x1B0 in gc) */
    __GLlineState           line;               /* 0x124 (offset 0x1BC in gc) */
    __GLpolygonState        polygon;            /* 0x134 (offset 0x1CC in gc) */
    __GLpolygonStippleState  polygonStipple;     /* 0x150 (offset 0x1E8 in gc) */
    __GLpixelState          pixel;              /* 0x1D0 (offset 0x268 in gc) */
    __GLlightState          light;              /* 0x478 (offset 0x510 in gc) */
    __GLfogState            fog;                /* 0x53C (offset 0x5D4 in gc) */
    char                    pad_fog[4];         /* 0x564 */
    __GLdepthState          depth;              /* 0x568 (offset 0x600 in gc) */
    __GLaccumState          accum;              /* 0x578 (offset 0x610 in gc) */
    __GLstencilState        stencil;            /* 0x588 (offset 0x620 in gc) */
    __GLviewport            viewport;           /* 0x5A0 (offset 0x638 in gc) */
    __GLtransformState      transform;          /* 0x5D8 (offset 0x670 in gc) */
    char                    pad_trans[32];      /* 0x5E8 */
    __GLenableState         enables;            /* 0x608 (offset 0x6A0 in gc) */
    __GLrasterState         raster;             /* 0x620 (offset 0x6B8 in gc) */
    __GLhintState           hints;              /* 0x66C (offset 0x704 in gc) */
    __GLevaluatorState      evaluator;          /* 0x688 (offset 0x720 in gc) */
    __GLdlistState          list;               /* 0x6B8 (offset 0x750 in gc) */
    __GLtextureState        texture;            /* 0x6BC (offset 0x754 in gc) */
    __GLscissor             scissor;            /* 0x8D4 (offset 0x96C in gc) */
    __GLcolorTableState     colorTable;         /* 0x8E4 (offset 0x97C in gc) */
};

/* Context rendering modes (88 bytes = 0x58) */
typedef struct __GLcontextModesRec {
    GLint       visualID;               /* 0x00 */
    GLboolean   rgbMode;                /* 0x04 */
    GLboolean   colorIndexMode;         /* 0x05 */
    GLboolean   doubleBufferMode;       /* 0x06 */
    GLboolean   stereoMode;             /* 0x07 */
    GLboolean   haveAccumBuffer;        /* 0x08 */
    GLboolean   haveDepthBuffer;        /* 0x09 */
    GLboolean   haveStencilBuffer;      /* 0x0A */
    GLboolean   pad0;                   /* 0x0B */
    GLint       accumRedBits;           /* 0x0C */
    GLint       accumGreenBits;         /* 0x10 */
    GLint       accumBlueBits;          /* 0x14 */
    GLint       accumAlphaBits;         /* 0x18 */
    GLint       depthBits;              /* 0x1C */
    GLint       stencilBits;            /* 0x20 */
    GLint       indexBits;              /* 0x24 */
    GLint       redBits;                /* 0x28 */
    GLint       greenBits;              /* 0x2C */
    GLint       blueBits;               /* 0x30 */
    GLint       alphaBits;              /* 0x34 */
    GLuint      redMask;                /* 0x38 */
    GLuint      greenMask;              /* 0x3C */
    GLuint      blueMask;               /* 0x40 */
    GLuint      alphaMask;              /* 0x44 */
    GLint       rgbBits;                /* 0x48 */
    GLint       level;                  /* 0x4C */
    GLint       numAuxBuffers;          /* 0x50 */
    GLint       maxAuxBuffers;          /* 0x54 */
} __GLcontextModes;

/* Context constants */
typedef struct __GLcontextConstantsRec {
    GLfloat     half;                   /* 0x00 (offset 0xCD0 in gc) */
    GLfloat     one;                    /* 0x04 (offset 0xCD4 in gc) */
    GLfloat     val255;                 /* 0x08 (offset 0xCD8 in gc) */
    GLfloat     oneOver255;             /* 0x0C (offset 0xCDC in gc) */
    GLfloat     val65535;               /* 0x10 (offset 0xCE0 in gc) */
    GLfloat     oneOver65535;           /* 0x14 (offset 0xCE4 in gc) */
    GLfloat     val4294965000;          /* 0x18 (offset 0xCE8 in gc) */
    GLfloat     oneOver4294965000;      /* 0x1C (offset 0xCEC in gc) */
    char        *vendor;                /* 0x20 (offset 0xCF0 in gc) */
    char        *renderer;              /* 0x24 (offset 0xCF4 in gc) */
    char        *version;               /* 0x28 (offset 0xCF8 in gc) */
    char        *extensions;            /* 0x2C (offset 0xCFC in gc) */
    GLint       numberOfLights;         /* 0x30 (offset 0xD00 in gc) */
    GLint       numberOfClipPlanes;     /* 0x34 (offset 0xD04 in gc) */
    GLint       maxViewportWidth;       /* 0x38 (offset 0xD08 in gc) */
    GLint       maxViewportHeight;      /* 0x3C (offset 0xD0C in gc) */
    char        pad_align[28];          /* 0x40 - 0x5B */
    GLint       viewportXAdjust;        /* 0x5C (offset 0xD2C in gc) */
    GLint       viewportYAdjust;        /* 0x60 (offset 0xD30 in gc) */
    GLfloat     fviewportXAdjust;       /* 0x64 (offset 0xD34 in gc) */
    GLfloat     fviewportYAdjust;       /* 0x68 (offset 0xD38 in gc) */
    char        pad_rescale[92];        /* 0x6C - 0xC7 */
    GLint       maxAttribStackDepth;    /* 0xC8 (offset 0xD98 in gc) */
    GLint       maxClientAttribStackDepth; /* 0xCC (offset 0xD9C in gc) */
    GLint       maxNameStackDepth;      /* 0xD0 (offset 0xDA0 in gc) */
    GLint       maxColorStackDepth;     /* 0xD4 (offset 0xDA4 in gc) */
    GLint       maxModelViewStackDepth; /* 0xD8 (offset 0xDA8 in gc) */
    GLint       maxProjectionStackDepth;/* 0xDC (offset 0xDAC in gc) */
    GLint       maxTextureStackDepth;   /* 0xE0 (offset 0xDB0 in gc) */
} __GLcontextConstants;

/* Generic buffer header (28 bytes = 0x1C) */
typedef struct __GLbufferRec {
    __GLcontext         *gc;            /* 0x00 */
    void                *drawableBuf;   /* 0x04 */
    void                *other;         /* 0x08 */
    void                (*resize)();    /* 0x0C */
    void                (*makeCurrent)();/* 0x10 */
    void                (*loseCurrent)();/* 0x14 */
    void                (*free)();      /* 0x18 */
} __GLbuffer;

/* Color buffer structure (220 bytes = 0xDC) */
typedef struct __GLcolorBufferRec __GLcolorBuffer;
struct __GLcolorBufferRec {
    __GLbuffer          buf;            /* 0x00 */
    GLint               redMax, greenMax, blueMax; /* 0x1C, 0x20, 0x24 */
    GLboolean           needColorFragmentOps; /* 0x28 */
    char                pad29[3];       /* 0x29 */
    GLubyte             *alphaTestFuncTable; /* 0x2C */
    GLfloat             redScale, greenScale, blueScale; /* 0x30, 0x34, 0x38 */
    GLint               iRedScale, iGreenScale, iBlueScale; /* 0x3C, 0x40, 0x44 */
    GLint               redShift, greenShift, blueShift, alphaShift; /* 0x48, 0x4C, 0x50, 0x54 */
    GLfloat             alphaScale;     /* 0x58 */
    GLint               iAlphaScale;    /* 0x5C */
    GLfloat             oneOverRedScale, oneOverGreenScale, oneOverBlueScale, oneOverAlphaScale; /* 0x60, 0x64, 0x68, 0x6C */
    GLuint              sourceMask, destMask; /* 0x70, 0x74 */
    void                (*pick)();      /* 0x78 */
    GLint               (*getDisplayMasks)(); /* 0x7C */
    void                (*store)();     /* 0x80 */
    void                (*fetch)();     /* 0x84 */
    void                (*readColor)(); /* 0x88 */
    GLboolean           (*readSpan)();  /* 0x8C */
    void                (*returnSpan)();/* 0x90 */
    void                *storeSpan;     /* 0x94 */
    void                *storeStippledSpan; /* 0x98 */
    void                *storeLine;     /* 0x9C */
    void                *storeStippledLine; /* 0xA0 */
    void                *fetchSpan;     /* 0xA4 */
    void                *fetchStippledSpan; /* 0xA8 */
    void                *fetchLine;     /* 0xAC */
    void                *fetchStippledLine; /* 0xB0 */
    char                padB4[36];      /* 0xB4 */
    void                (*clear)(__GLcolorBuffer *cfb); /* 0xD8 */
};

/* Stencil buffer structure (120 bytes = 0x78) */
typedef struct __GLstencilBufferRec {
    __GLbuffer          buf;            /* 0x00 */
    char                pad1C[88];      /* 0x1C */
    void                (*clear)(struct __GLstencilBufferRec *sfb, s64 mask, __GLcontext *gc); /* 0x74 */
} __GLstencilBuffer;

/* Depth buffer structure (132 bytes = 0x84) */
typedef struct __GLdepthBufferRec {
    __GLbuffer          buf;            /* 0x00 */
    char                pad1C[48];      /* 0x1C */
    GLuint              scale;          /* 0x4C (offset 76) */
    char                pad50[40];      /* 0x50 */
    void                (*clear)(struct __GLdepthBufferRec *dfb, s64 mask, __GLcontext *gc); /* 0x78 */
    char                pad7C[8];       /* 0x7C */
} __GLdepthBuffer;

/* Accumulation buffer structure (112 bytes = 0x70) */
typedef struct __GLaccumBufferRec {
    __GLbuffer          buf;            /* 0x00 */
    char                pad1C[80];      /* 0x1C */
    void                (*clear)(struct __GLaccumBufferRec *afb); /* 0x6C */
} __GLaccumBuffer;

/* Mode-dependent procs */
typedef struct __GLprocsRec {
    void (*validate)(__GLcontext *gc);
    void (*finish)(__GLcontext *gc);
    void (*flush)(__GLcontext *gc);
    void (*applyColor)(__GLcontext *gc);
    void *table[128];
    char pad[324];
} __GLprocs;

/* Attribute stack machine */
typedef struct __GLattributeMachineRec {
    __GLattribute **stack;              /* 0x00 (offset 0x3184 in gc) */
    __GLattribute **stackPointer;       /* 0x04 (offset 0x3188 in gc) */
} __GLattributeMachine;



typedef GLfloat __GLfloat;
typedef GLuint __GLzValue;
typedef GLubyte __GLstencilCell;

/* Transform machine (184 bytes = 0xB8) */
typedef struct __GLtransformMachineRec {
    __GLtransform   *modelViewStack;    /* 0x00 (offset 0x73DC in gc) */
    __GLtransform   *modelView;         /* 0x04 (offset 0x73E0 in gc) */
    __GLtransform   *projectionStack;   /* 0x08 (offset 0x73E4 in gc) */
    __GLtransform   *projection;        /* 0x0C (offset 0x73E8 in gc) */
    GLuint          projectionSequence; /* 0x10 (offset 0x73EC in gc) */
    __GLtransform   *textureStack[1];   /* 0x14 (offset 0x73F0 in gc) */
    __GLtransform   *texture[1];        /* 0x18 (offset 0x73F4 in gc) */
    __GLtransform   *colorStack;        /* 0x1C (offset 0x73F8 in gc) */
    __GLtransform   *color;             /* 0x20 (offset 0x73FC in gc) */
    __GLvertex      *clipTemp;          /* 0x24 (offset 0x7400 in gc) */
    __GLvertex      *nextClipTemp;      /* 0x28 (offset 0x7404 in gc) */
    GLint           clipX0;             /* 0x2C (offset 0x7408 in gc) */
    GLint           clipY0;             /* 0x30 (offset 0x740C in gc) */
    GLint           clipX1;             /* 0x34 (offset 0x7410 in gc) */
    GLint           clipY1;             /* 0x38 (offset 0x7414 in gc) */
    GLint           minx, miny;         /* 0x3C, 0x40 (offset 0x7418, 0x741C in gc) */
    GLint           maxx, maxy;         /* 0x44, 0x48 (offset 0x7420, 0x7424 in gc) */
    __GLfloat       fminx, fminy;       /* 0x4C, 0x50 (offset 0x7428, 0x742C in gc) */
    __GLfloat       fmaxx, fmaxy;       /* 0x54, 0x58 (offset 0x7430, 0x7434 in gc) */
    __GLmatrix      matrix2D;           /* 0x5C (offset 0x7438 in gc, 88 bytes) */
    GLboolean       reasonableViewport; /* 0xB4 (offset 0x7490 in gc) */
    char            pad_xend[3];        /* 0xB5 (offset 0x7491 in gc) */
} __GLtransformMachine;

/* Line options (152 bytes = 0x98) */
typedef struct __GLlineOptionsRec {
    GLint       axis, numPixels;        /* 0x00, 0x04 (offset 0x74A0, 0x74A4 in gc) */
    __GLfloat   offset, length;         /* 0x08, 0x0C (offset 0x74A8, 0x74AC in gc) */
    GLint       xStart, yStart;         /* 0x10, 0x14 (offset 0x74B0, 0x74B4 in gc) */
    GLint       xLittle, xBig;          /* 0x18, 0x1C (offset 0x74B8, 0x74BC in gc) */
    GLint       yLittle, yBig;          /* 0x20, 0x24 (offset 0x74C0, 0x74C4 in gc) */
    GLint       fraction, dfraction;    /* 0x28, 0x2C (offset 0x74C8, 0x74CC in gc) */
    __GLfloat   curF, curR, curG, curB; /* 0x30..0x3C (offset 0x74D0..0x74DC in gc) */
    __GLfloat   curA, curS, curT, curQW;/* 0x40..0x4C (offset 0x74E0..0x74EC in gc) */
    __GLzValue  curZ;                   /* 0x50 (offset 0x74F0 in gc) */
    __GLfloat   antiAliasPercent;       /* 0x54 (offset 0x74F4 in gc) */
    __GLfloat   f0;                     /* 0x58 (offset 0x74F8 in gc) */
    GLint       width;                  /* 0x5C (offset 0x74FC in gc) */
    const __GLvertex *v0, *v1;          /* 0x60, 0x64 (offset 0x7500, 0x7504 in gc) */
    __GLfloat   realLength;             /* 0x68 (offset 0x7508 in gc) */
    __GLfloat   dldx, dldy;             /* 0x6C, 0x70 (offset 0x750C, 0x7510 in gc) */
    __GLfloat   dddx, dddy;             /* 0x74, 0x78 (offset 0x7514, 0x7518 in gc) */
    __GLfloat   dlLittle, dlBig;        /* 0x7C, 0x80 (offset 0x751C, 0x7520 in gc) */
    __GLfloat   ddLittle, ddBig;        /* 0x84, 0x88 (offset 0x7524, 0x7528 in gc) */
    __GLfloat   plength, pwidth;        /* 0x8C, 0x90 (offset 0x752C, 0x7530 in gc) */
    __GLfloat   stippleOffset;          /* 0x94 (offset 0x7534 in gc) */
} __GLlineOptions;

/* Line machine (164 bytes = 0xA4) */
typedef struct __GLlineMachineRec {
    GLint           stipplePosition;    /* 0x00 (offset 0x7494 in gc) */
    GLint           repeat;             /* 0x04 (offset 0x7498 in gc) */
    GLboolean       notResetStipple;    /* 0x08 (offset 0x749C in gc) */
    char            pad_line[3];        /* 0x09 */
    __GLlineOptions options;            /* 0x0C (offset 0x74A0 in gc, 152 bytes) */
} __GLlineMachine;

/* Fragment and polygon shading structures */
typedef GLuint __GLstippleWord;

typedef struct __GLfragmentTextureRec {
    __GLfloat s, t, r, qw, rhow;        /* 0x00..0x13 (20 bytes) */
} __GLfragmentTexture;

typedef struct __GLfragmentRec {
    GLint               x, y;           /* 0x00, 0x04 (offset 0x75F8, 0x75FC in gc) */
    __GLzValue          z;              /* 0x08 (offset 0x7600 in gc) */
    __GLcolor           color[1];       /* 0x0C (offset 0x7604 in gc: r, g, b, a) */
    __GLfragmentTexture texture[1];     /* 0x1C (offset 0x7614 in gc: s, t, r, qw, rhow) */
    __GLfloat           f;              /* 0x30 (offset 0x7628 in gc) */
} __GLfragment;                         /* size = 52 bytes = 0x34 */

typedef struct __GLcolorIteratorRec {
    __GLfloat rLittle, gLittle, bLittle, aLittle; /* 0x00..0x0F (offset 0x7630 in gc) */
    __GLfloat rBig, gBig, bBig, aBig;             /* 0x10..0x1F (offset 0x7640 in gc) */
    __GLfloat drdx, dgdx, dbdx, dadx;             /* 0x20..0x2F (offset 0x7650 in gc) */
    __GLfloat drdy, dgdy, dbdy, dady;             /* 0x30..0x3F (offset 0x7660 in gc) */
} __GLcolorIterator;                              /* size = 64 bytes = 0x40 */

typedef struct __GLtextureIteratorRec {
    __GLfloat sLittle, tLittle, rLittle, qwLittle, rhowLittle; /* 0x00..0x13 (offset 0x7688 in gc) */
    __GLfloat sBig, tBig, rBig, qwBig, rhowBig;                /* 0x14..0x27 (offset 0x769C in gc) */
    __GLfloat dsdx, dtdx, drdx, dqwdx, drhowdx;                /* 0x28..0x3B (offset 0x76B0 in gc) */
    __GLfloat dsdy, dtdy, drdy, dqwdy, drhowdy;                /* 0x3C..0x4F (offset 0x76C4 in gc) */
} __GLtextureIterator;                                         /* size = 80 bytes = 0x50 */

/* Polygon shader record (384 bytes = 0x180) */
typedef struct __GLshadeRec {
    GLint               dxLeftLittle, dxLeftBig;   /* 0x00, 0x04 (offset 0x75B8, 0x75BC in gc) */
    GLint               dxLeftFrac;                /* 0x08 (offset 0x75C0 in gc) */
    GLint               ixLeft, ixLeftFrac;        /* 0x0C, 0x10 (offset 0x75C4, 0x75C8 in gc) */
    GLint               dxRightLittle, dxRightBig; /* 0x14, 0x18 (offset 0x75CC, 0x75D0 in gc) */
    GLint               dxRightFrac;               /* 0x1C (offset 0x75D4 in gc) */
    GLint               ixRight, ixRightFrac;      /* 0x20, 0x24 (offset 0x75D8, 0x75DC in gc) */
    __GLfloat           area;                      /* 0x28 (offset 0x75E0 in gc) */
    __GLfloat           dxAC, dxBC, dyAC, dyBC;    /* 0x2C..0x3B (offset 0x75E4..0x75F0 in gc) */
    GLboolean           ccw;                       /* 0x3C (offset 0x75F4 in gc) */
    char                pad_ccw[3];                /* 0x3D */
    __GLfragment        frag;                      /* 0x40 (offset 0x75F8 in gc, 52 bytes) */
    GLint               length;                    /* 0x74 (offset 0x762C in gc) */
    __GLcolorIterator   colorIter[1];              /* 0x78 (offset 0x7630 in gc, 64 bytes) */
    GLint               zLittle, zBig;             /* 0xB8, 0xBC (offset 0x7670, 0x7674 in gc) */
    GLint               dzdx, dzdxBig;             /* 0xC0, 0xC4 (offset 0x7678, 0x767C in gc) */
    __GLfloat           dzdyf, dzdxf;              /* 0xC8, 0xCC (offset 0x7680, 0x7684 in gc) */
    __GLtextureIterator texture[1];                /* 0xD0 (offset 0x7688 in gc, 80 bytes) */
    __GLfloat           fLittle, fBig;             /* 0x120, 0x124 (offset 0x76D8, 0x76DC in gc) */
    __GLfloat           dfdy, dfdx;                /* 0x128, 0x12C (offset 0x76E0, 0x76E4 in gc) */
    GLuint              modeFlags;                 /* 0x130 (offset 0x76E8 in gc) */
    __GLzValue          *zbuf;                     /* 0x134 (offset 0x76EC in gc) */
    GLint               zbufBig, zbufLittle;       /* 0x138, 0x13C (offset 0x76F0, 0x76F4 in gc) */
    __GLstencilCell     *sbuf;                     /* 0x140 (offset 0x76F8 in gc) */
    GLint               sbufBig, sbufLittle;       /* 0x144, 0x148 (offset 0x76FC, 0x7700 in gc) */
    __GLcolor           *colors;                   /* 0x14C (offset 0x7704 in gc) */
    __GLcolor           *fbcolors;                 /* 0x150 (offset 0x7708 in gc) */
    __GLstippleWord     *stipplePat;               /* 0x154 (offset 0x770C in gc) */
    GLboolean           done;                      /* 0x158 (offset 0x7710 in gc) */
    char                pad_done[3];               /* 0x159 */
    __GLcolorBuffer     *cfb;                      /* 0x15C (offset 0x7714 in gc) */
    __GLfloat           offsetZ;                   /* 0x160 (offset 0x7718 in gc) */
    __GLzValue          startZLimit;               /* 0x164 (offset 0x771C in gc) */
    __GLzValue          endZLimit;                 /* 0x168 (offset 0x7720 in gc) */
    __GLfloat           outBoundCount;             /* 0x16C (offset 0x7724 in gc) */
    __GLfloat           rangeCount;                /* 0x170 (offset 0x7728 in gc) */
    __GLfloat           outCountBig;               /* 0x174 (offset 0x772C in gc) */
    __GLfloat           outCountLittle;            /* 0x178 (offset 0x7730 in gc) */
    char                pad_shade[4];              /* 0x17C (offset 0x7734..0x7737 in gc) */
} __GLshade;

/* Polygon machine (520 bytes = 0x208) */
typedef struct __GLpolygonMachineRec {
    __GLstippleWord     stipple[32];               /* 0x000 (offset 0x7538 in gc, 128 bytes) */
    __GLshade           shader;                    /* 0x080 (offset 0x75B8 in gc, 384 bytes) */
    GLubyte             face[2];                   /* 0x200, 0x201 (offset 0x7738, 0x7739 in gc) */
    GLubyte             mode[2];                   /* 0x202, 0x203 (offset 0x773A, 0x773B in gc) */
    GLubyte             cullFace;                  /* 0x204 (offset 0x773C in gc) */
    GLubyte             cullFlag;                  /* 0x205 (offset 0x773D in gc) */
    GLubyte             needs;                     /* 0x206 (offset 0x773E in gc) */
    GLubyte             pad_poly;                  /* 0x207 (offset 0x773F in gc) */
} __GLpolygonMachine;

/* Pixel machine (128 bytes = 0x80) */
typedef struct __GLpixelMachineRec {
    GLboolean   modifyRGBA;             /* 0x00 (offset 0x7740 in gc) */
    GLboolean   modifyCI;               /* 0x01 (offset 0x7741 in gc) */
    GLboolean   modifyDepth;            /* 0x02 (offset 0x7742 in gc) */
    GLboolean   modifyStencil;          /* 0x03 (offset 0x7743 in gc) */
    GLboolean   fastRGBA;               /* 0x04 (offset 0x7744 in gc) */
    char        pad05[3];               /* 0x05 */
    GLfloat     red0Mod;                /* 0x08 (offset 0x7748 in gc) */
    GLfloat     green0Mod;              /* 0x0C (offset 0x774C in gc) */
    GLfloat     blue0Mod;               /* 0x10 (offset 0x7750 in gc) */
    GLfloat     alpha1Mod;              /* 0x14 (offset 0x7754 in gc) */
    GLfloat     *redMap;                /* 0x18 (offset 0x7758 in gc) */
    GLfloat     *greenMap;              /* 0x1C (offset 0x775C in gc) */
    GLfloat     *blueMap;               /* 0x20 (offset 0x7760 in gc) */
    GLfloat     *alphaMap;              /* 0x24 (offset 0x7764 in gc) */
    GLfloat     *iMap;                  /* 0x28 (offset 0x7768 in gc) */
    GLvoid      *iCurMap;               /* 0x2C (offset 0x776C in gc) */
    GLvoid      *redCurMap;             /* 0x30 (offset 0x7770 in gc) */
    GLvoid      *greenCurMap;           /* 0x34 (offset 0x7774 in gc) */
    GLvoid      *blueCurMap;            /* 0x38 (offset 0x7778 in gc) */
    GLvoid      *alphaCurMap;           /* 0x3C (offset 0x777C in gc) */
    GLboolean   rgbaCurrent;            /* 0x40 (offset 0x7780 in gc) */
    char        pad41[3];               /* 0x41 */
    GLfloat     *redModMap;             /* 0x44 (offset 0x7784 in gc) */
    GLfloat     *greenModMap;           /* 0x48 (offset 0x7788 in gc) */
    GLfloat     *blueModMap;            /* 0x4C (offset 0x778C in gc) */
    GLfloat     *alphaModMap;           /* 0x50 (offset 0x7790 in gc) */
    GLboolean   iToICurrent;            /* 0x54 (offset 0x7794 in gc) */
    char        pad55[3];               /* 0x55 */
    GLfloat     *iToIMap;               /* 0x58 (offset 0x7798 in gc) */
    GLboolean   iToRGBACurrent;         /* 0x5C (offset 0x779C in gc) */
    char        pad5D[3];               /* 0x5D */
    GLfloat     *iToRMap;               /* 0x60 (offset 0x77A0 in gc) */
    GLfloat     *iToGMap;               /* 0x64 (offset 0x77A4 in gc) */
    GLfloat     *iToBMap;               /* 0x68 (offset 0x77A8 in gc) */
    GLfloat     *iToAMap;               /* 0x6C (offset 0x77AC in gc) */
    char        pad70[16];              /* 0x70..0x7F */
} __GLpixelMachine;

/* Buffer machine (4 bytes) */
typedef struct __GLbufferMachineRec {
    GLboolean   doubleStore;            /* 0x00 (offset 0x77C0 in gc) */
    char        pad[3];                 /* 0x01..0x03 */
} __GLbufferMachine;

/* Master context structure (__GLcontextRec: 31608 bytes = 0x7B78) */
struct __GLcontextRec {
    __GLimports             imports;            /* 0x0000 - 0x004B (76 bytes) */
    __GLexports             exports;            /* 0x004C - 0x0093 (72 bytes) */
    GLint                   gcState;            /* 0x0094 - 0x0097 (4 bytes) */
    __GLattribute           state;              /* 0x0098 - 0x0C0F (2936 bytes) */
    u32                     beginMode;          /* 0x0C10 - 0x0C13 (4 bytes) */
    GLenum                  renderMode;         /* 0x0C14 - 0x0C17 (4 bytes) */
    GLint                   error;              /* 0x0C18 - 0x0C1B (4 bytes) */
    __GLcontextModes        modes;              /* 0x0C1C - 0x0C73 (88 bytes) */
    __GLcontextModes        readModes;          /* 0x0C74 - 0x0CCB (88 bytes) */
    GLboolean               yInverted;          /* 0x0CCC (1 byte) */
    char                    pad_yinv[3];        /* 0x0CCD - 0x0CCF (3 bytes) */
    __GLcontextConstants    constants;          /* 0x0CD0 - 0x0DB3 */
    char                    pad_const[8252];    /* 0x0DB4 - 0x2DEF */
    GLuint                  validateMask;       /* 0x2DF0 (11760) */
    GLuint                  dirtyMask;          /* 0x2DF4 (11764) */
    __GLcolorBuffer         *drawBuffer;        /* 0x2DF8 (11768) */
    __GLcolorBuffer         *readBuffer;        /* 0x2DFC (11772) */
    char                    pad_proc[16];       /* 0x2E00 - 0x2E0F */
    void                    (*validate)(__GLcontext *gc); /* 0x2E10 (11792) */
    char                    pad_proc2[28];      /* 0x2E14 - 0x2E2F */
    __GLprocs               procs;              /* 0x2E30 (11824) */
    __GLattributeMachine    attributes;         /* 0x3184 (12676) */
    char                    pad_mid2[16976];    /* 0x318C - 0x73DB (16976 bytes) */
    __GLtransformMachine    transform;          /* 0x73DC - 0x7493 (184 bytes) */
    __GLlineMachine         line;               /* 0x7494 - 0x7537 (164 bytes) */
    __GLpolygonMachine      polygon;            /* 0x7538 - 0x773F (520 bytes) */
    __GLpixelMachine        pixel;              /* 0x7740 - 0x77BF (128 bytes) */
    __GLbufferMachine       buffers;            /* 0x77C0 - 0x77C3 (4 bytes) */
    __GLcolorBuffer         *front;             /* 0x77C4 (30660) */
    __GLcolorBuffer         *back;              /* 0x77C8 (30664) */
    __GLcolorBuffer         frontBuffer;        /* 0x77CC (30668, 220 bytes) */
    __GLcolorBuffer         backBuffer;         /* 0x78A8 (30888, 220 bytes) */
    __GLcolorBuffer         *auxBuffer;         /* 0x7984 (31108) */
    __GLstencilBuffer       stencilBuffer;      /* 0x7988 (31112, 120 bytes) */
    __GLdepthBuffer         depthBuffer;        /* 0x7A00 (31232, 132 bytes) */
    __GLaccumBuffer         accumBuffer;        /* 0x7A84 (31364, 112 bytes) */
    char                    pad_bufend[28];     /* 0x7AF4 - 0x7B0F (28 bytes) */
    GLint                   fd;                 /* 0x7B10 (graphics device fd) */
    GLint                   boardIndex;         /* 0x7B14 (board index) */
    GLint                   zDepth;             /* 0x7B18 (bits of Z: 24) */
    GLint                   stencilDepth;       /* 0x7B1C (bits of stencil: 4) */
    char                    rendererString[40]; /* 0x7B20 - 0x7B47 (40 bytes) */
    GLuint                  swapInterval;       /* 0x7B48 (buffer swap interval) */
    u8                      hwFlags;            /* 0x7B4C */
    u8                      haveZ;              /* 0x7B4D (1 if depth installed) */
    u8                      haveStencil;        /* 0x7B4E (1 if stencil installed) */
    u8                      fastMode;           /* 0x7B4F */
    void                    (*primitiveProcs[10])(__GLcontext *gc); /* 0x7B50 - 0x7B77 (40 bytes) */
};

/* Driver private lighting LUT state (12 bytes = 0x0C) */
typedef struct __GLLightLUTStateRec {
    GLfloat spotExponent;
    GLfloat cosCutoff;
    GLint   lutIndex;
} __GLLightLUTState;

/* Driver-specific private context extension (__GLEXPRESScontext: 31896 bytes = 0x7C98) */
typedef struct __GLEXPRESScontextRec {
    __GLcontext         gc;                 /* 0x0000 - 0x7B77 (31608 bytes) */
    char                pad7B78[0x54];      /* 0x7B78 - 0x7BCB */
    void                (*czClear)(__GLcolorBuffer *cfb, __GLdepthBuffer *dfb); /* 0x7BCC */
    GLuint              polygonStipple[32]; /* 0x7BD0 - 0x7C4F (128 bytes) */
    __GLLightLUTState   *lightLUTs;         /* 0x7C50 */
    GLfloat             frontSpecularExponent; /* 0x7C54 */
    GLuint              frontSpecularLUT;   /* 0x7C58 */
    GLfloat             backSpecularExponent; /* 0x7C5C */
    GLuint              backSpecularLUT;    /* 0x7C60 */
    GLuint              lightModelFlags;    /* 0x7C64 */
    GLuint              lightModelParam;    /* 0x7C68 */
    GLuint              lightCacheCount;    /* 0x7C6C */
    GLuint              lightCacheMask;     /* 0x7C70 */
    GLuint              lightStateDirty;    /* 0x7C74 */
    GLuint              pad7C78;            /* 0x7C78 */
    GLuint              spotLUTInitialized; /* 0x7C7C */
    GLfloat             spanState[3];       /* 0x7C80 - 0x7C8B */
    GLuint              pad7C8C;            /* 0x7C8C */
    void                *devicePrivate;     /* 0x7C90 */
    GLuint              pad7C94;            /* 0x7C94 */
} __GLEXPRESScontext;

#if defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 201112L) && (__SIZEOF_POINTER__ == 4) && !defined(_LANGUAGE_C)
_Static_assert(sizeof(__GLcontext) == 0x7B78, "sizeof(__GLcontext) must be 0x7B78");
_Static_assert(__builtin_offsetof(__GLcontext, fd) == 0x7B10, "__GLcontext.fd offset");
_Static_assert(__builtin_offsetof(__GLcontext, boardIndex) == 0x7B14, "__GLcontext.boardIndex offset");
_Static_assert(__builtin_offsetof(__GLcontext, zDepth) == 0x7B18, "__GLcontext.zDepth offset");
_Static_assert(__builtin_offsetof(__GLcontext, stencilDepth) == 0x7B1C, "__GLcontext.stencilDepth offset");
_Static_assert(__builtin_offsetof(__GLcontext, rendererString) == 0x7B20, "__GLcontext.rendererString offset");
_Static_assert(__builtin_offsetof(__GLcontext, swapInterval) == 0x7B48, "__GLcontext.swapInterval offset");
_Static_assert(__builtin_offsetof(__GLcontext, hwFlags) == 0x7B4C, "__GLcontext.hwFlags offset");
_Static_assert(__builtin_offsetof(__GLcontext, haveZ) == 0x7B4D, "__GLcontext.haveZ offset");
_Static_assert(__builtin_offsetof(__GLcontext, haveStencil) == 0x7B4E, "__GLcontext.haveStencil offset");
_Static_assert(__builtin_offsetof(__GLcontext, fastMode) == 0x7B4F, "__GLcontext.fastMode offset");
_Static_assert(__builtin_offsetof(__GLcontext, transform) == 0x73DC, "__GLcontext.transform offset");
_Static_assert(__builtin_offsetof(__GLcontext, line) == 0x7494, "__GLcontext.line offset");
_Static_assert(__builtin_offsetof(__GLcontext, polygon) == 0x7538, "__GLcontext.polygon offset");
_Static_assert(__builtin_offsetof(__GLcontext, polygon.shader.frag.x) == 0x75F8, "__GLcontext.polygon.shader.frag.x offset");
_Static_assert(__builtin_offsetof(__GLcontext, polygon.shader.colorIter[0].drdx) == 0x7650, "__GLcontext.polygon.shader.colorIter[0].drdx offset");
_Static_assert(__builtin_offsetof(__GLcontext, polygon.shader.dzdx) == 0x7678, "__GLcontext.polygon.shader.dzdx offset");
_Static_assert(__builtin_offsetof(__GLcontext, pixel) == 0x7740, "__GLcontext.pixel offset");
_Static_assert(__builtin_offsetof(__GLcontext, buffers) == 0x77C0, "__GLcontext.buffers offset");
_Static_assert(__builtin_offsetof(__GLcontext, front) == 0x77C4, "__GLcontext.front offset");
_Static_assert(__builtin_offsetof(__GLcontext, primitiveProcs) == 0x7B50, "__GLcontext.primitiveProcs offset");
_Static_assert(sizeof(__GLEXPRESScontext) == 0x7C98, "sizeof(__GLEXPRESScontext) must be 0x7C98");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, czClear) == 0x7BCC, "__GLEXPRESScontext.czClear offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, polygonStipple) == 0x7BD0, "__GLEXPRESScontext.polygonStipple offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, lightLUTs) == 0x7C50, "__GLEXPRESScontext.lightLUTs offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, frontSpecularExponent) == 0x7C54, "__GLEXPRESScontext.frontSpecularExponent offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, frontSpecularLUT) == 0x7C58, "__GLEXPRESScontext.frontSpecularLUT offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, backSpecularExponent) == 0x7C5C, "__GLEXPRESScontext.backSpecularExponent offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, backSpecularLUT) == 0x7C60, "__GLEXPRESScontext.backSpecularLUT offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, spotLUTInitialized) == 0x7C7C, "__GLEXPRESScontext.spotLUTInitialized offset");
_Static_assert(__builtin_offsetof(__GLEXPRESScontext, devicePrivate) == 0x7C90, "__GLEXPRESScontext.devicePrivate offset");
#endif

/* Global thread context symbols loaded at 0x1010 and 0x1018 */
extern __GLcontext *__glCurrentContext;
extern u32 __glBeginMode;

/* Standard internal helper error dispatch */
void __glSetError(GLenum code);

#endif /* __GLCORE_TYPES_H__ */
