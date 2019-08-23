#!/bin/bash
# conda install -y -c conda-forge nodejs # This should be present in the base conda env (from where you call jupyterlab)

jupyter labextension install dask-labextension @krassowski/jupyterlab_go_to_definition @pyviz/jupyterlab_pyviz @jupyterlab/toc @jupyterlab/github @ryantam626/jupyterlab_code_formatter @jupyterlab/git

# These are not working, maybe try at a later point
# jupyterlab-mp4
# @quentinandre/jupyterlab_snippets

pip install jupyterlab_code_formatter

jupyter serverextension enable --py jupyterlab_code_formatter
jupyter serverextension enable --py jupyterlab_git

jupyter lab build
