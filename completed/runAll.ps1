# Execution of lowpriv.ps1
Write-Host "Executing commandHistory.ps1..."
Start-Process powershell.exe -ArgumentList "-ExecutionPolicy Bypass -File 'commandHistory.ps1'" -Wait

# Execution of network-info.ps1
Write-Host "Executing networkInfo.ps1..."
Start-Process powershell.exe -ArgumentList "-ExecutionPolicy Bypass -File 'networkInfo.ps1'" -Wait

# Execution of websites.py
Write-Host "Executing websites.py..."
Start-Process python.exe -ArgumentList "websites.py" -Wait

Write-Host "Script execution completed."
