#Get-ADUser BadPwdCount
Get-ADUser -Identity username -Properties *  | Select-Object badpwdcount