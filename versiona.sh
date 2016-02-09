#!/bin/bash

#get just the date part from the date command
date=$(date -I)

#get file name to be copied
file_name=$1

#concatenate current date and passed file name
new_name=$date\_$file_name

#copy file passed to new file
cp $1 $new_name

echo "Copied"




