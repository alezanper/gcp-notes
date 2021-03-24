# List zones for us-central1
gcloud compute zones list | grep us-central1

# set a default zone  
gcloud config set compute/zone us-central1-b

# Deploy a virtual machine 
gcloud compute instances create "my-vm" \   # Virtual Machine name
--machine-type "n1-standard-1" \            # Virtual Machine Type
--image-project "debian-cloud" \            
--image "debian-9-stretch-v20190213" \      # Virtual Machine image
--subnet "default"                          # Subnet to deploy Virtual Machine

