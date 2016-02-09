#!/bin/bash

#assign words file to a variable
dict_path="/usr/share/dict/words"

#get line count of file pass it to a textfile and cut the file name 
#assign value to variable
line_count=$(wc -l $dict_path > linecount.txt && cut -d " " -f1 linecount.txt)

#generate a random number between 1 and line count
random_number=$((RANDOM%$line_count+1))

#using the random umber get the last set of lines from 
#the random number then pipe to head and get the first line
output=$(tail -n $random_number $dict_path | head -n 1)

echo $output 



