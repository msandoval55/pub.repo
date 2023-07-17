# My Systems Admin Repo


This is a collection of commands and scripts I have gathered or written throughout my career in the information technology field. Please keep in mind that not all commands will work with a standard account and may need administrator or domain permissions to execute commands. 


| Subjects | Commands |
| ------------- | ------------- |
| Microsoft Windows 10, 11 | Windows, File Directory, Networking |
| Microsoft Windows Server| AD, AD FS, Group Policy, Server Core, Remote Servers |
| Microsoft Exchange Server | Exchange Server |
| Microsoft Azure | AAD, M365 Defender for Identity, M365 Apps |
| WinDirStat | Free Disk Usage Analyzer |
| Wireshark | Free and open-source packet analyzer |

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
    - [UNC to Machines File Directory](#UNC-to-Machines-File-Directory)
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
  - [PowerShell Commands](#PowerShell-Commands)
  - [Remote Powershell Commands](#Remote-Powershell-Commands)
- [Microsoft Windows Server](#Microsoft-Windows-Server)
  - [Active Directory](#Active-Directory)
     - [Manually import the module into the PowerShell](#Manually-import-the-module-into-the-PowerShell)
     - [Active Directory Domain Password Policy](#Active-Directory-Domain-Password-Policy)
     - [Active Directory User](#Active-Directory-User)
     - [Active Directory Locked Out Users](#Active-Directory-Locked-Out-Users)
     - [Active Directory Expiring Accounts](#Active-Directory-Expiring-Accounts)
     - [Active Directory Group Managed Service Accounts gMSA](#Active-Directory-Group-Managed-Service-Accounts-gMSA)
     - [Active Directory Group Memberships](#Active-Directory-Group-Memberships)
     - [Active Directory Group Audit Script](#Active-Directory-Group-Audit-Script)
     - [Active Directory Change Computer Objects Ownership](#Active-Directory-Change-Computer-Objects-Ownership)
     - [Active Directory Search Base](#Active-Directory-Search-Base)
     - [Active Directory Servers List](#Active-Directory-Servers-List)
     - [Active Directory Test Replication](#Active-Directory-Test-Replication)
     - [Active Directory Web Services Running](#Active-Directory-Web-Services-Running)
   - [Active Directory Federation Services](#Active-Directory-Federation-Services)
     - [AD FS Troubleshooting Commands](#AD-FS-Troubleshooting-Commands)
   - [Group Policy Commands](#Group-Policy-Commands)
     - [Group policy update](#Group-policy-update)
     - [Group policy Results](#Group-policy-Results)
   - [Windows Server Remote Commands](#Windows-Server-Remote-Commands)
     - [Retrieve Folder Size from Remote Server](#Retrieve-Folder-Size-from-Remote-Server)
     - [Remote Commands To Free Up Disk Space](#Remote-Commands-To-Free-Up-Disk-Space)
   - [Windows Server Core Commands](#Windows-Server-Core-Commands)
   - [RSAT Tools](#RSAT-Tools)
- [Microsoft Exchange](#Microsoft-Exchange)
  - [Exchange Patching Servers Windows Server Core](#Exchange-Patching-Servers-Windows-Server-Core)
    - [Updating Server3](#Updating-Server3)
    - [Updating Server2](#Updating-Server2)
    - [Updating Server1](#Updating-Server1)
  - [Exchange SSL Certificate Renewal](#Exchange-SSL-Certificate-Renewal)
  - [Exchange PowerShell Error Moving PAM](#Exchange-PowerShell-Error-Moving-PAM)
  - [Exchange Misc Powershell CMDs](#Exchange-Misc-Powershell-CMDs)
- [Microsoft Azure](#Microsoft-Azure)
  - [Microsoft Azure Active Directory](#Microsoft-Azure-Active-Directory)
    - [App Registration API Permission](#App-Registration-API-Permission)
    - [Restore a deleted Microsoft 365 group in Azure Active Directory](#Restore-a-deleted-Microsoft-365-group-in-Azure-Active-Directory)
  - [Microsoft Defender for Identity](#Microsoft-Defender-for-Identity)
    - [Install Microsoft Defender for Identity sensor](#Install-Microsoft-Defender-for-Identity-sensor)
 - [Microsoft 365](#Microsoft-365)
   - [Stream Classic](#Stream-Classic)
     - [Download Microsoft Stream Classic Reports](#Download-Microsoft-Stream-Classic-Reports)
   - [SharePoint](#SharePoint)
     - [Restore a Deleted OneDrive](#Restore-a-Deleted-OneDrive)
- [WinDirStat](#WinDirStat)
- [Wireshark](#Wireshark)

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
```Powershell
#Get infomation about your Windows version and Edition
systeminfo | findstr OS
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
### Certificates Local Machine
```Powershell
#Takes you to the certificate management store mmc
certlm.msc
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

### UNC to Machines File Directory

```Powershell
#Use Run or File Explorer to UNC to machines file directory
#You will need to be in a domain. If you are not in a domain: UAC will prevent remote access to administrative shares.
\\machinename\c$ 
\\IPAddress\c$
```

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
#Display specific active and listening port number
netstat -an |find "443"
```
```Powershell
#Test connection with port number on local server
Test-NetConnection -ComputerName localhost -Port 5671
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

## PowerShell Commands

#Start transcript log of your powershell session
```powershell
Start-Transcript -Path 'C:\My_PowerShell_Transcripts\Get-Date-Transcript.txt'
```
#Export cmd that can be added to the windows server list script
```powershell
Export-Csv "C:\Temp\WinSrvlist2023.csv"
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
# Active Directory 
## Manually import the module into the PowerShell
#Manually import the module into the PowerShell session with the command
```Powershell
Import-Module activedirectory
```
## Active Directory Domain Password Policy

```Powershell
#Get AD default domain password policy
Get-ADDefaultDomainPasswordPolicy
```
## Active Directory User
```Powershell
#Get ADUser
Get-ADUser -Identity username
```
```Powershell
#Get-ADUser All Properties
Get-ADUser -Identity username -Properties *
```
```Powershell
#Get-ADUser search by first name (givenname), sort and formated table added
Get-ADUser -Filter "Givenname -eq 'Martin'" | sort givenname,surname,SamAccountName,UserPrincipalName | ft givenname,surname,SamAccountName,UserPrincipalName
```
```Powershell
#Get-ADUser search by last name (surname), sort and formated table added
Get-ADUser -Filter "Surname -eq 'Sandoval'" | sort givenname,surname,SamAccountName,UserPrincipalName | ft givenname,surname,SamAccountName,UserPrincipalName
```
```Powershell
#Get-ADUser search by Title
Get-ADUser -Filter "title -eq 'Systems Administrator II'" | Select Name,Enabled | ft
```
```Powershell
#Get-ADUser groups (memberof)
(Get-ADUser "ad.username" -Properties MemberOf).MemberOf | Get-ADObject -Properties Name | Sort Name | ft Name
```
```Powershell
#Get-ADUsers passwords last set older than 90 days
Get-ADUser -Filter 'Enabled -eq $True' -Properties PasswordLastSet | Where-Object {$_.PasswordLastSet -lt (Get-Date).adddays(-90)} | select Name,SamAccountName,PasswordLastSet
```
```Powershell
#Get-ADUser manager name in an active directory, run the following command
Get-aduser -Identity username -Properties * | select SAMAccountname, @{Name='Manager';Expression={(Get-ADUser ($_.Manager)).SAMAccountname}}
```
```Powershell
#Get-ADUser BadPwdCount
Get-ADUser -Identity username -Properties *  | Select-Object badpwdcount
```

## Active Directory Locked Out Users
```Powershell
#Search for all locked out users
Search-ADAccount -LockedOut | Select Name
```
```Powershell
#Search for all locked out users with table
Search-ADAccount -LockedOut -UsersOnly | Select-Object Name,Lockedout,SamAccountName,UserPrincipalName
```

## Active Directory Expiring Accounts
```Powershell
#Search for all locked out users
Search-ADAccount -AccountExpiring -TimeSpan "30" | Get-Memeber
```
```Powershell
#Search for all locked out users with table
Search-ADAccount -AccountExpiring -TimeSpan "30" | FL *
```
```Powershell
#Search for all locked out users
Search-ADAccount -AccountExpiring -DateTime "2022/05/24"
```

## Active Directory Group Managed Service Accounts gMSA

**Basic concepts**

- They can be used only on Servers running Windows Server 2012 or later.
- You can use the same Managed service account across multiple servers.
- Managed group service accounts are stored in the managed service account container of the active directory.

**Requirements**

- Microsoft Active Directory must be present.
- Extend your Active Directory schema to Windows Server 2008 R2.
- Microsoft .Net framework 3.5 or above.
- PowerShell Active Directory module.
- At least one domain controller in the domain must be running Windows Server 2012.
- Microsoft Key Distribution Service up and running.
- Only members of Domain Admins or Account Operators groups can create a group managed service account objects.

### Create the Managed Service Account in Active Directory

```Powershell
#Create a gMSA with PowerShell, use the New-ADServiceAccount cmdlet
New-ADServiceAccount -Name <String> `
                     -Description <String> `
                     -DNSHostName <String> `
                     -ManagedPasswordIntervalInDays <Int32> `
                     -PrincipalsAllowedToRetrieveManagedPassword <ADPrincipal> `
                     -Enabled $True | $False `                    
                     -PassThru 
```

As mentioned above, The new gMSA is located in the Managed Service Accounts container.

![image](https://user-images.githubusercontent.com/116230991/217017794-01de7c21-1b3e-4f63-81e6-2bf58d1a0175.png)

**-DNSHostName**

Defines the DNS hostname of service.

**-ManagedPasswordIntervalInDays**

Specifies the number of days for the password change interval.

**-PrincipalsAllowedToRetrieveManagedPassword**

Specifies the group of servers that can use a group managed service account. If the group defined in this parameter has been created by you, it is important to restart the host before installing the gMSA.


### Install the gMSA on the host

```Powershell
#The Install-ADServiceAccount cmdlet installs an existing gMSA on the server on which the cmdlet is run. Use the cmdlet with the following syntax:
Install-ADServiceAccount -Identity <ADServiceAccount>
```

Run the following PowerShell commands as administrator.

![image](https://user-images.githubusercontent.com/116230991/217018276-916c70f2-9fe1-4283-b324-5390f2bf9994.png)

```Powershell
#The Test-ADServiceAccount cmdlet tests that the specified service account is ready for use.
Test-AdServiceAccount -Identity <ADServiceAccount>
```
You can now use the gMSA for a service, a group of IIS applications, or scheduled task. To do this, you must use the name of the account with $ at the end and leave the password blank.

![image](https://user-images.githubusercontent.com/116230991/217018739-f3b22286-7c74-4580-b7cd-7e62c7551740.png)

![image](https://user-images.githubusercontent.com/116230991/217018939-24c741df-4b74-463f-a334-63d4033d5f5c.png)




## Active Directory Group Memberships
```Powershell
#Find what groups a user is a member of
Get-ADPrincipalGroupMembership -Identity "ad.username" | select name | sort name
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

## Active Directory Group Audit Script

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

## Active Directory Change Computer Objects Ownership

You will need domain admin credentials to run these powershell commands. 

**Display Owner with PowerShell**
For bulk operations, it is therefore recommended to use PowerShell. If you first want to get an overview of multiple objects' ownership, there are several options available.

One approach is to generate a list of computer names and owners by expanding the nTSecurityDescriptor attribute using Select-Object:

```powershell
Get-ADComputer -Filter 'name -like "CI229*"' -properties ntSecurityDescriptor -PipelineVariable p | 
select -ExpandProperty ntSecurityDescriptor |
select @{n="Computer";e={ $p.name }}, @{n="Owner";e={ $_.owner }}
```

![image](https://github.com/msandoval55/pub.repo/assets/116230991/0ce41f24-4ef8-46e3-88ed-6707d63a4813)

Alternatively, you can use Get-ACL to retrieve the owner for each computer individually. When outputting the results using Format-List, you can use Trimstart() to remove the leading "CN=" from PSChildName:

```powershell
Get-ADComputer -Filter * |
foreach{Get-Acl -Path "AD:$($_.DistinguishedName)"} |
Format-List @{n="Name";e={$_.PSChildName.Trimstart("CN=")}}, @{n="Owner";e={$_.owner}}
```

This variant has the advantage of generating the necessary ACL objects, which are required if you want to change the owner. The following script accomplishes this task:

In this example, all computers whose names begin with "CI228" are assigned "Contoso\CLST Admins" as the new owner.

```powershell
$user = new-object system.security.principal.ntaccount("Consoto\CLST Admins")
Get-ADComputer -filter 'name -like "CI228*"' |
foreach{
    $acl = Get-Acl -Path "AD:$($_.DistinguishedName)"
    $acl.SetOwner($user)
    Set-Acl -Path "AD:$($_.DistinguishedName)" $acl
    }
```

## Active Directory Search Base

SearchBase Example
![image](https://user-images.githubusercontent.com/116230991/216633375-2a9718d8-775b-4cff-98f8-adfea1d341d5.png)

AD Levels
```powershell
1: IT
2: Amsterdam
3: Sites
4: Lazyadmin
5: NL

#If you have . between your domain name you may need to separate with additional DC=, example DC=ad,DC=lazyadmin,DC=nl
"OU=IT,OU=Amsterdam,OU=Sites,DC=Lazyadmin,DC=edu"

#By default, the -SearchBase parameter will return all users from the specified OU and nested OU’s.
```

```Powershell
#Search for user in a OU
#ft = format table
Get-ADUser -Filter * -SearchBase "OU=Amsterdam,OU=Sites,DC=lazyadmin,DC=nl" | ft 
Get-ADUser -Filter * -SearchBase "OU=Amsterdam,OU=Sites,DC=lazyadmin,DC=nl" | ft Name,Givenname,SamAccountName,ObjectGUID
```

## Active Directory Servers List

Obtain list of servers in AD using PowerShell:

1. Identify the domain from which you want to retrieve the report.
2. Identify the LDAP attributes you need to fetch the report.
3. Compile the script.
4. Execute it in Windows PowerShell.
5. The report will be exported in the given format.
6. To obtain the report in a different format, modify the script accordingly to the needs of the user.


#Obtain list of servers in AD using Powershell
```Powershell
Get-ADComputer -Filter 'operatingsystem -like "*windows server*" -and enabled -eq "true"' ` -Properties Name,Operatingsystem,OperatingSystemVersion,IPv4Address | Sort-Object -Property Operatingsystem | Select-Object -Property Name,Operatingsystem,OperatingSystemVersion,IPv4Address
```
#Export cmd that can be added to the windows server list script
```Powershell
Export-Csv "C:\Temp\WinSrvlist2023.csv"
```

## Active Directory Test Replication

Get replication failure data for a domain controller
```Powershell
Get-ADReplicationFailure -Target dc01
```
Get replication failure data for multiple domain controllers
```Powershell
Get-ADReplicationFailure -target dc01,dc02,dc03,dc04
```
Get replication failure data for all domain controllers in a domain
```Powershell
Get-ADReplicationFailure -Target "corp.contoso.com" -Scope Domain
```
Get replication failure data for all domain controllers in a forest
```Powershell
Get-ADReplicationFailure -Target "corp.contoso.com" -Scope Forest
```
analyzes the state of domain controllers in a forest or enterprise and reports any problems to help in troubleshooting.
```Powershell
#dcdiag with log file
Dcdiag /v >c:\dcdiag1.log
```
```Powershell
#showrepl with exported results
Repadmin /showrepl >c:\repl.txt
```
showrepl results example:
```powershell
C:\WINDOWS\system32>repadmin /showrepl dc2
Default-First-Site-Name\DC2
DSA Options: IS_GC
Site Options: (none)
DSA object GUID: 57a1cfbc-88bb-41da-a1a6-f14f5c9df408
DSA invocationID: 2eb95693-bfa7-4f3f-b52c-139737aa883f

==== INBOUND NEIGHBORS ======================================

DC=ad,DC=activedirectorypro,DC=com
    Default-First-Site-Name\DC1 via RPC
        DSA object GUID: a4d22a63-1918-492a-bcd6-7fe286941e72
        Last attempt @ 2018-03-14 04:21:02 was successful.

CN=Configuration,DC=ad,DC=activedirectorypro,DC=com
    Default-First-Site-Name\DC1 via RPC
        DSA object GUID: a4d22a63-1918-492a-bcd6-7fe286941e72
        Last attempt @ 2018-03-14 03:52:07 was successful.

CN=Schema,CN=Configuration,DC=ad,DC=activedirectorypro,DC=com
    Default-First-Site-Name\DC1 via RPC
        DSA object GUID: a4d22a63-1918-492a-bcd6-7fe286941e72
        Last attempt @ 2018-03-14 03:52:07 was successful.

DC=DomainDnsZones,DC=ad,DC=activedirectorypro,DC=com
    Default-First-Site-Name\DC1 via RPC
        DSA object GUID: a4d22a63-1918-492a-bcd6-7fe286941e72
        Last attempt @ 2018-03-14 03:52:07 was successful.

DC=ForestDnsZones,DC=ad,DC=activedirectorypro,DC=com
    Default-First-Site-Name\DC1 via RPC
        DSA object GUID: a4d22a63-1918-492a-bcd6-7fe286941e72
        Last attempt @ 2018-03-14 03:52:07 was successful.
```

```Powershell
#replsummary with eported results
repadmin /replsummary >c:\showrepl.txt
```
replsummary results example:
```powershell
:\WINDOWS\system32>repadmin /replsummary
Replication Summary Start Time: 2018-03-13 04:44:54

Beginning data collection for replication summary, this may take awhile:
  .....


Source DSA          largest delta    fails/total %%   error
 DC1                       52m:48s    0 /   5    0
 DC2                       52m:46s    0 /   5    0


Destination DSA     largest delta    fails/total %%   error
 DC1                       52m:46s    0 /   5    0
 DC2                       52m:48s    0 /   5    0
```

Use the following command if you want to force replication between domain controllers. You will want to run this on the DC that you wish to update. For example, if DC1 is out of sync I would run this on DC1.

This will do a pull replication, which means it will pull updates from DC2 to DC1.
```powershell
repadmin /syncall dc1 /Aed
```
If you want to push replication you will use the /P switch. For example if you make changes on DC1 and want to replicate those to other DCs use this command.
```powershell
repadmin /syncall dc1 /APed
```
syncall /aped results example:
```powershell
C:\WINDOWS\system32>repadmin /syncall dc1 /Aed
Syncing all NC's held on dc1.
Syncing partition: DC=ForestDnsZones,DC=ad,DC=activedirectorypro,DC=com
CALLBACK MESSAGE: The following replication is in progress:
    From: 57a1cfbc-88bb-41da-a1a6-f14f5c9df408._msdcs.ad.activedirectorypro.com
    To  : a4d22a63-1918-492a-bcd6-7fe286941e72._msdcs.ad.activedirectorypro.com
CALLBACK MESSAGE: The following replication completed successfully:
    From: 57a1cfbc-88bb-41da-a1a6-f14f5c9df408._msdcs.ad.activedirectorypro.com
    To  : a4d22a63-1918-492a-bcd6-7fe286941e72._msdcs.ad.activedirectorypro.com
CALLBACK MESSAGE: SyncAll Finished.
SyncAll terminated with no errors.

Syncing partition: DC=DomainDnsZones,DC=ad,DC=activedirectorypro,DC=com
CALLBACK MESSAGE: The following replication is in progress:
    From: 57a1cfbc-88bb-41da-a1a6-f14f5c9df408._msdcs.ad.activedirectorypro.com
    To  : a4d22a63-1918-492a-bcd6-7fe286941e72._msdcs.ad.activedirectorypro.com
CALLBACK MESSAGE: The following replication completed successfully:
    From: 57a1cfbc-88bb-41da-a1a6-f14f5c9df408._msdcs.ad.activedirectorypro.com
    To  : a4d22a63-1918-492a-bcd6-7fe286941e72._msdcs.ad.activedirectorypro.com
CALLBACK MESSAGE: SyncAll Finished.
SyncAll terminated with no errors.

Syncing partition: CN=Schema,CN=Configuration,DC=ad,DC=activedirectorypro,DC=com
CALLBACK MESSAGE: The following replication is in progress:
    From: 57a1cfbc-88bb-41da-a1a6-f14f5c9df408._msdcs.ad.activedirectorypro.com
    To  : a4d22a63-1918-492a-bcd6-7fe286941e72._msdcs.ad.activedirectorypro.com
CALLBACK MESSAGE: The following replication completed successfully:
    From: 57a1cfbc-88bb-41da-a1a6-f14f5c9df408._msdcs.ad.activedirectorypro.com
    To  : a4d22a63-1918-492a-bcd6-7fe286941e72._msdcs.ad.activedirectorypro.com
CALLBACK MESSAGE: SyncAll Finished.
SyncAll terminated with no errors.

Syncing partition: CN=Configuration,DC=ad,DC=activedirectorypro,DC=com
CALLBACK MESSAGE: The following replication is in progress:
    From: 57a1cfbc-88bb-41da-a1a6-f14f5c9df408._msdcs.ad.activedirectorypro.com
    To  : a4d22a63-1918-492a-bcd6-7fe286941e72._msdcs.ad.activedirectorypro.com
CALLBACK MESSAGE: The following replication completed successfully:
    From: 57a1cfbc-88bb-41da-a1a6-f14f5c9df408._msdcs.ad.activedirectorypro.com
    To  : a4d22a63-1918-492a-bcd6-7fe286941e72._msdcs.ad.activedirectorypro.com
CALLBACK MESSAGE: SyncAll Finished.
SyncAll terminated with no errors.

Syncing partition: DC=ad,DC=activedirectorypro,DC=com
CALLBACK MESSAGE: The following replication is in progress:
    From: 57a1cfbc-88bb-41da-a1a6-f14f5c9df408._msdcs.ad.activedirectorypro.com
    To  : a4d22a63-1918-492a-bcd6-7fe286941e72._msdcs.ad.activedirectorypro.com
CALLBACK MESSAGE: The following replication completed successfully:
    From: 57a1cfbc-88bb-41da-a1a6-f14f5c9df408._msdcs.ad.activedirectorypro.com
    To  : a4d22a63-1918-492a-bcd6-7fe286941e72._msdcs.ad.activedirectorypro.com
CALLBACK MESSAGE: SyncAll Finished.
SyncAll terminated with no errors.
```

More command options
Find the last time your DC was backed up
```powershell
Repadmin /showbackup *
```
Displays calls that have not yet been answered
```powershell
repadmin /showoutcalls *
```
List the Topology information
```powershell
repadmin /bridgeheads * /verbose
```
Inter Site Topology Generator Report
```powershell
repadmin /istg * /verbose
```

## Active Directory Web Services Running

Troubleshooting Active Directory Web Services Connectivity in Windows

Use the following commands to check if your computer can access the domain:
```powershell
nslookup yourdomain.loc
```
```powershell
ping yourdomain.loc
```
Check the value of this environment variable on your computer:
```powershell
$env:LOGONSERVER
```
Check the availability of port TCP/9389 on the domain controller name (specify the logonserver name) with the command:
```powershell
Test-NetConnection your_logon_DC -port 9389
```
If the command returns TcpTestSucceeded: False, it means the connection is blocked by the firewall, the ADWS service is not running, or the DC is down.

Run the following command on any domain controller to find the nearest DC with the ADWS role:
```powershell
Get-ADDomainController -Discover -Service ADWS
```
You can find a DC with the ADWS role in another Active Directory sites and subnets:
```powershell
Get-ADDomainController -ForceDiscover -Discover -Service ADWS –NextClosestSite
```
Connect to the desired DC and make sure the ADWS service is running on it. To do this, open the services.msc console, locate Active Directory Web Services, and verify that it is in a Running state.

![image](https://github.com/msandoval55/pub.repo/assets/116230991/5c856f98-fd08-48ca-8594-51562125d933)

unable to find a default server with active directory
Start it if the service is stopped. If the service is running, restart the DC or restart the service with the PS command:
```powershell
Restart-Service –name ADWS –verbose
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/20fc19cc-c268-4407-9329-902c5dce88e8)

Verify if the ADWS service is configured to start automatically:
```powershell
Get-Service ADWS | Select-Object -Property Name, StartType, Status
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/1fd11109-b604-41ea-9419-0da3ca0689cb)

If necessary, change the startup type to automatic:
```powershell  
Set-Service -Name ADWS –StartupType AutomaticDelayedStart
```
Open the Event Viewer on the domain controller, expand Windows Logs > System and filter your System log by the event ID 1206 with the description:

Active Directory Web Services was unable to determine if the computer is a global catalog server.

If you found this error in the DC’s Event log, you need to enable and then disable the Global Catalog FSMO role on this DC.

Open the Active Directory Sites and Services console (dssite.msc) and find this domain controller in one of the AD sites;
Right-click on NTDS Settings and then click Properties;
Check/Uncheck the Global Catalog option on the General tab.
![image](https://github.com/msandoval55/pub.repo/assets/116230991/9195d4b2-73c7-4a96-9e5e-bb2444f5a27f)
<br />Wait a while for AD changes to replicate and then revert back to the previous value;
Reboot the domain controller.

Retrive the 5 newest Active Directory Wec Services errors
```powershell
Get-EventLog –Logname ‘Active Directory Web Services’ –EntryType Error –Newest 5 | Select-Object –Property EventID, Message | Format-Table –AutoSize -wrap
```
Result example:
![image](https://github.com/msandoval55/pub.repo/assets/116230991/c818fb58-e77b-4500-aad6-6a98230c636b)


# Active Directory Federation Services
## AD FS Troubleshooting Commands

AD FS will authenticate your cloud or synchronized identities on premises. Many large organizations prefer this federated model because they are authenticating "in-house".

Helpful link https://github.com/CSS-Identity/ADFS-Diag

Run in Powershell ISE

AD FS ADSync Tools TLS 1.2 Reg Values
```powershell
Function Get-ADSyncToolsTls12RegValue
{
    [CmdletBinding()]
    Param
    (
        # Registry Path
        [Parameter(Mandatory=$true,
                   Position=0)]
        [string]
        $RegPath,

        # Registry Name
        [Parameter(Mandatory=$true,
                   Position=1)]
        [string]
        $RegName
    )
    $regItem = Get-ItemProperty -Path $RegPath -Name $RegName -ErrorAction Ignore
    $output = "" | select Path,Name,Value
    $output.Path = $RegPath
    $output.Name = $RegName

    If ($regItem -eq $null)
    {
        $output.Value = "Not Found"
    }
    Else
    {
        $output.Value = $regItem.$RegName
    }
    $output
}

$regSettings = @()
$regKey = 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\.NETFramework\v4.0.30319'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'SystemDefaultTlsVersions'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'SchUseStrongCrypto'

$regKey = 'HKLM:\SOFTWARE\Microsoft\.NETFramework\v4.0.30319'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'SystemDefaultTlsVersions'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'SchUseStrongCrypto'

$regKey = 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'Enabled'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'DisabledByDefault'

$regKey = 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'Enabled'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'DisabledByDefault'

$regSettings
```

AD FS Performance Diagnostics
```powershell
[System.Diagnostics.PerformanceCounterCategory]::Exists("Processor")
[System.Diagnostics.PerformanceCounterCategory]::Exists("TCPv4")
[System.Diagnostics.PerformanceCounterCategory]::Exists("Memory")
[System.Diagnostics.PerformanceCounterCategory]::Exists("Process")
```
These comnands can be ran with powershell or ise with admin credentials 

Test Azure AD Connect Health Connectivity 
```powershell
Test-AzureADConnectHealthConnectivity -Role ADFS
```
Get AD FS Relying Party Trusts (AD FS Apps)
```powershell
#Run this cmd on the adfs server or use a remote ps-session. 
Get-AdfsRelyingPartyTrust | Select-Object enabled, name, Identifier | sort enabled, name
```
Get AD FS Properties
```powershell
Get-AdfsProperties
```
# Group Policy Commands

## Group policy update
```Powershell
#This command will pull down any GPO changes to the computer
gpupdate
```
```Powershell
#Use /force to reapply all the GPOs on the computer
gpupdate /force
```
## Group policy Results
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

# Windows Server Remote Commands
## Retrieve Folder Size from Remote Server

Invoke folder size from remote server
```Powershell
#Get folder size from remote server
Invoke-Command -ComputerName "servername" -ScriptBlock {Get-ChildItem -Path C:\windows\ccmcache -Recurse | Measure-Object -Sum Length | Select-Object @{name='folder size (Gb)';expression={$_.Sum/1gb}}}
```
Optional: Enter PSSession to the remote server to retrieve folder size
```Powershell
#Get folder size from remote server
Enter-PSSession servername
Get-ChildItem -Path C:\windows\ccmcache -Recurse | Measure-Object -Sum Length | Select-Object @{name='folder size (Gb)';expression={$_.Sum/1gb}}
```
## Remote Commands Restart Services

Get all services running from remote server
```Powershell
#Get all services running from remote server
Get-Service -ComputerName hybrid3
```
Get specific service running status from remote server
```Powershell
#Get specific service running status from remote server
Get-Service XymonPSClient -ComputerName hybrid3
```
Restart specific service running from remote server
```Powershell
#Restart specific service running from remote server
Get-Service XymonPSClient -ComputerName hybrid3 | Restart-Service
```

## Remote Commands To Free Up Disk Space
Enter a remote powershell session with the server
```Powershell
#Enter a remote powershell session with the server
Enter-PSSession -ComputerName servername
```
Clear SCCM Cache from old downloaded update packages
```Powershell
#Clear up ccmcache from SCCM old update packages
$resman= New-Object -ComObject "UIResource.UIResourceMgr"
$cacheInfo=$resman.GetCacheInfo()
$cacheinfo.GetCacheElements()  | foreach {$cacheInfo.DeleteCacheElement($_.CacheElementID)}![image](https://user-images.githubusercontent.com/116230991/225392060-3782de06-b2f5-45e1-a75d-769f80a4cc08.png)
```
View DiskSpace on C: Drive
```Powershell
#Verify the disk space has been cleaned up.
fsutil volume diskfree c:
```
Optional
```Powershell
#Clear up WinSxS files
dism.exe /Online /Cleanup-Image /StartComponentCleanup 
```
Optional
```Powershell
#Clear up WinSxS files with resetbase
dism.exe /Online /Cleanup-Image /StartComponentCleanup /ResetBase
```
Optional

#Run Windows Clean-up
```Powershell
#Run Windows Clean-up
schtasks.exe /Run /TN "\Microsoft\Windows\Servicing\StartComponentCleanup"
```

## Windows Server Core Commands

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

## RSAT Tools

You can use the following one line of PowerShell to easily install all of the available Remote Server Administration Tools (RSAT) in one go. I end up running this after every Windows feature update., Saves wasting time with a GUI.

```Powershell
#Open an admin PowerShell prompt
#To install all the RSAT tools at once, type the command 
Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability –Online
```
```Powershell
#To install RSAT components individually, execute the command
Add-WindowsCapability -Online -Name "Rsat.<tool name>.Tools"
```
```Powershell
#Checking the install status
Get-WindowsCapability -Name RSAT* -Online | Select-Object -Property DisplayName, State
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

# Exchange SSL Certificate Renewal

Using InCommon Sectigo
Creating CER with MMC:

1. Use your laptop and open mmc to create the CSR.
2. Use mmc certificate store for create a custom request.
3. Right click > All Task > Advanced Options > Create Custom Request.
4. Select "Next" to continue creating a custom request.
5. Select "Proceed without enrollment policy"
6. Select "Next".
7. keep existing selections.
8. Select "Next".
9. Click the "Details" button.
10. Select "Properties".
11. Select "Next".
12. Under the General tab enter your desired friendly name.
13. Select the "Subject" tab to continue.
14. Select the "Subject" tab.

Enter Subject name, Common name:
if any
Enter DNS SAN names
webmail.consoto.com </br>
ad.consoto.com </br>
autodiscover.consoto.com </br>
autodiscover.obe.consoto.com </br>
autodiscover.landslide.consoto.com </br>
autodiscover.pci.consoto.com </br>
cas.consoto.com </br>
exchange.consoto.com </br>
exchserver1.consoto.com </br>
exchserver2.consoto.com </br>
exchserver3.consoto.com </br>
imap.consoto.com </br>
lander.consoto.com </br>
outlook.consoto.com </br>
owa.consoto.com </br>
smtp.consoto.com </br>
consoto.com </br>
webmail.lb.consoto.com </br>

15. Under "Private Key" select the following.

Key options:

Key size: 2048
Check: Mark private key exportable

Select Hash Algorithm:

Hash Algorithm: sha256
16. Select "Next".
17. Select "Browse..." and name your file and location.
18. Keep "Base 64" selected.
19. Select "Finish".
20. Open the .txt file and use the key to create the CSR in InCommon.

InCommon: Creating CSR

1. Login to InCommon and add a new CSR. Use you @tamucc.edu account.
2. Next Select the green + button in the top right corner of the InCommon site.
3. Next Select "Using a Certificate Signing Request" (CSR)
a. Leave Organization and Department as it is.
b. Order info will be set to InCommon Multi Domain SSL (SHA-2)
c. Certificate Term set to 398 Days.
4. Next under CSR paste the KEY from the .txt file you created.
5. Next under Domains add all additional domain names that you would like.
6. Next under Auto-Renewal leave it as no, do not allow auto renewal.
7. Select OK and wait for the cert to be created in InCommon.

Import CSR Certificate:

Import the newly created CSR from InCommon into your certificate store on your laptop.
1. Right click and select All Tasks > Import...
2. Select "Local Machine"
3. Select "Next" to continue.
4. Browse and select the .CSR file you just created and saved from InCommon.
5. Select "Next" to continue.
6. Select "Place all certificates in the following store".
7. Certificate store: "Personal".
8. Select "Next" to continue.
9. Select "Next" to continue.
10. The import will show as successful.

Export Certificate as a .PFX file:

1. Right click the certificate and select > All Tasks > Export.
2. Select "Yes, export the private key"
3. Select "Next" to continue.
4. Select "Personal Information Exchange - PKCS #12 (.PFX)
    a.Check "Include all certificates in the certification path if possible
5. Select "Next" to continue.
6. Enter a password and confirm password.
7. Set Encryption: TripleDES-SHA1
    a. This is due to server 2016 not liking AES256 encrypted passwords. Use SHA1 for the Private Key.
8. Select "Next" to continue.
9. Select where you want to save the .PFX file.
10. Select "Next" to continue.
11. Select "Finish"

Importing .PFX File:

Import the .PFX file to the Domain Controller.
Place the .PFX file in the domain controller UNCing to the c drive.
Example:
\\sa-dc02\c$\temp\certs

Remote to the domain controller and login with your domain account
Next switch CLI to PowerShell and enter the following command to import the .PFX file.
Certutil -f -p password -importpfx "nameofcert.pfx"

You have successfully updated the cert for the domain controller.
You will now see Xymon update shortly.
Once you confirm that the cert is active. Make sure you have a copy of the old .PFX cert and then remove the old cert.

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
# Microsoft Azure Active Directory

## App Registration API Permission
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

## Report Microsoft 365 Groups Expiration Policy

From https://office365itpros.com/2022/02/09/microsoft-groups-expiration-policy/

```Powershell
#Pre reqs
Install-Module AzureAD 
Install-Module ExchangeOnline
Import-Module AzureAD 
Import-Module ExchangeOnline
Connect-AzureAD
Connect-ExchangeOnline
```
```Powershell
Write-Host "Finding Microsoft 365 Groups to check…"
[array]$ExpirationPolicyGroups  = (Get-UnifiedGroup -ResultSize Unlimited | ? {$_.ExpirationTime -ne $Null} | Select DisplayName, ExternalDirectoryObjectId, WhenCreated, ExpirationTime )
If (!($ExpirationPolicyGroups)) { Write-Host "No groups found subject to the expiration policy - exiting" ; break }
Write-Host $ExpirationPolicyGroups.Count “groups found. Now checking expiration status.”
$Report = [System.Collections.Generic.List[Object]]::new(); $Today = (Get-Date)
ForEach ($G in $ExpirationPolicyGroups) {
        $Days = (New-TimeSpan -Start $G.WhenCreated -End $Today).Days  # Age of group
        $LastRenewed = (Get-AzureADMSGroup -Id $G.ExternalDirectoryObjectId).RenewedDateTime
        $DaysLeft = (New-TimeSpan -Start $Today -End $G.ExpirationTime).Days
        $ReportLine = [PSCustomObject]@{
           Group       = $G.DisplayName
           Created     = Get-Date($G.WhenCreated) -format g
           AgeinDays   = $Days
           LastRenewed = Get-Date($LastRenewed) -format g
           NextRenewal = Get-Date($G.ExpirationTime) -format g
           DaysLeft    = $DaysLeft}
          $Report.Add($ReportLine)
} # End Foreach
CLS;Write-Host "Total Microsoft 365 Groups covered by expiration policy:" $ExpirationPolicyGroups.Count
Write-Host “”
$Report | Sort DaysLeft | Select Group, @{n="Last Renewed"; e= {$_.LastRenewed}}, @{n="Next Renewal Due"; e={$_.NextRenewal}}, @{n="Days before Expiration"; e={$_.DaysLeft}}
```

## Restore a deleted Microsoft 365 group in Azure Active Directory

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

# Microsoft 365
# Stream Classic
## Download Microsoft Stream Classic Reports

1. Make sure you logon to powershell ISE as an administrator
2. Make sure you have unrestriced access
```Powershell
Set-ExecutionPolicy Unrestricted -Scope CurrentUser
```
3. Create a temp folder on the c: drive.
4. Download and store the stream classic report script in the c:\temp folder you made. 
5. Create a token.txt file with the token from the stream site using f-12 dev tools and save in the the temp folder.
![image](https://user-images.githubusercontent.com/116230991/218159215-15f0dc85-64fe-47b8-bd63-91f9a6aefe5a.png)
6. Run the ps cmds below.
```Powershell
#Change directory to where you have the stream report script
cd C:\temp\StreamClassicVideoReport
#Enter the the following ps cmd. Provide the tenantid and token location. Remember to refresh your token if the script fails.
.\StreamClassicVideoReportGenerator.ps1 -AadTenantId "00000000-0000-0000-0000-00000000000" -InputFile "C:\temp\StreamClassicVideoReport\token.txt" -OutDir "C:\temp\StreamClassicVideoReport"
```
7. Tip!: You can use powerBi to organize the raw data from the excel.cvs file. 

Documentation from Microsoft if needed
https://learn.microsoft.com/en-us/stream/streamnew/migration-details#stream-classic-usage-report

Step-by Step guide to run the Stream migration tool
https://learn.microsoft.com/en-US/stream/streamnew/step-by-step-guide?WT.mc_id=365AdminCSH_spo#during-migration

# SharePoint
## Restore a Deleted OneDrive

Microsoft Doc: https://learn.microsoft.com/en-us/sharepoint/restore-deleted-onedrive

Connect to SharePoint Service
```powershell
Connect-SPOService
```
```powershell
Supply values for the following parameters:
Url: https://domainname-admin.sharepoint.com/
```

If you know the URL of the OneDrive, run the following command:
```powershell
Get-SPODeletedSite -Identity <URL>
```
If you don't know the URL of the deleted OneDrive, run the following command:
If the OneDrive appears in the results, it can be restored.
```powershell
Get-SPODeletedSite -IncludeOnlyPersonalSite | sort url | FT url
```
Restore the OneDrive to an active state:
```powershell
Restore-SPODeletedSite -Identity <URL>
```
Assign an administrator to the OneDrive to access the needed data:
```powershell
Set-SPOUser -Site <URL> -LoginName <UPNofDesiredAdmin> -IsSiteCollectionAdmin $True
```
Note: When a OneDrive is restored, it will continue to remain available until it's explicitly deleted.

Permanently delete a OneDrive
```powershell
Remove-SPOSite -Identity <URL>
Remove-SPODeletedSite -Identity <URL>
```
**Caution**: When you permanently delete a OneDrive, you will not be able to restore it.


# WinDirStat

**Description**

Full Version
https://windirstat.net/

WinDirStat is a free and open-source graphical disk usage analyzer for Microsoft Windows. It presents a sub-tree view with disk-use percentage alongside a usage-sorted list of file extensions that is interactively integrated with a colorful graphical display (a treemap).

Portable Version
https://portableapps.com/apps/utilities/windirstat_portable

WinDirStat is a disk usage stats viewer and cleanup tool with many handy features:

- Directory list, Treemap and Extension list views so you can view your files the way you want
- Coupling. Select an item in the directory list: The treemap highlights it; and vice versa
- Zooming
- Built-in cleanup actions including Open, Show Properties, Delete
- Works with network drives and UNC paths
- 'Create disk usage report' option

## Running WinDirStat on Remote Server

1. Select File > Select Open.
2. Under A Folder enter the UNC path to the server and the drive.
3. Once path has been entered, press enter and wait for drive info to populate.

Example: 

```
\\pir.ad.lazyadmin.edu\c$
\\pir.ad.lazyadmin.edu\d$
\\pir.ad.lazyadmin.edu\e$
\\pir.ad.lazyadmin.edu\l$
```
![image](https://user-images.githubusercontent.com/116230991/216710577-b1311744-c48c-4638-bde3-d7c161e52db3.png)

# Wireshark

Wireshark Download link
https://www.wireshark.org/download.html

Npcap Download link
https://npcap.com/

![image](https://github.com/msandoval55/pub.repo/assets/116230991/598243b8-4c2f-4268-8f20-21ef32fbb1be)

Wireshark Capturing Modes
Wireshark Capturing Modes


## Promiscuous mode

```ruby
Sets interface to capture all packets on a network segment to which it is associated to
```

## Monitor mode

```ruby
setup the Wireless interface to capture all traffic it can receive (Unix/Linux only)
```

## Filter Types

```ruby
Capture filter = Filter packets during capture
```
```ruby
Display Filter = Hide Packets from a capture display
```

## Capture Filter Syntax

Expressions Example
```ruby
tcp src 192.168.1.1 80 and tcp dst 202.164.30.1
```

## Display Filter Syntax

Expressions Example
```ruby
http dest IP == 192.168.1.1 and tcp port
```

## Protocols – Values
```ruby
ether
fddi
ip
arp
rarp
decnet
lat
sca
moprc
mopdl
tcp
udp
```

## Filtering packets (Display Filters)

eq or ==
```ruby
Equal
```
```ruby
ip.dest == 192.168.1.1
```

ne or !=
```ruby
Not Equal
```
```ruby
ip.dest != 192.168.1.1
```

gt or >
```ruby
Greater than
```
```ruby
frame.len > 10
```

lt or <
```ruby
Less than
```
```ruby
frame.len <10
```

ge or >=
```ruby
Greater than or Equal
```
```ruby
frame.len >= 10
```

le or <=
```ruby
Less than or Equal
```
```ruby
frame.len<=10
```


## Miscellaneous Items

Slice Operator
```ruby
[…] - Range of values
```

Membership Operator
```ruby
{} - In
```

CTRL+E -
```ruby
Start/Stop Capturing
```

## Default columns in a packet capture output

No.
```ruby
Frame number from the beginning of the packet capture
```

Time
```ruby
Seconds from the first frame
```

Source (src)
```ruby
Source address, commonly an IPv4, IPv6 or Ethernet address
```

Destination (dst)
```ruby
Destination address
```

Protocol
```ruby
Protocol used in the Ethernet frame, IP packet, or TCP segment
```

Length
```ruby
Length of the frame in bytes
```

## Keyboard Shortcuts

Tab or Shift+Tab
```ruby
Move between screen elements, e.g. from the toolbars to the packet list to the packet detail.
```

Alt+→ or Option+→
```ruby
Move to the next packet in the selection history.
```

↓
```ruby
Move to the next packet or detail item.
```

→
```ruby
In the packet detail, opens the selected tree item.
```

↑
```ruby
Move to the previous packet or detail item.
```

Shift+→
```ruby
In the packet detail, opens the selected tree item and all of its subtrees.
```

Ctrl+ ↓ or F8
```ruby
Move to the next packet, even if the packet list isn’t focused.
```

Ctrl+→
```ruby
In the packet detail, opens all tree items.
```

Ctrl+ ↑ or F7
```ruby
Move to the previous packet, even if the packet list isn’t focused.
```

Ctrl+←
```ruby
In the packet detail, closes all tree items.
```

Ctrl+.
```ruby
Move to the next packet of the conversation (TCP, UDP or IP).
```

Backspace
```ruby
In the packet detail, jumps to the parent node.
```

Ctrl+,
```ruby
Move to the previous packet of the conversation (TCP, UDP or IP).
```

Return or Enter
```ruby
In the packet detail, toggles the selected tree item.
```

## Common Filtering Commands

Wireshark Filter by IP
```ruby
ip.addr == 10.10.50.1
```

Filter by Destination IP
```ruby
ip.dest == 10.10.50.1
```

Filter by Source IP
```ruby
ip.src == 10.10.50.1
```

Filter by IP range
```ruby
ip.addr >= 10.10.50.1 and ip.addr <= 10.10.50.100
```

Filter by Multiple Ips
```ruby
ip.addr == 10.10.50.1 and ip.addr == 10.10.50.100
```

Filter out/ Exclude IP address
```ruby
!(ip.addr == 10.10.50.1)
```

Filter IP subnet
```ruby
ip.addr == 10.10.50.1/24
```

Filter by multiple specified IP subnets
```ruby
ip.addr == 10.10.50.1/24 and ip.addr == 10.10.51.1/24
```

Filter by Protocol
```ruby
dns
http
ftp
ssh
arp
telnet
icmp
```

Filter by port (TCP)
```ruby
tcp.port == 25
```

Filter by destination port (TCP)
```ruby
tcp.dstport == 23
```

Filter by ip address and port
```ruby
ip.addr == 10.10.50.1 and Tcp.port == 25
```

Filter by URL
```ruby
http.host == “host name”
```

Filter by time stamp
```ruby
frame.time >= “June 02, 2019 18:04:00”
```

Filter SYN flag
```ruby
tcp.flags.syn == 1
```
```ruby
tcp.flags.syn == 1 and tcp.flags.ack == 0
```

Wireshark Beacon Filter
```ruby
wlan.fc.type_subtype = 0x08
```

Wireshark broadcast filter
```ruby
eth.dst == ff:ff:ff:ff:ff:ff
```

WiresharkMulticast filter
```ruby
(eth.dst[0] & 1)
```

Host name filter
```ruby
ip.host = hostname
```

MAC address filter
```ruby
eth.addr == 00:70:f4:23:18:c4
```

RST flag filter
```ruby
tcp.flags.reset == 1
```
