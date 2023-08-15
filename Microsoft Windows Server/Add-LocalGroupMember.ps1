#add additional users to the local administrators group, you can configure a Group Policy or add them manually
Add-LocalGroupMember -Group "Administrators" -Member "corp\jsmith"