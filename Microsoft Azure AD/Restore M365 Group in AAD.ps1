## Restore a deleted Microsoft 365 group in Azure Active Directory

#https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/groups-restore-deleted

#View the deleted Microsoft 365 groups that are available to restore using PowerShell
#Connect to Azure AD with your admin account
Connect-AzureAD

#Run the following cmdlet to display all deleted Microsoft 365 groups in your Azure AD organization that are still available to restore
Get-AzureADMSDeletedGroup

#Alternately, if you know the objectID of a specific group (and you can get it from the cmdlet in step 1), run the following cmdlet to verify that the specific deleted group has not yet been permanently purged
Get-AzureADMSDeletedGroup –Id <objectId>

#How to restore your deleted Microsoft 365 group
#Run the following cmdlet to restore the group and its contents
Restore-AzureADMSDeletedDirectoryObject –Id <objectId>

#Alternatively, the following cmdlet can be run to permanently remove the deleted group
Remove-AzureADMSDeletedDirectoryObject –Id <objectId>
