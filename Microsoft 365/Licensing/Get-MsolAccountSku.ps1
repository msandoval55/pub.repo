Get-MsolAccountSku

#example
AccountSkuId                  ActiveUnits WarningUnits ConsumedUnits
------------                  ----------- ------------ -------------
STREAM                          1000000     0            15           
OFFICE_PROPLUS_DEVICE_EDUCATION 0           8400         0            
STANDARDWOFFPACK_IW_FACULTY     500000      0            844          
SPZA_IW                         10000       0            3            
WINDOWS_STORE                   25          0            0            
DYN365_CUSTOMER_INSIGHTS_VIRAL  10000       0            0            
STANDARDWOFFPACK_STUDENT        5000        0            0            
M365EDU_A5_FACULTY              0           2240         2200         
STANDARDWOFFPACK_IW_STUDENT     1000000     0            6086         
FLOW_FREE                       10000       0            2760         
CCIBOTS_PRIVPREV_VIRAL          10000       0            2            
FORMS_PRO                       1000000     0            1            
POWERAPPS_VIRAL                 10000       0            6            
DYN365_ENTERPRISE_P1_IW         10000       0            2            
MDATP_Server                    0           497          0            
M365EDU_A5_STUUSEBNFT           0           84000        35164        
Dynamics_365_Onboarding_SKU     10000       0            0            
POWER_BI_STANDARD               1000000     0            303          
MCOPSTNC                        10000000    0            0            
PROJECTPROFESSIONAL_FACULTY     0           6            5            
Power_Pages_vTrial_for_Makers   10000       0            2            
STANDARDWOFFPACK_FACULTY        5000        0            1            
PROJECT_MADEIRA_PREVIEW_IW_SKU  10000       0            0            
PHONESYSTEM_VIRTUALUSER_FACULTY 100         100          11           
RIGHTSMANAGEMENT_ADHOC          50000       0            0            
POWERAPPS_DEV                   10000       0            4            


https://learn.microsoft.com/en-us/microsoft-365/enterprise/view-licenses-and-services-with-microsoft-365-powershell?view=o365-worldwide

The cmdlet returns AccountSKU objects that contain the following information:

-AccountName. The name of the account this SKU belongs to.
-AccountObjectId. The unique ID of the account this SKU belongs to.
-AccountSkuId. The unique string ID of the account/SKU combination. This value should be used when assigning or updating licenses.
-ActiveUnits. The number of active licenses.
-ConsumedUnits. The number of licenses consumed.
-ServiceStatus. The provisioning status of individual services belonging to this SKU.
-SkuId. The unique ID for the SKU.
-SkuPartNumber. The partner number of this SKU.
-SubscriptionIds. A list of all subscriptions associated with this SKU. For the purposes of assigning licenses, all subscriptions with the same SKU will be grouped into a single license pool.
-SuspendedUnits. The number of suspended licenses. These licenses are not available for assignment.
-TargetClass. The target class of this SKU. Only SKUs with target class=user are assignable.
-WarningUnits. The number of warning units.