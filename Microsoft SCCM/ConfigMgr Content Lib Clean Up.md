### Config Mgr "Server-name" E:\ContentLibary Clean-up

Log on to the SCCM server and open PowerShell as an administrator.

Run the following pscmd. This may take a while. 

```powershell
Get-WsusServer -Name Server-name -PortNumber 8530 | Invoke-WsusServerCleanup –CleanupObsoleteUpdates -CleanupUnneededContentFiles -CompressUpdates -DeclineExpiredUpdates -DeclineSupersededUpdates
```

<img width="1093" height="330" alt="image" src="https://github.com/user-attachments/assets/e3c7af35-d178-40b7-ba16-0a4932a60db1" />

The end result may vary on the space claimed.

<img width="1683" height="537" alt="image" src="https://github.com/user-attachments/assets/f8ebade3-ac78-427a-b3e6-2c779e2c4d73" />

<img width="1705" height="300" alt="image" src="https://github.com/user-attachments/assets/2a8a71e4-79b6-46da-b518-60f8954dde6b" />


