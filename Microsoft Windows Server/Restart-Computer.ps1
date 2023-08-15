#restart server
Restart-Computer -Force
#invoke cmd
Invoke-Command -ComputerName server1 -ScriptBlock {Restart-Computer -Force}