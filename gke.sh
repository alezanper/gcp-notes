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

