Import-Module ExchangeOnlineManagement
$UserCredential = Get-Credential
Connect-ExchangeOnline -Credential $UserCredential -ShowProgress $true

# Find the DistinguishedName of the person you want
Get-Mailbox -Identity mpearmon | Format-List DistinguishedName

# Thent his returns all groups where that person is the owner
Get-UnifiedGroup -Filter { ManagedBy -eq 'CN=Mindy Pearmon,OU=rotorooter.onmicrosoft.com,OU=Microsoft Exchange Hosted Organizations,DC=NAMPR08A005,DC=PROD,DC=OUTLOOK,DC=COM' }
