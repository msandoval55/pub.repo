### The following scripts are using PowerShell Invoke-Commands. 

#Get folder size from a remote server
```powershell
Invoke-Command -ComputerName "servername" -ScriptBlock {Get-ChildItem -Path C:\windows\ccmcache -Recurse | Measure-Object -Sum Length | Select-Object @{name='folder size (Gb)';expression={$_.Sum/1gb}}}
```

#Delete ccmcache folder contents from remote server
```powershell
Invoke-Command -ComputerName "servername" -ScriptBlock {$resman= New-Object -ComObject "UIResource.UIResourceMgr"                                                                        
$cacheInfo=$resman.GetCacheInfo()
$cacheinfo.GetCacheElements()  | foreach {$cacheInfo.DeleteCacheElement($_.CacheElementID)}}
```

#Restart-service XymonPSClient invoke cmdlet
```powershell
Invoke-Command -ComputerName cm02 -ScriptBlock {Get-Service 'XymonPSClient' | Restart-Service}
```
