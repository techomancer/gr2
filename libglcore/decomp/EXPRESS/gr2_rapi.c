void __glExpPassRasterPosData(__GLcontext *gc, ...) {
    f32 temp_f4;

    HQ2_FIFO.pad2418.w = (u32) gc->state.current.validRasterPos;
    HQ2_FIFO.data_port.w = (bitwise u32) gc->state.current.rasterPos.window.x;
    HQ2_FIFO.data_port.w = (bitwise u32) gc->state.current.rasterPos.window.y;
    HQ2_FIFO.data_port.w = (bitwise u32) gc->state.current.rasterPos.window.z;
    HQ2_FIFO.data_port.w = (bitwise u32) gc->state.current.rasterPos.eye.z;
    HQ2_FIFO.data_port.w = (bitwise u32) gc->state.current.rasterPos.clip.w;
    temp_f4 = gc->state.current.rasterPos.colors[0].r;
    if (gc->modes.rgbMode != 0) {
        HQ2_FIFO.data_port.w = (bitwise u32) (temp_f4 * 0.99609375f);
        HQ2_FIFO.data_port.w = (bitwise u32) (gc->state.current.rasterPos.colors[0].g * 0.99609375f);
        HQ2_FIFO.data_port.w = (bitwise u32) (gc->state.current.rasterPos.colors[0].b * 0.99609375f);
        HQ2_FIFO.data_port.w = (bitwise u32) (gc->state.current.rasterPos.colors[0].a * 0.99609375f);
        return;
    }
    HQ2_FIFO.data_port_ci.w = (bitwise u32) temp_f4;
    HQ2_FIFO.data_port_ci.w = 0;
    HQ2_FIFO.data_port_ci.w = 0;
    HQ2_FIFO.data_port_ci.w = 0;
}

void __glExpGetRasterPosData(__GLcontext *gc, ...) {
    s32 sp0;

    HQ2_FIFO.get_rasterpos.w = 0;
    HQ2_FIFO.readback_trigger.w = 0;
loop_2:
    if (!(HQ2_STATUS_PORT.read_status.w & 1)) {
        sp0 = 0;
        if (sp0 < 0xA) {
            do {
                sp0 += 1;
            } while (sp0 < 0xA);
        }
        goto loop_2;
    }
    gc->state.current.rasterPos.colors[0].r = (bitwise f32) HQ2_READ_FIFO.data[0].w;
    gc->state.current.rasterPos.colors[0].g = (bitwise f32) HQ2_READ_FIFO.data[1].w;
    gc->state.current.rasterPos.colors[0].b = (bitwise f32) HQ2_READ_FIFO.data[2].w;
    gc->state.current.rasterPos.colors[0].a = (bitwise f32) HQ2_READ_FIFO.data[3].w;
    HQ2_STATUS_PORT.read_ack.w = 0;
    HQ2_FIFO.read_done.w = 0;
}

void __glexpim_RasterPos2dv(f64 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos2dv((f64 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp0->unk0;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk8;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos2fv(f32 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos2fv((f32 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = sp0->unk0;
    HQ2_FIFO.data_port.w = sp0->unk4;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos2d(f64 x, f64 y) {
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    sp0 = y;
    sp8 = x;
    if (__glBeginMode != 0) {
        sp0 = second half of f64;
        sp8 = x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s7->validate(temp_s7);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos2d(second half of f64, sp0);
    if (temp_s7->fastMode != 0) {
        if (temp_s7->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s7->state.current.userColor.r, temp_s7->state.current.userColor.g, temp_s7->state.current.userColor.b, temp_s7->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s7->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) (second half of f64);
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos2f(f32 x, f32 y) {
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    sp0 = (bitwise f64) y;
    sp8 = (bitwise f64) x;
    if (__glBeginMode != 0) {
        sp0 = (bitwise f64) y;
        sp8 = (bitwise f64) x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s7->validate(temp_s7);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos2f(second half of f64, (bitwise f32) sp0);
    if (temp_s7->fastMode != 0) {
        if (temp_s7->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s7->state.current.userColor.r, temp_s7->state.current.userColor.g, temp_s7->state.current.userColor.b, temp_s7->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s7->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (u32) sp8;
    HQ2_FIFO.data_port.w = second half of f64;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos2i(s32 x, s32 y) {
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) y;
    sp8 = (s64) x;
    if (__glBeginMode != 0) {
        sp0 = (s64) y;
        sp8 = (s64) x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos2i((s32) sp8, (s32) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp8;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos2iv(s32 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos2iv((s32 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp0->unk0;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk4;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos2s(s16 x, s16 y) {
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) y;
    sp8 = (s64) x;
    if (__glBeginMode != 0) {
        sp0 = (s64) y;
        sp8 = (s64) x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos2s((s16) sp8, (s16) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp8;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos2sv(s16 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos2sv((s16 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp0->unk0;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk2;
    HQ2_FIFO.data_port.w = 0;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos3dv(f64 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos3dv((f64 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp0->unk0;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk8;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk10;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos3fv(f32 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos3fv((f32 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = sp0->unk0;
    HQ2_FIFO.data_port.w = sp0->unk4;
    HQ2_FIFO.data_port.w = sp0->unk8;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos3d(f64 x, f64 y, f64 z) {
    f64 sp10;
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    sp0 = z;
    sp8 = y;
    sp10 = x;
    if (__glBeginMode != 0) {
        sp0 = second half of f64;
        sp8 = y;
        sp10 = x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s7->validate(temp_s7);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos3d(second half of f64, sp8, sp0);
    if (temp_s7->fastMode != 0) {
        if (temp_s7->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s7->state.current.userColor.r, temp_s7->state.current.userColor.g, temp_s7->state.current.userColor.b, temp_s7->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s7->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp10;
    HQ2_FIFO.data_port.w = second half of f64;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0;
    HQ2_FIFO.data_port.w = second half of f64;
}

void __glexpim_RasterPos3f(f32 x, f32 y, f32 z) {
    f64 sp10;
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    sp0 = (bitwise f64) z;
    sp8 = (bitwise f64) y;
    sp10 = (bitwise f64) x;
    if (__glBeginMode != 0) {
        sp0 = (bitwise f64) z;
        sp8 = (bitwise f64) y;
        sp10 = (bitwise f64) x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s7->validate(temp_s7);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos3f(second half of f64, (bitwise f32) sp8, (bitwise f32) sp0);
    if (temp_s7->fastMode != 0) {
        if (temp_s7->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s7->state.current.userColor.r, temp_s7->state.current.userColor.g, temp_s7->state.current.userColor.b, temp_s7->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s7->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (u32) sp10;
    HQ2_FIFO.data_port.w = second half of f64;
    HQ2_FIFO.data_port.w = (u32) sp0;
    HQ2_FIFO.data_port.w = second half of f64;
}

void __glexpim_RasterPos3i(s32 x, s32 y, s32 z) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) z;
    sp8 = (s64) y;
    sp10 = (s64) x;
    if (__glBeginMode != 0) {
        sp0 = (s64) z;
        sp8 = (s64) y;
        sp10 = (s64) x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos3i((s32) sp10, (s32) sp8, (s32) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp10;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp8;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos3iv(s32 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos3iv((s32 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp0->unk0;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk4;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk8;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos3s(s16 x, s16 y, s16 z) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) z;
    sp8 = (s64) y;
    sp10 = (s64) x;
    if (__glBeginMode != 0) {
        sp0 = (s64) z;
        sp8 = (s64) y;
        sp10 = (s64) x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos3s((s16) sp10, (s16) sp8, (s16) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp10;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp8;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos3sv(s16 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos3sv((s16 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp0->unk0;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk2;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk4;
    HQ2_FIFO.data_port.w = 0x3F800000;
}

void __glexpim_RasterPos4dv(f64 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos4dv((f64 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp0->unk0;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk8;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk10;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk18;
}

void __glexpim_RasterPos4fv(f32 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos4fv((f32 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = sp0->unk0;
    HQ2_FIFO.data_port.w = sp0->unk4;
    HQ2_FIFO.data_port.w = sp0->unk8;
    HQ2_FIFO.data_port.w = sp0->unkC;
}

void __glexpim_RasterPos4d(f64 x, f64 y, f64 z, f64 w) {
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    sp0 = w;
    sp8 = z;
    sp10 = y;
    sp18 = x;
    if (__glBeginMode != 0) {
        sp0 = second half of f64;
        sp8 = z;
        sp10 = second half of f64;
        sp18 = x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s7->validate(temp_s7);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos4d(second half of f64, sp10, second half of f64, sp0);
    if (temp_s7->fastMode != 0) {
        if (temp_s7->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s7->state.current.userColor.r, temp_s7->state.current.userColor.g, temp_s7->state.current.userColor.b, temp_s7->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s7->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp18;
    HQ2_FIFO.data_port.w = second half of f64;
    HQ2_FIFO.data_port.w = second half of f64;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0;
}

void __glexpim_RasterPos4f(f32 x, f32 y, f32 z, f32 w) {
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    sp0 = (bitwise f64) w;
    sp8 = (bitwise f64) z;
    sp10 = (bitwise f64) y;
    sp18 = (bitwise f64) x;
    if (__glBeginMode != 0) {
        sp0 = (bitwise f64) w;
        sp8 = (bitwise f64) z;
        sp10 = (bitwise f64) y;
        sp18 = (bitwise f64) x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s7->validate(temp_s7);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos4f(second half of f64, (bitwise f32) sp10, second half of f64, (bitwise f32) sp0);
    if (temp_s7->fastMode != 0) {
        if (temp_s7->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s7->state.current.userColor.r, temp_s7->state.current.userColor.g, temp_s7->state.current.userColor.b, temp_s7->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s7->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (u32) sp18;
    HQ2_FIFO.data_port.w = second half of f64;
    HQ2_FIFO.data_port.w = (u32) sp8;
    HQ2_FIFO.data_port.w = second half of f64;
}

void __glexpim_RasterPos4i(s32 x, s32 y, s32 z, s32 w) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp10 = (s64) w;
    sp0 = (s64) z;
    sp8 = (s64) y;
    sp18 = (s64) x;
    if (__glBeginMode != 0) {
        sp0 = (s64) z;
        sp8 = (s64) y;
        sp10 = (s64) w;
        sp18 = (s64) x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos4i((s32) sp18, (s32) sp8, (s32) sp0, (s32) sp10);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp18;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp8;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp10;
}

void __glexpim_RasterPos4iv(s32 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos4iv((s32 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp0->unk0;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk4;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk8;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unkC;
}

void __glexpim_RasterPos4s(s16 x, s16 y, s16 z, s16 w) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp10 = (s64) w;
    sp0 = (s64) z;
    sp8 = (s64) y;
    sp18 = (s64) x;
    if (__glBeginMode != 0) {
        sp0 = (s64) z;
        sp8 = (s64) y;
        sp10 = (s64) w;
        sp18 = (s64) x;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos4s((s16) sp18, (s16) sp8, (s16) sp0, (s16) sp10);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp18;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp8;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp10;
}

void __glexpim_RasterPos4sv(s16 *v) {
    s64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    sp0 = (s64) v;
    if (__glBeginMode != 0) {
        sp0 = (s64) v;
        if (__glBeginMode != 2) {
            __glSetError(GL_INVALID_OPERATION);
            return;
        }
        temp_s0->validate(temp_s0);
        __glBeginMode = 0;
        goto block_4;
    }
block_4:
    __glim_RasterPos4sv((s16 *) sp0);
    if (temp_s0->fastMode != 0) {
        if (temp_s0->modes.rgbMode != 0) {
            __glexpim_Color4f(temp_s0->state.current.userColor.r, temp_s0->state.current.userColor.g, temp_s0->state.current.userColor.b, temp_s0->state.current.userColor.a);
        } else {
            __glexpim_Indexf(temp_s0->state.current.userColorIndex);
        }
    }
    HQ2_FIFO.pad2414.w = (bitwise u32) (f32) sp0->unk0;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk2;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk4;
    HQ2_FIFO.data_port.w = (bitwise u32) (f32) sp0->unk6;
}
