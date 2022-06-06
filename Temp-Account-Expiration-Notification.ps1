$SevenDayWarnDate = (get-date).adddays(7).ToString('MM-dd-yyy')
$ThreeDayWarnDate = (get-date).adddays(3).ToString('MM-dd-yyy')
$OneDayWarnDate = (get-date).adddays(1).ToString('MM-dd-yyy')
$MailSender = " Account Expirations <AccountExpirations@missionfed.com>"
$Subject = 'Temp Employee Account Will Expire Soon'
$EmailStub1 = 'This email is to inform you that the account for'
$EmailStub2 = 'will expire in'
$EmailStub3 = 'days on'
$EmailStub4 = '. Please contact the helpdesk if you need assistance with modifying this account.'
$SMTPServer = 'smtprelay.missionfcu.org'
Get-ADUser -Filter {Enabled -eq $True -and PasswordNeverExpires -eq $False -and Title -like '*Temp*'} –Properties "AccountExpirationDate", "Manager", "Name" |
Where {$_.AccountExpirationDate } | 
ForEach {
        
        $daysLeft = ($_.AccountExpirationDate - (Get-Date)).Days
        

        If ( $daysLeft -eq "7" ) {
         $days = 7
         $ManagerEmail = (Get-ADUser (get-aduser $_.samaccountname -Properties manager).manager).samaccountname + "@contoso.com"
         $EmailBody = $EmailStub1, $_.name, $EmailStub2, $days, $EmailStub3, $SevenDayWarnDate, $EmailStub4 -join ' '
         write-host $_.Name, $days, $ManagerEmail
         Send-MailMessage -To $ManagerEmail -From $MailSender -SmtpServer $SMTPServer -Subject $Subject -Body $EmailBody
        }
       elseif ( $daysLeft -eq "3" ) {
         $days = 3
         $ManagerEmail = (Get-ADUser (get-aduser $_.samaccountname -Properties manager).manager).samaccountname + "@contoso.com"
         $EmailBody = $EmailStub1, $_.name, $EmailStub2, $days, $EmailStub3, $ThreeDayWarnDate, $EmailStub4 -join ' '
         write-host $_.Name, $days, $ManagerEmail
         Send-MailMessage -To $ManagerEmail -From $MailSender -SmtpServer $SMTPServer -Subject $Subject -Body $EmailBody
     }
        elseif ( $daysLeft -eq "1" ) {
         $days = 1
         $ManagerEmail = (Get-ADUser (get-aduser $_.samaccountname -Properties manager).manager).samaccountname + "@contoso.com"
         $EmailBody = $EmailStub1, $_.name, $EmailStub2, $days, $EmailStub3, $OneDayWarnDate, $EmailStub4 -join ' '
         write-host $_.Name, $days, $ManagerEmail
         Send-MailMessage -To $ManagerEmail -From $MailSender -SmtpServer $SMTPServer -Subject $Subject -Body $EmailBody
     }
    else {}
  }
