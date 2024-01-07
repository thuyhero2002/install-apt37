$downloadDir = "C:\AtomicRedTeam\atomics"

$repoUrl = "https://github.com/thuyhero2002/install-apt37/archive/refs/heads/main.zip"
$zipFile = "$downloadDir\APT37.zip"

Write-Host "Downloading repository..." -ForegroundColor Cyan
Invoke-WebRequest -Uri $repoUrl -OutFile $zipFile

Write-Host "Extracting repository..." -ForegroundColor Cyan
Expand-Archive -Path $zipFile -DestinationPath $downloadDir

Remove-Item $zipFile

Write-Host "Adding ID's APT37..." -ForegroundColor Cyan

$file = "C:\AtomicRedTeam\atomics\used_guids.txt"
$lineToAdd = "nhom74-cdkn"
Add-Content -Path $file -Value $lineToAdd

Remove-Item "C:\AtomicRedTeam\atomics\APT37\installAPT37.ps1"

Write-Host "Complete!" -ForegroundColor Cyan



