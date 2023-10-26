#import and install module if needed
Import-Module AdSyncTools
Install-Module AdSyncTools
Get-InstalledModule

#start aad sync
Start-ADSyncSyncCycle

#example
Result
------
Success

or 

#invoke aad sync cycle
Invoke-Command -ComputerName hostname -ScriptBlock{start-adsyncsynccycle}

#example
PSComputerName RunspaceId                           Result 
-------------- ----------                           ------ 
aad            5703d8b7-2758-4bff-94d3-a81ea758eeb1 Success


