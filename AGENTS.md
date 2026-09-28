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

we have gr2 kernel modules in gr2_kernel/*.o
GL library root/usr/gfx/arch/IP12GR232/libGLcore.so (includes some symbols left in debug sections)
PROM sources irixhistory/stand/arcs/lib/libsk/graphics/EXPRESS
IDE diagnostis irixhistory/stand/arcs/ide/fforward/graphics/EXPRESS
sadly gr2hw.h is missing
we can find some register info and usage reference in netbsd
netbsd/src/sys/arch/sgimips/gio/grtworeg.h
netbsd/src/sys/arch/sgimips/gio/grtwo.c

we can also look for some information in mame mame/src/mame/sgi


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




