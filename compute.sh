# List zones for us-central1
gcloud compute zones list | grep us-central1

# set a default zone  
gcloud config set compute/zone us-central1-b

# List enabled services
gcloud services list --enabled

# List available services with compute word on it
gcloud services list --available | grep compute

# Deploy a virtual machine 
gcloud compute instances create "my-vm" \   # Virtual Machine name
--machine-type "n1-standard-1" \            # Virtual Machine Type
--image-project "debian-cloud" \            
--image "debian-9-stretch-v20190213" \      # Virtual Machine image
--subnet "default"                          # Subnet to deploy Virtual Machine

# Delete a instance
gcloud compute instances delete my-vm

# List instances
gcloud compute instances list

# List instances for specific project
gcloud --project specificproject compute instances list


