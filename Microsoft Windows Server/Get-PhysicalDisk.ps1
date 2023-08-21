Invoke-Command -ComputerName "servername" -ScriptBlock {Get-PhysicalDisk | ft}

#Example
Number FriendlyName        SerialNumber                     MediaType CanPool OperationalStatus HealthStatus Usage         Size
------ ------------        ------------                     --------- ------- ----------------- ------------ -----         ----
1      VMware Virtual disk 6000c29562ac5210681271ce73f62d47 SSD       False   OK                Healthy      Auto-Select 400 GB
0      VMware Virtual disk 6000c2975c7e8ae443a5f50754c2ef29 SSD       False   OK                Healthy      Auto-Select 150 GB