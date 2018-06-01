docker build . --tag us.gcr.io/marine-compass-175800/coval:v10 $1
#WARNING: `gcloud docker` will not be supported for Docker client versions above 18.03. Please use `gcloud auth configure-docker` to configure `docker` to use `gcloud` as a credential helper, then use `docker` as you would for non-GCR registries, e.g. `docker pull gcr.io/project-id/my-image`. Add `--verbosity=error` to silence this warning, e.g. `gcloud docker --verbosity=error -- pull gcr.io/project-id/my-image`. See: https://cloud.google.com/container-registry/docs/support/deprecation-notices#gcloud-docker
#gcloud docker -- push us.gcr.io/marine-compass-175800/coval:v9
docker push us.gcr.io/marine-compass-175800/coval:v10
fission env delete --name covaljs
fission env create --name covaljs --image us.gcr.io/marine-compass-175800/coval:v10
bash env-vars.sh
