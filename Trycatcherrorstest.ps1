$ArrComputers = "Student03","Stuent04"
Clear-Host
foreach ($Computer in $ArrComputers) {
Try{
$computerSystem = get-wmiobject Win32_ComputerSystem -Computer $Computer
$computerSystemmodel = get-wmiobject Win32_ComputerSystemproduct -Computer $Computer -ErrorAction  stop


}
Catch 

{Write-host "PC not Found"}

        write-host "System Information for: " $computerSystem.Name -BackgroundColor DarkCyan
        "---------------------------------------------------"
        "Manufacturer: " + $computerSystem.Manufacturer
        }