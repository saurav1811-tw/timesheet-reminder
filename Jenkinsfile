def user = "sauravmohapatra"

pipeline {
    
    agent any

    stages {
        stage ('Deploy') {
            steps {
                echo "My Timesheet Reminder Deployment"
                sh '''
                    pwd
                    ls -ltrh
                    cp timesheet_reminder.sh /usr/local/bin/
                    chmod 755 /usr/local/bin/timesheet_reminder.sh
                    chown ${user}:admin /usr/local/bin/timesheet_reminder.sh
                '''
            }
        }
    }
}