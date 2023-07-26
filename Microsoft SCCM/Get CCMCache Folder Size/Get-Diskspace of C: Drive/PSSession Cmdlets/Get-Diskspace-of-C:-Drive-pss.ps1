#Enter a remote powershell session with the server
Enter-PSSession -ComputerName servername

#Verify the disk space brfore
fsutil volume diskfree c: