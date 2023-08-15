#https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-hotfix?view=powershell-7.3
#Show last patch/update time and date single server
Invoke-Command -computername Server3 -scriptblock {Get-HotFix | sort InstalledOn}

#Show last patch/update time and date multiple servers
Invoke-Command -computername server01,server02,server03 -scriptblock {Get-HotFix | sort InstalledOn}

#Obtain a list of installed Updates
wmic qfe list
#or
Invoke-Command -ComputerName "server3" -ScriptBlock {wmic qfe list}
#or
Invoke-Command -computername "server2" -scriptblock {Get-HotFix | sort InstalledOn}


#Example
Source        Description      HotFixID      InstalledBy          InstalledOn                PSComputerName                 
------        -----------      --------      -----------          -----------                --------------                                     
SERVER3       Update           KB5015896     NT AUTHORITY\SYSTEM  8/24/2022 12:00:00 AM      Server3                        
SERVER3       Security Update  KB5012170     NT AUTHORITY\SYSTEM  8/24/2022 12:00:00 AM      Server3                        
SERVER3       Update           KB5017400     NT AUTHORITY\SYSTEM  10/20/2022 12:00:00 AM     Server3                        
SERVER3       Security Update  KB5020374     NT AUTHORITY\SYSTEM  11/16/2022 12:00:00 AM     Server3                        
SERVER3       Security Update  KB5023789     NT AUTHORITY\SYSTEM  3/21/2023 12:00:00 AM      Server3                        
SERVER3       Update           KB5028855     NT AUTHORITY\SYSTEM  8/2/2023 12:00:00 AM       Server3                        
SERVER3       Security Update  KB5028316     NT AUTHORITY\SYSTEM  8/2/2023 12:00:00 AM       Server3                        
SERVER3       Security Update  KB5028168     NT AUTHORITY\SYSTEM  8/2/2023 12:00:00 AM       Server3    