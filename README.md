# jack_script

## Sources

<span style="color: green;">- Powershell history</span><br>
<span style="color: green;">- Web Browser Databases</span><br>
<span style="color: green;">- Windows tools</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">- Ip Config</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">- Adapter Config</span><br>
<span style="color: red;">- Event Logs - Useful event logs require administrative privileges to extract.</span>

## Activities Captured

<span style="color: green;">- IP Configuration: Captured with IP Config tool and exported</span><br>
<span style="color: green;">- Adapter Configuration: Captured with Adapter Config tool and exported</span><br>
<span style="color: green;">- PowerShell history: Captured with a simple script and exported</span><br>
<span style="color: red;">- Command prompt history:</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: red;">- Limited ways to extract command prompt history, as it only saves terminal sessions by default</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: red;">- Potential for installation of clink or similar tools to improve history persistence through sessions</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: red;">- Create a more complicated script that saves and executes each command, creates aliases, and runs '[alias] command' for every command</span><br>
<span style="color: green;">- Web Browser History: Extracted data from web browser databases using Python</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">- Potential to use other tools or firewall to view all network traffic (requires admin privileges)</span>
