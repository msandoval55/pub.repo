#Find what groups a user is a member of
Get-ADPrincipalGroupMembership -Identity "ad.username" | select name | sort name