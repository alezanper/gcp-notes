# Connect to instance
gcloud sql connect INSTANCE_NAME --user=root

# Create a sql backup
gcloud sql backups create --async --instance INSTANCE_NAME

# For creating on-demand backups
gcloud sql instances patch INSTANCE_NAME -backup-start-time HH:MM

# Describe sql instance
gcloud sql instances describe INSTANCE_NAME

# Export database name to sql/csv
gcloud sql export sql/csv INSTANCE_NAME gs://BUCKET/FILE_NAME --database=DATABASE_NAME