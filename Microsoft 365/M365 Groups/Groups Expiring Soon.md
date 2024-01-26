# Report Microsoft 365 Groups Expiration Policy

From https://office365itpros.com/2022/02/09/microsoft-groups-expiration-policy/


Pre reqs

You may need to install modules if they are not already installed.
```Powershell
Install-Module AzureAD 
Install-Module ExchangeOnline
```
You may need to import the following PowerShell modules if not already done.
```Powershell
Import-Module AzureAD 
Import-Module ExchangeOnline
```
Connect to AAD and Exchange Online before running the script.
```Powershell
Connect-AzureAD
Connect-ExchangeOnline
```

Script below, with added export-csv line.
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

# Example of the report viewed in notepad. 

```Powershell
Total Microsoft 365 Groups covered by expiration policy: 412


Group                                                      Last Renewed        Next Renewal Due   Days before Expiration
-----                                                      ------------        ----------------   ----------------------
RI Student-group                                           9/5/2022 5:16 AM    3/3/2023 11:16 PM                      16
CLA-POLS Faculty-group                                     8/7/2022 11:45 AM   3/6/2023 11:04 AM                      18
CLA-Small Group Decision Making-group                      9/6/2022 5:19 AM    3/6/2023 11:04 AM                      18
CLSE-Bahr Marine Ecology Lab-group                         9/5/2022 5:16 AM    3/6/2023 11:05 AM                      18
PIR-RI-group                                               9/7/2022 5:21 AM    3/6/2023 11:01 AM                      18
HPO Admins                                                 9/22/2017 2:04 PM   3/6/2023 10:48 AM                      18
ITAppSvcs-TaylorHucker                                     1/24/2019 10:17 PM  3/6/2023 10:48 AM                      18
HRI-Senior Leadership-group                                9/16/2022 6:06 AM   3/15/2023 1:06 AM                      27
HRI-Furgason Fellowship-group                              9/16/2022 6:05 AM   3/15/2023 1:05 AM                      27
HRI-Measure our Impact-group                               9/16/2022 6:05 AM   3/15/2023 1:05 AM                      27
CLA-CRIJ Faculty-group                                     9/8/2022 5:24 AM    3/15/2023 12:06 PM                     28
CSE-UTM Capstone Project-group                             9/19/2022 2:19 PM   3/18/2023 9:19 AM                      30
```
