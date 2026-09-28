/**************************************************************************
 *                                                                        *
 *               Copyright (C) 1990, Silicon Graphics, Inc.               *
 *                                                                        *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *                                                                        *
 **************************************************************************/

#ident "sys/hpc3plp.h: $Revision: 1.8 $"

/*
 * hpc3plp.h - header for the IP22/IP26 parallel port driver
 */

#include "sys/pi1.h"

/* memory descriptor for parallel port transfers 
 */
typedef struct memd {
    union {
        __uint32_t buf;
        __uint32_t cbp;
    } memun_w0;
    unsigned eox:1,pad1:1,xie:1,pad0:15,bc:14;
    union {
        __uint32_t forw;
        __uint32_t nbdp;
    } memun_w2;
    unsigned pad;
} memd_t;

#define memd_bc bc
#define memd_xie xie
#define memd_eox eox
#define memd_cbp memun_w0.cbp
#define memd_buf memun_w0.buf
#define memd_nbdp memun_w2.nbdp
#define memd_forw memun_w2.forw

/* structure of parallel port registers
 * c6=pbus channel six
 * c7=pbus channel seven
 */
typedef struct plp_regs_s {
    volatile __uint32_t cbp;		/* c7:current buffer pointer */
    volatile __uint32_t nbdp;		/* c7:next buffer descriptor pointer */
    unsigned char pad0[0xff8];		/* unused */
    volatile unsigned int ctrl;		/* c7:control register(pbus ctrl) */
    unsigned char pad1[0x10ffc];	/* unused */
    volatile unsigned int fifo;		/* c7:control register(pbus ctrl) */
    unsigned char pad2[0x397fc];	/* unused */
    pi1_t extreg;			/* c6:external status/remote(pbus6) */
    unsigned char pad3[0x4b];		/* unused */
    volatile unsigned char write1;	/* c6:pbus write1 reg */
    unsigned char pad4[0x3589];		/* unused */
    volatile unsigned int cfgdma;	/* c7:pbus dma config reg */
    unsigned char pad5[0x7fc];		/* unused */
    volatile unsigned int cfgpio;	/* c6:bus pio config reg */
} plp_regs_t;


/* HPC3 DMA configuration flag for PLP */
#define BURST_COUNT      0x20              /* HPC3 allows preeption of DMA
                                              every 32 bytes
                                           */
#define NPLP    1       /* maximum number of parallel ports */

/* modify these parameters for best performance
 */
#if NBPP == 4096
#define NRPPP           2               /* number of read pages per port */
#define RDSHIFT         2               /* 4 descriptors per page */
#elif NBPP == 16384
#define NRPPP           1               /* number of read pages per port */
#define RDSHIFT         2               /* 4 descriptors per page */
#else
#error "Unknown page size"
#endif

#define NRP             (NPLP * NRPPP)  /* number of initial read pages */
#define NRDPP           (1<<RDSHIFT)    /* read descriptors per page */
#define NBPRD           (NBPP>>RDSHIFT) /* bytes per read descriptor */
#define RDMASK          ~(NBPRD-1)      /* mask for read descriptor bytes */

#define NRMD            (NRP*NRDPP)     /* number of receive memory descs */
#define NXMD            6               /* number of transmit memory descs */
#define NMD             (NRMD + NXMD)   /* number of memory descriptors */

#define PLP_RTO         (1 * HZ)       	/* default: 1 sec timeout on a read */
#define PLP_WTO         0       	/* default: never timeout on a write */

#define PLP_VEC_NORM    VECTOR_PLP
#define PLP_VEC_XTRA    -1

/* pbus dma control fifo parameters */
#define PBUS_CTRL_HIWATER	0x100
#define PBUS_CTRL_FIFOBEG	0
#define PBUS_CTRL_FIFOEND	0
#define PBUS_CTRL_INTERRUPT	0x1

/* Next three additions allow same parallel port to be used as 
 * either output or bidirectional port.
 */
#define PLPUNITMASK	0x0f	/* First four bits are unit number */
#define PLPBI           0x10    /* Minor number for bidirectional only */
#define plpunit(dev)	(minor(dev)&PLPUNITMASK)
