# telnet
Use the windows telnet client to test if a remote host is allowing connection on a specific port. I typically use this when someone says your firewall is blocking a program from working.
<br />

If you know the port number the application runs on you can use the command below.

```Powershell
#telnet + hostname or IP + port number
telnet srv01 21
```