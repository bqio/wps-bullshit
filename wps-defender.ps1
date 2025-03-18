Get-LocalUser | Select-Object Name | ForEach-Object {
    $Path = "C:\Users\" + $_.Name + "\AppData\Local\Kingsoft"

    Write-Host "WPS Bullshit defender started for $Path"

    New-Item -ItemType Directory -Force -Path $Path
    Get-Acl C:\Windows | Set-Acl $Path

    Write-Host "WPS Bullshit defender ended."
}