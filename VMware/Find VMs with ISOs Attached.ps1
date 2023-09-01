# Connect to vCenter
connect-viserver servername
# Get VMs with ISOs attached and export to CSV
get-vm | Get-CDDrive | select @{N="VM";E="Parent"},IsoPath | where {$_.IsoPath -ne $null} | export-csv -path "C:\your\path.csv"