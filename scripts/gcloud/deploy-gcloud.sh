# Change to your own project ID
gcloud config set project remla23-team17

gcloud container clusters create-auto app-cluster --region=europe-west4
gcloud container clusters get-credentials app-cluster --region=europe-west4
gcloud auth configure-docker

# Change to your own project context, needs Project ID
kubectl config use-context gke_remla23-team17_europe-west4_app-cluster

helm repo add repo-operation https://remla23-team17.github.io/helm-chart-operation
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo add prom-repo https://prometheus-community.github.io/helm-charts

helm repo update

helm install remla23-team17 repo-operation/remla23-team17 --version 1.0.0
helm install nginx ingress-nginx/ingress-nginx
helm install prometheus prom-repo/kube-prometheus-stack  --set prometheus.service.nodePort=30000 --set prometheus.service.type=NodePort