#Get folder size from remote server
#enter powershell session
Enter-PSSession servername
#run script to get folder size in Gb
Get-ChildItem -Path C:\windows\ccmcache -Recurse | Measure-Object -Sum Length | Select-Object @{name='folder size (Gb)';expression={$_.Sum/1gb}}
