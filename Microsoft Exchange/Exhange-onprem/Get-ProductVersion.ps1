#Get product and file version from remote on-prem exchange server. 
Invoke-Command -computername servername -scriptblock {Get-Command Exsetup.exe | ForEach {$_.FileVersionInfo}}