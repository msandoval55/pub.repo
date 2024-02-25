Invoke-Command -ComputerName ServerName -ScriptBlock {Get-WmiObject Win32_OperatingSystem | Select-Object csname, @{LABEL='LastBootUpTime';EXPRESSION= {$_.ConverttoDateTime($_.lastbootuptime)}}}
