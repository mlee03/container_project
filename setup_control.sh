#!/bin/bash


#: control
PATHRT=/ufs-weather-model/src/tests
mydir=/ufs-weather-model/control
mkdir -p $mydir

#build
export CMAKE_FLAGS="-D32BIT=ON -DMULTI_GASES=OFF -DCMAKE_BUILD_TYPE=Release"
export CCPP_SUITES="FV3_GFS_v16"
export CMAKE_FLAGS="${CMAKE_FLAGS} -DAPP=ATM"

src/build.sh
mv src/build/ufs_model $mydir/control.exe
rm -rf src/build

#setup input files
export MACHINE_ID=gaea.gnu
source ${PATHRT}/default_vars.sh
source ${PATHRT}/tests/control

atparse < ${PATHRT}/parm/${INPUT_NML:-input.nml.IN} > $mydir/input.nml
atparse < ${PATHRT}/parm/${MODEL_CONFIGURE:-model_configure.IN} > $mydir/model_configure
atparse < ${PATHRT}/parm/${NEMS_CONFIGURE:-nems.configure} > $mydir/nems.configure

cp ${PATHRT}/parm/fd_nems.yaml $mydir/fd_nems.yaml
atparse < ${PATHRT}/parm/${NEMS_CONFIGURE:-nems.configure} > $mydir/nems.configure

#atparse < ${PATHRT}/fv3_conf/${FV3_RUN:-fv3_run.IN} > $mydir/fv3_run
#source $mydir/fv3_run
