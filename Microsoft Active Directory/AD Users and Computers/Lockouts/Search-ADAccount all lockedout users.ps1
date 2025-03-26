#Search for all locked-out users with a table
Search-ADAccount -UsersOnly -lockedout | FT -AutoSize Enabled,Lockedout,Name,SamAccountName,UserPrincipalName,LastLogonDate

#With out-gridview
Search-ADAccount -LockedOut -UsersOnly | 
    Select-Object Enabled, LockedOut, Name, SamAccountName, UserPrincipalName, LastLogonDate | 
    Sort-Object LastLogonDate -Descending | 
    Out-GridView -Title "Locked Out User Accounts"

