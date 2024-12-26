# Redfish APIs
| API   list                                                                               | GET | POST | PATCH | DELETE | NOTE                                                                                                                                                           |
|------------------------------------------------------------------------------------------|-----|------|-------|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| /redfish/v1                                                                              | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/AccountService                                                               | O   | 　   | O     | 　     | PATCH:   SetAccountPolicy (LDP config, password policy)                                                                                                        |
| redfish/v1/AccountService/Accounts                                                       | O   | O    | 　    | 　     | POST: CreateUser                                                                                                                                               |
| /redfish/v1/AccountService/Accounts/<<str>str>                                               | O   | 　   | O     | O      | PATCH:   updateUserProperties;      DELETE: delete User                                                                                 |
| /redfish/v1/AccountService/Roles                                                         | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/AccountService/Roles/<<str>str>                                                   | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/AccountService/LDAP/Certificates                                             | O   | O    | 　    | 　     | POST: Install Certificate for LDAP                                                                                                                           |
| /redfish/v1/AccountService/LDAP/Certificates/<<str>str>/                                      | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/CertificateService                                                           | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/CertificateService/Actions/CertificateService.GenerateCSR                    | 　  | O    | 　    | 　     | POST: Certificate for HTTP, LDAP                                                                                                                              |
| /redfish/v1/CertificateService/Actions/CertificateService.ReplaceCertificate             | 　  | O    | 　    | 　     | POST: Certificate for HTTP, LDAP, TrustStore                                                                                                                  |
| /redfish/v1/CertificateService/CertificateLocations                                      | O   | 　   | 　    | 　     | GET: Certificate for HTTP, LDAP, TrustStore                                                                                                                   |
| /redfish/v1/Chassis                                                                      | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Chassis/<<str>str>                                                                | O   | 　   | O     | 　     | PATCH: IndicatorLED                                                                                                                                            |
| /redfish/v1/Chassis/<<str>str>/Power                                                          | O   | 　   | O     | 　     | PATCH: Power limit control                                                                                                                                   |
| /redfish/v1/Chassis/<<str>str>/Sensors                                                        | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Chassis/<<str>str>/Sensors/<<str>str>                                                  | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Chassis/<<str>str>/Thermal                                                        | O   | 　   | O     | 　     | PATCH: Temperatures, Fan                                                                                                                                      |
| /redfish/v1/Chassis/<<str>str>/Actions/Chassis.Reset/                                         | 　  | O    | 　    | 　     | POST: doChassisPowerCycle                                                                                                                                       |
| /redfish/v1/Chassis/<<str>str>/ResetActionInfo/                                               | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/EventService                                                                 | O   | 　   | O     | 　     | PATCH: ServiceEnabled, DeliveryRetryAttempts, DeliveryRetryIntervalSeconds                                                                                    |
| /redfish/v1/EventService/Actions/EventService.SubmitTestEvent/                           | 　  | O    | 　    | 　     | POST: Users can send a test event with “SendTestEvent” or generate an event in the BMC   then Redfish will automatically send event alerts to subscriber(s).  |
| /redfish/v1/EventService/Subscriptions/                                                  | O   | O    | 　    | 　     | POST: Add a subscription to inform Redfish who will receive this event.                                                                                       |
| /redfish/v1/EventService/Subscriptions/<<str>str>                                      | O   | 　   | O     | O      | PATCH: updateSubscriptionData ;     DELETE: The user can delete subscription using the Delete request method.                   |
| /redfish/v1/EventService/Subscriptions/SSE/                                              | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/JsonSchemas                                                                  | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers                                                                     | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers/bmc                                                                 | O   | 　   | O     | 　     | PATCH: OEM- datetime   & PID parameters                                                                                                                         |
| /redfish/v1/Managers/bmc/ResetActionInfo                                                 | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers/bmc/Actions/Manager.Reset                                           | 　  | O    | 　    | 　     | POST: BMC warm reboot                                                                                                                                          |
| /redfish/v1/Managers/bmc/Actions/Manager.ResetToDefaults                                 | 　  | O    | 　    | 　     | POST: BMC factory   reset                                                                                                                                      |
| /redfish/v1/Managers/bmc/LogServices/                                                    | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers/bmc/LogServices/Dump/                                  | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers/bmc/LogServices/Dump/Actions/LogService.ClearLog/              | 　  | O    | 　    | 　     | POST:  delete all dump  log                                                                                                                                    |
| /redfish/v1/Managers/bmc/LogServices/Dump/Actions/Oem/OemLogService.CollectDiagnosticData/ | 　  | O    | 　    | 　     | POST:  create OEM BMC dump  log                                                                                                                                    |
| /redfish/v1/Managers/bmc/LogServices/Dump/Entries/                                  | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers/bmc/LogServices/Dump/Entries/<<str>str>/                           | O   | 　   | 　    | O      | DELETE: delete dump log                                                                                                                                        |
| /redfish/v1/Managers/bmc/LogServices/Journal/                                            | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers/bmc/LogServices/Journal/Entries/                                    | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers/bmc/LogServices/Journal/Entries/<<str>str>/                              | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers/bmc/NetworkProtocol                                                 | O   | 　   | O     | 　     | PATCH: HostName,   IPMI, NTP                                                                                                                                   |
| /redfish/v1/Managers/bmc/NetworkProtocol/HTTPS/Certificates                              | O   | O    | 　    | 　     | POST: Install  certificate                                                                                                                                     |
| /redfish/v1/Managers/bmc/NetworkProtocol/HTTPS/Certificates/<<str>str>/                       | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers/bmc/EthernetInterfaces                                              | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers/bmc/EthernetInterfaces/<<str>str>/                                       | O   | 　   | O     | 　     | PATCH: eth   configuration                                                                                                                                     |
| /redfish/v1/Managers/bmc/EthernetInterfaces/<<str>str>/VLANs/                                 | O   | O    | 　    | 　     | POST: VLAN ID, VLAN   Enable                                                                                                                                   |
| /redfish/v1/Managers/bmc/EthernetInterfaces/<<str>str>/VLANs/<<str>str>/                           | O   | 　   | O     | O      | PATCH: VLAN ID, VLAN Enable;      DELETE: DISABLE VLAN ID                            |
| /redfish/v1/Managers/bmc/VirtualMedia                                                    | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Managers/<<str>str>/VirtualMedia/<<str>str>/                                           | O   | 　   | 　    | 　     | The first str must be "bmc"　                                                                         |
| /redfish/v1/Managers/<<str>str>/VirtualMedia/<<str>str>/Actions/VirtualMedia.InsertMedia           | 　  | O    | 　    | 　     | POST: Inset media                                                                                                                                              |
| /redfish/v1/Managers/<<str>str>/VirtualMedia/<<str>str>/Actions/VirtualMedia.EjectMedia            | 　  | O    | 　    | 　     | POST: eject media                                                                                                                                              |
| /redfish/v1/Managers/bmc/Truststore/Certificates                                         | O   | O    | 　    | 　     | POST: upload  certificate                                                                                                                                      |
| /redfish/v1/Managers/bmc/Truststore/Certificates/<<str>str>/                                  | O   | 　   | 　    | O      | DELETE: delete   certificate                                                                                                                                   |
| /redfish/v1/Registries                                                                   | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Registries/Base/                                                              | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Registries/Base/Base                                                         | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Registries/TaskEvent/                                                         | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Registries/TaskEvent/TaskEvent                                               | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Registries/OpenBMC/                                                          | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Registries/OpenBMC/OpenBMC                                                   | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/                                                                     | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system                                                               | O   | 　   | O     | 　     | PATCH: IndicatorLED,   Boot Property, WatchdogTimer, PowerRestorePolicy                                                                                        |
| /redfish/v1/Systems/system/ResetActionInfo/                                              | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/Actions/ComputerSystem.Reset                                  | 　  | O    | 　    | 　     | POST: Host reboot                                                                                                                                              |
| /redfish/v1/Systems/system/Processors                                                    | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/Processors/<<str>str>/                                             | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/Memory                                                        | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/Memory/<<str>str>/                                                 | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/Storage                                                       | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/Storage/1/                                                    | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/Storage/1/Drives/<<str>str>/                                       | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices                                                   | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices/EventLog                                          | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices/EventLog/Actions/LogService.ClearLog              | 　  | O    | 　    | 　     | POST:  delete all event log                                                                                                                                    |
| /redfish/v1/Systems/system/LogServices/EventLog/Entries                                  | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices/EventLog/Entries/<<str>str>/                           | O   | 　   | 　    | O      | DELETE: delete log   entry                                                                                                                                     |
| /redfish/v1/Systems/system/LogServices/Crashdump                                         | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices/Crashdump/Actions/LogService.ClearLog             | 　  | O    | 　    | 　     | POST: delete all   crash dump log                                                                                                                              |
| /redfish/v1/Systems/system/LogServices/Crashdump/Entries/                                | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices/Crashdump/Entries/<<str>str>/                          | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices/Crashdump/Entries/<<str>str>/<<str>str>/                    | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices/Crashdump/Actions/Oem/Crashdump.OnDemand/         | 　  | O    | 　  | 　   | POST:  Generate OnDemand log                                                                                        |
| /redfish/v1/Systems/system/LogServices/Crashdump/Actions/Oem/Crashdump.Telemetry/        | 　  | O    | 　  | 　   | POST:  Generate Telemetry log                                                                                             |
| /redfish/v1/Systems/system/LogServices/Crashdump/Actions/Oem/Crashdump.SendRawPeci/      | 　  | O    |    |     |  POST:  Generate crash dump log via SendRawPeci command                                                                    |
| /redfish/v1/Systems/system/LogServices/Dump/                                         | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices/Dump/Actions/LogService.ClearLog/             | 　  | O    | 　    | 　  | POST: delete all system dump log                                                                                  |
| /redfish/v1/Systems/system/LogServices/Dump/Entries/                               | O   | 　   |    |     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices/Dump/Entries/<<str>str>/                          | O   |    |    | O　 | DELETE: delete system dump entry                                                                                                |
| /redfish/v1/Systems/system/LogServices/DumpActions/Oem/OemLogService.CollectDiagnosticData/ | 　  | O    | 　    | 　   | POST: create OEM system dump log                                                              |
| /redfish/v1/Systems/system/LogServices/System/Entries/<<str>str>/Actions/LogEntry.DownloadLog | 　  | O    | 　    | 　     | POST: download log entry                                                                                               |
| /redfish/v1/Systems/system/LogServices/PostCodes                                         | O   | 　   | 　    | 　  | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices/PostCodes/Actions/LogService.ClearLog/            | 　  | O    | 　    | 　     | POST: delete all post   log                                                                                                                                    |
| /redfish/v1/Systems/system/LogServices/PostCodes/Entries/                                | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/LogServices/PostCodes/Entries/<<str>str>/                          | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/Bios                                                          | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/Bios/Actions/Bios.ResetBios                                   | 　  | O    | 　    | 　     | POST: BIOS factory   reset                                                                                                                                     |
| /redfish/v1/Systems/hypervisor/                                                          | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/hypervisor/EthernetInterfaces/                                       | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/hypervisor/EthernetInterfaces/<<str>str>/                                 | O   | 　   | O     | 　     | PATCH: HostName,   IPv4StaticAddresses, IPv4Addresses                                                                                                          |
| /redfish/v1/Systems/system/PCIeDevices/                                                  | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/PCIeDevices/<<str>str>/                                            | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/PCIeDevices/<<str>str>/PCIeFunctions/                              | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/Systems/system/PCIeDevices/<<str>str>/PCIeFunctions/<<str>str>/                        | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/TaskService                                                                  | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/TaskService/Tasks                                                            | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/TaskService/Tasks/<<str>str>/                                                     | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/TaskService/Tasks/<<str>str>/Monitor/                                             | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/UpdateService/                                                               | O   | O    | O     | 　     | POST:   FW update over Redfish;      PATCH: FW apply time                                                                                                       |
| /redfish/v1/UpdateService/FirmwareInventory                                              | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/UpdateService/FirmwareInventory/<<str>str>/                                       | O   | 　   | 　    | 　     | 　                                                                                                                                                             |
| /redfish/v1/UpdateService/Actions/UpdateService.SimpleUpdate                             | 　  | O    | 　    | 　     | POST: FW update over   TFTP                                                                                                                                    |
| /redfish/v1/SessionService                                                               | O   |      | 　    | 　    |                                                                                                                                                        |
| /redfish/v1/SessionService/Sessions                                                      | O   | O   | 　    | 　    | POST: create a session                                                                                                   |
| /redfish/v1/SessionService/Sessions/<<str>str>/                                               | O   | 　   | 　    | O      | DELETE: delete a session