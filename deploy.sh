#!/bin/bash
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.49.2:2376"
export DOCKER_CERT_PATH="/home/zainab/.minikube/certs"
export MINIKUBE_ACTIVE_DOCKERD="minikube"
cd /var/lib/jenkins/workspace/devops-pipeline
docker build -t webapp:latest .
kubectl rollout restart deployment webapp
kubectl rollout status deployment webapp
