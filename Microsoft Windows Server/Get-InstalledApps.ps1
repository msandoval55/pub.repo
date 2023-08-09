#Retrieve Installed Applications
Invoke-Command -ComputerName "server name" -ScriptBlock {Get-WmiObject -Class Win32_Product | Select-Object Name,IdentifyingNumber}
