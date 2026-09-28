This is a reverse enginering project for SGI (Silicon Graphics) historic GR2 graphics subsystem

The subsystem was engineered and sold under many names and configurations across Indigo, Indy, and Indigo 2 hardware

https://en.wikipedia.org/wiki/Elan_Graphics

Elan Graphics consists of five graphics subsystems: the HQ2 Command Engine, GE7 Geometry Subsystem, RE3 Raster Engine, VM2 framebuffer and VC1 Display Subsystem

- GR2
- EXPRESS
- Extreme
- XZ
- Elan

Unix haters Ian has already figured out some general stuff sgimips_grtwo_graphics.pdf 

## Project Binaries & Evidence

For licensing and clean-room reasons, proprietary SGI binaries are **not checked into source control** (the local `root/` tree is gitignored). Instead, users copy them from an authentic IRIX 6.5.0 distribution into `root/` following the checklist in [IRIX_FILES.md](IRIX_FILES.md).

The subdirectories below contain relative symbolic links resolving into `root/`:

| Directory | Symlinked Files | Target in `root/` | DWARF Status |
|---|---|---|---|
| `gr2_kernel/` | 9 `.o` files (`gr2.o`, `gr2_init.o`, `gr2_dma.o`, `rrm.o`, `gfx.o`, etc.) | `root/var/sysgen/boot/` | **Full DWARF-2 debug symbols & relocations** |
| `libglcore/` | `libGLcore.so`, `libGL.so`, `libgl.so` | `root/usr/gfx/arch/IP12GR232/` | **Full DWARF debug symbols** |
| `gr2_ddx/` | `gr2.so`, `gr2.so.map`, `glx.so` | `root/usr/lib/X11/dyDDX/` | Dynamic symbols & relocations |
| `ucode/` | `ge7.bin`, `hq2.bin`, `adjntsc.bin`, `adjpal.bin`, `vof` | `root/usr/gfx/ucode/` | ASIC Microcode & VOF binaries |

Other reference sources:
- PROM sources `irixhistory/stand/arcs/lib/libsk/graphics/EXPRESS`
- IDE diagnostics `irixhistory/stand/arcs/ide/fforward/graphics/EXPRESS`
- NetBSD driver `netbsd/src/sys/arch/sgimips/gio/grtworeg.h`, `grtwo.c`
- MAME driver `mame/src/mame/sgi`


OUTPUT: we will place our documentation in the following files
We will use these C headers both for defines and comment sections
for reverse engineered documentation to maintain a single source of truth
we will use these as reference and includes when disassembling object code

GR2.h overall memory map, common registers and defines
HQ2.h command engine registers, defines
GE7.h geometry engine
VM2.h framebuffer
VC1.h display subsystem
XMAP5.h compositor/colormap
RE3.h for raster engine

we also have Bt457.pdf for the brooktree ramdac which is off the shelf asic.
and Brooktree_Bt475_477.pdf for Bt479 and mame mame/src/devices/video/bt47x.cpp

consider that there are similarities between older and newer sgi designs like LG1 in Indigo and REX3/Newport in Indy
so some concepts and methods may translate to GR2

TOOLCHAIN:
We can use the mips-unknown-linux-gnu- toolchain (mips-unknown-linux-gnu-readelf, mips-unknown-linux-gnu-objdump, mips-unknown-linux-gnu-gcc, etc.) for cross-inspection and disassembly.




