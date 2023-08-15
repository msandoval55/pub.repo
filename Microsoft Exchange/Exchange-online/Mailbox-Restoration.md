Problem:
==========
Mailbox Restoration
 
Cause:
==========
Mailbox is in the soft-delete mailbox
 
Resolution:
==========
```ps
# Get the inactive mailbox and check the old Guid
$InactiveMailbox = Get-Mailbox -Identity <email address> -SoftDeletedMailbox -IncludeInactiveMailbox
$InactiveMailbox | fl DisplayName,UserPrincipalName,Guid (old Guid)
```
```ps
# Check the current and new Guid
Get-Mailbox <email address> | fl DisplayName,UserPrincipalName,Guid (New Guid)
 ```ps
# Get the LegencyExchangeDN of the inactive mailbox
$inactiveMailbox.LegacyExchangeDN
```
```ps
# Copy this LegacyExchangeDN to the proxyaddress starting with X500: LegacyExchangeDN
# Start AADSync : start-adsyncsynccycle
```
```ps
# Do the MailboxRestore
New-MailboxRestoreRequest -SourceMailbox $inactiveMailbox.DistinguishedName -TargetMailbox <New Guid>
```
```ps
#Check the Restore Statistics
Get-MailboxRestoreRequest | Get-MailboxRestoreRequestStatistics
 

Next Actions:
We have finished the four accounts and next 16 acounts would be finished by yourself
Drop this ticket to Sev B and keep monitoring
