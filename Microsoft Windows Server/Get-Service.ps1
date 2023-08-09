#Session Commands

#Get all services running from remote server
Get-Service -ComputerName server3
#Get specific service running status from remote server
Get-Service XymonPSClient -ComputerName server3

#Invoke Commands
#Get all services running from remote server
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
                                 