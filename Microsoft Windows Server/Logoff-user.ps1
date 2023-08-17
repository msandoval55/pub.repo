#log user from server
Invoke-Command -ComputerName server01 -ScriptBlock {logoff '#' /server:$SERVER}

=============================================================================================
#kill tasks of user id to log user off
Invoke-Command -ComputerName server01 -ScriptBlock {taskkill /FI "SESSION eq ID#" /F}

#Example
SUCCESS: The process with PID 18880 has been terminated.
SUCCESS: The process with PID 11368 has been terminated.
SUCCESS: The process with PID 26932 has been terminated.

