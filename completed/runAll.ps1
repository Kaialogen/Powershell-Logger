# Execution of lowpriv.ps1
Write-Host "Executing commandHistory.ps1..."
.\commandHistory.ps1

# Execution of network-info.ps1
Write-Host "Executing networkInfo.ps1..."
.\network-info.ps1

# Execution of websites.py
Write-Host "Executing websites.py..."
Start-Process python.exe -ArgumentList "websites.py" -Wait


Write-Host "Script execution completed."
