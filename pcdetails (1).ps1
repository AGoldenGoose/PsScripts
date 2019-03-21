
$ArrComputers = "student3"

#$Arrcomputers = read-host -prompt 'Please Enter Hostname'

#Specify the list of PC names in the ine above. "." means local system, delete as appropriate.
 



Clear-Host
foreach ($Computer in $ArrComputers) 
{
Try{
  
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
    $hddss = Get-WmiObject Win32_LogicalDisk -ComputerName $Computer -ErrorAction Inquire

}
catch {Write-host "No Pc found"}

        write-host "System Information for: " $computerSystem.Name -BackgroundColor DarkCyan
        "-------------------------------------------------------"
        "Manufacturer: " + $computerSystem.Manufacturer
        "Model: " + $computerSystemmodel.version #(this is for lenovo machines as the model info is stored in a different location)
        "Version: " + $computerSystem.model 
        "Serial Number: " + $computerBIOS.SerialNumber
        "CPU: " + $computerCPU.Name
        "GPU:" + $computerVideo.description
        "RAM: " + $computermemory +"GB"
        "HDD Capacity C: " + "{0:N2}" -f ($computerHDD.Size[0]/1GB) + "GB" 
        "HDD Capacity D: " + "{0:N2}" -f ($computerHDD.Size[1]/1GB) + "GB"
        "HDD Space C: " + "{0:P2}" -f ($computerHDD.FreeSpace[0]/$computerHDD.Size[0]) + " Free (" + "{0:N2}" -f ($computerHDD.FreeSpace[0]/1GB) + "GB)"
        "HDD Space D: " + "{0:P2}" -f ($computerHDD.FreeSpace[1]/$computerHDD.Size[1]) + " Free (" + "{0:N2}" -f ($computerHDD.FreeSpace[1]/1GB) + "GB)" 
        "Operating System: " + $computerOS.caption + ", Service Pack: " + $computerOS.ServicePackMajorVersion
        "User logged In: " + $computerSystem.UserName
        "Last Reboot: " + $computerOS.ConvertToDateTime($computerOS.LastBootUpTime)
        "IP Addresses Ethernet/Wifi: " + $computerip
        "Mac Addresses Ethernet/Wifi: "+ $computerMAC.MACaddress
        "-------------------------------------------------------"
 }

