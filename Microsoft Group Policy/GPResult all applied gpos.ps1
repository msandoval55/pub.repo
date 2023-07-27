#Display all applied GPOs run this command
#Note: You need to run the command prompt in administrator mode or it will not generate a full report.
gpresult /r

#Display GPOs applied to the user
gpresult /r /scope:user

#Display GPOs applied to the computer
gpresult /r /scope:computer

#Display GPOs for a remote computer
gpresult /s computername
gpresult /S 10.0.49.42 /SCOPE COMPUTER /X output.xml
Invoke-Command -ComputerName 'computername' -ScriptBlock {gpresult /r /scope:user}
Invoke-Command -ComputerName 'computername' -ScriptBlock {gpresult /r /scope:computer}

#Generate an HTML report
gpresult /h c:\report.html

#Send command output to a text file
gpresult /r > c:\result.txt