# netstat
The netstat command displays TCP/IP connection information, ethernet stats, and the computer’s routing table. As a sysadmin I use this command on Windows servers and clients when troubleshooting connection issues. I can verify application servers are working correctly by checking that the service is running and listening for connections on the port.

```Powershell
#Display all active and listening ports
netstat -a
```
```Powershell
#Display specific active and listening port number
netstat -an | findstr "443"
```
```Powershell
#Test connection with port number on local server
Test-NetConnection -ComputerName localhost -Port 5671
```
```Powershell
#Display all connections in numerical order
netstat -a -n
```
```Powershell
#Displays the executable that is used to create the connection
netstat -ab
```
```Powershell
#Displays ethernet statistics. This is a quick way to check for network card errors and discards
netstat -e
```
```Powershell
#Displays the exe and the process ID (PID) associated with the connection
netstat -e
```
```Powershell
#Displays ethernet statistics. This is a quick way to check for network card errors and discards
netstat -abo
```
```Powershell
#Displays the computer local routing table
netstat -r
```
```Powershell
#Displays FQDN with the connection info
netstat -af
```
