# Install The Module
# https://docs.microsoft.com/en-us/microsoft-365/enterprise/connect-to-microsoft-365-powershell?view=o365-worldwide#connect-with-the-azure-active-directory-powershell-for-graph-module
Import-Module AzureAD
$Credential = Get-Credential
Connect-AzureAD -Credential $Credential 
Get-AzureADUser -ObjectID jeblin@rrsc.com | Format-Table -Auto





# Disconnect-AzureAD
