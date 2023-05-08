# operation

Continuous deployment and operation utilising Docker (and soon Kubernetes, stay tuned!).

## Utilizing the application

### Setup

Make sure you have Docker installed on your machine.

Clone the repository:
```
git clone https://github.com/remla23-team17/operation.git
```

Log in to Github docker service:
```
docker login ghcr.io
```

### Run
Compose the Docker containers (add -d to run in background):
``` 
docker-compose up -d
```

### Stop
Stop the Docker containers:
``` 
docker-compose down
```

### Access the app

The app is available at http://localhost:8081.

## Development

The [app repo](https://github.com/remla23-team17/app) is built using Flask, and uses a RESTful API to connect to the backend.

The [model-training](https://github.com/remla23-team17/model-training) repo preprocesses the data and trains the model, and saves the model to a file. 
Visit [preprocess.py](https://github.com/remla23-team17/model-training/blob/main/pipeline/preprocess.py) to see the preprocessing steps.

The [model-service](https://github.com/remla23-team17/model-service) repo loads the model from the file and exposes it as a RESTful API.
It uses the same preprocessing steps as the training pipeline to preprocess the data before making predictions.
The model is exposed via [webservice.py](https://github.com/remla23-team17/model-service/blob/main/webservice.py)
