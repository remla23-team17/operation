#!/usr/bin/env bash

helm uninstall prometheus
helm uninstall remla23-team17
helm uninstall nginx

# Comment this out when testing, it will save a lot of time!
gcloud container clusters delete app-cluster --region=europe-west4