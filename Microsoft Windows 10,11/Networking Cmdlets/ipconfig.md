# ipconfig
The ipconfig command is used to display a computers TCP/IP configuration. You can display the IP info for a single or all network cards installed on a computer.
This command can also display the DNS cache on the local machine, flush DNS, release and renew the DHCP address on all network cards.

```Powershell
#/all switch to display IP info for all network cards.
ipconfig /all 
```
```Powershell
#/flushdns switch to clear the local DNS resolver cache.
ipconfig /flushdns
```
```Powershell
#/release to release DHCP addresses. This will release DCHP address on the network cards that are configured for DHCP.
ipconfig /release
```
```Powershell
#/renew switch will renew DHCP address for all network cards.
ipconfig /renew
```
```Powershell
#/registerdns to trigger dynamic registration of the DNS names and IP addresses that are configured on the computer.
ipconfig /registerdns
```
```Powershell
#/displaydns switch will display the DNS client cache.
ipconfig /displaydns
```
