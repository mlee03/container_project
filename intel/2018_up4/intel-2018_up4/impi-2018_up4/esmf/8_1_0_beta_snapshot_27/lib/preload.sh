#!/bin/sh
# Script to preload ESMF dynamic trace library
env LD_PRELOAD="$LD_PRELOAD /home/Mikyung.Lee/hpc-stack/intel/2018_up4/intel-2018_up4/impi-2018_up4/esmf/8_1_0_beta_snapshot_27/lib/libesmftrace_preload.so" $*
