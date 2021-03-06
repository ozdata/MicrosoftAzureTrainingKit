param([switch]$ResetAzure,[switch]$ResetLocal,[switch]$SetupAzure,[switch]$SetupLocal,[switch]$CleanupLocal,[switch]$CleanupAzure)

if ($SetupLocal.IsPresent) {
    Write-Warning "This script will setup your machine by performing the following tasks:"
    Write-Host ""    
    Write-Host "1. Copy the demo solution to a working directory"
    Write-Host "2. Copy the code snippets for the demo"
}

if ($ResetLocal.IsPresent) {
    Write-Host "This demo does not require any reset step in your local machine" -ForegroundColor Green
    Write-Host ""
}

if ($CleanupLocal.IsPresent) {
    Write-Host "This demo does not require any cleanup step in your local machine" -ForegroundColor Green
    Write-Host ""
}

if ($SetupAzure.IsPresent) {
    Write-Host "This demo does not require any setup step in Windows Azure" -ForegroundColor Green
    Write-Host ""
}

if ($ResetAzure.IsPresent) {
    Write-Host "This demo does not require any reset step in Windows Azure" -ForegroundColor Green
    Write-Host ""
}


if ($CleanupAzure.IsPresent) {
    Write-Host "This demo does not require any cleanup step in Windows Azure" -ForegroundColor Green
    Write-Host ""
}

Write-Host ""

$title = ""
$message = "Are you sure you want to continue?"

$yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes"
$no = New-Object System.Management.Automation.Host.ChoiceDescription "&No"
$options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)
$confirmation = $host.ui.PromptForChoice($title, $message, $options, 1)

if ($confirmation -eq 0) {
    exit 0
}
else {
    exit 1
}


