/**************************************************************************
 *                                                                        *
 *               Copyright (C) 1995, Silicon Graphics, Inc.               *
 *                                                                        *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *                                                                        *
 **************************************************************************/

#ifndef __SYS_SN0_IF_CL_H__
#define	__SYS_SN0L_IF_CL_H__

#define	IFCL_VERSION		1

#define	IFCL_XP_MSG_SZ		256			/* xp msg sz */
#define	IFCL_XP_MAX_MSG_NUM	(NBPP / IFCL_XP_MSG_SZ)	/* xp msg nm */

#define	CL_MAX_OUTQ		IFCL_XP_MAX_MSG_NUM	/* max o/p Q length */

#define	IF_CL_NAME		"cl"
#define	IFCL_DFLT_MTU		(56 << 10)

#define	IFCL_OMBUF_ALIGN	3		/* mbuf tail addr align mask */

#define	IFCL_DEBUG_HDR		0
#define	IFCL_LOG		0

#define	IFCL_ADDR_SZ		6

typedef struct ifcl_hdr_s {
    char		ich_fpttn[IFCL_ADDR_SZ];
    char		ich_tpttn[IFCL_ADDR_SZ];
    u_short		ich_type;
#if IFCL_DEBUG_HDR
    u_long		ich_cksum;
    __psunsigned_t	ich_cookie;
#endif
} ifcl_hdr_t;

#define	IFCL_HDR_SZ	sizeof(ifcl_hdr_t)

#define	IFCLBUF_PAD	RAW_HDRPAD(sizeof(ifcl_hdr_t))
#define	IFCLBUF_HEAD	(sizeof(ifclbufhead_t) - sizeof(ifcl_hdr_t))

typedef struct ifclbufhead_s {
    struct ifnet	icb_ifnet;
    struct rawif	icb_rawif;
    char		pad[IFCLBUF_PAD];
    ifcl_hdr_t		icb_hdr;
} ifclbufhead_t;

typedef struct ifcl_slist_s {
    int			first;
    int			last;
    u_int      		first_wrap;
    u_int      		last_wrap;
#define	ISL_NOTIFY	0x1
    char		nflag[CL_MAX_OUTQ];
    struct mbuf		*slist[CL_MAX_OUTQ];
    partid_t		pttn[CL_MAX_OUTQ];
} ifcl_slist_t;

typedef struct ifcl_xpttn_s {
    xpchan_t		icxp_xpchan;
    u_int		icxp_sent;
    u_int		icxp_ackd;
#define	IFCL_XP_UP	0x1	/* this pttn is up */
    int			icxp_flags;
} ifcl_xpttn_t;

typedef struct ifcl_s {
    struct ifnet	cl_if;				/* struct ifnet */
    struct rawif	cl_rawif;			/* struct rawif */
#define	IFCL_INIT	0x1
#define	IFCL_READY	0x2
#define	IFCL_IF_UP	0x4
    int			cl_flags;			/* interface flags */
    char		cl_addr[IFCL_ADDR_SZ];		/* if_cl addr */
    struct in_addr	cl_inaddr;			/* interface addr */
    dev_t		cl_dev;				/* hwgraph entry */
    ifcl_xpttn_t	cl_xpttn[MAX_PARTITIONS];	/* xpttn struct */
    ifcl_slist_t	cl_slist;  			/* send list */
    lock_t		cl_mutex;			/* mutex */
} ifcl_t;

#define	IFCL_ARP_ALL	0x1
#define	IFCL_ARP_REQ	0x2
#define	IFCL_ARP_REP	0x3

typedef struct ifcl_arp_s {
    u_short		ica_type;			/* ARP type */
    char		ica_src_addr[IFCL_ADDR_SZ];	/* src LLP addr (pid) */
    struct in_addr	ica_src_inaddr;			/* src ipaddr */
    struct in_addr	ica_arp_inaddr;			/* ARP ipaddr */
} ifcl_arp_t;

/*
 * We always look at the first field to figure out the ctrl pkt type. 
 * Don't change ict_type's type or location! Ctrl pkts are always sent 
 * as a immediate pkt. Hence it should fit into a single xpm
 */

#define	IFCL_CTRL_ARP	0x1

typedef struct ifcl_ctrl_s {
    u_int		ict_type;			/* ctrl pkt type */
    u_int		ict_version;			/* ifcl version */
    union {
        ifcl_arp_t	ict_arp_u;
    } ict_u;
} ifcl_ctrl_t;

#define	ict_arp		ict_u.ict_arp_u

typedef struct snarptab_s {
    struct in_addr	snarp_inaddr;
    char		snarp_addr[IFCL_ADDR_SZ];
#define	SNARP_VALID	0x1
    u_short		snarp_flags;
#define	SNARP_PADSZ	(16 - sizeof(struct in_addr) - IFCL_ADDR_SZ - \
			sizeof(u_short))
    char		snarp_pad[SNARP_PADSZ];
} snarptab_t;

extern void ifcl_init(void);
extern void ifcl_attach_xpttn(partid_t);
extern void ifcl_shutdown(partid_t);
extern void ifcl_xpc_async(xpc_t, xpchan_t, partid_t, int, void *);
extern int ifcl_output(struct ifnet *, struct mbuf *, struct sockaddr *,
			 struct rtentry *);
extern void ifcl_output_odone(xpc_t, xpchan_t, partid_t, int, void *);
extern int ifcl_ifioctl(struct ifnet *, int , void *);

#if IFCL_LOG

#define IMD     1
#define PTR     2

#define MAX_ADDRS_IN_MESG       5

typedef struct re_s {
    int                 chan;
    int                 cpu;
    int                 type[MAX_ADDRS_IN_MESG];
    kthread_t           *ithread;
    kthread_t           *kthread;
    size_t              scnt[MAX_ADDRS_IN_MESG];
    __psunsigned_t      saddr[MAX_ADDRS_IN_MESG];
    size_t              rcnt[MAX_ADDRS_IN_MESG];
    __psunsigned_t      raddr[MAX_ADDRS_IN_MESG];
} re_t;

#define LOG_ENTRIES     25000

typedef struct ifcl_recv_log_s {
    int         ptr;
    int         wraps;
    int         num_exc;
    lock_t      mutex;
    re_t        *re;
} ifcl_recv_log_t;

typedef struct se_s {
    int                 cpu;
    kthread_t           *kthread;
    u_int               outsd;
    size_t              cnt[MAX_ADDRS_IN_MESG];
    __psunsigned_t      addr[MAX_ADDRS_IN_MESG];
} se_t;

typedef struct ifcl_send_log_s {
    int         ptr;
    int         wraps;
    int         num_exc;
    lock_t      mutex;
    se_t        *se;
} ifcl_send_log_t;

#endif

#endif /* __SYS_SN0_IF_CL_H__ */
