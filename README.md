# Terraform

[Terraform with AWS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/)

Terraform is a powerful Infrastructure as Code (IaC) software tool offered by HashiCorp. It facilitates provisioning and managing your infrastructure on-prem and in the cloud.

## How Does Terraform Work?

At a high level, Terraform can be thought of as consisting of two main parts: **Terraform Core and Plugins**. Core is responsible for life cycle management of infrastructure. It is the open-source binary that you download and use from the command line. 
* **Terraform Core:** takes into consideration the current state and evaluates it against your desired configuration. It then proposes a plan to add or remove infrastructure components as needed. Next, it takes care of provisioning or decommissioning any resources if you choose to apply the plan.
* **Terraform Plugins:** provide a mechanism for Terraform Core to communicate with your infrastructure host or SaaS providers. Terraform Providers and Provisioners are examples of plugins as mentioned above. Terraform Core communicates with the plugins via Remote Procedure Call (RPC).

### Terraform Language: 
Infrastructure is defined in the Hashicorp Configuration Language (HCL) when working with Terraform. HCL is a declarative language targeted towards DevOps tools and servers. 

### Terraform Providers
A provider is responsible for understanding API interactions and exposing resources. It is an executable plug-in that contains code necessary to interact with the API of the service. Terraform configurations must declare which providers they require so that Terraform can install and use them.
![image](https://github.com/begh-azka/terraform_aws/assets/97597065/56b1e362-cd31-4163-898b-d8590130e94c)

### Terraform Configuration Files
Configuration files are a set of files used to describe infrastructure in Terraform and have the file extensions .tf and .tf.json.
![image](https://github.com/begh-azka/terraform_aws/assets/97597065/0bf3e4a5-1619-4159-8641-333302ba3ee3)

### Terraform State: 
Terraform records information about what infrastructure is created in a Terraform state file. With the state file, Terraform is able to find the resources it created previously, supposed to manage and update them accordingly. The terraform state file, by default, is named **terraform.tfstate** and is held in the same directory where Terraform is run.

### Terraform lock file:
The Terraform lockfile is used by Terraform to track the desired state of your infrastructure. The lock file is always named **.terraform.lock.hcl**, and this name is intended to signify that it is a lock file for various items that Terraform caches in the .terraform subdirectory of your working directory. Terraform recommends including the Dependency Lock File file in your version control repository, alongside your infrastructure code. You can generate or update this file by running ```terraform init``` locally and committing it into your repository.

### Commands:
```
1. terraform init
2. terraform validate
3. terraform plan
4. terraform apply
5. terraform destroy
6. terraform fmt
7. terraform show
8. terraform refresh (Use with Caution!)
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
## Terraform Plan File

* The generated terraform plan can be saved in a specific location.
* This plan can then be used with ```terraform apply``` to make sure that only the desired changes in the plan are applied to our infrastructure.
  ```
  terraform plan -out=/path/to/file
  terraform apply /path/to/file
  ```
