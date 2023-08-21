Invoke-Command -ComputerName "servername" -ScriptBlock {$resman= New-Object -ComObject "UIResource.UIResourceMgr"                                                                        
>> $cacheInfo=$resman.GetCacheInfo()
>> $cacheinfo.GetCacheElements()  | foreach {$cacheInfo.DeleteCacheElement($_.CacheElementID)}}