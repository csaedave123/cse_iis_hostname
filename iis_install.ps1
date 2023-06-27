# Install IIS
Add-WindowsFeature Web-Server

# Set the hostname
$hostname = $env:COMPUTERNAME

# Update the default HTML page
$content = @"
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to My IIS Web Server</title>
</head>
<body>
    <h1>Hello from $hostname!</h1>
</body>
</html>
"@

$content | Out-File -FilePath 'C:\inetpub\wwwroot\index.html'
