# Start by creating some variables.
$sender = username@gmail.com
$recipient = recipient@gmail.com
$smtp_server = smtp.gmail.com
$smtp_port = 587
$subject = "This is an automated email"
$body = "This is the body of the message!"
$attachment = report.txt

# Read string from encryption file and convert to password
$encrypted_pwd = Get-Content encrypted_pwd.txt
$pwd = $encrypted_pwd | ConvertTo-SecureString

# Create an object to hold the credentials
$credentials = New-Object System.Management.Automation.PSCredential - ArgumentList $sender, $pwd

# This is the command to send the message
Send-MailMessage -Credential $credentials -UseSsL -To $recipient -From $sender -SMTPServer $smtp_server -port $smtp_port -Subject $subject -BodyAsHTML $body -Attachment $attachment
