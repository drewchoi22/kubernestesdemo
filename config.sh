#!/bin/bash

eval $(minikube docker-env)
docker build -t my-image:0.0.1 .
kubectl apply -k ./
