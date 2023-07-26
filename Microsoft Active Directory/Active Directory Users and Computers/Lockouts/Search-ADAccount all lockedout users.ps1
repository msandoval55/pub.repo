#Search for all locked out users
Search-ADAccount -LockedOut | Select Name

#Search for all locked out users with table
Search-ADAccount -LockedOut -UsersOnly | Select-Object Name,Lockedout,SamAccountName,UserPrincipalName