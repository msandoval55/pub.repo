#Retrieve installed applications from remote server
Invoke-Command -ComputerName "servername" -ScriptBlock {Get-WmiObject -Class Win32_Product | Select-Object Name,version,IdentifyingNumber | sort name | ft }
