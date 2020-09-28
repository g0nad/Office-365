$secpasswd = ConvertTo-SecureString "Me23JgNa4j5Q7Xbs8" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("server35448", $secpasswd)
Send-MailMessage -SmtpServer smtp.socketlabs.com -Credential $cred -UseSsl -From 'jpayne@rrsc.com' -To 'payne.james@gmail.com' -Subject 'TEST'