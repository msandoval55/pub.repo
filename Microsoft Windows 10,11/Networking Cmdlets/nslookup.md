# nslookup
The nslookup command is used to check DNS records and troubleshoot DNS. This is a must-have command for any sysadmin or network engineer. You can do all kinds of tests to verify DNS is working correctly, you can check PTR, A, MX, SOA, and many other types of DNS records. It’s another one of my favorite windows commands for network troubleshooting.

```Powershell
#nslookup Domain name
nslookup domainname
```
```Powershell
#nslookup pointer recored
nslookup -type=ptr domainname
```