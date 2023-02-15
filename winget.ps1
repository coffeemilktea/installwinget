# Downloads the latest release of Winget currently available on Github Repo
Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/archive/refs/tags/v1.5.441-preview.zip" -OutFile "$env:TEMP\winget.zip"

Expand-Archive -Path "$env:TEMP\winget.zip" -DestinationPath "$env:TEMP\winget"
Move-Item -Path "$env:TEMP\winget\winget.exe" -Destination "C:\Windows\System32\"

# Delete files in Temp from installation
Remove-Item -Path "$env:TEMP\winget.zip"
Remove-Item -Path "$env:TEMP\winget" -Recurse
