# Setting up conda with environments
I have adapted a workflow, where have one large `base` env, which mostly contains jupyter and all the stuff needed for a good 'frontend'.Each project will have the actual compute environment in the project folder. By using `conda_nb_kernels` I can choose the environments I use to compute from within jupyterlab, so there is no need to clutter the front env with other libraries.

## Setup procedure
My universal base environment is in this folder as `base.yml`. In order to install it you need to have another environment and activate that. From there you can do:
```
conda env update -f base.yml
```
Thats it.

### some old crap that was relevant for discover.
fucks this up on discover (test on other systems), install manually using
    # # # conda remove zeromq-y; conda install zeromq -y;conda install nb_conda_kernels -y
    # #
    # # #  - zeromq #libsodium did not work alone
    # # #- libsodium #experimental fix (for problems with nb_conda_kernels)
