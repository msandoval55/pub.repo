#log user from server
Invoke-Command -ComputerName lsmssql -ScriptBlock {logoff '#' /server:$SERVER}