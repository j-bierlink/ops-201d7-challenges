# Script:  challenge_09                    
# Author:  Jenae Bielrink                     
# Date of latest revision: 11/17/22     
# Purpose: Powershell scripts                    

# Output all events from the System Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.

# $Begin = Get-Date -Date '11/16/2022 08:00:00'
# $End = Get-Date -Date '11/17/2022 17:00:00'
# Get-EventLog -LogName System -EntryType Error -After $Begin -Before $End

Get-EventLog -LogName System -After (Get-Date).AddDays(-1)

# Output all “error” type events from the System event log to a file on your desktop named errors.txt.

Get-EventLog -LogName System -EntryType Error >C:\Users\kurti\OneDrive\Desktop\error.txt

# Print to the screen all events with ID of 16 from the System event log.

Get-EventLog -LogName Application -Source Outlook | Where-Object {$_.EventID -eq 16} |
              Select-Object -Property Source, EventID, InstanceId, Message

# Print to the screen the most recent 20 entries from the System event log.’

Get-EventLog -LogName System -Newest 20

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).

$A = Get-EventLog -LogName System -Newest 500
$A | Select-Object -Property *

# $Events = Get-EventLog -LogName System -Newest 20
# $Events | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending
