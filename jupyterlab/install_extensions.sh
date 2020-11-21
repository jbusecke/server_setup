#!/bin/bash
conda install -y -c conda-forge nodejs # This should be present in the base conda env (from where you call jupyterlab)

# dask labextension (probably the most useful thing right now)
jupyter labextension install dask-labextension 

# The code formatter is gold!
jupyter labextension install @ryantam626/jupyterlab_code_formatter
conda install -c conda-forge jupyterlab_code_formatter
jupyter serverextension enable --py jupyterlab_code_formatter

# pyviz toc github (all working without extra wurst)
jupyter labextension install @pyviz/jupyterlab_pyviz @jupyterlab/toc
jupyter labextension install jupyterlab-drawio

# go to definition (not sure if this works)
jupyter labextension install @krassowski/jupyterlab_go_to_definition

# this is for ipywidgets?
jupyter labextension install @jupyter-widgets/jupyterlab-manager

# templates (testing)
pip install jupyterlab_templates
jupyter labextension install jupyterlab_templates
jupyter serverextension enable --py jupyterlab_templates

# snippets (testing)
pip install jupyterlab_snippets
jupyter labextension install jupyterlab_snippets
jupyter serverextension enable --py jupyterlab_snippets

# resource topbar
pip install nbresuse
jupyter serverextension enable --py nbresuse --sys-prefix
jupyter nbextension install --py nbresuse --sys-prefix
jupyter nbextension enable --py nbresuse --sys-prefix
jupyter labextension install jupyterlab-topbar-extension jupyterlab-system-monitor


# put them all together
jupyter lab build
jupyter labextension list


# These are not working, maybe try at a later point
# jupyterlab-mp4
# @quentinandre/jupyterlab_snippets
