# Required IRIX 6.5.0 Distribution Files for GR2 Reverse Engineering

This document lists the proprietary Silicon Graphics (SGI) binaries and files required for reverse engineering the historic **SGI Elan / Express Graphics (GR2)** subsystem.

For legal and clean-room licensing reasons, proprietary SGI binaries are **not tracked in source control**. Instead, users must copy them from an authentic **IRIX 6.5.0** installation, CD distribution, or sysgen tree into the local `root/` subdirectory.

Top-level subdirectories (`gr2_kernel/`, `libglcore/`, `gr2_ddx/`, `ucode/`) use relative symbolic links pointing to their respective targets under `root/`.

---

## 1. Directory Structure Overview

All files should be installed into `root/` mirroring their authentic IRIX paths:

```
root/
├── unix                                       <- IRIX kernel binary (IP12, N32 with DWARF symbols)
├── unix.map                                   <- Kernel symbol map
├── usr/
│   ├── gfx/
│   │   ├── arch/
│   │   │   ├── IP12GR232/
│   │   │   │   ├── libGLcore.so               <- OpenGL Core Driver (N32 with DWARF symbols)
│   │   │   │   ├── libGL.so                   <- OpenGL API Library (N32 with DWARF symbols)
│   │   │   │   └── libgl.so                   <- IrisGL Compatibility Library (N32 with DWARF)
│   │   │   └── GENERIC/
│   │   │       ├── Xsgi                       <- SGI X11 Server
│   │   │       └── Xsgi.map                   <- X server symbol map
│   │   └── ucode/
│   │       ├── ge7.bin                        <- GE7 ASIC microcode binary
│   │       ├── hq2.bin                        <- HQ2 Host Command microcode binary
│   │       └── GR2/vof/                       <- Video Output Format (VOF) timing binaries
│   │           ├── adjntsc.bin                <- NTSC timing binary
│   │           ├── adjpal.bin                 <- PAL timing binary
│   │           └── *.u                        <- Video timing microcode listings
│   └── lib/
│       └── X11/dyDDX/
│           ├── gr2.so                         <- X11 GR2 DDX Driver
│           ├── gr2.so.map                     <- DDX symbol map
│           ├── glx.so                         <- X11 GLX extension module
│           └── glx.so.map                     <- GLX extension symbol map
└── var/
    └── sysgen/
        ├── boot/
        │   ├── gr2.a                          <- GR2 driver module archive
        │   ├── gfx.o                          <- Core gfx module (DWARF symbols)
        │   ├── rrm.o                          <- Rendering Resource Manager (DWARF symbols)
        │   └── gr2_*.o                        <- 7 extracted driver modules (see below)
        └── master.d/
            ├── gr2                            <- Device configuration
            └── gr2stubs                       <- Stub configuration
```

---

## 2. File Checklist

### A. Kernel Driver Modules (`gr2_kernel/`)
Extracted from `root/var/sysgen/boot/gr2.a` or installed in `root/var/sysgen/boot/`:

| File | Source Path in IRIX | Symlink in Repository | DWARF Status |
|---|---|---|---|
| `gfx.o` | `/var/sysgen/boot/gfx.o` | `gr2_kernel/gfx.o` | Full DWARF-2 |
| `rrm.o` | `/var/sysgen/boot/rrm.o` | `gr2_kernel/rrm.o` | Full DWARF-2 |
| `gr2.o` | inside `/var/sysgen/boot/gr2.a` | `gr2_kernel/gr2.o` | Full DWARF-2 |
| `gr2_init.o` | inside `/var/sysgen/boot/gr2.a` | `gr2_kernel/gr2_init.o` | Full DWARF-2 |
| `gr2_dma.o` | inside `/var/sysgen/boot/gr2.a` | `gr2_kernel/gr2_dma.o` | Full DWARF-2 |
| `gr2_retrace.o` | inside `/var/sysgen/boot/gr2.a` | `gr2_kernel/gr2_retrace.o` | Full DWARF-2 |
| `gr2_tport.o` | inside `/var/sysgen/boot/gr2.a` | `gr2_kernel/gr2_tport.o` | Full DWARF-2 |
| `gr2_tpucode.o` | inside `/var/sysgen/boot/gr2.a` | `gr2_kernel/gr2_tpucode.o` | Full DWARF-2 |
| `gr2_corona_i2c.o` | inside `/var/sysgen/boot/gr2.a` | `gr2_kernel/gr2_corona_i2c.o` | Full DWARF-2 |

*Note*: If you only have `gr2.a`, extract it into `root/var/sysgen/boot/`:
```bash
cd root/var/sysgen/boot && ar x gr2.a
```

### B. OpenGL Core Driver & IrisGL (`libglcore/`)
| File | Source Path in IRIX | Symlink in Repository | DWARF Status |
|---|---|---|---|
| `libGLcore.so` | `/usr/gfx/arch/IP12GR232/libGLcore.so` | `libglcore/libGLcore.so` | Full DWARF-2 |
| `libGL.so` | `/usr/gfx/arch/IP12GR232/libGL.so` | `libglcore/libGL.so` | Full DWARF-2 |
| `libgl.so` | `/usr/gfx/arch/IP12GR232/libgl.so` | `libglcore/libgl.so` | Full DWARF-2 |

### C. X11 DDX Driver (`gr2_ddx/`)
| File | Source Path in IRIX | Symlink in Repository | Symbols |
|---|---|---|---|
| `gr2.so` | `/usr/lib/X11/dyDDX/gr2.so` | `gr2_ddx/gr2.so` | Dynamic symbols & relocs |
| `gr2.so.map` | `/usr/lib/X11/dyDDX/gr2.so.map` | `gr2_ddx/gr2.so.map` | DDX symbol map |
| `glx.so` | `/usr/lib/X11/dyDDX/glx.so` | `gr2_ddx/glx.so` | Dynamic symbols & relocs |

### D. Microcode Binaries (`ucode/`)
| File | Source Path in IRIX | Symlink in Repository |
|---|---|---|
| `ge7.bin` | `/usr/gfx/ucode/ge7.bin` | `ucode/ge7.bin` |
| `hq2.bin` | `/usr/gfx/ucode/hq2.bin` | `ucode/hq2.bin` |
| `adjntsc.bin` | `/usr/gfx/ucode/GR2/vof/adjntsc.bin` | `ucode/adjntsc.bin` |
| `adjpal.bin` | `/usr/gfx/ucode/GR2/vof/adjpal.bin` | `ucode/adjpal.bin` |
| `vof/` | `/usr/gfx/ucode/GR2/vof` | `ucode/vof` |

---

## 3. How to Populate `root/` from an IRIX 6.5 System or CD

From a running IRIX 6.5.0 system with GR2 (Elan / Express) Graphics installed:

```bash
# 1. On IRIX host, create tar archive of the required paths:
tar -cvf /tmp/gr2_root.tar \
    /unix /unix.map \
    /usr/lib/X11/dyDDX/gr2.so* \
    /usr/lib/X11/dyDDX/glx.so* \
    /usr/gfx/arch/IP12GR232/libGLcore.so \
    /usr/gfx/arch/IP12GR232/libGL.so \
    /usr/gfx/arch/IP12GR232/libgl.so \
    /usr/gfx/arch/GENERIC/Xsgi* \
    /usr/gfx/ucode/ge7*.bin \
    /usr/gfx/ucode/hq2*.bin \
    /usr/gfx/ucode/GR2 \
    /var/sysgen/boot/gr2.a \
    /var/sysgen/boot/gfx.o \
    /var/sysgen/boot/rrm.o \
    /var/sysgen/master.d/gr2*

# 2. Extract into root/ in the repository:
cd ignore/gr2/root
tar -xvf /path/to/gr2_root.tar

# 3. Extract the gr2.a kernel archive:
cd var/sysgen/boot && ar x gr2.a
```
