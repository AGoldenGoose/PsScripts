#get-aduser -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk"| Select -property Name, Surname,SamAccountName,mail

#get-aduser -filter * -SearchBase "dc=xchristie, dc=nhs, dc=uk"

get-aduser -Properties mail -filter {mail -like '*'} | Select -property mail, name, SamAccountName | export-csv "C:\names3.csv"