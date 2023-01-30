# pub.repo

This is my Public repository.


| Subjects | Syntax |
| ------------- | ------------- |
| Microsoft Windows 10, 11 | CMD, Powershell |
| Microsoft Windows Server | CMD, Powershell  |
| Microsoft Exchange Server | Powershell  |
| Microsoft Azure | Powershell  |

## Summary

- [Microsoft Windows 10 and 11 Commands](#Microsoft-Windows-10-and-11-Commands)
  - [Windows Commands](#Windows-Commands)
    - [Get System Info](#Get-System-Info)
    - [Get Windows System Info](#Get-Windows-System-Info)
    - [Get Host Name of local computer](#Get-Host-Name-of-local-computer)
    - [Get MAC Address of local computer](#Get-MAC-Address-of-local-computer)
    - [Get MAC Address of remote computer](#Get-MAC-Address-of-remote-computer)
    - [Whoami commands](#Whoami-commands)
    - [Shutdown Commands](#Shutdown-Commands)
  - [File Directory Commands](#File-Directory-Commands)
    - [Change Directory](#Change-Directory)
    - [Make Directory](#Make-Directory)
    - [System File Checker](#System-File-Checker)
    - [Check Disk](#Check-Disk)
    - [Connect and Remove Network Resources](#Connect-and-Remove-Network-Resources)
  - [Network Commands](#Network-Commands)
    - [Ping](#Ping)
    - [ipconfig](#ipconfig)
    - [nslookup](#nslookup)
    - [tracert](#tracert)
    - [netstat](#netstat)
    - [telnet](#telnet)
    - [Stop and Start Printer Spooler](#Stop-and-Start-Printer-Spooler)
    - [dcdiag](#dcdiag)
  - [Group Policy Commands](#Group-Policy-Commands)
    - [Group policy update](#Group-policy-update)
    - [Group policy Results](#Group-policy-Results)
  - [Remote Powershell Commands](#Remote-Powershell-Commands)
- [Microsoft Windows Server](#Microsoft-Windows-Server)
  - [Active Directory](#Active-Directory)
    - [Active Directory Commands](#Active-Directory-Commands)
      - [Manually import the module into the PowerShell](#Manually-import-the-module-into-the-PowerShell)
      - [Active Directory Domain Password Policy](#Active-Directory-Domain-Password-Policy)
      - [Active Directory Group Memberships](#Active-Directory-Group-Memberships)
    - [Active Directory Group Audit Script](#Active-Directory-Group-Audit-Script)
  - [Windows Server Commands](#Windows-Server-Commands)
- [Microsoft Exchange](#Microsoft-Exchange)
  - [Exchange Patching Servers Windows Server Core](#Exchange-Patching-Servers-Windows-Server-Core)
    - [Updating Server3](#Updating-Hybrid3)
    - [Updating Server2](#Updating-Hybrid2)
    - [Updating Server1](#Updating-Hybrid1)
  - [Exchange PowerShell Error Moving PAM](#Exchange-PowerShell-Error-Moving-PAM)
  - [Exchange Misc Powershell CMDs](#Exchange-Misc-Powershell-CMDs)
- [Microsoft Azure](#Microsoft-Azure)
  - [Microsoft Azure Active Directory](#Microsoft-Azure-Active-Directory)
    - [App Registration API Permission](#App-Registration-API-Permission)
    - [Restore a deleted Microsoft 365 group in Azure Active Directory](#Restore-a-deleted-Microsoft-365-group-in-Azure-Active-Directory)
  - [Microsoft Defender for Identity](#Microsoft-Defender-for-Identity)
    - [Install Microsoft Defender for Identity sensor](#Install-Microsoft-Defender-for-Identity-sensor)



# Microsoft Windows 10 and 11 Commands

## Windows Commands
### Get System Info
```Powershell
#Get System Information
systeminfo
```
```Powershell
#Get System Information from a remote computer
system info /s computername
```
### Get Windows System Info
```Powershell
#Get Windows Product Name, Windows Version, OS Hardware Version
Get-ComputerInfo | select WindowsProductName, WindowsVersion, OsHardwareAbstractionLayer
```
### Get Host Name of local computer
```Powershell
#Get hostname of local computer
hostname
```
### Get MAC Address of local computer
```Powershell
#Get MAC Address
getmac
```
```Powershell
#Get MAC Address Verbose
getmac /v
```
### Get MAC Address of remote computer
```Powershell
#Get MAC Address from remote computer
getmac /s computername
```
### Whoami commands
```Powershell
#Get the current logged on user
whoami
```
```Powershell
#Display the user groups to which the current user belongs
whoami /groups
```
```Powershell
#Display the user name in UPN format
whoami /upn
```
```Powershell
#Displays current domain, username and users SID
whoami /user
```
```Powershell
#Displays all information for the current user
whoami /all
```
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

## File Directory Commands

### Change Directory
```Powershell
#The cd command allows you to change to another directory on your computer
cd windows 
cd c:\temp example
```
### Make Directory
```Powershell
#The mkdir command will create a directory or subdirectory. It creates the directory in the current directory
mkdir folder1
```
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
### Check Disk
```Powershell
#The chkdsk command scans the file system on the disk and checks the integrity of the files and metadata
chkdsk
```
### Connect and Remove Network Resources
```Powershell
#Map a network drive
net use \\srv-vm1\share
```
```Powershell
#Remove a resource use /delete
net use z: /delete
```

## Network Commands

### Ping
The ping command tests network connectivity between two devices by sending ICMP echo requests. 

```Powershell
#Ping by hostname
ping dc1.ad.activedirectorypro.com
```
```Powershell
#-l switch specifies a packet size.
ping 192.168.5.1 -l 2024
```
```Powershell
#-a switch will do a reverse name resolution on the IP (PTR record lookup).
ping 10.250.177.46 -a
```
```Powershell
#-t switch will do a continuous ping. A very popular command for testing network connectivity.
ping 192.168.5.1 -t
```
### ipconfig
The ipconfig command is used to display a computers TCP/IP configuration. You can display the IP info for a single or all network cards installed on a computer.
This command can also display the DNS cache on the local machine, flush DNS, release and renew the DHCP address on all network cards.

```Powershell
#/all switch to display IP info for all network cards.
ipconfig /all 
```
```Powershell
#/flushdns switch to clear the local DNS resolver cache.
ipconfig /flushdns
```
```Powershell
#/registerdns to trigger dynamic registration of the DNS names and IP addresses that are configured on the computer.
ipconfig /registerdns
```
```Powershell
#/release to release DHCP addresses. This will release DCHP address on the network cards that are configured for DHCP.
ipconfig /release
```
```Powershell
#/renew switch will renew DHCP address for all network cards.
ipconfig /renew
```
```Powershell
#/displaydns switch will display the DNS client cache.
ipconfig /displaydns
```
### nslookup
The nslookup command is used to check DNS records and troubleshoot DNS. This is a must-have command for any sysadmin or network engineer. You can do all kinds of tests to verify DNS is working correctly, you can check PTR, A, MX, SOA, and many other types of DNS records. It’s another one of my favorite windows commands for network troubleshooting.

```Powershell
#nslookup Domain name
nslookup domainname
```
```Powershell
#nslookup pointer recored
nslookup -type=ptr domainname
```
### tracert
The tracert command is used to track the pathway a packet takes from a source IP to the destination address.
```Powershell
#trace route and hops of packets
tracert ipaddress
```
### netstat
The netstat command displays TCP/IP connection information, ethernet stats, and the computer’s routing table. As a sysadmin I use this command on Windows servers and clients when troubleshooting connection issues. I can verify application servers are working correctly by checking that the service is running and listening for connections on the port.

```Powershell
#Display all active and listening ports
netstat -a
```
```Powershell
#Display all connections in numerical order
netstat -a -n
```
```Powershell
#Displays the executable that is used to create the connection
netstat -ab
```
```Powershell
#Displays ethernet statistics. This is a quick way to check for network card errors and discards
netstat -e
```
```Powershell
#Displays the exe and the process ID (PID) associated with the connection
netstat -e
```
```Powershell
#Displays ethernet statistics. This is a quick way to check for network card errors and discards
netstat -abo
```
```Powershell
#Displays the computer local routing table
netstat -r
```
```Powershell
#Displays FQDN with the connection info
netstat -af
```

### telnet
Use the windows telnet client to test if a remote host is allowing connection on a specific port. I typically use this when someone says your firewall is blocking a program from working.
<br />

If you know the port number the application runs on you can use the command below.

```Powershell
#telnet + hostname or IP + port number
telnet srv01 21
```

### Stop and Start Printer Spooler
```Powershell
#Stop the printer spooler service
net stop spooler
```
```Powershell
#Start the printer spooler service
net start spooler
```

### dcdiag
This command will analyze the state of your domain controllers, it has over 30 built in tests.
```Powershell
#run dcdiag on a specific domain controller use this command
dcdiag /s:DC1
```

## Group Policy Commands

### Group policy update
```Powershell
#This command will pull down any GPO changes to the computer
gpupdate
```
```Powershell
#Use /force to reapply all the GPOs on the computer
gpupdate /force
```
### Group policy Results
```Powershell
#Display all applied GPOs run this command
#Note: You need to run the command prompt in administrator mode or it will not generate a full report.
gpresult /r
```
```Powershell
#Display GPOs applied to the user
gpresult /r /scope:user
```
```Powershell
#Display GPOs applied to the computer
gpresult /r /scope:computer
```
```Powershell
#Display GPOs for a remote computer
gpresult /s computername
gpresult /S 10.0.49.42 /SCOPE COMPUTER /X output.xml
Invoke-Command -ComputerName 'computername' -ScriptBlock {gpresult /r /scope:user}
Invoke-Command -ComputerName 'computername' -ScriptBlock {gpresult /r /scope:computer}
```
```Powershell
#Generate an HTML report
gpresult /h c:\report.html
```
```Powershell
#Send command output to a text file
gpresult /r > c:\result.txt
```



## Remote Powershell Commands
```Powershell
#Enable Remoting
Enable-PSRemoting
```
```Powershell
#Check Tasklist for running .dll file
Invoke-Command -ComputerName "server name" -ScriptBlock {tasklist /m sqlsrv32.dll}
```
```Powershell
#Retrive Installed Applications
Invoke-Command -ComputerName "server name" -ScriptBlock {Get-WmiObject -Class Win32_Product | Select-Object Name,IdentifyingNumber}
```

MISC Commands

```Powershell
#Power issues for pc
powercfg /energy
powercfg /batteryreport
```
```Powershell
#Show file type
Assoc
```
```Powershell
#Change file type
Assoc .mp4=vlc.vlc
```
```Powershell
#Check sys image issues
DISM /online /cleanup /checkhealth
```
```Powershell
#Resolve System Image Issues
DISM /online /cleanup /restorehealth
```

# Microsoft Windows Server

## Active Directory
### Active Directory Commands

### Manually import the module into the PowerShell
```Powershell
#Manually import the module into the PowerShell session with the command
Import-Module activedirectory
```
### Active Directory Domain Password Policy
```Powershell
#Get AD default domain password policy
Get-ADDefaultDomainPasswordPolicy
```
### Active Directory Group Memberships
```Powershell
#Find what groups a user is a member of
Get-ADPrincipalGroupMembership -Identity "ad.username" | select name | sort name
```
```Powershell
#Get active directory user groups
(Get-ADUser "ad.username" -Properties MemberOf).MemberOf | Get-ADObject -Properties Name | Sort Name | Format-Table Name
```
```Powershell
#Get active directory group members
Get-ADGroupMember -Identity "ad.groupname" -Recursive | select name | sort Name, Title, Department
```
```Powershell
#Find Groups in a OU
Get-ADOrganizationalUnit -Filter * -SearchBase "OU=OU.Folder.Name, OU=Domain.name, DC=Domain.name, DC=edu.or.com" | Get-ADObject -Properties Name, Title, Department | Format Table Name, Title, Department
```
```Powershell
#Find Groups in a OU with Name Only
Get-ADOrganizationalUnit -Filter * -SearchBase "OU=OU.Folder.Name, OU=Domain.name, DC=Domain.name, DC=edu.or.com" | Get-ADObject -Properties Name | Format Table Name
```


### Active Directory Group Audit Script

```Powershell
function Green
{
process { Write-Host $_-ForegroundColor Green } 
}
function Red
{
process { Write-Host $_-ForegroundColor Red }
}
Write-Output
"*********************************************************************************" | red
Write-Output "↓ ↓ ↓ Title ↓ ↓ ↓"| Green Write-Output
"*********************************************************************************" | red
#
#
#
#
Get-ADGroupMember -Identity "ad.group.name" | Get-ADObject - Properties 
Name,Title,Department,Description | Sort Department,Title | Format-Table Name,Title,Department,Description
#
#
#
#
function Green
{
process { Write-Host $_-ForegroundColor Green } 
}
function Red
{
process { Write-Host $_-ForegroundColor Red }
}
Write-Output
"*********************************************************************************" | red
Write-Output "↓ ↓ ↓ Title ↓ ↓ ↓" | Green Write-Output
"*********************************************************************************" | red
#
#
#
#
Get-ADGroupMember -Identity "ad.group.name" | Get-ADOhject -Properties
Name,Title,Department,Description | Sort Department,Title | Format-Table Name,Title,Department,Description
#
#
#
#
function Green
{
process { Write-Host $_-ForgroundColor Green }
}
function Red
{
process { Write-Host $_-ForgroundColor Red }
}
Write-Output
"*********************************************************************************" | red
Write-Output "↓ ↓ ↓ Title ↓ ↓ ↓" | Green Write-Output
"*********************************************************************************"  | red
#
#
#
#
Get-ADGroupMember -Identity "ad.group.name" | Get-ADObject -Properties
Name,Title,Department, Description | Sort Department,Title | Format-Table Name,Title,Department,Description
#
#
#
#
function Green
{
process { Write-Host $_-ForegroundColor Green } 
}
function Red
{
process { Write-Host $_-ForegroundColor Red }
}
Write-Output
"*********************************************************************************" | red
Write-Output "↓ ↓ ↓ Title ↓ ↓ ↓" | Green Write-Output
"*********************************************************************************" | red
Get-ADGroupMember -Identity "ad.group.name" | Get-ADObject -Properties
Name,Title,Department,Description | Sort Department,Title | Format-Table Name,Title,Department,Description
#
#
#
#
function Green
{
process { Write-Host $_-ForegroundColor Green } 
}
function Red
{
process { Write-Host $_-ForegroundColor Red }
}
Write-Output
"*********************************************************************************" | red
Write-Output "↓ ↓ ↓ Title ↓ ↓ ↓" | Green Write-Output
"*********************************************************************************" | red
#
#
#
#
Get-ADGroupMember -Identity "ad.group.name" | Get-ADObject -Properties
Name,Title,Department,Description | Sort Department,Title | Format-Table Name,Title,Department,Description
#
#
#
#
function Green
{
process { Write-Host $_-ForegroundColor Green } 
}
function Red
{
process { Write-Host $_-ForegroundColor Red }
}
Write-Output
```

## Windows Server Commands

Uninstalling KB Updates with Server Core
```Powershell
#Obtain a list of installed apps
wmic qfe list
```
```Powershell
#Uninstall listed patch
wusa /uninstall /kb:<kbnummber>
```
Installing Updates with Server Core and Software Center Installed
```Powershell
#Open Sofware Center for Updating Updates Manually with GUI
C:\Windows\CCM\SCClient.exe
```
Open IIS with GUI with Server Core
```Powershell
#Open IIS GUI
C:\windows\system32\inetsrv> .\InetMgr.exe
```
Open C: Drive Directory 
```Powershell
#Open C drive temp dir
cd C:\temp
```
Open System Config with Server Core
```Powershell
#Open System Config for Restarting Server
sconfig
```
Open Configuration Manager Properties with Server Core
```Powershell
#Open Configuration Manager Properties
control smscfgrc
```
Open Exchange Management Shell with Server Core on Exchange Server
```Powershell
#Open Exchange Management Shell
launchems
```
Open Notepad with CMD or Powershell
```Powershell
#Open Note Pad
notepad
```



# Microsoft Exchange
## Exchange Patching Servers Windows Server Core
### Updating Server3

```Powershell
#Connect to Server3
Connect-ExchangeServer -Computer Server3
```

Check Exchange Environment

```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health for all servers
Get-DAGDatabaseInformation
```

Move Exchange Server into Maintenance Mode

```Powershell
#Start Maintenance Mode
Start-DAGMaintenanceMode -Server Server3
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```
```Powershell
#Get Health status for all servers
Get-DAGDatabaseInformation
```

> **Note:** Run Server Updates When you have finished, follow the next cmds

Move Exchange Server Out of Maintenance Mode

```Powershell
#Connect to Server3
Connect-ExchangeServer -Computer Server3
```
```Powershell
#Stop Maintenance Mode
Stop-DAGMaintenaceMode -Server Server3
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health status for all
Get-DAGDatabaseInformation
```


### Updating Server2

```Powershell
#Connect to Server2
Connect-ExchangeServer -Computer Server2
```

Check Exchange Environment

```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health for all servers
Get-DAGDatabaseInformation
```

Move Exchange Server into Maintenance Mode

```Powershell
#Start Maintenance Mode
Start-DAGMaintenanceMode -Server Server2
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```
```Powershell
#Get Health status for all servers
Get-DAGDatabaseInformation
```
> **Note:** Run Server Updates When you have finished, follow the next cmds

Move Exchange Server Out of Maintenance Mode

```Powershell
#Connect to Server2
Connect-ExchangeServer -Computer Server2
```
```Powershell
#Stop Maintenance Mode
Stop-DAGMaintenaceMode -Server Server2
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health status for all
Get-DAGDatabaseInformation
```

### Updating Server1

```Powershell
#Connect to Server2
Connect-ExchangeServer -Computer Server2
```

Check Exchange Environment

```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health for all servers
Get-DAGDatabaseInformation
```

Move Exchange Primary Active Manager (PAM)

```Powershell
#MOVE the primary active manager (PAM) from Server1 to Server2
Invoke-Command -ComputerName Server2.ad.domain.com -ScriptBlock { Get-ClusterGroup | Move-Clustergroup -Name "Cluster Group" -Node Server2 -Wait 0}
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```

Move Exchange Database

```Powershell
#MOVE Database to Server2
Move-ActiveMailboxDatabase DB1 -ActivateOnServer Server2
```
```Powershell
#Get mailbox database copy status. Check replay count
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```

Move Exchange Server to Maintenance Mode

```Powershell
#Move Server1 into maintenance mode
Start-DAGMaintenanceMode -Server Server1
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Health for all servers
Get-DAGDatabaseInformation
```

> **Note:** Run Server Updates When you have finished, follow the next cmds

Move Exchange Server out of Maintenance Mode

```Powershell
#Move Server1 out of maintenance mode
Stop-DAGMaintenaceMode -Server Server1
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-databaseavailabilitygroup -status | fl name,ServersInMaintenance
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```

Move Exchange Primary Active Manager (PAM) BACK

```Powershell
Move the primary active manager (PAM) back to Server1 
Invoke-Command -ComputerName Server2.ad.domain.com -ScriptBlock { Get-ClusterGroup | Move-Clustergroup -Name "Cluster Group" -Node Server1 -Wait 0}
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```

Move Exchange Database BACK

```Powershell
#Move Database back to Server1
Move-ActiveMailboxDatabase DB1 -ActivateOnServer Server1
```
```Powershell
#Get All Servers Database Copy Status.
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health for all servers
Get-DAGDatabaseInformation
```


# Exchange PowerShell Error Moving PAM
```Powershell
#Log on to an Exchange server. 
#Switch from CMD to PowerShell CMD.
#Enter the following PS-CMD 
```
```Powershell
#Check Node Status
Get-ClusterNode
```
```Powershell
#To resume a "Paused" cluster node enter the following CMD
Resume-ClusterNode ServerName
```
```Powershell
#Run the get cluster CMD again to check status
Get-ClusterNode
```

# Exchange Misc Powershell CMDs 

.Net Version
```Powershell
#Get .net version
Get-DotNETVersion -Computer Server3
```
Server Core IIS Commands
```powershell
#Open IIS GUI
C:\windows\system32\inetsrv> .\InetMgr.exe
```
```Powershell
#Restart IIS all Exchange Servers
Restart-ExchangeIIS
```
```Powershell
#Restart IIS individual Server
Restart-IISOnServers
```
Restart all Exchange Servers
```Powershell
#Restart AutoDAppPool all Exchange Servers
Restart-AutoDAppPool
```
Server Database Copy Status
```Powershell
#Get Server Database Copy Status
Get-MailboxDatabaseCopyStatus -Server Server3
```
Server State
```Powershell
#Get Server State
Get-ServerComponentState Server3
```
Running services count
```Powershell
#Get running services count
get-service | ?{$_.status -like "*running*"} | measure-object
```
Application Versions
```Powershell
#Check Application Versions
Get-command setup.exe | fl
```
File Path to check logs
```Powershell
#File Path to check logs
cd '.\Program Files\Microsoft\Exchange Server\V15\Bin\'
```
Get and Set Exchange Services
```Powershell
#Get and Set Services
Get-Service MSExchangeADTopology | Set-Service -StartupType Automatic
```
Get and Start Exchange Services
```Powershell
#Get and Start Services
Get-Service MSExchangeADTopology | Start-Service
```
Get and Set and Change Service Startup Type to Auto
```Powershell
#Get and Set Services
Get-Service mse* | Set-Service -StartupType Automatic
```
Get and Start Services
```Powershell
#Get and Start Services
Get-Service mse* | Start-Service
```
Move Database Back and Skip Suppression Checks
```Powershell
#Move Database back to Hybrid1 | Select Yes to all
Move-ActiveMailboxDatabase DB1 -SkipMoveSuppressionChecks -ActivateOnServer Server1
```


# Microsoft Azure
## Microsoft Azure Active Directory

### App Registration API Permission
```Powershell
#Open Powershell and import exchange online management module
Import-Module ExchangeOnlineManagement

#Connect to exchange online
Connect-ExchangeOnline -UserPrincipalName ENTER ADMIN EMAIL ADDRESS

#Enter Graph api appid and the mailbox address
New-ApplicationAccessPolicy -AppId 60ee7495-2592-4c3e-b74a-8da266d34567 -PolicyScopeGroupId test.testscores@test.edu -AccessRight RestrictAccess -Description "Restrict this app to members of distribution group EvenUsers."

#Test connection with allowed mailbox "Will state Granted or Denied" 
Test-ApplicationAccessPolicy -Identity test.testscores@test.edu -AppId 60ee7495-2592-4c3e-b74a-8da266d34567

#Test connection with non-allowed mailbox "Will state Granted or Denied" 
Test-ApplicationAccessPolicy -Identity user.name@test.edu -AppId 60ee7495-2592-4c3e-b74a-8da266d34567
```

### Restore a deleted Microsoft 365 group in Azure Active Directory

[Restore a deleted Microsoft 365 group in Azure Active Directory](https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/groups-restore-deleted)

View the deleted Microsoft 365 groups that are available to restore using PowerShell
```Powershell
#Connect to Azure AD with your admin account
Connect-AzureAD
```
```Powershell
#Run the following cmdlet to display all deleted Microsoft 365 groups in your Azure AD organization that are still available to restore
Get-AzureADMSDeletedGroup
```
```Powershell
#Alternately, if you know the objectID of a specific group (and you can get it from the cmdlet in step 1), run the following cmdlet to verify that the specific deleted group has not yet been permanently purged
Get-AzureADMSDeletedGroup –Id <objectId>
```
How to restore your deleted Microsoft 365 group
```Powershell
#Run the following cmdlet to restore the group and its contents
Restore-AzureADMSDeletedDirectoryObject –Id <objectId>
```
```Powershell
#Alternatively, the following cmdlet can be run to permanently remove the deleted group
Remove-AzureADMSDeletedDirectoryObject –Id <objectId>
```

## Microsoft Defender for Identity

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
