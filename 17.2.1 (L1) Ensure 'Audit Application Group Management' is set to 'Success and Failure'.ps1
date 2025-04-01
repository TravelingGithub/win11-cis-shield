# Check audit policy application with auditpol /get /category:* >c:\auditpolicy.txt rather than gpresult. 
# Advanced audit policies override legacy policies when configured. 
# Default settings differ between client (No Auditing) and server (Success) editions.
# To verify winning Policy gpresult /h C:\GPReport.html

#Set Application Group Management /success:enable /failure:enable
auditpol /set /subcategory:"Application Group Management" /success:enable /failure:enable

#Verify setting - If unchanged must change via GroupPolicy to 'Not Configured'. Than run again.
auditpol /get /subcategory:"Application Group Management"
