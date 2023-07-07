# jack_script

## Sources

✓ Powershell history<br>
✓ Web Browser Databases<br>
✓ Windows tools<br>
  - Ip Config<br>
  - Adapter Config<br>
❌ Event Logs - Useful event logs require administrative privileges to extract.<br>
## Activities Captured

✓ IP Configuration: Captured with IP Config tool and exported<br>
✓ Adapter Configuration: Captured with Adapter Config tool and exported<br>
✓ PowerShell history: Captured with a simple script and exported<br>
❌ Command prompt history:<br>
  - Limited ways to extract command prompt history. As it only saves terminal sessions by default, there is<br>
    Potential for installation of clink or similar tools to improve history persistence throughout sessions.<br>
    Create a more complicated script that saves and executes each command, creates aliases, and runs '[alias] command' for every command<br>
✓ Web Browser History: Extracted data from web browser databases using Python<br>
  - Potential to use other tools or firewall to view all network traffic (requires admin privileges)<br>
