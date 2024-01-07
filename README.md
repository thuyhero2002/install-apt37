Install APT37 - Atomic Red Team
===
# Description

### Custom of APT37 with 6 phases:
* Phase 1: Initial Access + Execution (Phishing Attachment via Macro)
* Phase 2: Discovery (WINPEAS)
* Phase 3: Persistence (Modifying registry key run key)
* Phase 4: Privilege Escalation (Bypass UAC Fodhelper)
* Phase 5: Credential access (Dumping Web Credentials)
* Phase 6: Backdoor with rdp (non standard port)

# Prerequisite

### Install Atomic Red Team

Install with PowerShell - **Run as Administrator**

```powershell!
Set-ExecutionPolicy Bypass -Scope CurrentUser -Force
Add-MpPreference -ExclusionPath C:\AtomicRedTeam\
IEX (IWR 'https://raw.githubusercontent.com/redcanaryco/invoke-atomicredteam/master/install-atomicredteam.ps1' -UseBasicParsing);
Install-AtomicRedTeam -getAtomics -Force
New-Item -ItemType Directory (split-path $profile) -Force
Set-Content $profile 'Import-Module "C:\AtomicRedTeam\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force'
```
Or if you want to create own Atomic Red Team VM. Check [it](https://github.com/thuyhero2002/build-art-vm).

# Installation

Open PowerShell and copy this command and hit **Enter**

```powershell
IEX (IWR 'https://raw.githubusercontent.com/thuyhero2002/install-apt37/main/installAPT37.ps1' -UseBasicParsing);
```

After this, run `Invoke-AtomicTest APT37 -ShowDetailsBrief` to make sure the installation is complete. It will look like below.

![image](https://hackmd.io/_uploads/r1wDfswup.png)

# Feedback

If you have any issues, contact for more phamdinhthuy2002@gmail.com
