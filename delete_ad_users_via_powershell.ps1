#Import-Csv C:\tmp\DisabledUsers.csv | Foreach-Object {Remove-ADUser -Identity $_.SamAccountName -Confirm:$False }

Get-ADUser -Filter 'enabled -eq $false' | Export-Csv -Path c:\tmp\disabledusers.csv -NoTypeInformation
