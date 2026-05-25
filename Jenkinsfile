pipeline {
    agent {
        node {
            label 'AGENT-1'
        }
    } 
    environment { 
        GREETING = 'Good Morning'
    }
    options {
        timeout(time: 1, unit: 'SECONDS')
    }
   // BUILD
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh """ 
                    sleep 10
                """
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
            }
        }
        stage('Greeting') {
            steps {
                sh """
                    echo 'Hello, $GREETING'
                """
                echo "Hello Prem, $GREETING"
            }
        }
    }
    // POST 
    post {
        failure {
            echo 'The pipeline is FAILED'
        }
        success {
            echo 'The pipeline is SUCESS'
        }
    }
}