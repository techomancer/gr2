#ifndef _SYS_NODEMASK_H
#define _SYS_NODEMASK_H
/******************************************************************************
 * nodemask.h
 *
 * 	Define Node mask and associated operations. 
 * 	node mask : Bit mask of the compact node id's in a system.
 * 	Node id's represented by these masks are expected to be in a 
 * 	contiguous space. (which is true for compact node id).
 * 
 * 	Make node mask to be a 64 bit, since that's the immediate requirement.
 *	But all operations on the nodemask should be done via the macros,
 *	to allow the internal implementation to be changed when we need
 *	larger number of bits (> 64) to represent node masks.
 *
 * Copyright 1995 Silicon Graphics, Inc.
 * All Rights Reserved.
 *
 * UNPUBLISHED -- Rights reserved under the copyright laws of the United
 * States.   Use of a copyright notice is precautionary only and does not
 * imply publication or disclosure.
 *
 * U.S. GOVERNMENT RESTRICTED RIGHTS LEGEND:
 * Use, duplication or disclosure by the Government is subject to restrictions
 * as set forth in FAR 52.227.19(c)(2) or subparagraph (c)(1)(ii) of the Rights
 * in Technical Data and Computer Software clause at DFARS 252.227-7013 and/or
 * in similar or successor clauses in the FAR, or the DOD or NASA FAR
 * Supplement.  Contractor/manufacturer is Silicon Graphics, Inc.,
 * 2011 N. Shoreline Blvd. Mountain View, CA 94039-7311.
 *
 * THE CONTENT OF THIS WORK CONTAINS CONFIDENTIAL AND PROPRIETARY
 * INFORMATION OF SILICON GRAPHICS, INC. ANY DUPLICATION, MODIFICATION,
 * DISTRIBUTION, OR DISCLOSURE IN ANY FORM, IN WHOLE, OR IN PART, IS STRICTLY
 * PROHIBITED WITHOUT THE PRIOR EXPRESS WRITTEN PERMISSION OF SILICON
 * GRAPHICS, INC.
 ******************************************************************************/

#ident	"$Revision: 1.11 $"


#if defined(_KERNEL) || defined(_STANDALONE) || defined(_KMEMUSER)

/*
 * Make sure this is fixed when going to more than 64 nodes
 */
typedef __uint64_t cnodemask_t;


#define CNODEMASK_CLRALL(p)	        (p) = 0
#define CNODEMASK_SETALL(p)        (p) = ~((cnodemask_t)0)
#define CNODEMASK_IS_ZERO(p)	((p) == 0)
#define CNODEMASK_IS_NONZERO(p)	((p) != 0)
#define CNODEMASK_NOTEQ(p, q)	((p) != (q))
#define CNODEMASK_EQ(p, q)      ((p) == (q))
#define CNODEMASK_LSB_ISONE(p)  ((p) & 0x1ULL)

#define CNODEMASK_ZERO()        ((cnodemask_t)0)
#define CNODEMASK_CVTB(bit)     (1ULL << (bit))
#define CNODEMASK_SETB(p, bit)	((p) |= 1ULL << (bit))
#define CNODEMASK_CLRB(p, bit)	((p) &= ~(1ULL << (bit)))
#define CNODEMASK_TSTB(p, bit)	((p) & (1ULL << (bit)))

#define CNODEMASK_SETM(p, q)	((p) |= (q))
#define CNODEMASK_CLRM(p, q)	((p) &= ~(q))
#define CNODEMASK_ANDM(p, q)	((p) &= (q))
#define CNODEMASK_TSTM(p, q)	((p) & (q))

#define CNODEMASK_CPYNOTM(p, q)	((p) = ~(q))
#define CNODEMASK_CPY(p, q)     ((p) = (q))
#define CNODEMASK_ORNOTM(p, q)	((p) |= ~(q))
#define CNODEMASK_SHIFTL(p)     ((p) <<= 1)
#define CNODEMASK_SHIFTR(p)     ((p) >>= 1)

#define CNODEMASK_ATOMSET(p, q)	atomicSetUlong((cnodemask_t *)&(p), q)
#define CNODEMASK_ATOMCLR(p, q)	atomicClearUlong((cnodemask_t *)&(p),q)


#define CNODEMASK_FROM_NUMNODES(n)	((~(cnodemask_t)0)>>(64-(n)))

#endif /* _KERNEL || _STANDALONE || _KMEMUSER */

#endif /* _SYS_NODEMASK_H */
