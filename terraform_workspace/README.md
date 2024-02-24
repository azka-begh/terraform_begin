# Terraform Workspace

- Workspaces allow the use of multiple states with a single configuration directory.
- Terraform allows us to have multiple workspaces, each with its own set of variables.
- Terraform workspaces let DevOps teams manage configurations for different environments in a centralized way.

## Terraform workspace vs. Terraform module
- Terraform workspaces and Terraform modules are two different concepts that serve different purposes in the Terraform ecosystem. 
- Workspaces allow users to manage different sets of infrastructure using the same configuration by isolating state files. 
- Modules, on the other hand, are a logical container for multiple resources that are used together, facilitating reusability and better organization of your code.

## Workspace Commands
```sh
terraform workspace -h
terraform workspace show
terraform workspace new dev
terraform workspace new prd
terraform workspace list
terraform workspace select dev
```
## How to manage variables with Terraform workspaces
- Managing variables with Terraform workspaces is essential when you need different configurations for different environments, like dev, test, stage, and prod. 

- First, you need to declare the variables as you would normally do for any Terraform configuration. Providing values to these variables can be done easily by using tfvars files.

- For each environment, you can declare a tfvars file:
