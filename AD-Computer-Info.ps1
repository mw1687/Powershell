#AD Computer Info
#Created by Matt Wilson 5-31-22

Add-Type -AssemblyName PresentationFramework
Add-Type -assembly System.Windows.Forms
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='AD Computer Information'
$main_form.Width = 800
$main_form.Height = 400
$main_form.AutoSize = $true

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Computers"
$Label.Location  = New-Object System.Drawing.Point(0,10)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$ComboBox = New-Object System.Windows.Forms.ComboBox
$ComboBox.Width = 300
$Computers = get-adcomputer -filter * -Properties Name | Sort-Object
Foreach ($Computer in $Computers)
{
$ComboBox.Items.Add($Computer.Name);
}
$ComboBox.Location  = New-Object System.Drawing.Point(60,10)
$main_form.Controls.Add($ComboBox)

$Label4 = New-Object System.Windows.Forms.Label
$Label4.Text = "Operating System:"
$Label4.Location  = New-Object System.Drawing.Point(0,40)
$Label4.AutoSize = $true
$main_form.Controls.Add($Label4)

$Label5 = New-Object System.Windows.Forms.Label
$Label5.Text = ""
$Label5.Location  = New-Object System.Drawing.Point(120,40)
$Label5.AutoSize = $true
$main_form.Controls.Add($Label5)

$Label6 = New-Object System.Windows.Forms.Label
$Label6.Text = "IP Address:"
$Label6.Location  = New-Object System.Drawing.Point(0,60)
$Label6.AutoSize = $true
$main_form.Controls.Add($Label6)

$Label7 = New-Object System.Windows.Forms.Label
$Label7.Text = ""
$Label7.Location  = New-Object System.Drawing.Point(120,60)
$Label7.AutoSize = $true
$main_form.Controls.Add($Label7)

$Label8 = New-Object System.Windows.Forms.Label
$Label8.Text = "Published At:"
$Label8.Location  = New-Object System.Drawing.Point(0,80)
$Label8.AutoSize = $true
$main_form.Controls.Add($Label8)

$Label9 = New-Object System.Windows.Forms.Label
$Label9.Text = ""
$Label9.Location  = New-Object System.Drawing.Point(120,80)
$Label9.AutoSize = $true
$main_form.Controls.Add($Label9)

$Label10 = New-Object System.Windows.Forms.Label
$Label10.Text = "Last Logon Timestamp:"
$Label10.Location  = New-Object System.Drawing.Point(0,100)
$Label10.AutoSize = $true
$main_form.Controls.Add($Label10)

$Label11 = New-Object System.Windows.Forms.Label
$Label11.Text = ""
$Label11.Location  = New-Object System.Drawing.Point(120,100)
$Label11.AutoSize = $true
$main_form.Controls.Add($Label11)

$Label12 = New-Object System.Windows.Forms.Label
$Label12.Text = "Enabled:"
$Label12.Location  = New-Object System.Drawing.Point(0,120)
$Label12.AutoSize = $true
$main_form.Controls.Add($Label12)

$Label13 = New-Object System.Windows.Forms.Label
$Label13.Text = ""
$Label13.Location  = New-Object System.Drawing.Point(120,120)
$Label13.AutoSize = $true
$main_form.Controls.Add($Label13)



$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(400,10)
$Button.Size = New-Object System.Drawing.Size(120,23)
$Button.Text = "Check"
$main_form.Controls.Add($Button)


$Button.Add_Click(
{
$Label5.Text =  Get-ADComputer $ComboBox.SelectedItem -Properties * | Select-Object OperatingSystem -ExpandProperty OperatingSystem
$Label7.Text =  Get-ADComputer $ComboBox.SelectedItem -Properties * | Select-Object IPv4Address -ExpandProperty IPv4Address
$Label9.Text =  Get-ADComputer $ComboBox.SelectedItem -Properties * | Select-Object CanonicalName -ExpandProperty CanonicalName
$Label11.Text =  Get-ADComputer $ComboBox.SelectedItem -Properties * | Select-Object Description -ExpandProperty Description
$Label13.Text =  Get-ADComputer $ComboBox.SelectedItem -Properties * | Select-Object Enabled -ExpandProperty Enabled
}
)

$Button2 = New-Object System.Windows.Forms.Button
$Button2.Location = New-Object System.Drawing.Size(100,160)
$Button2.Size = New-Object System.Drawing.Size(120,23)
$Button2.Text = "Mark as Disabled"
$main_form.Controls.Add($Button2)

$Button2.Add_Click( 
{
Set-ADComputer $ComboBox.SelectedItem -Enabled $False
[void] [System.Windows.MessageBox]::Show( "Computer has been successfully Disabled", "Script completed", "OK", "Information" )
}
)

$Button3 = New-Object System.Windows.Forms.Button
$Button3.Location = New-Object System.Drawing.Size(300,160)
$Button3.Size = New-Object System.Drawing.Size(120,23)
$Button3.Text = "Move to Disabled OU"
$main_form.Controls.Add($Button3)

$Button3.Add_Click( 
{
Get-ADComputer $ComboBox.SelectedItem | Move-ADObject -TargetPath "OU=Disabled Accounts Users and Computers,DC=contoso,DC=com"
[void] [System.Windows.MessageBox]::Show( "Computer has been successfully moved to Disabled OU", "Script completed", "OK", "Information" )
}
)


$main_form.ShowDialog()