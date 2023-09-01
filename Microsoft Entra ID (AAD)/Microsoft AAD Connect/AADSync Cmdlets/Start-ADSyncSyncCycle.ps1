#start aad sync
Start-ADSyncSyncCycle
or 
Invoke-Command -ComputerName aadsync -ScriptBlock{start-adsyncsynccycle}

#example
Result
------
Success