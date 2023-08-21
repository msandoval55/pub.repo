#Get folder size from remote server
Invoke-Command -ComputerName "servername" -ScriptBlock {Get-ChildItem -Path C:\windows\ccmcache -Recurse | Measure-Object -Sum Length | Select-Object @{name='folder size (Gb)';expression={$_.Sum/1gb}}}
