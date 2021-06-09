#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=rluzardo/app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run kubernetes-udacity --image=$dockerpath --port=80

#kubectl create deployment kubernetes-udacity --image=$dockerpath

#kubectl run kubernetes-udacity\
#    --generator=run-pod/v1\
#    --image=$dockerpath\
#    --port=80 --labels app=kubernetes-udacity


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
kubectl port-forward kubernetes-udacity 8000:80