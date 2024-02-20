# Terraform Variables

## CLI Flag
terraform plan -var "variable_name=variable_value"

## Variables from custom files
terraform plan -var-file="file-name.tfvars"

## Env Variables:
1. setx TF_VAR_variable_name variable_value (Windows)
2. export TF_VAR_variable_name="variable_value" (Linux/Mac)
