#!/bin/bash

# Script: challenge_13                      
# Author: Jenae Bierink                      
# Date of latest revision: 11/23/22     
# Purpose: Domain Analyzer

# https://ryanstutorials.net/bash-scripting-tutorial/bash-input.php

# Take a user input string. Presumably the string is a domain name such as Google.com.

file=domain_info.txt

echo "Enter Domain name:"
read domain_name

touch domain_info.txt

# Run whois against a user input string.
function1() {
    whois $domain_name>> $file
}

# Run dig against the user input string.
function2() {
    dig $domain_name>> $file

}

# Run host against the user input string.
function3() {
    host $domain_name>> $file
}

# Run nslookup against the user input string
function4() {
    nslookup $domain_name>> $file
}

function1
function2
function3
function4

## END







