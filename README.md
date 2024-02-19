# Terraform
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/
### Commands:
1. terraform init
2. terraform validate
3. terraform plan
4. terraform apply
5. terraform destroy
6. terraform fmt

### Destroy a single resource
terraform destroy -target aws_instance.abc12

### Auto approve
terraform apply -auto-approve
terraform destroy -auto-approve
