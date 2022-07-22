Write-Host "Installing Chocolatey..."
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Write-Host "Installing Chocolatey...[OK]"
Write-Host "Installing tools..."
$TOOLS = "firefox", "googlechrome", "tor-browser", "go", "python2", "python", "php", "wireshark", "nmap", "burp-suite-free-edition", "7zip", "vscode", "git", "mysql", "hxd", "telegram", "neovim", "discord", "nodejs", "nginx", "adb", "mitmproxy", "powershell-core", "dotpeek", "pycharm-community", "goland", "ghidra", "jadx", "virtualbox", "putty", "processhacker", "zig", "openssl", "warp", "psiphon", "openvpn"
for ($i = 0; $i -lt $TOOLS.Length; $i++) {
    Write-Host "Installing $($TOOLS[$i])..."
    choco install $TOOLS[$i] -y
}
refreshenv
Write-Host "Installing sqlmap..."
py -3 -m pip install sqlmap
Write-Host "Installing MetaSploit Framework..."
$client = New-Object System.Net.WebClient
$client.DownloadFile("https://windows.metasploit.com/metasploitframework-latest.msi", "metasploitframework-latest.msi")
Start-Process metasploitframework-latest.msi -ArgumentList "/quiet /passive /a"
Write-Host "Installing tools...[OK]"