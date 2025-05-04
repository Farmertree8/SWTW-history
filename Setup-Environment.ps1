function Test-CommandExists {
    param(
        [string]$CommandName
    )
    Get-Command $CommandName -ErrorAction SilentlyContinue *> $null
    $?
}

Write-Output "=== Check ==="

$GitInstalled = Test-CommandExists git
$NodeJSInstalled = Test-CommandExists node

if (-not $GitInstalled) {
    Write-Output "[Error] Install Git you dumb: https://git-scm.com/downloads"
    exit 1
} else {
    Write-Output "[OK] Git installed"
}

if (-not $NodeJSInstalled) {
    Write-Output "[Error] Install Node.js pls: https://nodejs.org/"
    exit 1
} else {
    Write-Output "[OK] Node.js installed"
}

Write-Output "`nYou good good."
