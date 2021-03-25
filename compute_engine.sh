# List zones for us-central1
gcloud compute zones list | grep us-central1

# set a default zone  
gcloud config set compute/zone us-central1-b

# List enabled services
gcloud services list --enabled

# List available services with compute word on it
gcloud services list --available | grep compute

# List compute machine types
gcloud compute machine-types list

# List compute machine types with filter
gcloud compute machine-types list --filter="NAME:f1-micro AND ZONE:us-west"

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

# Start/ stop an instance
gcloud compute instances start/stop my-vm --zone us-central1-c --async

# Describe an instance
gcloud compute instances describe my-vm 

# List snapshots
gcloud compute snapshots list 

# Create a snapshot from a disk
gcloud compute disks snapshot DISK_NAME --zone us-central1-c

# Describe a snapshot
gcloud compute snapshots describe SNAPSHOT_NAME

# Delete a snapshot
gcloud compute snapshots delete SNAPSHOT_NAME

# Create a disk from a snapshot
gcloud compute disks create disk-i1 --source-snapshot=SNAPSHOT_NAME --size=20 --type=pd-standard --zone us-central1-c

# Delete a disk
gcloud compute disks delete disk-i1 --zone us-central1-c

# List templates
gcloud compute instance-templates list

# Create an instance template
gcloud compute instance-templates create INSTANCE_TEMPLATE --source-instance=INSTANCE_NAME

# Delete an instance template
gcloud compute instance-templates delete INSTANCE_TEMPLATE 

# Modify firewall rules
gcloud compute firewall-rules create www-firewall --allow tcp:80