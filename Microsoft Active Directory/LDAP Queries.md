# Directory Admin

# LDAP Queries for Users, Computers, Groups and Service Connection Points v2

## Computer accounts

#### Computer accounts starting with WS
```bash
(objectcategory=computer)(samaccountname=WS*)
```

#### Computer accounts with "COP" in the attribute "description"
```bash
(&(objectCategory=computer)(description=*COP*))
```
or
```bash
(&(objectCategory=computer)(description=*COP)) -->for only COP in the description
```

#### Computer accounts with MS-SQL installed
```bash
(&(objectCategory=computer)(servicePrincipalName=MSSQLSvc*))
```
### Computer accounts with a Server OS
```bash
(&(objectCategory=computer)(operatingsystem=*server*))
```
#### Find all Computers that do not have a Description
```bash
(objectCategory=computer)(!description=*)
```
#### Find all computer accounts for whom a manager is specified
```bash
(&(&(objectCategory=computer)(objectClass=computer))
(managedBy=*))
```
#### Find All Workstations
```bash
(sAMAccountType=805306369)
```
or
```bash
(&(objectCategory=computer)(objectClass=computer))
```
#### Find all 2003 Servers Non-DCs
```bash
(&(&(&(samAccountType=805306369)(!(primaryGroupId=516)))(objectCategory=computer)(operatingSystem=Windows Server 2003*)))
```
#### Find all 2003 Servers – DCs
```bash
(&(&(&(samAccountType=805306369)(primaryGroupID=516)(objectCategory=computer)(operatingSystem=Windows Server 2003*))))
```
#### Find all Server 2008
```bash
(&(&(&(&(samAccountType=805306369)(!(primaryGroupId=516)))(objectCategory=computer)(operatingSystem=Windows Server 2008*))))
```
#### Find all 2008 Servers – DCs
```bash
(&(&(&(&(primaryGroupID=516)(objectCategory=computer)(operatingSystem=Windows Server* 2008*)))))
```
#### Disabled Computer Accounts
```bash
(&(&(objectCategory=computer)(userAccountControl:1.2.840.113556.1.4.803:=2)))
```
#### Enabled Computer Accounts
```bash
(&(&(&(objectCategory=computer)(!userAccountControl:1.2.840.113556.1.4.803:=2))))
```
#### SQL Servers any Windows Server OS
```bash
(&(objectCategory=computer)(servicePrincipalName=MSSQLSvc*)(operatingSystem=Windows Server*))
```
#### Exchange Servers any Windows Server OS
```bash
(&(objectCategory=computer)(servicePrincipalName=exchangeMDB*)(operatingSystem=Windows Server*))
```
#### Find all Windows XP SP3 computers
```bash
(&(&(&(&(&(&(&(objectCategory=Computer)(operatingSystem=Windows XP Professional)(operatingSystemServicePack=Service Pack 3))))))))
```
#### Find all Windows Vista SP1 computers
```bash
(&(objectCategory=computer)(operatingSystem=Windows Vista*)(operatingSystemServicePack=Service Pack 1))
```
#### Find all Windows Server 2008 Enterprise computers
```bash
(&(objectCategory=computer)(operatingSystem=Windows Server® 2008 Enterprise)(operatingSystemServicePack=Service Pack 1))
```
#### Find all Windows Server 2008 (all versions) computers
```bash
(&(objectCategory=computer)(operatingSystem=Windows Server® 2008*))
```
#### Find all Windows 8.0 (all versions) computers
```bash
(&(objectCategory=computer)(operatingSystem=Windows 8*)(operatingSystemVersion=6.2 (9200))) 
```
#### Find all Windows 8.1 (all versions) computers
```bash
(&(objectCategory=computer)(operatingSystem=Windows 8.1*))
```
#### Find all Windows Server 2012 (all versions) computers
```bash
(&(objectCategory=computer)(operatingSystem=Windows Server 2012*))
```
#### Find all Windows Server 2012 no R2 (all versions) computers
```bash
(&(objectCategory=computer)(operatingSystem=Windows Server 2012*)(operatingSystemVersion=6.2 (9200))) 
```
#### Find all Windows Server 2012 R2 (all versions) computers
```bash
(&(objectCategory=computer)(operatingSystem=Windows Server 2012 R2*)) 
```
#### Find all Windows 10 (all versions) computers
```bash
(&(objectCategory=computer)(operatingSystem=Windows 10*))
User accounts
```
#### Find all user accounts
```bash
(&(objectCategory=person)(objectClass=user))
```
#### Find all user accounts for whom a password is not required
```bash
(&(&(objectCategory=person)(objectClass=user))
(UserAccountControl:1.2.840.113556.1.4.803:=32))
```
#### Find all user accounts that do not require a SmartCard for logon
```bash
(&(&(objectCategory=person)(objectClass=user))
(!(UserAccountControl:1.2.840.113556.1.4.803:=262144)))
```
#### Find users that have non-expiring passwords
```bash
(objectCategory=person)(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=65536)
```
#### To find all user accounts that have the name “Mueller” in them
```bash
(objectcategory=person)(samaccountname=*Mueller*)
```
#### Locked out user accounts
```bash
(&(objectCategory=person)(objectClass=user)(lockoutTime>=1))
```
#### Useraccounts starting with "A" in the Attribute "Common Name"
```bash
(&(objectCategory=user)(cn=A*))
```
#### Diabled user accounts
```bash
(&(objectCategory=person)(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=2))
```
#### Useraccounts without an value in Attribute "Mail"
```bash
(&(objectCategory=person)(objectClass=user)(!mail=*))
```
#### Useraccounts with Mail Enabled
```bash
(objectClass=user)(mail=*)
```
#### Useraccounts that have never logged on
```bash
(&(objectCategory=person)(objectClass=user))(|(lastLogon=0)(!(lastLogon=*)))
```
#### Users that have been given dial-in permissions
```bash
(objectCategory=user)(msNPAllowDialin=TRUE)
```
#### Users find who have admin in description field
```bash
(objectcategory=person)(description=*admin*)
```
#### Find user accounts with no log on script
```bash
(objectcategory=person)(!scriptPath=*)
```
#### Find user accounts with no profile path
```bash
(objectcategory=person)(!profilepath=*)
```
#### Find non disabled accounts that must change their password at next logon
```bash
(objectCategory=person)(objectClass=user)(pwdLastSet=0)(!useraccountcontrol:1.2.840.113556.1.4.803:=2)
```
#### Find all Users that need to change password on next login
```bash
(&(objectCategory=user)(pwdLastSet=0))
```
#### Finds all locked out accounts
```bash
(objectCategory=person)(objectClass=user)(useraccountcontrol:1.2.840.113556.1.4.803:=16)
```
#### Finds all Users with Email Address set
```bash
(objectcategory=person)(mail=*)
```
#### Finds all Users with no Email Address
```bash
(objectcategory=person)(!mail=*)
```
#### Find all Users with Dial-In permissions
```bash
(objectCategory=user)(msNPAllowDialin=TRUE)
```
#### Finds all disabled accounts in active directory
```bash
(objectCategory=person)(objectClass=user)(useraccountcontrol:1.2.840.113556.1.4.803:=2)
```
#### Find all Users that are almost Locked-Out
Notice the “>=” that means “Greater than or equal to”.
```bash
(objectCategory=user)(badPwdCount>=2)
```
#### Find all mail-enabled groups hidden from the Global Address list (GAL)
```bash
(&(&(objectCategory=group)(objectClass=group))
(&(mailnickname=*)(msExchHideFromAddressLists=TRUE)))
```
#### Find all mail-enabled security groups
```bash
(&(&(objectCategory=group)(groupType:1.2.840.113556.1.4.804:=2147483648))
(mailnickname=*))
```
#### Find all mailbox-enabled accounts
```bash
(&(&(objectCategory=person)(objectClass=user))
(&(mailnickname=*)(|(msExchhomeServerName=*)(homeMDB=*))))
```
#### Find all mailbox-enabled accounts with Outlook Web Access (OWA) disabled
```bash
(&(&(objectCategory=person)(objectClass=user))
(&(mailnickname=*)(|(msExchhomeServerName=*)(homeMDB=*))
(|(protocolSettings=*HTTP§0*)(protocolSettings=*OWA§0*))))
```
#### Find all users with Hidden Mailboxes
```bash
(&(objectCategory=person)(objectClass=user)(msExchHideFromAddressLists=TRUE))
```
```bash
(&(&(objectCategory=person)(objectClass=user))(lastLogon>=129772445240000000))
```


### Groups

#### To find all groups that have no members
```bash
(objectCategory=group)(!member=*)
```
#### Find Groups that contains the word admin
```bash
(objectcategory=group)(samaccountname=*admin*)
```
#### Find all Universal Groups
```bash
(groupType:1.2.840.113556.1.4.803:=8)
```
#### Find all global security groups
```bash
(&(objectCategory=group)
(groupType:1.2.840.113556.1.4.803:=2147483650))
```
#### Finds Domain Local Groups
```bash
(groupType:1.2.840.113556.1.4.803:=4)
```
#### Find all distribution groups
```bash
(&(|(&(objectCategory=Group)(objectClass=Group)(|(groupType=8)(groupType=4)(groupType=2)))(objectCategory=ms-Exch-Dynamic-Distribution-List)(objectClass=msExchDynamicDistributionList)))
```
#### List all groups with sec- prefix convention
```bash
(&(objectCategory=group)(name=*sec-*))
```
#### Find all security groups with members
```bash
(&(objectCategory=group)
(groupType:1.2.840.113556.1.4.804:=2147483648)(member=*))
```


### Service connection Points

#### Find all service connection points
```bash
(objectCategory=serviceConnectionPoint)
```
#### Find all service connection points that do not have service bindings specified
```bash
(&(objectCategory=serviceConnectionPoint)(!(serviceBindingInformation=*)))
```
#### Find all service connection points that do not have a service DNS name specified
```bash
(&(objectCategory=serviceConnectionPoint)(!(serviceDNSName=*)))
```
