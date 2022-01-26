def user = "sauravmohapatra"

pipeline {

    environment {
        USER = "${user}"
    }
    
    agent any

    stages {
        stage ('Deploy') {
            steps {
                echo "My Timesheet Reminder Deployment"
                sh '''
                    cp timesheet_reminder.sh /usr/local/bin/
                    chmod 755 /usr/local/bin/timesheet_reminder.sh
                    chown ${USER}:admin /usr/local/bin/timesheet_reminder.sh
                '''
            }
        }
    }
}