# Ensuring gcloud is configured to work with App Engine
gcloud components install app-engine-python

# Clone sample repo and run
git clone https://github.com/GoogleCloudPlatform/python-docs-samples
cd python-docs-samples/appengine/standard/hello_world
gcloud app deploy app.yml --region=us-east1
https://project_name.appspot.com                                # Test the app
gcloud app versions stop v1 v2                                  # To stop an app version
gcloud app services set-traffic serv1 --splits v1=.4, v2=.6     # Split traffic
