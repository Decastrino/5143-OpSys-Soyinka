#!/bin/bash

#get just the date part from the date command
date=$(date -I)

#get file  to be copied
file=$1

#get file name
file_name=${file%.*}

#get the extension of the passed file
file_ext=${file##*.}

#concatenate current date and passed file name
new_name=$file_name\_$date.$file_ext

#copy file passed to new file
cp $1 $new_name

echo "Copied"




