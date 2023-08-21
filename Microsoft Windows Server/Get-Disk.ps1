#get disk information at a logical level
Invoke-Command -ComputerName "2019admin" -ScriptBlock {Get-Disk | ft -autosize} 

#Example
Number Friendly Name       Serial Number                    HealthStatus OperationalStatus Total Size Partition Style
------ -------------       -------------                    ------------ ----------------- ---------- ---------------
0      VMware Virtual disk 6000c2975c7e8ae443a5f50754c2ef29 Healthy      Online                150 GB GPT
1      VMware Virtual disk 6000c29562ac5210681271ce73f62d47 Healthy      Online                400 GB GPT