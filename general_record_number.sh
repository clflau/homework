#!/bin/bash

#This script functions like record_number.sh, but it takes one argument $1 the file name and returns a list of the number of times each individual was sampled.
#Procedures
#Take $1(a tab-separated file)
#Remove the header
#Replace tab separation with comma
#Cut out the first column
#Pipe to uniq
#Send output to list_of_IDs.txt
#Make while loop, grep search each ID in list_of_IDs.txt in $1 and output number of lines for that ID


tail -n +2 $1 | tr -s "\t" "," | cut -d "," -f 1 | uniq > list_of_IDs.txt
while read ID
	do printf "Individual $ID has been sampled "
		tail -n +2 $1 | tr -s "\t" "," | grep -c ^$ID,
		echo "time(s)"
done < list_of_IDs.txt

