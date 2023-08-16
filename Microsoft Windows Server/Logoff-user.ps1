#log user from server
Invoke-Command -ComputerName server01 -ScriptBlock {logoff '#' /server:$SERVER}