#Check Tasklist for running .dll file
Invoke-Command -ComputerName "server name" -ScriptBlock {tasklist /m sqlsrv32.dll}