#!/bin/bash
conda install -y -c conda-forge nodejs
jupyter labextension install dask-labextension @krassowski/jupyterlab_go_to_definition @pyviz/jupyterlab_pyviz @jupyterlab/toc @jupyterlab/github @quentinandre/jupyterlab_snippets
jupyter lab build
