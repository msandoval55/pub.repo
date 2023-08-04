#
(Get-ADSyncGlobalSettings).Parameters | select Name, Value | sort Name


#example
Name                                                   Value
----                                                   -----
Microsoft.AADFilter.ApplicationList
Microsoft.AADFilter.AttributeExclusionList
Microsoft.ConnectDirectories.WizardDirectoryMode       ActiveDirectory
Microsoft.DeviceWriteBack.Container
Microsoft.DeviceWriteBack.Forest
Microsoft.DirectoryExtension.SourceTargetAttributesMap employeeNumber.extension_4483c871ae4a40d0af7c6037e2ff4af7_employeeNumber,employeeType...
Microsoft.GroupWriteBack.Container
Microsoft.GroupWriteBack.Forest
Microsoft.OptionalFeature.AutoUpgradeState             Suspended
Microsoft.OptionalFeature.AutoUpgradeSuspensionReason  UpgradeNotSupportedNonLocalDbInstall
Microsoft.OptionalFeature.DeviceWriteBack              False
Microsoft.OptionalFeature.DeviceWriteUp                True
Microsoft.OptionalFeature.DirectoryExtension           True
Microsoft.OptionalFeature.DirectoryExtensionAttributes employeeNumber.user.String.True,employeeType.user.String.True,sAMAccountName.user.Str...
Microsoft.OptionalFeature.ExchangeMailPublicFolder     False
Microsoft.OptionalFeature.ExportDeletionThreshold      True
Microsoft.OptionalFeature.ExportDeletionThresholdValue 3000
Microsoft.OptionalFeature.FilterAAD                    True
Microsoft.OptionalFeature.GroupFiltering               False
Microsoft.OptionalFeature.GroupWriteBack               False
Microsoft.OptionalFeature.HybridExchange               True
Microsoft.OptionalFeature.UserWriteBack                False
Microsoft.SynchronizationOption.AnchorAttribute        objectGUID
Microsoft.SynchronizationOption.CustomAttribute
Microsoft.SynchronizationOption.JoinCriteria           AlwaysProvision
Microsoft.SynchronizationOption.UPNAttribute           userPrincipalName
Microsoft.Synchronize.MaintenanceEnabled               True
Microsoft.Synchronize.NextStartTime                    Fri, 04 Aug 2023 03:54:46 GMT
Microsoft.Synchronize.RunHistoryPurgeInterval          7.00:00:00
Microsoft.Synchronize.SchedulerSuspended               False
Microsoft.Synchronize.ServerConfigurationVersion       2.2.1.0
Microsoft.Synchronize.StagingMode                      False
Microsoft.Synchronize.SynchronizationPolicy            Delta
Microsoft.Synchronize.SynchronizationSchedule          True
Microsoft.Synchronize.TimeInterval                     00:30:00
Microsoft.SystemInformation.MachineRole                RoleMemberServer
Microsoft.UserSignIn.DesktopSsoEnabled                 False
Microsoft.UserSignIn.SignOnMethod                      NotConfigured
Microsoft.UserWriteBack.Container
Microsoft.UserWriteBack.Forest
Microsoft.Version.SynchronizationRuleImmutableTag      V1


