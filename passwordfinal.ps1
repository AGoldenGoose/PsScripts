<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Passwordreset
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()


$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '500,463'
$Form.text                       = "Password Reset Utility"
$Form.TopMost                    = $false
$form.ShowIcon                   = $False

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Enter Username:"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(13,29)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Name:"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(30,78)
$Label2.Font                     = 'Microsoft Sans Serif,10'

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 187
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(159,25)


$Label3                          = New-Object system.Windows.Forms.Label
$Label3.AutoSize                 = $true
$Label3.visible                  = $true
$Label3.width                    = 25
$Label3.height                   = 10
$Label3.location                 = New-Object System.Drawing.Point(162,78)
$Label3.Font                     = 'Microsoft Sans Serif,10'


$Label4                          = New-Object system.Windows.Forms.Label
$Label4.text                     = "Account Status:"
$Label4.visible                  = $true
$Label4.AutoSize                 = $true
$Label4.width                    = 25
$Label4.height                   = 10
$Label4.location                 = New-Object System.Drawing.Point(30,120)
$Label4.Font                     = 'Microsoft Sans Serif,10'

$Label7                          = New-Object system.Windows.Forms.Label
$Label7.AutoSize                 = $true
$Label7.width                    = 25
$Label7.height                   = 10
$Label7.location                 = New-Object System.Drawing.Point(162,120)
$Label7.Font                     = 'Microsoft Sans Serif,10'

$Label5                          = New-Object system.Windows.Forms.Label
$Label5.text                     = "Locked Out:"
$Label5.AutoSize                 = $true
$Label5.width                    = 25
$Label5.height                   = 10
$Label5.location                 = New-Object System.Drawing.Point(30,160)
$Label5.Font                     = 'Microsoft Sans Serif,10'

$Label8                          = New-Object system.Windows.Forms.Label
$Label8.AutoSize                 = $true
$Label8.width                    = 25
$Label8.height                   = 10
$Label8.location                 = New-Object System.Drawing.Point(162,160)
$Label8.Font                     = 'Microsoft Sans Serif,10'

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "Password Last Set:"
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(30,200)
$Label6.Font                     = 'Microsoft Sans Serif,10'

$Label9                          = New-Object system.Windows.Forms.Label
$Label9.AutoSize                 = $true
$Label9.width                    = 25
$Label9.height                   = 10
$Label9.location                 = New-Object System.Drawing.Point(162,200)
$Label9.Font                     = 'Microsoft Sans Serif,10'


$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Ok"
$Button1.width                   = 75
$Button1.height                  = 40
$Button1.location                = New-Object System.Drawing.Point(11,410)
$Button1.Font                    = 'Microsoft Sans Serif,10'

$Label10                         = New-Object system.Windows.Forms.Label
$Label10.text                    = "New Password:"
$Label10.AutoSize                = $true
$Label10.width                   = 25
$Label10.height                  = 10
$Label10.location                = New-Object System.Drawing.Point(13,329)
$Label10.Font                    = 'Microsoft Sans Serif,10'

$maskedTextBox2                        = New-Object system.Windows.Forms.TextBox
$MaskedTextBox2.PasswordChar           = '*'
$maskedTextBox2.multiline              = $false
$maskedTextBox2.width                  = 188
$maskedTextBox2.height                 = 20
$maskedTextBox2.location               = New-Object System.Drawing.Point(159,324)
$maskedTextBox2.Font                   = 'Microsoft Sans Serif,10'

$Label11                         = New-Object system.Windows.Forms.Label
$Label11.text                    = "Confirm Password:"
$Label11.AutoSize                = $true
$Label11.width                   = 25
$Label11.height                  = 10
$Label11.location                = New-Object System.Drawing.Point(13,369)
$Label11.Font                    = 'Microsoft Sans Serif,10'

$maskedTextBox3                  = New-Object system.Windows.Forms.TextBox
$MaskedTextBox3.PasswordChar     = '*'
$maskedTextBox3.multiline        = $false
$maskedTextBox3.width            = 189
$maskedTextBox3.height           = 20
$maskedTextBox3.location         = New-Object System.Drawing.Point(159,364)
$maskedTextBox3.Font             = 'Microsoft Sans Serif,10'

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Search"
$Button2.width                   = 79
$Button2.height                  = 23
$Button2.location                = New-Object System.Drawing.Point(385,8)
$Button2.Font                    = 'Microsoft Sans Serif,10'

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "Clear"
$Button3.width                   = 79
$Button3.height                  = 23
$Button3.location                = New-Object System.Drawing.Point(385,38)
$Button3.Font                    = 'Microsoft Sans Serif,10'

$Button4                         = New-Object system.Windows.Forms.Button
$Button4.text                    = "Reset Password"
$Button4.width                   = 75
$Button4.height                  = 40
$Button4.location                = New-Object System.Drawing.Point(192,410)
$Button4.Font                    = 'Microsoft Sans Serif,10'

$Button5                         = New-Object system.Windows.Forms.Button
$Button5.text                    = "Unlock Account"
$Button5.width                   = 70
$Button5.height                  = 40
$Button5.location                = New-Object System.Drawing.Point(395,410)
$Button5.Font                    = 'Microsoft Sans Serif,10'

$Label12                         = New-Object system.Windows.Forms.Label
$Label12.AutoSize                = $true
$Label12.width                   = 25
$Label12.height                  = 10
$Label12.location                = New-Object System.Drawing.Point(180,390)
$Label12.Font                    = 'Microsoft Sans Serif,10'

$Label13                        = New-Object system.Windows.Forms.Label
$label13.Text                    = "Email Address:"
$Label13.AutoSize                = $true
$Label13.width                   = 25
$Label13.height                  = 10
$Label13.location                = New-Object System.Drawing.Point(30,240)
$Label13.Font                    = 'Microsoft Sans Serif,10'

$Label14                         = New-Object system.Windows.Forms.Label
$Label14.AutoSize                = $true
$Label14.width                   = 25
$Label14.height                  = 10
$Label14.location                = New-Object System.Drawing.Point(163,240)
$Label14.Font                    = 'Microsoft Sans Serif,10'


$PictureBox1                     = New-Object system.Windows.Forms.PictureBox
$PictureBox1.width               = 270
$PictureBox1.height              = 150
$PictureBox1.location            = New-Object System.Drawing.Point(290,75)
$PictureBox1.imageLocation       = "C:\Program Files (x86)\Password Reset Utility\christie1.png"
$PictureBox1.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom


$Label15                        = New-Object system.Windows.Forms.Label
$label15.Text                    = "Employee Number:"
$Label15.AutoSize                = $true
$Label15.width                   = 25
$Label15.height                  = 10
$Label15.location                = New-Object System.Drawing.Point(30,280)
$Label15.Font                    = 'Microsoft Sans Serif,10'

$Label16                         = New-Object system.Windows.Forms.Label
$Label16.AutoSize                = $true
$Label16.width                   = 25
$Label16.height                  = 10
$Label16.location                = New-Object System.Drawing.Point(163,280)
$Label16.Font                    = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($Label1,$TextBox1,$Label3,$Label4,$Label5,$Label6,$Label7,$TextBox2,$TextBox3,$TextBox4,$TextBox5,$TextBox6,$Label8,$TextBox7,$Label9,$TextBox8,$Label10,$TextBox9,$Label11,$TextBox10,$Label12,$TextBox11,$Label13,$TextBox12,$Label14,$Label15,$label16,$Button1,$Button2,$Button3,$button4,$PictureBox1 ))




$Form.controls.AddRange(@($Label1,$TextBox1,$Label2,$Label3,$Label4,$Label5,$Label6,$Label7,$Label8,$Label9,$Button1,$Label10,$maskedTextBox2,$Label11,$label12,$label13,$label14,$maskedTextBox3,$Button2,$Button3,$button4,$button5,$PictureBox1))
$Button1.Add_Click({ OK })
$Button2.Add_Click{(multiuser)}
$Button3.Add_Click{$textbox1.Clear()
    $Label3.text =""
    $Label7.text =""
    $Label8.text =""
    $Label9.text =""
    $Label14.text =""
    $maskedTextBox3.text =""
    $maskedTextBox2.text =""
    $Label12.text = ""
    $Label16.text = ""
}
$Button4.Add_Click({ Reset })
$Button5.Add_Click({ unlock })
#input logic here:


function OK(){$Form.close()}

# The multiuser function is tied to the search button, & first queries ad with the textbox1 field & stops if an error occurs.

#If the query matches an entry in AD (using anr) it will display a window with matches for that record - displaying user names and the description for that user in ad(to assist with identifying)

# this function works best if you enter last name first name of the user in questions (just like the search function in AD)
function multiuser {

   
    try{
        $usert = $TextBox1.text
       
      

   
    
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()
    
    $Form                            = New-Object system.Windows.Forms.Form
    $Form.ClientSize                 = '300,250'
    $form.Text = 'User Selection'
    $Form.TopMost                    = $false
    $form.ShowIcon                   = $False
    
    $Label15                          = New-Object system.Windows.Forms.Label
    $Label15.text                     = "Please select a user below:"
    $Label15.AutoSize                 = $true
    $Label15.width                    = 25
    $Label15.height                   = 10
    $Label15.location                 = New-Object System.Drawing.Point(30,20)
    $Label15.Font                     = 'Microsoft Sans Serif,10'


    $usert = $TextBox1.text
    #$userf = $textbox1.text
    $user = Get-ADUser -LDAPFilter "(anr=$usert)" | select -expand samaccountname
    $user2 = Get-ADUser  -LDAPFilter "(anr=$usert)" -Properties * | select -expand Description
    #$users = @{""}
    #Get-ADUser -LDAPFilter "(anr=$usert)" -Properties * | foreach { $datagridview1.rows.add($_.samaccountname,$_.Division)
    #}
    if($user.count -le 1) {Get-ADUser $user -Properties * | select -expand Enabled -ErrorAction Stop}
    

  if ($user.count -ge 2) { $DataGridView1Data = @(@($user[0],$user2[0]),@($user[1],$user2[1]),@($user[2],$user2[2]),@($user[3],$user2[3]),@($user[4],$user2[4]),@($user[5],$user2[5]),@($user[6],$user2[6]),@($user[7],$user2[7]),@($user[8],$user2[8]))
      
  }
  else {$DataGridView1Data = @(@($user, $user2),@($h,$h))}
    $DataGridView1                   = New-Object system.Windows.Forms.DataGridView
    $DataGridView1.width             = 260
    $DataGridView1.height            = 140
    $DataGridView1.ColumnCount = 2
    $DataGridView1.ColumnHeadersVisible = $true
    $datagridview1.datasource = $list
    $DataGridView1.Columns[0].Name = "User Name"
    $DataGridView1.Columns[1].Name = "Title"
    #$DataGridView1.Columns[2].Name = "test"
    foreach ($row in $DataGridView1Data){
        $DataGridView1.Rows.Add($row)
    }
    $DataGridView1.location          = New-Object System.Drawing.Point(7,43)
    
    $Form.controls.AddRange(@($DataGridView1,$OKButton,$Label15))
    
    $OKButton = New-Object System.Windows.Forms.Button
    $OKButton.Location = New-Object System.Drawing.Point(2,220)
    $OKButton.Size = New-Object System.Drawing.Size(75,23)
    $OKButton.Text = 'OK'
    $OKButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $form.AcceptButton = $OKButton
    $form.Controls.Add($OKButton)
    
    
    $result = $form.ShowDialog()
    
    
    if ($result -eq [System.Windows.Forms.DialogResult]::OK)
    {
        $x = $DataGridView1.SelectedCells | select -expand FormattedValue
        $textbox1.text=$x
   $Label3.text =  Get-aduser  $textbox1.text -properties * | select -expand Name
   $Label7.text =  Get-ADUser $textbox1.text -Properties * | select -expand Enabled
   $Label8.text =  Get-ADUser $textbox1.text -Properties * | select -expand Lockedout
   $Label9.text =  Get-ADUser $textbox1.text -Properties * | select -expand PasswordlastSet
   $label14.text =  Get-ADUser $textbox1.text -Properties * | select -expand EmailAddress
   $label16.text =  Get-ADUser $textbox1.text -Properties * | select -expand EmployeeID
    }

}
catch {$textbox1.text= "User $usert not found" }
}



function reset {

    Try{

if($MaskedTextBox2.text -eq $maskedTextBox3.text ){
    $Password = ConvertTo-SecureString -AsPlainText $maskedtextbox2.text -Force
    Set-ADAccountPassword $TextBox1.Text -NewPassword $Password -reset
    $Label12.text = "Password Reset."
}
Else {$Label12.text = "Passwords do not match."
}}
Catch{$Label12.text = "Unable to reset password."}
}

# the unlock function, along with the reset password function - require domain admin credentials in order to work. 
function unlock {
try{
    Unlock-ADAccount $textbox1.Text
    $label12.text = "Account Unlocked."


}
catch {$label12.text = "Unable to unlock account."}
}



[void]$Form.ShowDialog()