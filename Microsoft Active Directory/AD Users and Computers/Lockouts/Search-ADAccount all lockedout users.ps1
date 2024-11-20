#Search for all locked-out users with a table
Search-ADAccount -UsersOnly -lockedout | FT -AutoSize Enabled,Lockedout,Name,SamAccountName,UserPrincipalName,LastLogonDate
