#!/usr/bin/env bash

helm uninstall remla23-team17
helm uninstall prometheus

# Comment this out when testing, it saves a lot of time
minikube stop