### Get Windows System Info
```Powershell
#Get Windows Product Name, Windows Version, OS Hardware Version
Get-ComputerInfo | select WindowsProductName, WindowsVersion, OsHardwareAbstractionLayer
```