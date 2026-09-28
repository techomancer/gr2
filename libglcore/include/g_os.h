#ifndef __g_os_h_
#define __g_os_h_
#include <stdlib.h>
#include <GL/gl.h>
#include "glcore.h"
#include "g_disp.h"

typedef enum __GLbeginModeEnum {
    __GL_NOT_IN_BEGIN = 0,
    __GL_IN_BEGIN = 1,
    __GL_NEED_VALIDATE = 2
} __GLbeginMode;

extern struct __GLcontextRec *__gc;
#endif
