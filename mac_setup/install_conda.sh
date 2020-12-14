#!/bin/sh
# download conda
cd ~/Downloads
wget http://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O miniconda.sh;
bash miniconda.sh -b -p ~/miniconda
rm miniconda.sh
# not sure if this is needed, but i had trouble with wget before
# echo 'export PATH="/usr/local/opt/gettext/bin:$PATH"' >> ~/.zshrc

conda init zsh
source ~/.zshrc

# create a dummy env to update the base env
conda create -n dummy python=3.6 -y
conda activate dummy
# create the perfect base env
conda env update -f ~/code/server_setup/conda_files/base.yml -y
conda deactivate # switch back to base env

# remove dummy
conda remove --name dummy --all -y

# install extensions
~/code/server_setup/jupyterlab/install_extensions.sh
