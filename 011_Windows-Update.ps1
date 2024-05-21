<# PSScriptInfo

-OPEN in PowerShell ISE as Administrator
-DO NOT *RUN ALL* (i.e. Do Not "Run Script")
-This file is intended for testing
-Select and Run each line step-by-step via "Run Selection" command or function F8

#>

# INSTALL pre-requisites
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Module PSWindowsUpdate -Force
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
Import-Module PSWindowsUpdate
Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser
Get-ExecutionPolicy -List

# VIEW then INSTALL updates
Get-WindowsUpdate
Install-WindowsUpdate

# SILENT INSTALL updates then Reboot
Get-WindowsUpdate -AcceptAll -Install -AutoReboot