#!/bin/bash

# Script: challenge 06                       
# Author: Jenae Bierink                      
# Date of latest revision: 11/14/22     
# Purpose: Conditionals  

file='newtestfile.sh newtestfile2.sh'

# Create a script that detects if a file or directory exists, then creates it if it does not exist.

if
    test -f "$file"
then
    echo "$file exists"
else

    touch $file
fi
# Your script must use at least one array, one loop, and one conditional.

for file in $file
do
        echo $file
done
