Importing .PFX File:

Import .pfx to the exchange server using \\exchserver3\c$. Move the .pfx where you would like it to exist on the exchserver3 server.

Commands will need to be ran in Exchange PowerShell. Use the following command to enter into Exchange PowerShell.
```powershell
exshell.psc1
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/5035ea2d-dbca-4111-bf84-7b113bc5d40f)

Find what cert is currently is in use. 
```powershell
get-transportservice -identity exchserver3 | fl identity,internaltransport*thumbprint
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/5c52d326-1272-48f8-976e-140627f6120c)

Change directory to where pfx is located. In our case, the pfx file was placed in the following path
```powershell
cd c:\temp\certs
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/c9a96674-b3f1-4a94-9764-4979500821eb)

Import pfx cert file.
```powershell
certutil -f -p webmailcert -importpfx "webmail.ad.consoto.com.pfx"
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/dea32d20-b2a6-4522-b32c-e4cc8bd8303d)

Check certificate store to ensure that the newly added .pfx file has been added to the store.
View all certificates installed on exchange server. You can also use (WAC) to view certificates.
```powershell
Get-exchangecertificate
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/88edb496-4ca5-45dc-b840-44756fdb8fcf)

Go to Windows Admin Center (WAC) view of installed certificates. "My" is the same as "Personal" when managing certificates.

![image](https://github.com/msandoval55/pub.repo/assets/116230991/44f717d0-c2f4-4119-9272-1575d354ef2e)

Enable the newly imported .pfx file
```powershell
Enable-ExchangeCertificate -Thumbprint XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXGAA2 -Services iis,smtp
```
You will be asked if you are sure you want to replace this. Enter (y) for Yes.

![image](https://github.com/msandoval55/pub.repo/assets/116230991/00e89cd2-a1b9-43ec-937e-de59b17ff21a)

Find what cert is currently is in use. Takes some time to refresh.
```powershell
get-transportservice -identity hybrid3 | fl identity,internaltransport*thumbprint
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/7b813b87-17c9-4212-8c5a-06f373489baf)

Run these commands on the primary exhchange server!
To set TLSCertificateName for send and receive connector:
```powershell
$cert = Get-ExchangeCertificate -Thumbprint  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXGAA2
```
```powershell
$tlscertificatename = "<i>$($cert.Issuer)<s>$($cert.Subject)"
```
```powershell
Set-SendConnector "Outbound to Office 365*" -TlsCertificateName $tlscertificatename
```
```powershell
Set-ReceiveConnector "Hybrid1\Default Frontend Hybrid1" -TlsCertificateName $tlscertificatename
```
```powershell
Set-ReceiveConnector "Hybrid2\Default Frontend Hybrid2" -TlsCertificateName $tlscertificatename
```
```powershell
Set-ReceiveConnector "Hybrid3\Default Frontend Hybrid3" -TlsCertificateName $tlscertificatename
```

Restart Transport service on each server:
```powershell
Restart-service MSExchangeTransport
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/9c07415a-b014-477b-b021-b6697ab187e0)

Validate the new cert is being used:
```powershell
Send-MailMessage -SmtpServer 127.0.0.1 -From 'martin.sandoval@consoto.com' -To 'martin.sandoval@consoto.com' -Subject 'Test email' -Port 25 
```
Notes
```powershell  
#Make sure you have a back-up the existing .pfx before removing it.
#If the cert if diff use On-prem EAC remove the old certificate. Remove the old cert from all 3 exchange servers. 
#If cert is the same subject use WAC to remove.
```
Check logs to see if server is active
```powershell
C:\Program Files\Microsoft\Exchange Server\V15\TransportRoles\Logs\Hub\ProtocolLog\SmtpSend
```

You have successfully updated the cert for the domain controller.
You will now see Xymon update shortly.
Once you confirm that the cert is active. Make sure you have a copy of the old .PFX cert and then remove the old cert.
