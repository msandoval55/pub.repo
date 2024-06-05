Audit AD:

Main Query
```
index=domaincontrollers" AND SourceName=Microsoft-Windows-Security-Auditing" AND "TaskCategory=Directory Service Changes"
```
 
Add these for specific searches

New Account:
```
AND "Message=A directory service object was created." AND Class=user AND NOT "OU=Shared Mailboxes"
```
```
Add this to remove Fischer creates:  AND Account Name NOT idm-windows.svc
```
 
Account Deleted:
```
AND "Message=A directory service object was deleted." AND Class=user AND NOT "OU=Shared Mailboxes"
```
 
Added To Group:
```
AND "GroupName" AND "Type:        Value Added"
```
 
Removed From Group:
```
AND "GroupName" AND "Type:        Value Deleted"
```

UAC Changes
```
userAccountControl AND (514 OR 512) AND source = WinEventLog:Security AND islandID
```
 
ADFS External Lockout <<-Frequently Used - this is when someone is locked out because an external device has exceeded bad password count.
```
index=logcollector <islandid> 1210
```

4740 Lockouts <<-Someone has entered a bad password too many times on a domain PC
```
"LogName=Security" AND "EventCode=4740" AND "Message=A user account was locked out."
```
 
Can check ADFS lockouts in AD as well:
```
Get-ADUser -Identity 'islandid' -Properties LockedOut | Select-Object -Property Name, LockedOut
```

A domain admin can clear lockout
```
Unlock-ADAccount -Identity 'islandid'
```
 
We can also check for failed logins on WAPs with:
```
"islandid" AND "auth_neg_failed='1'"
```
And for unique devices (MACs)
```
"islandid" AND "auth_neg_failed='1'"
| dedup client_mac
```
 
 
Account Logins
```
index=domaincontrollers <islandid> 4776| table  _time status Logon_Account Source_Workstation
```
 
 
 
Account Moved OUs
```
index=domaincontrollers EventCode=5139
```
 
Fischer Deprov Staging (To Terminations 30 days):
```
"OU=Terminations,DC=ad,DC=tamucc,DC=edu" AND idm-windows.svc source="WinEventLog:Security" AND "Message=A directory service object was modified" AND NOT "Type:        Value Deleted"
```
 
Fischer Deprov (Deleted):
```
"OU=Terminations,DC=ad,DC=tamucc,DC=edu" AND idm-windows.svc source="WinEventLog:Security" AND "Message=A directory service object was modified" AND "Type:        Value Deleted"
```
