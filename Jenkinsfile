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
                sh 'docker save -o /tmp/webapp.tar webapp:latest'
            }
        }

        stage('Deploy Kubernetes') {
            steps {
                sh '/usr/local/bin/minikube image load /tmp/webapp.tar'
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
                sh 'kubectl rollout restart deployment webapp'
            }
        }
    }
}
