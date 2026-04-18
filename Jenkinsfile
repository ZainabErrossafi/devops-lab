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
                sh 'bash /var/lib/jenkins/workspace/devops-pipeline/deploy.sh'
            }
        }
    }
}
