# Script: challenge 10                       
# Author: Jenae Bierink - revised after class review of Grant's code                    
# Date of latest revision: 11/18/22 revised 11/21/22     
# Purpose: Power shell scripting

# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.

# Get-Process | Sort-Object CPU -Desending

# Get-Process | Select-Object -Property Name, CPU, $CPUPercent, Description |Sort-Object -Property CPUPercent -Descending

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.

Get-Process | Sort-Object id -descending

# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.

Get-Process | Sort-Object WS -Descending | Select-Object -First 5

# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.

Start-Process -FilePath "C:\Program Files (x86)\Internet Explorer\iexplore.exe" -ArgumentList "https://owasp.org/www-project-top-ten"

# Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.

# For
  # (Start-Process -FilePath "C:\Program Files (x86)\Internet Explorer\iexplore.exe" -ArgumentList "https://owasp.org/www-project-top-ten")
# {
  # Write-Host 10
# }  

# start-Process -FilePath "C:\Program Files (x86)\Internet Explorer\iexplore.exe" -ArgumentList "https://owasp.org/www-project-top-ten"

# stop-process -FilePath "C:\Program Files (x86)\Internet Explorer\iexplore.exe"

for ($i = 1 ; $i - le 10 ; $i++)

{
  Start-Process iexplore.exe "https://owasp.org/www-project-top-ten"
    Start-Sleep -Milliseonds 250
    }
     

# Close all Internet Explorer windows.

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.

taskkill /iexplore.exe /F 

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.

taskkill /F /PID 37580