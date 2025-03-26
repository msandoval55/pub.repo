#Get-ADUser All Properties
Get-ADUser -Identity username -Properties *


#With multiple users and out-gridview
$Users = @("user1", "user2", "user3")
# Dynamically construct the filter string
$UserFilter = ($Users | ForEach-Object { "(SamAccountName -eq '$_')" }) -join " -or "
# Run the Get-ADUser command with the dynamic filter
Get-ADUser -Filter $UserFilter -Properties LastLogonDate, EmailAddress, Enabled | 
    Out-GridView -Title "Multiple User Details"
