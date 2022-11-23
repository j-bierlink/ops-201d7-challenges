# Script:  challenge_12                    
# Author:  Jenae Bielrink                     
# Date of latest revision: 11/22/22     
# Purpose: Select-String

$newfile = "network_report.txt"

Function IPv4Address {
    ipconfig /all > $newfile
    Select-String -path $newfile -pattern "IPv4 Address"
    rm $newfile
}

IPv4Address

# without functions and variables

# ipconfig /all > network_report.txt
# Select-String -path "network_report" -patern "IPv4 Address"
# rm "network_report.txt"

### End