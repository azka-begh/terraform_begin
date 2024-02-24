# Terraform Workspace

- Workspaces allow the use of multiple states with a single configuration directory.
- Terraform allows us to have multiple workspaces, each with its own set of variables.
- Terraform workspaces let DevOps teams manage configurations for different environments in a centralized way.

## Terraform workspace vs. Terraform module
- Terraform workspaces and Terraform modules are two different concepts that serve different purposes in the Terraform ecosystem. 
- Workspaces allow users to manage different sets of infrastructure using the same configuration by isolating state files. 
- Modules, on the other hand, are a logical container for multiple resources that are used together, facilitating reusability and better organization of your code.

## Workspace Commands

1. **terraform workspace -h:** List all the subcommands and options.
2. **terraform workspace show:** Show the name of the current workspace.
3. **terraform workspace new workspace-name:** Create a new workspace with a specified name.
4. **terraform workspace list:** List your workspaces.
5. **terraform workspace select dev:** Select a specified workspace.
6. **terraform workspace delete workspace-name** Delete a specified workspace.

**State Files per Workspace**
```
% tree -a
.
├── .terraform
│   ├── environment
│   ├── modules
│   │   └── modules.json
│   └── providers
│       └── registry.terraform.io
│           └── hashicorp
│               └── aws
│                   └── 5.38.0
│                       └── darwin_arm64
│                           └── terraform-provider-aws_v5.38.0_x5
├── .terraform.lock.hcl
├── main.tf
├── terraform.tfvars
├── variables.tf
├── terraform.tfstate
├── terraform.tfstate.backup
└── terraform.tfstate.d
    ├── dev
    └── prod

12 directories, 7 files
```
## How to Manage Variables with Terraform Workspaces
- Managing variables with Terraform workspaces is essential when you need different configurations for different environments, like dev, test, stage, and prod. 

- First, you need to declare the variables as you would normally do for any Terraform configuration. Providing values to these variables can be done easily by using tfvars files.

- For each environment, you can declare a tfvars file:
```sh
vars_dev.tfvars
vars_test.tfvars
vars_stage.tfvars
vars_prod.tfvars
```
- Based on the workspace you are on (let’s suppose you are on the dev workspace), you will run an apply like:

```terraform apply –var-file=vars_dev.tfvars```
- You can also conditionally assign values to different parameters based on the workspace. Let’s take a look at an example:
```sh
locals {
  instance_type = terraform.workspace == “prod” ? “t2.large” : “t2.micro”
}
```
- Something like `lookup` and `terraform.workspace` will also be useful.
