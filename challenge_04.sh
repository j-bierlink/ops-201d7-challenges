#!/bin/bash

# Script: challenge_04                      
# Author: Jenae Bierlink                      
# Date of latest revision: 11/10/22      
# Purpose: learning about arrays 

# Review the process for creating a new directory.
# Create four directories using the script.
mkdir dir1 
mkdir dir2
mkdir dir3
mkdir dir4
# Load each directory path into an array.
list_array=(dir1 dir2 dir3 dir4)
# files=("f1.txt" "f2.txt" "f3.txt" "f4.txt" "f5.txt")
# create a new .txt file within each directory by referencing the directory with array indices, not the literal directory path.

#touch /home/jbierlink/test/f1.txt - how to create a file in a different directory

touch /home/jbierlink/ops-201d7-challenges/${list_array[0]}/f1.txt
touch ./${list_array[1]}/f1.txt
touch ./${list_array[2]}/f1.txt
touch ./${list_array[3]}/f1.txt

# Test & validate.





# Declare global variables
# files=("f1.txt" "f2.txt" "f3.txt" "f4.txt" "f5.txt")

# Declare functions

# Main
# echo ${files[4]}
# echo ${files[3]}
# echo ${files[2]}
# echo ${files[1]}
# echo ${files[0]}