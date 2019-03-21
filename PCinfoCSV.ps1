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

    #Build the CSV file
 

$csvObject = New-Object PSObject -property  @{
    'PCName' = $computerSystem.Name
    'Manufacturer' = $computerSystem.Manufacturer
    'Model' = $computerSystemmodel.version
    "Version" = $computerSystem.model
    'SerialNumber' = $computerBIOS.SerialNumber
    'RAM' = "{0:N2}" -f ($computerSystem.TotalPhysicalMemory/1GB)
    "HDDSizeGB" = "{0:N2}" -f ($computerHDD.Size[0]/1GB) + "GB" 
    #'HDDSizeGB' = "{0:N2}" -f ($computerHDD.Size/1GB) #Removed as it interferes with laptops that are the same model but different asset tag.
    "HDDSpace" = "{0:P2}" -f ($computerHDD.FreeSpace[0]/$computerHDD.Size[0]) + " Free (" + "{0:N2}" -f ($computerHDD.FreeSpace[0]/1GB) + "GB)"
    #'HDDFree' = "{0:P2}" -f ($computerHDD.FreeSpace/$computerHDD.Size) #Removed as it interferes with laptops that are the same model but different asset tag.
    'GPU' = $computerVideo.description
    'CPU' = $computerCPU.Name
    'OS' = $computerOS.caption
    'SP' = $computerOS.ServicePackMajorVersion
    'User' = $computerSystem.UserName
    'BootTime' = $computerOS.ConvertToDateTime($computerOS.LastBootUpTime)
    }



#Export the fields you want from above in the specified order
$csvObject | Select PCName, Manufacturer, Model, Version , Ram, CPU, GPU, User , HDDSizeGB , HDDSpace ,   OS, SerialNumber | Export-Csv 'C:\system-info2.csv' -NoTypeInformation -Append

 


