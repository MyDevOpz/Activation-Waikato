<#PSScriptInfo

-OPEN in PowerShell ISE as Administrator
-DO NOT *RUN ALL* (i.e. Do Not "Run Script")
-This file is intended for testing.
-Select and Run each line step-by-step via "Run Selection" command or function F8

#>

# LIST ALL apps with updates
winget upgrade

# UPDATE ALL apps - Hide any UI interaction
winget upgrade -h --all

# Examples of winget upgrade:
#winget update --name powertoys --version 0.15.2
#winget upgrade --id "{24559D0F-481C-F3BE-8DD0-D908923A38F8}"