pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/ZainabErrossafi/devops-lab.git'
            }
        }

        stage('Build Docker') {
            steps {
                sh '''
                    eval $(minikube docker-env)
                    docker build -t webapp:latest .
                '''
            }
        }

        stage('Deploy Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
                sh 'kubectl rollout restart deployment webapp'
            }
        }
    }
}
