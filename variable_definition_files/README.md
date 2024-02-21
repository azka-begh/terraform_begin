# Terraform Variable Definition Files

Terraform also automatically loads a number of variable definitions files if they are present: Files named exactly terraform.tfvars or terraform.tfvars.json . Any files with names ending in .auto.tfvars or .auto.tfvars.json .

## Types of Variables
1. Local Variables
2. Input Variables
3. Output Variables

## CLI Flag
terraform plan -var "variable_name=variable_value"

## Variables from custom files
terraform plan -var-file="file-name.tfvars"

## Env Variables:
setx TF_VAR_variable_name variable_value (Windows)
export TF_VAR_variable_name="variable_value" (Linux/Mac)
