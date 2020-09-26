Import-Module ExchangeOnlineManagement
$UserCredential = Get-Credential
Connect-ExchangeOnline -Credential $UserCredential -ShowProgress $true

# This gets the list of members and exports the selected properties to a csv file
Get-DistributionGroupMember -Identity "AlertNetworkActivity" | Select-Object -Property DisplayName, Office, PrimarySmtpAddress | Export-Csv c:\tmp\AlertNetworkActivity.csv
Get-DistributionGroupMember -Identity "AlertHandheldActivity" | Select-Object -Property DisplayName, Office, PrimarySmtpAddress | Export-Csv c:\tmp\AlertHandheldActivity.csv

# Disconnect-ExchangeOnline

