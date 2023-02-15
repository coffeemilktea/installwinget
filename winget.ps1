# Downloads the latest release of Winget currently available on Github Repo
Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/download/v1.4.10173/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile "$env:TEMP\winget.msixbundle"

Add-AppPackage -path "$env:TEMP\winget.msixbundle"

# Delete files in Temp from installation
Remove-Item -Path "$env:TEMP\winget.msixbundle"
