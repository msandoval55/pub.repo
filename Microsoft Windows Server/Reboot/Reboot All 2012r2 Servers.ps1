# Path to the server list
$ServerListPath = "C:\temp\scripts\2012r2servers.txt"

# Read the list of servers (one name per line)
$Servers = Get-Content -Path $ServerListPath

# Confirm before rebooting
Write-Host "You are about to reboot the following servers:" -ForegroundColor Yellow
$Servers | ForEach-Object { Write-Host " - $_" -ForegroundColor Cyan }

$confirm = Read-Host "Do you want to continue? (Y/N)"
if ($confirm -ne 'Y') {
    Write-Host "Operation cancelled." -ForegroundColor Red
    exit
}

# Log file path
$LogPath = "C:\Scripts\RebootLog_$(Get-Date -Format 'yyyyMMdd_HHmmss').txt"

foreach ($Server in $Servers) {
    Write-Host "Rebooting $Server..." -ForegroundColor Yellow
    try {
        Invoke-Command -ComputerName $Server -ScriptBlock {
            Restart-Computer -Force
        } -ErrorAction Stop

        "$Server - Reboot initiated at $(Get-Date)" | Out-File -FilePath $LogPath -Append
        Write-Host "$Server - Reboot command sent successfully." -ForegroundColor Green
    }
    catch {
        "$Server - Failed: $_" | Out-File -FilePath $LogPath -Append
        Write-Host "$Server - Failed to reboot: $_" -ForegroundColor Red
    }
}

Write-Host "`nReboot process complete. Log saved to $LogPath" -ForegroundColor Cyan
