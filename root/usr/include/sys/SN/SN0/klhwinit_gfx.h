/**************************************************************************
 *                                                                        *
 *               Copyright (C) 1992-1997, Silicon Graphics, Inc.          *
 *                                                                        *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *                                                                        *
 **************************************************************************/
/*
 * klhwinit_gfx.h -  Graphics defines used during IO6prom init.
 *			Some of the stuff in here may later get put into
 *	 		or be included from other files.
 */
#ifndef __SYS_SN_SN0_KLHWINIT_GFX_H__
#define __SYS_SN_SN0_KLHWINIT_GFX_H__

#include <sys/xtalk/xg.h>				/* gets  XG PART_NUM, NIC */
#include <sys/xtalk/hq4.h>				/* gets HQ4 PART_NUM, NIC */

#define KONA_WIDGET_PART_NUM 	 XG_WIDGET_PART_NUM     /*  xtalk/xg.h   0xC102 */
#define MGRAS_WIDGET_PART_NUM	 HQ4_WIDGET_PART_NUM 	/* xtalk/hq4.h   0xC003 */


#define HILO_GE14_8_PART_NUM     "030-1052-"
#define HILO_GE14_4_PART_NUM     "030-1129-"
#define HILO_GE14_2_PART_NUM     "030-1051-"

#define MGRAS_GM10_PART_NUM       "030-0938-"  	
#define MGRAS_GM20_PART_NUM       "030-0957-"  


#endif /* __SYS_SN_SN0_KLHWINIT_GFX_H__ */
