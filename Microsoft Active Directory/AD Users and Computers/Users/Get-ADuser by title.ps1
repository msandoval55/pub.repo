#Get-ADUser search by Title
Get-ADUser -Filter "title -eq 'Systems Administrator II'" | Select Name,Enabled | ft