#!/usr/bin/env bash

minikube start

minikube dashboard &

kubectl config use-context minikube
kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission

helm repo add prom-repo https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prom-repo/kube-prometheus-stack --set prometheus.service.nodePort=30000 --set prometheus.service.type=NodePort

cd k8s
kubectl apply -f .

minikube tunnel