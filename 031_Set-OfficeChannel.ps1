<#PSScriptInfo

-OPEN in PowerShell ISE as USER - NOT ADMINISTRATOR
-DO NOT *RUN ALL* (i.e. Do Not "Run Script")
-This file is intended for testing.
-Select and Run each line step-by-step via "Run Selection" command or function F8

#>

# Set Deferred channel to: Semi-Annual Enterprise Channel (Semi-Annual Channel)

Get-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\Configuration -Name CDNBaseUrl
Set-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\Configuration -Name CDNBaseUrl -Value "http://officecdn.microsoft.com/pr/7ffbc6bf-bc32-4f92-8982-f9dd17fd3114"
Remove-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\Updates -Name UpdateToVersion   