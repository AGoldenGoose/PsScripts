
#This script will clear the currently logged in users outlook profile & prompt for it to be recreated when outlook is next launched.

#This script will also create a file in the root of C which will mean that this script wont run if this file (C:\outlook\) is present.

$User = [Environment]::UserName
$path = "C:\Outlook\" + "$User"
$ClearOutlook = "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Windows Messaging Subsystem\Profiles"
If(-not(Test-Path -Path $path))
  {
   del $ClearOutlook -force -Recurse
   New-Item -Path $path -type directory
   }