[![DUCK251](https://circleci.com/gh/DUCK251/ml-prediction.svg?style=svg)](https://app.circleci.com/pipelines/github/DUCK251/ml-prediction)

# ml-prediction

## Introduction

The `sklearn` model that has been trained to predict housing prices in Boston is given. The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. 

In this project I did:

* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that the code has been tested

## Instruction

We recommend working within a virtual environment. Instructions for setting up a virtual enviornment for your platform can be found in the python docs.

```
make setup
source ~/.devops/bin/activate
```

Or you can set up a virtual environment not using Makefile,

```
python3 -m pip install --user virtualenv
python3 -m venv env
source env/bin/activate
```

Once you have your virtual environment setup and running, install dependencies by running:

```
make install
```

To run the server, execute:

```
python3 app.py
```

To test the prediction, execute:

```
./make_prediction.sh
```

## Short explanation of the files

- app.py: web application predicting home price
- .circleci/config.yml: configuration file for circleci
- run_docker.sh: build docker image and run the image
- upload_docker.sh: push docker image to "duck25" repository.
- run_kubernetes.sh: build deployment and forward the container port to a host
