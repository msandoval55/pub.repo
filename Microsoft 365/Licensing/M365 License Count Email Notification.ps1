**********************************************
                Setup Process
**********************************************
#install and setup msol or msonline service
Install-Module MSOnline

#check if module is installed
Get-Command -module MSOnline

#connect to moslservice if needed
Connect-MsolService

#installing and setup for credentialmanager
Install-Module CredentialManager

#check if module is installed
Get-Command -module CredentialManager

#create a stored credential
New-StoredCredential -Target 'msol' -Type Generic -UserName 'user.email' -Password 'user.pw' -Persist 'LocalMachine'


**********************************************
                   Script
**********************************************

$smtpserver = “smtpserver@consoto.com”
$smtpto = “it-systems@consoto.com"
$smtpfrom = “M365Licensing@consoto.com”


Connect-MsolService -Credential (Get-StoredCredential -Target msol)


$A5sbLic = Get-MsolAccountSku | Where-Object {$_.SkuPartNumber -eq “M365EDU_A5_STUUSEBNFT”}
$A5sb = $A5sbLic.ActiveUnits
echo “I have found $A5sb A5 licenses …”
$A5sbLicAvailable = $A5sbLic.ActiveUnits – $A5sbLic.ConsumedUnits
echo “You have $A5sbLicAvailable Microsoft 365 A5 for students use benift licenses avaliable to consume …”


$A5Lic = Get-MsolAccountSku | Where-Object {$_.SkuPartNumber -eq “M365EDU_A5_FACULTY”}
$A5 = $A5Lic.ActiveUnits
echo “I have found $A5 A5 licenses …”
$A5LicAvailable = $A5Lic.ActiveUnits – $A5Lic.ConsumedUnits
echo “You have $A5LicAvailable Microsoft 365 A5 for faculty licenses avaliable to consume …”


if (($A5LicAvailable -lt 200) -or ($A5sbLicAvailable -lt 84000)) {
Send-MailMessage -SmtpServer $smtpserver -To $smtpto -From $smtpfrom -Subject “Microsoft 365 A5 License Count” -BodyAsHtml -Body “You have $A5LicAvailable/$A5 A5 Faculty licenses available. <br /> You have $A5sbLicAvailable/$A5sb A5 Student licenses available.”
}
