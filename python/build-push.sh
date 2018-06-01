docker build . --tag us.gcr.io/marine-compass-175800/pyumbral:v1 $1
gcloud docker -- push us.gcr.io/marine-compass-175800/pyumbral:v1
fission env delete --name pyumbral
fission env create --name pyumbral --image us.gcr.io/marine-compass-175800/pyumbral:v1
