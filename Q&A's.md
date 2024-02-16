# Q&A's

How long does active directory take to sync? 15 Minutes
How long does AD Connect take to sync? Every 30 Minutes

# Exchange Mailboxes

How long is a mailbox retained for?

> [!note]
A soft-deleted user mailbox is a mailbox that has been deleted using the Microsoft 365 admin center or the Remove-Mailbox cmdlet in Exchange Online PowerShell, and has still been in the Microsoft Entra ID recycle bin for less than 30 days.

https://learn.microsoft.com/en-us/exchange/recipients-in-exchange-online/delete-or-restore-mailboxes

Can I restore a mailbox?

> [!note]
When you delete a mailbox, Exchange Online retains the mailbox and all its contents until the deleted mailbox retention period expires, which is 30 days. After 30 days, the mailbox is permanently deleted and can't be recovered. The method for restoring a mailbox depends on whether the mailbox was deleted by deleting the user account or removing the Exchange Online license.

https://learn.microsoft.com/en-us/exchange/recipients-in-exchange-online/delete-or-restore-mailboxes

# OneDrive Retention 

How long is a onedrive retained for?

> [!note]
The default is 30 days. During this time, shared content can still be accessed by other users. At the end of the time, the OneDrive will be in a deleted state for 93 days and can only be restored by a global or SharePoint admin.

https://learn.microsoft.com/en-us/sharepoint/restore-deleted-onedrive

# 365 Group Retention

# Teams Limits, Specifications, and Policies

Teams settings and policies reference
https://learn.microsoft.com/en-us/microsoftteams/settings-policies-reference

Limits and specifications for Microsoft Teams
https://learn.microsoft.com/en-us/microsoftteams/limits-specifications-teams
