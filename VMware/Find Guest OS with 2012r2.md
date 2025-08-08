
# Find Guest OS with 2012r2
```powershell
#Connect to vCenter
Connect-VIServer -Server "vcenter.domain-name.com"
```
```powershell
#Find all VMs with Guest OS matching 2012 R2
Get-VM | Where-Object { $_.Guest.OSFullName -match "2012" } | Select Name, PowerState, @{N="GuestOS";E={$_.Guest.OSFullName}}
```
