# Exchange SSL Certificate Renewal

Using InCommon Sectigo
Creating CER with MMC:

1. Use your laptop and open mmc to create the CSR.
2. Use mmc certificate store for create a custom request.
3. Right click > All Task > Advanced Options > Create Custom Request.
4. Select "Next" to continue creating a custom request.
5. Select "Proceed without enrollment policy"
6. Select "Next".
7. keep existing selections.
8. Select "Next".
9. Click the "Details" button.
10. Select "Properties".
11. Select "Next".
12. Under the General tab enter your desired friendly name.
13. Select the "Subject" tab to continue.
14. Select the "Subject" tab.

Enter Subject name, Common name: </br>

if any </br>

Enter DNS SAN names: </br>
webmail.consoto.com </br>
ad.consoto.com </br>
autodiscover.consoto.com </br>
autodiscover.obe.consoto.com </br>
autodiscover.landslide.consoto.com </br>
autodiscover.pci.consoto.com </br>
cas.consoto.com </br>
exchange.consoto.com </br>
exchserver1.consoto.com </br>
exchserver2.consoto.com </br>
exchserver3.consoto.com </br>
imap.consoto.com </br>
lander.consoto.com </br>
outlook.consoto.com </br>
owa.consoto.com </br>
smtp.consoto.com </br>
consoto.com </br>
webmail.lb.consoto.com </br>

15. Under "Private Key" select the following.

Key options: </br>
Key size: 2048 </br>
Check: Mark private key exportable </br>

Select Hash Algorithm:

Hash Algorithm: sha256 </br>
16. Select "Next". </br>
17. Select "Browse..." and name your file and location. </br>
18. Keep "Base 64" selected. </br>
19. Select "Finish". </br>
20. Open the .txt file and use the key to create the CSR in InCommon. </br>

InCommon: Creating CSR

1. Login to InCommon and add a new CSR.
2. Next Select the green + button in the top right corner of the InCommon site.
3. Next Select "Using a Certificate Signing Request" (CSR)
a. Leave Organization and Department as it is.
b. Order info will be set to InCommon Multi Domain SSL (SHA-2)
c. Certificate Term set to 398 Days.
4. Next under CSR paste the KEY from the .txt file you created.
5. Next under Domains add all additional domain names that you would like.
6. Next under Auto-Renewal leave it as no, do not allow auto renewal.
7. Select OK and wait for the cert to be created in InCommon.

Import CSR Certificate:

Import the newly created CSR from InCommon into your certificate store on your laptop.
1. Right click and select All Tasks > Import...
2. Select "Local Machine"
3. Select "Next" to continue.
4. Browse and select the .CSR file you just created and saved from InCommon.
5. Select "Next" to continue.
6. Select "Place all certificates in the following store".
7. Certificate store: "Personal".
8. Select "Next" to continue.
9. Select "Next" to continue.
10. The import will show as successful.

Export Certificate as a .PFX file:

1. Right click the certificate and select > All Tasks > Export.
2. Select "Yes, export the private key"
3. Select "Next" to continue.
4. Select "Personal Information Exchange - PKCS #12 (.PFX)
    a.Check "Include all certificates in the certification path if possible
5. Select "Next" to continue.
6. Enter a password and confirm password.
7. Set Encryption: TripleDES-SHA1
    a. This is due to server 2016 not liking AES256 encrypted passwords. Use SHA1 for the Private Key.
8. Select "Next" to continue.
9. Select where you want to save the .PFX file.
10. Select "Next" to continue.
11. Select "Finish"

Importing .PFX File:

Import .pfx to the exchange server using \\exchserver3\c$. Move the .pfx where you would like it to exist on the exchserver3 server.

Commands will need to be ran in Exchange PowerShell. Use the following command to enter into Exchange PowerShell.
```powershell
#Commands will need to be ran in Exchange PowerShell. Use the following command to enter into Exchange PowerShell.
exshell.psc1
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/5035ea2d-dbca-4111-bf84-7b113bc5d40f)

Find what cert is currently is in use. 
```powershell
#Find what cert is currently is in use. 
get-transportservice -identity exchserver3 | fl identity,internaltransport*thumbprint
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/1b04ccfe-399a-4114-aecf-a0b9948aa378)

Change directory to where pfx is located. In our case, the pfx file was placed in the following path
```powershell
#Change directory to where pfx is located. In our case, the pfx file was placed in the following path
cd c:\temp\certs
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/c9a96674-b3f1-4a94-9764-4979500821eb)

Import pfx cert file.
```powershell
#Import pfx cert file.
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
#Enable the newly imported .pfx file
Enable-ExchangeCertificate -Thumbprint XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXGAA2 -Services iis,smtp
```
You will be asked if you are sure you want to replace this. Enter (y) for Yes.

![image](https://github.com/msandoval55/pub.repo/assets/116230991/00e89cd2-a1b9-43ec-937e-de59b17ff21a)

```powershell
#Find what cert is currently is in use. Takes some time to refresh.
get-transportservice -identity exchserver3 | fl identity,internaltransport*thumbprint
```
![image](https://github.com/msandoval55/pub.repo/assets/116230991/30b9e705-e563-4a09-8cc1-9a1162d6275c)

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
Set-ReceiveConnector "exchserver1\Default Frontend exchserver1" -TlsCertificateName $tlscertificatename
```
```powershell
Set-ReceiveConnector "exchserver2\Default Frontend exchserver2" -TlsCertificateName $tlscertificatename
```
```powershell
Set-ReceiveConnector "exchserver3\Default Frontend exchserver3" -TlsCertificateName $tlscertificatename
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
> [!NOTE]
> Make sure you have a back-up the existing .pfx before removing it.

> [!NOTE] 
> If the cert if diff use On-prem EAC remove the old certificate. Remove the old cert from all 3 exchange servers.

> [!NOTE] 
> If cert is the same subject use WAC to remove.

Check logs to see if server is active
```powershell
C:\Program Files\Microsoft\Exchange Server\V15\TransportRoles\Logs\Hub\ProtocolLog\SmtpSend
```

You have successfully updated the cert for the domain controller.
You will now see Xymon update shortly.
Once you confirm that the cert is active. Make sure you have a copy of the old .PFX cert and then remove the old cert.
