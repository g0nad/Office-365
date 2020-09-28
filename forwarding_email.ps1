$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $Session -DisableNameChecking

Get-Mailbox -ResultSize Unlimited | Where {($_.ForwardingSMTPAddress -ne $null) -or ($_.ForwardingAddress -ne $null)} | Select Name, ForwardingSMTPAddress, ForwardingAddress, DeliverToMailboxAndForward | Export-Csv -Path c:\tmp\forwards.csv -NoTypeInformation

