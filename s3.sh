


# List buckets
gsutil ls

# List files on specific bucket
gsutil ls gs://some-bucket/

# Create a bucket on specific location northamerica-northeast1
gsutil mb -l northamerica-northeast1 gs://some-bucket

# Create a bucket with global access
export LOCATION=US
export PROJECTNAME=some-bucket

gsutil mb -l $LOCATION gs://$PROJECTNAME
gsutil cp gs://cloud-training/gcpfci/my-excellent-blog.png my-excellent-blog.png
gsutil cp my-excellent-blog.png gs://$PROJECTNAME/my-excellent-blog.png
gsutil acl ch -u allUsers:R gs://$PROJECTNAME/my-excellent-blog.png

