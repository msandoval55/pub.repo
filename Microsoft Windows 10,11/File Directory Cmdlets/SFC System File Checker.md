### System File Checker
```Powershell
#The sfc command can be used to verify and replace important windows system files. 
#If you experience a blue screen or other crashes the sfc command may fix the issue
sfc /scannow
```
```Powershell
#You can also run a test only without repairing it.
sfc /verifyonly
```