#https://learn.microsoft.com/en-us/exchange/recipients-in-exchange-online/delete-or-restore-mailboxes

#When an Exchange Online license is removed from a user, Exchange Online data associated with that account is held for 30 days. After the 30-day grace period, the data is deleted and can't be recovered. 
#If you add the license back to the user during the grace period, this will restore access, and the mailbox will become fully active.

#Restoring a user in a hybrid deployment
#For user mailboxes in a hybrid scenario, if the mailbox has been soft-deleted and the Azure AD user that was associated with the mailbox has been hard-deleted from Azure AD, you can use New-MailboxRestoreRequest to recover the mailbox. 
#Read Configure Microsoft 365 Groups with on-premises Exchange hybrid for more info. The procedures in this section explain how to restore the mailbox for a soft-deleted user.

#Restoring a user in a hybrid deployment
#Connect to Exchange Online PowerShell
#Identify the soft-deleted mailbox that you want to restore.
Get-Mailbox -SoftDeletedMailbox | Select-Object Name,ExchangeGuid

#Create a target mailbox for the restored mailbox
Get-Mailbox -Identity <NameOrAliasOfNewTargetMailbox> | Format-List ExchangeGuid

#Replace <SoftDeletedMailboxGUID> with the GUID value
New-MailboxRestoreRequest -SourceMailbox <SoftDeletedMailboxGUID> -TargetMailbox <NewTargetMailboxGUID>

#Restoring disconnected on-premises mailboxes to Exchange Online

#permanently delete a user mailbox from azure ad
Remove-MsolUser -UserPrincipalName <Walter Harp> -RemoveFromRecycleBin

#Use Exchange Online PowerShell to restore a user account
Undo-SoftDeletedMailbox allieb@contoso.com -WindowsLiveID allieb@contoso.com -Password (ConvertTo-SecureString -String 'Pa$$word1' -AsPlainText -Force)

#Use Exchange Online PowerShell to delete a mailbox
Remove-Mailbox -Identity "Walter Harp"