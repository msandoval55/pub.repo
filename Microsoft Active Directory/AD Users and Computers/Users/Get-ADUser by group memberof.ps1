#Get-ADUser groups (memberof)
(Get-ADUser "ad.username" -Properties MemberOf).MemberOf | Get-ADObject -Properties Name | Sort Name | ft Name
