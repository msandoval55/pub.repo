### Shutdown Commands
```Powershell
#This command will restart computer
shutdown /r /m \\computer name
```
```Powershell
#This command will shut down the remote computer
shutdown /s /m \\computer name
```
```Powershell
#View previous shutdown/restart logs
shutdown /d
```
```Powershell
#Log user off of a remote computer
shutdown /l /m \\computer name
```
```Powershell
#Log user off of a remote computer
shutdown /l /m \\computer name
```
```Powershell
#Shutdown a remote computer with a custom message.
shutdown /m \\computer name /c "Rebooting computer, have a nice day"
```
```Powershell
#Abort a system shutdown.
shutdown /a
```