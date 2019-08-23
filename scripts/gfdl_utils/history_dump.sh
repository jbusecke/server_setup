#!/bin/bash

# This script takes an archive filename, unpacks the content in the current folder and concatenates all ncdump output in a textfile, enabeling you to search for variables and available timesteps
FILEPATH=$1
if [[ $2 == "" ]]
then
	OFILE='history_dump_output.txt'
else
	OFILE=$2
fi

if [[ ${FILEPATH: -4} == ".tar" ]]
then
	echo "Dumping netcdf content of $FILEPATH to $OFILE"
	# untar archive in current folder
	FILELIST=$(tar -tf $FILEPATH)

	mkdir history_dump_temp_dir
	touch $OFILE
	for file in $FILELIST;
	do
		echo $file
		if [[ ${file: -3} == ".nc" ]]
		then
			echo "##################################################" >> $OFILE
			echo "ncdump of $file" >> $OFILE
			echo "##################################################" >> $OFILE
			# Untar the file to temporary file
			tar -xf $FILEPATH -C ./history_dump_temp_dir $file
			ncdump -h history_dump_temp_dir/$file >> $OFILE
			rm history_dump_temp_dir/$file
		fi
	done
	rmdir history_dump_temp_dir
else
	echo "Passed archive ($FILEPATH) does not end with (.tar) .Aborting." 1>&2
	exit 1
fi
