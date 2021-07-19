#!/bin/bash


#: control
PATHRT=/ufs-weather-model/src/tests
mydir=/ufs-weather-model/cpld_control
mkdir -p $mydir

#build
export CMAKE_FLAGS="-D32BIT=ON -DMULTI_GASES=OFF -DCMAKE_BUILD_TYPE=Release -DINLINE_POST=ON -DMPI=ON"
export CCPP_SUITES="FV3_GFS_2017_coupled,FV3_GFS_v15p2_coupled,FV3_GFS_v16_coupled,FV3_GFS_v16_couplednsst"
export CMAKE_FLAGS="${CMAKE_FLAGS} -DAPP=S2S -DMOM6SOLO=ON"

src/build.sh
mv src/build/ufs_model $mydir/control.exe
rm -rf src/build

#setup input files
export MACHINE_ID=gaea.gnu
source ${PATHRT}/default_vars.sh
source ${PATHRT}/tests/control

source ${PATHRT}/atparse.bash
source ${PATHRT}/edit_inputs.sh

atparse < ${PATHRT}/parm/${INPUT_NML:-input.nml.IN} > $mydir/input.nml
atparse < ${PATHRT}/parm/${MODEL_CONFIGURE:-model_configure.IN} > $mydir/model_configure
atparse < ${PATHRT}/parm/${NEMS_CONFIGURE:-nems.configure} > $mydir/nems.configure

cp ${PATHRT}/parm/fd_nems.yaml $mydir/fd_nems.yaml
atparse < ${PATHRT}/parm/${NEMS_CONFIGURE:-nems.configure} > $mydir/nems.configure

#: edit fv3_run
echo '#!/bin/bash' > $mydir/edit_fv3_run_script.sh
grep -m 1 -A 10 "gaea" ${PATHRT}/rt.sh | grep "DISKNM" >> $mydir/edit_fv3_run_script.sh
grep -m 3 "INPUTDATA" < ${PATHRT}/rt.sh >> $mydir/edit_fv3_run_script.sh
chmod +x $mydir/edit_fv3_run_script.sh
source $mydir/edit_fv3_run_script.sh

atparse < ${PATHRT}/fv3_conf/${FV3_RUN:-fv3_run.IN} > $mydir/fv3_run
chmod +x $mydir/fv3_run

if [[ $CPLWAV == .T. ]]; then
  edit_ww3_input  < ${PATHRT}/parm/ww3_multi.inp.IN > $mydir/ww3_multi.inp
fi

if [[ $DATM_NEMS = 'true' ]] || [[ $DATM_CDEPS = 'true' ]] || [[ $S2S = 'true' ]]; then
  edit_ice_in     < ${PATHRT}/parm/ice_in_template > $mydir/ice_in
  edit_mom_input  < ${PATHRT}/parm/${MOM_INPUT:-MOM_input_template_$OCNRES} > $mydir/INPUT/MOM_input
  edit_diag_table < ${PATHRT}/parm/${DIAG_TABLE:-diag_table_template} > $mydir/diag_table
  edit_data_table < ${PATHRT}/parm/data_table_template > $mydir/data_table
fi
