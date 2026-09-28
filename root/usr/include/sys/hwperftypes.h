/*
 * Copyright 1995 Silicon Graphics, Inc.
 * All Rights Reserved.
 *
 * This is UNPUBLISHED PROPRIETARY SOURCE CODE of Silicon Graphics, Inc.;
 * the contents of this file may not be disclosed to third parties, copied or
 * duplicated in any form, in whole or in part, without the prior written
 * permission of Silicon Graphics, Inc.
 *
 * RESTRICTED RIGHTS LEGEND:
 * Use, duplication or disclosure by the Government is subject to restrictions
 * as set forth in subdivision (c)(1)(ii) of the Rights in Technical Data
 * and Computer Software clause at DFARS 252.227-7013, and/or in similar or
 * successor clauses in the FAR, DOD or NASA FAR Supplement. Unpublished -
 * rights reserved under the Copyright Laws of the United States.
 */

#ifndef __SYS_HWPERFTYPES_H__
#define __SYS_HWPERFTYPES_H__

#ident	"$Revision: 1.20 $"

/*
 * Type definitions for performance monitoring
 */
#include <sys/time.h>
#if defined (SN)
#include <sys/SN/agent.h>
#endif /* SN0 */

/*
 * Most of this is R10k specific. This is being split up into machine
 * dependent and machine independent files.
 */
#define HWPERF_EVENTMAX		32	/* Max. number of events that can be
					 * counted together in the counters
					 */
#if defined(R10000)
/* The following constants are all R10k specific */	

#define HWPERF_CNT0MIN		0
#define HWPERF_CNT1MIN		16
#define HWPERF_CNT0MAX		16
#define HWPERF_CNT1MAX		32

#endif
struct hwperf_ctrlreg {
	ushort_t	hwp_ev  :11,	/* event to be counted */
			hwp_ie	:1,	/* overflow interrupt enable */
			hwp_mode:4;	/* user/kernel mode */
};

/*
 * R10000 performance monitoring
 */
#if defined (_KERNEL)
typedef struct cpu_mon {

	short		cm_num_counters;
				/* Max. # of performance counters per cpu */

	/* The following five lists are on a per counter basis and the
	 * size of each list is dependent on "cm_num_counters"
	 */
	__uint64_t	*cm_event_mask;
	short		*cm_events;	
				/* number of events monitored by counters */
	short		*cm_evindx;	
				/* current events for counters */
	short		*cm_evmax;	
				/* max events for counters */


	short		cm_flags;
	short		cm_sig;	/* signal to deliver upon cntr overflow */
	cpuid_t		cm_counting_cpu;		
	int		cm_gen;	/* genration number for specifiers */
	mutex_t		cm_mutex;
	
	short		cm_num_events;	/* total number of events */

	/* The following three lists are on a per-event basis and
	 * the size of each list is dependent on "cm_num_events"
	 */

	ushort 		*cm_evspec;	/* specifiers for counter */
	uint		*cm_preloadcnt; /* preload values */
	uint		*cm_savecnt; 	/* saved values */
	__uint64_t 	*cm_eventcnt;  	/* performance counters */
} cpu_mon_t;

/* Some useful macros on the event mask in the cpu monitoring info */
#define IS_HWPERF_EVENT_MASK_SET(_mask,_e)	(_mask & (1ull << _e))

#define HWPERF_FREE		0x0001
#define HWPERF_RSVD		0x0002
#define HWPERF_PROC		0x0004
#define HWPERF_SYS		0x0008
#define HWPERF_PROFILING	0x0010

#define HWPERF_MAXWAIT		50000000	/* 50 mils */

/* flags for cm_flags */

#define HWPERF_CM_PROC		0x0001
#define HWPERF_CM_SYS		0x0002
#define HWPERF_CM_CPU		0x0004
#define HWPERF_CM_ENABLED	0x0008
#define HWPERF_CM_EN		0x000f

#define HWPERF_CM_VALID		0x0010
#define HWPERF_CM_PSAVE		0x0020
#define HWPERF_CM_LOST		0x0040
#define HWPERF_CM_PROFILING	0x0080 	/* using counters for profiling */
#define HWPERF_CM_SUSPENDED	0x0100

typedef struct perf_mon {
	cpu_mon_t *pm_cpu_mon;    /* cpu performance monitoring counters */
} perf_mon_t;

struct eframe_s;
struct hwperf_profevctrarg;
struct hwperf_profevctraux;

struct hwperf_iface {
	int     (*hwp_support_fn)(void);
	int 	(*hwp_init_fn)(cpu_mon_t *,struct hwperf_profevctrarg *,
			       struct hwperf_profevctraux *);
	int 	(*hwp_terminate_fn)(cpu_mon_t *);
	void 	(*hwp_update_fn)(cpu_mon_t *);
	void	(*hwp_start_fn)(cpu_mon_t *);

	void	(*hwp_stop_fn)(cpu_mon_t *);
	void	(*hwp_intr_fn)(struct eframe_s *);
};

#endif /* _KERNEL */

/*
 * Several of these structures include one another. Hopefully, we can 
 * change the interface at some point, and clean this up.
 */
/*
 * structure used to retrieve the counts 
 */
typedef struct {
	__uint64_t hwp_evctr[HWPERF_EVENTMAX];
} hwperf_cntr_t;


/*
 * The following is used to set/retrieve the information
 * on which events are being tracked.
 */

typedef union {
	short			hwperf_spec;
	struct hwperf_ctrlreg	hwperf_creg;
} hwperf_ctrl_t;

typedef struct {
	hwperf_ctrl_t 	hwp_evctrl[HWPERF_EVENTMAX];
} hwperf_eventctrl_t;

typedef struct hwperf_profevctrarg {
	hwperf_eventctrl_t	hwp_evctrargs;
	int			hwp_ovflw_freq[HWPERF_EVENTMAX];
	int			hwp_ovflw_sig; /* SIGUSR1,2 */
} hwperf_profevctrarg_t;

typedef struct hwperf_profevctraux {
	int			hwp_aux_gen;
	hwperf_cntr_t		hwp_aux_cntr;
} hwperf_profevctraux_t;

typedef struct hwperf_eventctrlaux {
	int			hwp_aux_sig;
	int			hwp_aux_freq[HWPERF_EVENTMAX];
} hwperf_eventctrlaux_t;
	
typedef struct hwperf_profevctrargex {
	hwperf_profevctrarg_t	*hwp_args;
	hwperf_profevctraux_t	*hwp_aux;
} hwperf_profevctrargex_t;

typedef struct hwperf_getctrlex_arg {
	hwperf_eventctrl_t	*hwp_evctrl;
	hwperf_eventctrlaux_t	*hwp_evctrlaux;
} hwperf_getctrlex_arg_t;

#if defined (SN0)

typedef struct md_perf_control {
	uint	mpc_pad		:26;
        uint    mpc_inval_class	: 1;
        uint    mpc_inmsg_class	: 1;
        uint    mpc_outmsg_class: 1;
	uint	mpc_mem_cycles 	: 1;
	uint	mpc_dir_state  	: 1;
	uint	mpc_local_req  	: 1;
} md_perf_control_t;


typedef struct  md_perf_reg {
	__uint64_t	mpr_overflow :  1,
	                mpr_value    : 63;
} md_perf_reg_t;

typedef struct md_perf_values {
	md_perf_reg_t mpv_count[MD_PERF_SETS][MD_PERF_COUNTERS];
} md_perf_values_t;

#endif /* SN0 */

#endif /* __SYS_HWPERFTYPES_H__ */
