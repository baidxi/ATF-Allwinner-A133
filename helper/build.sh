#!/bin/bash

JOBS=`grep -c ^processor /proc/cpuinfo`
export CROSS_COMPILE=aarch64-linux-gnu-
make PLAT=sun50i_a133 DEBUG=1 bl31 -j${JOBS}
cp build/sun50i_a133/debug/bl31.bin ../u-boot-2022.10-Allwinner-A133/
