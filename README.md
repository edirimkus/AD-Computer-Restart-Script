# AD Computer Restart Script

## Overview
This PowerShell script automates the process of restarting multiple Active Directory (AD) computers that match specific name patterns. It is designed to be used by system administrators to efficiently manage computer reboots within an AD environment.

## Script Breakdown
1. **Import Active Directory Module**: Ensures the necessary cmdlets for managing AD are available.
   ```powershell
   Import-Module ActiveDirectory
   ```

2. **Fetch Computers**: Retrieves a list of AD computers with names starting with "PS1111" or "PS2222".
   ```powershell
   $computers = Get-ADComputer -Filter {Name -like "PS1111*" -or Name -like "PS2222*"} | Select-Object -ExpandProperty Name
   ```

3. **Restart Computers**: Restarts the fetched computers forcefully and runs the command as a background job.
   ```powershell
   Restart-Computer -ComputerName $computers -Force -AsJob
   ```

## Usage

1. **Run the Script**: Execute the script in a PowerShell session with appropriate permissions.
   ```powershell
   .\restart-ad-computers.ps1
   ```

2. **Monitor Jobs**: Check the progress of the restart jobs in the PowerShell job queue.
   ```powershell
   Get-Job
   ```

## License
This script is licensed under the MIT License. See the LICENSE file for details.


