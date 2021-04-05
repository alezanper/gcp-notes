# Create a cluster with three nodes
gcloud container clusters create mycluster --num-nodes=3 --region=us-central1

# List containers
gcloud container clusters list

# Install kubectl
gcloud components install kubectl

# Describe cluster
gcloud container clusters describe --zone us-central1-a CLUSTER_NAME

# Get credentials to connect
gcloud container clusters get-credentials mycluster

# Resize cluster
gcloud container clusters resize CLUSTER_NAME --node-pool POOL_NAME --size 5 --region=us-central1

# Enable cluster autoscaling
gcloud container clusters update CLUSTER_NAME --enable-autoscaling --min-nodes=1 --max-nodes 5 --zone us-central1-a --node-pool POOL_NAME

# List images
gcloud container images list

# To be the detail of an image as an argument
gcloud container images describe gcr.io/appengflex-project-1/nginx

# Version
kubectl version

# Get nodes
kubectl get nodes

# Get pods
kubectl get pods

# Describe nodes
kubectl describe nodes

# Create a deploy
kubectl create deploy nginx --image=nginx:1.17.10

# Get pods
kubectl get pods

# Expose deployment
kubectl expose deployment nginx --port 80 --type LoadBalancer

# Get services
kubectl get services

# Scale deployment
kubectl scale deployment nginx --replicas 3

# check pods again
kubectl get pods

# check services
kubectl get services

# Enable autoscale for deployments
kubectl autoscale deployment DEPLOYMENT_NAME --max 10 --min 1 --cpu-percent 80

# Delete a deployment
kubectl detele deployment DEPLOYMENT_NAME

# Download and run an image
kubectl run hello-app --image=gcr.io/google-samples/hello-app:1.0 --port 8080

# Expose deployment 
kubectl expose deployment hello-app --type="LoadBalancer"

# Delete a service
kubectl delete service SERVICE_NAME

# Scale deployment to specific replicas
kubectl scale deployment hello-app --replicas=5

# Get service
kubectl get service SERVICE_NAME


