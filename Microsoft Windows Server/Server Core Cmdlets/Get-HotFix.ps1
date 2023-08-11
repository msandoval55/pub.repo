#Obtain a list of installed Updates
wmic qfe list

Invoke-Command -ComputerName "server3" -ScriptBlock {wmic qfe list}

#or

Invoke-Command -computername aad -scriptblock {Get-HotFix | sort InstalledOn}