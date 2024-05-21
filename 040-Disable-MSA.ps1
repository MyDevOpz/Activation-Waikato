<#PSScriptInfo

-OPEN in PowerShell ISE as Administrator
-DO NOT *RUN ALL* (i.e. Do Not "Run Script")
-This file is intended for testing.
-Select and Run each line step-by-step via "Run Selection" command or function F8

#>

# DISABLE Add and Sign-in with Microsoft Accounts
New-ItemProperty -Name NoConnectedUser -PropertyType DWord -Value 00000003 -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Force

# DISABLE Add new Microsoft Accounts (sign in with existing MSA)
New-ItemProperty -Name NoConnectedUser -PropertyType DWord -Value 00000001 -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Force

# ENABLE Add and Sign-in with Microsoft Accounts (DEFAULT)
New-ItemProperty -Name NoConnectedUser -PropertyType DWord -Value 00000000 -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Force