#Display all applied GPOs run this command
#Note: You need to run the command prompt in administrator mode or it will not generate a full report.
```powershell
gpresult /r
```
#Display GPOs applied to the user
```powershell
gpresult /r /scope:user
```
#Administrator account needed to run
#Display GPOs applied to the computer
```powershell
gpresult /r /scope:computer
```
#Display GPOs for a remote computer
#Administrator account needed to run
```powershell
Invoke-Command -ComputerName 'computername' -ScriptBlock {gpresult /r /scope:user}
```
#Administrator account needed to run
```powershell
Invoke-Command -ComputerName 'computername' -ScriptBlock {gpresult /r /scope:computer}
```
#Generate an HTML report
```powershell
gpresult /h c:\report.html
```
#Send command output to a text file
```powershell
gpresult /r > c:\result.txt
```