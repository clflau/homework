#!/bin/bash

#This script is similar to netsize.sh, but it prints number of rows and columns for each network file in current directory
#Procedure:
#For loop, print network file name
#number of rows
#number of cols

for filename in *.txt
	do 
		row=$(tail -n +1 $filename | wc -l)
		col=$(head -n 1 $filename | wc -w)
		echo "$filename $row $col"
done
