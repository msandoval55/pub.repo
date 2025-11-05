#Find Groups in a OU
Get-ADOrganizationalUnit -Filter * -SearchBase "OU=OU.Folder.Name, OU=Domain.name, DC=Domain.name, DC=edu.or.com" | Get-ADObject -Properties Name, Title, Department | Format Table Name, Title, Department

#Find Groups in a OU with Name Only
Get-ADOrganizationalUnit -Filter * -SearchBase "OU=OU.Folder.Name, OU=Domain.name, DC=Domain.name, DC=edu.or.com" | Get-ADObject -Properties Name | Format Table Name


$OU = "OU=Servers,OU="",DC="",DC="",DC="""

Get-ADComputer -SearchBase $OU -SearchScope Subtree -Filter * | Select-Object Name, DNSHostName
