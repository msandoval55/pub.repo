Problem:
==========
Mailbox Restoration
 
Cause:
==========
Mailbox is in the soft-delete mailbox
 
Resolution:
==========
```powershell
# Get the inactive mailbox
$InactiveMailbox = Get-Mailbox -Identity <email address> -SoftDeletedMailbox -IncludeInactiveMailbox
```
```powershell
#check the old Guid
$InactiveMailbox | fl DisplayName,UserPrincipalName,Guid (old Guid)
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/8994e696-eaf6-4f49-a016-a85eafb0ec3f)

```powershell
# Check the current and new Guid
Get-Mailbox <email address> | fl DisplayName,UserPrincipalName,Guid (New Guid)
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/06aa1166-89ca-44fd-9259-84cb7b8cf102)

```powershell
# Get the LegencyExchangeDN of the inactive mailbox
$inactiveMailbox.LegacyExchangeDN
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/56c50017-1fd1-47d6-b4c9-05525a7e235b)

```powershell
# Copy this LegacyExchangeDN to the proxyaddress starting with X500: LegacyExchangeDN
![image](https://github.com/msandoval55/pub.repo/assets/116230991/4d18d434-6378-46d1-808b-a21476effb72)

```powershell
#Run a AAD sync so the added changes go through
Start AADSync : start-adsyncsynccycle
```
```powershell
# Do the MailboxRestore
New-MailboxRestoreRequest -SourceMailbox $inactiveMailbox.DistinguishedName -TargetMailbox <New Guid>
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/079535f4-7adf-4995-ad11-6ca9c30318ed)
```powershell
#Check the Restore Statistics
Get-MailboxRestoreRequest | Get-MailboxRestoreRequestStatistics
```



