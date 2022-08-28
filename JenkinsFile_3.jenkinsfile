pipeline {
    agent any
   options {
    skipDefaultCheckout true
  }

  environment {
      Job_1 = true
      Job_2 = false
  }

    stages {
        stage("Job1") {

            when {
                environment name: 'Job_1', value: 'true'
            }
            steps {
              checkout scm
              sh "./scripts/job1.sh"
            }
        }

        stage("Job2") {
            when {
                environment name: 'Job_2', value: 'true'
            }
            steps {
                sh "./scripts/job2.sh"
            }
        }
        
    }
}
