#!/bin/bash

# Compiler/MPI combination
export HPC_COMPILER="gcc/9.3.0" #${HPC_COMPILER:-"intel/2018_up4"}
export HPC_MPI="openmpi/4.0.4"  #${HPC_MPI:-"impi/2018_up4"}

# Build options
export USE_SUDO=N
export PKGDIR=pkg
export LOGDIR=log
export OVERWRITE=N
export NTHREADS=4
export   MAKE_CHECK=N
export MAKE_VERBOSE=N
export   MAKE_CLEAN=N
export DOWNLOAD_ONLY=N
export STACK_EXIT_ON_FAIL=Y
export WGET="wget -nv"
