#Enabling Remote Administration of Windows Server Core
#To allow remote access to Server Core via RDP:

cscript C:\Windows\System32\Scregedit.wsf /ar 0

#To allow remote management:

Configure-SMRemoting.exe –Enable
Enable-NetFirewallRule -DisplayGroup “Windows Remote Management”

#To display current Remote Management settings:

Configure-SMRemoting.exe -Get

#To allow Win-RM for PowerShell Remoting:

Enable-PSRemoting –force