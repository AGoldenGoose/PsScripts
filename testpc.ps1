$Arrcomputers = read-host -prompt 'Please Enter Hostname'



#Specify the list of PC names in the ine above. "." means local system, delete as appropriate.
 



Clear-Host
foreach ($Computer in $ArrComputers) 
{    
    $computerip = get-wmiobject Win32_NetworkAdapterConfiguration  -Computer $Computer |
    Where { $_.IPAddress } | # filter the objects where an address actually exists
    Select -Expand IPAddress | # retrieve only the property *value*
    Where {$_ -notlike "*:*"}
    $computerSystem = get-wmiobject Win32_ComputerSystem -Computer $Computer
    $computerSystemmodel = get-wmiobject Win32_ComputerSystemproduct -Computer $Computer
    $computerBIOS = get-wmiobject Win32_BIOS -Computer $Computer
    $computerOS = get-wmiobject Win32_OperatingSystem -Computer $Computer
    $computerCPU = get-wmiobject Win32_Processor -Computer $Computer
    $computerVideo = get-wmiobject Win32_VideoController -Computer $Computer
    $computerHDD = Get-WmiObject Win32_LogicalDisk -ComputerName $Computer
    $computerMAC = Get-WmiObject Win32_NetworkAdapterConfiguration -Computer $computer | Where{$_.ipenabled -Match "True"} | Select MACaddress 
    $computermemory = (Get-WmiObject Win32_PhysicalMemory -computer $Computer | measure-object Capacity -sum).sum/1gb 
    $hddss = Get-WmiObject Win32_LogicalDisk -ComputerName $Computer 
    
    }