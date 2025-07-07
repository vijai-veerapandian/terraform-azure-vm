### Get started
```
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

### Terraform Azure VM 


### Playing with Terraform locally

```
terraform init
terraform plan -var-file=./env/prod.tfvars
terraform apply -var-file=./env/prod.tfvars
```
### Terraform Workspace

```
terraform workspace list
terraform workspace new dev
terraform workspace select dev
terraform workspace select default
```


