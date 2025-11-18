# Notes:
# This script requires you to create a file path that targets a .txt file.
# This script does not install updates and does not reboot anything. It only:
# - Stops update services
# - Clears update cache folders
# - Restarts services
# - Triggers a scan so the servers can see the update again

$ServerList = "C:\temp\scripts\wuc-servers.txt"

if (-Not (Test-Path $ServerList)) {
    Write-Host "Server list not found at $ServerList" -ForegroundColor Yellow
    exit 1
}

$Servers = Get-Content $ServerList | Where-Object { -not [string]::IsNullOrWhiteSpace($_) } | ForEach-Object { $_.Trim() }

foreach ($Server in $Servers) {

    Write-Host "==== Working on $Server ====" -ForegroundColor Cyan

    Invoke-Command -ComputerName $Server -ScriptBlock {

        Write-Host "Stopping Windows Update services..."
        net stop wuauserv
        net stop bits
        net stop cryptsvc
        net stop trustedinstaller

        Write-Host "Renaming update cache folders..."
        if (Test-Path "C:\Windows\SoftwareDistribution") {
            Rename-Item "C:\Windows\SoftwareDistribution" "SoftwareDistribution.old" -ErrorAction SilentlyContinue
        } else {
            Write-Host "SoftwareDistribution folder not found."
        }

        if (Test-Path "C:\Windows\System32\catroot2") {
            Rename-Item "C:\Windows\System32\catroot2" "catroot2.old" -ErrorAction SilentlyContinue
        } else {
            Write-Host "catroot2 folder not found."
        }

        Write-Host "Starting services..."
        net start trustedinstaller
        net start cryptsvc
        net start bits
        net start wuauserv

        Write-Host "Cache reset complete. No updates were installed and no reboot was triggered." -ForegroundColor Green

    } -ErrorAction Continue

    Write-Host ""
}
