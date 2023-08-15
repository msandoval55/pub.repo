#If you want to add additional users to the local administrators group, you can configure a Group Policy or add them manually:

Add-LocalGroupMember -Group "Administrators" -Member "corp\jsmith"

#To activate Windows Server, enter your product key:

slmgr.vbs –ipk <productkey>
slmgr.vbs –ato

#Or you may activate your host on a KMS server. For example, to activate Windows Server Core 2019 Standart on a KMS host:

slmgr /ipk N69G4-B89J2-4G8F4-WWYCC-J464C
slmgr /skms kms.corp.woshub.com:1688
slmgr /ato