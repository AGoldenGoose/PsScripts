

# the only way to send multiple properties to the get-mailboxpermission cmdlet is by piping the multiple objects into a foreach-object cmldet, has to have brackets so that get0mailboxpermiussion is run first.
$mail="WPI.SYSTEM@christie.nhs.uk","ePay@christie.nhs.uk","Workforceesrteam@christie.nhs.uk","Workforceinformationreporting@christie.nhs.uk","INPUT@christie.nhs.uk","Staffchangescoe@christie.nhs.uk","Flufighter@christie.nhs.uk" | %  {Get-MailboxPermission -Identity $_} | select identity, user, accessrights 


#$csvfile= $mail| convertto-csv 


$mail| select identity, user, accessrights |Export-Csv "C:\email list.csv"
