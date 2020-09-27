Import-Module ExchangeOnlineManagement
$UserCredential = Get-Credential
Connect-ExchangeOnline -Credential $UserCredential -ShowProgress $true

Get-DistributionGroup -Anr alert | Format-Table Name, PrimarySmtpAddress, ManagedBy -Auto

# Disconnect-ExchangeOnline
