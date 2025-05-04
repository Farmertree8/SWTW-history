function Test-CommandExists {
    param(
        [string]$CommandName
    )
    Get-Command $CommandName -ErrorAction SilentlyContinue *> $null
    $?
}

function Install-Scoop {
    Write-Output "[INFO] Scoop not installed, Installing Scoop"
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    Invoke-RestMethod get.scoop.sh | Invoke-Expression
    $ScoopInstalled = $True
}

function Install-WithScoop {
    param($Name, $Package, $ErrorMessage)
    Write-Output "$Name is not installed"
    $Install = Read-Host "Install with Scoop? (y/N)"
    if ($Install -eq 'y') {
        if (-not $ScoopInstalled) {
            Install-Scoop
        }
        scoop install $Package
    } else {
        Write-Output $ErrorMessage
        exit 1
    }
}

Write-Output "=== Check ==="

$ScoopInstalled = Test-CommandExists scoop

$GitInstalled = Test-CommandExists git
$NodeJSInstalled = Test-CommandExists node
$ObsidianInstalled = (Test-Path "$env:LOCALAPPDATA\Programs\obsidian\obsidian.exe") -or
    ($ScoopInstalled -and (Test-Path "$env:SCOOP\apps\obsidian\current\obsidian.exe"))

if (-not $GitInstalled) {
    Install-WithScoop "Git" "git" "[Error] Install Git you dumb: https://git-scm.com/downloads"
} else {
    Write-Output "[OK] Git installed"
}

if (-not $NodeJSInstalled) {
    Install-WithScoop "Node.js" "nodejs" "[Error] Install Node.js pls: https://nodejs.org/"
} else {
    Write-Output "[OK] Node.js installed"
}

if (-not $ObsidianInstalled) {
    Install-WithScoop "Obsidian" "obsidian" "[Error] Nah go get Obsidian: https://obsidian.md/"
} else {
    Write-Output "[OK] Obsidian installed"
}

Write-Output "`nYou good good."
