#!/bin/bash

#This script functions like record_number.sh, but it takes one argument $1 the file name and returns a list of the number of times each individual was sampled.
#How it works
#Take $1(a tab-separated file)
#Remove the header
#Replace tab separation with comma
#Cut out the first column
#Pipe to uniq
#assign output to variable $list_of_IDs
#Make for loop, grep search each ID in $list_of_IDs in $1 and output number of lines for that ID


list_of_IDs=$(tail -n +2 $1 | tr -s "\t" "," | cut -d "," -f 1 | uniq)
for ID in $list_of_IDs
	do 
		number=$(tail -n +2 $1 | tr -s "\t" "," | grep -c ^$ID,)
		echo "Individual $ID has been sampled $number time(s)"
done


