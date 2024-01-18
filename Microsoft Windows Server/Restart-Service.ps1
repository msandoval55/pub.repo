#get-service invoke cmdlet
Invoke-Command -ComputerName lsmssql -ScriptBlock {Get-Service 'sqlserveragent'}

#output example
Status   Name               DisplayName                            PSComputerName
------   ----               -----------                            --------------
Stopped  sqlserveragent     SQL Server Agent (MSSQLSERVER)         lsmssql

#Restart-service invoke cmdlet
Invoke-Command -ComputerName lsmssql -ScriptBlock {Get-Service 'sqlserveragent' | Restart-Service}
