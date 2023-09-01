## Ping
The ping command tests network connectivity between two devices by sending ICMP echo requests. 

```Powershell
#Ping by hostname
ping dc1.ad.activedirectorypro.com
```
```Powershell
#-l switch specifies a packet size.
ping 192.168.5.1 -l 2024
```
```Powershell
#-a switch will do a reverse name resolution on the IP (PTR record lookup).
ping 10.250.177.46 -a
```
```Powershell
#-t switch will do a continuous ping. A very popular command for testing network connectivity.
ping 192.168.5.1 -t
```