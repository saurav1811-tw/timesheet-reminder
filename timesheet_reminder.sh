#!/bin/bash
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

timesheet_reminder()
{
echo "Hello, Have you filled your timesheet Y/N ?"
read timesheet_flag
local result=255

if [[ $timesheet_flag == "Y" ]] || [[ $timesheet_flag == "y" ]]
 then
 echo "Thanks for confirmation! You have filled it"
 result=0
elif [[ $timesheet_flag == "N" ]] || [[ $timesheet_flag == "n" ]]
 then
 echo "Okay! Please fill it"
 result=1
else
 echo "Provide Valid Input i.e. Y/N"
 timesheet_reminder
fi

return $result
}


dt=$(date '+%-Y-%-m-%-d')
source ~/.zshenv
if [[ $TIMESHEET_REMINDER_RC -ne 0 ]] || [[ $TIMESHEET_REMINDER_DATE -ne $dt ]]
  then
  #Run the function
  timesheet_reminder
  rc=$? 
  #Update TIMESHEET_REMINDER_RC, TIMESHEET_REMINDER_DATE Environment Variables
  sed '/TIMESHEET_REMINDER_RC/d' ~/.zshenv > ~/.zshenv_tmp1
  sed '/TIMESHEET_REMINDER_DATE/d' ~/.zshenv_tmp1 > ~/.zshenv_tmp2
  cp -f ~/.zshenv_tmp2 ~/.zshenv
  rm -rf ~/.zshenv_tmp1 ~/.zshenv_tmp2
  echo "export TIMESHEET_REMINDER_RC=$rc" >> ~/.zshenv
  echo "export TIMESHEET_REMINDER_DATE=$dt" >> ~/.zshenv
else
  echo "You have already filled Timesheet for $dt and confirmed!"
fi
sleep 10
exit
