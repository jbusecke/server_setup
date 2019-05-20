#!/bin/bash
conda install -y -c conda-forge nodejs

jupyter labextension install dask-labextension @krassowski/jupyterlab_go_to_definition @pyviz/jupyterlab_pyviz @jupyterlab/toc @jupyterlab/github @quentinandre/jupyterlab_snippets @ryantam626/jupyterlab_code_formatter @jupyterlab/git

pip install jupyterlab-git
pip install jupyterlab_snippets
pip install jupyterlab_code_formatter

jupyter serverextension enable --py jupyterlab_code_formatter
jupyter serverextension enable --py jupyterlab_git

jupyter lab build
