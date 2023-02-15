# Download the latest release of Winget from GitHub
Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/latest/download/winget-cli-windows-x86_64.zip" -OutFile "$env:TEMP\winget.zip"

# Extract the contents of the ZIP file to a temporary directory
Expand-Archive -Path "$env:TEMP\winget.zip" -DestinationPath "$env:TEMP\winget"

# Move the Winget executable to a directory in the system's PATH
Move-Item -Path "$env:TEMP\winget\winget.exe" -Destination "C:\Windows\System32\"

# Clean up the temporary files
Remove-Item -Path "$env:TEMP\winget.zip"
Remove-Item -Path "$env:TEMP\winget" -Recurse
