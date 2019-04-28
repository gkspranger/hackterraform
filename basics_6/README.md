#### to allow multiple instances of the same plan, use workspaces

```bash
# uses workspaces to deploy multiple instances of TF state
$ terraform workspace list
 * default
$ terraform workspace new dev
Created and switched to workspace "dev"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
$ terraform workspace new prod
Created and switched to workspace "prod"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
$ terraform workspace list
   default
   dev
 * prod
$ terraform workspace select dev
Switched to workspace "dev".
$ terraform workspace list
   default
 * dev
   prod
$ ll terraform.tfstate.d/
total 0
drwxr-xr-x. 1 vagrant vagrant 64 Apr 26 13:56 dev
drwxr-xr-x. 1 vagrant vagrant 64 Apr 26 13:56 prod
$ terraform apply -var 'env=dev'
...
$ terraform workspace select prod
Switched to workspace "prod".
$ terraform apply -var 'env=prod'
...
```
