#!/bin/bash

# Script: challenge 05                       
# Author: Jenae Bierink                      
# Date of latest revision: 11/11/22     
# Purpose: loops                      

# Write a script displays running ping process, then kills process
process () {
        ping 8.8.8.8
    }
kprocess () {
        kill ping 8.8.8.8
    }                  
# Use a loop in your script
 while $process
 do 
    $kprocess
 done    




# Basic for loop
# names="Stan Kyle Cartman"
# for name in $names
# do
#  echo $name
#done

# echo "Script complete"

# End
