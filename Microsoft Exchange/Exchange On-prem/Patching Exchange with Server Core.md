# Microsoft Exchange Patching with Server Core


> [!IMPORTANT]
> Time window for updates is 8:30PM - 12:00PM. Starting a week after patch Tuesday. Wednesday - Thursday.

> [!IMPORTANT]
> Always check the if there is a .NET version upgrade that is trying to install. If there is one, you will need to log into the server manually and exclude the update or you will need to block it in the registry on the exchange servers. We patch and update .NET but we do not push out new upgrade versions. We do not upgrade new .NET versions due to incompatibilities and dependencies issues.

> [!IMPORTANT]
> When you have both security updates and windows updates it is recommended that you log into the server and update the security patches first manually with the installer on a file directory, reboot the server, then run the windows updates manually. In the past installing all updates from the windows admin center has run caused problems with not installing correctly. 

> [!WARNING]
> *Update* 19 Oct 2022: Per incident on Oct 19, 2022, and Microsoft's best practices they recommend that you "always install security updates manually with the update installer".

> [!TIP]
> When you have both security updates and windows updates you can plan a Wednesday night for security updates and Thursday night for windows updates. 

### Updating Server3 

```Powershell
#Connect to Server3
Connect-ExchangeServer -Computer Server3
```

Check Exchange Environment

```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health for all servers
Get-DAGDatabaseInformation
```

Move Exchange Server into Maintenance Mode

```Powershell
#Start Maintenance Mode
Start-DAGMaintenanceMode -Server Server3
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```
```Powershell
#Get Health status for all servers
Get-DAGDatabaseInformation
```

> [!Note]
> Run Server Updates When you have finished, follow the next cmds

Move Exchange Server Out of Maintenance Mode

```Powershell
#Connect to Server3
Connect-ExchangeServer -Computer Server3
```
```Powershell
#Stop Maintenance Mode
Stop-DAGMaintenaceMode -Server Server3
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health status for all
Get-DAGDatabaseInformation
```


### Updating Server2
```Powershell
#Connect to Server2
Connect-ExchangeServer -Computer Server2
```

Check Exchange Environment

```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health for all servers
Get-DAGDatabaseInformation
```

Move Exchange Server into Maintenance Mode

```Powershell
#Start Maintenance Mode
Start-DAGMaintenanceMode -Server Server2
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```
```Powershell
#Get Health status for all servers
Get-DAGDatabaseInformation
```
> [!Note]
> Run Server Updates When you have finished, follow the next cmds

Move Exchange Server Out of Maintenance Mode

```Powershell
#Connect to Server2
Connect-ExchangeServer -Computer Server2
```
```Powershell
#Stop Maintenance Mode
Stop-DAGMaintenaceMode -Server Server2
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health status for all
Get-DAGDatabaseInformation
```

### Updating Server1
```Powershell
#Connect to Server2
Connect-ExchangeServer -Computer Server2
```

Check Exchange Environment

```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health for all servers
Get-DAGDatabaseInformation
```

Move Exchange Primary Active Manager (PAM)

```Powershell
#MOVE the primary active manager (PAM) from Server1 to Server2
Invoke-Command -ComputerName Server2.ad.domain.com -ScriptBlock { Get-ClusterGroup | Move-Clustergroup -Name "Cluster Group" -Node Server2 -Wait 0}
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```

Move Exchange Database

```Powershell
#MOVE Database to Server2
Move-ActiveMailboxDatabase DB1 -ActivateOnServer Server2
```
```Powershell
#Get mailbox database copy status. Check replay count
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```

Move Exchange Server to Maintenance Mode

```Powershell
#Move Server1 into maintenance mode
Start-DAGMaintenanceMode -Server Server1
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-Databaseavailabilitygroup -status | fl name, ServersInMaintenance
```
```Powershell
#Get Health for all servers
Get-DAGDatabaseInformation
```

> [!Note]
> Run Server Updates When you have finished, follow the next cmds

Move Exchange Server out of Maintenance Mode

```Powershell
#Move Server1 out of maintenance mode
Stop-DAGMaintenaceMode -Server Server1
```
```Powershell
#Get Servers in Maintenance Mode Status
Get-databaseavailabilitygroup -status | fl name,ServersInMaintenance
```
```Powershell
#Get All Servers Database Copy Status
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```

Move Exchange Primary Active Manager (PAM) BACK

```Powershell
Move the primary active manager (PAM) back to Server1 
Invoke-Command -ComputerName Server2.ad.domain.com -ScriptBlock { Get-ClusterGroup | Move-Clustergroup -Name "Cluster Group" -Node Server1 -Wait 0}
```
```Powershell
#Get Server in Primary Active Manager Status
Get-DatabaseAvailabilityGroup DAG01 -status |fl name, Primaryactivemanager
```

Move Exchange Database BACK

```Powershell
#Move Database back to Server1
Move-ActiveMailboxDatabase DB1 -ActivateOnServer Server1
```
```Powershell
#Get All Servers Database Copy Status.
Get-MailboxDatabaseCopyStatus * | sort name | ft -auto
```
```Powershell
#Get Health for all servers
Get-DAGDatabaseInformation
```
