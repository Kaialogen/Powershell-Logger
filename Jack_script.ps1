# Set output paths
$firewallLogPath = "$env:windir\system32\LogFiles\Firewall\pfirewall.log"
$webTrafficOutputPath = "C:\Users\kaial\Desktop\WebTraffic.csv"
$securityEventsOutputPath = "C:\Users\kaial\Desktop\EventLogs.csv"
$powershellHistoryOutputPath = "C:\Users\kaial\Desktop\PowershellHistory.csv"

# Parse Windows Firewall logs for web traffic
$webTraffic = Get-Content -Path $firewallLogPath -ErrorAction Stop |
    ConvertFrom-Csv -Delimiter ' ' -Header @("date","time","action","protocol","src-ip","dest-ip","src-port","dest-port","size","tcpflags","tcpsyn","tcpack","tcpwin","icmptype","icmpcode","info","path") |
    Where-Object {($_.'dest-port' -eq '80' -or $_.'dest-port' -eq '443') -and $_.action -eq 'ALLOW'}

$webTraffic | Export-Csv -Path $webTrafficOutputPath -NoTypeInformation -Force

# Get Security Events with ID 4624
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

# Get Powershell History
$powershellHistory = Get-History | ForEach-Object { 
    New-Object -TypeName PSObject -Property @{
        Timestamp = $_.StartExecutionTime
        CommandLine = $_.CommandLine
    } 
}
$powershellHistory | Export-Csv -Path $powershellHistoryOutputPath -NoTypeInformation -Force