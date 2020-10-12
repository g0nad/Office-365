﻿Import-Module activedirectory
get-aduser -filter * -Properties * | select Name, emailaddress, DistinguishedName | ? {($_.DistinguishedName -notlike "*,OU=SharePoint Accounts,*") -and ($_.DistinguishedName -notlike "*,OU=CONTRACTORS,*") -and ($_.DistinguishedName -notlike "*,CN=Users,dc=mis,dc=com")} | Export-Csv "c:\tmp\aduserwithmail.csv"