Before you are able to manage Exchange Online with PowerShell you need to have the cmdlets available by installing the Exchange Online Module.

1. Open PowerShell as an administrator.
2. Run the following command to install the Exchange Online Management module.

Install-Module -Name ExchangeOnlineManagement

This will install the module for all users on the workstation. If you wish to only install for the current user, use the following command:

Install-Module -Name ExchangeOnlineManagement -Scope CurrentUser

3. Now you are ready to connect to Exchange Online. Run the following command:

Connect-ExchangeOnline
When the Microsoft 365 modern authentication window pops up, sign in with your credentials.  