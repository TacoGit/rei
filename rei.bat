::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   ===== open sourced by tanos for every1 =====   ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
title just a tool
setlocal enabledelayedexpansion
call :setESC
chcp 65001 > nul
set "currentDir=%~dp0"

if "%~1"=="finish" goto finished
if "%~1"=="10" goto lastproc
if "%~1"=="w10" goto lastproc

for /f "tokens=1-4 delims=:.," %%a in ("%time%") do (
    set /a start_h=1%%a-100, start_m=1%%b-100, start_s=1%%c-100
)

:dia
title rei - %USERNAME%
echo %ESC%[36m [%ESC%[0m =================================%ESC%[36m ]%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⡚⠃⠉⠉⠒⠄⠀⠀⠀⠀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⣠⠊⠂⠀⠀⠀⠀⠀⠀⠀⢀⠔⠂⢌⠁⠢⣄⠀⠀⠈⠢⡀⠀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⢀⠔⢁⠔⠃⢨⢃⠄⡐⠄⠀⠠⠁⠀⠀⠀⠡⠀⠈⡢⡈⠢⡀⢔⡀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠂⡐⡍⠀⣎⠔⡁⡌⡌⢀⠂⠁⠀⠀⠀⢀⠀⢃⢂⢰⠚⢄⠈⠢⢣⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⡜⢀⠥⠊⢠⡰⣰⢡⠀⡄⠀⠀⠀⠀⠀⠐⠀⠈⡈⡄⢃⠈⡆⠀⠩⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠸⠀⡈⠀⢠⡗⡵⢸⠈⠀⣇⠁⠀⢀⠘⠀⢀⡆⠀⠁⠘⠸⠀⢡⠀⠐⡃⠀%ESC%[0m
echo      %ESC%[36m⠀⢸⡈⠀⠀⣿⢩⡯⣽⣦⣔⣧⢀⠀⢸⠇⣿⡌⣠⠰⡄⢀⠀⡱⠘⣡⠀⠇⠀%ESC%[0m
echo      %ESC%[36m⠀⢰⣇⣇⣄⢽⢆⠀⠛⠟⠀⢸⢼⡄⢸⡬⠟⢶⣶⣭⡹⣺⠀⣷⠀⣿⡇⡀⠀%ESC%[0m
echo      %ESC%[36m⠀⠈⡋⡍⢿⠜⡪⡢⠀⠀⠀⠀⠂⡊⡇⠣⠀⠙⠛⠀⠑⣱⣀⠏⡗⢜⡜⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⢹⡀⠱⣕⢵⢄⠀⠀⠀⠀⠟⠀⠀⠀⠀⠄⢚⢴⠃⣸⠺⠀⢸⠱⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⠓⠡⡘⣷⣕⠀⠀⠀⠀⠀⠀⠀⠀⢈⡩⠒⡡⡖⠃⢠⢀⡬⠘⠁⠀%ESC%[0m
echo      %ESC%[36m⠀⠈⠐⠂⢀⡴⠸⡳⡸⡃⢀⠀⠀⠀⢀⡨⠝⢋⡴⣻⣺⢁⡔⠊⣁⠔⠚⠃⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⡜⠁⢰⢱⠐⢮⡢⢑⣒⣺⣿⣽⡿⠋⠁⢻⡏⣹⠉⡹⠋⡰⠂⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⢀⡠⣞⠀⡠⠃⠀⢷⡄⢻⣶⠞⠋⠉⢀⣠⠆⠀⣼⣿⣿⠋⠠⠘⠁⡀⠀⣠%ESC%[0m
echo      %ESC%[36m⣰⠋⠑⣤⠟⠁⠀⠀⠀⠀⠘⠛⠀⠀⠘⠉⠀⠀⠀⢹⢻⣤⣿⡓⠚⠚⢛⠉⠁%ESC%[0m
echo %ESC%[36m [%ESC%[0m =================================%ESC%[36m ]%ESC%[0m
echo.
echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m This tool is specifically made for Windows 11

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m This script must be run as Administrator.
    pause>nul
    exit
)
systeminfo | findstr /B /C:"OS Name" | findstr /C:"Windows 11" >nul && goto lastproc || echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Your machine is not eligible with this tool.
pause>nul
exit

:lastproc
cls
echo %ESC%[36m [%ESC%[0m =================================%ESC%[36m ]%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⡚⠃⠉⠉⠒⠄⠀⠀⠀⠀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⣠⠊⠂⠀⠀⠀⠀⠀⠀⠀⢀⠔⠂⢌⠁⠢⣄⠀⠀⠈⠢⡀⠀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⢀⠔⢁⠔⠃⢨⢃⠄⡐⠄⠀⠠⠁⠀⠀⠀⠡⠀⠈⡢⡈⠢⡀⢔⡀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠂⡐⡍⠀⣎⠔⡁⡌⡌⢀⠂⠁⠀⠀⠀⢀⠀⢃⢂⢰⠚⢄⠈⠢⢣⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⡜⢀⠥⠊⢠⡰⣰⢡⠀⡄⠀⠀⠀⠀⠀⠐⠀⠈⡈⡄⢃⠈⡆⠀⠩⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠸⠀⡈⠀⢠⡗⡵⢸⠈⠀⣇⠁⠀⢀⠘⠀⢀⡆⠀⠁⠘⠸⠀⢡⠀⠐⡃⠀%ESC%[0m
echo      %ESC%[36m⠀⢸⡈⠀⠀⣿⢩⡯⣽⣦⣔⣧⢀⠀⢸⠇⣿⡌⣠⠰⡄⢀⠀⡱⠘⣡⠀⠇⠀%ESC%[0m
echo      %ESC%[36m⠀⢰⣇⣇⣄⢽⢆⠀⠛⠟⠀⢸⢼⡄⢸⡬⠟⢶⣶⣭⡹⣺⠀⣷⠀⣿⡇⡀⠀%ESC%[0m
echo      %ESC%[36m⠀⠈⡋⡍⢿⠜⡪⡢⠀⠀⠀⠀⠂⡊⡇⠣⠀⠙⠛⠀⠑⣱⣀⠏⡗⢜⡜⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⢹⡀⠱⣕⢵⢄⠀⠀⠀⠀⠟⠀⠀⠀⠀⠄⢚⢴⠃⣸⠺⠀⢸⠱⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⠓⠡⡘⣷⣕⠀⠀⠀⠀⠀⠀⠀⠀⢈⡩⠒⡡⡖⠃⢠⢀⡬⠘⠁⠀%ESC%[0m
echo      %ESC%[36m⠀⠈⠐⠂⢀⡴⠸⡳⡸⡃⢀⠀⠀⠀⢀⡨⠝⢋⡴⣻⣺⢁⡔⠊⣁⠔⠚⠃⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⡜⠁⢰⢱⠐⢮⡢⢑⣒⣺⣿⣽⡿⠋⠁⢻⡏⣹⠉⡹⠋⡰⠂⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⢀⡠⣞⠀⡠⠃⠀⢷⡄⢻⣶⠞⠋⠉⢀⣠⠆⠀⣼⣿⣿⠋⠠⠘⠁⡀⠀⣠%ESC%[0m
echo      %ESC%[36m⣰⠋⠑⣤⠟⠁⠀⠀⠀⠀⠘⠛⠀⠀⠘⠉⠀⠀⠀⢹⢻⣤⣿⡓⠚⠚⢛⠉⠁%ESC%[0m
echo %ESC%[36m [%ESC%[0m =================================%ESC%[36m ]%ESC%[0m
echo.
if "%~1"=="10" (
    echo %ESC%[33m[%ESC%[0m F %ESC%[33m]%ESC%[0m Forced the script to run on the current machine.
) else (
    echo %ESC%[32m[%ESC%[0m v %ESC%[32m]%ESC%[0m The current machine is eligible for this tool.
)
echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Press ENTER to launch the tool.
pause>nul
goto tool

:tool
cls
echo %ESC%[36m [%ESC%[0m =================================%ESC%[36m ]%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⡚⠃⠉⠉⠒⠄⠀⠀⠀⠀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⣠⠊⠂⠀⠀⠀⠀⠀⠀⠀⢀⠔⠂⢌⠁⠢⣄⠀⠀⠈⠢⡀⠀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⢀⠔⢁⠔⠃⢨⢃⠄⡐⠄⠀⠠⠁⠀⠀⠀⠡⠀⠈⡢⡈⠢⡀⢔⡀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠂⡐⡍⠀⣎⠔⡁⡌⡌⢀⠂⠁⠀⠀⠀⢀⠀⢃⢂⢰⠚⢄⠈⠢⢣⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⡜⢀⠥⠊⢠⡰⣰⢡⠀⡄⠀⠀⠀⠀⠀⠐⠀⠈⡈⡄⢃⠈⡆⠀⠩⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠸⠀⡈⠀⢠⡗⡵⢸⠈⠀⣇⠁⠀⢀⠘⠀⢀⡆⠀⠁⠘⠸⠀⢡⠀⠐⡃⠀%ESC%[0m
echo      %ESC%[36m⠀⢸⡈⠀⠀⣿⢩⡯⣽⣦⣔⣧⢀⠀⢸⠇⣿⡌⣠⠰⡄⢀⠀⡱⠘⣡⠀⠇⠀%ESC%[0m
echo      %ESC%[36m⠀⢰⣇⣇⣄⢽⢆⠀⠛⠟⠀⢸⢼⡄⢸⡬⠟⢶⣶⣭⡹⣺⠀⣷⠀⣿⡇⡀⠀%ESC%[0m
echo      %ESC%[36m⠀⠈⡋⡍⢿⠜⡪⡢⠀⠀⠀⠀⠂⡊⡇⠣⠀⠙⠛⠀⠑⣱⣀⠏⡗⢜⡜⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⢹⡀⠱⣕⢵⢄⠀⠀⠀⠀⠟⠀⠀⠀⠀⠄⢚⢴⠃⣸⠺⠀⢸⠱⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⠓⠡⡘⣷⣕⠀⠀⠀⠀⠀⠀⠀⠀⢈⡩⠒⡡⡖⠃⢠⢀⡬⠘⠁⠀%ESC%[0m
echo      %ESC%[36m⠀⠈⠐⠂⢀⡴⠸⡳⡸⡃⢀⠀⠀⠀⢀⡨⠝⢋⡴⣻⣺⢁⡔⠊⣁⠔⠚⠃⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⡜⠁⢰⢱⠐⢮⡢⢑⣒⣺⣿⣽⡿⠋⠁⢻⡏⣹⠉⡹⠋⡰⠂⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⢀⡠⣞⠀⡠⠃⠀⢷⡄⢻⣶⠞⠋⠉⢀⣠⠆⠀⣼⣿⣿⠋⠠⠘⠁⡀⠀⣠%ESC%[0m
echo      %ESC%[36m⣰⠋⠑⣤⠟⠁⠀⠀⠀⠀⠘⠛⠀⠀⠘⠉⠀⠀⠀⢹⢻⣤⣿⡓⠚⠚⢛⠉⠁%ESC%[0m
echo %ESC%[36m [%ESC%[0m =================================%ESC%[36m ]%ESC%[0m
echo.
echo %ESC%[36m[%ESC%[0m ... %ESC%[36m]%ESC%[0m Creating a pre-configured config for your system, please wait.
start powershell -NoProfile -Command "(Get-WmiObject Win32_LogicalDisk -Filter 'DeviceID=''C:''').FreeSpace -gt 21474836480 | ForEach-Object { if ($_ -eq $true) { 'yes' } else { 'no' } } | Out-File -Encoding ASCII -FilePath '%currentDir%strg.txt'"

::set vmaxmem=18.75
for /F "tokens=5" %%a in ('systeminfo ^| findstr /C:"Virtual Memory: Max Size"') do set vmaxmem=%%a
set /a vmaxmem=%vmaxmem% / 1024
set /a vmaxmem_int=%vmaxmem:.=%
echo %ESC%[36m[%ESC%[0m ... %ESC%[36m]%ESC%[0m Almost there.
timeout /t 1 >nul
set /p freestorage=<"%currentDir%strg.txt"
del /f /q "%currentDir%strg.txt"

if %vmaxmem_int% neq 16 (
    if "%freestorage%" == "yes" (
        set changevmem="u"
        echo %ESC%[36m[%ESC%[0m + %ESC%[36m]%ESC%[0m Change Virtual Memory size to 16GB
        echo %ESC%[36m[%ESC%[0m + %ESC%[36m]%ESC%[0m Increase storage; clear Caches and selectively clear Downloads
    ) else (
        if %vmaxmem_int% gtr 8 (
            set changevmem="l"
            echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Change Virtual Memory size to 8GB
        echo %ESC%[36m[%ESC%[0m + %ESC%[36m]%ESC%[0m Increase storage; change in Virtual Memory, clear Caches and selectively clear Downloads
        ) else (
            if %vmaxmem_int% neq 8 (
                set changevmem="o"
                echo %ESC%[36m[%ESC%[0m x %ESC%[36m]%ESC%[0m Turn off Virtual Memory
                echo %ESC%[36m[%ESC%[0m + %ESC%[36m]%ESC%[0m Increase storage; change in Virtual Memory, clear Caches and selectively clear Downloads
            ) else (
                set changevmem="x"
                echo %ESC%[36m[%ESC%[0m + %ESC%[36m]%ESC%[0m Increase storage; clear Caches and selectively clear Downloads
            )
        )
    )
) else (
    set changevmem="x"
     echo %ESC%[36m[%ESC%[0m + %ESC%[36m]%ESC%[0m Increase storage; clear Caches and selectively clear Downloads
)
start powershell -NoProfile -Command "$result = if (Get-AppxPackage -Name Microsoft.YourPhone -ErrorAction SilentlyContinue) { 'yes' } else { 'no' }; $result | Out-File -FilePath bloat_exists.txt -Encoding UTF8"
start powershell -NoProfile -Command "$result = if ((Get-PnpDevice -InstanceId 'ACPI\\PNP0100\\0' -ErrorAction SilentlyContinue).Status) { 'OK' } else { 'No' }; $result | Out-File -FilePath %currentDir%drv_nu.txt -Encoding UTF8"
start powershell -NoProfile -Command "(Get-ItemProperty -Path 'HKCU:\System\GameConfigStore' -Name GameDVR_Enabled).GameDVR_Enabled | Out-File -Encoding ASCII -FilePath '%currentDir%dvr_status.txt'"
timeout /t 2 >nul
set /p dvr_enabled=<"%currentDir%dvr_status.txt"
del "%currentDir%dvr_status.txt"

if "%dvr_enabled%" == "0" echo %ESC%[36m[%ESC%[0m + %ESC%[36m]%ESC%[0m Enable Game Mode
for /F "tokens=3" %%a in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v DefaultApplied ^| findstr /C:"DefaultApplied"') do if %%a neq 0 echo %ESC%[36m[%ESC%[0m / %ESC%[36m]%ESC%[0m Balance the Visual Effects for performance and styling

if exist "C:\Program Files (x86)\Steam" for /F "tokens=3" %%a in ('reg query "HKEY_CURRENT_USER\Software\Valve\Steam" /v GPUAccelWebViewsV3 ^| findstr /C:"GPUAccelWebViewsV3"') do if %%a neq 0 echo %ESC%[36m[%ESC%[0m / %ESC%[36m]%ESC%[0m Disable Hardware Acceleration in Steam

echo %ESC%[36m[%ESC%[0m f %ESC%[36m]%ESC%[0m Refresh networking

if not exist "%currentDir%.posh" (
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Force PowerShell to be more open
)

timeout /t 2 >nul
set /p drivon=<"%currentDir%drv_nu.txt"
del "%currentDir%drv_nu.txt"
if "%drivon%" == "OK" echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Disable unnecessary drivers in ACPI\PNP and ROOT\CompositeBus

:: idk its bugged sometimes, need it like this
if exist "%currentDir%bloat_exists.txt" (
    set /p bloatw=<"%currentDir%bloat_exists.txt"
    del "%currentDir%bloat_exists.txt"
) else (
    set bloatw="no"
)

if "%bloatw%" == "yes" echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Safely delete all bloatware applications

for /f "tokens=2 delims= " %%a in ('bcdedit /enum all ^| findstr /i "testsigning"') do (
    if /i "%%a"=="Yes" (
        echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off Test Signing
    )
)
for /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v Start ^| findstr /C:"Start"') do if %%a neq 4 echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off Windows Search (+Mitigation)
for /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v Start ^| findstr /C:"Start"') do if %%a neq 4 echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off Windows Spooler
for /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v Start ^| findstr /C:"Start"') do if %%a neq 4 echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off Themes
for /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v Start ^| findstr /C:"Start"') do if %%a neq 4 echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off LanmanWorkstation
for /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v Start ^| findstr /C:"Start"') do if %%a neq 4 echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off DPS
for /F "tokens=3" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v PublishUserActivities') do if %%a neq 0 echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off Timeline
for /F "tokens=3" %%a in ('reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry ^| findstr /C:"AllowTelemetry"') do if %%a neq 0 echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Disable Telemetry

echo.
echo %ESC%[30m%ESC%[47m * %ESC%[0m%ESC%[46m%ESC%[30m Do you wish to apply these configurations? [y/n] %ESC%[0m%ESC%[0m
::echo %ESC%[7mUse [f] to run commands forcefully in command prompt (experimental !)%ESC%[0m

choice /C yn /N /M "" >nul
set user_input=%errorlevel%
if %user_input% == 1 (
    if exist C:\ (
        goto clean
    ) else (
        echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m C:\ drive not found.
        goto failu
    )
)

:failu
echo %ESC%[30m%ESC%[47m x %ESC%[0m%ESC%[41m%ESC%[30m Exiting, no changes were made.. %ESC%[0m%ESC%[0m
pause>nul
exit

:clean
echo.

set /a randomNum=%random% %% 10 + 1
if %randomNum% == 6 (
    echo I think I understand. I will do my best to help you
)

echo Copyright(C) 2024,2025 for %OS% - %PROCESSOR_ARCHITECTURE%
echo.
echo ---- SYSTEM CONFIGURATION ----
set co_cpu_found=0
for /F "tokens=2 delims=," %%a in ('reg query "HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System" /v SystemBiosVersion') do (
    if not "%%a" == "" (
        set co_cpu_found=1
        echo %ESC%[36m[%ESC%[0m + %ESC%[36m]%ESC%[0m CO-CPU   Check   %%a   OK
    )
)
if %co_cpu_found%==0 (
    echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m CO-CPU   Fail   SKIP
)
for /F "delims=" %%s in ('powershell -Command "Get-CimInstance -ClassName Win32_BIOS -Property Manufacturer | Select-Object -ExpandProperty Manufacturer"') do set bios_mnf=%%s
echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m BIOS_MANUFACTURER   Check   %bios_mnf%   OK
echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m PRC_REV   Check   %PROCESSOR_REVISION%   %PROCESSOR_LEVEL%   OK
echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m PRC_CHK   Check   %PROCESSOR_IDENTIFIER%   OK
for /F "delims=" %%s in ('powershell -Command "Get-CimInstance -ClassName Win32_BIOS -Property SerialNumber | Select-Object -ExpandProperty SerialNumber"') do set serial_number=%%s
echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m SERIAL   Check   %serial_number%   OK

echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m RUN_ON   Check   C:\    OK
echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m CNFG   For   %USERDOMAIN%@%USERNAME%    OK
echo.

echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Current Virtual Memory is set as %vmaxmem%, running code-%changevmem%
echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Reading change as..
if %changevmem% == "u" (
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Increasing Virtual Memory to 16GB...
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Changing values in Registry
    PowerShell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'PagingFiles' -Value 'C:\pagefile.sys 16384 16384'"
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Set-ItemProperty
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Attempting a change via WmiObject
    PowerShell -Command "(Get-WmiObject Win32_PageFileSetting).PSBase.Properties['InitialSize'].Value=16384;(Get-WmiObject Win32_PageFileSetting).PSBase.Properties['MaximumSize'].Value=16384;(Get-WmiObject Win32_PageFileSetting).Put()"
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Get-WmiObject Win32_PageFileSetting
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Try WMIC if exists
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m wmic pagefileset
    wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=16384,MaximumSize=16384
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Set
    echo %ESC%[32m[%ESC%[0m OK %ESC%[32m]%ESC%[0m Virtual Memory step completed
)

if %changevmem% == "debug" (
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Increasing Virtual Memory to 16GB...
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Changing values in Registry
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Set-ItemProperty
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Attempting a change via WmiObject
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Get-WmiObject Win32_PageFileSetting
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Try WMIC if exists
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m wmic pagefileset
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Set
    echo %ESC%[32m[%ESC%[0m OK %ESC%[32m]%ESC%[0m Virtual Memory step completed
)

if %changevmem% == "l" (
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Setting Virtual Memory to 8GB...
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Changing values in Registry
    PowerShell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'PagingFiles' -Value 'C:\pagefile.sys 8162 8162'"
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Set-ItemProperty
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Attempting a change via WmiObject
    PowerShell -Command "(Get-WmiObject Win32_PageFileSetting).PSBase.Properties['InitialSize'].Value=8162;(Get-WmiObject Win32_PageFileSetting).PSBase.Properties['MaximumSize'].Value=8162;(Get-WmiObject Win32_PageFileSetting).Put()"
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Get-WmiObject Win32_PageFileSetting
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Try WMIC if exists
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m wmic pagefileset
    wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=8162,MaximumSize=8162
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Set
    echo %ESC%[32m[%ESC%[0m OK %ESC%[32m]%ESC%[0m Virtual Memory step completed
)

if %changevmem% == "o" (
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Disabling Virtual Memory...
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Changing values in Registry
    PowerShell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'PagingFiles' -Value ''"
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Set-ItemProperty
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Attempting a change via WmiObject
    PowerShell -Command "(Get-WmiObject Win32_PageFileSetting).PSBase.Properties['InitialSize'].Value=0;(Get-WmiObject Win32_PageFileSetting).PSBase.Properties['MaximumSize'].Value=0;(Get-WmiObject Win32_PageFileSetting).Put()"
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Get-WmiObject Win32_PageFileSetting
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Try WMIC if exists
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m wmic pagefileset
    wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=0,MaximumSize=0
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Set
    echo %ESC%[32m[%ESC%[0m OK %ESC%[32m]%ESC%[0m Virtual Memory step completed
)

if "%changevmem%" == "x" (
    echo %ESC%[36m[%ESC%[0m ^>^>^> %ESC%[36m]%ESC%[0m Skipping Virtual Memory changes..
)
echo.

echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Killing processes that might interfere
taskkill /f /im smartscreen.exe
taskkill /f /im SecurityHealthSystray.exe
taskkill /f /im SecurityHealthHost.exe
taskkill /f /im SecurityHealthService.exe
taskkill /f /im SecurityHealthHost.exe
taskkill /f /im DWWIN.EXE
taskkill /f /im CompatTelRunner.exe
taskkill /f /im GameBarPresenceWriter.exe
taskkill /f /im DeviceCensus.exe
echo.

echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Configuring PowerShell to be more open

for /F "tokens=3" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShell\3\PowerShellEngine" /v PowerShellVersion') do if %%a neq 0 echo ----- POSH ver%%a (upgrade code: 1.4) -----
timeout /t 1 >nul

echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Setting ExecutionPolicy RemoteSigned
start powershell -NoProfile -Command "Set-ExecutionPolicy RemoteSigned"
echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Setting ExecutionPolicy Unrestricted for CurrentUser
start powershell -NoProfile -Command "Set-ExecutionPolicy Unrestricted -Scope CurrentUser"
echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Setting ExecutionPolicy Bypass for Process
start powershell -NoProfile -Command "Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force"
echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Setting ExecutionPolicy Bypass on Current
start powershell -NoProfile -Command "Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser -Force"
echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Setting ExecutionPolicy Bypass on LocalMachine
start powershell -NoProfile -Command "Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope LocalMachine -Force"
echo %ESC%[36m[%ESC%[0m ... %ESC%[36m]%ESC%[0m Waiting a moment for system to catch up
echo powershell_ran > .POSH

timeout /t 3 >nul
echo %ESC%[32m[%ESC%[0m OK %ESC%[32m]%ESC%[0m PowerShell should be configured.

if "%dvr_enabled%" == "0" (
    echo.
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Properly enabling Game Mode
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Updating registry value: SystemProfile=>SystemResponsiveness
    REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to update SystemResponsiveness)
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Updating registry value: PriorityControl=>Win32PrioritySeparation
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 38 /f || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to update Win32PrioritySeparation)
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Updating registry value: Games=>GPU Priority
    REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to update GPU Priority)
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Updating registry value: Games=>Priority
    REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to update Priority)
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Updating registry value: AllowGameDVR=>value
    REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_SZ /d "0" /f || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to update AllowGameDVR)
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Updating registry value: csrss.exe\PerfOptions=>CpuPriorityClass
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
    echo %ESC%[32m[%ESC%[0m OK %ESC%[32m]%ESC%[0m Game Mode should be configured properly.
)

for /f "tokens=2 delims= " %%a in ('bcdedit /enum all ^| findstr /i "testsigning"') do (
    if /i "%%a"=="Yes" (
        echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turning off {TESTSIGNING}
        echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m bcdedit -set TESTSIGNING OFF
        bcdedit -set TESTSIGNING OFF || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to turn off TESTSIGNING)
    )
)

echo %ESC%[36m[%ESC%[0m ? %ESC%[36m]%ESC%[0m Checking if services need changes
for /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v Start ^| findstr /C:"Start"') do if %%a neq 4 (
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turning off Windows Search (Set-Service, Registry, SC)
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Running Set-Service from an external PowerShell window [WSEARCH]
    start powershell -NoProfile -Command "Set-Service -Name WSearch -StartupType Disabled"
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Running Set-Service from an external PowerShell window [wuauserv]
    start powershell -NoProfile -Command "Set-Service -Name wuauserv -StartupType Disabled"
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Running Set-Service from an external PowerShell window [SysMain]
    start powershell -NoProfile -Command "Set-Service -Name SysMain -StartupType Disabled"
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Running Registry changes
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d 4 /f && sc config "wsearch" start= disabled & net stop "wsearch" || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to turn off Windows Search)
    
    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Running final cloud search registry commands in background.
    reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t  REG_DWORD /d 0 /f
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v CortanaEnabled /t REG_DWORD /d 0 /f
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v SearchboxTaskbarMode /t REG_DWORD /d 1 /f
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCloudSearch /t REG_DWORD /d 0 /f
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v ConnectedSearchUseWeb /t REG_DWORD /d 0 /f
    reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v ConnectedSearchUseWebOverMeteredConnections /t REG_DWORD /d 0 /f
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v DisableWebSearch /t REG_DWORD /d 1 /f
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortanaAboveLock /t REG_DWORD /d 0 /f
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TermServicentVersion\Search" /v AllowCortana /t REG_DWORD /d 0 /f
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowSearchToUseLocation /t REG_DWORD /d 0 /f

    echo %ESC%[36m[%ESC%[0m ^>^> %ESC%[36m]%ESC%[0m Disabling ShowCopilotButton
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowCopilotButton /t REG_DWORD /d 0 /f

    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Disabling promised Mitigation services, might get messy
    
    timeout /t 1 >nul

    for %%a in (EnhancedPowerManagementEnabled AllowIdleIrpInD3 EnableSelectiveSuspend DeviceSelectiveSuspended SelectiveSuspendEnabled SelectiveSuspendOn EnumerationRetryCount ExtPropDescSemaphore WaitWakeEnabled D3ColdSupported WdfDirectedPowerTransitionEnable EnableIdlePowerManagement IdleInWorkingState) do for /f "delims=" %%b in ('reg query "HKLMSYSTEMCurrentControlSetEnum" /s /f "%%a" ^| findstr "HKEY"') do reg.exe add "%%b" /v "%%a" /t REG_DWORD /d "0" /f
    for %%i in ("Application Experience\Microsoft Compatibility Appraiser" "Application Experience\ProgramDataUpdater" "Application Experience\StartupAppTask" "Customer Experience Improvement Program\Consolidator" "Customer Experience Improvement Program\KernelCeipTask" "Customer Experience Improvement Program\UsbCeip" "Customer Experience Improvement Program\Uploader" "Autochk\Proxy" "CloudExperienceHost\CreateObjectTask" "DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" "DiskFootprint\Diagnostics" "UpdateOrchestrator\Schedule Scan" "WindowsUpdate\Scheduled Start" "Servicing\StartComponentCleanup" "Recovery Environment\VerifyWinRE" "EDP\StorageCardEncryption Task" "BitLocker\BitLocker Encrypt All Drives" "BitLocker\BitLocker MDM policy Refresh" "ApplicationData\DsSvcCleanup") do schtasks /change /tn "Microsoft\Windows%%~i" /disable
    echo %ESC%[36m[%ESC%[0m ? %ESC%[36m]%ESC%[0m Final attempt in disabling [DEP, EmulateAtlThunks, SEHOP, ForceRelocateImages, RequireInfo, BottomUp, HighEntropy, StrictHandle, DisableWin32kSystemCalls, AuditSystemCall, DisableExtensionPoints, BlockDynamicCode, AllowThreadsToOptOut, AuditDynamicCode, CFG, SuppressExports, StrictCFG, MicrosoftSignedOnly, AllowStoreSignedBinaries, AuditMicrosoftSigned, AuditStoreSigned, EnforceModuleDependencySigning, DisableNonSystemFonts, AuditFont, BlockRemoteImageLoads, BlockLowLabelImageLoads, PreferSystem32, AuditRemoteImageLoads, AuditLowLabelImageLoads, AuditPreferSystem32, EnableExportAddressFilter, AuditEnableExportAddressFilter, EnableExportAddressFilterPlus, AuditEnableExportAddressFilterPlus, EnableImportAddressFilter, AuditEnableImportAddressFilter, EnableRopStackPivot, AuditEnableRopStackPivot, EnableRopCallerCheck, AuditEnableRopCallerCheck, EnableRopSimExec, AuditEnableRopSimExec, SEHOP, AuditSEHOP, SEHOPTelemetry, TerminateOnError, DisallowChildProcessCreation, AuditChildProcess]
    @powershell set-ProcessMitigation -System -Disable  DEP, EmulateAtlThunks, SEHOP, ForceRelocateImages, RequireInfo, BottomUp, HighEntropy, StrictHandle, DisableWin32kSystemCalls, AuditSystemCall, DisableExtensionPoints, BlockDynamicCode, AllowThreadsToOptOut, AuditDynamicCode, CFG, SuppressExports, StrictCFG, MicrosoftSignedOnly, AllowStoreSignedBinaries, AuditMicrosoftSigned, AuditStoreSigned, EnforceModuleDependencySigning, DisableNonSystemFonts, AuditFont, BlockRemoteImageLoads, BlockLowLabelImageLoads, PreferSystem32, AuditRemoteImageLoads, AuditLowLabelImageLoads, AuditPreferSystem32, EnableExportAddressFilter, AuditEnableExportAddressFilter, EnableExportAddressFilterPlus, AuditEnableExportAddressFilterPlus, EnableImportAddressFilter, AuditEnableImportAddressFilter, EnableRopStackPivot, AuditEnableRopStackPivot, EnableRopCallerCheck, AuditEnableRopCallerCheck, EnableRopSimExec, AuditEnableRopSimExec, SEHOP, AuditSEHOP, SEHOPTelemetry, TerminateOnError, DisallowChildProcessCreation, AuditChildProcess
    echo %ESC%[36m[%ESC%[0m / %ESC%[36m]%ESC%[0m Updating registry for kernel/MitigationOptions
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_QWORD /d 4194304 /f
    echo %ESC%[36m[%ESC%[0m / %ESC%[36m]%ESC%[0m Updating registry for TPM
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TPM" /v "Start" /t REG_DWORD /d 2 /f
)
for /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v Start ^| findstr /C:"Start"') do if %%a neq 4 (
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off Windows Spooler
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Editing registry for Spooler
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d 4 /f || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to turn off Windows Spooler)
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Powershell Set-Service for Spooler
    start powershell -NoProfile -Command "Set-Service -Name spooler -StartupType Disabled"

)
for /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v Start ^| findstr /C:"Start"') do if %%a neq 4 (
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off Themes
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Editing registry for Themes
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d 4 /f || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to turn off Themes)
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Powershell Set-Service for Themes
    start powershell -NoProfile -Command "Set-Service -Name Themes -StartupType Disabled"
)
for /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v Start ^| findstr /C:"Start"') do if %%a neq 4 (
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off LanmanWorkstation
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Editing registry for LanmanWorkstation
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d 4 /f || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to turn off LanmanWorkstation)
)
for /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v Start ^| findstr /C:"Start"') do if %%a neq 4 (
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off DPS
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Editing registry for DPS
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d 4 /f || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to turn off DPS)
)
for /F "tokens=3" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v PublishUserActivities') do if %%a neq 0 (
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Turn off Timeline
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Editing registry for Timeline in HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System
    reg ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v EnableActivityFeed /t REG_DWORD /d 0 /f && reg ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v PublishUserActivities /t REG_DWORD /d 0 /f && reg ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v UploadUserActivities /t REG_DWORD /d 0 /f || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to turn off Timeline)
)
for /F "tokens=3" %%a in ('reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry ^| findstr /C:"AllowTelemetry"') do if %%a neq 0 (
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Disable Telemetry
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Stopping service DiagTrack
    sc stop "DiagTrack" && sc config "DiagTrack" start= disabled
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Editing registry for AllowTelemetry
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f || (echo %ESC%[31m[%ESC%[0m x %ESC%[31m]%ESC%[0m Failed to disable Telemetry)
)
echo %ESC%[32m[%ESC%[0m OK %ESC%[32m]%ESC%[0m Services set right if needed

if "%drivon%" == "OK" (
    echo.
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Disabling Drivers
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Disabling ROOT\CompositeBus\0000
    start powershell -NoProfile -Command "Disable-PnpDevice -InstanceId 'ROOT\CompositeBus\0000' -Confirm:\$false"
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Disabling ACPI\PNP0103\0
    start powershell -NoProfile -Command "Disable-PnpDevice -InstanceId 'ACPI\PNP0103\0' -Confirm:\$false"
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Disabling ACPI\PNP0100\0
    start powershell -NoProfile -Command "Disable-PnpDevice -InstanceId 'ACPI\PNP0100\0' -Confirm:\$false"
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Disabling ACPI\PNP0100\4\4b8afdd\0
    start powershell -NoProfile -Command "Disable-PnpDevice -InstanceId 'ACPI\PNP0100\4\4b8afdd\0' -Confirm:\$false"
    echo %ESC%[36m[%ESC%[0m - %ESC%[36m]%ESC%[0m Modifying registry value DriverSearching\SearchOrderConfig
    reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 0 /f
    echo %ESC%[32m[%ESC%[0m OK %ESC%[32m]%ESC%[0m Drivers de-activated nicely.
)

for /F "tokens=3" %%a in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v DefaultApplied ^| findstr /C:"DefaultApplied"') do if %%a neq 0 (
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Updating system appearance
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v DefaultApplied /t REG_DWORD /d 1 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v DefaultApplied /t REG_DWORD /d 1 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v DefaultApplied /t REG_DWORD /d 1 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v DefaultApplied /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v DefaultApplied /t REG_DWORD /d 1 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v DefaultApplied /t REG_DWORD /d 1 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMAeroPeekEnabled" /v DefaultApplied /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMEnabled" /v DefaultApplied /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMSaveThumbnailEnabled" /v DefaultApplied /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing" /v DefaultApplied /t REG_DWORD /d 1 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v DefaultApplied /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v DefaultApplied /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v DefaultApplied /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v DefaultApplied /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v DefaultApplied /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations" /v DefaultApplied /t REG_DWORD /d 1 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\Themes" /v DefaultApplied /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v DefaultApplied /t REG_DWORD /d 1 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v DefaultApplied /t REG_DWORD /d 0 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TransparentGlass" /v DefaultApplied /t REG_DWORD /d 0 /f
    echo %ESC%[32m[%ESC%[0m OK %ESC%[32m]%ESC%[0m Appearance updated via registry.
)

for /F "tokens=3" %%a in ('reg query "HKEY_CURRENT_USER\Software\Valve\Steam" /v GPUAccelWebViewsV3 ^| findstr /C:"GPUAccelWebViewsV3"') do if %%a neq 0 (
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Disabling Steam GPUAccelWebViewsV3
    reg add "HKEY_CURRENT_USER\Software\Valve\Steam" /v "GPUAccelWebViewsV3" /t REG_DWORD /d 0 /f
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Disabling Steam H264HWAccel
    reg add "HKEY_CURRENT_USER\Software\Valve\Steam" /v "H264HWAccel" /t REG_DWORD /d 0 /f
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Disabling Steam SmoothScrollWebViews
    reg add "HKEY_CURRENT_USER\Software\Valve\Steam" /v "SmoothScrollWebViews" /t REG_DWORD /d 0 /f
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Disabling Steam DPIScaling
    reg add "HKEY_CURRENT_USER\Software\Valve\Steam" /v "DPIScaling" /t REG_DWORD /d 0 /f
    echo %ESC%[32m[%ESC%[0m OK %ESC%[32m]%ESC%[0m Steam Hardware Acceleration disabled
)

if "%bloatw%" == "yes" (
    echo %ESC%[36m[%ESC%[0m ^> %ESC%[36m]%ESC%[0m Delete all bloatware applications
    powershell -Command "Get-AppxPackage *Microsoft.3dbuilder* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *AdobeSystemsIncorporated.AdobePhotoshopExpress* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.Asphalt8Airborne* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *king.com.CandyCrushSodaSaga* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.DrawboardPDF* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Facebook* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *BethesdaSoftworks.FalloutShelter* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Todos* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *ConnectivityStore* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *MinecraftUWP* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.BingNews* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.BingFinance* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Netflix* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *OneNote* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *PandoraMediaInc* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *CommsPhone* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.People* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage" 
    powershell -Command "Get-AppxPackage *windowsphone* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *flaregamesGmbH.RoyalRevolt2* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *WindowsScan* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *AutodeskSketchBook* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *bingsports* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Office.Sway* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft3DViewer* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Twitter* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *XboxOneSmartGlass* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage"
    powershell -Command "Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage"
    echo %ESC%[32m[%ESC%[0m OK %ESC%[32m]%ESC%[0m All bloatware deleted
)

dir /s %localappdata%\temp
del /q /f /s %localappdata%\Temp\*.*
rmdir /s /q %localappdata%\Temp
mkdir %localappdata%\Temp

dir /s C:\Windows\Temp
del /q /f "C:\Windows\Temp\*.*"
rmdir /s /q "C:\Windows\Temp"
mkdir "C:\Windows\Temp"

echo.
echo %ESC%[36m [%ESC%[0m =================================%ESC%[36m ]%ESC%[0m
echo %ESC%[32m[%ESC%[0m END %ESC%[32m]%ESC%[0m Ending the script safely..
for /f "tokens=1-4 delims=:.," %%a in ("%time%") do (
    set /a end_h=1%%a-100, end_m=1%%b-100, end_s=1%%c-100
)

set /a start_total=start_h*3600 + start_m*60 + start_s
set /a end_total=end_h*3600 + end_m*60 + end_s

if !end_total! lss !start_total! set /a end_total+=86400

set /a elapsed=end_total-start_total
echo !elapsed! > time_taken.txt

if not "%changevmem%" == "x" (
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Current terminal is corrupted, restarting the script with 'finish' argument...
    start "" "%~f0" finish
    exit
) else (
    if not "%bloatw%" == "no" (
        echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Current terminal is corrupted, restarting the script with 'finish' argument...
        start "" "%~f0" finish
        exit
    ) else (
        goto finished
    )
)

pause>nul

:finished
cls
echo %ESC%[36m [%ESC%[0m =================================%ESC%[36m ]%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⡚⠃⠉⠉⠒⠄⠀⠀⠀⠀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⣠⠊⠂⠀⠀⠀⠀⠀⠀⠀⢀⠔⠂⢌⠁⠢⣄⠀⠀⠈⠢⡀⠀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⢀⠔⢁⠔⠃⢨⢃⠄⡐⠄⠀⠠⠁⠀⠀⠀⠡⠀⠈⡢⡈⠢⡀⢔⡀⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠂⡐⡍⠀⣎⠔⡁⡌⡌⢀⠂⠁⠀⠀⠀⢀⠀⢃⢂⢰⠚⢄⠈⠢⢣⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⡜⢀⠥⠊⢠⡰⣰⢡⠀⡄⠀⠀⠀⠀⠀⠐⠀⠈⡈⡄⢃⠈⡆⠀⠩⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠸⠀⡈⠀⢠⡗⡵⢸⠈⠀⣇⠁⠀⢀⠘⠀⢀⡆⠀⠁⠘⠸⠀⢡⠀⠐⡃⠀%ESC%[0m
echo      %ESC%[36m⠀⢸⡈⠀⠀⣿⢩⡯⣽⣦⣔⣧⢀⠀⢸⠇⣿⡌⣠⠰⡄⢀⠀⡱⠘⣡⠀⠇⠀%ESC%[0m
echo      %ESC%[36m⠀⢰⣇⣇⣄⢽⢆⠀⠛⠟⠀⢸⢼⡄⢸⡬⠟⢶⣶⣭⡹⣺⠀⣷⠀⣿⡇⡀⠀%ESC%[0m
echo      %ESC%[36m⠀⠈⡋⡍⢿⠜⡪⡢⠀⠀⠀⠀⠂⡊⡇⠣⠀⠙⠛⠀⠑⣱⣀⠏⡗⢜⡜⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⢹⡀⠱⣕⢵⢄⠀⠀⠀⠀⠟⠀⠀⠀⠀⠄⢚⢴⠃⣸⠺⠀⢸⠱⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⠓⠡⡘⣷⣕⠀⠀⠀⠀⠀⠀⠀⠀⢈⡩⠒⡡⡖⠃⢠⢀⡬⠘⠁⠀%ESC%[0m
echo      %ESC%[36m⠀⠈⠐⠂⢀⡴⠸⡳⡸⡃⢀⠀⠀⠀⢀⡨⠝⢋⡴⣻⣺⢁⡔⠊⣁⠔⠚⠃⠀%ESC%[0m
echo      %ESC%[36m⠀⠀⠀⠀⡜⠁⢰⢱⠐⢮⡢⢑⣒⣺⣿⣽⡿⠋⠁⢻⡏⣹⠉⡹⠋⡰⠂⠀⠀%ESC%[0m
echo      %ESC%[36m⠀⢀⡠⣞⠀⡠⠃⠀⢷⡄⢻⣶⠞⠋⠉⢀⣠⠆⠀⣼⣿⣿⠋⠠⠘⠁⡀⠀⣠%ESC%[0m
echo      %ESC%[36m⣰⠋⠑⣤⠟⠁⠀⠀⠀⠀⠘⠛⠀⠀⠘⠉⠀⠀⠀⢹⢻⣤⣿⡓⠚⠚⢛⠉⠁%ESC%[0m
echo %ESC%[36m [%ESC%[0m =================================%ESC%[36m ]%ESC%[0m
echo.
echo made by @tanossh.i on discord
if exist "%currentDir%time_taken.txt" (
    set /p elapsedd=<time_taken.txt
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m The tool took !elapsedd!seconds to run for %USERDOMAIN%@%USERNAME%
) else (
    echo %ESC%[36m[%ESC%[0m ^? %ESC%[36m]%ESC%[0m Make the most of it, @%USERNAME%
)

echo %ESC%[30m%ESC%[47m * %ESC%[0m%ESC%[46m%ESC%[30m Script finished successfully, restart your PC to see changes %ESC%[0m%ESC%[0m
timeout /t 2 >nul

if exist "%currentDir%time_taken.txt" (
    del /f /q time_taken.txt
)

pause>nul
exit

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0