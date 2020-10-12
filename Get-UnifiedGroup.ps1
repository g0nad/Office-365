Import-Module Connect-ExchangeOnline
$UserCredential = Get-Credential
Connect-ExchangeOnline -Credential $UserCredential -ShowProgress $true

Get-UnifiedGroup -Identity "Alert" | Format-List DisplayName, EmailAddresses, ManagedBy
