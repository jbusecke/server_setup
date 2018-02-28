#!/bin/bash
DASKDIR=~/.dask_tmp
HOST="$(hostname)"

# This script sets up a dask scheduler on a local cluster (tigressdata/princeton in this case). No need to invoke 'ib0' here since the processors are all linked locally?

# set port and process parameters according to hostname
if [[ $HOST == 'tigressdata' ]]; then
  echo "GFDL-ANALYSIS host recognized"
  bport=9991
  nthreads=2
  nprocs=10
elif [[ $HOST == "an"* ]]; then
  echo "GFDL-ANALYSIS host recognized"
  bport=8881
  nthreads=1
  nprocs=14
else
  echo "!!! host NOT recognized !!!"
  bport=9991
  nthreads=2
  nprocs=10
fi

source activate standard

cd $HOME
mkdir -p $DASKDIR
rm scheduler.json

echo ${pwd}
dask-scheduler --bokeh-port $bport --local-directory $DASKDIR --scheduler-file scheduler.json &
dask-worker --nthreads $nthreads --nprocs $nprocs --local-directory $DASKDIR --scheduler-file scheduler.json &
