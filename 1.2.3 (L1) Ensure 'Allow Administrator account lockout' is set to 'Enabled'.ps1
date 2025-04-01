$newValue = 1  # Set your desired new value here

#Copies setting to configuration file(secpol.cfg) from local.sdb
secedit /export /cfg C:\Windows\temp\secpol.cfg

 #Find-and-Replace to set AllowAdministratorLockout = 1
 #'\d+' is any integer value
(Get-Content C:\Windows\temp\secpol.cfg) -replace 'AllowAdministratorLockout = \d+', "AllowAdministratorLockout = $newValue" | Set-Content C:\Windows\temp\secpol.cfg


#Edit local.sdb SECURITYPOLICY area to match secpol.cfg
secedit /configure /db C:\Windows\security\local.sdb /cfg C:\Windows\temp\secpol.cfg /areas SECURITYPOLICY

#Restart needed to apply change of setting.
#Echo Restart to apply settings.

#Forcing a Group Policy update
#gpupdate /force