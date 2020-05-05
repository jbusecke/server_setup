#!/bin/bash

export XDG_RUNTIME_DIR=""


node=$(hostname -s)
user=$(whoami)
cluster="tigercpu"
port=10001
dask_port=10002


echo -e "
Command to create ssh tunnel:
ssh -N -L ${port}:${node}:${port} -L ${dask_port}:${node}:9999 tigercpu

Use a Browser on your local machine to go to:
localhost:${port}  (prefix w/ https:// if using password)
"
#experimental 
export OMP_NUM_THREADS=1
export MKL_NUM_THREADS=1
export OPENBLAS_NUM_THREADS=1
# from https://docs.dask.org/en/latest/array-best-practices.html
echo "Check if these experimental changes fuck smth up"

jupyter-lab --no-browser --port=${port} --ip=0.0.0.0
