#Set PNP Activity /success:enable /failure:enable
auditpol /set /subcategory:"Plug and Play Events" /success:enable

#Verify setting - If unchanged must change via GroupPolicy to 'Not Configured'. Than run again.
auditpol /get /subcategory:"Plug and Play Events"
