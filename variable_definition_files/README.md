# Terraform Variable Definition Files

[Variable Definition Files](https://spacelift.io/blog/terraform-tfvars)

Terraform variable definitions files are used in Terraform to declare and assign values to variables. These files provide a way to configure and parameterize Terraform configurations, allowing users to control various aspects of infrastructure provisioning and configuration dynamically. Variable definition files typically have the file extension .tfvars.
Terraform also automatically loads a number of variable definitions files if they are present: Files named exactly terraform.tfvars or **terraform.tfvars.json** . Any files with names ending in **.auto.tfvars or .auto.tfvars.json**.
**Note: Terraform variables can be defined in the infrastructure plan, but it's best practice to store them in a variable file.**

## CLI Flag
```
terraform plan -var "variable_name=variable_value"
```
## Variables from custom files
```terraform plan -var-file="file-name.tfvars"
```
## Env Variables:
```
setx TF_VAR_variable_name variable_value (Windows)
export TF_VAR_variable_name="variable_value" (Linux/Mac)
```
