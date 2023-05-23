#!/usr/bin/env bash

helm uninstall prometheus

cd k8s
kubectl delete -f .

# Comment this out when testing, it saves a lot of time
minikube stop