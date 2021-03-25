# Create a topic
gcloud pubsub topic create TOPIC_NAME

# Create a subscription
gcloud pubsub subscriptions create --topic TOPIC_NAME SUBSCRIPTION_NAME

# Publish a message
gcloud pubsub topic publish TOPIC_NAME --message MESSAGE

# Read data 
gcloud pubsub subscription pull --auto-ack SUBSCRIPTION_NAME
