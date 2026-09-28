s64 RRM_Dispatch(void *, u32, s64, s64);            /* extern */
? RRM_Exit(void *);                                 /* extern */
? RRM_Init(s64);                                    /* extern */
s64 RRM_ValidFault(void *, s64);                    /* extern */
? RRM_init_panes(s64);                              /* extern */
void *allocb(u32, ?, s32);                          /* extern */
? bcopy(s32 *, s32 *, u32);                         /* extern */
s32 bufcall(s32, ?, ?, s32 *);                      /* extern */
s32 canput(? (***)(?, s32));                        /* extern */
? cleargfxsched_thread(u32);                        /* extern */
? cmn_err(?, ?, void *, s64);                       /* extern */
? cn_init(?, ?);                                    /* extern */
s32 copyin(s64, u32 *, ?);                          /* extern */
s32 curproc();                                      /* extern */
? curthreadgroup_scan(?, u32 *, s64, s32 *);        /* extern */
u64 curthreadhandle(void *);                        /* extern */
? ddv_destroy_handle(s32);                          /* extern */
? ddv_lock(s32);                                    /* extern */
? ddv_unlock(s32);                                  /* extern */
? delay(?);                                         /* extern */
s64 drv_priv(s64);                                  /* extern */
? flushq(?, u8, s32);                               /* extern */
? freemsg(s64, s64);                                /* extern */
? freesema(void *);                                 /* extern */
s32 getemajor(s32, s32, s64, s64);                  /* extern */
s32 getq(void *);                                   /* extern */
s32 gfxdd_lookup(s32);                              /* extern */
? init_sema(? *, ?, void *, ?);                     /* extern */
? init_sv(s32, ?, void *, ?);                       /* extern */
void *kern_calloc(s64, ?);                          /* extern */
? kern_free(s32 *);                                 /* extern */
? ksym_add(void *, void *, ?, s64);                 /* extern */
s32 makedevice(s32, s32);                           /* extern */
? nano_delay(void *);                               /* extern */
s64 proc_name(s32);                                 /* extern */
s64 proc_pid(s32);                                  /* extern */
s64 processors_configured();                        /* extern */
? psema(? *, ?, s64, s64);                          /* extern */
? psignal(s32, s32);                                /* extern */
? putbq(void *, s32);                               /* extern */
? putq(s32, void *, s32, void *);                   /* extern */
? qreply(void *, void *, ?);                        /* extern */
? rrmUnMapGfx(s64);                                 /* extern */
? setgfxsched_thread(u64);                          /* extern */
? sleep(s32 *, ?);                                  /* extern */
? spinlock_destroy(void *);                         /* extern */
? spinlock_init(? *, void *);                       /* extern */
? streams_lock();                                   /* extern */
? streams_unlock();                                 /* extern */
? sv_destroy(s32);                                  /* extern */
? sv_signal(void *);                                /* extern */
? sv_wait(void *, ?, void *, s32);                  /* extern */
s32 threadgroup_refcnt(u32);                        /* extern */
s32 threadhandle_to_proc(s32, s32);                 /* extern */
u32 threadhandle_to_threadgrouphandle(s64);         /* extern */
s32 valusema(void *, s32, s32);                     /* extern */
? vsema(void *, void *);                            /* extern */
? wakeup(s32 *);                                    /* extern */
void GfxListReaderLock(void *arg0, ?, s32);         /* static */
void GfxListReaderUnlock(void *arg0);               /* static */
s64 GfxListWriterLock(s32 *arg0, s32, void *, void *); /* static */
void GfxListWriterUnlock(s32 *arg1, s32, s32 *, s64); /* static */
s32 gthread_attach_group(u32 *arg0, u32 *arg1);     /* static */
extern ? .srdata;
extern ? GfxBoardLimit;
extern ? GfxDevLimit;
extern ? __sbss0;
extern s32 __sbss10;
extern ? __sbss14;
extern s32 __sbss18;
extern ? __sbss1C;
extern void *__sbss24;
extern ? __sbss8;
extern s32 __sdata4;
extern void *__sdata8;
extern void *__sdataC;

void gfxtable_readerlock(s32 *arg0) {
    s32 temp_a0;

    temp_a0 = splhi();
    *arg0 += 1;
    splx(temp_a0);
}

void gfxtable_readerunlock(s32 *arg0) {
    s32 temp_a0;

    temp_a0 = splhi();
    *arg0 -= 1;
    splx(temp_a0);
}

void gfxtable_writerlock(s32 *arg0) {
    s32 var_v0;

    var_v0 = splhi();
    if (*arg0 > 0) {
        do {
            splx(var_v0);
            nano_delay(sp);
            var_v0 = splhi();
        } while (*arg0 > 0);
    }
}

void gfxtable_writerunlock(s32 arg1) {
    splx(arg1);
}

void init_gfx_group_table(void) {
    void *temp_v0;
    void *var_a0;

    if (__sdataC == NULL) {
        temp_v0 = kern_malloc(0x40U);
        var_a0 = temp_v0;
        __sdataC = temp_v0;
        if (temp_v0 == NULL) {
            cmn_err(0, 0);
            var_a0 = __sdataC;
        }
        bzero(var_a0, 0x40U);
        spinlock_init(&__sbss1C, &.srdata + 0x10);
        __sbss18 = 0;
    }
}

u32 *gfx_group_find(void) {
    s32 temp_a0;
    s32 var_s7;
    u32 *var_s1;
    u32 temp_v0;

    temp_v0 = threadhandle_to_threadgrouphandle();
    temp_a0 = temp_v0 & 0xF;
    if (temp_a0 != 0) {
        var_s7 = temp_a0;
    } else {
        var_s7 = (temp_v0 >> 0xC) & 0xF;
    }
    gfxtable_readerlock(&__sbss18);
    var_s1 = *((var_s7 * 4) + __sdataC);
    if ((var_s1 != NULL) && (*var_s1 != temp_v0)) {
loop_4:
        var_s1 = var_s1->unk10;
        if (var_s1 != NULL) {
            if (*var_s1 != temp_v0) {
                goto loop_4;
            }
        }
    }
    gfxtable_readerunlock(&__sbss18);
    return var_s1;
}

u32 *gfx_group_create(u64 arg0) {
    s32 temp_v0_3;
    s32 temp_v1;
    u32 *temp_v0;
    u32 *var_v0;
    u32 temp_v0_2;

    unksp18 = arg0;
    temp_v0 = kern_malloc(0x14U);
    if (temp_v0 == NULL) {
        var_v0 = NULL;
    } else {
        temp_v0_2 = threadhandle_to_threadgrouphandle(unksp18);
        temp_v0->unk4 = 0;
        temp_v0->unk0 = temp_v0_2;
        spinlock_init(temp_v0 + 0xC, &.srdata + 0x18);
        temp_v0->unk8 = 0;
        if (temp_v0->unk0 & 0xF) {

        }
        temp_v0_3 = gfxtable_writerlock(&__sbss18);
        temp_v1 = subroutine_arg0 * 4;
        temp_v0->unk10 = (s32) *(__sdataC + temp_v1);
        *(__sdataC + temp_v1) = temp_v0;
        gfxtable_writerunlock((s32) subroutine_arg2, temp_v0_3);
        var_v0 = temp_v0;
    }
    return var_v0;
}

void gfx_group_destroy(u32 *arg0) {
    s64 sp0;
    s32 **var_a5;
    s32 *var_a4;
    s32 *var_s0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a6_2;
    s32 var_s3;
    u32 temp_a6;

    temp_a6 = *arg0;
    temp_a1 = temp_a6 & 0xF;
    var_s0 = NULL;
    if (temp_a1 != 0) {
        var_s3 = temp_a1;
        sp0 = (s64) arg0;
    } else {
        sp0 = (s64) arg0;
        var_s3 = (temp_a6 >> 0xC) & 0xF;
    }
    var_a5 = __sdataC + (var_s3 * 4);
    var_a4 = *var_a5;
    temp_a1_2 = gfxtable_writerlock(&__sbss18, temp_a1);
    if ((*var_a5 != NULL) && (temp_a6_2 = *sp0, (*var_a4 != temp_a6_2))) {
loop_4:
        var_a5 = var_a4 + 0x10;
        var_a4 = var_a4->unk10;
        if (var_a4 != NULL) {
            if (*var_a4 == temp_a6_2) {
                goto block_6;
            }
            goto loop_4;
        }
    } else {
block_6:
        if (var_a4 != NULL) {
            var_s0 = var_a4;
            *var_a5 = var_a4->unk10;
        }
    }
    gfxtable_writerunlock((s32) &__sbss18, temp_a1_2);
    if (var_s0 != NULL) {
        spinlock_destroy(var_s0 + 0xC);
        kern_free(var_s0);
    }
}

void init_gthread_table(void) {
    void *temp_v0;
    void *var_a0;

    if (__sdata8 == NULL) {
        temp_v0 = kern_malloc(0x40U);
        var_a0 = temp_v0;
        __sdata8 = temp_v0;
        if (temp_v0 == NULL) {
            cmn_err(0, 0);
            var_a0 = __sdata8;
        }
        bzero(var_a0, 0x40U);
        spinlock_init(&__sbss14, &.srdata + 0x10);
        __sbss10 = 0;
    }
}

u32 *gthread_create(u64 arg0) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_v0_3;
    u32 *temp_v0;
    u32 *temp_v0_2;
    u32 *var_v0;

    unksp10 = arg0;
    temp_v0 = kern_malloc(0x14U);
    if (temp_v0 == NULL) {
        var_v0 = NULL;
    } else {
        temp_v0->unkC = 0;
        temp_v0->unk8 = 0;
        temp_v0->unk4 = 0;
        temp_v0->unk0 = (u32) unksp10;
        temp_v0_2 = gfx_group_find(unksp10);
        if (temp_v0_2 != NULL) {
            gthread_attach_group(temp_v0, temp_v0_2);
        }
        temp_a1 = gfxtable_writerlock(&__sbss10);
        temp_a3 = ((unksp10 >> 8) & 0xFF) * 0x1D;
        temp_a2 = ((unksp10 >> 0x10) & 0xFF) ^ temp_a3;
        temp_v0_3 = (((unksp10 >> 0x18) ^ (temp_a2 * 0x1D)) & 0xF) * 4;
        temp_v0->unk10 = (s32) *(__sdata8 + temp_v0_3);
        *(__sdata8 + temp_v0_3) = temp_v0;
        gfxtable_writerunlock((s32) subroutine_arg0, temp_a1, temp_a2, temp_a3);
        var_v0 = temp_v0;
    }
    return var_v0;
}

void gthread_destroy(u32 arg0) {
    s32 **var_a4;
    s32 *var_a0;
    s32 *var_s0;
    s32 temp_a1;
    s32 var_a2;

    var_s0 = NULL;
    temp_a1 = gfxtable_writerlock(&__sbss10);
    var_a2 = (arg0 >> 8) & 0xFF;
    var_a4 = __sdata8 + ((((arg0 >> 0x18) ^ ((((arg0 >> 0x10) & 0xFF) ^ (var_a2 * 0x1D)) * 0x1D)) & 0xF) * 4);
    var_a0 = *var_a4;
    if ((*var_a4 != NULL) && (var_a2 = *var_a0, (var_a2 != arg0))) {
loop_2:
        var_a4 = var_a0 + 0x10;
        var_a0 = var_a0->unk10;
        if (var_a0 != NULL) {
            if (*var_a0 == arg0) {
                goto block_4;
            }
            goto loop_2;
        }
    } else {
block_4:
        if (var_a0 != NULL) {
            var_s0 = var_a0;
            *var_a4 = var_a0->unk10;
        }
    }
    gfxtable_writerunlock((s32) &__sbss10, temp_a1, var_a2);
    if (var_s0 != NULL) {
        kern_free(var_s0);
    }
}

s32 gthread_attach_list(void *arg0, s32 *arg1) {
    s64 sp10;
    s64 sp0;
    s32 *var_s0;
    s32 var_v0;
    s64 temp_v0;
    void *var_a0;

    var_a0 = arg0;
    var_s0 = arg1;
    if (arg1 != NULL) {
        *var_s0 += 1;
        goto block_2;
    }
    sp10 = (s64) var_a0;
    temp_v0 = kern_malloc(0x14U);
    sp0 = temp_v0;
    var_s0 = (s32 *) temp_v0;
    if (temp_v0 == 0) {
        var_v0 = 0;
    } else {
        sp0->unk4 = 0;
        sp0->unk10 = 0;
        sp0->unk0 = 1;
        init_sv(sp0 + 8, 0, &.srdata + 0x20, -1);
        spinlock_init(sp0 + 0xC, &.srdata + 0x28);
        var_a0 = (void *) sp10;
block_2:
        var_v0 = 1;
        var_a0->unk8 = var_s0;
    }
    return var_v0;
}

s32 gthread_detach_list(u32 *arg0) {
    s64 sp0;
    s32 *temp_v0;
    s32 temp_at;

    temp_v0 = arg0->unk8;
    arg0->unk8 = NULL;
    sp0 = (s64) temp_v0;
    temp_at = *temp_v0 - 1;
    *temp_v0 = temp_at;
    if (temp_at == 0) {
        spinlock_destroy(sp0 + 0xC);
        sv_destroy(sp0 + 8);
        kern_free((s32 *) sp0);
    }
    return 1;
}

s32 gthread_attach_group(u32 *arg0, u32 *arg1) {
    s32 temp_a0;

    temp_a0 = splhi();
    arg1->unk4 = (s32) (arg1->unk4 + 1);
    splx(temp_a0);
    arg0->unkC = arg1;
    return 1;
}

s32 gthread_detach_group(u32 *arg0) {
    s64 sp0;
    s32 temp_a0;
    void *temp_v0;

    temp_v0 = arg0->unkC;
    if (temp_v0 == NULL) {
        return 0;
    }
    sp0 = (s64) temp_v0;
    arg0->unkC = NULL;
    temp_a0 = splhi();
    temp_v0->unk4 = (s32) (temp_v0->unk4 - 1);
    splx(temp_a0);
    return 1;
}

u32 *gthread_find(u64 arg0) {
    u32 *var_s5;

    gfxtable_readerlock(&__sbss10);
    var_s5 = *(((((((((arg0 >> 8) & 0xFF) * 0x1D) ^ ((arg0 >> 0x10) & 0xFF)) * 0x1D) ^ (arg0 >> 0x18)) & 0xF) * 4) + __sdata8);
    if ((var_s5 != NULL) && (*var_s5 != arg0)) {
loop_2:
        var_s5 = var_s5->unk10;
        if (var_s5 != NULL) {
            if (*var_s5 != arg0) {
                goto loop_2;
            }
        }
    }
    gfxtable_readerunlock(&__sbss10);
    return var_s5;
}

void *gthread_find_gfxp(void) {
    u32 *temp_v0;
    void *temp_a2;
    void *var_v0;

    temp_v0 = gthread_find();
    if ((temp_v0 != NULL) && (temp_a2 = temp_v0->unk8, (temp_a2 != NULL))) {
        var_v0 = temp_a2->unk10;
    } else {
        var_v0 = NULL;
    }
    return var_v0;
}

s64 gthread_scan(s64 arg0, s64 arg1) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 var_s2;
    s64 temp_v0;
    s64 temp_v1;
    s64 var_v0;
    void *var_s0;

    sp20 = arg1;
    sp18 = arg0;
    if (((s32 (*)(?, ?)) arg0)(0, 0) != 0) {
        var_v0 = 0;
    } else {
        gfxtable_readerlock(&__sbss10);
        sp28 = 0;
        var_s2 = 0;
loop_5:
        var_s0 = *(__sdata8 + var_s2);
        var_s2 += 4;
        if (var_s0 != NULL) {
loop_6:
            if (var_s0->unk4 & 4) {
                goto block_7;
            }
            temp_v0 = ((s64 (*)(void *, s64, ?)) sp18)(var_s0, sp20, 1);
            sp10 = temp_v0;
            if (temp_v0 == 0) {
block_7:
                var_s0 = var_s0->unk10;
                if (var_s0 == NULL) {
                    goto block_4;
                }
                goto loop_6;
            }
            gfxtable_readerunlock((s32 *) subroutine_arg0);
            var_v0 = sp10;
        } else {
block_4:
            temp_v1 = sp28 + 1;
            sp28 = temp_v1;
            if (temp_v1 < 0x10) {
                goto loop_5;
            }
            gfxtable_readerunlock((s32 *) subroutine_arg0);
            var_v0 = ((s64 (*)(?, s64, ?)) sp18)(0, sp20, 2);
        }
    }
    return var_v0;
}

s32 GfxRegisterBoard(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    void *temp_v0;

    sp10 = arg1;
    if (__sdata4 >= GfxBoardLimit.unk7800) {
        cmn_err(4, 0);
        return -1;
    }
    temp_v0 = kern_malloc(0x24U);
    *(__sdata4 * 4) = temp_v0;
    bzero(temp_v0, 0x24U);
    (*(__sdata4 * 4))->unk1C = (s32) subroutine_arg0;
    (*(__sdata4 * 4))->unk20 = (s32) sp10;
    **(__sdata4 * 4) = (s32) subroutine_arg2;
    (*(__sdata4 * 4))->unkC = (s32) __sdata4;
    __sdata4 += 1;
    RRM_Init(sp10);
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
s32 gfx_disp(void) {
    s32 (*temp_v0_2)(void *);
    s32 temp_a1;
    s32 temp_a2;
    s32 var_v0;
    u32 *temp_v0;
    void *temp_a0;
    void *temp_a3;
    void *temp_v0_3;
    void *var_s1;
    void *var_v0_2;

    temp_v0 = gthread_find();
    if ((temp_v0 != NULL) && (temp_a3 = temp_v0->unk8, (temp_a3 != NULL))) {
        var_v0_2 = temp_a3->unk10;
    } else {
        var_v0_2 = NULL;
    }
    var_s1 = var_v0_2;
    if (var_v0_2 != NULL) {
loop_13:
        temp_a0 = var_s1->unk10;
        if (temp_a0 != NULL) {
            if (temp_a0->unk3C > 0) {
                temp_v0_2 = temp_a0->unk44;
                if (temp_v0_2 != NULL) {
                    if (temp_v0_2(temp_a0) == 0) {
                        goto block_6;
                    }
                    goto block_8;
                }
block_6:
                var_v0 = 0;
                if (!(var_s1->unk18 & 3)) {
                    var_v0 = 0;
                    if (temp_a0->unk28 != var_s1) {
                        goto block_8;
                    }
                }
            } else {
block_8:
                temp_v0_3 = temp_v0->unkC;
                if (temp_v0_3 != NULL) {
                    if (!(var_s1->unk18 & 8)) {
                        if ((temp_a0->unk28 == var_s1) && (temp_a0->unk2C == 0) && (temp_a1 = temp_v0->unk4 & 4, (temp_a1 == 0)) && (temp_a2 = temp_a0->unk48, (temp_a2 == 0)) && (temp_v0_3->unk8 != 0) && (valusema(temp_a0 + 0x20, temp_a1, temp_a2) < 0)) {
                            var_v0 = 0;
                        } else {
                            goto block_12;
                        }
                    } else {
                        goto block_12;
                    }
                } else {
                    goto block_12;
                }
            }
        } else {
block_12:
            var_s1 = var_s1->unk8;
            if (var_s1 != NULL) {
                goto loop_13;
            }
            goto block_20;
        }
    } else {
block_20:
        var_v0 = 1;
    }
    return var_v0;
}

s32 gfx_fault(void *arg1, s64 arg2) {
    s64 sp20;
    s32 var_v0;
    s64 temp_v0_2;
    u32 *temp_v0;

    unksp8 = arg2;
    temp_v0 = gthread_find(curthreadhandle());
    if (temp_v0 != NULL) {
        if ((temp_v0->unkC != 0) && !(arg1->unk18 & 8)) {
            psema(arg1 + 0x2C, 0x19);
        }
        if (arg1->unk18 & 1) {
            arg1->unkC->unk38(arg1);
        }
        temp_v0_2 = RRM_ValidFault(arg1, unksp8);
        if ((temp_v0->unkC != 0) && !(arg1->unk18 & 8)) {
            sp20 = temp_v0_2;
            vsema(arg1 + 0x2C);
        }
        if (temp_v0_2 >= 0) {
            var_v0 = 0;
        } else {
            var_v0 = 1;
        }
    } else {
        var_v0 = 1;
    }
    return var_v0;
}

s32 gfx_exit(void) {
    ? (*temp_a3)(void *);
    ? (*temp_a3_2)(void *);
    s32 temp_s1;
    u32 *temp_v0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *var_s0;
    void *var_s0_2;
    void *var_v0;

    temp_v0 = gthread_find(curthreadhandle());
    if (temp_v0 != NULL) {
        temp_a0 = temp_v0->unk8;
        temp_v0->unk4 = (s32) (temp_v0->unk4 | 4);
        if (temp_v0->unkC != 0) {
            if (temp_a0 != NULL) {
                GfxListReaderLock(temp_a0);
                temp_a0_2 = temp_v0->unk8;
                var_s0 = temp_a0_2->unk10;
                if ((var_s0 == NULL) || (var_s0->unk18 & 8)) {
                    GfxListReaderUnlock(temp_a0_2);
                } else {
                    splhi();
                    if (threadgroup_refcnt(subroutine_arg2->unk0) == 1) {
loop_26:
                        temp_v0_2 = var_s0->unk10;
                        if ((temp_v0_2 != NULL) && (temp_v0_2->unk28 == var_s0)) {
                            temp_a3 = var_s0->unkC->unk60;
                            temp_s1 = splhi();
                            if (temp_a3 != NULL) {
                                temp_a3(var_s0);
                            }
                            temp_a1 = var_s0->unk10;
                            temp_a1->unk28 = 0;
                            vsema(var_s0->unk10 + 0x20, temp_a1);
                            splx(temp_s1);
                        }
                        var_s0 = var_s0->unk8;
                        if (var_s0 != NULL) {
                            goto loop_26;
                        }
                    }
                    splx((s32) subroutine_arg0);
                    GfxListReaderUnlock(subroutine_arg2->unk8);
                }
            }
        } else {
            if (temp_a0 != NULL) {
                var_v0 = temp_a0->unk10;
            } else {
                var_v0 = NULL;
            }
            var_s0_2 = var_v0;
            if (var_v0 != NULL) {
loop_12:
                temp_v0_3 = var_s0_2->unkC;
                if (temp_v0_3 != NULL) {
                    temp_a3_2 = temp_v0_3->unk1C;
                    if (temp_a3_2 != NULL) {
                        temp_a3_2(var_s0_2);
                    }
                }
                var_s0_2 = var_s0_2->unk8;
                if (var_s0_2 != NULL) {
                    goto loop_12;
                }
            }
        }
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x28, 0x2c], gap at: 0x18. */
void gfx_shcheck(s64 arg0) {
    ? (*temp_a3)(void *);
    s32 *temp_s1;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a1;
    s64 var_v0;
    u32 *temp_v0;
    u32 *var_s0;
    void *temp_a0_2;
    void *temp_a1_2;
    void *temp_a2;
    void *temp_v0_2;
    void *temp_v0_3;
    void *var_a0;
    void *var_s2;
    void *var_s2_2;
    void *var_s4;

    unksp20 = arg0;
    temp_v0 = gthread_find();
    var_s0 = temp_v0;
    if (temp_v0 != NULL) {
        temp_s1 = temp_v0->unk8;
        if (temp_s1 == NULL) {
            goto block_2;
        }
        GfxListWriterLock(temp_s1);
        if (temp_s1 != NULL) {
            var_s4 = temp_s1->unk10;
        } else {
block_2:
            var_s4 = NULL;
        }
        var_s2 = var_s4;
        if (var_s4 != NULL) {
            var_v0 = 1;
            if (!(var_s4->unk18 & 8)) {
                if (!(var_s0->unk4 & 2)) {
                    temp_a2 = var_s0->unkC;
                    temp_a0 = splhi();
                    temp_a1 = temp_a2->unk8 - 1;
                    temp_a2->unk8 = temp_a1;
                    splx(temp_a0, temp_a1, temp_a2);
                }
                unksp18 = var_s0->unkC->unk8 == 0;
                gthread_detach_list(var_s0);
                gthread_detach_group(var_s0);
                cleargfxsched_thread(var_s0->unk0);
                var_s0 = NULL;
                var_v0 = unksp18;
            }
        } else {
            var_v0 = 0;
        }
        if ((var_v0 != 0) && (var_s4 != NULL)) {
loop_10:
            temp_v0_2 = var_s2->unk10;
            if ((temp_v0_2 != NULL) && (temp_v0_2->unk28 == var_s2) && (temp_v0_2->unk2C == 0)) {
                temp_a3 = var_s2->unkC->unk60;
                unksp10 = splhi();
                if (temp_a3 != NULL) {
                    temp_a3(var_s2);
                }
                temp_a1_2 = var_s2->unk10;
                temp_a1_2->unk28 = 0;
                vsema(var_s2->unk10 + 0x20, temp_a1_2);
                splx((s32) unksp10);
            }
            var_s2 = var_s2->unk8;
            if (var_s2 != NULL) {
                goto loop_10;
            }
        }
        if (temp_s1 != NULL) {
            GfxListWriterUnlock(temp_s1, subroutine_arg0);
        }
        if (var_s0 != NULL) {
            temp_v0_3 = var_s0->unk8;
            var_a0 = NULL;
            if (temp_v0_3 != NULL) {
                temp_a0_2 = temp_v0_3->unk10;
                if ((temp_a0_2 == NULL) || (temp_a0_2->unk18 & 8)) {
                    var_a0 = NULL;
                    if (temp_v0_3 != NULL) {
                        var_a0 = temp_v0_3->unk10;
                    }
                    goto block_22;
                }
            } else {
block_22:
                var_s2_2 = var_a0;
                if (var_a0 != NULL) {
loop_27:
                    temp_a0_3 = var_s2_2->unk14;
                    if (temp_a0_3 != 0) {
                        ddv_destroy_handle(temp_a0_3);
                    }
                    var_s2_2->unk14 = 0;
                    var_s2_2 = var_s2_2->unk8;
                    if (var_s2_2 != NULL) {
                        goto loop_27;
                    }
                }
                if (var_s0->unk8 != NULL) {
                    var_s0->unk8->unk10 = 0;
                }
                gthread_detach_list(var_s0);
                gthread_detach_group(var_s0);
                cleargfxsched_thread(var_s0->unk0);
                gthread_destroy(var_s0->unk0);
            }
        } else {
            gthread_destroy((u32) unksp20);
        }
    }
}

void gfx_shdup(s64 arg1) {
    u32 *temp_v0;
    u32 *temp_v0_3;
    void *temp_a5;
    void *temp_v0_2;

    temp_v0 = gthread_find();
    if (temp_v0 != NULL) {
        temp_a5 = temp_v0->unk8;
        if (temp_a5 != NULL) {
            temp_v0_2 = temp_a5->unk10;
            if (temp_v0_2 != NULL) {
                if (temp_v0_2->unk18 & 8) {

                } else {
                    temp_v0_3 = gthread_create(subroutine_arg2);
                    if (temp_v0_3 != NULL) {
                        gthread_attach_list((s64) temp_v0_3, subroutine_arg0->unk8);
                        setgfxsched_thread(subroutine_arg2);
                    }
                }
            }
        }
    }
}

s32 GfxKiller(void *arg0, s64 arg1, s32 arg2, s32 arg3) {
    s64 sp10;
    s64 sp0;
    s32 temp_a1;
    s32 var_a3;
    s64 var_ra;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *var_a0;
    void *var_a1;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    sp0 = arg1;
    if ((arg2 != 0) && (arg2 != 2)) {
        if (arg2 == 1) {
            temp_a0 = sp0->unk8;
            if (temp_a0 != NULL) {
                if ((temp_a0 != arg0) || (var_a3 = temp_a0->unkC, (var_a3 != arg0->unkC))) {
                    goto block_6;
                }
            } else {
block_6:
                temp_a0_2 = arg0->unk8;
                if (arg0->unkC != 0) {
                    var_a1 = NULL;
                    if (temp_a0_2 != NULL) {
                        GfxListReaderLock(temp_a0_2, 0, var_a3);
                        var_ra = sp10;
                        goto block_9;
                    }
                } else {
block_9:
                    var_a1 = NULL;
                    if (arg0->unk8 != NULL) {
                        var_a1 = arg0->unk8->unk10;
                    }
                }
                var_a0 = var_a1;
                if (var_a1 != NULL) {
                    temp_a1 = sp0->unk4;
loop_14:
                    if (var_a0->unk10 == temp_a1) {
                        sp10 = var_ra;
                        psignal(threadhandle_to_proc(arg0->unk0, temp_a1), sp0->unk0);
                        var_ra = sp10;
                    } else {
                        var_a0 = var_a0->unk8;
                        if (var_a0 != NULL) {
                            goto loop_14;
                        }
                    }
                }
                if (arg0->unkC != 0) {
                    temp_a0_3 = arg0->unk8;
                    if (temp_a0_3 != NULL) {
                        sp10 = var_ra;
                        GfxListReaderUnlock(temp_a0_3);
                    }
                }
            }
        }
    }
    return 0;
}

void gfxcleanup(void *arg0) {
    if (arg0->unk1C == 0) {
        kern_free();
    }
}

s32 GfxOpen(s64 arg0, s64 arg1, s32 arg3) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    u32 *sp8;
    s32 *sp4;
    s32 sp0;
    s32 temp_a1;
    s32 var_a0;
    void *temp_v0;
    void *temp_v0_2;
    void *var_a0_2;
    void *var_v0;

    sp18 = arg0;
    sp20 = arg1;
    if (arg3 != 2) {
        goto block_1;
    }
    temp_v0 = gthread_find_gfxp(curthreadhandle());
    var_a0_2 = temp_v0;
    if (temp_v0 != NULL) {
        if (temp_v0->unk8 != NULL) {
            var_v0 = var_a0_2->unk8;
            do {
                var_a0_2 = var_v0;
                var_v0 = var_v0->unk8;
            } while (var_v0 != NULL);
        }
        sp10 = (s64) var_a0_2;
        if (var_a0_2->unk10 == 0) {
            goto block_1;
        }
        sp0 = 9;
        sp4 = sp10->unk10;
        sp8 = gthread_find(curthreadhandle(var_a0_2));
        gthread_scan(0, (s64) sp);
        streams_unlock();
        if (sp10->unk10->unk8 != 0) {
            do {
                delay(0x64);
            } while (sp10->unk10->unk8 != 0);
        }
        streams_lock();
        temp_v0_2 = sp10->unk0;
        if (temp_v0_2->unk4 != 0) {
            var_a0 = 1;
        } else {
            temp_v0_2->unk4 = (s32) sp10;
            *sp10->unk10 = (s32) sp10;
            RRM_init_panes(sp10);
            sp10->unk0->unk10 = (s32) sp18;
            sp10->unk0->unk14 = (s32) (sp18 + 0x48);
            sp18->unk5C = (s32) sp10;
            sp18->unk14 = (s32) sp10;
            temp_a1 = sp10->unk1C | 1;
            sp10->unk1C = temp_a1;
            var_a0 = 0;
            *sp20 = makedevice(getemajor(*sp20, temp_a1, sp10, sp18), sp10->unk0->unkC);
        }
    } else {
block_1:
        var_a0 = 0x13;
    }
    return var_a0;
}

void GfxUnmanage(void *arg0) {
    s32 sp10;
    ? (*temp_a3)(void *);
    ? (*temp_a3_2)(void *);
    s64 var_ra;
    void *temp_a1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;

    var_ra = saved_reg_ra;
    temp_v0 = arg0->unk10;
    if (temp_v0->unk28 != arg0) {
        psema(temp_v0 + 0x20, 0x219);
        arg0->unk10->unk28 = arg0;
        var_ra = unksp28;
        if (arg0->unk10->unk3C != 0) {
            do {
                us_delay(2);
            } while (arg0->unk10->unk3C != 0);
            var_ra = unksp28;
        }
    }
    temp_v0_2 = arg0->unk0;
    if (temp_v0_2 != NULL) {
        temp_v0_2->unk4 = 0;
        arg0->unk10->unk0 = 0;
        arg0->unk0->unk10 = 0;
        unksp28 = var_ra;
        arg0->unk0->unk14 = 0;
    }
    unksp28 = var_ra;
    gthread_find(curthreadhandle());
    gthread_scan(0, (s64) sp);
    temp_v0_3 = arg0->unk10->unk28;
    if (arg0->unk0->unkC != 0) {
        if (temp_v0_3 == arg0) {
            temp_a3 = arg0->unkC->unk60;
            unksp20 = splhi();
            if (temp_a3 != NULL) {
                temp_a3(arg0);
            }
            temp_a1 = arg0->unk10;
            temp_a1->unk28 = NULL;
            vsema(arg0->unk10 + 0x20, temp_a1);
            splx((s32) unksp20);
        }
    } else {
        if (temp_v0_3 == arg0) {
            temp_a3_2 = arg0->unkC->unk60;
            sp10 = splhi();
            if (temp_a3_2 != NULL) {
                temp_a3_2(arg0);
            }
        }
        cn_init(0, 1);
        temp_v0_4 = arg0->unk10;
        if (temp_v0_4->unk28 == arg0) {
            temp_v0_4->unk28 = NULL;
            vsema(arg0->unk10 + 0x20);
            splx(sp10);
        }
    }
}

s32 GfxClose(void *arg0) {
    void *temp_a0;
    void *temp_s0;

    temp_s0 = arg0->unk14;
    if (temp_s0->unk10 == 0) {
        temp_a0 = temp_s0->unk0;
        if ((temp_a0 != NULL) && (temp_a0->unk4 == temp_s0)) {
            GfxUnmanage(temp_s0);
        }
    }
    temp_s0->unk1C = (s32) (temp_s0->unk1C & ~1);
    gfxcleanup(temp_s0);
    return 0;
}

s32 GfxProto(void *arg0, void *arg1, ? arg3) {
    s64 sp8;
    s64 sp0;
    ? var_a3;
    void *temp_a2;
    void *temp_a5;
    void *temp_a6;
    void *temp_a7;

    var_a3 = arg3;
    temp_a7 = arg1->unkC;
    temp_a2 = temp_a7->unk0;
    temp_a5 = arg0->unk14;
    if ((temp_a2 != (void *)0x66) && (var_a3 = 0x53480000, (temp_a2 != (void *)0x53484951))) {
        if (temp_a2 == (void *)0x53484D51) {
            temp_a5->unk0->unk18 = (s16) temp_a7->unk4;
            temp_a5->unk0->unk1A = (s16) temp_a7->unk6;
            temp_a7->unk0 = (void *)0x514D4853;
            qreply(arg0, temp_a2, 0x53484D51);
        } else {
            sp0 = (s64) arg1;
            cmn_err(4, 0, temp_a2, 0x53484D51);
            freemsg(sp0);
        }
    } else {
        temp_a6 = temp_a5->unkC;
        sp8 = (s64) arg0;
        if ((temp_a6 != NULL) && (sp0 = (s64) arg1, (temp_a6->unk18(temp_a5->unk10, (s32) temp_a7->unk4, temp_a7->unk8, var_a3) != 0))) {
            arg1->unk14->unk12 = 0x8A;
            qreply((void *) sp8, arg1);
        } else {
            freemsg((s64) arg1, (s64) arg1);
        }
    }
    return 0;
}

s32 GfxWput(void *arg1, ? arg3) {
    s64 sp0;
    ? var_a3;
    s32 temp_a3;
    s32 var_v0;
    u8 temp_a2;

    var_a3 = arg3;
    temp_a2 = arg1->unk14->unk12;
    sp0 = (s64) arg1;
    if ((temp_a2 != 1) && (var_a3 = 0x83, (temp_a2 != 0x83))) {
        if (temp_a2 != 0x86) {
            cmn_err(4, 0, (void *) temp_a2, sp0);
        } else {
            temp_a3 = *sp0->unkC & 2;
            if (temp_a3 != 0) {
                flushq(0, temp_a2, temp_a3);
            }
        }
        freemsg(sp0);
        var_v0 = 0;
    } else {
        var_v0 = GfxProto((void *) sp0, (void *) temp_a2, var_a3);
    }
    return var_v0;
}

void sendMsg(void *arg0, s32 *arg1) {
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    void *temp_a3;
    void *temp_s5;
    void *var_a1;

    temp_a3 = arg1->unk0->unk4;
    if ((temp_a3 != NULL) && (temp_a3->unk1C & 1)) {
        temp_s5 = arg0->unk10;
        arg0->unk10 = (void *) ((arg1->unk8 * 0xC) + temp_s5);
        bzero(temp_s5, arg1->unk8 * 0xC);
        temp_s5->unk2 = (s16) arg1->unk0->unk1A;
        var_a2 = arg1->unk8;
        temp_s5->unk5 = (s8) var_a2;
        var_a0 = arg1->unk8 - 1;
        var_a3 = var_a0 * 3;
        if (var_a0 != -1) {
            var_a1 = (var_a0 * 4) + arg1;
            var_a3 = (s32) ((var_a0 * 0xC) + temp_s5);
            do {
                var_a3->unk0 = (s16) arg1->unk0->unk18;
                var_a3->unk4 = (s8) arg1->unk0->unk1A;
                var_a3 -= 0xC;
                var_a3->unk12 = (u8) arg1->unk4;
                var_a1 -= 4;
                var_a2 = var_a1->unk10;
                var_a0 -= 1;
                var_a3->unk14 = var_a2;
            } while (var_a0 != -1);
        }
        putq(arg1->unk0->unk10, arg0, var_a2, (void *) var_a3);
    }
}

s32 GfxDelayedMessage(s32 *arg0) {
    s32 temp_a2;
    s32 var_v0;
    void *temp_v0;

    temp_a2 = arg0->unk8;
    temp_v0 = allocb(temp_a2 * 0xC, 3, temp_a2);
    if (temp_v0 == NULL) {
        if (bufcall(arg0->unk8 * 0xC, 3, 0, arg0) != 0) {
            var_v0 = 1;
        } else {
            cmn_err(4, 0);
            goto block_4;
        }
    } else {
        sendMsg(temp_v0, arg0);
block_4:
        wakeup(arg0);
        kern_free(arg0);
        var_v0 = 0;
    }
    return var_v0;
}

s32 GfxSendMessage(s32 *arg0, s32 arg1) {
    s32 *var_s1;
    s32 var_s2_2;
    s32 var_v0;
    u32 var_s2;
    void *temp_v0;

    if (arg0 != NULL) {
        if (arg1 == 0) {
            streams_lock();
        }
        var_s1 = NULL;
        var_s2 = arg0->unk8 * 0xC;
        temp_v0 = allocb(var_s2, 3);
        if (temp_v0 == NULL) {
            if (arg1 == 0) {
                var_s2 = (arg0->unk8 * 4) + 0x30;
                var_s1 = kern_malloc(var_s2);
            }
            if (var_s1 == NULL) {
                cmn_err(4, 0);
                var_s2_2 = 1;
            } else {
                bcopy(arg0, var_s1, var_s2);
                if (bufcall(arg0->unk8 * 0xC, 3, 0, var_s1) != 0) {
                    var_s2_2 = 0;
                } else {
                    cmn_err(4, 0);
                    kern_free(var_s1);
                    var_s2_2 = 1;
                }
            }
        } else {
            sendMsg(temp_v0, arg0);
            var_s2_2 = 0;
        }
        if (arg1 == 0) {
            streams_unlock();
        }
        if (var_s1 != NULL) {
            sleep(var_s1, 0x19);
        }
        var_v0 = var_s2_2;
    } else {
        var_v0 = 1;
    }
    return var_v0;
}

void GfxMessage(void) {
    GfxSendMessage(NULL);
}

void GfxIntrMessage(void) {
    GfxSendMessage((s32 *)1);
}

s32 GfxRqService(void *arg0) {
    ? (***temp_a0)(?, s32);
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s1;
    s32 var_v0;

    temp_v0 = getq();
    var_s1 = temp_v0;
    if (temp_v0 != 0) {
loop_1:
        if (canput(arg0->unkC) != 0) {
            temp_a0 = arg0->unkC;
            **temp_a0(temp_a0, var_s1);
            temp_v0_2 = getq(arg0);
            var_s1 = temp_v0_2;
            if (temp_v0_2 == 0) {
                goto block_3;
            }
            goto loop_1;
        }
        putbq(arg0, var_s1);
        var_v0 = 1;
    } else {
block_3:
        var_v0 = 0;
    }
    return var_v0;
}

void GfxDetach(void *arg0) {
    s32 temp_a0;
    void *temp_a3;

    if (arg0->unkC != NULL) {
        temp_a0 = arg0->unk14;
        if ((temp_a0 != 0) && (gfxdd_lookup(temp_a0) == 0)) {
            ddv_destroy_handle(arg0->unk14);
            arg0->unk14 = 0;
        }
        RRM_Exit(arg0);
        if (arg0->unk14 != 0) {
            arg0->unkC->unk8(arg0);
        }
        streams_lock();
        if (arg0->unk0->unk4 == arg0) {
            GfxUnmanage(arg0);
        }
        streams_unlock();
        temp_a3 = arg0->unk0;
        if (temp_a3->unk8 == arg0) {
            bzero(temp_a3->unk0 + 0x10, 0x10U);
            arg0->unk0->unk8 = 0;
        }
    }
    streams_lock();
    arg0->unkC = NULL;
    arg0->unk0 = NULL;
    arg0->unk10 = 0;
    streams_unlock();
}

void gfxinit(void) {
    s64 sp8;
    s64 sp0;
    s64 temp_v0;
    void *temp_v0_2;

    if (GfxDevLimit.unk7800 <= 0x20000) {

    } else {
        cmn_err(4, 0x148, (void *) GfxDevLimit.unk7800, 0x20000);
        GfxDevLimit.unk7800 = 0x20000;
    }
    init_sema(&__sbss0, 1, (void *)0x1C0, -1);
    init_sema(&__sbss8, 1, (void *)0x1D8, -1);
    temp_v0 = processors_configured();
    sp8 = temp_v0;
    sp0 = temp_v0;
    init_gfx_group_table();
    init_gthread_table();
    temp_v0_2 = kern_calloc(sp8, 0x20);
    __sbss24 = temp_v0_2;
    ksym_add(&.srdata + 0x30, temp_v0_2, 0x20, sp0);
}

s32 gfx_conflict_scan(void *arg0, void *arg1, s32 arg2) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_v0;
    s64 temp_a0;
    void *temp_a1_2;
    void *var_a0;
    void *var_s0;

    if (arg2 != 1) {
        goto block_1;
    }
    temp_a1 = arg0->unkC;
    if (temp_a1 != NULL) {
        var_a2 = arg1->unk4;
        if (*temp_a1 == var_a2) {
            temp_a1_2 = arg0->unk8;
            var_a3 = arg1->unk0;
            sp0 = (s64) var_a3;
            if (temp_a1_2 != NULL) {
                var_a0 = temp_a1_2->unk10;
            } else {
                var_a0 = NULL;
            }
            var_s0 = var_a0;
            if (var_a0 != NULL) {
                sp8 = (s64) arg1;
loop_12:
                temp_a0 = var_s0 + 0x2C;
                sp18 = temp_a0;
                psema((? *) temp_a0, 0x19, (s64) var_a2, (s64) var_a3);
                if ((var_s0->unk18 & 8) != 8) {
                    sp10 = 2;
                } else {
                    sp10 = 1;
                }
                vsema((void *) sp18);
                var_a3 = (s32) sp0;
                var_a2 = (s32) sp10;
                var_v0 = 1;
                if (var_a2 == var_a3) {
                    var_s0 = var_s0->unk8;
                    if (var_s0 == NULL) {
                        goto block_16;
                    }
                    goto loop_12;
                }
                *sp8 = 3;
            } else {
block_16:
                var_v0 = 0;
            }
        } else {
            goto block_7;
        }
    } else {
block_7:
block_1:
        var_v0 = 0;
    }
    return var_v0;
}

s32 irisgl_sproc_setup_scan(u64 arg0, s32 *arg1) {
    u64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a1;
    s64 temp_v0;

    sp18 = arg0;
    sp10 = (s64) arg1;
    if (*arg1 == arg0) {

    } else {
        temp_v0 = gthread_create(sp18);
        sp8 = temp_v0;
        if (temp_v0 == 0) {

        } else {
            temp_a1 = temp_v0->unk4 | 2;
            temp_v0->unk4 = temp_a1;
            sp0 = GfxListWriterLock(sp10->unk8, temp_a1);
            gthread_attach_list(sp8, sp10->unk8);
            GfxListWriterUnlock(sp10->unk8, (s32) sp0);
            setgfxsched_thread(sp18);
        }
    }
    return 0;
}

s32 gfxopen(s32 *arg0) {
    s64 sp28;
    s64 sp20;
    s32 sp18;
    s32 *sp10;
    s32 spC;
    u32 sp8;
    s32 *temp_a2;
    s32 *temp_a3;
    s32 *var_a3;
    s32 temp_a5;
    s32 temp_s3;
    s32 temp_v1;
    s32 var_a0;
    s32 var_s1;
    s32 var_v0;
    s64 temp_a1;
    u32 *temp_v0_2;
    u32 *temp_v0_4;
    u32 *var_s4;
    u64 temp_s2;
    u64 temp_s5;
    u64 temp_v0;
    void *temp_v0_3;
    void *temp_v0_5;
    void *var_s0;
    void *var_s6;
    void *var_v0_2;
    void *var_v0_3;

    temp_v0 = curthreadhandle();
    temp_s2 = temp_v0;
    temp_s5 = temp_v0;
    sp20 = (s64) &__sbss8;
    psema(&__sbss8, 0x19);
    temp_a5 = 0x3FFFF & *arg0;
    if (temp_a5 < 2) {
        var_s1 = 0;
        if (GfxDevLimit.unk7800 > 0) {
            var_a3 = NULL;
loop_3:
            var_a3 += 4;
            if (*var_a3 != 0) {
                var_s1 += 1;
                if (var_s1 < GfxDevLimit.unk7800) {
                    goto loop_3;
                }
            }
        }
        if (var_s1 < GfxDevLimit.unk7800) {
            temp_s3 = temp_a5 == 1;
            temp_v0_2 = gthread_find(temp_s2);
            var_s4 = temp_v0_2;
            if ((temp_v0_2 != NULL) && (temp_v0_2->unk4 & 4)) {
                temp_v0_3 = temp_v0_2->unk8;
                if (temp_v0_3 != NULL) {
                    temp_v0_3->unk10 = 0;
                }
                gthread_detach_list(temp_v0_2);
                gthread_detach_group(temp_v0_2);
                gthread_destroy(temp_v0_2->unk0);
                var_s4 = NULL;
            }
            if ((var_s4 != NULL) || (temp_v0_4 = gthread_create(temp_s5), var_s4 = temp_v0_4, (temp_v0_4 != NULL))) {
                sp28 = gfx_group_find(temp_s5);
                temp_v0_5 = gthread_find_gfxp(temp_s5);
                var_s0 = temp_v0_5;
                var_s6 = temp_v0_5;
                if (temp_v0_5 != NULL) {
loop_15:
                    if ((((var_s0->unk18 & 8) == 8) ^ temp_s3) == 0) {
                        var_s0 = var_s0->unk8;
                        if (var_s0 == NULL) {
                            goto block_17;
                        }
                        goto loop_15;
                    }
                    vsema((void *) sp20);
                    cmn_err(4, 0);
                    var_v0 = 0x13;
                } else {
block_17:
                    if ((var_s4 != NULL) && (var_s4->unkC != NULL)) {
                        if (temp_s3 == 0) {

                        }
                        gthread_scan(0, (s64) sp, *var_s4->unkC);
                        if (subroutine_arg0 != 3) {
                            goto block_21;
                        }
                        vsema((void *) sp20);
                        cmn_err(4, 0);
                        var_v0 = 0x13;
                    } else {
block_21:
                        if (temp_v0_5 == NULL) {
                            var_v0_2 = kern_malloc(0x38U);
                        } else {
                            var_v0_2 = kern_malloc(0x38U);
                        }
                        *(var_s1 * 4) = var_v0_2;
                        bzero(var_v0_2, 0x38U);
                        var_v0_2->unk4 = (s32) temp_s5;
                        var_v0_2->unkC = 0;
                        var_v0_2->unk10 = 0;
                        var_v0_2->unk34 = (s32 *) var_s4->unkC;
                        if (temp_s3 != 0) {
                            var_v0_2->unk18 = (s32) (var_v0_2->unk18 | 8);
                            temp_v1 = *arg0;
                            *arg0 = temp_v1 - (0x3FFFF & temp_v1);
                        }
                        init_sema(var_v0_2 + 0x2C, 1, &.srdata + 0x38, -1);
                        var_v0_2->unk20 = 1;
                        if (var_s6 == NULL) {
                            if ((sp28 == 0) || (var_v0_2->unk18 & 8)) {
                                gthread_attach_list((s64) var_s4, NULL, sp28);
                                var_s4->unk8->unk10 = var_v0_2;
                            } else {
                                gthread_attach_list((s64) var_s4, NULL, sp28);
                                temp_a1 = GfxListWriterLock(var_s4->unk8);
                                temp_a2 = var_s4->unk8;
                                temp_a2->unk10 = var_v0_2;
                                sp28->unk8 = 1;
                                GfxListWriterUnlock(var_s4->unk8, (s32) temp_a1, temp_a2);
                                spC = (s32) sp28;
                                sp8 = var_s4->unk0;
                                temp_a3 = var_s4->unk8;
                                sp10 = temp_a3;
                                curthreadgroup_scan(0, &sp8, sp28, temp_a3);
                            }
                            setgfxsched_thread(temp_s5);
                        } else {
                            if ((sp28 != 0) && !(var_v0_2->unk18 & 8)) {
                                sp18 = GfxListWriterLock(var_s4->unk8);
                            }
                            var_v0_3 = var_s6->unk8;
                            if (var_v0_3 != NULL) {
                                do {
                                    var_s6 = var_v0_3;
                                    var_v0_3 = var_v0_3->unk8;
                                } while (var_v0_3 != NULL);
                            }
                            var_s6->unk8 = var_v0_2;
                            if ((sp28 != 0) && !(var_v0_2->unk18 & 8)) {
                                GfxListWriterUnlock(var_s4->unk8, sp18);
                            }
                        }
                        vsema((void *) sp20);
                        var_v0_2->unk1C = (s32) (var_v0_2->unk1C | 2);
                        if (temp_s3 != 0) {
                            var_a0 = 0x20000;
                        } else {
                            var_a0 = 0;
                        }
                        var_v0 = 0;
                        *arg0 |= var_a0 | var_s1;
                    }
                }
            } else {
                vsema((void *) sp20);
                var_v0 = 0xC;
            }
        } else {
            vsema((void *) sp20);
            cmn_err(4, 0);
            var_v0 = 0x13;
        }
    } else {
        vsema((void *) sp20);
        var_v0 = 6;
    }
    return var_v0;
}

s32 irisgl_sproc_cleanup(void *arg0, s32 arg1, s32 arg2) {
    s64 sp0;

    if (arg2 != 1) {

    } else {
        sp0 = (s64) arg0;
        if (arg0->unkC == arg1) {
            cleargfxsched_thread(sp0->unk0);
            gthread_detach_list((u32 *) sp0);
            gthread_detach_group((u32 *) sp0);
            sp0->unk4 = (s32) (sp0->unk4 & ~2);
        }
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x60, 0x64, 0x70, 0x74, 0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c], gap at: 0x30. */
s32 gfxclose(s32 arg0) {
    s64 sp18;
    s64 sp10;
    s32 *temp_a0_2;
    s32 *temp_a2;
    s32 *temp_s0_3;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_v0_3;
    s32 var_v0;
    s64 temp_a1_2;
    s64 temp_s0;
    u32 *temp_a0_4;
    u32 *temp_s0_4;
    u32 *temp_v0_4;
    u32 *temp_v0_5;
    u32 *temp_v0_9;
    u32 *var_s1;
    u64 temp_a0;
    u64 temp_v0;
    void *temp_a0_5;
    void *temp_a3;
    void *temp_s0_2;
    void *temp_v0_2;
    void *temp_v0_6;
    void *var_a2;
    void *var_s3;
    void *var_v0_2;

    temp_v0 = curthreadhandle();
    temp_a0 = temp_v0;
    temp_s2 = arg0 & 0x3FFFF;
    temp_s4 = 0x20000 & temp_s2;
    if (temp_s4 != 0x20000) {
        unksp50 = 0;
        unksp58 = 0;
        unksp48 = 0;
        unksp40 = temp_a0;
        psema(&__sbss0 + 8, 0x19, 0);
    } else {
        unksp40 = temp_a0;
        unksp48 = 0;
        unksp50 = 0;
        unksp58 = 0;
    }
    var_s1 = gthread_find(temp_v0);
    temp_a1 = temp_s2 & 0x1FFFF;
    if (temp_a1 >= GfxDevLimit.unk7800) {
        if (temp_s4 != 0x20000) {
            vsema(&__sbss0 + 8, (void *) temp_a1);
        }
        var_v0 = 6;
    } else {
        temp_s0 = temp_a1 * 4;
        unksp68 = temp_s0;
        temp_s0_2 = *temp_s0;
        if (temp_s0_2 != NULL) {
            if ((var_s1 != NULL) && (temp_v0_2 = var_s1->unk8, (temp_v0_2 != NULL))) {
                var_s3 = temp_v0_2->unk10;
            } else {
                var_s3 = NULL;
            }
            temp_v0_3 = temp_s0_2->unk4;
            if ((temp_v0_3 == unksp40) || ((temp_s4 != 0x20000) && (var_s1->unkC != 0))) {
                goto block_16;
            }
            unksp50 = (s64) temp_v0_3;
            sp10 = splhi();
            temp_v0_4 = gthread_find(unksp50);
            if (temp_v0_4 != NULL) {
                temp_a0_2 = temp_v0_4->unk8;
                if (temp_a0_2 != NULL) {
                    temp_a3 = temp_a0_2->unk10;
                    if (temp_a3 != NULL) {
                        var_v0_2 = temp_a0_2 + 0x10;
                        var_a2 = temp_a0_2->unk10;
                        if (var_a2 != NULL) {
loop_66:
                            if (var_a2 == temp_s0_2) {
                                sp18 = (s64) var_v0_2;
                                if (var_a2 != NULL) {
                                    temp_a2 = (*sp18)->unk8;
                                    temp_a1_2 = GfxListWriterLock(temp_a0_2, (s32) temp_v0_4, var_a2, temp_a3);
                                    *sp18 = temp_a2;
                                    GfxListWriterUnlock(subroutine_arg2->unk8, (s32) temp_a1_2, temp_a2, sp18);
                                    unksp58 = 1;
                                }
                            } else {
                                var_v0_2 = var_a2 + 8;
                                var_a2 = var_a2->unk8;
                                if (var_a2 != NULL) {
                                    goto loop_66;
                                }
                            }
                        }
                    }
                }
            }
            splx((s32) sp10);
            if (var_s1 != NULL) {
                temp_s0_2->unk4 = (s32) unksp40;
                temp_s0_2->unk8 = (void *) var_s3->unk8;
                var_s3->unk8 = temp_s0_2;
block_16:
                if (var_s1 == NULL) {
                    goto block_17;
                }
                goto block_22;
            }
block_17:
            temp_v0_5 = gthread_create(unksp40);
            var_s1 = temp_v0_5;
            if (temp_v0_5 == NULL) {
                if (temp_s4 != 0x20000) {
                    vsema(&__sbss0 + 8);
                }
                var_v0 = 0xC;
            } else {
                temp_s0_2->unk8 = NULL;
                temp_s0_2->unk20 = 0;
                temp_s0_2->unk4 = (s32) unksp40;
                gthread_attach_list((s64) temp_v0_5, NULL);
                var_s3 = temp_s0_2;
                temp_v0_5->unk8->unk10 = temp_s0_2;
                setgfxsched_thread(unksp40);
block_22:
                GfxDetach(temp_s0_2);
                if (var_s1->unkC != 0) {
                    temp_s0_3 = var_s1->unk8;
                    unksp48 = (s64) temp_s0_3;
                    if (temp_s0_3 != NULL) {
                        GfxListWriterLock(temp_s0_3);
                    }
                }
                if (temp_s0_2 == var_s3) {
                    var_s1->unk8->unk10 = (void *) temp_s0_2->unk8;
                } else if (var_s3 != NULL) {
loop_41:
                    temp_v0_6 = var_s3->unk8;
                    if (temp_v0_6 == temp_s0_2) {
                        var_s3->unk8 = (void *) temp_s0_2->unk8;
                    } else {
                        var_s3 = temp_v0_6;
                        if (temp_v0_6 == NULL) {

                        } else {
                            goto loop_41;
                        }
                    }
                }
                temp_a2_2 = var_s1->unkC;
                if ((temp_a2_2 == 0) || (temp_s0_2->unk18 & 8)) {

                } else {
                    temp_v0_7 = var_s1->unk8;
                    if ((temp_v0_7 != NULL) && (temp_v0_7->unk10 == NULL)) {
                        unksp30 = (s64) temp_a2_2;
                        temp_a0_3 = splhi();
                        unksp30->unk8 = 0;
                        splx(temp_a0_3, unksp30);
                        gthread_detach_group(var_s1);
                        gthread_scan(0, unksp30);
                    }
                }
                if (unksp48 != 0) {
                    GfxListWriterUnlock((s32 *) unksp48, subroutine_arg0);
                }
                freesema(temp_s0_2 + 0x2C);
                temp_v0_8 = var_s1->unk8;
                if ((temp_v0_8 != NULL) && (temp_v0_8->unk10 == NULL)) {
                    cleargfxsched_thread(var_s1->unk0);
                    gthread_detach_list(var_s1);
                    gthread_detach_group(var_s1);
                }
                if (unksp50 != 0) {
                    unksp38 = splhi();
                    temp_v0_9 = gthread_find(unksp50);
                    temp_s0_4 = temp_v0_9;
                    temp_a0_4 = temp_v0_9;
                    if (unksp58 != 0) {
                        if (temp_s0_4 != NULL) {
                            if (temp_s0_4->unk4 & 4) {
                                goto block_50;
                            }
                            splx((s32) unksp38);
                            unksp28 = proc_name(curproc());
                            cmn_err(1, 0x2C0, (void *) unksp28, proc_pid(curproc()));
                            unksp28 = proc_name(threadhandle_to_proc(subroutine_arg2->unk0));
                            cmn_err(1, 0x310, (void *) unksp28, proc_pid(threadhandle_to_proc(subroutine_arg2->unk0)));
                            psignal(threadhandle_to_proc(subroutine_arg2->unk0), 9);
                            unksp58 = 1;
                        } else {
                            goto block_56;
                        }
                    } else {
block_50:
                        if ((temp_s0_4 != NULL) && (temp_s0_4->unk4 & 4)) {
                            splx((s32) unksp38);
                            temp_a0_5 = temp_s0_4->unk8;
                            if (temp_a0_5 != NULL) {
                                temp_a0_5->unk10 = 0;
                            }
                            gthread_detach_list(temp_s0_4);
                            gthread_detach_group(temp_s0_4);
                            gthread_destroy(temp_s0_4->unk0);
                        } else {
block_56:
                            splx((s32) unksp38);
                        }
                        unksp58 = 0;
                    }
                }
                if (var_s1->unk8 == NULL) {
                    gthread_destroy(var_s1->unk0);
                }
                streams_lock();
                temp_s0_2->unk1C = (s32) (temp_s0_2->unk1C & ~2);
                gfxcleanup(temp_s0_2);
                streams_unlock();
                *unksp68 = 0;
                if (temp_s4 != 0x20000) {
                    vsema(&__sbss0 + 8);
                }
                if (unksp58 != 0) {
                    psignal(curproc(), 6);
                }
                var_v0 = 0;
            }
        } else {
            if (temp_s4 != 0x20000) {
                vsema(&__sbss0 + 8, (void *) temp_a1);
            }
            var_v0 = 0x13;
        }
    }
    return var_v0;
}

void GfxListWriterLock(s32 *arg0) {
    s32 var_v0;

    var_v0 = splhi();
    if (arg0->unk4 > 0) {
        do {
            sv_wait(arg0 + 8, 0x19, arg0 + 0xC, var_v0);
            var_v0 = splhi();
        } while (arg0->unk4 > 0);
    }
}

void GfxListWriterUnlock(s32 arg1) {
    splx(arg1);
}

void GfxListReaderLock(void *arg0) {
    s32 temp_a0;

    temp_a0 = splhi();
    arg0->unk4 = (s32) (arg0->unk4 + 1);
    splx(temp_a0);
}

void GfxListReaderUnlock(void *arg0) {
    s64 sp10;

    sp10 = splhi();
    arg0->unk4 = (s32) (arg0->unk4 - 1);
    sv_signal(arg0 + 8);
    splx((s32) sp10);
}

s32 gfxread(void) {
    return 0x36;
}

s32 gfxwrite(void) {
    return 0x36;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x58, 0x5c], gap at: 0x50. */
s64 gfxioctl(s32 arg0, u32 arg1, s64 arg2) {
    s64 sp70;
    s64 sp68;
    s64 sp60;
    u32 sp28;
    ? (*temp_a1_3)(s64, ?);
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_s2_2;
    s32 temp_v0_2;
    s64 (*temp_a3)(void *, ?, ?, ?);
    s64 (*temp_a3_2)(s64, s32, ?, ?);
    s64 temp_v0_3;
    s64 temp_v0_5;
    s64 temp_v0_7;
    s64 var_a0;
    s64 var_v0;
    u32 *temp_s1;
    u64 temp_v0;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a4;
    void *temp_s2;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_v0_4;
    void *temp_v0_6;
    void *temp_v0_8;

    sp70 = M2C_ERROR(/* Read from unset register $a4 */);
    sp68 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_v0 = curthreadhandle();
    unksp48 = arg2;
    var_a0 = 0;
    temp_s1 = gthread_find(temp_v0);
    __sbss24->unkC = (s32) (__sbss24->unkC + 1);
    temp_a1 = arg0 & 0x3FFFF & 0x1FFFF;
    if (temp_a1 < GfxDevLimit.unk7800) {
        temp_s2 = *(temp_a1 * 4);
        unksp50 = (s64) temp_s2;
        if (temp_s2 != NULL) {
            var_v0 = 0xD;
            if (temp_s1 != NULL) {
                temp_a1_2 = temp_s2->unk18 & 8;
                temp_v0_2 = temp_s1->unkC;
                if (temp_a1_2 != 0) {
                    if (temp_v0_2 != 0) {
                        if (temp_s1->unk0 != temp_s2->unk4) {
                            var_v0 = 0xD;
                        } else {
                            goto block_7;
                        }
                    } else {
                        goto block_10;
                    }
                } else {
block_7:
                    if (temp_v0_2 != 0) {
                        if (temp_a1_2 == 0) {
                            sp60 = 0;
                            psema(temp_s2 + 0x2C, 0x19);
                            var_a0 = 0;
                        }
                    }
block_10:
                    if (arg1 != 0x65) {
                        if (arg1 != 0x66) {
                            if (arg1 != 0x69) {
                                if (arg1 != 0x67) {
                                    if (arg1 != 0x70) {
                                        if (arg1 == 0x71) {
                                            temp_v0_3 = drv_priv(sp70);
                                            var_a0 = temp_v0_3;
                                            if (temp_v0_3 == 0) {
                                                unksp50->unk18 = (s32) (unksp50->unk18 | 4);
                                            }
                                        } else {
                                            temp_v0_4 = temp_s2->unkC;
                                            if (temp_v0_4 != NULL) {
                                                if (arg1 < 0x2710U) {
                                                    if (arg1 < 0x3E8U) {
                                                        if (arg1 != 0x6C) {
                                                            if (arg1 != 0x68) {
                                                                if (arg1 == 0x6E) {
loop_39:
                                                                    temp_a2 = temp_s2->unk10;
                                                                    if (temp_a2->unk28 != temp_s2) {
                                                                        psema(temp_a2 + 0x20, 0x219, (s64) temp_a2);
                                                                        temp_s2->unk10->unk28 = temp_s2;
                                                                        if (temp_s2->unk10->unk3C != 0) {
                                                                            do {
                                                                                us_delay(2);
                                                                            } while (temp_s2->unk10->unk3C != 0);
                                                                        }
                                                                    }
                                                                    ddv_lock(temp_s2->unk14);
                                                                    if (temp_s2->unk10->unk28 != temp_s2) {
                                                                        ddv_unlock(temp_s2->unk14);
                                                                        goto loop_39;
                                                                    }
                                                                    temp_a3 = temp_s2->unkC->unk30;
                                                                    sp60 = temp_a3(temp_s2, 0, -1, temp_a3);
                                                                    unksp50->unk18 = (s32) (unksp50->unk18 | 0x20);
                                                                    ddv_unlock(unksp50->unk14);
                                                                    var_a0 = sp60;
                                                                } else {
                                                                    temp_a4 = temp_s2->unk0;
                                                                    if (temp_a4->unk8 != temp_s2) {
                                                                        var_a0 = 1;
                                                                    } else {
                                                                        switch (arg1) { /* irregular */
                                                                        case 0x6D:
                                                                            break;
                                                                        default:
                                                                            sp60 = 0;
                                                                            if (arg1 != 0x6F) {
                                                                                cmn_err(4, 0, (void *) arg1);
                                                                                var_a0 = 0x16;
                                                                            } else {
                                                                                var_a0 = sp60;
                                                                                if (copyin(unksp48, temp_a4->unk0 + 0x10, 0x10) != 0) {
                                                                                    var_a0 = 0xE;
                                                                                }
                                                                            }
                                                                            break;
                                                                        case 0x6A:
                                                                            temp_a2_2 = temp_s2->unk10;
                                                                            if (temp_a2_2->unk28 != temp_s2) {
                                                                                psema(temp_a2_2 + 0x20, 0x219, (s64) temp_a2_2);
                                                                                temp_s2->unk10->unk28 = temp_s2;
                                                                                if (temp_s2->unk10->unk3C != 0) {
                                                                                    do {
                                                                                        us_delay(2);
                                                                                    } while (temp_s2->unk10->unk3C != 0);
                                                                                }
                                                                            }
                                                                            sp60 = temp_s2->unkC->unkC(temp_s2);
                                                                            unksp50->unk10->unk50 = 0;
                                                                            temp_a1_3 = unksp50->unkC->unk60;
                                                                            temp_s2_2 = splhi();
                                                                            if (temp_a1_3 != NULL) {
                                                                                temp_a1_3(unksp50, temp_a1_3);
                                                                            }
                                                                            temp_a1_4 = unksp50->unk10;
                                                                            temp_a1_4->unk28 = 0;
                                                                            vsema(unksp50->unk10 + 0x20, temp_a1_4);
                                                                            splx(temp_s2_2);
                                                                            var_a0 = sp60;
                                                                            if (unksp50->unk18 & 1) {
                                                                                rrmUnMapGfx(unksp50);
                                                                                var_a0 = sp60;
                                                                            }
                                                                            break;
                                                                        case 0x6B:
                                                                            temp_a2_3 = temp_s2->unk10;
                                                                            if (temp_a2_3->unk28 != temp_s2) {
                                                                                psema(temp_a2_3 + 0x20, 0x219, (s64) temp_a2_3);
                                                                                temp_s2->unk10->unk28 = temp_s2;
                                                                                if (temp_s2->unk10->unk3C != 0) {
                                                                                    do {
                                                                                        us_delay(2);
                                                                                    } while (temp_s2->unk10->unk3C != 0);
                                                                                }
                                                                            }
                                                                            var_a0 = temp_s2->unkC->unk14(temp_s2);
                                                                            break;
                                                                        }
                                                                    }
                                                                }
                                                            } else if (!(temp_s2->unk18 & 8) && (sp60 = 0, (temp_s1->unkC != 0)) && (var_a0 = sp60, (threadgroup_refcnt(temp_s1->unk0) != 1))) {
                                                                var_a0 = 0x10;
                                                            } else {
                                                                sp60 = var_a0;
                                                                GfxDetach((void *) unksp50);
                                                            }
                                                        } else if (copyin(unksp48, sp, 0x20) != 0) {
                                                            var_a0 = 0xE;
                                                        } else {
                                                            var_a0 = unksp50->unkC->unk10(unksp50, sp);
                                                        }
                                                    } else {
                                                        var_a0 = RRM_Dispatch(temp_s2, arg1, unksp48, sp68);
                                                    }
                                                } else {
                                                    var_a0 = temp_v0_4->unk64(temp_s2, temp_s2->unk28, arg1, unksp48);
                                                }
                                            } else {
                                                var_a0 = 0xD;
                                            }
                                        }
                                    } else if (copyin(unksp48, sp, 8) != 0) {
                                        var_a0 = 0xE;
                                    } else if ((u32) subroutine_arg0 >= (u32) __sdata4) {
                                        var_a0 = 0x13;
                                    } else {
                                        temp_t0 = *(subroutine_arg0 * 4);
                                        if (temp_t0 == NULL) {
                                            var_a0 = 0x13;
                                        } else {
                                            unksp50->unk0 = temp_t0;
                                            unksp50->unk10 = (void *) temp_t0->unk20;
                                            unksp50->unkC = (void *) temp_t0->unk1C;
                                            temp_a3_2 = (*(subroutine_arg0 * 4))->unk1C->unk4;
                                            temp_v0_5 = temp_a3_2(unksp50, subroutine_arg1, 0, temp_a3_2);
                                            var_a0 = temp_v0_5;
                                            if (temp_v0_5 != 0) {
                                                unksp50->unkC = NULL;
                                                unksp50->unk10 = NULL;
                                                unksp50->unk0 = NULL;
                                            } else {
                                                temp_v0_6 = unksp50->unk0;
                                                if (temp_v0_6->unk8 == 0) {
                                                    temp_v0_6->unk8 = (s32) unksp50;
                                                }
                                            }
                                        }
                                    }
                                } else if (copyin(unksp48, sp, 8) != 0) {
                                    var_a0 = 0xE;
                                } else if ((u32) subroutine_arg0 >= (u32) __sdata4) {
                                    var_a0 = 0x13;
                                } else {
                                    temp_t0_2 = *(subroutine_arg0 * 4);
                                    if (temp_t0_2 != NULL) {
                                        if (unksp50->unkC != NULL) {
                                            var_a0 = 0x10;
                                        } else {
                                            unksp50->unk0 = temp_t0_2;
                                            unksp50->unkC = (void *) temp_t0_2->unk1C;
                                            unksp50->unk10 = (void *) temp_t0_2->unk20;
                                            temp_v0_7 = (*(subroutine_arg0 * 4))->unk1C->unk4(unksp50, subroutine_arg1, 0);
                                            var_a0 = temp_v0_7;
                                            if (temp_v0_7 != 0) {
                                                unksp50->unkC = NULL;
                                                unksp50->unk10 = NULL;
                                                unksp50->unk0 = NULL;
                                            } else {
                                                temp_v0_8 = unksp50->unk0;
                                                if (temp_v0_8->unk8 == 0) {
                                                    temp_v0_8->unk8 = (s32) unksp50;
                                                }
                                            }
                                        }
                                    } else {
                                        var_a0 = 0x13;
                                    }
                                }
                            } else {
                                sp60 = 0;
                                var_a0 = sp60;
                                if (copyin(unksp48, &sp28, 4) != 0) {
                                    var_a0 = 0xE;
                                } else if (sp28 >= (u32) __sdata4) {
                                    var_a0 = 0x13;
                                } else {
                                    temp_a1_5 = *(sp28 * 4);
                                    if (temp_a1_5 != NULL) {
                                        *sp68 = (s32) (temp_a1_5->unk4 != 0);
                                    } else {
                                        var_a0 = 0x13;
                                    }
                                }
                            }
                        } else if (copyin(unksp48, sp, 0xC) != 0) {
                            var_a0 = 0xE;
                        } else if ((u32) subroutine_arg0 >= (u32) __sdata4) {
                            var_a0 = 0x13;
                        } else {
                            temp_t0_3 = *(subroutine_arg0 * 4);
                            if (temp_t0_3 != NULL) {
                                var_a0 = *temp_t0_3->unk1C(temp_t0_3->unk20, subroutine_arg1, subroutine_arg2, sp68);
                            } else {
                                var_a0 = 0x13;
                            }
                        }
                    } else {
                        *sp68 = (s32) __sdata4;
                    }
                    if ((temp_s1->unkC != 0) && !(unksp50->unk18 & 8)) {
                        sp60 = var_a0;
                        vsema(unksp50 + 0x2C);
                    }
                    var_v0 = var_a0;
                }
            }
        } else {
            var_v0 = 0x13;
        }
    } else {
        var_v0 = 6;
    }
    return var_v0;
}

s32 gfxmap(void) {
    return 0x36;
}

s32 gfxunmap(void) {
    return 0x36;
}

void gfx_shalloc(void) {
    s32 *temp_a0;
    s64 temp_s1_2;
    s64 temp_v0;
    u32 *temp_s0;
    u64 temp_s1;
    void *var_a1;

    temp_s1 = curthreadhandle();
    splhi();
    temp_s0 = gfx_group_create(temp_s1);
    temp_v0 = gthread_find(temp_s1);
    if (temp_v0 != 0) {
        gthread_attach_group((u32 *) temp_v0, temp_s0);
        temp_a0 = temp_v0->unk8;
        if (temp_a0 != NULL) {
            var_a1 = subroutine_arg2->unk8->unk10;
            temp_s1_2 = GfxListWriterLock(temp_a0);
            if (var_a1 != NULL) {
                if (!(var_a1->unk18 & 8)) {
                    temp_s0->unk8 = 1;
                }
                if (var_a1 != NULL) {
                    do {
                        var_a1->unk34 = temp_s0;
                        var_a1 = var_a1->unk8;
                    } while (var_a1 != NULL);
                }
            }
            GfxListWriterUnlock(subroutine_arg2->unk8, (s32) temp_s1_2);
        }
    }
    splx((s32) subroutine_arg0);
}

void gfx_shfree(void) {
    gfx_group_destroy(gfx_group_find(curthreadhandle()));
}

s32 gfx_frs_valid_pipenum(s32 arg0) {
    return arg0 < __sdata4;
}
