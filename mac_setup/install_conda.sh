#!/bin/sh
# download conda
cd ~/Downloads
wget http://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O miniconda.sh;
bash miniconda.sh -b -p ~/miniconda

# add installation packages for the base env....
# install all the extensions for the base env
