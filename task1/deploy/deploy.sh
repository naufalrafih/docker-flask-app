#!/bin/bash

APP_NAME="docker-flask-app"
APP_VERSION="v1"
K8S_CONTEXT="docker-desktop"

docker build -t ${APP_NAME}:${APP_VERSION} ../app

kubectl config use-context ${K8S_CONTEXT}
kubectl apply -f deployment.yaml
