#AD User Info Script
#Created by Matt Wilson - May 31, 2022

#Main Form Creation
Add-Type -AssemblyName PresentationFramework
Add-Type -assembly System.Windows.Forms
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='AD User Information'
$main_form.Width = 800
$main_form.Height = 450
$main_form.AutoSize = $true

#Begin Label Sections

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "AD users"
$Label.Location  = New-Object System.Drawing.Point(0,10)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

#Title Group
$Label2 = New-Object System.Windows.Forms.Label
$Label2.Text = "Title:"
$Label2.Location  = New-Object System.Drawing.Point(0,40)
$Label2.AutoSize = $true
$main_form.Controls.Add($Label2)
#Populated by $Button.Add_Click
$Label3 = New-Object System.Windows.Forms.Label
$Label3.Text = ""
$Label3.Location  = New-Object System.Drawing.Point(110,40)
$Label3.AutoSize = $true
$main_form.Controls.Add($Label3)

#Locked Out Group
$Label4 = New-Object System.Windows.Forms.Label
$Label4.Text = "Locked Out:"
$Label4.Location  = New-Object System.Drawing.Point(0,100)
$Label4.AutoSize = $true
$main_form.Controls.Add($Label4)
#Populated by $Button.Add_Click
$Label5 = New-Object System.Windows.Forms.Label
$Label5.Text = ""
$Label5.Location  = New-Object System.Drawing.Point(110,100)
$Label5.AutoSize = $true
$main_form.Controls.Add($Label5)

#Account Expired Group
$Label6 = New-Object System.Windows.Forms.Label
$Label6.Text = "Account Expired:"
$Label6.Location  = New-Object System.Drawing.Point(0,120)
$Label6.AutoSize = $true
$main_form.Controls.Add($Label6)
#Populated by $Button.Add_Click
$Label7 = New-Object System.Windows.Forms.Label
$Label7.Text = ""
$Label7.Location  = New-Object System.Drawing.Point(110,120)
$Label7.AutoSize = $true
$main_form.Controls.Add($Label7)

#Published At Group
$Label8 = New-Object System.Windows.Forms.Label
$Label8.Text = "Published At:"
$Label8.Location  = New-Object System.Drawing.Point(0,140)
$Label8.AutoSize = $true
$main_form.Controls.Add($Label8)
#Populated by $Button.Add_Click
$Label9 = New-Object System.Windows.Forms.Label
$Label9.Text = ""
$Label9.Location  = New-Object System.Drawing.Point(110,140)
$Label9.AutoSize = $true
$main_form.Controls.Add($Label9)

#ExtensionAttribute15 Group
$Label10 = New-Object System.Windows.Forms.Label
$Label10.Text = "ExtensionAttribute15:"
$Label10.Location  = New-Object System.Drawing.Point(0,160)
$Label10.AutoSize = $true
$main_form.Controls.Add($Label10)
#Populated by $Button.Add_Click
$Label11 = New-Object System.Windows.Forms.Label
$Label11.Text = ""
$Label11.Location  = New-Object System.Drawing.Point(110,160)
$Label11.AutoSize = $true
$main_form.Controls.Add($Label11)

#ws Group Membership Group
$Label12 = New-Object System.Windows.Forms.Label
$Label12.Text = "ws Group Membership:"
$Label12.Location  = New-Object System.Drawing.Point(0,180)
$Label12.AutoSize = $true
$main_form.Controls.Add($Label12)
#Populated by $Button.Add_Click
$Label13 = New-Object System.Windows.Forms.Label
$Label13.Text = ""
$Label13.Location  = New-Object System.Drawing.Point(120,180)
$Label13.AutoSize = $true
$main_form.Controls.Add($Label13)

#AD Group Memberships Label - See ComboBox3
$Label14 = New-Object System.Windows.Forms.Label
$Label14.Text = "AD Group Memberships:"
$Label14.Location  = New-Object System.Drawing.Point(0,320)
$Label14.AutoSize = $true
$main_form.Controls.Add($Label14)

#Manager Group
$Label15 = New-Object System.Windows.Forms.Label
$Label15.Text = "Manager:"
$Label15.Location  = New-Object System.Drawing.Point(0,60)
$Label15.AutoSize = $true
$main_form.Controls.Add($Label15)
#Populated by $Button.Add_Click
$Label16 = New-Object System.Windows.Forms.Label
$Label16.Text = ""
$Label16.Location  = New-Object System.Drawing.Point(110,60)
$Label16.AutoSize = $true
$main_form.Controls.Add($Label16)

#Phone Number Group
$Label17 = New-Object System.Windows.Forms.Label
$Label17.Text = "Phone Number:"
$Label17.Location  = New-Object System.Drawing.Point(0,80)
$Label17.AutoSize = $true
$main_form.Controls.Add($Label17)
#Populated by $Button.Add_Click
$Label18 = New-Object System.Windows.Forms.Label
$Label18.Text = ""
$Label18.Location  = New-Object System.Drawing.Point(110,80)
$Label18.AutoSize = $true
$main_form.Controls.Add($Label18)

#Radius Group Membership Group
$Label19 = New-Object System.Windows.Forms.Label
$Label19.Text = "Radius Group Membership:"
$Label19.Location  = New-Object System.Drawing.Point(0,210)
$Label19.AutoSize = $true
$main_form.Controls.Add($Label19)
#Populated by $Button.Add_Click
$Label20 = New-Object System.Windows.Forms.Label
$Label20.Text = ""
$Label20.Location  = New-Object System.Drawing.Point(140,210)
$Label20.AutoSize = $true
$main_form.Controls.Add($Label20)

#New Manager - See ComboBox5
$Label21 = New-Object System.Windows.Forms.Label
$Label21.Text = "New Manager:"
$Label21.Location  = New-Object System.Drawing.Point(250,60)
$Label21.AutoSize = $true
$main_form.Controls.Add($Label21)

#BYOD Label
$Label22 = New-Object System.Windows.Forms.Label
$Label22.Text = "For BYOD Registration Purposes Only:"
$Label22.Location  = New-Object System.Drawing.Point(0,350)
$Label22.AutoSize = $true
$main_form.Controls.Add($Label22)

#Sophos Group Membership Group
$Label23 = New-Object System.Windows.Forms.Label
$Label23.Text = "Sophos Group Membership:"
$Label23.Location  = New-Object System.Drawing.Point(0,240)
$Label23.AutoSize = $true
$main_form.Controls.Add($Label23)
#Populated by $Button.Add_Click
$Label24 = New-Object System.Windows.Forms.Label
$Label24.Text = ""
$Label24.Location  = New-Object System.Drawing.Point(145,240)
$Label24.AutoSize = $true
$main_form.Controls.Add($Label24)

#User Policy Group Membership Group
$Label25 = New-Object System.Windows.Forms.Label
$Label25.Text = "User Policy Membership:"
$Label25.Location  = New-Object System.Drawing.Point(0,270)
$Label25.AutoSize = $true
$main_form.Controls.Add($Label25)
#Populated by $Button.Add_Click
$Label26 = New-Object System.Windows.Forms.Label
$Label26.Text = ""
$Label26.Location  = New-Object System.Drawing.Point(145,270)
$Label26.AutoSize = $true
$main_form.Controls.Add($Label26)

#End Label Section

#Begin ComboBox Section

#ComboBox and ComboBox5 is combined for single query
#ComboBox and ComboBox5 populate ADUsers and New Manager boxes with User Names
$ComboBox = New-Object System.Windows.Forms.ComboBox
$ComboBox.Width = 300
$ComboBox5 = New-Object System.Windows.Forms.ComboBox
$ComboBox5.Width = 150
$Users = get-aduser -filter * -Properties SamAccountName | Sort-Object
Foreach ($User in $Users)
{
$ComboBox.Items.Add($User.SamAccountName);
$ComboBox5.Items.Add($User.SamAccountName);
}
$ComboBox.Location  = New-Object System.Drawing.Point(60,10)
$ComboBox5.Location  = New-Object System.Drawing.Point(340,55)
$main_form.Controls.Add($ComboBox)
$main_form.Controls.Add($ComboBox5)

#ComboBox3 is for ADGroup Memberships
$ComboBox3 = New-Object System.Windows.Forms.ComboBox
$ComboBox3.Width = 300
$ComboBox3.Location  = New-Object System.Drawing.Point(130,320)
$main_form.Controls.Add($ComboBox3)

#ComboBox6 is for wsGroupMemberships
$ComboBox6 = New-Object System.Windows.Forms.ComboBox
$ComboBox6.Width = 120
$ComboBox6.Location  = New-Object System.Drawing.Point(400,176)
$wsGroups = get-adgroup -SearchBase "OU=Websense Groups,DC=contoso,DC=com" -filter * -Properties SamAccountName | Sort-Object
Foreach ($wsGroup in $wsGroups)
{
$ComboBox6.Items.Add($wsGroup.SamAccountName);
}
$main_form.Controls.Add($ComboBox6)

#ComboBox7 is for Radius Group Memberships
$ComboBox7 = New-Object System.Windows.Forms.ComboBox
$ComboBox7.Width = 120
$ComboBox7.Location  = New-Object System.Drawing.Point(400,206)
$RadiusGroups = get-adgroup -Filter {Name -like 'Radius_*'} -Properties * | Select-Object SamAccountName -ExpandProperty SamAccountName
Foreach ($RadiusGroup in $RadiusGroups)
{
$ComboBox7.Items.Add($RadiusGroup.SamAccountName);
}
$main_form.Controls.Add($ComboBox7)

#ComboBox8 is for Sophos Group Memberships
$ComboBox8 = New-Object System.Windows.Forms.ComboBox
$ComboBox8.Width = 120
$ComboBox8.Location  = New-Object System.Drawing.Point(400,236)
$SophosGroups = get-adgroup -SearchBase "OU=Sophos Groups,DC=contoso,DC=com" -filter * -Properties SamAccountName | Sort-Object
Foreach ($SophosGroup in $SophosGroups)
{
$ComboBox8.Items.Add($SophosGroup.SamAccountName);
}
$main_form.Controls.Add($ComboBox8)

#ComboBox9 is for User Policy Group Memberships
$ComboBox9 = New-Object System.Windows.Forms.ComboBox
$ComboBox9.Width = 120
$ComboBox9.Location  = New-Object System.Drawing.Point(400,266)
$UserPolicyGroups = get-adgroup -SearchBase "OU=Policy and install Groups,DC=contoso,DC=com" -filter {(Name -like 'User Policy Standard') -or (Name -like 'User Policy Laptop')} -Properties SamAccountName | Select-Object SamAccountName -ExpandProperty SamAccountName | Sort-Object
Foreach ($UserPolicyGroup in $UserPolicyGroups)
{
$ComboBox9.Items.Add($UserPolicyGroup.SamAccountName);
}
$main_form.Controls.Add($ComboBox9)

#End ComboBox Section

#Begin Button Section

#Button 1 Start
$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(500,10)
$Button.Size = New-Object System.Drawing.Size(120,23)
$Button.Text = "Check"
$main_form.Controls.Add($Button)

$Button.Add_Click(
{
$Label3.Text = ""
$Label16.Text = ""
$Label18.Text = ""
$Label5.Text = ""
$Label7.Text = ""
$Label9.Text = ""
$Label11.Text = ""
$Label13.Text = ""
$Label20.Text = ""
$Label24.Text = ""
$Label26.Text = ""
$ComboBox3.Items.Clear()
$Label3.Text =  Get-ADUser $ComboBox.SelectedItem -Properties * | Select-Object Title -ExpandProperty Title
$Label16.Text = (Get-ADUser (get-aduser $ComboBox.SelectedItem -Properties manager).manager).Name
$Label18.Text =  Get-ADUser $ComboBox.SelectedItem -Properties * | Select-Object telephonenumber -ExpandProperty telephonenumber
$Label5.Text =  Get-ADUser $ComboBox.SelectedItem -Properties * | Select-Object lockedout -ExpandProperty LockedOut
$Label7.Text =  Get-ADUser $ComboBox.SelectedItem -Properties * | Select-Object PasswordExpired -ExpandProperty PasswordExpired
$Label9.Text =  Get-ADUser $ComboBox.SelectedItem -Properties * | Select-Object CanonicalName -ExpandProperty CanonicalName
$Label11.Text =  Get-ADUser $ComboBox.SelectedItem -Properties * | Select-Object extensionAttribute15 -ExpandProperty extensionAttribute15
$Label13.Text = (Get-ADPrincipalGroupMembership $ComboBox.SelectedItem | Where-object { 
    ($_.samaccountname -match "wsSocialNet") -or
    ($_.samaccountname -match "wsReadOnlySocial") -or
    ($_.samaccountname -match "wsPowerUsers") -or
    ($_.samaccountname -match "wsManagement") -or
    ($_.samaccountname -match "wsExtSharing")
  } |
Select-Object SamAccountName -ExpandProperty SamAccountName)
$GroupMemberships = Get-ADPrincipalGroupMembership $ComboBox.SelectedItem | Select-Object SamAccountName | Sort-Object
Foreach ($GroupMembership in $GroupMemberships)
{
$ComboBox3.Items.Add($GroupMembership.SamAccountName);
}
$Label20.Text = (Get-ADPrincipalGroupMembership $ComboBox.SelectedItem | Where-object { 
    ($_.samaccountname -match "Radius_Wifi") -or
    ($_.samaccountname -match "Radius_VPN") -or
    ($_.samaccountname -match "Radius_All")
  } |
Select-Object SamAccountName -ExpandProperty SamAccountName)
$Label24.Text = (Get-ADPrincipalGroupMembership $ComboBox.SelectedItem | Where-object { 
    ($_.samaccountname -match "SophosBase") -or
    ($_.samaccountname -match "SophosManagement") -or
    ($_.samaccountname -match "SophosExtDeviceAccess")
  } |
Select-Object SamAccountName -ExpandProperty SamAccountName)
$Label26.Text = (Get-ADPrincipalGroupMembership $ComboBox.SelectedItem | Where-object { 
    ($_.samaccountname -match "User Policy Standard") -or
    ($_.samaccountname -match "User Policy Laptop")
  } |
Select-Object SamAccountName -ExpandProperty SamAccountName)
}
)
#Button 1 End

#Button 2 Start
$Button2 = New-Object System.Windows.Forms.Button
$Button2.Location = New-Object System.Drawing.Size(500,95)
$Button2.Size = New-Object System.Drawing.Size(120,23)
$Button2.Text = "Unlock Account"
$main_form.Controls.Add($Button2)

$Button2.Add_Click(
{
Unlock-ADAccount -Identity $ComboBox.SelectedItem
[void] [System.Windows.MessageBox]::Show( "User has been successfully unlocked ", "Script completed", "OK", "Information" )
}
)
#Button 2 End

#Button 3 Start
$Button3 = New-Object System.Windows.Forms.Button
$Button3.Location = New-Object System.Drawing.Size(500,54)
$Button3.Size = New-Object System.Drawing.Size(120,23)
$Button3.Text = "Update Manager"
$main_form.Controls.Add($Button3)

$Button3.Add_Click(
{
Set-ADUser -Identity $ComboBox.SelectedItem -Manager $ComboBox5.SelectedItem
[void] [System.Windows.MessageBox]::Show( "Manager has been successfully updated", "Script completed", "OK", "Information" )
}
)
#Button 3 End

#Button 4 Start
$Button4 = New-Object System.Windows.Forms.Button
$Button4.Location = New-Object System.Drawing.Size(540,176)
$Button4.Size = New-Object System.Drawing.Size(80,23)
$Button4.Text = "Add"
$main_form.Controls.Add($Button4)

$Button4.Add_Click(
{
Add-ADGroupMember -Identity $Combobox6.selectedItem -Members $ComboBox.selectedItem -Confirm:$false
[void] [System.Windows.MessageBox]::Show( "User has been successfully added", "Script completed", "OK", "Information" )
}
)
#Button 4 End

#Button 5 Start
$Button5 = New-Object System.Windows.Forms.Button
$Button5.Location = New-Object System.Drawing.Size(540,206)
$Button5.Size = New-Object System.Drawing.Size(80,23)
$Button5.Text = "Add"
$main_form.Controls.Add($Button5)

$Button5.Add_Click(
{
Add-ADGroupMember -Identity $Combobox7.selectedItem -Members $ComboBox.selectedItem -Confirm:$false
[void] [System.Windows.MessageBox]::Show( "User has been successfully added", "Script completed", "OK", "Information" )
}
)
#Button 5 End

#Button 6 Start
$Button6 = New-Object System.Windows.Forms.Button
$Button6.Location = New-Object System.Drawing.Size(500,318)
$Button6.Size = New-Object System.Drawing.Size(120,23)
$Button6.Text = "Remove Membership"
$main_form.Controls.Add($Button6)

$Button6.Add_Click(
{
Remove-ADGroupMember -Identity $Combobox3.selectedItem -Members $ComboBox.selectedItem -Confirm:$false
[void] [System.Windows.MessageBox]::Show( "User has been successfully removed ", "Script completed", "OK", "Information" )
$ComboBox3.Items.Clear()
}
)
#Button 6 End

#Button 7 Start
$Button7 = New-Object System.Windows.Forms.Button
$Button7.Location = New-Object System.Drawing.Size(220,350)
$Button7.Size = New-Object System.Drawing.Size(150,23)
$Button7.Text = "Add to Excluded_Users"
$main_form.Controls.Add($Button7)

$Button7.Add_Click(
{
Add-ADGroupMember -Identity Excluded_Users -Members $ComboBox.selectedItem -Confirm:$false
[void] [System.Windows.MessageBox]::Show( "User has been successfully added", "Script completed", "OK", "Information" )
}
)
#Button 7 End

#Button 8 Start
$Button8 = New-Object System.Windows.Forms.Button
$Button8.Location = New-Object System.Drawing.Size(540,236)
$Button8.Size = New-Object System.Drawing.Size(80,23)
$Button8.Text = "Add"
$main_form.Controls.Add($Button8)

$Button8.Add_Click(
{
Add-ADGroupMember -Identity $Combobox8.selectedItem -Members $ComboBox.selectedItem -Confirm:$false
[void] [System.Windows.MessageBox]::Show( "User has been successfully added", "Script completed", "OK", "Information" )
}
)
#Button 8 End

#Button 9 Start
$Button9 = New-Object System.Windows.Forms.Button
$Button9.Location = New-Object System.Drawing.Size(540,266)
$Button9.Size = New-Object System.Drawing.Size(80,23)
$Button9.Text = "Add"
$main_form.Controls.Add($Button9)

$Button9.Add_Click(
{
Add-ADGroupMember -Identity $Combobox9.selectedItem -Members $ComboBox.selectedItem -Confirm:$false
[void] [System.Windows.MessageBox]::Show( "User has been successfully added", "Script completed", "OK", "Information" )
}
)
#Button 9 End

#Displays the main form - This must be at the very end.
$main_form.ShowDialog()