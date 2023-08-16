#To manage update options, it is better to use Windows Update Group Policies. However, you can set the update settings manually.
#To disable automatic update:
Set-ItemProperty -Path HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate\AU -Name AUOptions -Value 1

#To automatically download available updates:
Set-ItemProperty -Path HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate\AU -Name AUOptions -Value 3

#To get the list of installed updates:
Get-Hotfix

#Or
wmic qfe list

#To install Windows updates manually, you can use the wusa tool:
wusa kbnamexxxxx.msu /quiet