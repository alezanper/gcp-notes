


# List buckets
gsutil ls

# List files on specific bucket
gsutil ls gs://some-bucket/

# List files on specific bucket with extra information
gsutil ls -a gs://some-bucket/

# Create a bucket on specific location northamerica-northeast1
gsutil mb -l northamerica-northeast1 gs://some-bucket/

# Get labels from bucket
gsutil label get gs://some-bucket/

# Save labels on file bucketlabels.json
gsutil label get gs://storage-lab-alezanper/ > bucketlabels.json

# Apply labels from external file
gsutil label set bucketlabels.json gs://other-bucket/

# Add a label to bucket
gsutil label ch -l "otherlabel:extralabel" gs://some-bucket/

# Check for versioning on specific bucket
gsutil versioning get gs://some-bucket/

# Enable versioning on specific bucket
gsutil versioning set on gs://some-bucket/

# copy a file to specific bucket
gsutil cp README-cloudshell.txt gs://some-bucket/

# Delete file on specific bucket
gsutil rm gs://some-bucket/README-cloudshell.txt

# Copying a whole bucket
gsutil cp gs://some-bucket/** gs://new-bucket/

# Create a bucket with global access
export LOCATION=US
export PROJECTNAME=some-bucket

gsutil mb -l $LOCATION gs://$PROJECTNAME
gsutil cp gs://cloud-training/gcpfci/my-excellent-blog.png my-excellent-blog.png
gsutil cp my-excellent-blog.png gs://$PROJECTNAME/my-excellent-blog.png
gsutil acl ch -u allUsers:R gs://$PROJECTNAME/my-excellent-blog.png

