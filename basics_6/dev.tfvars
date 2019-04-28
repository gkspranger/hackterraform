# terraform plan -var-file=dev.tfvars
# you can use an externalized file and pass that as an arg
# *.tfvars will typically be GITIGNORED since we don't want that pushed up into the repo

env = "dev"
