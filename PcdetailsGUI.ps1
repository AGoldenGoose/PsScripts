<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Version Check
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '478,325'
$Form.text                       = "PC Details"
$Form.TopMost                    = $false

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Enter Computer name:"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(9,12)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 237
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(155,9)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'
 
$Label3                          = New-Object system.Windows.Forms.Label
$Label3.text                     = "CPU:"
$Label3.AutoSize                 = $true
$Label3.width                    = 25
$Label3.height                   = 10
$Label3.location                 = New-Object System.Drawing.Point(14,42)
$Label3.Font                     = 'Microsoft Sans Serif,10'

$Label4                          = New-Object system.Windows.Forms.Label
$Label4.text                     = "PC Model:"
$Label4.AutoSize                 = $true
$Label4.width                    = 25
$Label4.height                   = 10
$Label4.location                 = New-Object System.Drawing.Point(14,72)
$Label4.Font                     = 'Microsoft Sans Serif,10'

$Label5                          = New-Object system.Windows.Forms.Label
$Label5.text                     = "Operating System:"
$Label5.AutoSize                 = $true
$Label5.width                    = 25
$Label5.height                   = 10
$Label5.location                 = New-Object System.Drawing.Point(14,102)
$Label5.Font                     = 'Microsoft Sans Serif,10'

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "Free Space GB (C:):"
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(240,132)
$Label6.Font                     = 'Microsoft Sans Serif,10'

$Label7                          = New-Object system.Windows.Forms.Label
$Label7.text                     = "Disk Capacity GB (C:):"
$Label7.AutoSize                 = $true
$Label7.width                    = 25
$Label7.height                   = 10
$Label7.location                 = New-Object System.Drawing.Point(14,132)
$Label7.Font                     = 'Microsoft Sans Serif,10'

$TextBox2                        = New-Object system.Windows.Forms.TextBox
$TextBox2.multiline              = $false
$TextBox2.width                  = 320
$TextBox2.height                 = 20
$TextBox2.location               = New-Object System.Drawing.Point(108,39)
$TextBox2.Font                   = 'Microsoft Sans Serif,10'

$TextBox3                        = New-Object system.Windows.Forms.TextBox
$TextBox3.multiline              = $false
$TextBox3.width                  = 320
$TextBox3.height                 = 20
$TextBox3.location               = New-Object System.Drawing.Point(108,69)
$TextBox3.Font                   = 'Microsoft Sans Serif,10'

$TextBox4                        = New-Object system.Windows.Forms.TextBox
$TextBox4.multiline              = $false
$TextBox4.width                  = 230
$TextBox4.height                 = 20
$TextBox4.location               = New-Object System.Drawing.Point(158,99)
$TextBox4.Font                   = 'Microsoft Sans Serif,10'

$TextBox5                        = New-Object system.Windows.Forms.TextBox
$TextBox5.multiline              = $false
$TextBox5.width                  = 70
$TextBox5.height                 = 20
$TextBox5.location               = New-Object System.Drawing.Point(158,129)
$TextBox5.Font                   = 'Microsoft Sans Serif,10'

$TextBox6                        = New-Object system.Windows.Forms.TextBox
$TextBox6.multiline              = $false
$TextBox6.width                  = 70
$TextBox6.height                 = 20
$TextBox6.location               = New-Object System.Drawing.Point(385,129)
$TextBox6.Font                   = 'Microsoft Sans Serif,10'

$Label8                          = New-Object system.Windows.Forms.Label
$Label8.text                     = "IP Address:"
$Label8.AutoSize                 = $true
$Label8.width                    = 25
$Label8.height                   = 10
$Label8.location                 = New-Object System.Drawing.Point(14,162)
$Label8.Font                     = 'Microsoft Sans Serif,10'

$TextBox7                        = New-Object system.Windows.Forms.TextBox
$TextBox7.multiline              = $false
$TextBox7.width                  = 85
$TextBox7.height                 = 20
$TextBox7.location               = New-Object System.Drawing.Point(108,159)
$TextBox7.Font                   = 'Microsoft Sans Serif,10'

$Label9                          = New-Object system.Windows.Forms.Label
$Label9.text                     = "MAC Address:"
$Label9.AutoSize                 = $true
$Label9.width                    = 25
$Label9.height                   = 10
$Label9.location                 = New-Object System.Drawing.Point(240,162)
$Label9.Font                     = 'Microsoft Sans Serif,10'

$TextBox8                        = New-Object system.Windows.Forms.TextBox
$TextBox8.multiline              = $false
$TextBox8.width                  = 120
$TextBox8.height                 = 20
$TextBox8.location               = New-Object System.Drawing.Point(350,159)
$TextBox8.Font                   = 'Microsoft Sans Serif,10'

$Label10                         = New-Object system.Windows.Forms.Label
$Label10.text                    = "Current User: "
$Label10.AutoSize                = $true
$Label10.width                   = 20
$Label10.height                  = 10
$Label10.location                = New-Object System.Drawing.Point(14,192)
$Label10.Font                    = 'Microsoft Sans Serif,10'

$TextBox9                        = New-Object system.Windows.Forms.TextBox
$TextBox9.multiline              = $false
$TextBox9.width                  = 110
$TextBox9.height                 = 20
$TextBox9.location               = New-Object System.Drawing.Point(108,189)
$TextBox9.Font                   = 'Microsoft Sans Serif,10'


$Label11                         = New-Object system.Windows.Forms.Label
$Label11.text                    = "RAM (GB):"
$Label11.AutoSize                = $true
$Label11.width                   = 25
$Label11.height                  = 10
$Label11.location                = New-Object System.Drawing.Point(240,192)
$Label11.Font                    = 'Microsoft Sans Serif,10'

$TextBox10                       = New-Object system.Windows.Forms.TextBox
$TextBox10.multiline             = $false
$TextBox10.width                 = 35
$TextBox10.height                = 20
$TextBox10.location              = New-Object System.Drawing.Point(350,189)
$TextBox10.Font                  = 'Microsoft Sans Serif,10'

#$Label12                         = New-Object system.Windows.Forms.Label
#$Label12.text                    = ""
#$Label12.AutoSize                = $true
#$Label12.width                   = 25
#$Label12.height                  = 10
#$Label12.location                = New-Object System.Drawing.Point(270,133)
#$Label12.Font                    = 'Microsoft Sans Serif,10'

#$TextBox11                       = New-Object system.Windows.Forms.TextBox
#$TextBox11.multiline             = $false
#$TextBox11.width                 = 100
#$TextBox11.height                = 20
#$TextBox11.location              = New-Object System.Drawing.Point(298,128)
#$TextBox11.Font                  = 'Microsoft Sans Serif,10'

$Label13                         = New-Object system.Windows.Forms.Label
$Label13.text                    = "Last Reboot:"
$Label13.AutoSize                = $true
$Label13.width                   = 25
$Label13.height                  = 10
$Label13.location                = New-Object System.Drawing.Point(14,222)
$Label13.Font                    = 'Microsoft Sans Serif,10'

$TextBox11                       = New-Object system.Windows.Forms.TextBox
$TextBox11.multiline             = $false
$TextBox11.width                 = 131
$TextBox11.height                = 20
$TextBox11.location              = New-Object System.Drawing.Point(108,219)
$TextBox11.Font                  = 'Microsoft Sans Serif,10'

$Label14                         = New-Object system.Windows.Forms.Label
$Label14.text                    = "GPU:"
$Label14.AutoSize                = $true
$Label14.width                   = 25
$Label14.height                  = 10
$Label14.location                = New-Object System.Drawing.Point(240,222)
$Label14.Font                    = 'Microsoft Sans Serif,10'

$TextBox12                       = New-Object system.Windows.Forms.TextBox
$TextBox12.multiline             = $false
$TextBox12.width                 = 100
$TextBox12.height                = 20
$TextBox12.location              = New-Object System.Drawing.Point(350,219)
$TextBox12.Font                  = 'Microsoft Sans Serif,10'

$Label15                         = New-Object system.Windows.Forms.Label
$Label15.text                    = ""
$Label15.AutoSize                = $true
$Label15.width                   = 25
$Label15.height                  = 10
$Label15.location                = New-Object System.Drawing.Point(14,257)
$Label15.Font                    = 'Microsoft Sans Serif,10'

#$TextBox14                       = New-Object system.Windows.Forms.TextBox
#$TextBox14.multiline             = $true
#$TextBox14.width                 = 445
#$TextBox14.height                = 104
#$TextBox14.location              = New-Object System.Drawing.Point(14,294)
#$TextBox14.Font                  = 'Microsoft Sans Serif,10'

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "OK"
$Button1.width                   = 60
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(50,280)
$Button1.Font                    = 'Microsoft Sans Serif,10'

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Run"
$Button2.width                   = 60
$Button2.height                  = 30
$Button2.location                = New-Object System.Drawing.Point(189,280)
$Button2.Font                    = 'Microsoft Sans Serif,10'

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "Clear"
$Button3.width                   = 60
$Button3.height                  = 30
$Button3.location                = New-Object System.Drawing.Point(342,280)
$Button3.Font                    = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($Label1,$TextBox1,$Label3,$Label4,$Label5,$Label6,$Label7,$TextBox2,$TextBox3,$TextBox4,$TextBox5,$TextBox6,$Label8,$TextBox7,$Label9,$TextBox8,$Label10,$TextBox9,$Label11,$TextBox10,$Label12,$TextBox11,$Label13,$TextBox12,$Label14,$Label15,$Button1,$Button2,$Button3))

$Button1.Add_Click({ OK })
$Button2.Add_Click{(Run)}
$Button3.Add_Click{$textbox1.Clear()
$textbox2.Clear()
$textbox3.Clear()
$textbox4.Clear()
$textbox5.Clear()
$textbox6.Clear()
$textbox7.Clear()
$textbox8.Clear()
$textbox9.Clear()
$textbox10.Clear()
$textbox11.Clear()
$textbox12.Clear()
$textbox13.Clear()}

    
function OK(){$Form.close()}

function Run(){ 
    $TextBox2.text = get-wmiobject Win32_Processor  -computername $TextBox1.text  | select -expand Name  #Can also use this instead of foreach & then creating an object.
    $TextBox3.text = get-wmiobject Win32_ComputerSystemproduct -Computer $TextBox1.Text | select -expand Name
    $TextBox4.text = get-wmiobject Win32_OperatingSystem -Computer $TextBox1.Text  | foreach  { $_.caption }
    $TextBox5.text = ("{0:N2}" -f ((Get-WmiObject Win32_LogicalDisk -ComputerName $textbox1.text  | measure-object Size -sum  ).sum/1gb ))
    $TextBox6.text = ("{0:N2}" -f ((Get-WmiObject Win32_LogicalDisk -ComputerName $textbox1.text   | measure-object FreeSpace -sum  ).sum/1gb ))
    $TextBox7.text = get-wmiobject Win32_NetworkAdapterConfiguration  -Computer $TextBox1.Text |
    Where { $_.IPAddress } | # filter the objects where an address actually exists
    Select -Expand IPAddress | # retrieve only the property *value*
    Where {$_ -notlike "*:*"}
    $TextBox8.text = Get-WmiObject Win32_NetworkAdapterConfiguration -Computer $TextBox1.Text | Where{$_.ipenabled -Match "True"} | foreach   { $_.MACAddress}
    #$TextBox9.text = get-wmiobject Win32_ComputerSystem -computername $TextBox1.text | foreach  { $_.UserName }
    $user= get-wmiobject Win32_ComputerSystem -computername $TextBox1.text | select -expand  UserName 
    if ($user -eq $null) {$TextBox9.text = "No Current User" } else { $TextBox9.Text = $user }
    $TextBox10.text = (Get-WmiObject Win32_PhysicalMemory -computer $TextBox1.text | measure-object Capacity -sum).sum/1gb
    $boot= get-wmiobject Win32_OperatingSystem -Computer $TextBox1.Text
    $TextBox11.text = $boot.Converttodatetime($boot.lastbootuptime)
    $TextBox12.text = get-wmiobject Win32_VideoController -Computer $TextBox1.Text | select -expand description


   }

Function Clear {
	$Form.Close()
	$Form.Dispose()
}


#Write your logic code here

[void]$Form.ShowDialog()