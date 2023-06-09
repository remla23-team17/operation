# Operation

Continuous deployment and operation utilising Docker (and soon Kubernetes, stay tuned!).

## Instructions

### Preparations

Make sure you have Docker/Minikube installed on your machine.

Clone the repository:
```
git clone https://github.com/remla23-team17/operation.git
```

Log in to Github docker service:
```
docker login ghcr.io
```

## Run with Docker

### Start
Compose the Docker containers (add -d to run in background):
``` 
docker-compose up -d
```

### Access

The app is available at http://localhost.


### Stop
Stop the Docker containers:
``` 
docker-compose down
```

## Run with Minikube (requires Docker driver)

### Start
Run the deploy minikube script:
``` 
scripts/minikube/deploy-minikube.sh
```

### Access

The app is available at http://192.168.49.2/ or http://localhost/ 

### Stop
Run the destroy minikube script:
``` 
scripts/minikube/destroy-minikube.sh
```

## Run with Helm Chart release

### Start
Run the deploy minikube script:
``` 
scripts/helm/deploy-helm.sh
```

### Access

The app is available at http://192.168.49.2/ or http://localhost/ 

### Stop
Run the destroy minikube script:
``` 
scripts/helm/destroy-helm.sh
```

## Run with GKE

### Start
- Create a gcloud project and enable Kubernetes API.
- Make sure google cloud cli is installed with the gke component.
- Copy the project ID and put it in the deploy-gcloud.sh script in the appropriate places. 

Run the deploy gcloud script:
``` 
scripts/gcloud/deploy-gcloud.sh
```

### Access

The app is available at the IP of the external nginx load balancer.

### Stop
Run the destroy gcloud script:
``` 
scripts/gcloud/destroy-gcloud.sh
```


## Monitoring using Prometheus

### Access

The app is available at http://192.168.49.2:30000 or http://localhost:30000




## Development

The [app repo](https://github.com/remla23-team17/app) is built using Flask, and uses a RESTful API to connect to the backend.

The [model-training](https://github.com/remla23-team17/model-training) repo preprocesses the data and trains the model, and saves the model to a file. 
Visit [preprocess.py](https://github.com/remla23-team17/model-training/blob/main/pipeline/preprocess.py) to see the preprocessing steps.

The [model-service](https://github.com/remla23-team17/model-service) repo loads the model from the file and exposes it as a RESTful API.
It uses the same preprocessing steps as the training pipeline to preprocess the data before making predictions.
The model is exposed via [webservice.py](https://github.com/remla23-team17/model-service/blob/main/webservice.py)
 
