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

The app is available at http://localhost:8081.


### Stop
Stop the Docker containers:
``` 
docker-compose down
```

## Run with Minikube (requires Docker driver)

### Start
Run the deploy minikube script:
``` 
./deploy-minikube.sh
```

### Access

The app is available at http://192.168.49.2/ or http://localhost/ 

### Stop
Run the destroy minikube script:
``` 
./destroy-minikube.sh
```

## Run with Helm Chart release

### Start
Run the deploy minikube script:
``` 
./deploy-helm.sh
```

### Access

The app is available at http://192.168.49.2/ or http://localhost/ 

### Stop
Run the destroy minikube script:
``` 
./destroy-helm.sh
```



## Development

The [app repo](https://github.com/remla23-team17/app) is built using Flask, and uses a RESTful API to connect to the backend.

The [model-training](https://github.com/remla23-team17/model-training) repo preprocesses the data and trains the model, and saves the model to a file. 
Visit [preprocess.py](https://github.com/remla23-team17/model-training/blob/main/pipeline/preprocess.py) to see the preprocessing steps.

The [model-service](https://github.com/remla23-team17/model-service) repo loads the model from the file and exposes it as a RESTful API.
It uses the same preprocessing steps as the training pipeline to preprocess the data before making predictions.
The model is exposed via [webservice.py](https://github.com/remla23-team17/model-service/blob/main/webservice.py)
