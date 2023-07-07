# Set output paths
$securityEventsOutputPath = "C:\Users\joshe\OneDrive\Desktop\shellScript\EventLogs.csv"
$cmdHistoryOutputPath = "C:\Users\joshe\OneDrive\Desktop\shellScript\CmdHistory.csv"

# Get Security Events with ID 4625
$securityEvents = Get-WinEvent -FilterHashTable @{LogName='Security'; Id=4624} | ForEach-Object {
    $event1 = $_
    $ip4 = if ($event1.Properties[18].Value -ne '%%127.0.0.1') { $event1.Properties[18].Value }
    $ip6 = if ($event1.Properties[19].Value -ne '-') { $event1.Properties[19].Value }
    
    # Only include events with either IPv4 or IPv6 address
    if ($ip4 -or $ip6) {
        New-Object -TypeName PSObject -Property @{
            TimeCreated = $event1.TimeCreated
            Id = $event1.Id
            Level = $event1.LevelDisplayName
            ProviderName = $event1.ProviderName
            Message = $event1.Message
            IPv4 = $ip4
            IPv6 = $ip6
        }
    }
}
$securityEvents | Export-Csv -Path $securityEventsOutputPath -NoTypeInformation -Force


# Get Command Prompt History
$cmdHistory = cmd /c 'doskey /history' | ForEach-Object { 
    New-Object -TypeName PSObject -Property @{
        CommandLine = $_
    } 
}
$cmdHistory | Export-Csv -Path $cmdHistoryOutputPath -NoTypeInformation -Force
