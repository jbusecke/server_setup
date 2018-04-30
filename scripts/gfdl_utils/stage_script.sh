#!/bin/bash
# script that stages files from archive folders into work directories

SOURCEDIR=$1
TARGETDIR=$2

echo $TARGETDIR
echo $SOURCEDIR
mkdir -p $TARGETDIR

# Document the source of the data
touch "$TARGETDIR/README"
FULLPATH=$(readlink -f $SOURCEDIR)
echo "from $FULLPATH" >> "$TARGETDIR/README"


dmget $SOURCEDIR
scp -r $SOURCEDIR/* $TARGETDIR

# Tag successful transfer
echo "copy done" >> "$TARGETDIR/README"




