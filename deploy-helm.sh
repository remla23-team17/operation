#!/usr/bin/env bash

minikube start

minikube dashboard &

kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission
helm repo add repo-operation https://remla23-team17.github.io/helm-chart-operation
helm repo add prom-repo https://prometheus-community.github.io/helm-charts

helm repo update
helm install remla23-team17 repo-operation/remla23-team17
helm install prometheus prom-repo/kube-prometheus-stack --set prometheus.service.nodePort=30000 --set prometheus.service.type=NodePort

minikube tunnel
