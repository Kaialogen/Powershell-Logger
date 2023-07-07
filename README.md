# jack_script

Sources:
Powershell history
Web Browser Databases
Windows tools
  Ip Config
  Adapter Config

Activities Captured
IP Configuration - Captured with IP Config tool and exported
Adapter Configuration - Captured with Adapter Config tool and exported
PowerShell history - Captured with a simple script and exported
Command prompt history - Limited ways to go around doing this, command prompt only saves terminal sessions by default and can extract using doskey /history.
                         Potential for installation of clink or similar to improve the history persisting through sessions
                         Create a more complicated script which will save and execute each command, create an alias and run '[alias] command for every command.
Web Browser History - Used Python to extract data from web browser databases.
                      Potential to use other tools or firewall to view all network traffic, requires admin.
