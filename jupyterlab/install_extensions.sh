#!/bin/bash
conda install -y -c conda-forge nodejs
jupyter labextension install dask-labextension @pyviz/jupyterlab_pyviz
jupyter lab build
