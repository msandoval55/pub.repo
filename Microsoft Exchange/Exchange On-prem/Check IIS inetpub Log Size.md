When the inetpub logs, specifically W3SVC1 and W3SVC2, are taking up too much space, you can manage and clean them up using several methods. Here’s a step-by-step guide to help you manage these log files efficiently:

1. Understand the Logs
The W3SVC logs are created by IIS (Internet Information Services) to record web server activity. Each W3SVCx directory corresponds to a specific IIS site.

2. Assess the Current Space Usage
First, check the size of the log files to understand how much space they are consuming:

```powershell
Invoke-Command -ComputerName "exchangeservername" -ScriptBlock {Get-ChildItem -Path "C:\inetpub\logs\LogFiles\W3SVC*" -Recurse | Measure-Object -Sum Length | Select-Object @{name='folder size (Gb)';expression={$_.Sum/1gb}}}
```

3. Backup and Delete Old Log Files
To free up space, you can archive and then delete old log files. You can use PowerShell to automate this process. For example, to delete log files older than 30 days:

```powershell
$logPath = "C:\inetpub\logs\LogFiles\W3SVC*"
$daysOld = 30
Get-ChildItem -Path $logPath -Recurse | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-$daysOld) } | Remove-Item
```

4. Compress Log Files
You can save space by compressing older log files:
```powershell
$logPath = "C:\inetpub\logs\LogFiles\W3SVC*"
$archivePath = "C:\inetpub\logs\Archive"
$daysOld = 30

# Create archive directory if it does not exist
if (!(Test-Path -Path $archivePath)) {
    New-Item -Path $archivePath -ItemType Directory
}

# Compress and move old log files
Get-ChildItem -Path $logPath -Recurse | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-$daysOld) } | ForEach-Object {
    $destination = "$archivePath\$($_.Name).zip"
    [IO.Compression.ZipFile]::CreateFromDirectory($_.FullName, $destination)
    Remove-Item $_.FullName -Recurse
}
```


5. Configure Log File Size Limits
To prevent logs from growing too large, configure IIS to roll over log files based on size:
```
  1. Open the IIS Manager.
  2. Select your server or website.
  3. Double-click on the “Logging” feature.
  4. In the “Log File Rollover” section, select “Maximum file size (in bytes)” and set a limit (e.g., 10485760 for 10 MB).
```
6. Automate Log Management
You can create a scheduled task to run the log cleanup script regularly:
```
  1. Open Task Scheduler.
  2. Create a new task.
  3. Set a schedule (e.g., daily or weekly).
  4. In the “Actions” tab, set the action to run your PowerShell script.
```
7. Move Log Files to Another Drive
If the C: drive is running out of space, consider moving the log files to another drive with more available space:
```
  1. Open IIS Manager.
  2. Select your server or website.
  3. Double-click on the “Logging” feature.
  4. Change the “Directory” path to a location on another drive (e.g., D:\IISLogs).
```   
8. Enable Circular Logging
Circular logging limits the log file size by overwriting older logs with new data. This is useful in some scenarios but be cautious as it may result in loss of old log data.

Summary
Managing IIS log files effectively involves a combination of deleting old logs, compressing files, configuring IIS to limit log file sizes, and possibly moving logs to a different drive. Automating this process with PowerShell scripts and scheduled tasks ensures regular maintenance and helps prevent disk space issues.

Implement these steps to keep your log files under control and your system running smoothly. If you have specific requirements or encounter issues, feel free to ask for more detailed guidance.
