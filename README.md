# timesheet-reminder

This automation bash script helps you remind to fill your timesheets every Friday (First Half).<br>
Save it in /usr/local/bin folder.<br><br><br>


Adding Environment Variables (.zshenv file):<br>
1) If .zshenv file does not exist then create & add environment variables:<br><br>
*vi ~/.zshenv (and then save & exit)<br>
echo "export TIMESHEET_REMINDER_RC=0" >> ~/.zshenv<br>
echo "export TIMESHEET_REMINDER_DATE=$(date '+%Y-%m-%d')" >> ~/.zshenv*<br><br>
2) If .zshenv file exists then directly add environment variables:<br><br>
*echo "export TIMESHEET_REMINDER_RC=0" >> ~/.zshenv<br>
echo "export TIMESHEET_REMINDER_DATE=$(date '+%Y-%m-%d')" >> ~/.zshenv*<br><br>

NOTE: If you have older version of mac then you can setup the above environment variables in ~/.bash_profile file.<br><br><br>


Adding Cron Job:<br><br>
*crontab -e<br>
0/30 9-12 * * 5  open -a Terminal.app /usr/local/bin/timesheet_reminder.sh*<br><br>

Checking Cron Job:<br><br>
*crontab -l*<br><br><br>


Important System level Setup References:<br>
1) Make the bash script executable to all users by running following command:<br><br>
*chmod 755 /usr/local/bin/timesheet_reminder.sh*<br><br>
2) Crontab having Full Disk Access in macOS: https://apple.stackexchange.com/questions/378553/crontab-operation-not-permitted<br>
3) Close macOS terminal automatically when process exits: https://www.howtogeek.com/409849/how-to-close-the-macos-terminal-automatically-when-a-process-exits/<br>
4) Make the bash script default executable by iTerm / any other terminal app: https://apple.stackexchange.com/questions/130587/lsopenurlswithrole-failed-with-error-10810-downloaded-app-does-not-start
5) To install iTerm, refer this: https://iterm2.com/
