#!/bin/bash

export XDG_RUNTIME_DIR=""


node=$(hostname -s)
user=$(whoami)
cluster="tigercpu"
port=10001
dask_port=10002


echo -e "
Command to create ssh tunnel:
ssh -N -L ${port}:${node}:${port} -L ${dask_port}:${node}:${dask_port} tigercpu

Use a Browser on your local machine to go to:
localhost:${port}  (prefix w/ https:// if using password)
"


jupyter-lab --no-browser --port=${port} --ip=0.0.0.0
