```powershell
Install-Module MSOnline
```
```powershell
Connect-MsolService
```
```powershell
Get-MsolAccountSku | Where-Object {$_.SkuPartNumber -eq "M365EDU_A5_STUUSEBNFT"}
```
```powershell
AccountSkuId                 ActiveUnits WarningUnits ConsumedUnits
------------                 ----------- ------------ -------------
tamucc:M365EDU_A5_STUUSEBNFT 0           84000        35285
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/b507adaf-2330-4e96-bfd8-5a880e0a41d0)
