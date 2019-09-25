#!/bin/bash
conda install -y -c conda-forge nodejs # This should be present in the base conda env (from where you call jupyterlab)

jupyter labextension install dask-labextension @krassowski/jupyterlab_go_to_definition
jupyter labextension install @pyviz/jupyterlab_pyviz @jupyterlab/toc @jupyterlab/github
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter labextension install @ryantam626/jupyterlab_code_formatter @jupyterlab/git

jupyter serverextension enable --py jupyterlab_git

pip install jupyterlab_snippets
jupyter labextension install @quentinandre/jupyterlab_snippets


pip install jupyterlab_code_formatter
jupyter serverextension enable --py jupyterlab_code_formatter

pip install nbresuse
jupyter labextension install jupyterlab-topbar-extension jupyterlab-system-monitor

jupyter lab build

# These are not working, maybe try at a later point
# jupyterlab-mp4
# @quentinandre/jupyterlab_snippets
