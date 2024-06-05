You can check if the account is locked using the ADUC graphical console or with the Get-ADUser cmdlet from the Active Directory module for PowerShell:

```powershell
Get-ADUser -Identity jsmith -Properties LockedOut,DisplayName | Select-Object samaccountName, displayName,Lockedout
```

Or:

```powershell
Get-ADUser jsmith -Properties Name,Lockedout, lastLogonTimestamp,lockoutTime,logonCount,pwdLastSet | Select-Object Name, Lockedout,@{n='LastLogon';e={[DateTime]::FromFileTime($_.lastLogonTimestamp)}},@{n='lockoutTime';e={[DateTime]::FromFileTime($_.lockoutTime)}},@{n='pwdLastSet';e={[DateTime]::FromFileTime($_.pwdLastSet)}},logonCount
```

You can list all currently locked accounts in a domain using the Search-ADAccount cmdlet:
```powershell
Search-ADAccount -UsersOnly -lockedout
```
