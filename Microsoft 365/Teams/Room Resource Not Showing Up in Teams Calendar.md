# Introduction
When you create a room resource, and someone reports that they can't find it in Teams calendar, but it shows up in outlook desktop client and OWA then follow the instructions below.

![image](https://github.com/msandoval55/pub.repo/assets/116230991/c21a4e09-fe41-47e1-82ec-0b0f002ceeaa)

# Instructions
Note: You will need to use powershell and connect to exchange online. 

You will need to create a room list for the resource.

```powershell
New-DistributionGroup -Name “Create a room list name” -Roomlist
```
Now you need to set the room resource to the newly created room list.

```powershell
Add-DistributionGroupMember -Identity “the name you specified as the room list” -Member “your room resource mailbox"
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/a29893f6-0160-4c63-80d9-6d85c9732ff4)

NOTE: It will take 24 to 48 hours for these settings to take effect after you either configure or modify them. During this period, Room Finder might not show the expected results.
