
| Parameter |	Description |
| ------------- | ------------- |
|/s <system> |	Specifies the name or IP address of a remote computer. Don't use backslashes. The default is the local computer. 
|/u <username> |	Uses the credentials of the specified user to run the command. The default user is the user who is signed in to the computer that issues the command. 
|/p [<password>] |	Specifies the password of the user account that is provided in the /u parameter. If /p is omitted, gpresult prompts for the password. The /p parameter can't be used with /x or /h. 
|/user [<targetdomain>\]<targetuser>] |	Specifies the remote user whose RSoP data is to be displayed. 
|/scope {user  computer} |	Displays RSoP data for either the user or the computer. If /scope is omitted, gpresult displays RSoP data for both the user and the computer.
|[/x /h] <filename> |	Saves the report in either XML (/x) or HTML (/h) format at the location and with the file name that is specified by the filename parameter. Can't be used with /u, /p, /r, /v, or /z. 
|/f	| Forces gpresult to overwrite the file name that is specified in the /x or /h option. 
|/r	| Displays RSoP summary data. 
|/v	| Displays verbose policy information. This includes detailed settings that were applied with a precedence of 1. 
|/z	| Displays all available information about Group Policy. This includes detailed settings that were applied with a precedence of 1 and higher. 
|/?	| Displays help at the command prompt. | 

Display all applied GPOs run this command
Note: You need to run the command prompt in administrator mode or it will not generate a full report.
```powershell
gpresult /r
```
Display GPOs applied to the user
```powershell
gpresult /r /scope:user
```
Administrator account needed to run
Display GPOs applied to the computer
```powershell
gpresult /r /scope:computer
```
Display GPOs for a remote computer
Administrator account needed to run
```powershell
Invoke-Command -ComputerName 'computername' -ScriptBlock {gpresult /r /scope:user}
```
Administrator account needed to run
```powershell
Invoke-Command -ComputerName 'computername' -ScriptBlock {gpresult /r /scope:computer}
```
Generate an HTML report
```powershell
gpresult /h c:\report.html
```
Generate an HTML report from remote computer. *Does not work with server core*
```powershell
Invoke-Command -ComputerName 'remotecompuntername' -ScriptBlock {GPResult /h c:\temp\gpreport.html}
```

https://learn.microsoft.com/en-us/troubleshoot/windows-server/group-policy/agpm-gpresult-not-working

Send command output to a text file
```powershell
gpresult /r > c:\result.txt
```
