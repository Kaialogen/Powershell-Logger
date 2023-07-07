$powershellHistoryOutputPath = "C:\Users\joshe\OneDrive\Desktop\shellScript\output\PowershellHistory.csv"

# Get Powershell History
$powershellHistory = Get-History | ForEach-Object { 
    New-Object -TypeName PSObject -Property @{
        Timestamp = $_.StartExecutionTime
        CommandLine = $_.CommandLine
    } 
}
$powershellHistory | Export-Csv -Path $powershellHistoryOutputPath -NoTypeInformation -Force

