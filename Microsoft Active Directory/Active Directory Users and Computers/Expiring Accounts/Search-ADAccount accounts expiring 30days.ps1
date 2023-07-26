#Search for all expiring accounts within 30days
Search-ADAccount -AccountExpiring -TimeSpan "30" | Get-Memeber

#Search for all expiring accounts within 30days with filtered list
Search-ADAccount -AccountExpiring -TimeSpan "30" | FL *

#Search for all expiring accounts by datetime
Search-ADAccount -AccountExpiring -DateTime "2022/05/24"