Import-Module AzureAD
# Connect to Azure AD
$Credential = Get-Credential
Connect-AzureAD -Credential $Credential 
Get-AzureADUser -ObjectID jpayne@rrsc.com | Format-Table -Auto

# Connect to SPOnline
$orgName = "rotorooter.onmicrosoft.com"
Connect-SPOService -Url https://$orgName-admin.sharepoint.com -Credential $Credential

# Connect to Teams
Import-Module MicrosoftTeams
$sfboSession = New-CsOnlineSession -Credential $credential
Import-PSSession $sfboSession

# Connect to Exchange
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -Credential $credential -ShowProgress $true

