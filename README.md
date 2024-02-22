# Terraform

[Terraform - AWS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/)

### Commands:
```
1. terraform init
2. terraform validate
3. terraform plan
4. terraform apply
5. terraform destroy
6. terraform fmt
7. terraform show
```   
### Destroy a single resource
```
terraform destroy -target RESOURCE_TYPE.NAME
```
### Auto approve
```
1. terraform apply -auto-approve
2. terraform destroy -auto-approve
```
### Recreating a Particular resource
```
terraform apply -replace="RESOURCE_TYPE.NAME"
```
