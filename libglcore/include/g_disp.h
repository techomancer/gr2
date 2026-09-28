#ifndef __g_disp_h_
#define __g_disp_h_
typedef struct __GLdispatchTableRec {
    void *funcs[400];
} __GLdispatchTable;

typedef struct __GLdispatchStateRec {
    __GLdispatchTable dispatch;
} __GLdispatchState;
#endif
