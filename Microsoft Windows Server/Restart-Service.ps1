#Get-Service all services invoke cmdlet
Invoke-Command -ComputerName servername -ScriptBlock {Get-Service | ft -autosize}

#Get-Service targeted service invoke cmdlet
Invoke-Command -ComputerName servername -ScriptBlock {Get-Service 'servicename' | ft -autosize}

#Restart-Service invoke cmdlet
Invoke-Command -ComputerName servername -ScriptBlock {Get-Service 'servicename' | Restart-Service}
