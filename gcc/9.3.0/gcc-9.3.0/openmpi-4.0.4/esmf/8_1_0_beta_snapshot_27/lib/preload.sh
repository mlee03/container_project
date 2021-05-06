#!/bin/sh
# Script to preload ESMF dynamic trace library
env LD_PRELOAD="$LD_PRELOAD /home/Mikyung.Lee/hpc-stack/gcc/9.3.0/gcc-9.3.0/openmpi-4.0.4/esmf/8_1_0_beta_snapshot_27/lib/libesmftrace_preload.so" $*
