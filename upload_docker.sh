#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=duck25/udacity

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
# Set environment variables DOCKER_USER and DOCKER_PASS for login
echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
docker push ${dockerpath}:latest
