README.md

This automation bash script helps you remind to fill your timesheets every Friday (First Half).
Save it in /usr/local/bin folder.


Adding Environment Variables (.zshenv file):
1) If .zshenv file does not exist then create & add environment variables:
vi ~/.zshenv (and then save & exit)
echo "export TIMESHEET_REMINDER_RC=0" >> ~/.zshenv
echo "export TIMESHEET_REMINDER_DATE=$(date '+%Y-%m-%d')" >> ~/.zshenv
2) If .zshenv file exists then directly add environment variables:
echo "export TIMESHEET_REMINDER_RC=0" >> ~/.zshenv
echo "export TIMESHEET_REMINDER_DATE=$(date '+%Y-%m-%d')" >> ~/.zshenv

NOTE: If you have older version of mac then you can setup the above environment variables in ~/.bash_profile file.


Adding Cron Job:
crontab -e
0/30 9-12 * * 5  open -a Terminal.app /usr/local/bin/timesheet_reminder.sh

Checking Cron Job:
crontab -l


Important System level Setup References:
1) Make the bash script executable to all users by running following command:
chmod +x /usr/local/bin/timesheet_reminder.sh
1) Crontab having Full Disk Access in macOS: https://apple.stackexchange.com/questions/378553/crontab-operation-not-permitted
2) Close macOS terminal automatically when process exits: https://www.howtogeek.com/409849/how-to-close-the-macos-terminal-automatically-when-a-process-exits/