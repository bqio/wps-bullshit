$Path = "$Env:LOCALAPPDATA\Kingsoft"

Write-Host "WPS Bullshit defender started."

New-Item -ItemType Directory -Force -Path $Path
Get-Acl C:\Windows | Set-Acl $Path

Write-Host "WPS Bullshit defender ended."