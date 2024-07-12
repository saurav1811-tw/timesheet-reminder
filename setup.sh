# Step1: Copy timesheet_reminder.sh script to /usr/local/bin directory and set required permissions
cp timesheet_reminder.sh /usr/local/bin
chmod 755 /usr/local/bin/timesheet_reminder.sh
chown ${USER}:admin /usr/local/bin/timesheet_reminder.sh

# Step2: Add environment variables in .zshenv file and source it to .zshrc
echo "export TIMESHEET_REMINDER_RC=0" >> ~/.zshenv
echo "export TIMESHEET_REMINDER_DATE=$(date '+%Y-%m-%d')" >> ~/.zshenv
echo "source ~/.zshenv" >> ~/.zshrc
source ~/.zshrc

# Step3: Set cronjob in crontab file
crontab -e
# Add cron expression with command in the file as shown below-
# 0/30 9-12 * * 5 open -a iTerm /usr/local/bin/timesheet_reminder.sh

# Step4: Check crontab file for job setup
crontab -l

