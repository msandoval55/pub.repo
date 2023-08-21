#Enter a remote powershell session with the server
Enter-PSSession -ComputerName servername

#Verify the disk space before
fsutil volume diskfree c:

#Clear up ccmcache from SCCM old update packages
$resman= New-Object -ComObject "UIResource.UIResourceMgr"
$cacheInfo=$resman.GetCacheInfo()
$cacheinfo.GetCacheElements()  | foreach {$cacheInfo.DeleteCacheElement($_.CacheElementID)}

#Verify the disk space after
fsutil volume diskfree c:

Optional Cmdlets
#Clear up WinSxS files
dism.exe /Online /Cleanup-Image /StartComponentCleanup 
#Clear up WinSxS files with resetbase
dism.exe /Online /Cleanup-Image /StartComponentCleanup /ResetBase
#Run Windows Clean-up
schtasks.exe /Run /TN "\Microsoft\Windows\Servicing\StartComponentCleanup"