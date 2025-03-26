#Get systems logs from a remote server with a time frame and out-gridview report
Invoke-Command -ComputerName Servername -ScriptBlock {
    Get-WinEvent -LogName System -ErrorAction SilentlyContinue |
    Where-Object { $_.TimeCreated -ge (Get-Date "3/24/2025 04:00:00 AM") -and $_.TimeCreated -le (Get-Date "3/24/2025 04:15:00 AM") }
} | Select-Object TimeCreated, Id, LevelDisplayName, Message | Out-GridView
