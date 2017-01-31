#!bin/bash

#This script takes one argument $1 txt file name
#Print out filename
#replace all spaces into semicolons
#
#Print out number of rows
#Print out number of columns

echo "Filename: $1"
row=$(tail -n +1 $1 | wc -l)
echo "Number of rows: $row" 
col=$(head -n 1 $1 | wc -w)
echo "Number of columns: $col"
