patch  -p1  <  $SCRIPT_DIRECTORY/NVIDIA_glx-1.0.7167-defines.patch    &&
patch  -p1  <  $SCRIPT_DIRECTORY/NVIDIA_glx-1.0.7167-glheader.patch   &&
#
# Patches from http://www.nvnews.net/vbulletin/showthread.php?t=47405
#
patch  -p0  <  $SCRIPT_DIRECTORY/NVIDIA_kernel-1.0-7167-1233959.diff  &&
patch  -p0  <  $SCRIPT_DIRECTORY/NVIDIA_kernel-1.0-7167-1237815.diff  &&

cd usr/src/nv  &&

### We look at the Makefile in the kernel sources for the Version Number!
KPATCHLEVEL=$(head -n 2 /lib/modules/$(uname -r)/build/Makefile | tail -n 1 | sed 's/.*= //')

### please no-one remove this
cd $SOURCE_DIRECTORY  &&
  
if [[ $VIA4X == "y" ]]; then sedit "s/NVreg_EnableVia4x =0;/NVreg_EnableVia4x = 1;/" usr/src/nv/os-registry.c; fi &&

if [[ $ALiAGP == "y" ]]; then sedit "s/NVreg_EnableALiAGP = 0;/NVreg_EnableALiAGP = 1;/" usr/src/nv/os-registry.c; fi &&

if [[ $AGPSBA == "y" ]]; then sedit "s/NVreg_EnableAGPSBA = 0;/NVreg_EnableAGPSBA = 1;/" usr/src/nv/os-registry.c; fi &&

if [[ $AGPFW == "y" ]]; then sedit "s/NVreg_EnableAGPFW = 0;/NVreg_EnableAGPFW = 1;/" usr/src/nv/os-registry.c; fi
