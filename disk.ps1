$Disk = Get-WmiObject Win32_LogicalDisk | select -Property caption, size | FL
$disk