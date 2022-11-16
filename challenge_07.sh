#!/bin/bash

# Script:  challenge_07                     
# Author:  Jenae Bielrink                     
# Date of latest revision: 11/15/22     
# Purpose: System Inormaiton                      

# Declaration of variables

echo "Computer Name"

    hostname
    
echo "CPU"

    lshw | grep "cpu" -A 7 | head -7 

echo "Ram"

    lshw | grep "memory" -A 4 | head -4 

echo "Dispay Adapter"

    lshw | grep "display" -A 13 | head -13 

echo "Network Adapter"

    lshw | grep "network" -A 15 | head -16 



# Main
# Search the output of lshw command and returns every line with the word bridge in it
#lshw | grep “bridge” 
