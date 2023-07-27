#Get active directory group members
Get-ADGroupMember -Identity "ad.groupname" -Recursive | select name | sort Name, Title, Department