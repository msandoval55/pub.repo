#get service
Invoke-Command -ComputerName Server1 -ScriptBlock {Get-Service | sort displayname}


#Example
Status   Name               DisplayName                            PSComputerName                                           
------   ----               -----------                            --------------                                           
Stopped  AxInstSV           ActiveX Installer (AxInstSV)           Server1                                                
Stopped  AJRouter           AllJoyn Router Service                 Server1                                                
Stopped  AppReadiness       App Readiness                          Server1                                                
Stopped  AppIDSvc           Application Identity                   Server1                                                
Running  Appinfo            Application Information                Server1                                                
Stopped  ALG                Application Layer Gateway Service      Server1                                                
Stopped  AppMgmt            Application Management                 Server1                                                
Stopped  AppXSvc            AppX Deployment Service (AppXSVC)      Server1                                                
Stopped  tzautoupdate       Auto Time Zone Updater                 Server1                                                
Running  BthAvctpSvc        AVCTP service                          Server1                                                
Stopped  BITS               Background Intelligent Transfer Ser... Server1                                                
Running  BrokerInfrastru... Background Tasks Infrastructure Ser... Server1                                                
Running  BFE                Base Filtering Engine                  Server1                                                
Stopped  BTAGService        Bluetooth Audio Gateway Service        Server1                                                
Stopped  bthserv            Bluetooth Support Service              Server1                                                
Running  PeerDistSvc        BranchCache                            Server1                                                
Stopped  camsvc             Capability Access Manager Service      Server1                                                
Stopped  CaptureService_... CaptureService_159577                  Server1                                                
Stopped  CaptureService_... CaptureService_201301                  Server1                                                
Stopped  CaptureService_... CaptureService_2542e2                  Server1                                                
Stopped  CaptureService_... CaptureService_4517d7                  Server1                                                
Stopped  CaptureService_... CaptureService_54164f6                 Server1                                                
Running  CertPropSvc        Certificate Propagation                Server1                                                
Stopped  ClipSVC            Client License Service (ClipSVC)       Server1                                                
Stopped  cbdhsvc_159577     Clipboard User Service_159577          Server1                                                
Stopped  cbdhsvc_201301     Clipboard User Service_201301          Server1                                                
Stopped  cbdhsvc_2542e2     Clipboard User Service_2542e2          Server1                                                
Stopped  cbdhsvc_4517d7     Clipboard User Service_4517d7          Server1                                                
Stopped  cbdhsvc_54164f6    Clipboard User Service_54164f6         Server1                                                
Running  KeyIso             CNG Key Isolation                      Server1                                                
Running  EventSystem        COM+ Event System                      Server1                                                
Running  COMSysApp          COM+ System Application                Server1                                                
Stopped  smstsmgr           ConfigMgr Task Sequence Agent          Server1                                                
Running  CmRcService        Configuration Manager Remote Control   Server1                                                
Running  CDPSvc             Connected Devices Platform Service     Server1                                                
Running  CDPUserSvc_159577  Connected Devices Platform User Ser... Server1                                                
Running  CDPUserSvc_201301  Connected Devices Platform User Ser... Server1                                                
Running  CDPUserSvc_2542e2  Connected Devices Platform User Ser... Server1                                                
Running  CDPUserSvc_4517d7  Connected Devices Platform User Ser... Server1                                                
Running  CDPUserSvc_54164f6 Connected Devices Platform User Ser... Server1                                                
Running  DiagTrack          Connected User Experiences and Tele... Server1                                                
Stopped  ConsentUxUserSv... ConsentUX_159577                       Server1                                                
Stopped  ConsentUxUserSv... ConsentUX_201301                       Server1                                                
Stopped  ConsentUxUserSv... ConsentUX_2542e2                       Server1                                                
Stopped  ConsentUxUserSv... ConsentUX_4517d7                       Server1                                                
Stopped  ConsentUxUserSv... ConsentUX_54164f6                      Server1                                                
Stopped  PimIndexMainten... Contact Data_159577                    Server1                                                
Stopped  PimIndexMainten... Contact Data_201301                    Server1                                                
Stopped  PimIndexMainten... Contact Data_2542e2                    Server1                                                
Stopped  PimIndexMainten... Contact Data_4517d7                    Server1                                                
Stopped  PimIndexMainten... Contact Data_54164f6                   Server1                                                
Running  CoreMessagingRe... CoreMessaging                          Server1                                                
Stopped  VaultSvc           Credential Manager                     Server1                                                
Running  CryptSvc           Cryptographic Services                 Server1                                                
Running  DsSvc              Data Sharing Service                   Server1                                                
Running  DcomLaunch         DCOM Server Process Launcher           Server1                                                
Stopped  DoSvc              Delivery Optimization                  Server1                                                
Stopped  DeviceAssociati... Device Association Service             Server1                                                
Stopped  DeviceInstall      Device Install Service                 Server1                                                
Stopped  DmEnrollmentSvc    Device Management Enrollment Service   Server1                                                
Stopped  dmwappushservice   Device Management Wireless Applicat... Server1                                                
Stopped  DsmSvc             Device Setup Manager                   Server1                                                
Stopped  DevicePickerUse... DevicePicker_159577                    Server1                                                
Stopped  DevicePickerUse... DevicePicker_201301                    Server1                                                
Stopped  DevicePickerUse... DevicePicker_2542e2                    Server1                                                
Stopped  DevicePickerUse... DevicePicker_4517d7                    Server1                                                
Stopped  DevicePickerUse... DevicePicker_54164f6                   Server1                                                
Stopped  DevicesFlowUser... DevicesFlow_159577                     Server1                                                
Stopped  DevicesFlowUser... DevicesFlow_201301                     Server1                                                
Stopped  DevicesFlowUser... DevicesFlow_2542e2                     Server1                                                
Stopped  DevicesFlowUser... DevicesFlow_4517d7                     Server1                                                
Stopped  DevicesFlowUser... DevicesFlow_54164f6                    Server1                                                
Stopped  DevQueryBroker     DevQuery Background Discovery Broker   Server1                                                
Running  Dhcp               DHCP Client                            Server1                                                
Running  DPS                Diagnostic Policy Service              Server1                                                
Stopped  WdiServiceHost     Diagnostic Service Host                Server1                                                
Stopped  WdiSystemHost      Diagnostic System Host                 Server1                                                
Running  TrkWks             Distributed Link Tracking Client       Server1                                                
Running  MSDTC              Distributed Transaction Coordinator    Server1                                                
Running  Dnscache           DNS Client                             Server1                                                
Stopped  MapsBroker         Downloaded Maps Manager                Server1                                                
Stopped  embeddedmode       Embedded Mode                          Server1                                                
Stopped  EFS                Encrypting File System (EFS)           Server1                                                
Stopped  EntAppSvc          Enterprise App Management Service      Server1                                                
Stopped  Eaphost            Extensible Authentication Protocol     Server1                                                
Running  fdPHost            Function Discovery Provider Host       Server1                                                
Stopped  FDResPub           Function Discovery Resource Publica... Server1                                                
Stopped  lfsvc              Geolocation Service                    Server1                                                
Stopped  GraphicsPerfSvc    GraphicsPerfSvc                        Server1                                                
Running  gpsvc              Group Policy Client                    Server1                                                
Stopped  hidserv            Human Interface Device Service         Server1                                                
Stopped  HvHost             HV Host Service                        Server1                                                
Stopped  vmickvpexchange    Hyper-V Data Exchange Service          Server1                                                
Stopped  vmicguestinterface Hyper-V Guest Service Interface        Server1                                                
Stopped  vmicshutdown       Hyper-V Guest Shutdown Service         Server1                                                
Stopped  vmicheartbeat      Hyper-V Heartbeat Service              Server1                                                
Stopped  vmicvmsession      Hyper-V PowerShell Direct Service      Server1                                                
Stopped  vmicrdv            Hyper-V Remote Desktop Virtualizati... Server1                                                
Stopped  vmictimesync       Hyper-V Time Synchronization Service   Server1                                                
Stopped  vmicvss            Hyper-V Volume Shadow Copy Requestor   Server1                                                
Running  IISADMIN           IIS Admin Service                      Server1                                                
Running  IKEEXT             IKE and AuthIP IPsec Keying Modules    Server1                                                
Stopped  SharedAccess       Internet Connection Sharing (ICS)      Server1                                                
Running  iphlpsvc           IP Helper                              Server1                                                
Running  PolicyAgent        IPsec Policy Agent                     Server1                                                
Stopped  KPSSVC             KDC Proxy Server service (KPS)         Server1                                                
Stopped  KtmRm              KtmRm for Distributed Transaction C... Server1                                                
Stopped  lltdsvc            Link-Layer Topology Discovery Mapper   Server1                                                
Running  LSM                Local Session Manager                  Server1                                                
Stopped  diagnosticshub.... Microsoft (R) Diagnostics Hub Stand... Server1                                                
Stopped  wlidsvc            Microsoft Account Sign-in Assistant    Server1                                                
Stopped  AppVClient         Microsoft App-V Client                 Server1                                                
Stopped  MicrosoftEdgeEl... Microsoft Edge Elevation Service (M... Server1                                                
Stopped  edgeupdate         Microsoft Edge Update Service (edge... Server1                                                
Stopped  edgeupdatem        Microsoft Edge Update Service (edge... Server1                                                
Stopped  MSiSCSI            Microsoft iSCSI Initiator Service      Server1                                                
Running  HealthService      Microsoft Monitoring Agent             Server1                                                
Stopped  System Center M... Microsoft Monitoring Agent APM         Server1                                                
Stopped  AdtAgent           Microsoft Monitoring Agent Audit Fo... Server1                                                
Stopped  NgcSvc             Microsoft Passport                     Server1                                                
Stopped  NgcCtnrSvc         Microsoft Passport Container           Server1                                                
Stopped  lpasvc             Microsoft Policy Platform Local Aut... Server1                                                
Stopped  lppsvc             Microsoft Policy Platform Processor    Server1                                                
Stopped  swprv              Microsoft Software Shadow Copy Prov... Server1                                                
Stopped  smphost            Microsoft Storage Spaces SMP           Server1                                                
Stopped  InstallService     Microsoft Store Install Service        Server1                                                
Stopped  NetTcpPortSharing  Net.Tcp Port Sharing Service           Server1                                                
Running  Netlogon           Netlogon                               Server1                                                
Running  NcbService         Network Connection Broker              Server1                                                
Stopped  Netman             Network Connections                    Server1                                                
Stopped  NcaSvc             Network Connectivity Assistant         Server1                                                
Running  netprofm           Network List Service                   Server1                                                
Running  NlaSvc             Network Location Awareness             Server1                                                
Stopped  NetSetupSvc        Network Setup Service                  Server1                                                
Running  nsi                Network Store Interface Service        Server1                                                
Stopped  CscService         Offline Files                          Server1                                                
Stopped  ssh-agent          OpenSSH Authentication Agent           Server1                                                
Running  sshd               OpenSSH SSH Server                     Server1                                                
Stopped  defragsvc          Optimize drives                        Server1                                                
Stopped  SEMgrSvc           Payments and NFC/SE Manager            Server1                                                
Stopped  PerfHost           Performance Counter DLL Host           Server1                                                
Stopped  pla                Performance Logs & Alerts              Server1                                                
Stopped  PhoneSvc           Phone Service                          Server1                                                
Running  PlugPlay           Plug and Play                          Server1                                                
Stopped  WPDBusEnum         Portable Device Enumerator Service     Server1                                                
Running  Power              Power                                  Server1                                                
Stopped  Spooler            Print Spooler                          Server1                                                
Stopped  PrintNotify        Printer Extensions and Notifications   Server1                                                
Stopped  PrintWorkflowUs... PrintWorkflow_159577                   Server1                                                
Stopped  PrintWorkflowUs... PrintWorkflow_201301                   Server1                                                
Stopped  PrintWorkflowUs... PrintWorkflow_2542e2                   Server1                                                
Stopped  PrintWorkflowUs... PrintWorkflow_4517d7                   Server1                                                
Stopped  PrintWorkflowUs... PrintWorkflow_54164f6                  Server1                                                
Stopped  wercplsupport      Problem Reports and Solutions Contr... Server1                                                
Running  PcaSvc             Program Compatibility Assistant Ser... Server1                                                
Stopped  QWAVE              Quality Windows Audio Video Experience Server1                                                
Stopped  RmSvc              Radio Management Service               Server1                                                
Stopped  RasAuto            Remote Access Auto Connection Manager  Server1                                                
Running  RasMan             Remote Access Connection Manager       Server1                                                
Running  SessionEnv         Remote Desktop Configuration           Server1                                                
Running  TermServLicensing  Remote Desktop Licensing               Server1                                                
Running  TermService        Remote Desktop Services                Server1                                                
Running  UmRdpService       Remote Desktop Services UserMode Po... Server1                                                
Running  RpcSs              Remote Procedure Call (RPC)            Server1                                                
Stopped  RpcLocator         Remote Procedure Call (RPC) Locator    Server1                                                
Stopped  RemoteRegistry     Remote Registry                        Server1                                                
Stopped  RSoPProv           Resultant Set of Policy Provider       Server1                                                
Stopped  RemoteAccess       Routing and Remote Access              Server1                                                
Running  RpcEptMapper       RPC Endpoint Mapper                    Server1                                                
Running  Rubrik Backup S... Rubrik Backup Service                  Server1                                                
Stopped  RubrikVssProvider  RubrikVssProvider                      Server1                                                
Running  seclogon           Secondary Logon                        Server1                                                
Running  SstpSvc            Secure Socket Tunneling Protocol Se... Server1                                                
Running  SamSs              Security Accounts Manager              Server1                                                
Stopped  SensorDataService  Sensor Data Service                    Server1                                                
Stopped  SensrSvc           Sensor Monitoring Service              Server1                                                
Stopped  SensorService      Sensor Service                         Server1                                                
Running  LanmanServer       Server                                 Server1                                                
Stopped  shpamsvc           Shared PC Account Manager              Server1                                                
Running  SharePoint Migr... SharePoint Migration Service           Server1                                                
Running  ShellHWDetection   Shell Hardware Detection               Server1                                                
Stopped  SCardSvr           Smart Card                             Server1                                                
Stopped  ScDeviceEnum       Smart Card Device Enumeration Service  Server1                                                
Stopped  SCPolicySvc        Smart Card Removal Policy              Server1                                                
Running  CcmExec            SMS Agent Host                         Server1                                                
Stopped  SNMPTRAP           SNMP Trap                              Server1                                                
Stopped  sppsvc             Software Protection                    Server1                                                
Stopped  sacsvr             Special Administration Console Helper  Server1                                                
Stopped  svsvc              Spot Verifier                          Server1                                                
Stopped  SSDPSRV            SSDP Discovery                         Server1                                                
Running  StateRepository    State Repository Service               Server1                                                
Stopped  WiaRpc             Still Image Acquisition Events         Server1                                                
Running  StorSvc            Storage Service                        Server1                                                
Stopped  TieringEngineSe... Storage Tiers Management               Server1                                                
Running  SysMain            SysMain                                Server1                                                
Running  SENS               System Event Notification Service      Server1                                                
Running  SystemEventsBroker System Events Broker                   Server1                                                
Running  SgrmBroker         System Guard Runtime Monitor Broker    Server1                                                
Running  Schedule           Task Scheduler                         Server1                                                
Running  lmhosts            TCP/IP NetBIOS Helper                  Server1                                                
Stopped  tapisrv            Telephony                              Server1                                                
Running  Themes             Themes                                 Server1                                                
Running  TimeBrokerSvc      Time Broker                            Server1                                                
Running  TabletInputService Touch Keyboard and Handwriting Pane... Server1                                                
Running  UsoSvc             Update Orchestrator Service            Server1                                                
Stopped  upnphost           UPnP Device Host                       Server1                                                
Running  UALSVC             User Access Logging Service            Server1                                                
Stopped  UserDataSvc_159577 User Data Access_159577                Server1                                                
Stopped  UserDataSvc_201301 User Data Access_201301                Server1                                                
Stopped  UserDataSvc_2542e2 User Data Access_2542e2                Server1                                                
Stopped  UserDataSvc_4517d7 User Data Access_4517d7                Server1                                                
Stopped  UserDataSvc_541... User Data Access_54164f6               Server1                                                
Stopped  UnistoreSvc_159577 User Data Storage_159577               Server1                                                
Stopped  UnistoreSvc_201301 User Data Storage_201301               Server1                                                
Stopped  UnistoreSvc_2542e2 User Data Storage_2542e2               Server1                                                
Stopped  UnistoreSvc_4517d7 User Data Storage_4517d7               Server1                                                
Stopped  UnistoreSvc_541... User Data Storage_54164f6              Server1                                                
Stopped  UevAgentService    User Experience Virtualization Service Server1                                                
Running  UserManager        User Manager                           Server1                                                
Running  ProfSvc            User Profile Service                   Server1                                                
Stopped  vds                Virtual Disk                           Server1                                                
Running  VGAuthService      VMware Alias Manager and Ticket Ser... Server1                                                
Stopped  vmvss              VMware Snapshot Provider               Server1                                                
Running  vm3dservice        VMware SVGA Helper Service             Server1                                                
Running  VMTools            VMware Tools                           Server1                                                
Running  VMUSBArbService    VMware USB Arbitration Service         Server1                                                
Stopped  VSS                Volume Shadow Copy                     Server1                                                
Stopped  WalletService      WalletService                          Server1                                                
Stopped  WarpJITSvc         WarpJITSvc                             Server1                                                
Running  TokenBroker        Web Account Manager                    Server1                                                
Stopped  ServerManagemen... Windows Admin Center Account Service   Server1                                                
Running  ServerManagemen... Windows Admin Center Service           Server1                                                
Running  Audiosrv           Windows Audio                          Server1                                                
Running  AudioEndpointBu... Windows Audio Endpoint Builder         Server1                                                
Stopped  WbioSrvc           Windows Biometric Service              Server1                                                
Stopped  FrameServer        Windows Camera Frame Server            Server1                                                
Running  Wcmsvc             Windows Connection Manager             Server1                                                
Running  Sense              Windows Defender Advanced Threat Pr... Server1                                                
Running  WdNisSvc           Windows Defender Antivirus Network ... Server1                                                
Running  WinDefend          Windows Defender Antivirus Service     Server1                                                
Running  mpssvc             Windows Defender Firewall              Server1                                                
Stopped  WEPHOSTSVC         Windows Encryption Provider Host Se... Server1                                                
Stopped  WerSvc             Windows Error Reporting Service        Server1                                                
Stopped  Wecsvc             Windows Event Collector                Server1                                                
Running  EventLog           Windows Event Log                      Server1                                                
Running  FontCache          Windows Font Cache Service             Server1                                                
Stopped  stisvc             Windows Image Acquisition (WIA)        Server1                                                
Stopped  wisvc              Windows Insider Service                Server1                                                
Stopped  msiserver          Windows Installer                      Server1                                                
Running  LicenseManager     Windows License Manager Service        Server1                                                
Running  Winmgmt            Windows Management Instrumentation     Server1                                                
Stopped  WMPNetworkSvc      Windows Media Player Network Sharin... Server1                                                
Stopped  icssvc             Windows Mobile Hotspot Service         Server1                                                
Stopped  TrustedInstaller   Windows Modules Installer              Server1                                                
Running  WpnService         Windows Push Notifications System S... Server1                                                
Running  WpnUserService_... Windows Push Notifications User Ser... Server1                                                
Running  WpnUserService_... Windows Push Notifications User Ser... Server1                                                
Running  WpnUserService_... Windows Push Notifications User Ser... Server1                                                
Running  WpnUserService_... Windows Push Notifications User Ser... Server1                                                
Running  WpnUserService_... Windows Push Notifications User Ser... Server1                                                
Stopped  PushToInstall      Windows PushToInstall Service          Server1                                                
Running  WinRM              Windows Remote Management (WS-Manag... Server1                                                
Stopped  WSearch            Windows Search                         Server1                                                
Stopped  SecurityHealthS... Windows Security Service               Server1                                                
Running  W32Time            Windows Time                           Server1                                                
Stopped  wuauserv           Windows Update                         Server1                                                
Stopped  WaaSMedicSvc       Windows Update Medic Service           Server1                                                
Running  WinHttpAutoProx... WinHTTP Web Proxy Auto-Discovery Se... Server1                                                
Stopped  dot3svc            Wired AutoConfig                       Server1                                                
Stopped  wmiApSrv           WMI Performance Adapter                Server1                                                
Running  LanmanWorkstation  Workstation                            Server1                                                
Running  XymonPSClient      XymonPSClient                          Server1                                                