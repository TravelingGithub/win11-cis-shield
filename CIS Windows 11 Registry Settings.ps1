# CIS Windows 11 Enterprise Benchmark v3.0.0 Registry Settings

# 18.1.1.1 Prevent enabling lock screen camera
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Personalization" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Personalization" -Name "NoLockScreenCamera" -Value 1 -Type DWord

# 18.1.1.2 Prevent enabling lock screen slide show
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Personalization" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Personalization" -Name "NoLockScreenSlideshow" -Value 1 -Type DWord

# 18.1.2.2 Allow users to enable online speech recognition services
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization" -Name "AllowInputPersonalization" -Value 0 -Type DWord

# 18.4.1 Apply UAC restrictions to local accounts on network logons
New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "LocalAccountTokenFilterPolicy" -Value 0 -Type DWord

# 18.4.2 Configure RPC packet level privacy setting for incoming connections
New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Print" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Print" -Name "RpcAuthnLevelPrivacyEnabled" -Value 1 -Type DWord

# 18.4.3 Configure SMB v1 client driver
New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Services\mrxsmb10" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\mrxsmb10" -Name "Start" -Value 4 -Type DWord

# 18.4.4 Configure SMB v1 server
New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "SMB1" -Value 0 -Type DWord

# 18.4.5 Enable Certificate Padding
New-Item -Path "HKLM:\Software\Microsoft\Cryptography\Wintrust\Config" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Cryptography\Wintrust\Config" -Name "EnableCertPaddingCheck" -Value 1 -Type DWord

# 18.4.6 Enable Structured Exception Handling Overwrite Protection (SEHOP)
New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" -Name "DisableExceptionChainValidation" -Value 0 -Type DWord

# 18.4.7 NetBT NodeType configuration
New-Item -Path "HKLM:\System\CurrentControlSet\Services\NetBT\Parameters" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Services\NetBT\Parameters" -Name "NodeType" -Value 2 -Type DWord

# 18.10.3.2 Prevent non-admin users from installing packaged Windows apps
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Appx" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Appx" -Name "BlockNonAdminUserInstall" -Value 1 -Type DWord

# 18.10.4.1 Let Windows apps activate with voice while the system is locked
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsActivateWithVoiceAboveLock" -Value 2 -Type DWord

# 18.10.5.1 Allow Microsoft accounts to be optional
New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "MSAOptional" -Value 1 -Type DWord

# 18.10.7.1 Disallow Autoplay for non-volume devices
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Name "NoAutoplayfornonVolume" -Value 1 -Type DWord

# 18.10.7.2 Set the default behavior for AutoRun
New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoAutorun" -Value 1 -Type DWord

# 18.10.7.3 Turn off Autoplay
New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDriveTypeAutoRun" -Value 255 -Type DWord

# 18.10.8.1.1 Configure enhanced anti-spoofing
New-Item -Path "HKLM:\Software\Policies\Microsoft\Biometrics\FacialFeatures" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Biometrics\FacialFeatures" -Name "EnhancedAntiSpoofing" -Value 1 -Type DWord

# 18.10.12.1 Turn off cloud consumer account state content
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\CloudContent" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\CloudContent" -Name "DisableConsumerAccountStateContent" -Value 1 -Type DWord

# 18.10.12.3 Turn off Microsoft consumer experiences
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\CloudContent" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Value 1 -Type DWord

# 18.10.13.1 Require pin for pairing
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Connect" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Connect" -Name "RequirePinForPairing" -Value 1 -Type DWord

# 18.10.14.1 Do not display the password reveal button
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\CredUI" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\CredUI" -Name "DisablePasswordReveal" -Value 1 -Type DWord

# 18.10.14.2 Enumerate administrator accounts on elevation
New-Item -Path "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\CredUI" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\CredUI" -Name "EnumerateAdministrators" -Value 0 -Type DWord

# 18.10.14.3 Prevent the use of security questions for local accounts
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Name "NoLocalPasswordResetQuestions" -Value 1 -Type DWord

# 18.10.15.1 Allow Diagnostic Data
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Value 0 -Type DWord

# 18.10.15.3 Disable OneSettings Downloads
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "DisableOneSettingsDownloads" -Value 1 -Type DWord

# 18.10.15.4 Do not show feedback notifications
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Value 1 -Type DWord

# 18.10.15.5 Enable OneSettings Auditing
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "EnableOneSettingsAuditing" -Value 1 -Type DWord

# 18.10.15.6 Limit Diagnostic Log Collection
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "LimitDiagnosticLogCollection" -Value 1 -Type DWord

# 18.10.15.7 Limit Dump Collection
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "LimitDumpCollection" -Value 1 -Type DWord

# 18.10.15.8 Toggle user control over Insider builds
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\PreviewBuilds" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\PreviewBuilds" -Name "AllowBuildPreview" -Value 0 -Type DWord

# 18.10.16.1 Download Mode
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DeliveryOptimization" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DeliveryOptimization" -Name "DODownloadMode" -Value 1 -Type DWord

# 18.10.17.1 Enable App Installer
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Name "EnableAppInstaller" -Value 0 -Type DWord

# 18.10.17.2 Enable App Installer Experimental Features
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Name "EnableExperimentalFeatures" -Value 0 -Type DWord

# 18.10.17.3 Enable App Installer Hash Override
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Name "EnableHashOverride" -Value 0 -Type DWord

# 18.10.17.4 Enable App Installer ms-appinstaller protocol
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Name "EnableMSAppInstallerProtocol" -Value 0 -Type DWord

# 18.10.25.1.1 Application: Control Event Log behavior when the log file reaches its maximum size
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application" -Name "Retention" -Value 0 -Type String

# 18.10.25.1.2 Application: Specify the maximum log file size (KB)
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application" -Name "MaxSize" -Value 32768 -Type DWord

# 18.10.25.2.1 Security: Control Event Log behavior when the log file reaches its maximum size
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security" -Name "Retention" -Value 0 -Type String

# 18.10.25.2.2 Security: Specify the maximum log file size (KB)
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security" -Name "MaxSize" -Value 196608 -Type DWord

# 18.10.25.3.1 Setup: Control Event Log behavior when the log file reaches its maximum size
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup" -Name "Retention" -Value 0 -Type String

# 18.10.25.3.2 Setup: Specify the maximum log file size (KB)
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup" -Name "MaxSize" -Value 32768 -Type DWord

# 18.10.25.4.1 System: Control Event Log behavior when the log file reaches its maximum size
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\System" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\System" -Name "Retention" -Value 0 -Type String

# 18.10.25.4.2 System: Specify the maximum log file size (KB)
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\System" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\System" -Name "MaxSize" -Value 32768 -Type DWord

# 18.10.28.3 Turn off Data Execution Prevention for Explorer
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Name "NoDataExecutionPrevention" -Value 0 -Type DWord

# 18.10.28.4 Turn off heap termination on corruption
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Name "NoHeapTerminationOnCorruption" -Value 0 -Type DWord

# 18.10.28.5 Turn off shell protocol protected mode
New-Item -Path "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "PreXPSP2ShellProtocolBehavior" -Value 0 -Type DWord

# 18.10.41.1 Block all consumer Microsoft account user authentication
New-Item -Path "HKLM:\Software\Policies\Microsoft\MicrosoftAccount" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\MicrosoftAccount" -Name "DisableUserAuth" -Value 1 -Type DWord

# 18.10.42.10.1 Scan all downloaded files and attachments
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableIOAVProtection" -Value 0 -Type DWord

# 18.10.42.10.2 Turn off real-time protection
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableRealtimeMonitoring" -Value 0 -Type DWord

# 18.10.42.10.3 Turn on behavior monitoring
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableBehaviorMonitoring" -Value 0 -Type DWord

# 18.10.42.10.4 Turn on script scanning
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableScriptScanning" -Value 0 -Type DWord

# 18.10.42.13.1 Scan packed executables
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan" -Name "DisablePackedExeScanning" -Value 0 -Type DWord

# 18.10.42.13.2 Scan removable drives
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan" -Name "DisableRemovableDriveScanning" -Value 0 -Type DWord

# 18.10.42.13.3 Turn on e-mail scanning
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan" -Name "DisableEmailScanning" -Value 0 -Type DWord

# 18.10.42.16 Configure detection for potentially unwanted applications
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender" -Name "PUAProtection" -Value 1 -Type DWord

# 18.10.42.17 Turn off Microsoft Defender AntiVirus
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -Value 0 -Type DWord

# 18.10.42.5.1 Configure local setting override for reporting to Microsoft MAPS
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Spynet" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Spynet" -Name "LocalSettingOverrideSpynetReporting" -Value 0 -Type DWord

# 18.10.42.6.1.1 Configure Attack Surface Reduction rules
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR" -Name "ExploitGuard_ASR_Rules" -Value 1 -Type DWord

# 18.10.42.6.3.1 Prevent users and apps from accessing dangerous websites
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection" -Name "EnableNetworkProtection" -Value 1 -Type DWord

# 18.10.42.7.1 Enable file hash computation feature
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\MpEngine" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\MpEngine" -Name "EnableFileHashComputation" -Value 1 -Type DWord

# 18.10.43.1 Allow auditing events in Microsoft Defender Application Guard
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "AuditApplicationGuard" -Value 1 -Type DWord

# 18.10.43.2 Allow camera and microphone access in Microsoft Defender Application Guard
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "AllowCameraMicrophoneRedirection" -Value 0 -Type DWord

# 18.10.43.3 Allow data persistence for Microsoft Defender Application Guard
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "AllowPersistence" -Value 0 -Type DWord

# 18.10.43.4 Allow files to download and save to the host operating system from Microsoft Defender Application Guard
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "SaveFilesToHost" -Value 0 -Type DWord

# 18.10.43.5 Configure Microsoft Defender Application Guard clipboard settings: Clipboard behavior setting
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "AppHVSIClipboardSettings" -Value 1 -Type DWord

# 18.10.43.6 Turn on Microsoft Defender Application Guard in Managed Mode
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "AllowAppHVSI_ProviderSet" -Value 1 -Type DWord

# 18.10.50.1 Prevent the usage of OneDrive for file storage
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Value 1 -Type DWord

# 18.10.56.2.3 Do not allow passwords to be saved
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "DisablePasswordSaving" -Value 1 -Type DWord

# 18.10.56.3.11.1 Do not delete temp folders upon exit
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "DeleteTempDirsOnExit" -Value 1 -Type DWord

# 18.10.56.3.3.3 Do not allow drive redirection
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "fDisableCdm" -Value 1 -Type DWord

# 18.10.56.3.9.1 Always prompt for password upon connection
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "fPromptForPassword" -Value 1 -Type DWord

# 18.10.56.3.9.2 Require secure RPC communication
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "fEncryptRPCTraffic" -Value 1 -Type DWord

# 18.10.56.3.9.3 Require use of specific security layer for remote (RDP) connections
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "SecurityLayer" -Value 2 -Type DWord

# 18.10.56.3.9.4 Require user authentication for remote connections by using Network Level Authentication
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "UserAuthentication" -Value 1 -Type DWord

# 18.10.56.3.9.5 Set client connection encryption level
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Force -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "MinEncryptionLevel" -Value 3