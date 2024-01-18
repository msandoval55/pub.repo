#Session Commands

#Get all services running from remote server
Get-Service -ComputerName server3
#Get specific service running status from remote server
Get-Service XymonPSClient -ComputerName server3
#The following command displays a list of services that have a name that begins with “win” and that excludes the service called WinRM.
Get-Service | Where-Object {$_.Status -eq "Running"}
#This next command outputs a list of all services to a text file formatted for HTML output.
Get-Service -Name "win*" -Exclude "WinRM"
#A variation of the preceding command outputs only selected data about services and then exports the output to a CSV file.
Get-Service | ConvertTo-Html > c:\temp\servicesfile.html
#The following command retrieves the specified information (office phone number and user principal name) about Active Directory users.
Get-Service | Select-Object Name, Status | Export-CSV c:\service.csv

#Invoke Commands
#Get all services running from remote server
Invoke-Command -ComputerName Server1 -ScriptBlock {Get-Service | sort displayname | ft -autosize}

