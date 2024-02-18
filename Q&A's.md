# Q&A's

How long does active directory take to sync? 15 Minutes
How long does AD Connect take to sync? Every 30 Minutes

# Exchange Mailboxes

What are the max mailbox sizes for A1 and A5 EDU licensing?

> [!note]
> A5 Licenses use "Exchange Online Plan 2" which only allows 100GB of mailbox storage.
> 
> A1 Licenses use "Exchange Online Plan 1" which only allows 50GB of mailbox storage.
> 
> ![image](https://github.com/msandoval55/pub.repo/assets/116230991/421421a2-f761-45e3-9234-7587b70c84e4)
>
> https://learn.microsoft.com/en-us/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits
>
> https://learn.microsoft.com/en-us/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-education

How long are mailboxes retained?

> [!note]
> 30 days after being deleted.
> 
> When you delete a user account, the corresponding Exchange Online mailbox is deleted and removed from the list of mailboxes in the EAC. After the user account is deleted, it's listed on the Deleted Users page in the Microsoft 365 admin center. It can be recovered within 30 days after being deleted. After 30 days, the user account and mailbox are permanently deleted and not recoverable.
>
> https://learn.microsoft.com/en-us/exchange/recipients-in-exchange-online/delete-or-restore-mailboxes

Can I restore a mailbox?

> [!note]
Yes, It can be recovered within 30 days after being deleted.
>
> When you delete a mailbox, Exchange Online retains the mailbox and all its contents until the deleted mailbox retention period expires, which is 30 days. After 30 days, the mailbox is permanently deleted and can't be recovered. The method for restoring a mailbox depends on whether the mailbox was deleted by deleting the user account or removing the Exchange Online license.
>
> If in the 30-day time period a new Microsoft Entra user is synchronized from the original on-premises recipient account with the same ExchangeGuid or ArchiveGuid, this will result in an ExchangeGuid validation conflict error.
>
> https://learn.microsoft.com/en-us/exchange/recipients-in-exchange-online/delete-or-restore-mailboxes

# OneDrive Retention 

How long is a onedrive retained for?

> [!note]
The default is 30 days.
>
> During this time, shared content can still be accessed by other users. At the end of the time, the OneDrive will be in a deleted state for 93 days and can only be restored by a global or SharePoint admin.
>
> https://learn.microsoft.com/en-us/sharepoint/restore-deleted-onedrive

# 365 Group Retention

# Teams Limits, Specifications, and Policies

Teams settings and policies reference
https://learn.microsoft.com/en-us/microsoftteams/settings-policies-reference

Limits and specifications for Microsoft Teams
https://learn.microsoft.com/en-us/microsoftteams/limits-specifications-teams

# Active Directory

How long does active directory take to sync?

> [!note]
> The minimum interval is 15 minutes.
>
> You must set the site link replication interval property to indicate how frequently you want replication to occur during the times when the schedule allows replication. For example, if the schedule allows replication between 02:00 hours and 04:00 hours, and the replication interval is set for 30 minutes, replication can occur up to four times during the scheduled time. The default replication interval is 180 minutes, or 3 hours. The minimum interval is 15 minutes.
>
> https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/plan/determining-the-interval
>
> https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/get-started/replication/active-directory-replication-concepts
>
> https://theitbros.com/check-active-directory-replication/

# EntraID Connect

How long does EntraID Connect take to sync?

> [!note]
> By default every 30 minutes a synchronization cycle is run.
>
> https://learn.microsoft.com/en-us/entra/identity/hybrid/connect/how-to-connect-sync-feature-scheduler
