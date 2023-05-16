#!/usr/bin/env bash

minikube start

minikube dashboard &

kubectl config use-context minikube
kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission

cd k8s
kubectl apply -f .

minikube tunnel