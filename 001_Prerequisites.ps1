<# PSScriptInfo
-OPEN in PowerShell ISE as Administrator
#>

<
<# ALLOW unsigned scripts to run
-This action is reversed at end of this script.
#>
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -Force
>

<
<# INSTALL pre-requisites for WINDOWS UPDATE via POWERSHELL:
-NuGet package manager
-PSWindowsUpdate module
#>
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Module PSWindowsUpdate -Force
Import-Module PSWindowsUpdate
>

<
<# UNINSTALL Consumer Windows Apps:
#>
winget uninstall --name "Films & TV"
winget uninstall --name "Game Bar"
winget uninstall --name "Mail and Calendar"
winget uninstall --name "Microsoft Pay"
winget uninstall --name "Microsoft Wallet"
winget uninstall --name "Mixed Reality Portal"
winget uninstall --name "Phone Link"
winget uninstall --name "Solitaire & Casual Games"
winget uninstall --name "Xbox Game Bar Plugin"
winget uninstall --name "Xbox Game Speech Window"
winget uninstall --name "Xbox Identity Provider"
winget uninstall --name "Xbox TCUI"
winget uninstall --name "Xbox"
>

<
<# SET DEFERRED CHANNEL for MS Office
- Semi-Annual Enterprise Channel (Semi-Annual Channel)
#>>
Set-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\Configuration -Name CDNBaseUrl -Value "http://officecdn.microsoft.com/pr/7ffbc6bf-bc32-4f92-8982-f9dd17fd3114"
Remove-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\Updates -Name UpdateToVersion
>

<
<# DISABLE MSA (Personal Microsoft Accounts)
-Users will be unable to add or sign-in with personal Microsoft Account
#>
New-ItemProperty -Name NoConnectedUser -PropertyType DWord -Value 00000003 -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Force
>

<
<# DISALLOW unsigned scripts to run
#>
Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser -Force
>