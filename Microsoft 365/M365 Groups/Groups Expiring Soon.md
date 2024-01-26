## Report Microsoft 365 Groups Expiration Policy

From https://office365itpros.com/2022/02/09/microsoft-groups-expiration-policy/

```Powershell
#Pre reqs
Install-Module AzureAD 
Install-Module ExchangeOnline
Import-Module AzureAD 
Import-Module ExchangeOnline
Connect-AzureAD
Connect-ExchangeOnline
```

```Powershell
Write-Host "Finding Microsoft 365 Groups to check…"
[array]$ExpirationPolicyGroups  = (Get-UnifiedGroup -ResultSize Unlimited | ? {$_.ExpirationTime -ne $Null} | Select DisplayName, ExternalDirectoryObjectId, WhenCreated, ExpirationTime )
If (!($ExpirationPolicyGroups)) { Write-Host "No groups found subject to the expiration policy - exiting" ; break }
Write-Host $ExpirationPolicyGroups.Count “groups found. Now checking expiration status.”
$Report = [System.Collections.Generic.List[Object]]::new(); $Today = (Get-Date)
ForEach ($G in $ExpirationPolicyGroups) {
        $Days = (New-TimeSpan -Start $G.WhenCreated -End $Today).Days  # Age of group
        $LastRenewed = (Get-AzureADMSGroup -Id $G.ExternalDirectoryObjectId).RenewedDateTime
        $DaysLeft = (New-TimeSpan -Start $Today -End $G.ExpirationTime).Days
        $ReportLine = [PSCustomObject]@{
           Group       = $G.DisplayName
           Created     = Get-Date($G.WhenCreated) -format g
           AgeinDays   = $Days
           LastRenewed = Get-Date($LastRenewed) -format g
           NextRenewal = Get-Date($G.ExpirationTime) -format g
           DaysLeft    = $DaysLeft}
          $Report.Add($ReportLine)
} # End Foreach
CLS;Write-Host "Total Microsoft 365 Groups covered by expiration policy:" $ExpirationPolicyGroups.Count
Write-Host “”
$Report | Sort DaysLeft | Select Group, @{n="Last Renewed"; e= {$_.LastRenewed}}, @{n="Next Renewal Due"; e={$_.NextRenewal}}, @{n="Days before Expiration"; e={$_.DaysLeft}}
```

## Restore a deleted Microsoft 365 group in Azure Active Directory

[Restore a deleted Microsoft 365 group in Azure Active Directory](https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/groups-restore-deleted)

View the deleted Microsoft 365 groups that are available to restore using PowerShell
```Powershell
#Connect to Azure AD with your admin account
Connect-AzureAD
```
```Powershell
#Run the following cmdlet to display all deleted Microsoft 365 groups in your Azure AD organization that are still available to restore
Get-AzureADMSDeletedGroup
```
```Powershell
#Alternately, if you know the objectID of a specific group (and you can get it from the cmdlet in step 1), run the following cmdlet to verify that the specific deleted group has not yet been permanently purged
Get-AzureADMSDeletedGroup –Id <objectId>
```
How to restore your deleted Microsoft 365 group
```Powershell
#Run the following cmdlet to restore the group and its contents
Restore-AzureADMSDeletedDirectoryObject –Id <objectId>
```
```Powershell
#Alternatively, the following cmdlet can be run to permanently remove the deleted group
Remove-AzureADMSDeletedDirectoryObject –Id <objectId>
```
