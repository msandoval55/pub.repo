========
#Get product and file version from remote on-prem exchange server. 
Invoke-Command -computername servername -scriptblock {Get-Command Exsetup.exe | ForEach {$_.FileVersionInfo}}
Invoke-Command -computername Server1,Server2,Server3 -scriptblock {Get-Command Exsetup.exe | ForEach {$_.FileVersionInfo}}
========

Exchange Server build numbers and release dates
#https://learn.microsoft.com/en-us/exchange/new-features/build-numbers-and-release-dates?view=exchserver-2019

View the build number of an Exchange-based server
This section describes the various methods that you can use to view the build number of servers that are running Exchange Server.

Option1
Run the HealthChecker script, and check the build number.
#https://microsoft.github.io/CSS-Exchange/Diagnostics/HealthChecker/

Option2
#Get product and file version from remote on-prem exchange server. 
Invoke-Command -computername servername -scriptblock {Get-Command Exsetup.exe | ForEach {$_.FileVersionInfo}}

Option3
# Note This option does not reflect the installed Security Update (SU), only the Cumulative Update (CU). To verify it, use option 1 or 2.
Get-ExchangeServer | Format-List Name,Edition,AdminDisplayVersion
