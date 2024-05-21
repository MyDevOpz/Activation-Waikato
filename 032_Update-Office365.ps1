<# PSScriptInfo

-OPEN in PowerShell ISE as USER - NOT ADMINISTRATOR
-DO NOT *RUN ALL* (i.e. Do Not "Run Script")
-This file is intended for testing
-Select and Run each line step-by-step via "Run Selection" command or function F8

#> 

<# DEV NOTE

-Check Nuget and Winget updates first
-Confirm 'Wait' argument

#>
          
# UPDATE OFFICE: Display alerts, dont shutdown open apps
$UpdateEXE ="C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe"
$UpdateArguements = "/update user displaylevel=true forceappshutdown=false"
Start-Process $UpdateEXE $UpdateArguements

<# ALTERNATE COMMAND

Start-Process $UpdateEXE $UpdateArguements -Wait

#>