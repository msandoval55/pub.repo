#Gets the hotfixes that are installed on local or remote computers.
Invoke-Command -computername Server3 -scriptblock {Get-HotFix | sort InstalledOn}

#https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-hotfix?view=powershell-7.3

#Example
Source        Description      HotFixID      InstalledBy          InstalledOn                PSComputerName                 
------        -----------      --------      -----------          -----------                --------------                 
SERVER3       Security Update  KB4512577                          9/7/2019 12:00:00 AM       Server3                        
SERVER3       Security Update  KB4539571     NT AUTHORITY\SYSTEM  3/17/2020 12:00:00 AM      Server3                        
SERVER3       Security Update  KB4549947     NT AUTHORITY\SYSTEM  4/16/2020 12:00:00 AM      Server3                        
SERVER3       Security Update  KB4562562     NT AUTHORITY\SYSTEM  6/18/2020 12:00:00 AM      Server3                        
SERVER3       Security Update  KB4558997     NT AUTHORITY\SYSTEM  7/23/2020 12:00:00 AM      Server3                        
SERVER3       Security Update  KB4566424     NT AUTHORITY\SYSTEM  8/20/2020 12:00:00 AM      Server3                        
SERVER3       Update           KB4486153     TAMUCC\eolivares2... 8/31/2020 12:00:00 AM      Server3                        
SERVER3       Security Update  KB4570332     NT AUTHORITY\SYSTEM  9/17/2020 12:00:00 AM      Server3                        
SERVER3       Security Update  KB4577667     NT AUTHORITY\SYSTEM  10/22/2020 12:00:00 AM     Server3                        
SERVER3       Security Update  KB4587735     NT AUTHORITY\SYSTEM  11/20/2020 12:00:00 AM     Server3                        
SERVER3       Security Update  KB4598480     NT AUTHORITY\SYSTEM  1/21/2021 12:00:00 AM      Server3                        
SERVER3       Security Update  KB4535680     NT AUTHORITY\SYSTEM  1/21/2021 12:00:00 AM      Server3                        
SERVER3       Security Update  KB4601393     NT AUTHORITY\SYSTEM  2/25/2021 12:00:00 AM      Server3                        
SERVER3       Security Update  KB5000859     NT AUTHORITY\SYSTEM  3/18/2021 12:00:00 AM      Server3                        
SERVER3       Update           KB4589208     NT AUTHORITY\SYSTEM  3/18/2021 12:00:00 AM      Server3                        
SERVER3       Security Update  KB5001404     NT AUTHORITY\SYSTEM  4/22/2021 12:00:00 AM      Server3                        
SERVER3       Security Update  KB5003243     NT AUTHORITY\SYSTEM  5/20/2021 12:00:00 AM      Server3                        
SERVER3       Security Update  KB5003711     NT AUTHORITY\SYSTEM  6/11/2021 12:00:00 AM      Server3                        
SERVER3       Security Update  KB5005112     NT AUTHORITY\SYSTEM  8/19/2021 12:00:00 AM      Server3                        
SERVER3       Security Update  KB5005701     NT AUTHORITY\SYSTEM  9/28/2021 12:00:00 AM      Server3                        
SERVER3       Update           KB5006754     NT AUTHORITY\SYSTEM  11/18/2021 12:00:00 AM     Server3                        
SERVER3       Security Update  KB5008287     NT AUTHORITY\SYSTEM  12/21/2021 12:00:00 AM     Server3                        
SERVER3       Update           KB5009642     NT AUTHORITY\SYSTEM  2/17/2022 12:00:00 AM      Server3                        
SERVER3       Update           KB5011574     NT AUTHORITY\SYSTEM  4/21/2022 12:00:00 AM      Server3                        
SERVER3       Update           KB5012675     NT AUTHORITY\SYSTEM  5/23/2022 12:00:00 AM      Server3                        
SERVER3       Update           KB5014031     NT AUTHORITY\SYSTEM  6/23/2022 12:00:00 AM      Server3                        
SERVER3       Update           KB5014797     NT AUTHORITY\SYSTEM  7/21/2022 12:00:00 AM      Server3                        
SERVER3       Update           KB5015896     NT AUTHORITY\SYSTEM  8/24/2022 12:00:00 AM      Server3                        
SERVER3       Security Update  KB5012170     NT AUTHORITY\SYSTEM  8/24/2022 12:00:00 AM      Server3                        
SERVER3       Update           KB5017400     NT AUTHORITY\SYSTEM  10/20/2022 12:00:00 AM     Server3                        
SERVER3       Security Update  KB5020374     NT AUTHORITY\SYSTEM  11/16/2022 12:00:00 AM     Server3                        
SERVER3       Security Update  KB5023789     NT AUTHORITY\SYSTEM  3/21/2023 12:00:00 AM      Server3                        
SERVER3       Update           KB5028855     NT AUTHORITY\SYSTEM  8/2/2023 12:00:00 AM       Server3                        
SERVER3       Security Update  KB5028316     NT AUTHORITY\SYSTEM  8/2/2023 12:00:00 AM       Server3                        
SERVER3       Security Update  KB5028168     NT AUTHORITY\SYSTEM  8/2/2023 12:00:00 AM       Server3                        
