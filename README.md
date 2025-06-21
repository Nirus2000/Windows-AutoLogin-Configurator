# Windows AutoLogin Configurator

**Author:** [Nirus2000 on GitHub](https://github.com/Nirus2000)  
**License:** MIT (Open Source)  
**Version:** 1.0  
**Supported OS:** Windows 7 / 8 / 10 / 11  
**Language:** Batch (`.bat`)

---

## Description

This batch script enables administrators to configure automatic user login on Windows machines. It modifies the necessary registry keys to allow Windows to automatically log in a specific user account upon boot.

This tool is intended for system administrators, IT technicians, or power users who need to enable autologin on lab machines, kiosks, test environments, or similar non-sensitive setups.

---

## Features

- Supports Windows 7 through Windows 11  
- Accepts plain-text username and password  
- Supports both domain and local accounts  
- Includes administrator privilege verification  
- Applies registry changes silently  
- Fully offline and portable (no installation required)

---

## Usage Instructions

1. Right-click the script file and select  
   **“Run as administrator”**.

2. When prompted, enter the following credentials:
   - **Username**
   - **Password**
   - **Domain** or **Computer Name** (optional)

3. After successful configuration, **restart the system** to activate autologin.

---

## Credits

Created and maintained by [Nirus2000](https://github.com/Nirus2000)  
This project is open-source. Contributions are welcome.
