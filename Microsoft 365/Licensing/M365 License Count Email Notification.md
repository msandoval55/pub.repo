# Setup Process

Install and setup msol or msonline service
```powershell
Install-Module MSOnline
```
Check if module is installed
```powershell
Get-Command -module MSOnline
```
Connect to moslservice if needed
```powershell
Connect-MsolService
```
Installing and setup for credentialmanager
```powershell
Install-Module CredentialManager
```
Check if module is installed
```powershell
Get-Command -module CredentialManager
```
Create a stored credential
```powershell
New-StoredCredential -Target 'msol' -Type Generic -UserName 'user.email' -Password 'user.pw' -Persist 'LocalMachine'
```

# Simple Email Script

```powershell
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
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/a50cfbbc-6738-4b60-b45f-593d4332b20f)


# Optional HTMl Table Script
```powershell
$htmlOutput = @"
<!DOCTYPE html>
<html>
<head>
    <title>Microsoft 365 License Count Daily Report</title>
    <style>
        table {
            border-collapse: collapse;
            margin-bottom: 0px;
        }
        th, td {
            border: 2px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .red-text {
            color: red;
        }
    </style>
</head>
<body>
    <h1>Microsoft 365 License Count Daily Report</h1>
"@



$smtpServer = "smtp.tamucc.edu"
$smtpFrom = "2022admin@ad.tamucc.edu"
$smtpTo = "martin.sandoval@tamucc.edu"
$messageBody = "Microsoft 365 License Count Daily Report"

# Rest of your PowerShell code goes here
# ...

Connect-MsolService -Credential (Get-StoredCredential -Target msol)

$A5sbLic = Get-MsolAccountSku | Where-Object {$_.SkuPartNumber -eq “M365EDU_A5_STUUSEBNFT”}
$A5sb = $A5sbLic.ActiveUnits
$A5sbLicAvailable = $A5sbLic.ActiveUnits – $A5sbLic.ConsumedUnits

$A5Lic = Get-MsolAccountSku | Where-Object {$_.SkuPartNumber -eq “M365EDU_A5_FACULTY”}
$A5 = $A5Lic.ActiveUnits
$A5LicAvailable = $A5Lic.ActiveUnits – $A5Lic.ConsumedUnits

# Get account SKUs
$Skus = Get-MsolAccountSku

# Sort the $Skus array by AccountSkuId
$Skus = $Skus | Sort-Object -Property AccountSkuId

# Update the HTML output with the relevant information
$htmlOutput += @"
    <h2>A5 Faculty Licenses</h2>
    <table>
        <tr>
            <th>Available Licenses</th>
            <th>Total Licenses</th>
        </tr>
        <tr>
            <td>$A5LicAvailable</td>
            <td>$A5</td>
        </tr>
    </table>

        <h2>A5 Student Licenses</h2>
    <table>
        <tr>
            <th>Available Licenses</th>
            <th>Total Licenses</th>
        </tr>
        <tr>
            <td>$A5sbLicAvailable</td>
            <td>$A5sb</td>
        </tr>

    </table>

        <h2>All Microsoft License Account Skus</h2>
    <table>
        <tr>
            <th>AccountSkuId</th>
            <th>ActiveUnits</th>
            <th>WarningUnits</th>
            <th>ConsumedUints</th>
        </tr>
"@

foreach ($Sku in $Skus) {
    $htmlOutput += @"
        <tr>
            <td>$($Sku.AccountSkuId)</td>
            <td>$($Sku.ActiveUnits)</td>
            <td>$($Sku.WarningUnits)</td>
            <td>$($Sku.ConsumedUnits)</td>
        </tr>
"@
}

# Close the HTML table
$htmlOutput += @"
 </table>
 <p>This is an automated email notification. Please review the Microsoft 365 license counts.</p> <p>For further details, contact the Systems Administration Team.</p>
"@


# Send the email if needed
if (($A5LicAvailable -lt 200) -or ($A5sbLicAvailable -lt 84000)) {
    Send-MailMessage -SmtpServer $smtpServer -To $smtpTo -From $smtpFrom -Subject "Microsoft 365 A5 License Count Daily Report" -BodyAsHtml -Body $htmlOutput
}
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/fd4aa7bd-0d2f-4aa6-a1ba-96acf368842f)

