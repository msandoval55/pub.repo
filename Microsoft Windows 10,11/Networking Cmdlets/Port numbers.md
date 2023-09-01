# Port Numbers
| Protocol | Type | Number |
| ------------- | ------------- | ------------- |
|FTP	| TCP |	20,21|
|SSH	| TCP |	22|
|TELNET	| TCP |	23|
|SMTP	| TCP |	25
|DNS	| TCP/UDP |	53|
|DHCP	| UDP |	67|
|TFTP	| UDP |	69|
|HTTP	| TCP |	80|
|POP3	| TCP |	110|
|NTP	| TCP |	123|
|IMAP4	| TCP |	143|
|SNMP	| UDP |	161|
|HTTPS	| TCP |	443|

| Port | Protocol | Type |
| ------------- | ------------- | ------------- |
|1	 | ICMP (ping, etc.) |	UDP|
|7	| Echo       (Wake-On-LAN alternate) |	TCP/UDP; Fraggle Attack|
|9	| WakeOnLan  (formerly Discard) |	TCP/UDP|
|19	| Chrgen |	TCP/UDP, Fraggle attack|
|20	| FTP Transfer |	|
|21	| FTP Control |	TCP|
|22	| SSH (SCP), SFTP |	TCP|
|23	| Telnet |	TCP|
|25	| SMTP |	TCP|
|42	| WINS replicate |	TCP/UDP|
|47	| PPTP VPN  (also port 1723) |	TCP/UDP, typically called Ni-FTP|
|49	| TACACs+ |	TCP (vulnerable on UDP)|
|50	| ESP/IPSEC` |	TCP   (formerly re-mail-ck)|
|53	| DNS |	TCP|
|67	| DHCP | Server (former Bootstrap)	UDP|
|68	| DHCP | Client  (former Bootstrap)	UDP|
|69	| TFTP |	UDP, Transfer via random ephemeral ports|
|80	|HTTP |	TCP  (often redirected to 81, 8080, 8081)|
|88	| Kerberos |	UDP|
|110	 | POP3 |	TCP|
|119	| NNTP |	UDP|
|123	| NTP |	UDP|
|135	| RPC |  /DCE endpoint mapper	TCP/UDP|
|137	| WINS |  (Netbios Name Service)	TCP/UDP|
|138	| Netbios Datagram Service |	TCP/UDP|
|139	| SMB (Server Message Block)Also Netbios Session Service |	SMB over NetbiosTCP/UDP|
|143	| IMAP |	TCP/UDP|
|161	| SNMP |	UDP (TCP)|
|389	| LDAP |	TCP|
|443	| HTTPS (SSL/TLS/FTPS) |	TCP|
|445	| SMB	SMB over TCP | (No need for Netbios layer)|
|500	| IPSEC: IKE /ISAKMP |	UDP/TCP|
|636	| Secured LDAP (LDAPS) |	TCP|
|989	| FTPS FTP over TLS/SSL DATA |	TCP/UDP|
|990	| FTPS     FTP over TLS/SSL Control |	TCP/UDP|
|991	| FTPS  (seldom referenced); was Netnews Administration |	TCP|
|1645	| Radius Authentication	| UDP|
|1646	| Radius Accounting	| UDP|
|1701	| L2TP  (VPN)	| TCP|
|1812	| Radius Authentication	| UDP|
|1813	| Radius Accounting	| UDP|
|3389	| RDP/Terminal Services	| TCP|
|4500	| IPSEC: IKE /ISAKMP	| UDP|