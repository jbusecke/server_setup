#!/bin/bash
source activate standard
SOURCEDIR=~/code/conda_envs/dask_scripts

cd $HOME
python $SOURCEDIR/start_notebook.py $(hostname)
