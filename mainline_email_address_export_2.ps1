Get-ADUser -Filter * -Properties DisplayName, EmailAddress, distinguishedname, Office | select DisplayName, EmailAddress, distinguishedname, Office | Export-CSV "C:\tmp\Email_Addresses.csv"
