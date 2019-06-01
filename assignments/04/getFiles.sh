#!/bin/bash
if [ -z $1 ]
then
	echo "No input file name!"
	echo "usage: getFiles.sh file"
else
	curl -i 192.168.33.102:8000/getFileContents/{$1}
fi
