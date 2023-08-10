# Wireshark

Wireshark Download link
https://www.wireshark.org/download.html

Npcap Download link
https://npcap.com/

![image](https://github.com/msandoval55/pub.repo/assets/116230991/598243b8-4c2f-4268-8f20-21ef32fbb1be)

Wireshark Capturing Modes
Wireshark Capturing Modes

## Promiscuous mode
```ruby
Sets interface to capture all packets on a network segment to which it is associated to
```

## Monitor mode
```ruby
setup the Wireless interface to capture all traffic it can receive (Unix/Linux only)
```

## Filter Types
```ruby
Capture filter = Filter packets during capture
```
```ruby
Display Filter = Hide Packets from a capture display
```

## Capture Filter Syntax

Expressions Example
```ruby
tcp src 192.168.1.1 80 and tcp dst 202.164.30.1
```

## Display Filter Syntax

Expressions Example
```ruby
http dest IP == 192.168.1.1 and tcp port
```

## Protocols – Values
```ruby
ether
fddi
ip
arp
rarp
decnet
lat
sca
moprc
mopdl
tcp
udp
```

## Filtering packets (Display Filters)

eq or ==
```ruby
Equal
```
```ruby
ip.dest == 192.168.1.1
```

ne or !=
```ruby
Not Equal
```
```ruby
ip.dest != 192.168.1.1
```

gt or >
```ruby
Greater than
```
```ruby
frame.len > 10
```

lt or <
```ruby
Less than
```
```ruby
frame.len <10
```

ge or >=
```ruby
Greater than or Equal
```
```ruby
frame.len >= 10
```

le or <=
```ruby
Less than or Equal
```
```ruby
frame.len<=10
```


## Miscellaneous Items

Slice Operator
```ruby
[…] - Range of values
```

Membership Operator
```ruby
{} - In
```

CTRL+E -
```ruby
Start/Stop Capturing
```

## Default columns in a packet capture output

No.
```ruby
Frame number from the beginning of the packet capture
```

Time
```ruby
Seconds from the first frame
```

Source (src)
```ruby
Source address, commonly an IPv4, IPv6 or Ethernet address
```

Destination (dst)
```ruby
Destination address
```

Protocol
```ruby
Protocol used in the Ethernet frame, IP packet, or TCP segment
```

Length
```ruby
Length of the frame in bytes
```

## Keyboard Shortcuts

Tab or Shift+Tab
```ruby
Move between screen elements, e.g. from the toolbars to the packet list to the packet detail.
```

Alt+→ or Option+→
```ruby
Move to the next packet in the selection history.
```

↓
```ruby
Move to the next packet or detail item.
```

→
```ruby
In the packet detail, opens the selected tree item.
```

↑
```ruby
Move to the previous packet or detail item.
```

Shift+→
```ruby
In the packet detail, opens the selected tree item and all of its subtrees.
```

Ctrl+ ↓ or F8
```ruby
Move to the next packet, even if the packet list isn’t focused.
```

Ctrl+→
```ruby
In the packet detail, opens all tree items.
```

Ctrl+ ↑ or F7
```ruby
Move to the previous packet, even if the packet list isn’t focused.
```

Ctrl+←
```ruby
In the packet detail, closes all tree items.
```

Ctrl+.
```ruby
Move to the next packet of the conversation (TCP, UDP or IP).
```

Backspace
```ruby
In the packet detail, jumps to the parent node.
```

Ctrl+,
```ruby
Move to the previous packet of the conversation (TCP, UDP or IP).
```

Return or Enter
```ruby
In the packet detail, toggles the selected tree item.
```

## Common Filtering Commands

Wireshark Filter by IP
```ruby
ip.addr == 10.10.50.1
```

Filter by Destination IP
```ruby
ip.dest == 10.10.50.1
```

Filter by Source IP
```ruby
ip.src == 10.10.50.1
```

Filter by IP range
```ruby
ip.addr >= 10.10.50.1 and ip.addr <= 10.10.50.100
```

Filter by Multiple Ips
```ruby
ip.addr == 10.10.50.1 and ip.addr == 10.10.50.100
```

Filter out/ Exclude IP address
```ruby
!(ip.addr == 10.10.50.1)
```

Filter IP subnet
```ruby
ip.addr == 10.10.50.1/24
```

Filter by multiple specified IP subnets
```ruby
ip.addr == 10.10.50.1/24 and ip.addr == 10.10.51.1/24
```

Filter by Protocol
```ruby
dns
http
ftp
ssh
arp
telnet
icmp
```

Filter by port (TCP)
```ruby
tcp.port == 25
```

Filter by destination port (TCP)
```ruby
tcp.dstport == 23
```

Filter by ip address and port
```ruby
ip.addr == 10.10.50.1 and Tcp.port == 25
```

Filter by URL
```ruby
http.host == “host name”
```

Filter by time stamp
```ruby
frame.time >= “June 02, 2019 18:04:00”
```

Filter SYN flag
```ruby
tcp.flags.syn == 1
```
```ruby
tcp.flags.syn == 1 and tcp.flags.ack == 0
```

Wireshark Beacon Filter
```ruby
wlan.fc.type_subtype = 0x08
```

Wireshark broadcast filter
```ruby
eth.dst == ff:ff:ff:ff:ff:ff
```

WiresharkMulticast filter
```ruby
(eth.dst[0] & 1)
```

Host name filter
```ruby
ip.host = hostname
```

MAC address filter
```ruby
eth.addr == 00:70:f4:23:18:c4
```

RST flag filter
```ruby
tcp.flags.reset == 1
```