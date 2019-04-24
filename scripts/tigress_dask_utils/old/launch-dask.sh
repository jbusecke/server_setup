#!/bin/bash
set -e

DASKDIR=~/.dask_tmp
jport=9991
bport=9992

source activate standard

#rm $HOME/scheduler.json

echo "Launching dask scheduler"
echo ${pwd}
dask-scheduler --bokeh-port $bport --local-directory $DASKDIR --scheduler-file $HOME/scheduler.json &
#dask-worker --nthreads 2 --nprocs 10 --local-directory $DASKDIR --scheduler-file $HOME/scheduler.json

default=$HOME
notebook=${2:-$default}
echo "Setting up Jupyter Lab, Notebook dir: ${notebook}"
./setup-jlab.py --log_level=DEBUG --jlab_port=$jport --dash_port=$bport \
    --notebook_dir $notebook --scheduler_file $HOME/scheduler.json --hostname tigress
