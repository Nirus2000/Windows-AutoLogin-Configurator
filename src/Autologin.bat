@echo off
setlocal enabledelayedexpansion

:: ==========================================
::   Initialization
:: ==========================================
cls
echo.
echo ----------------------------------------
echo          AUTOLOGIN CONFIGURATION
echo ----------------------------------------
echo  (c) 2025 Open Source Project
echo  by https://github.com/Nirus2000
echo ----------------------------------------
echo.
echo [INFO] This script is intended for Windows 7 to Windows 11.
echo.

:: ==========================================
::   Check for administrator privileges
:: ==========================================
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Administrator privileges are required!
    echo [NOTE] Please run the script with right-click "Run as administrator".
    pause
    exit /b 1
) else (
    echo [OK] Administrator privileges confirmed.
)
echo.

:: ==========================================
::   Enter user information
:: ==========================================
set /p USERNAME=Enter the username: 
if "%USERNAME%"=="" (
    echo [ERROR] Username cannot be empty.
    pause
    exit /b 1
)

set /p PASSWORD=Enter the password (Warning: will be stored in plain text): 
if "%PASSWORD%"=="" (
    echo [ERROR] Password cannot be empty.
    pause
    exit /b 1
)

set /p DOMAINE=Enter the domain or computer name (leave empty for local account): 

echo.
echo ----------------------------------------
echo [INFO] Applying configuration...
echo ----------------------------------------
echo.

:: ==========================================
::   Set autologin in registry
:: ==========================================
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /t REG_SZ /d 1 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /t REG_SZ /d "%USERNAME%" /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /t REG_SZ /d "%PASSWORD%" /f >nul

if not "%DOMAINE%"=="" (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultDomainName /t REG_SZ /d "%DOMAINE%" /f >nul
    echo [INFO] Domain/Computer name set to '%DOMAINE%'.
) else (
    reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultDomainName /f >nul 2>&1
    echo [INFO] Local account used, domain removed.
)

echo.
echo ----------------------------------------
echo [SUCCESS] Autologin has been configured successfully.
echo [INFO] Please restart the computer to activate automatic login.
echo ----------------------------------------
pause
exit /b
