#!/bin/bash

#: Changeme
ubuntu_ver=20.04   #: ubuntu version for the base Docker ubuntu container/image
spack_ver="releases/v0.16" #: spack version from Github
gcc_ver="10.1.0"     #: gcc version
mpich_ver=3.3.2
hdf5_ver=1.8.19
netcdfc_ver=4.7.4
netcdff_ver=4.5.3


#: Image tags
ubuntu_tag="mkl/ubuntu_gcc:${ubuntu_ver}_${gcc_ver}"
spack_tag="mkl/spack_ubuntu_gcc:${ubuntu_ver}_${gcc_ver}"
env_tag
echo $ubuntu_tag
echo $spack_tag

#: Dockerfiles
dfile_ubuntu=Dockerfile_ubuntu #: to build the base ubuntu image with gcc pre-installed
dfile_spack=Dockerfile_spack   #: to build the intermediate spack image.
dfile_env=Dockerfile_env       #: to build the env image.  All softwares will be installed here.
                               #: uses both the base ubuntu and spack images.

#: prep the Dockerfiles
sed -e "s@_UBUNTUVER_@$ubuntu_ver@" < ${dfile_ubuntu}_TEMPLATE > $dfile_ubuntu

sed -e "s@_UBUNTU_TAG_@a$ubuntu_tag@" \
    -e "s@_SPACK_VER_@$spack_ver@" < ${dfile_spack}_TEMPLATE > $dfile_spack

sed -e "s@_SPACK_TAG_@$spack_tag@"    \
    -e "s@_GCCVER_@$gcc_ver@g"        \
    -e "s@_MPICHVER_@$mpich_ver@"     \
    -e "s@_HDF5VER_@$hdf5_ver@"       \
    -e "s@_NETCDFCVER_@$netcdfc_ver@" \
    -e "s@_NETCDFFVER_@$netcdff_ver@" < ${dfile_env}_TEMPLATE > $dfile_env


#: build ; add push later
( docker build -t $ubuntu_tag -f $dfile_ubuntu . ) > log_ubuntu 2>&1
( docker build -t $spack_tag  -f $dfile_spack  . ) > log_spack  2>&1
( docker build -t $env_tag    -f $dfile_env    . ) > log_env    2>&1
