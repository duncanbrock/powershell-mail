$credential = Get-Credential
$credential.Password | ConvertFrom-SecureString | Set-Content encrypted_pwd.txt
