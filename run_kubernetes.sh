#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=segun11ajayi/alxdevpro4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run alxdevpro4 --image=$dockerpath --port=80 --labels app=alxdevpro4


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward alxdevpro4 8000:80

