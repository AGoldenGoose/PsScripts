

$csvObject = New-Object PSObject -property  @{
'Username'= $SqlQuery.v_LastLogon}
$csvObject | Select Username | Export-Csv 'C:\system-info2.csv' 




#get-adcomputer -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk"-properties Description, OperatingSystem | Where-Object {$_.Description -eq $null}

  #$computerip = get-wmiobject Win32_NetworkAdapterConfiguration  -Computer $Computer |
   # Where { $_.IPAddress } | # filter the objects where an address actually exists
    #Select -Expand IPAddress | # retrieve only the property *value*
    #Where {$_ -notlike "*:*"}