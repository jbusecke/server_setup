#!/bin/bash
export PATH="/usr/bin:$PATH"
#echo $PATH
# Script that copies files to tigress, while preserving the folder structure.
SOURCEROOT='/archive/Julius.Busecke'
#TARGETROOT='tiger-offcampus:/tigress/jbusecke/GFDL_mirror'
TARGETROOT='tiger-offcampus:/tigress/GEOCLIM/LRGROUP/jbusecke/GFDL_mirror'
FILE=$1
FILEPATH=$(pwd)
FULLPATH=$FILEPATH/$FILE
STRIPPEDPATH=${FULLPATH#$SOURCEROOT/}
FULLTARGETPATH=$TARGETROOT/$STRIPPEDPATH
# This is the crux. The '/./' tells rsync where to start keeping the file structure.
RSYNCPATH=$SOURCEROOT/./$STRIPPEDPATH

echo Staging $RSYNCPATH to $FULLTARGETPATH
#echo 'Dmgetting'
# get files from archive (since the path is not set correctly - due to zsh? - i have to use absolute paths; could also modify the path)
dmget $FULLPATH
# for large dirs, this could use a progressbar or just a query to `dmwho` until finished.
echo 'Copying'
# copy them over to the target root, while preserving the folder structure
rsync -varKLR --exclude '*/stage_ignore/**' $RSYNCPATH  $TARGETROOT/
