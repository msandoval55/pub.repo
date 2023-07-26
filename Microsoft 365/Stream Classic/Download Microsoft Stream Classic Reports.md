# Stream Classic
## Download Microsoft Stream Classic Reports

1. Make sure you logon to powershell ISE as an administrator
2. Make sure you have unrestriced access
```Powershell
Set-ExecutionPolicy Unrestricted -Scope CurrentUser
```
3. Create a temp folder on the c: drive.
4. Download and store the stream classic report script in the c:\temp folder you made. 
5. Create a token.txt file with the token from the stream site using f-12 dev tools and save in the the temp folder.
![image](https://user-images.githubusercontent.com/116230991/218159215-15f0dc85-64fe-47b8-bd63-91f9a6aefe5a.png)
6. Run the ps cmds below.
```Powershell
#Change directory to where you have the stream report script
cd C:\temp\StreamClassicVideoReport
#Enter the the following ps cmd. Provide the tenantid and token location. Remember to refresh your token if the script fails.
.\StreamClassicVideoReportGenerator.ps1 -AadTenantId "00000000-0000-0000-0000-00000000000" -InputFile "C:\temp\StreamClassicVideoReport\token.txt" -OutDir "C:\temp\StreamClassicVideoReport"
```
7. Tip!: You can use powerBi to organize the raw data from the excel.cvs file. 

Documentation from Microsoft if needed
https://learn.microsoft.com/en-us/stream/streamnew/migration-details#stream-classic-usage-report

Step-by Step guide to run the Stream migration tool
https://learn.microsoft.com/en-US/stream/streamnew/step-by-step-guide?WT.mc_id=365AdminCSH_spo#during-migration