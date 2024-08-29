```powershell
Connect-ExchangeOnline
```

```powershell
$sharedMailboxes = Get-Mailbox -RecipientTypeDetails SharedMailbox -ResultSize Unlimited

$sharedMailboxOwners = foreach ($mailbox in $sharedMailboxes) {
    $owners = Get-MailboxPermission -Identity $mailbox.Identity | Where-Object { $_.AccessRights -eq "FullAccess" -and $_.IsInherited -eq $false } | Select-Object User
    [PSCustomObject]@{
        SharedMailbox = $mailbox.PrimarySmtpAddress
        Owners        = $owners.User -join "; "
    }
}

$sharedMailboxOwners | Export-Csv -Path "C:\SharedMailboxesAndOwners.csv" -NoTypeInformation
```
