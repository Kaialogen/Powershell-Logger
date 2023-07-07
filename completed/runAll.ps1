do {
    Write-Host "Please choose a script to execute:"
    Write-Host "1. Command History data"
    Write-Host "2. Network config data"
    Write-Host "3. Website history data"
    Write-Host "4. Exit"

    $choice = Read-Host "Enter the number corresponding to your choice"

    switch ($choice) {
        "1" {
            Write-Host "Executing commandHistory.ps1..."
            .\commandHistory.ps1
        }
        "2" {
            Write-Host "Executing network-info.ps1..."
            .\network-info.ps1
        }
        "3" {
            Write-Host "Executing websites.py..."
            Start-Process python.exe -ArgumentList "websites.py" -Wait
        }
        "4" {
            Write-Host "Exiting."
            break
        }
        default {
            Write-Host "Invalid choice. Please enter a number between 1 and 4."
        }
    }
} while ($choice -ne "4")

Write-Host "Script execution completed."
