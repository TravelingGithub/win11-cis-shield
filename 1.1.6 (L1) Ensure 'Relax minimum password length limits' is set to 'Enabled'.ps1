#NOTE: Key may not exist in secpol.msc local.sdb till setting is first enabled. (unconfirmed) 
#Making sure Registry Key and value is set looks like best approach. 

# Add Registry Key
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SAM" -Name "RelaxMinimumPasswordLengthLimits" -Value 1 -PropertyType DWORD -Force

#Forcing a Group Policy update
#gpupdate /force

#Verify change
#Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SAM" -Name "RelaxMinimumPasswordLengthLimits" | Format-List

