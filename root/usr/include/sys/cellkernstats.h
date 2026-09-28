/**************************************************************************
 *                                                                        *
 *               Copyright (C) 1989-1994 Silicon Graphics, Inc.           *
 *                                                                        *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *                                                                        *
 **************************************************************************/





#ifndef _SYS_CELLKERNSTATS_H
#define _SYS_CELLKERNSTATS_H

#ident  "$Revision: 1.5 $"
#define MAX_CELLS 64
#define MAXMESGLEN 64

typedef struct mesginfo
{
	char caller[MAXMESGLEN];
        uint64_t  etime;
        char message[MAXMESGLEN];
        int calls;
} mesginfo_t;

typedef struct mesgstatsinfo
{
	int tdiff;
	cell_t cellid;
	int mesgsnt;
	int mesgrcv;
	int tot_count;
	uint64_t tot_etime;
	int tot_msgs;       /* number of different message types */
		
	
}mesgstatsinfo_t;

typedef struct membershipinfo
{
     cell_t golden_cell;
     int    num_active_cells;
     int     cell_age[MAX_CELLS];
     cell_t membership[MAX_CELLS];
}membershipinfo_t;

typedef struct mesgsizestatsinfo
{
	int mesgcount;
	int sizelolimit;
	int sizehilimit;
	int size;
	int replyflag;
	int sortflag;
	char message[MAXMESGLEN];
}mesgsizestatsinfo_t;

#endif /*SYS_CELLKERNSTATS_H*/
