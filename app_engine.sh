# Ensuring gcloud is configured to work with App Engine
gcloud components install app-engine-python

# Clone sample repo and run
git clone https://github.com/GoogleCloudPlatform/python-docs-samples
cd python-docs-samples/appengine/standard_python3/hello_world
sudo apt-get update
sudo apt-get install virtualenv
virtualenv -p python3 venv
source venv/bin/activate
pip install  -r requirements.txt
python main.py


cd ~/python-docs-samples/appengine/standard_python3/hello_world
gcloud app deploy
gcloud app browse
