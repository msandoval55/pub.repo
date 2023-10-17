Get users logged on server
```powershell
Invoke-Command -ComputerName Server1 -ScriptBlock {query user /server:$SERVER}
```
```powershell
#Example
 USERNAME        SESSIONNAME        ID STATE   IDLE TIME  LOGON TIME
 logan2          rdp-tcp#39         2  Active       1:10  8/3/2023 1:18 PM
 martin55                           3  Disc        15:17  8/3/2023 1:21 PM
 lugo85                             4  Disc      1+01:06  8/3/2023 1:22 PM
 gonzalez16                         5  Disc         1:22  8/3/2023 1:41 PM
 salazar38       rdp-tcp#65         7  Active          7  8/4/2023 9:03 AM
```


Get users and sessions logged on server
```powershell
Invoke-Command -ComputerName hybrid1 -ScriptBlock {qwinsta}
```
```powershell
#Example
SESSIONNAME       USERNAME                 ID  STATE   TYPE        DEVICE
>services                                    0  Disc
 console                                     2  Conn
 rdp-tcp                                 65536  Listen
```
Log user from server
```powershell
Invoke-Command -ComputerName server01 -ScriptBlock {logoff '#' /server:$SERVER}
```

Kill tasks of user id to log user off
```powershell
Invoke-Command -ComputerName server01 -ScriptBlock {taskkill /FI "SESSION eq ID#" /F}
```
```powershell
#Example
SUCCESS: The process with PID 18880 has been terminated.
SUCCESS: The process with PID 11368 has been terminated.
SUCCESS: The process with PID 26932 has been terminated.
```
