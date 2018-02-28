#/bin/bash

NODENAME=$1

# Link a notebook running on tiger to current machine
# assumes that 'tiger' is defined in the ssh config file
open -na /Applications/Google\ Chrome.app --args "http://localhost:7772" "http://localhost:7771/status"
# ssh -N -f -L 7771:$NODENAME:7771 -L 7772:$NODENAME:7772 tiger
ssh -N -L 7771:$NODENAME-ib0:7771 -L 7772:$NODENAME:7772 tiger
# The diagnostic interface has to be connected through via ib0 interface
# open --new -a /Applications/Google\ Chrome.app --args "http://localhost:7772" "http://localhost:7771/status"
