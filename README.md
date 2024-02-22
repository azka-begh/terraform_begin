# Terraform

[Terraform with AWS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/)

Terraform is a powerful Infrastructure as Code (IaC) software tool offered by HashiCorp. It facilitates provisioning and managing your infrastructure on-prem and in the cloud. 

*How Does Terraform Work?*

At a high level, Terraform can be thought of as consisting of two main parts: *Terraform Core and Plugins*. Core is responsible for life cycle management of infrastructure. It is the open-source binary that you download and use from the command line. 
* Terraform Core takes into consideration the current state and evaluates it against your desired configuration. It then proposes a plan to add or remove infrastructure components as needed. Next, it takes care of provisioning or decommissioning any resources if you choose to apply the plan.
* Terraform Plugins provide a mechanism for Terraform Core to communicate with your infrastructure host or SaaS providers. Terraform Providers and Provisioners are examples of plugins as mentioned above. Terraform Core communicates with the plugins via Remote Procedure Call (RPC).

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
