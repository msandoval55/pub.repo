# How to check if domain controllers are in sync with each other?

>[!note]
>These cmdlets must be ran on a domain controller.

```powershell
Repadmin /replsummary
```
The “/replsummary” operation quickly summarizes replication state and relative health of a forest.

![image](https://github.com/msandoval55/pub.repo/assets/116230991/41a558dc-c77a-40aa-a302-d1ab3c4bae76)

```powershell
Repadmin /Queue
```
This command lists elements that are remaining in the replication queue. It displays inbound replication requests that the Domain Controller needs to issue in order to become consistent with its source replication partners.

![image](https://github.com/msandoval55/pub.repo/assets/116230991/435e5751-3caf-4ddd-b7fe-47a2b19c70ef)

```powershell
Repadmin /Showrepl
```
This command displays the replication status when the specified domain controller last attempted to implement an inbound replication of Active Directory partitions. It helps in figuring out the replication topology and replication failure.

![image](https://github.com/msandoval55/pub.repo/assets/116230991/71c45923-760d-4bae-a28a-647879a723e0)

```powershell
Repadmin /syncall
```
It ensures synchronization between replication partners

```powershell
Repadmin /KCC
```
This command forces the KCC (Knowledge Consistency Checker) on targeted domain controller(s) to immediately recalculate its inbound replication topology. It checks and creates the connections between the Domain Controllers. By default KCC runs in the background every 15 minutes to check if a new connection has been established between DCs.

![image](https://github.com/msandoval55/pub.repo/assets/116230991/fe236ec4-7e10-4005-95ab-87f0b86835a8)

```powershell
Repadmin /replicate
```
This command forces the replication of the specified directory partition to the destination domain controller from the source DC.
