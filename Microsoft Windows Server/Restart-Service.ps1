#Get-Service all services invoke cmdlet
Invoke-Command -ComputerName servername -ScriptBlock {Get-Service | ft -autosize}

#Get-Service targeted service invoke cmdlet
Invoke-Command -ComputerName servername -ScriptBlock {Get-Service 'servicename' | ft -autosize}

#Restart-Service invoke cmdlet
Invoke-Command -ComputerName servername -ScriptBlock {Get-Service 'servicename' | Restart-Service}



#Example Script for restarting a service remotely
#Restart-Service invoke cmdlet
Invoke-Command -ComputerName dangbot-sd -ScriptBlock {Get-Service 'dangbot-sd' | Restart-Service}

#Restart-Service invoke cmdlet
Invoke-Command -ComputerName dangbot-sd -ScriptBlock {Get-Service 'XymonPSClient' | Restart-Service}
