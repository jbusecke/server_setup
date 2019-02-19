#!/bin/bash
#script to archive folders from work to archive, while preserving file structure. They can be re-'staged' at any time
SOURCEROOT='/work/Julius.Busecke'
TARGETROOT='/archive/Julius.Busecke'
FILE=$1
PATH=$(pwd)
FULLPATH=$PATH/$FILE
STRIPPEDPATH=${FULLPATH#$SOURCEROOT/}
FULLTARGETPATH=$TARGETROOT/$STRIPPEDPATH
# This is the crux. The '/./' tells rsync where to start keeping the file structure.
RSYNCPATH=$SOURCEROOT/./$STRIPPEDPATH

echo Backing upp $RSYNCPATH to $FULLTARGETPATH
echo 'Dmgetting'
echo 'Copying'
# copy them over to the target root, while preserving the folder structure
/usr/bin/rsync -varKLR $RSYNCPATH  $TARGETROOT/
