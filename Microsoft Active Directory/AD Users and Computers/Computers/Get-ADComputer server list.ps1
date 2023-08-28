## Active Directory Servers List

Obtain list of servers in AD using PowerShell:

1. Identify the domain from which you want to retrieve the report.
2. Identify the LDAP attributes you need to fetch the report.
3. Compile the script.
4. Execute it in Windows PowerShell.
5. The report will be exported in the given format.
6. To obtain the report in a different format, modify the script accordingly to the needs of the user.


#Obtain list of servers in AD using Powershell
Get-ADComputer -Filter 'operatingsystem -like "*windows server*" -and enabled -eq "true"' ` -Properties Name,Operatingsystem,OperatingSystemVersion,IPv4Address | Sort-Object -Property Operatingsystem | Select-Object -Property Name,Operatingsystem,OperatingSystemVersion,IPv4Address

#Add out grid view
| Out-GridView | Export-Csv -Path .\2012r2logs.csv

#Export cmd that can be added to the windows server list script
Export-Csv "C:\Temp\WinSrvlist2023.csv"
