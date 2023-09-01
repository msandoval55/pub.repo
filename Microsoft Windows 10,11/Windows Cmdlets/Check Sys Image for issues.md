```Powershell
#Check sys image issues
DISM /online /cleanup /checkhealth
```
```Powershell
#Resolve System Image Issues
DISM /online /cleanup /restorehealth
```