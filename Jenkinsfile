pipeline {
    agent {
        node {
            label 'AGENT-1'
        }
    } 
    environment { 
        GREETING = 'Good Morning'
    }
   // BUILD
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
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