# timesheet-reminder
_**NOTE:** This app is only made for Mac users._<br>
This is an automation script which helps you remind to fill your timesheets every Friday (First Half).<br>

### Setup
Run the following script to do the setup
```console
./setup.sh
```
**NOTE:-** While performing setup, it will open crontab file to enter cronjob entry which is as follows:-
`*0/30 9-12 * * 5  open -a Terminal.app /usr/local/bin/timesheet_reminder.sh`
<br>This cronjob will run every friday from 9 AM to 12 AM system time. You can change the cron expression as per your use case.

### Important Notes
1) Crontab having Full Disk Access in Mac: https://apple.stackexchange.com/questions/378553/crontab-operation-not-permitted<br>
2) Make the bash script default executable by Terminal app: https://apple.stackexchange.com/questions/130587/lsopenurlswithrole-failed-with-error-10810-downloaded-app-does-not-start<br>
3) Close Mac terminal automatically when process exits: https://www.howtogeek.com/409849/how-to-close-the-macos-terminal-automatically-when-a-process-exits/<br>
4) To handle value too great for base issue: https://titanwolf.org/Network/Articles/Article?AID=fd301104-702a-43be-a11c-dce8776b9170<br>
