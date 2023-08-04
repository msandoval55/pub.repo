### Install Microsoft Defender for Identity sensor
Installing Azure Advanced Threat Protection sensor on domain controllers with windows server core.

[Download the Microsoft Defender for Identity sensor](https://learn.microsoft.com/en-us/defender-for-identity/download-sensor?source=recommendations)

[Install the Microsoft Defender for Identity sensor](https://learn.microsoft.com/en-us/defender-for-identity/install-sensor)

```Powershell
c:\users\domain user account>notepad
```
```Powershell
c:\users\domain user account>cd c:\temp\azure atp sensor setup
```
```Powershell
c:\temp\azure atp sensor setup>dir
```
```Powershell
c:\temp\azure atp sensor setup>"azure atp sensor setup.exe" /quite netframeworkcommandlinearguments="/q" AccessKey="ENTER AZURE ATP KEY"
```