#Get-ADUser groups (memberof)
***powershell
(Get-ADUser "ad.username" -Properties MemberOf).MemberOf | Get-ADObject -Properties Name | Sort Name | ft Name
***
