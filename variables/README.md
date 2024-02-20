# Terraform Variables

## CLI Flag
terraform plan -var "variable_name=variable_value"

## Variables from custom files
terraform plan -var-file="file-name.tfvars"

## Env Variables:
setx TF_VAR_variable_name variable_value (Windows)
export TF_VAR_variable_name="variable_value" (Linux/Mac)
