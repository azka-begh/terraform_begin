# Terraform Settings

The special terraform configuration block type is used to configure some behaviors of Terraform, such as requiring a minimum version to apply your configuration.

Terraform settings are gathered together into terraform blocks:

1. **Terraform Version:**
   
   The **required_version** setting accepts a version constraint string, which specifies which versions of Terraform can be used with your configuration.
   If the running version of Terraform does not match the constraint specified, Terraform will produce an error and exit without taking any further actions.

3. **Provider Version:**
   
   The **required_providers** block specifies all of the providers required by the current module, mapping each local provider name to a source address and a version constraint.
