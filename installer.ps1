Write-Host "Installing Chocolatey..."
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Write-Host "Installing Chocolatey...[OK]"
Write-Host "Installing tools..."
$TOOLS = "firefox", "googlechrome", "tor-browser", "go", "python2", "python", "php", "wireshark", "nmap", "burp-suite-free-edition", "7zip", "vscode", "git", "mysql", "hxd", "telegram", "neovim", "discord", "nodejs", "nginx", "apache-httpd", "adb", "mitmproxy", "powershell-core", "dotpeek", "pycharm-community", "goland"
for ($i = 0; $i -lt $TOOLS.Length; $i++) {
    Write-Host "Installing $($TOOLS[$i])..."
    choco install $TOOLS[$i] -y
}
Write-Host "Installing sqlmap..."
py -3 -m pip install sqlmap
Write-Host "Downloading XSStrike..."
git clone https://github.com/s0md3v/XSStrike.git $HOME\Tools\XSStrike
Write-Host "Downlloading DangerousZone Pack...."
git clone https://github.com/malwares/DangerousZone $HOME\Tools\DangerousZone
Write-Host "Downloading SecLists..."
git clone https://github.com/danielmiessler/SecLists $HOME\Tools\SecLists
Write-Host "Installing tools...[OK]"