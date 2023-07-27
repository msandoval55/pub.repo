## Active Directory Search Base

SearchBase Example
![image](https://user-images.githubusercontent.com/116230991/216633375-2a9718d8-775b-4cff-98f8-adfea1d341d5.png)

AD Levels
```powershell
1: IT
2: Amsterdam
3: Sites
4: Lazyadmin
5: NL

#If you have . between your domain name you may need to separate with additional DC=, example DC=ad,DC=lazyadmin,DC=nl
"OU=IT,OU=Amsterdam,OU=Sites,DC=Lazyadmin,DC=edu"

#By default, the -SearchBase parameter will return all users from the specified OU and nested OU’s.
```

```Powershell
#Search for user in a OU
#ft = format table
Get-ADUser -Filter * -SearchBase "OU=Amsterdam,OU=Sites,DC=lazyadmin,DC=nl" | ft 
Get-ADUser -Filter * -SearchBase "OU=Amsterdam,OU=Sites,DC=lazyadmin,DC=nl" | ft Name,Givenname,SamAccountName,ObjectGUID
```

```Powershell
$OUsearchbase='OU=server admins,DC=ad,DC=consoto,DC=com'

    Get-ADUser -Filter * -SearchBase $OUsearchbase | ft givenname,surname,name,samaccountname,objectguid
```

## Active Directory Servers List

Obtain list of servers in AD using PowerShell:

1. Identify the domain from which you want to retrieve the report.
2. Identify the LDAP attributes you need to fetch the report.
3. Compile the script.
4. Execute it in Windows PowerShell.
5. The report will be exported in the given format.
6. To obtain the report in a different format, modify the script accordingly to the needs of the user.

```Powershell
#Obtain list of servers in AD using Powershell
Get-ADComputer -Filter 'operatingsystem -like "*windows server*" -and enabled -eq "true"' ` -Properties Name,Operatingsystem,OperatingSystemVersion,IPv4Address | Sort-Object -Property Operatingsystem | Select-Object -Property Name,Operatingsystem,OperatingSystemVersion,IPv4Address
```
```Powershell
#Export cmd that can be added to the windows server list script
Export-Csv "C:\Temp\WinSrvlist2023.csv"
```