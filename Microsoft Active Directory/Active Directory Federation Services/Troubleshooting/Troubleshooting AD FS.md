## AD FS Troubleshooting Commands

AD FS will authenticate your cloud or synchronized identities on premises. Many large organizations prefer this federated model because they are authenticating "in-house".

Helpful link https://github.com/CSS-Identity/ADFS-Diag

Run in Powershell ISE

AD FS ADSync Tools TLS 1.2 Reg Values
```powershell
Function Get-ADSyncToolsTls12RegValue
{
    [CmdletBinding()]
    Param
    (
        # Registry Path
        [Parameter(Mandatory=$true,
                   Position=0)]
        [string]
        $RegPath,

        # Registry Name
        [Parameter(Mandatory=$true,
                   Position=1)]
        [string]
        $RegName
    )
    $regItem = Get-ItemProperty -Path $RegPath -Name $RegName -ErrorAction Ignore
    $output = "" | select Path,Name,Value
    $output.Path = $RegPath
    $output.Name = $RegName

    If ($regItem -eq $null)
    {
        $output.Value = "Not Found"
    }
    Else
    {
        $output.Value = $regItem.$RegName
    }
    $output
}

$regSettings = @()
$regKey = 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\.NETFramework\v4.0.30319'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'SystemDefaultTlsVersions'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'SchUseStrongCrypto'

$regKey = 'HKLM:\SOFTWARE\Microsoft\.NETFramework\v4.0.30319'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'SystemDefaultTlsVersions'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'SchUseStrongCrypto'

$regKey = 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'Enabled'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'DisabledByDefault'

$regKey = 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'Enabled'
$regSettings += Get-ADSyncToolsTls12RegValue $regKey 'DisabledByDefault'

$regSettings
```

AD FS Performance Diagnostics
```powershell
[System.Diagnostics.PerformanceCounterCategory]::Exists("Processor")
[System.Diagnostics.PerformanceCounterCategory]::Exists("TCPv4")
[System.Diagnostics.PerformanceCounterCategory]::Exists("Memory")
[System.Diagnostics.PerformanceCounterCategory]::Exists("Process")
```
These comnands can be ran with powershell or ise with admin credentials 

```powershell
#Test Azure AD Connect Health Connectivity 
Test-AzureADConnectHealthConnectivity -Role ADFS
```
```powershell
#Run this cmd on the adfs server or use a remote ps-session
Get-AdfsRelyingPartyTrust | Select-Object enabled, name, Identifier | sort enabled, name
```
```powershell
#Get AD FS Properties
Get-AdfsProperties
```
