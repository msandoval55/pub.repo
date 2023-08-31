Let’s get this same information from PowerShell. Remember you will need to be logged in to the active AAD Connect server since that’s what is actually being synced to Azure AD.

#Get Connect information for your on-premises domain.
$SyncConnector = Get-ADSyncConnector | Where-Object {$_.Name -notmatch ' - aad'}
 
#Get OU inclusion list
$SyncConnector.Partitions.ConnectorPartitionScope.ContainerInclusionList
 
#Get OU exclusion list
$SyncConnector.Partitions.ConnectorPartitionScope.ContainerExclusionList

https://thesysadminchannel.com/wp-content/uploads/2023/05/Get-Synced-OU-Configuration-in-Azure-AD-Connect-PowerShell.png