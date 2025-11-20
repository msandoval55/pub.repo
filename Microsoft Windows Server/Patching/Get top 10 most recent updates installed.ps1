    $TargetServer = "server-name" # <-- REPLACE THIS with your remote server's name or IP

Invoke-Command -ComputerName $TargetServer -ScriptBlock {
    # The entire script to query the local update history runs on the remote machine
    $Session = New-Object -ComObject Microsoft.Update.Session
    $Searcher = $Session.CreateUpdateSearcher()

    $HistoryCount = $Searcher.GetTotalHistoryCount()
    $Updates = $Searcher.QueryHistory(0, $HistoryCount)

    # Filter for successful installations, sort by date (Descending), 
    # then select the Top 10 results, and format the output into a table.
    $Updates | 
        Where-Object {$_.ResultCode -eq 2 -and $_.Operation -eq 1} | 
        Sort-Object Date -Descending | 
        Select-Object -First 10 -Property @{N='Update title';E={$_.Title}}, 
                                         @{N='State';E={'Succeeded'}}, 
                                         @{N='Date installed';E={$_.Date}}
} | Format-Table -AutoSize
