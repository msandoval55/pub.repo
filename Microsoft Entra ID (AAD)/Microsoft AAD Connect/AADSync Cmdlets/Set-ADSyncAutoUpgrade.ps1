#get current state of automatic upgrade can be viewed with the PowerShell cmdlet
Get-ADSyncAutoUpgrade

#You can change between Enabled and Disabled with
Set-ADSyncAutoUpgrade


#Information
Making sure your Azure AD Connect installation is always up to date has never been easier with the automatic upgrade feature. This feature is enabled by default for express installations and DirSync upgrades. When a new version is released, your installation is automatically upgraded. Automatic upgrade is enabled by default for the following:

-Express settings installation and DirSync upgrades.
-Using SQL Express LocalDB, which is what Express settings always use. DirSync with SQL Express also use LocalDB.
-The AD account is the default MSOL_ account created by Express settings and DirSync.
-Have less than 100,000 objects in the metaverse.

The current state of automatic upgrade can be viewed with the PowerShell cmdlet Get-ADSyncAutoUpgrade. It has the following states:

State	    Comment
Enabled	    Automatic upgrade is enabled.
Suspended	Set by the system only. The system is not currently eligible to receive automatic upgrades.
Disabled	Automatic upgrade is disabled.

You can change between Enabled and Disabled with Set-ADSyncAutoUpgrade. Only the system should set the state Suspended. 
Prior to 1.1.750.0 the Set-ADSyncAutoUpgrade cmdlet would block Autoupgrade if the auto-upgrade state was set to Suspended. 
This functionality has now changed so it does not block AutoUpgrade.

Automatic upgrade is using Azure AD Connect Health for the upgrade infrastructure. 

For automatic upgrade to work, make sure you have opened the URLs in your proxy server for Azure AD Connect Health as documented in Office 365 URLs and IP address ranges.