Remember you will need to be logged in to the active AAD Connect server since that’s what is actually being synced to Azure AD.

#Connect to on-prem aad server.
```powershell
Enter-PSSession "aad servername"
 ```
#Get Connect information for your on-premises domain.
```powershell
$SyncConnector = Get-ADSyncConnector | Where-Object {$_.Name -notmatch ' - aad'}
 ```
#Get OU inclusion list
```powershell
$SyncConnector.Partitions.ConnectorPartitionScope.ContainerInclusionList
 ```
#Get OU exclusion list
```powershell
$SyncConnector.Partitions.ConnectorPartitionScope.ContainerExclusionList
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/f448ee1c-eede-4520-94a7-445573e556d1)

Remeber to exite the PSSession.
