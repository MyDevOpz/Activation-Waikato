<# PSScriptInfo

-OPEN in PowerShell ISE as Administrator
-DO NOT *RUN ALL* (i.e. Do Not "Run Script")
-This file is intended for testing
-Select and Run each line step-by-step via "Run Selection" command or function F8

#>

<# INSTALL pre-requisites

Install-PackageProvider -Name winget

# Additional arguments?: -Force

#>

# LIST all apps
winget list