#get users logged on to server
Invoke-Command -ComputerName Server1 -ScriptBlock {query user /server:$SERVER}

#Example
 USERNAME        SESSIONNAME        ID STATE   IDLE TIME  LOGON TIME
 logan2          rdp-tcp#39         2  Active       1:10  8/3/2023 1:18 PM
 martin55                           3  Disc        15:17  8/3/2023 1:21 PM
 lugo85                             4  Disc      1+01:06  8/3/2023 1:22 PM
 gonzalez16                         5  Disc         1:22  8/3/2023 1:41 PM
 salazar38       rdp-tcp#65         7  Active          7  8/4/2023 9:03 AM