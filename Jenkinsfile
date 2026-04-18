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
                sh 'docker build -t webapp:latest .'
            }
        }

        stage('Push to Minikube') {
            steps {
                sh 'docker save webapp:latest | (eval $(minikube docker-env) && docker load)'
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
