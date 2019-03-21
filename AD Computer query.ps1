#get-adcomputer CZC83389GT -Properties * | Get-Member Description

#get-adcomputer CZC83389GT | Select-Object description

#get-adcomputer CZC83389GT -property description


#get-adcomputer CZC83389GT -properties Description | select Description | export-csv "C:\ADComputers.csv"

#get-adcomputer -filter * -SearchBase "ou=OU, dc=Domain, dc=com"-properties Description | select Description | export-csv "C:\ADComputers.csv"

#get-adcomputer -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk"-properties Description | select Description, name | Where -property Description -eq "Radiology"

#get-adcomputer -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk"-properties Description | select Description, name | Where-Object -property Description -contains "Informatics"

#get-adcomputer -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk" 'description -Contains "Informatics"'

#get-adcomputer -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk 'description -like Informatics*"


#get-adcomputer -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk"-properties Description | Where-Object {$_.Description -like "*Informatics*"} |Select -property Description, name 

#get-adcomputer -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk"-properties Description, OperatingSystem | Where-Object {$_.Description -eq $null} |Select -property name,OperatingSystem | export-csv "C:\ADPCsnodescription.csv"


#the below command DOES work. But as there is already a script that populates the description field, it returns blank as there are NO pcs without a desc field. note: you HAVE to include -property before piping anything, otherwise it will just return every pc in AD.

get-adcomputer -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk"-properties Description, OperatingSystem | Where-Object {$_.Description -eq $null} |Select -property name,OperatingSystem | export-csv "C:\ADPCsnodescription.csv"

get-adcomputer -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk"| Where-Object {$_.Description -contains "HP 800 G1"}


get-adcomputer -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk"-properties OperatingSystem | Where-Object {$_.OperatingSystem -like "*XP*"} | Select -property OperatingSystem| export-csv "c:\adcomputers2.csv"