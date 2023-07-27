## Active Directory Group Managed Service Accounts gMSA

**Basic concepts**

- They can be used only on Servers running Windows Server 2012 or later.
- You can use the same Managed service account across multiple servers.
- Managed group service accounts are stored in the managed service account container of the active directory.

**Requirements**

- Microsoft Active Directory must be present.
- Extend your Active Directory schema to Windows Server 2008 R2.
- Microsoft .Net framework 3.5 or above.
- PowerShell Active Directory module.
- At least one domain controller in the domain must be running Windows Server 2012.
- Microsoft Key Distribution Service up and running.
- Only members of Domain Admins or Account Operators groups can create a group managed service account objects.

### Create the Managed Service Account in Active Directory

```Powershell
#Create a gMSA with PowerShell, use the New-ADServiceAccount cmdlet
New-ADServiceAccount -Name <String> `
                     -Description <String> `
                     -DNSHostName <String> `
                     -ManagedPasswordIntervalInDays <Int32> `
                     -PrincipalsAllowedToRetrieveManagedPassword <ADPrincipal> `
                     -Enabled $True | $False `                    
                     -PassThru 
```

As mentioned above, The new gMSA is located in the Managed Service Accounts container.

![image](https://user-images.githubusercontent.com/116230991/217017794-01de7c21-1b3e-4f63-81e6-2bf58d1a0175.png)

**-DNSHostName**

Defines the DNS hostname of service.

**-ManagedPasswordIntervalInDays**

Specifies the number of days for the password change interval.

**-PrincipalsAllowedToRetrieveManagedPassword**

Specifies the group of servers that can use a group managed service account. If the group defined in this parameter has been created by you, it is important to restart the host before installing the gMSA.


### Install the gMSA on the host

```Powershell
#The Install-ADServiceAccount cmdlet installs an existing gMSA on the server on which the cmdlet is run. Use the cmdlet with the following syntax:
Install-ADServiceAccount -Identity <ADServiceAccount>
```

Run the following PowerShell commands as administrator.

![image](https://user-images.githubusercontent.com/116230991/217018276-916c70f2-9fe1-4283-b324-5390f2bf9994.png)

```Powershell
#The Test-ADServiceAccount cmdlet tests that the specified service account is ready for use.
Test-AdServiceAccount -Identity <ADServiceAccount>
```
You can now use the gMSA for a service, a group of IIS applications, or scheduled task. To do this, you must use the name of the account with $ at the end and leave the password blank.

![image](https://user-images.githubusercontent.com/116230991/217018739-f3b22286-7c74-4580-b7cd-7e62c7551740.png)

![image](https://user-images.githubusercontent.com/116230991/217018939-24c741df-4b74-463f-a334-63d4033d5f5c.png)