# PowerShell Script to Apply CIS Benchmark Registry Settings
# NOTE: This script attempts to configure settings based on the extracted list.
#       Review and test thoroughly before applying in a production environment.
#       Some settings might require a reboot to take effect.
#       HKU entries are mapped to HKCU (CurrentUser) - this will only affect the user running the script.
#       For system-wide user settings, consider Group Policy User Configuration or modifying the Default User profile registry hive.

# 18.1.1.2 Prevent enabling lock screen slide show
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -Name "NoLockScreenSlideshow" -Value 1 -Type DWord

# 1.1.6 Relax minimum password length limits
New-Item -Path "HKLM:\System\CurrentControlSet\Control\SAM"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\SAM" -Name "RelaxMinimumPasswordLengthLimits" -Value 1 -Type DWord

# 18.10.12.1 Turn off cloud consumer account state content
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\CloudContent"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\CloudContent" -Name "DisableConsumerAccountStateContent" -Value 1 -Type DWord

# 18.10.12.3 Turn off Microsoft consumer experiences
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\CloudContent"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Value 1 -Type DWord

# 18.10.13.1 Require pin for pairing (Setting to 'First Time' as one compliant option)
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Connect"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Connect" -Name "RequirePinForPairing" -Value 1 -Type DWord

# 18.10.14.1 Do not display the password reveal button
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\CredUI"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\CredUI" -Name "DisablePasswordReveal" -Value 1 -Type DWord

# 18.10.14.2 Enumerate administrator accounts on elevation
New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\CredUI"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\CredUI" -Name "EnumerateAdministrators" -Value 0 -Type DWord

# 18.10.14.3 Prevent the use of security questions for local accounts
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\System"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Name "NoLocalPasswordResetQuestions" -Value 1 -Type DWord

# 18.10.15.1 Allow Diagnostic Data (Setting to 'Send required' as one compliant option)
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Value 1 -Type DWord

# 18.10.15.3 Disable OneSettings Downloads
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "DisableOneSettingsDownloads" -Value 1 -Type DWord

# 18.10.15.4 Do not show feedback notifications
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Value 1 -Type DWord

# 18.10.15.5 Enable OneSettings Auditing
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "EnableOneSettingsAuditing" -Value 1 -Type DWord

# 18.10.15.6 Limit Diagnostic Log Collection
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "LimitDiagnosticLogCollection" -Value 1 -Type DWord

# 18.10.15.7 Limit Dump Collection
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" -Name "LimitDumpCollection" -Value 1 -Type DWord

# 18.10.15.8 Toggle user control over Insider builds
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\PreviewBuilds"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\PreviewBuilds" -Name "AllowBuildPreview" -Value 0 -Type DWord

# 18.10.16.1 Download Mode (Setting to 'LAN (1)' as one compliant option NOT Internet (3))
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\DeliveryOptimization"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\DeliveryOptimization" -Name "DODownloadMode" -Value 1 -Type DWord

# 18.10.17.1 Enable App Installer
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Name "EnableAppInstaller" -Value 0 -Type DWord

# 18.10.17.2 Enable App Installer Experimental Features
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Name "EnableExperimentalFeatures" -Value 0 -Type DWord

# 18.10.17.3 Enable App Installer Hash Override
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Name "EnableHashOverride" -Value 0 -Type DWord

# 18.10.17.4 Enable App Installer ms-appinstaller protocol
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\AppInstaller" -Name "EnableMSAppInstallerProtocol" -Value 0 -Type DWord

# 18.10.25.1.1 Application: Control Event Log behavior when the log file reaches its maximum size
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application" -Name "Retention" -Value "0" -Type String # Note: Value is string "0" for Disabled

# 18.10.25.1.2 Application: Specify the maximum log file size (KB) (Setting to minimum compliant 32768)
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application" -Name "MaxSize" -Value 32768 -Type DWord

# 18.10.25.2.1 Security: Control Event Log behavior when the log file reaches its maximum size
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security" -Name "Retention" -Value "0" -Type String # Note: Value is string "0" for Disabled

# 18.10.25.2.2 Security: Specify the maximum log file size (KB) (Setting to minimum compliant 196608)
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security" -Name "MaxSize" -Value 196608 -Type DWord

# 18.10.25.3.1 Setup: Control Event Log behavior when the log file reaches its maximum size
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup" -Name "Retention" -Value "0" -Type String # Note: Value is string "0" for Disabled

# 18.10.25.3.2 Setup: Specify the maximum log file size (KB) (Setting to minimum compliant 32768)
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Setup" -Name "MaxSize" -Value 32768 -Type DWord

# 18.10.25.4.1 System: Control Event Log behavior when the log file reaches its maximum size
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\System"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\System" -Name "Retention" -Value "0" -Type String # Note: Value is string "0" for Disabled

# 18.10.25.4.2 System: Specify the maximum log file size (KB) (Setting to minimum compliant 32768)
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\System"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\System" -Name "MaxSize" -Value 32768 -Type DWord

# 18.10.28.3 Turn off Data Execution Prevention for Explorer
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Name "NoDataExecutionPrevention" -Value 0 -Type DWord

# 18.10.28.4 Turn off heap termination on corruption
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Name "NoHeapTerminationOnCorruption" -Value 0 -Type DWord

# 18.10.28.5 Turn off shell protocol protected mode
New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "PreXPSP2ShellProtocolBehavior" -Value 0 -Type DWord

# 18.10.3.2 Prevent non-admin users from installing packaged Windows apps
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Appx"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Appx" -Name "BlockNonAdminUserInstall" -Value 1 -Type DWord

# 18.10.4.1 Let Windows apps activate with voice while the system is locked
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsActivateWithVoiceAboveLock" -Value 2 -Type DWord

# 18.10.41.1 Block all consumer Microsoft account user authentication
New-Item -Path "HKLM:\Software\Policies\Microsoft\MicrosoftAccount"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\MicrosoftAccount" -Name "DisableUserAuth" -Value 1 -Type DWord

# 18.10.42.10.1 Scan all downloaded files and attachments
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableIOAVProtection" -Value 0 -Type DWord

# 18.10.42.10.2 Turn off real-time protection
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableRealtimeMonitoring" -Value 0 -Type DWord

# 18.10.42.10.3 Turn on behavior monitoring
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableBehaviorMonitoring" -Value 0 -Type DWord

# 18.10.42.10.4 Turn on script scanning
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableScriptScanning" -Value 0 -Type DWord

# 18.10.42.13.1 Scan packed executables
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan" -Name "DisablePackedExeScanning" -Value 0 -Type DWord

# 18.10.42.13.2 Scan removable drives
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan" -Name "DisableRemovableDriveScanning" -Value 0 -Type DWord

# 18.10.42.13.3 Turn on e-mail scanning
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Scan" -Name "DisableEmailScanning" -Value 0 -Type DWord

# 18.10.42.16 Configure detection for potentially unwanted applications
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender" -Name "PUAProtection" -Value 1 -Type DWord

# 18.10.42.17 Turn off Microsoft Defender AntiVirus
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -Value 0 -Type DWord

# 18.10.42.5.1 Configure local setting override for reporting to Microsoft MAPS
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Spynet"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Spynet" -Name "LocalSettingOverrideSpynetReporting" -Value 0 -Type DWord

# 18.10.42.6.1.1 Configure Attack Surface Reduction rules
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR" -Name "ExploitGuard_ASR_Rules" -Value 1 -Type DWord

# 18.10.42.6.1.2 Configure Attack Surface Reduction rules: Set the state for each ASR rule
# Block Office communication application from creating child processes
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "26190899-1602-49e8-8b27-eb1d0a1ce869" -Value 1 -Type DWord
# Block Office applications from creating executable content
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "3b576869-a4ec-4529-8536-b80a7769e899" -Value 1 -Type DWord
# Block abuse of exploited vulnerable signed drivers
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "56a863a9-875e-4185-98a7-b882c64b5ce5" -Value 1 -Type DWord
# Block execution of potentially obfuscated scripts
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "5beb7efe-fd9a-4556-801d-275e5ffc04cc" -Value 1 -Type DWord
# Block Office applications from injecting code into other processes
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "75668c1f-73b5-4cf0-bb93-3ecf5cb7cc84" -Value 1 -Type DWord
# Block Adobe Reader from creating child processes
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c" -Value 1 -Type DWord
# Block Win32 API calls from Office macro
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b" -Value 1 -Type DWord
# Block credential stealing from the Windows local security authority subsystem (lsass.exe)
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2" -Value 1 -Type DWord
# Block untrusted and unsigned processes that run from USB
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4" -Value 1 -Type DWord
# Block executable content from email client and webmail
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550" -Value 1 -Type DWord
# Block JavaScript or VBScript from launching downloaded executable content
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "d3e037e1-3eb8-44c8-a917-57927947596d" -Value 1 -Type DWord
# Block Office applications from creating child processes
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "d4f940ab-401b-4efc-aadc-ad5f3c50688a" -Value 1 -Type DWord
# Block persistence through WMI event subscription
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules" -Name "e6db77e5-3df2-4cf1-b95a-636979351e5b" -Value 1 -Type DWord

# 18.10.42.6.3.1 Prevent users and apps from accessing dangerous websites
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection" -Name "EnableNetworkProtection" -Value 1 -Type DWord

# 18.10.42.7.1 Enable file hash computation feature
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\MpEngine"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows Defender\MpEngine" -Name "EnableFileHashComputation" -Value 1 -Type DWord

# 18.10.43.1 Allow auditing events in Microsoft Defender Application Guard
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "AuditApplicationGuard" -Value 1 -Type DWord

# 18.10.43.2 Allow camera and microphone access in Microsoft Defender Application Guard
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "AllowCameraMicrophoneRedirection" -Value 0 -Type DWord

# 18.10.43.3 Allow data persistence for Microsoft Defender Application Guard
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "AllowPersistence" -Value 0 -Type DWord

# 18.10.43.4 Allow files to download and save to the host operating system from Microsoft Defender Application Guard
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "SaveFilesToHost" -Value 0 -Type DWord

# 18.10.43.5 Configure Microsoft Defender Application Guard clipboard settings: Clipboard behavior setting
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "AppHVSIClipboardSettings" -Value 1 -Type DWord

# 18.10.43.6 Turn on Microsoft Defender Application Guard in Managed Mode
New-Item -Path "HKLM:\Software\Policies\Microsoft\AppHVSI"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\AppHVSI" -Name "AllowAppHVSI_ProviderSet" -Value 1 -Type DWord

# 18.10.50.1 Prevent the usage of OneDrive for file storage
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Value 1 -Type DWord

# 18.10.5.1 Allow Microsoft accounts to be optional
New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "MSAOptional" -Value 1 -Type DWord

# 18.10.56.2.3 Do not allow passwords to be saved
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "DisablePasswordSaving" -Value 1 -Type DWord

# 18.10.56.3.11.1 Do not delete temp folders upon exit
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "DeleteTempDirsOnExit" -Value 1 -Type DWord

# 18.10.56.3.3.3 Do not allow drive redirection
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "fDisableCdm" -Value 1 -Type DWord

# 18.10.56.3.9.1 Always prompt for password upon connection
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "fPromptForPassword" -Value 1 -Type DWord

# 18.10.56.3.9.2 Require secure RPC communication
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "fEncryptRPCTraffic" -Value 1 -Type DWord

# 18.10.56.3.9.3 Require use of specific security layer for remote (RDP) connections
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "SecurityLayer" -Value 2 -Type DWord

# 18.10.56.3.9.4 Require user authentication for remote connections by using Network Level Authentication
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "UserAuthentication" -Value 1 -Type DWord

# 18.10.56.3.9.5 Set client connection encryption level
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services" -Name "MinEncryptionLevel" -Value 3 -Type DWord

# 18.10.57.1 Prevent downloading of enclosures
New-Item -Path "HKLM:\Software\Policies\Microsoft\Internet Explorer\Feeds"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Internet Explorer\Feeds" -Name "DisableEnclosureDownload" -Value 1 -Type DWord

# 18.10.58.3 Allow Cortana
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Value 0 -Type DWord

# 18.10.58.4 Allow Cortana above lock screen
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortanaAboveLock" -Value 0 -Type DWord

# 18.10.58.5 Allow indexing of encrypted files
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search" -Name "AllowIndexingEncryptedStoresOrItems" -Value 0 -Type DWord

# 18.10.58.6 Allow search and Cortana to use location
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search" -Name "AllowSearchToUseLocation" -Value 0 -Type DWord

# 18.10.65.2 Only display the private store within the Microsoft Store
New-Item -Path "HKLM:\Software\Policies\Microsoft\WindowsStore"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\WindowsStore" -Name "RequirePrivateStoreOnly" -Value 1 -Type DWord

# 18.10.65.3 Turn off Automatic Download and Install of updates
New-Item -Path "HKLM:\Software\Policies\Microsoft\WindowsStore"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\WindowsStore" -Name "AutoDownload" -Value 4 -Type DWord

# 18.10.65.4 Turn off the offer to update to the latest version of Windows
New-Item -Path "HKLM:\Software\Policies\Microsoft\WindowsStore"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\WindowsStore" -Name "DisableOSUpgrade" -Value 1 -Type DWord

# 18.10.7.1 Disallow Autoplay for non-volume devices
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Name "NoAutoplayfornonVolume" -Value 1 -Type DWord

# 18.10.71.1 Allow widgets
New-Item -Path "HKLM:\Software\Policies\Microsoft\Dsh"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Dsh" -Name "AllowNewsAndInterests" -Value 0 -Type DWord

# 18.10.7.2 Set the default behavior for AutoRun
New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoAutorun" -Value 1 -Type DWord

# 18.10.7.3 Turn off Autoplay
New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoDriveTypeAutoRun" -Value 255 -Type DWord

# 18.10.75.1.1 Automatic Data Collection
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components" -Name "CaptureThreatWindow" -Value 1 -Type DWord

# 18.10.75.1.2 Notify Malicious
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components" -Name "NotifyMalicious" -Value 1 -Type DWord

# 18.10.75.1.3 Notify Password Reuse
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components" -Name "NotifyPasswordReuse" -Value 1 -Type DWord

# 18.10.75.1.4 Notify Unsafe App
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components" -Name "NotifyUnsafeApp" -Value 1 -Type DWord

# 18.10.75.1.5 Service Enabled
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\WTDS\Components" -Name "ServiceEnabled" -Value 1 -Type DWord

# 18.10.75.2.1 Configure Windows Defender SmartScreen (Explorer)
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "ShellSmartScreenLevel" -Value "Block" -Type String
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Name "EnableSmartScreen" -Value 1 -Type DWord

# 18.10.77.1 Enables or disables Windows Game Recording and Broadcasting
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\GameDVR"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\GameDVR" -Name "AllowGameDVR" -Value 0 -Type DWord

# 18.10.78.1 Enable ESS with Supported Peripherals
New-Item -Path "HKLM:\Software\Microsoft\Policies\PassportForWork\Biometrics"  -ErrorAction SilentlyContinue | Out-Null
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Policies\PassportForWork\Biometrics" -Name "EnableESSwithSupportedPeripherals" -Value 1 -Type DWord