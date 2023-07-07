# jack_script

## Sources

- Powershell history
- Web Browser Databases
- Windows tools
  - Ip Config
  - Adapter Config
- Event Logs - Useful event logs require administrative privileges to extract.
## Activities Captured

- IP Configuration: Captured with IP Config tool and exported
- Adapter Configuration: Captured with Adapter Config tool and exported
- PowerShell history: Captured with a simple script and exported
- Command prompt history:
  - Limited ways to extract command prompt history, as it only saves terminal sessions by default
  - Potential for installation of clink or similar tools to improve history persistence through sessions
  - Create a more complicated script that saves and executes each command, creates aliases, and runs '[alias] command' for every command
- Web Browser History: Extracted data from web browser databases using Python
  - Potential to use other tools or firewall to view all network traffic (requires admin privileges)
wrap each individual line in a colour, the colour will be green
