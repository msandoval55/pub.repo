#Verify the disk space using the invoke cmdlet
Invoke-Command -ComputerName "servername" -ScriptBlock {fsutil volume diskfree c:}
