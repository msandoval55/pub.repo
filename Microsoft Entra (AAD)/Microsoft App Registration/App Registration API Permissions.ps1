## App Registration API Permission
```Powershell
#Open Powershell and import exchange online management module
Import-Module ExchangeOnlineManagement

#Connect to exchange online
Connect-ExchangeOnline -UserPrincipalName ENTER ADMIN EMAIL ADDRESS

#Enter Graph api appid and the mailbox address
New-ApplicationAccessPolicy -AppId 60ee7495-2592-4c3e-b74a-8da266d34567 -PolicyScopeGroupId test.testscores@test.edu -AccessRight RestrictAccess -Description "Restrict this app to members of distribution group EvenUsers."

#Test connection with allowed mailbox "Will state Granted or Denied" 
Test-ApplicationAccessPolicy -Identity test.testscores@test.edu -AppId 60ee7495-2592-4c3e-b74a-8da266d34567

#Test connection with non-allowed mailbox "Will state Granted or Denied" 
Test-ApplicationAccessPolicy -Identity user.name@test.edu -AppId 60ee7495-2592-4c3e-b74a-8da266d34567
```