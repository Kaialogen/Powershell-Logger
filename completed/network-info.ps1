# Get IP configuration information
$ipConfig = Get-NetIPAddress | Select-Object -Property IPAddress, InterfaceAlias, AddressFamily, PrefixLength

# Get network adapter configuration information
$adapterConfig = Get-NetAdapter | Select-Object -Property Name, InterfaceDescription, ifIndex, Status, MacAddress, LinkSpeed, MediaType

# Output IP configuration information to a file
Write-Host "Saving IP Configuration to file..."
$ipConfig | Format-Table | Out-File -FilePath "../output/ip_config.txt"

# Output network adapter configuration information to a file
Write-Host "Saving Network Adapter Configuration to file..."
$adapterConfig | Format-Table | Out-File -FilePath "../output/adapter_config.txt"

Write-Host "Script execution completed."
