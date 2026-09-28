/**************************************************************************
 *									  *
 * 		 Copyright (C) 1993, Silicon Graphics, Inc.		  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/

#ifndef __SYS_ATOMIC_OPS_H__
#define __SYS_ATOMIC_OPS_H__

#ident	"$Revision: 1.36 $"

#if _KERNEL && !_STANDALONE && !LANGUAGE_ASSEMBLY

/*
 * MIPS atomic operations based on link-load, store-conditional instructions.
 */

struct kthread;
/*
 * This is a temporary workaround until 432127 is fixed. Enable atomic ops
 * only for 7.0 compilers.
 */
#if  defined(_COMPILER_VERSION) && (_COMPILER_VERSION>=700)  /* Mongoose */

/*
 * Add, set or clear bits in a (4-byte) int.
 */
#define atomicAddInt(a, b)	__add_and_fetch(a, b)
#define atomicSetInt(a, b)	__fetch_and_or(a, b)
#define atomicClearInt(a, b)	__fetch_and_and(a, ~(b))

#define atomicAddUint(a, b)	__add_and_fetch(a, b)
#define atomicSetUint(a, b)	__fetch_and_or(a, b)
#define atomicClearUint(a, b)	__fetch_and_and(a, ~(b))

/*
 * increment an (four-byte) int. Wrap back to 0 when we match second argument
 */
extern int atomicIncWithWrap(int *, int);
extern int atomicAddWithWrap(int *, int, int);

/* PCB anon port manipulation */
extern int atomicIncPort(int *, int, int);

/*
 * Add, set or clear bits in a long -- works for native size of long.
 */
#define atomicAddLong(a, b)	__add_and_fetch(a, b)
#define atomicSetLong(a, b)	__fetch_and_or(a, b)
#define atomicClearLong(a, b)	__fetch_and_and(a, ~(b))



__inline uint atomicFieldAssignUint(uint *l, uint f, uint b) 
{
	uint tmp;
	do {
		tmp = *l;
	} while (!__compare_and_swap((l), (tmp),
				(((tmp) & (~((uint)f))) | (b))));
	return tmp;
} 

__inline long atomicFieldAssignLong(long *l,long f,long b) 
 {
	long tmp;
	do {
		tmp = *l;
	} while (!__compare_and_swap((l), (tmp),
				(((tmp) & (~((__uint64_t)f))) | (b))));
	return tmp;
} 

#define atomicAddUlong(a, b)	__add_and_fetch(a, b)
#define atomicSetUlong(a, b)	__fetch_and_or(a, b)
#define atomicClearUlong(a, b)	__fetch_and_and(a, ~(b))

/*
 * Add, set or clear bits in a 64 bit int
 */
#define atomicAddInt64(a, b)	__add_and_fetch(a, b)
#define atomicAddUint64(a, b)	__add_and_fetch(a, b)
#define atomicSetInt64(a, b)	__fetch_and_or(a, b)
#define atomicSetUint64(a, b)	__fetch_and_or(a, b)
#define atomicClearInt64(a, b)	__fetch_and_and(a, ~(b))
#define atomicClearUint64(a, b)	__fetch_and_and(a, ~(b))
#define bitlock_release(a, b)	__fetch_and_and(a, ~(b))
#define bitlock_release_32bit(a, b)	__fetch_and_and(a, ~(b))

/*
 * Set or clear bits in a cpumask
 */
extern cpumask_t atomicSetCpumask(cpumask_t *, cpumask_t *);
extern cpumask_t atomicClearCpumask(cpumask_t *, cpumask_t *);

/*
 * Atomic assembler routines used by heap allocators.
 */
extern void *atomicPush(void *, void *, void *);
extern void *atomicPull(void *);

/*
 * Exchange values in memory.  test_and_set is unconditional.
 * compare_and_swap is conditional, returning 1 and swapping if the
 * memory value equals "old".
 */

extern int	test_and_set_int(int *loc, int new);
extern long	test_and_set_long(long *loc, long new);
extern void *	test_and_set_ptr(void **loc, void *new);
extern int	compare_and_swap_int(int *loc, int old, int new);
extern int	compare_and_swap_long(long *loc, long old, long new);
extern int	compare_and_swap_ptr(void **loc, void *old, void *new);
extern int	compare_and_swap_int64(__int64_t *loc, __int64_t old, __uint64_t new);
extern int	comparegt_and_swap_int(int *loc, int compare_val, int new);
extern int	compare_and_inc_int_gt_zero(int *loc);
extern int	compare_and_dec_int_gt(int *loc, int compare_val);
int	compare_and_swap_kt(struct kthread **, struct kthread *,
					struct kthread *);

extern int	swap_int(int *loc, int new);
extern long	swap_long(long *loc, long new);
extern void *	swap_ptr(void **loc, void *new);
extern __uint64_t swap_int64(__int64_t *loc, __uint64_t new);

/*
 * Primitives to lock the pfn field in ptes
 */

extern long bitlock_acquire(long *, long);
extern long bitlock_condacq(long *, long);

		

/*
 * Primitives to lock a 32-bit work by a bit field inside the word
 */
extern void bitlock_acquire_32bit(__uint32_t *word, __uint32_t locking_bit);
extern long bitlock_condacq_32bit(__uint32_t *, __uint32_t);

#else /* ucode or ragnarok compilers */

/*
 * Add, set or clear bits in a (4-byte) int.
 */
extern int atomicAddInt(int *, int);
extern int atomicSetInt(int *, int);
extern int atomicClearInt(int *, int);

extern uint atomicAddUint(uint *, uint);
extern uint atomicSetUint(uint *, uint);
extern uint atomicClearUint(uint *, uint);

/*
 * increment an (four-byte) int. Wrap back to 0 when we match second argument
 */
extern int atomicIncWithWrap(int *, int);

/* PCB anon port manipulation */
extern int atomicIncPort(int *, int, int);

/*
 * Add, set or clear bits in a long -- works for native size of long.
 */
extern long atomicAddLong(long *, long);
extern long atomicSetLong(long *, long);
extern long atomicClearLong(long *, long);
extern long atomicFieldAssignLong(long *, long, long);
extern int  atomicFieldAssignUint(uint *, uint, uint);

extern unsigned long atomicAddUlong(unsigned long *, unsigned long);
extern unsigned long atomicSetUlong(unsigned long *, unsigned long);
extern unsigned long atomicClearUlong(unsigned long *, unsigned long);

extern int64_t	atomicSetInt64(int64_t *, int64_t);
extern uint64_t	atomicSetUint64(uint64_t *, uint64_t);
extern int64_t	atomicClearInt64(int64_t *, int64_t);
extern uint64_t	atomicClearUint64(uint64_t *, uint64_t);

/*
 * Add in a 64 bit quantity
 */
extern int64_t	atomicAddInt64(int64_t *, int64_t);
extern uint64_t	atomicAddUint64(uint64_t *, uint64_t);

/*
 * Set or clear bits in a cpumask
 */
extern cpumask_t atomicSetCpumask(cpumask_t *, cpumask_t *);
extern cpumask_t atomicClearCpumask(cpumask_t *, cpumask_t *);

/*
 * Atomic assembler routines used by heap allocators.
 */
extern void *atomicPush(void *, void *, void *);
extern void *atomicPull(void *);

/*
 * Exchange values in memory.  test_and_set is unconditional.
 * compare_and_swap is conditional, returning 1 and swapping if the
 * memory value equals "old".
 */

extern int	test_and_set_int(int *loc, int new);
extern long	test_and_set_long(long *loc, long new);
extern void *	test_and_set_ptr(void **loc, void *new);
extern int	compare_and_swap_int(int *loc, int old, int new);
extern int	compare_and_swap_long(long *loc, long old, long new);
extern int	compare_and_swap_ptr(void **loc, void *old, void *new);
extern int	compare_and_swap_int64(__int64_t *loc, __int64_t old, __uint64_t new);
extern int	comparegt_and_swap_int(int *loc, int compare_val, int new);
extern int	compare_and_inc_int_gt_zero(int *loc);
int	compare_and_swap_kt(struct kthread **, struct kthread *,
					struct kthread *);

extern int	swap_int(int *loc, int new);
extern long	swap_long(long *loc, long new);
extern void *	swap_ptr(void **loc, void *new);
extern __uint64_t swap_int64(__int64_t *loc, __uint64_t new);

/*
 * Primitives to lock the pfn field in ptes
 */

extern long bitlock_acquire(long *, long);
extern long bitlock_condacq(long *, long);
extern long bitlock_release(long *, long);

/*
 * Primitives to lock a 32-bit work by a bit field inside the word
 */
extern void bitlock_acquire_32bit(__uint32_t *word, __uint32_t locking_bit);
extern void bitlock_release_32bit(__uint32_t *word, __uint32_t locking_bit);
extern long bitlock_condacq_32bit(__uint32_t *, __uint32_t);

#endif /* ucode or ragnarok compilers */
#endif /* _KERNEL && !_STANDALONE && !LANGUAGE_ASSEMBLY */

#endif /* !__SYS_ATOMIC_OPS_H__ */
