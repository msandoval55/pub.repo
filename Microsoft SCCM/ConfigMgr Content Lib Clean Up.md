### Config Mgr "Server-name" E:\ContentLibary Clean-up

Log on to the SCCM server and open PowerShell as an administrator.

Run the following pscmd. This may take a while. 

```powershell
Get-WsusServer -Name Server-name -PortNumber 8530 | Invoke-WsusServerCleanup –CleanupObsoleteUpdates -CleanupUnneededContentFiles -CompressUpdates -DeclineExpiredUpdates -DeclineSupersededUpdates
```

<img width="1093" height="330" alt="image" src="https://github.com/user-attachments/assets/e3c7af35-d178-40b7-ba16-0a4932a60db1" />

The end result may vary on the space claimed.

<img width="1348" height="437" alt="image" src="https://github.com/user-attachments/assets/17e99391-c7e6-49bc-8e01-3cf6c8db1858" />

<img width="1668" height="295" alt="image" src="https://github.com/user-attachments/assets/289c32ae-de6f-4502-ac06-b5b6c3e1c22a" />

