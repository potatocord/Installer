$link = "https://github.com/potatocord/Installer/releases/latest/download/PotatocordInstallerCli.exe"

$outfile = "$env:TEMP\PotatocordInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
