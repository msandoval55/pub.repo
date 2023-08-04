# Microsoft Exchange
## Exchange Patching Servers Windows Server Core

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

> **Note:** Run Server Updates When you have finished, follow the next cmds

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
> **Note:** Run Server Updates When you have finished, follow the next cmds

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

> **Note:** Run Server Updates When you have finished, follow the next cmds

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