## Restore a Deleted OneDrive

Microsoft Doc: https://learn.microsoft.com/en-us/sharepoint/restore-deleted-onedrive

```powershell
#Connect to SharePoint Service
Connect-SPOService
```
```powershell
Supply values for the following parameters:
Url: https://domainname-admin.sharepoint.com/
```
```powershell
#If you know the URL of the OneDrive, run the following command:
Get-SPODeletedSite -Identity <URL>
```
If you don't know the URL of the deleted OneDrive, run the following command:
If the OneDrive appears in the results, it can be restored.
```powershell
Get-SPODeletedSite -IncludeOnlyPersonalSite | sort url | FT url
```
```powershell
#Restore the OneDrive to an active state
Restore-SPODeletedSite -Identity <URL>
```
```powershell
#Assign an administrator to the OneDrive to access the needed data
Set-SPOUser -Site <URL> -LoginName <UPNofDesiredAdmin> -IsSiteCollectionAdmin $True
```
Note: When a OneDrive is restored, it will continue to remain available until it's explicitly deleted.

```powershell
#Permanently delete a OneDrive
Remove-SPOSite -Identity <URL>
Remove-SPODeletedSite -Identity <URL>
```
**Caution**: When you permanently delete a OneDrive, you will not be able to restore it.
