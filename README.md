# Terraform with AWS

[Terraform with AWS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/)

[Terraform Cheatsheet](https://spacelift.io/blog/terraform-commands-cheat-sheet#manage-your-workspaces)

- Terraform is a powerful Infrastructure as Code (IaC) software tool offered by HashiCorp. It facilitates provisioning and managing your infrastructure on-prem and in the cloud.

## How Does Terraform Work?

- At a high level, Terraform can be thought of as consisting of two main parts: **Terraform Core and Plugins**.
- Core is responsible for life cycle management of infrastructure.
- It is the open-source binary that you download and use from the command line.
  
    1. **Terraform Core:** takes into consideration the current state and evaluates it against your desired configuration. It then proposes a plan to add or remove infrastructure components as needed. Next, it takes care of provisioning or decommissioning any resources if you choose to apply the plan.
    2.  **Terraform Plugins:** provide a mechanism for Terraform Core to communicate with your infrastructure host or SaaS providers. Terraform Providers and Provisioners are examples of plugins as mentioned above. Terraform Core communicates with the plugins via Remote Procedure Call (RPC).

## Terraform Language: 
- Infrastructure is defined in the Hashicorp Configuration Language (HCL) when working with Terraform. HCL is a declarative language targeted towards DevOps tools and servers. 

## Terraform Providers
- A provider is responsible for understanding API interactions and exposing resources.
- It is an executable plug-in that contains code necessary to interact with the API of the service.
- Terraform configurations must declare which providers they require so that Terraform can install and use them.
![image](https://github.com/begh-azka/terraform_aws/assets/97597065/56b1e362-cd31-4163-898b-d8590130e94c)

## Terraform Configuration Files
- Configuration files are a set of files used to describe infrastructure in Terraform and have the file extensions .tf and .tf.json.
![image](https://github.com/begh-azka/terraform_aws/assets/97597065/0bf3e4a5-1619-4159-8641-333302ba3ee3)

## Terraform State: 
- Terraform records information about what infrastructure is created in a Terraform state file.
- With the state file, Terraform is able to find the resources it created previously, supposed to manage and update them accordingly.
- The terraform state file, by default, is named **terraform.tfstate** and is held in the same directory where Terraform is run.

## Terraform Lock File:
- The Terraform lockfile is used by Terraform to track the desired state of your infrastructure.
- The lock file is always named **.terraform.lock.hcl**, and this name is intended to signify that it is a lock file for various items that Terraform caches in the .terraform subdirectory of your working directory.
- **Terraform recommends including the Dependency Lock File file in your version control repository, alongside your infrastructure code.**
- If multiple people need to work on the same terraform configuration, it could happen that one user can set up their infrastructure perfectly while others can face dependency issues. What the first user can do is commit their lock file to git and the others can use that very file on their systems. This helps in resolving dependency related issues. 
- You can generate or update this file by running `terraform init` locally and committing it into your repository. In case you changed the provider's version later on, you would have to run `terraform init -upgrade' first.
- Currently, only provider dependencies are tracked by lock file. Terraform does not remember version selections for *remote* modules, and so Terraform will always select the newest available module version that meets the specified version constraints.

## Commands:
|          Command          |                                Description                                |
| ------------------------- | ------------------------------------------------------------------------- |
|   terraform init          |  Initializes a working directory containing configuration files and installs plugins for required providers. Creates the terraform.lock.hcl file. |
|   terraform plan          |  Creates an execution plan and lets us preview the changes that Terraform plans to make to our infrastructure.|
|   terraform apply         |  Executes the actions proposed in a Terraform plan to create, update, or destroy infrastructure. Creates terraform.tfstate file.  |
|   terraform destroy       |  Destroy all remote objects managed by a particular Terraform configuration.       |
|   terraform validate      |  Validates code for syntax                    |
|   terraform fmt           |  Formats code per HCL canonical standard      |
|   terraform refresh       |  Refreshes the .tfstate file but does not modify the infrastructure     |

## Destroy a Single Resource
```sh
terraform destroy -target RESOURCE_TYPE.NAME
```
## Auto approve
```sh
1. terraform apply -auto-approve
2. terraform destroy -auto-approve
```
## Recreating a Particular Resource
```sh
terraform apply -replace="RESOURCE_TYPE.NAME"
```
## Terraform Plan File

- The generated terraform plan can be saved in a specific location.
- This plan can then be used with `terraform apply` to make sure that only the desired changes in the plan are applied to our infrastructure.
  ```sh
  terraform plan -out=/path/to/file
  terraform apply /path/to/file
  ```

## Terraform Logs
- Terraform has detailed logs that can be enabled by setting the TF_LOG environment variable to any value.
- You can set TF_LOG to one of the log levels TRACE, DEBUG, INFO, WARN or ERROR to change the verbosity of the logs.
- Example: TF_LOG = TRACE
- To persist logged output, you can set TF_LOG_PATH
  
[Useful Blocks and Functions](https://linumary.medium.com/learning-terraform-with-real-world-scenarios-part-2-e5749e8e6f8e)

**References:**

[Udemy Course - Github](https://github.com/zealvora/terraform-beginner-to-advanced-resource)

[Udemy](https://www.udemy.com/course/terraform-beginner-to-advanced/)
