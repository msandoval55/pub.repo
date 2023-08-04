#example

--------------------------------------------Configure Permissions------------------------------------------


        Enter '1' - Get AD Connector account
        Enter '2' - Get objects with inheritance disabled
        Enter '3' - Set basic read permissions
        Enter '4' - Set Exchange Hybrid permissions
        Enter '5' - Set Exchange mail public folder permissions
        Enter '6' - Set MS-DS-Consistency-Guid permissions
        Enter '7' - Set password hash sync permissions
        Enter '8' - Set password writeback permissions
        Enter '9' - Set restricted permissions
        Enter '10' - Set unified group writeback permissions
        Enter '11' - Show AD object permissions
        Enter '12' - Set default AD Connector account permissions
        Enter '13' - Compare object read permissions when running in context of AD Connector account vs Admin account
        Enter 'B' - Go back to main troubleshooting menu
        Enter 'Q' - Quit


        Please make a selection: 4





Account to Configure
Would you like to configure an existing connector account or a custom account?
[E] Existing Connector Account  [C] Custom Account  [?] Help (default is "E"): e


Configured connectors and their related accounts:

ADConnectorName ADConnectorForest ADConnectorAccountName ADConnectorAccountDomain
--------------- ----------------- ---------------------- ------------------------
ad.consoto.com   ad.consoto.com     aadsync.svc            ad.consoto.com





Name of the connector who's account to configure: ad.consoto.com


To set permissions for a single target object, enter the DistinguishedName of the target AD object. Giving no input will set root permissions for all Domains in the Forest: OU=Server Admins,DC=ad,DC=consoto,DC=com



Update AdminSdHolders
Update AdminSDHolder container when updating with these permissions?
[Y] Yes  [N] No  [?] Help (default is "N"): n



Confirm
Are you sure you want to perform this action?
Performing the operation "Grant Exchange Hybrid permissions" on target "Server Admins".
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"): y
WARNING: You will need to perform a full import to include any objects that may have come in scope as a result of this
operation.
Grant permissions on AD object: Setting permissions on AD object 'OU=Server Admins,DC=ad,DC=consoto,DC=com'...
Owner: CONSOTO\Domain Admins
Group: CONSOTO\Domain Admins

Access list:
Deny  Everyone                        SPECIAL ACCESS
                                      DELETE
                                      DELETE TREE
Allow CONSOTO\Domain Admins            FULL CONTROL
Allow NT AUTHORITY\ENTERPRISE DOMAIN CONTROLLERS
                                      SPECIAL ACCESS
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Allow NT AUTHORITY\Authenticated Users
                                      SPECIAL ACCESS
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Allow NT AUTHORITY\SYSTEM             FULL CONTROL
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      DELETE
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS   <Inherited from parent>
                                      LIST CONTENTS
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Allow CONSOTO\Organization Management  SPECIAL ACCESS   <Inherited from parent>
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Allow CONSOTO\Enterprise Admins        FULL CONTROL   <Inherited from parent>
Allow CONSOTO\Enterprise Key Admins    FULL CONTROL   <Inherited from parent>
Allow BUILTIN\Pre-Windows 2000 Compatible Access
                                      SPECIAL ACCESS   <Inherited from parent>
                                      LIST CONTENTS
Allow BUILTIN\Administrators          SPECIAL ACCESS   <Inherited from parent>
                                      DELETE
                                      READ PERMISSONS
                                      WRITE PERMISSIONS
                                      CHANGE OWNERSHIP
                                      CREATE CHILD
                                      LIST CONTENTS
                                      WRITE SELF
                                      WRITE PROPERTY
                                      READ PROPERTY
                                      LIST OBJECT
                                      CONTROL ACCESS
Allow BUILTIN\Account Operators       SPECIAL ACCESS for inetOrgPerson
                                      CREATE CHILD
                                      DELETE CHILD
Allow BUILTIN\Account Operators       SPECIAL ACCESS for computer
                                      CREATE CHILD
                                      DELETE CHILD
Allow BUILTIN\Account Operators       SPECIAL ACCESS for group
                                      CREATE CHILD
                                      DELETE CHILD
Allow BUILTIN\Print Operators         SPECIAL ACCESS for printQueue
                                      CREATE CHILD
                                      DELETE CHILD
Allow BUILTIN\Account Operators       SPECIAL ACCESS for user
                                      CREATE CHILD
                                      DELETE CHILD
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for inetOrgPerson   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for computer   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for group   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for organizationalUnit   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for user   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for contact   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for publicFolder   <Inherited from parent>
                                      CREATE CHILD
                                      DELETE CHILD
                                      LIST CONTENTS
                                      WRITE PROPERTY
                                      READ PROPERTY
                                      LIST OBJECT
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchActiveSyncDevice   <Inherited from parent>
                                      CREATE CHILD
                                      DELETE CHILD
                                      LIST CONTENTS
                                      WRITE PROPERTY
                                      READ PROPERTY
                                      LIST OBJECT
Allow CONSOTO\Exchange Trusted Subsystem
                                      FULL CONTROL for msExchDynamicDistributionList   <Inherited from parent>
Allow CONSOTO\Organization Management  FULL CONTROL for msExchDynamicDistributionList   <Inherited from parent>
Allow CONSOTO\Delegated Setup          SPECIAL ACCESS for Account Restrictions   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for Exchange Personal Information   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for canonicalName   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for userAccountControl   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for Exchange Information   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for memberOf   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for garbageCollPeriod   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for proxyAddresses   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for proxyAddresses   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for pwdLastSet   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for showInAddressBook   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for showInAddressBook   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for Exchange Personal Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for Exchange Personal Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for adminDisplayName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for adminDisplayName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for groupType   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS for groupType   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for msExchDataEncryptionPolicyLink   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for msExchDataEncryptionPolicyLink   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for managedBy   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchMailboxSecurityDescriptor   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchUMServerWritableFlags   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for thumbnailPhoto   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for displayName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS for displayName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for displayName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for Public Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS for Public Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchUserCulture   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for displayNamePrintable   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for displayNamePrintable   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for mail   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for mail   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for userAccountControl   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for countryCode   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchMobileMailboxFlags   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchSafeRecipientsHash   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for wWWHomePage   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for userCertificate   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchUMDtmfMap   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchBlockedSendersHash   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for Personal Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS for Personal Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for textEncodedORAddress   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for textEncodedORAddress   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for Exchange Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS for Exchange Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for Exchange Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for publicDelegates   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for publicDelegates   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for publicDelegates   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchUMSpokenName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for garbageCollPeriod   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for garbageCollPeriod   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchUMPinChecksum   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for legacyExchangeDN   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for legacyExchangeDN   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for sAMAccountName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchSafeSendersHash   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Key Admins               SPECIAL ACCESS for msDS-KeyCredentialLink   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow CONSOTO\Enterprise Key Admins    SPECIAL ACCESS for msDS-KeyCredentialLink   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow NT AUTHORITY\NETWORK SERVICE    SPECIAL ACCESS for Exchange Personal Information   <Inherited from parent>
                                      READ PROPERTY
Allow NT AUTHORITY\Authenticated Users
                                      SPECIAL ACCESS for Exchange Information   <Inherited from parent>
                                      READ PROPERTY
Allow NT AUTHORITY\SELF               SPECIAL ACCESS for msDS-AllowedToActOnBehalfOfOtherIdentity   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow NT AUTHORITY\SELF               SPECIAL ACCESS for Private Information   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
                                      CONTROL ACCESS
Deny  CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for Validated write to service principal name   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for Add/Remove self as member   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      Replicating Directory Changes   <Inherited from parent>
Allow CONSOTO\Enterprise Read-only Domain Controllers
                                      Replicating Directory Changes   <Inherited from parent>
Allow CONSOTO\Enterprise Read-only Domain Controllers
                                      Replication Synchronization   <Inherited from parent>
Allow CONSOTO\Enterprise Read-only Domain Controllers
                                      Manage Replication Topology   <Inherited from parent>
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      Replicating Directory Changes All   <Inherited from parent>

Permissions inherited to subobjects are:
Inherited to all subobjects
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS   <Inherited from parent>
                                      LIST CONTENTS
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Allow CONSOTO\Organization Management  SPECIAL ACCESS   <Inherited from parent>
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Allow CONSOTO\Enterprise Admins        FULL CONTROL   <Inherited from parent>
Allow CONSOTO\Enterprise Key Admins    FULL CONTROL   <Inherited from parent>
Allow BUILTIN\Pre-Windows 2000 Compatible Access
                                      SPECIAL ACCESS   <Inherited from parent>
                                      LIST CONTENTS
Allow BUILTIN\Administrators          SPECIAL ACCESS   <Inherited from parent>
                                      DELETE
                                      READ PERMISSONS
                                      WRITE PERMISSIONS
                                      CHANGE OWNERSHIP
                                      CREATE CHILD
                                      LIST CONTENTS
                                      WRITE SELF
                                      WRITE PROPERTY
                                      READ PROPERTY
                                      LIST OBJECT
                                      CONTROL ACCESS
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for inetOrgPerson   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for computer   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for group   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for organizationalUnit   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for user   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for contact   <Inherited from parent>
                                      CREATE CHILD
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for publicFolder   <Inherited from parent>
                                      CREATE CHILD
                                      DELETE CHILD
                                      LIST CONTENTS
                                      WRITE PROPERTY
                                      READ PROPERTY
                                      LIST OBJECT
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchActiveSyncDevice   <Inherited from parent>
                                      CREATE CHILD
                                      DELETE CHILD
                                      LIST CONTENTS
                                      WRITE PROPERTY
                                      READ PROPERTY
                                      LIST OBJECT
Allow CONSOTO\Exchange Trusted Subsystem
                                      FULL CONTROL for msExchDynamicDistributionList   <Inherited from parent>
Allow CONSOTO\Organization Management  FULL CONTROL for msExchDynamicDistributionList   <Inherited from parent>
Allow CONSOTO\Delegated Setup          SPECIAL ACCESS for Account Restrictions   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for Exchange Personal Information   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for canonicalName   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for userAccountControl   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for Exchange Information   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for memberOf   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for garbageCollPeriod   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for proxyAddresses   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for proxyAddresses   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for pwdLastSet   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for showInAddressBook   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for showInAddressBook   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for Exchange Personal Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for Exchange Personal Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for adminDisplayName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for adminDisplayName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for groupType   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS for groupType   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for msExchDataEncryptionPolicyLink   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for msExchDataEncryptionPolicyLink   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for managedBy   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchMailboxSecurityDescriptor   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchUMServerWritableFlags   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for thumbnailPhoto   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for displayName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS for displayName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for displayName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for Public Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS for Public Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchUserCulture   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for displayNamePrintable   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for displayNamePrintable   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for mail   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for mail   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for userAccountControl   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for countryCode   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchMobileMailboxFlags   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchSafeRecipientsHash   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for wWWHomePage   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for userCertificate   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchUMDtmfMap   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchBlockedSendersHash   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for Personal Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS for Personal Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for textEncodedORAddress   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for textEncodedORAddress   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for Exchange Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS for Exchange Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for Exchange Information   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for publicDelegates   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for publicDelegates   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for publicDelegates   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchUMSpokenName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for garbageCollPeriod   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for garbageCollPeriod   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchUMPinChecksum   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for legacyExchangeDN   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Organization Management  SPECIAL ACCESS for legacyExchangeDN   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for sAMAccountName   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchSafeSendersHash   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Key Admins               SPECIAL ACCESS for msDS-KeyCredentialLink   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow CONSOTO\Enterprise Key Admins    SPECIAL ACCESS for msDS-KeyCredentialLink   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow NT AUTHORITY\NETWORK SERVICE    SPECIAL ACCESS for Exchange Personal Information   <Inherited from parent>
                                      READ PROPERTY
Allow NT AUTHORITY\Authenticated Users
                                      SPECIAL ACCESS for Exchange Information   <Inherited from parent>
                                      READ PROPERTY
Allow NT AUTHORITY\SELF               SPECIAL ACCESS for msDS-AllowedToActOnBehalfOfOtherIdentity   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow NT AUTHORITY\SELF               SPECIAL ACCESS for Private Information   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
                                      CONTROL ACCESS
Deny  CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for Validated write to service principal name   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for Add/Remove self as member   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      Replicating Directory Changes   <Inherited from parent>
Allow CONSOTO\Enterprise Read-only Domain Controllers
                                      Replicating Directory Changes   <Inherited from parent>
Allow CONSOTO\Enterprise Read-only Domain Controllers
                                      Replication Synchronization   <Inherited from parent>
Allow CONSOTO\Enterprise Read-only Domain Controllers
                                      Manage Replication Topology   <Inherited from parent>
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      Replicating Directory Changes All   <Inherited from parent>

Inherited to user
Allow CONSOTO\MemberOf Server Admins OU Readers
                                      SPECIAL ACCESS for memberOf
                                      READ PROPERTY
Allow CONSOTO\aadsync.svc              SPECIAL ACCESS
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      Change Password   <Inherited from parent>
Allow CONSOTO\Exchange Windows Permissions
                                      Reset Password   <Inherited from parent>
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchActiveSyncDevices   <Inherited from parent>
                                      CREATE CHILD
                                      DELETE CHILD
                                      LIST CONTENTS
Allow CONSOTO\User lastLogonTimestamp Readers
                                      SPECIAL ACCESS for lastLogonTimestamp   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\User Lockout Readers     SPECIAL ACCESS for msDS-User-Account-Control-Computed   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Canonicalname Readers    SPECIAL ACCESS for canonicalName   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\User Lockout Readers     SPECIAL ACCESS for userAccountControl   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\User Lockout Readers     SPECIAL ACCESS for lockoutTime   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      SPECIAL ACCESS for proxyAddresses   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      SPECIAL ACCESS for msExchSafeRecipientsHash   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      SPECIAL ACCESS for msExchBlockedSendersHash   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      SPECIAL ACCESS for publicDelegates   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      SPECIAL ACCESS for msExchUCVoiceMailSettings   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      SPECIAL ACCESS for msExchArchiveStatus   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      SPECIAL ACCESS for msExchSafeSendersHash   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      SPECIAL ACCESS for msExchDelegateListLink   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      SPECIAL ACCESS for msExchUserHoldPolicies   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\User Notes Writers       SPECIAL ACCESS for info   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for telephoneNumber   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for department   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for thumbnailPhoto   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for title   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for jpegPhoto   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for streetAddress   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for company   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for employeeNumber   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for employeeType   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for physicalDeliveryOfficeName   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for postalAddress   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS for postalCode   <Inherited from parent>
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      DELETE TREE
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      DELETE
                                      WRITE PERMISSIONS
Allow CONSOTO\User properties Readers  SPECIAL ACCESS   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\openfire                 SPECIAL ACCESS   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\AADConnect Base AD Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PROPERTY
Allow NT AUTHORITY\ENTERPRISE DOMAIN CONTROLLERS
                                      SPECIAL ACCESS for tokenGroups   <Inherited from parent>
                                      READ PROPERTY
Allow S-1-5-21-3810169375-1746543969-3636121193-5878
                                      SPECIAL ACCESS   <Inherited from parent>
                                      LIST CONTENTS
                                      READ PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Allow CONSOTO\ccpass                   FULL CONTROL   <Inherited from parent>
Allow BUILTIN\Pre-Windows 2000 Compatible Access
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Inherited to publicFolder
Allow CONSOTO\Exchange Trusted Subsystem
                                      FULL CONTROL   <Inherited from parent>
Inherited to msExchActiveSyncDevices
Allow CONSOTO\Exchange Trusted Subsystem
                                      FULL CONTROL   <Inherited from parent>
Inherited to inetOrgPerson
Allow CONSOTO\aadsync.svc              SPECIAL ACCESS
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow CONSOTO\Exchange Servers         SPECIAL ACCESS for msExchActiveSyncDevices   <Inherited from parent>
                                      CREATE CHILD
                                      DELETE CHILD
                                      LIST CONTENTS
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      DELETE TREE
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      DELETE
                                      WRITE PERMISSIONS
Allow CONSOTO\AADConnect Base AD Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Allow CONSOTO\ccpass                   FULL CONTROL   <Inherited from parent>
Allow BUILTIN\Pre-Windows 2000 Compatible Access
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Inherited to group
Allow CONSOTO\aadsync.svc              SPECIAL ACCESS
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      SPECIAL ACCESS for proxyAddresses   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      DELETE
Allow CONSOTO\AADConnect Base AD Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PROPERTY
Allow NT AUTHORITY\ENTERPRISE DOMAIN CONTROLLERS
                                      SPECIAL ACCESS for tokenGroups   <Inherited from parent>
                                      READ PROPERTY
Allow CONSOTO\Exchange Enterprise Servers
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Allow BUILTIN\Pre-Windows 2000 Compatible Access
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PERMISSONS
                                      LIST CONTENTS
                                      READ PROPERTY
                                      LIST OBJECT
Inherited to foreignSecurityPrincipal
Allow CONSOTO\AADConnect Base AD Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PROPERTY
Inherited to device
Allow CONSOTO\AADConnect Base AD Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PROPERTY
Inherited to contact
Allow CONSOTO\aadsync.svc              SPECIAL ACCESS
                                      WRITE PROPERTY
                                      READ PROPERTY
Allow CONSOTO\MSOL_AD_Sync_RichCoexistence
                                      SPECIAL ACCESS for proxyAddresses   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      DELETE
Allow CONSOTO\AADConnect Base AD Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PROPERTY
Inherited to computer
Deny  CONSOTO\Exchange Trusted Subsystem
                                      SPECIAL ACCESS for altSecurityIdentities   <Inherited from parent>
                                      WRITE PROPERTY
Deny  CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS for managedBy   <Inherited from parent>
                                      WRITE PROPERTY
Deny  CONSOTO\Exchange Servers         SPECIAL ACCESS for userCertificate   <Inherited from parent>
                                      WRITE PROPERTY
Allow CONSOTO\Exchange Windows Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      DELETE
Allow CREATOR OWNER                   SPECIAL ACCESS for Validated write to computer attributes.   <Inherited from parent>
                                      WRITE SELF
Allow NT AUTHORITY\SELF               SPECIAL ACCESS for Validated write to computer attributes.   <Inherited from parent>
                                      WRITE SELF
Allow CONSOTO\AADConnect Base AD Permissions
                                      SPECIAL ACCESS   <Inherited from parent>
                                      READ PROPERTY
Allow NT AUTHORITY\ENTERPRISE DOMAIN CONTROLLERS
                                      SPECIAL ACCESS for tokenGroups   <Inherited from parent>
                                      READ PROPERTY
Allow NT AUTHORITY\SELF               SPECIAL ACCESS for msTPM-OwnerInformation   <Inherited from parent>
                                      WRITE PROPERTY
Allow NT AUTHORITY\SELF               SPECIAL ACCESS for msTPM-TpmInformationForComputer   <Inherited from parent>
                                      WRITE PROPERTY
The command completed successfully
