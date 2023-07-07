# jack_script

## Sources

✓ Powershell history<br>
✓ Web Browser Databases<br>
✓ Windows tools<br>
&nbsp;&nbsp;✓ Ip Config<br>
&nbsp;&nbsp;✓ Adapter Config<br>
  
❌ Event Logs - Useful event logs require administrative privileges to extract.

## Activities Captured

✓ IP Configuration: Captured with IP Config tool and exported<br>
✓ Adapter Configuration: Captured with Adapter Config tool and exported<br>
✓ PowerShell history: Captured with a simple script and exported<br>
❌ Command prompt history:<br>
&nbsp;&nbsp;❌ Limited ways to extract command prompt history. As it only saves terminal sessions by default, there is
&nbsp;&nbsp;potential for installation of clink or similar tools to improve history persistence throughout sessions.
&nbsp;&nbsp;Create a more complicated script that saves and executes each command, creates aliases, and runs '[alias] command' for every command<br>

✓ Web Browser History: Extracted data from web browser databases using Python
&nbsp;&nbsp;✓ Potential to use other tools or firewall to view all network traffic (requires admin privileges)
