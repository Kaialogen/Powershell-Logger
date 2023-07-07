function Log-Command {
    param (
        [string]$Command
    )
    
    $logDirectory = "../output"
    $logFile = "commandHistory.csv"

    if (-not (Test-Path $logDirectory)) {
        New-Item -ItemType Directory -Path $logDirectory | Out-Null
    }

    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logEntry = [PSCustomObject]@{
        Timestamp = $timestamp
        Command = $Command
    }

    $logEntry | Export-Csv -Path "$logDirectory/$logFile" -NoTypeInformation -Append
}

# Register the function to be called every time a command is executed
$ExecutionContext.InvokeCommand.CommandNotFoundAction = {
    param($commandName, $traceCommand)

    Log-Command $commandName
}

# Optionally, you can log all the existing commands in the history (if any)
Get-History | ForEach-Object { Log-Command $_.CommandLine }

# Check if this script is already in the PowerShell profile
$scriptPath = $MyInvocation.MyCommand.Path
$scriptLine = ". '$scriptPath'"

if (-not (Test-Path $PROFILE)) {
    # Create the profile file if it doesn't exist
    $profileDirectory = Split-Path $PROFILE -Parent
    if (-not (Test-Path $profileDirectory)) {
        New-Item -ItemType Directory -Path $profileDirectory | Out-Null
    }
    New-Item -ItemType File -Path $PROFILE | Out-Null
}

# Check if the script is already in the profile, if not, add it
$profileContent = Get-Content $PROFILE
if ($profileContent -notcontains $scriptLine) {
    # Add this script to the PowerShell profile
    Add-Content -Path $PROFILE -Value $scriptLine
}