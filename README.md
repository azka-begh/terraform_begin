# Terraform
### Commands:
1. terraform init
2. terraform validate
3. terraform plan
4. terraform apply
5. terraform destroy

### Destroy a single resource
terraform destroy -target aws_instance.abc12

### Auto approve Terraform apply
terraform apply -auto-approve

### Refresh the state file
(Dangrous! Can change the terraform state file if wrong configuration is entered in our infrastructure terraform file. Better to run terraform plan and validate the changes)
terraform refresh 
