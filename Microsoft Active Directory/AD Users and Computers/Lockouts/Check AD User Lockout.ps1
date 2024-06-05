#You can check if the account is locked using the ADUC graphical console or with the Get-ADUser cmdlet from the Active Directory module for PowerShell:

```powershell
Get-ADUser -Identity jsmith -Properties LockedOut,DisplayName | Select-Object samaccountName, displayName,Lockedout
```

#Or:

```powershell
Get-ADUser jsmith -Properties Name,Lockedout, lastLogonTimestamp,lockoutTime,logonCount,pwdLastSet | Select-Object Name, Lockedout,@{n='LastLogon';e={[DateTime]::FromFileTime($_.lastLogonTimestamp)}},@{n='lockoutTime';e={[DateTime]::FromFileTime($_.lockoutTime)}},@{n='pwdLastSet';e={[DateTime]::FromFileTime($_.pwdLastSet)}},logonCount
```

#You can list all currently locked accounts in a domain using the Search-ADAccount cmdlet:
```powershell
Search-ADAccount -UsersOnly -lockedout
```
#You can check the account lockout time, the number of failed password logon attempts, and the time of the last successful logon in the account properties in the ADUC console (on the Attribute Editor tab) or using PowerShell:
```powershell
Get-ADUser jsmith -Properties Name, lastLogonTimestamp,lockoutTime,logonCount,pwdLastSet | Select-Object Name,@{n='LastLogon';e={[DateTime]::FromFileTime($_.lastLogonTimestamp)}},@{n='lockoutTime';e={[DateTime]::FromFileTime($_.lockoutTime)}},@{n='pwdLastSet';e={[DateTime]::FromFileTime($_.pwdLastSet)}},logonCount
```
