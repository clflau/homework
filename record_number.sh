#!/bin/bash

#This script takes 2 arguments: $1 the file name and $2 the ID of individual
#This script returns the number of records for that ID in the file
#It works by first taking $1(a tab-separated file), remove the header, replace tab separation with comma, and search for and count the number of instances of $2


tail -n +2 $1 | tr -s "\t" "," | grep -c ^$2,
