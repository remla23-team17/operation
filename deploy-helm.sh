#!/usr/bin/env bash

minikube start

minikube dashboard &

kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission
helm repo add repo-operation https://remla23-team17.github.io/helm-chart-operation
helm repo update
helm install remla23-team17 repo-operation/remla23-team17

minikube tunnel