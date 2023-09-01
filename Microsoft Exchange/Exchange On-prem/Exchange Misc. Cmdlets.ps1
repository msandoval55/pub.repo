# Exchange Misc Powershell CMDs 

.Net Version
```Powershell
#Get .net version
Get-DotNETVersion -Computer Server3
```
Server Core IIS Commands
```powershell
#Open IIS GUI
C:\windows\system32\inetsrv> .\InetMgr.exe
```
```Powershell
#Restart IIS all Exchange Servers
Restart-ExchangeIIS
```
```Powershell
#Restart IIS individual Server
Restart-IISOnServers
```
Restart all Exchange Servers
```Powershell
#Restart AutoDAppPool all Exchange Servers
Restart-AutoDAppPool
```
Server Database Copy Status
```Powershell
#Get Server Database Copy Status
Get-MailboxDatabaseCopyStatus -Server Server3
```
Server State
```Powershell
#Get Server State
Get-ServerComponentState Server3
```
Running services count
```Powershell
#Get running services count
get-service | ?{$_.status -like "*running*"} | measure-object
```
Application Versions
```Powershell
#Check Application Versions
Get-command setup.exe | fl
```
File Path to check logs
```Powershell
#File Path to check logs
cd '.\Program Files\Microsoft\Exchange Server\V15\Bin\'
```
Get and Set Exchange Services
```Powershell
#Get and Set Services
Get-Service MSExchangeADTopology | Set-Service -StartupType Automatic
```
Get and Start Exchange Services
```Powershell
#Get and Start Services
Get-Service MSExchangeADTopology | Start-Service
```
Get and Set and Change Service Startup Type to Auto
```Powershell
#Get and Set Services
Get-Service mse* | Set-Service -StartupType Automatic
```
Get and Start Services
```Powershell
#Get and Start Services
Get-Service mse* | Start-Service
```
Move Database Back and Skip Suppression Checks
```Powershell
#Move Database back to Hybrid1 | Select Yes to all
Move-ActiveMailboxDatabase DB1 -SkipMoveSuppressionChecks -ActivateOnServer Server1
```