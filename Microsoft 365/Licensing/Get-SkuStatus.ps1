Install-Module MSOnline
Connect-MsolService
Get-MsolAccountSku | Where-Object {$_.SkuPartNumber -eq "M365EDU_A5_STUUSEBNFT"}

AccountSkuId                 ActiveUnits WarningUnits ConsumedUnits
------------                 ----------- ------------ -------------
tamucc:M365EDU_A5_STUUSEBNFT 0           84000        35285