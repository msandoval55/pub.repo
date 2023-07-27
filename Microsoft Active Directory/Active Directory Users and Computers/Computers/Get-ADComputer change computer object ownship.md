## Active Directory Change Computer Objects Ownership

You will need domain admin credentials to run these powershell commands. 

**Display Owner with PowerShell**
For bulk operations, it is therefore recommended to use PowerShell. If you first want to get an overview of multiple objects' ownership, there are several options available.

One approach is to generate a list of computer names and owners by expanding the nTSecurityDescriptor attribute using Select-Object:

```powershell
Get-ADComputer -Filter 'name -like "CI229*"' -properties ntSecurityDescriptor -PipelineVariable p | 
select -ExpandProperty ntSecurityDescriptor |
select @{n="Computer";e={ $p.name }}, @{n="Owner";e={ $_.owner }}
```

![image](https://github.com/msandoval55/pub.repo/assets/116230991/0ce41f24-4ef8-46e3-88ed-6707d63a4813)

Alternatively, you can use Get-ACL to retrieve the owner for each computer individually. When outputting the results using Format-List, you can use Trimstart() to remove the leading "CN=" from PSChildName:

```powershell
Get-ADComputer -Filter * |
foreach{Get-Acl -Path "AD:$($_.DistinguishedName)"} |
Format-List @{n="Name";e={$_.PSChildName.Trimstart("CN=")}}, @{n="Owner";e={$_.owner}}
```

This variant has the advantage of generating the necessary ACL objects, which are required if you want to change the owner. The following script accomplishes this task:

In this example, all computers whose names begin with "CI228" are assigned "Contoso\CLST Admins" as the new owner.

```powershell
$user = new-object system.security.principal.ntaccount("Consoto\CLST Admins")
Get-ADComputer -filter 'name -like "CI228*"' |
foreach{
    $acl = Get-Acl -Path "AD:$($_.DistinguishedName)"
    $acl.SetOwner($user)
    Set-Acl -Path "AD:$($_.DistinguishedName)" $acl
    }
```