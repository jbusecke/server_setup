#/bin/bash

NODENAME=tigressdata.princeton.edu

# Link a notebook running on tigressdata to current machine
# assumes that 'tigress' is defined in the ssh config file
ssh -N -f -L 9992:$NODENAME:9992 -L 9991:localhost:9991 tigress
open --new -a /Applications/Google\ Chrome.app --args "http://localhost:9992" "http://localhost:9991"
