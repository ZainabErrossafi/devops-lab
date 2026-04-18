pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/ZainabErrossafi/devops-lab.git'
            }
        }

        stage('Build and Deploy') {
            steps {
                sh 'chmod +x deploy.sh'
                sh 'bash deploy.sh'
            }
        }
    }
}
