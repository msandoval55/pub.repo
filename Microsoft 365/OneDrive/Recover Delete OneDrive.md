## Restore a Deleted OneDrive

Microsoft Doc: https://learn.microsoft.com/en-us/sharepoint/restore-deleted-onedrive


Connect to SharePoint Service
```powershell
Connect-SPOService
```
Supply values for the following parameters:
```powershell
Url: https://domainname-admin.sharepoint.com/
```
If you know the URL of the OneDrive, run the following command:
```powershell
Get-SPODeletedSite -Identity <URL>
```
If you don't know the URL of the deleted OneDrive, run the following command:
If the OneDrive appears in the results, it can be restored.
```powershell
Get-SPODeletedSite -IncludeOnlyPersonalSite -limit all | sort url
```
Restore the OneDrive to an active state
```powershell
Restore-SPODeletedSite -Identity <URL>
```
Assign an administrator to the OneDrive to access the needed data
```powershell
Set-SPOUser -Site <URL> -LoginName <UPNofDesiredAdmin> -IsSiteCollectionAdmin $True
```
Note: When a OneDrive is restored, it will continue to remain available until it's explicitly deleted.
</br>
</br>
Permanently delete a OneDrive
```powershell
Remove-SPOSite -Identity <URL>
```
```powershell
Remove-SPODeletedSite -Identity <URL>
```
**Caution**: When you permanently delete a OneDrive, you will not be able to restore it.
