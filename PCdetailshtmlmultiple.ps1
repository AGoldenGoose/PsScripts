$Arrcomputers = Get-Content -Path C:\PCnames.txt





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
    
    

    #Build the object file, the data from which is imported to the HTML file. THS DOESNT WORK WITH MULTIPLE PCS
 
 $tblObject = foreach($Computer in $ArrComputers)
 {
 {
 }
$objectproperties=

@{ 
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
    'IP' = $computerip
    'Mac'= $computerMAC.MACaddress
    }
    
    
    new-object psobject -property $objectproperties
    
    
    }
    }




    #Create the HTML for our report
    $Header = @"
<style>
TABLE {border-width: 1px;border-style: solid;border-color: black;border-collapse: collapse;}
TH {border-width: 1px;padding: 3px;border-style: solid;border-color: black;background-color: #6495ED;}
TD {border-width: 1px;padding: 3px;border-style: solid;border-color: black;}
.odd  { background-color:#ffffff; }
.even { background-color:#dddddd; }
</style>
<Title>
PC Details for for "$Arrcomputers"
</Title>
"@

    $Pre = "<h1>PC Details Report</h1><h3>$($Title -join ", ")</h3>"
    $Post = "</p></h2>Ran on $(Get-Date -f 'MM/dd/yyyy hh:mm:ss tt')</body></html>"

    #Export the fields you want from above in the specified order
    
$tblObject|Select PCName, Manufacturer, Version , Ram, CPU, GPU, User , HDDSizeGB , HDDSpace , OS, SerialNumber , IP , Mac  | Sort $SortBy -Descending:$Descending | ConvertTo-Html -PreContent $Pre -PostContent $Post -Head $Header | Out-File \\christie\dfsroot$\homedrives1\George.Brophy\PSReporting\pcdetails.html


    #Display the report in your default browser
    & \\christie\dfsroot$\homedrives1\George.Brophy\PSReporting\pcdetails.html


