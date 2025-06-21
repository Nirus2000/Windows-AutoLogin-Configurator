===================================================
           Windows AutoLogin Configurator
===================================================

Author:     https://github.com/Nirus2000  
License:    Open Source (MIT)  
Version:    1.0  
OS Support: Windows 7 / 8 / 10 / 11  
Language:   Batch (.bat)

---------------------------------------------------
DESCRIPTION
---------------------------------------------------

This batch script allows administrators to configure 
automatic user login on Windows machines. It sets the 
required registry keys for Windows to automatically 
log in a user after boot.

This tool is intended for system administrators, 
IT technicians, or power users who need to enable 
autologin on lab PCs, kiosks, or test systems.

---------------------------------------------------
FEATURES
---------------------------------------------------

- Supports Windows 7 through Windows 11
- Plain-text username and password input
- Supports domain or local account configuration
- Administrator privilege check included
- Registry changes applied silently
- Fully offline and portable (no installation)

---------------------------------------------------
HOW TO USE
---------------------------------------------------

1. Right-click the script file and select  
   "Run as administrator".

2. Enter the required user credentials when prompted:
   - Username
   - Password
   - Domain or computer name (optional)

3. After successful configuration, restart the system 
   to activate autologin.

---------------------------------------------------
SECURITY WARNING
---------------------------------------------------

⚠️ The password is stored in clear text in the 
registry at:

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon

This method is insecure and should not be used on 
devices containing sensitive data or connected 
to untrusted networks.

---------------------------------------------------
CREDITS
---------------------------------------------------

Created and maintained by Nirus2000  
GitHub: https://github.com/Nirus2000

This project is open-source and contributions 
are welcome.
