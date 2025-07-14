# Q&A's

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
> When you delete a user in the Microsoft 365 admin center (or when a user is removed through Active Directory synchronization), the user's OneDrive will be retained for the number of days you specify in the SharePoint admin center. (For info, see Set the default file retention for deleted OneDrive users.) The default is 30 days. During this time, shared content can still be accessed by other users. At the end of the time, the OneDrive will be in a deleted state for 93 days and can only be restored by a global or SharePoint admin.
>
> https://learn.microsoft.com/en-us/sharepoint/restore-deleted-onedrive

# Microsoft 365 License Features

To compare licenses use this feature matrix sheet from microsoft

> [!note]
>
> https://m365maps.com/matrix.htm#000000000000000100001

# Microsoft 365 User Name Rules

Can I use special characters when creating user accounts?

> [!note]
When you create a user name that contains a special character in Microsoft 365, you will receive error messages.
>
>![image](https://github.com/msandoval55/pub.repo/assets/116230991/0442ada5-fa76-44d7-b549-4e86d5b7f4e5)
>
> https://learn.microsoft.com/en-us/office/troubleshoot/office-suite-issues/username-contains-special-character


# Microsoft 365 Groups

M365 groups what are they? and what's the difference?

> [!note]
> Some are email groups and others are security access groups. There are 6 total groups.
>
> ![image](https://github.com/msandoval55/pub.repo/assets/116230991/dc115172-f418-40d9-8e47-5b0cbeb305e5)
>
> **1. Microsoft 365 Groups**
>
> Microsoft 365 Groups are used for collaboration between users, both inside and outside your company. With each Microsoft 365 group, members get a group email and shared workspace for conversations, files, and calendar events, Stream, and a Planner. Microsoft 365 Groups can also be connected to Teams or Viva Engage.
>
> **2. Distribution groups**
>
> Distribution groups are used for sending notifications to a group of people. They can receive external email if enabled by the administrator.
>
> **3. Dynamic distribution groups**
> 
> Dynamic distribution groups are mail-enabled groups that are used to send mail to people with specific attributes, such as department or location. These attributes are defined in the Exchange admin center rather than Microsoft Entra ID.
>
> **4. Security groups**
>
> Security groups are used for granting access to Microsoft 365 resources, such as SharePoint sites. They can make administration easier because you need only administer the group rather than adding users to each resource individually.
>
> **5. Mail-enabled security groups**
>
> Mail-enabled security groups function the same as regular security groups, except that they cannot be dynamically managed through Microsoft Entra ID and cannot contain devices.
>
> **6. Shared mailboxes**
>
> Shared mailboxes are used when multiple people need access to the same mailbox, such as a company information or support email address, reception desk, or other function that might be shared by multiple people.
>
> https://learn.microsoft.com/en-us/microsoft-365/admin/create-groups/compare-groups?view=o365-worldwide


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

# SharePoint Site Creation

Can users create their own SharePoint sites?

> [!note]
> Microsoft 365 Group creation is open to all users in this tenant.
>
> <img width="1582" height="513" alt="image" src="https://github.com/user-attachments/assets/2e2f9797-9284-49d5-87ad-bed89e458549" />


