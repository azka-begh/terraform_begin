# Terraform Cloud
[Terraform Cloud](https://spacelift.io/blog/what-is-terraform-cloud)
˘ˍ˚ˍ
- It manages Terraform runs in a consistent and reliable environment with various features like access controls, private registry for sharing modules, policy controls and others.
- We can create a workspace, import all the config files from our SCM and starting running. Runs can be applied or discarded.
- To add aws access and secret access keys, we need to add env variables to terraform cloud and make them sensitive.
- If your workspace is version control workflow then you cannot apply any changes from cli (vcs should be the single source of truth)
  
## Terraform vs Terraform Cloud
- Terraform, also known as Terraform OSS, is the open-source version of Terraform.
- You don’t need to pay anything to use it, but still, in order to have a functioning workflow, you will need to have a CI/CD platform in place and somewhere to store the remote state which will incur costs.
- Terraform Cloud is a product that leverages Terraform, acts as a CI/CD platform for your code, and also stores the state for you.

## Terraform Cloud vs Terraform Enterprise
- The main difference between Terraform Cloud and Terraform Enterprise is the fact that the first is a SaaS product, and the latter is self-hosted. 
- Of course, whenever there is a new feature released in the SaaS product, it will take some time for it to reach the Enterprise version too (at least a month). 

- Having a self-hosted product can be beneficial for an organization that needs to have isolated networks and better governance overall.

## Overview of Sentinel
- Sentinel is a policy-as-code framework integrated with the Hashicorp Enterprise products.
- It enables fine-grained, logic-based policy decisions, and can be extended to use information from external sources.
- Paid feature.
 ![image](https://github.com/begh-azka/terraform_aws/assets/97597065/6b8a7818-5fc7-42de-b7e7-244f3a80afb2)
- Policies can be attached to workspaces.
- Example: Policy of having tags in aws or not allowing traffic from 0.0.0.0/0. If these policies are enabled and attached then no instance will be created unless it has a tag.

## Terraform Cloud - Backend Operation Types
- Remote backend stores Terraform state and may be used to run operations in Terraform cloud.
- Terraform Cloud can be used with local operations, in which case only state is stored in the Terraform Cloud backend.
 1. Remote Operations:
When using full remote operations, terraform apply or plan can be executed in Terraform Cloud's run environment, with log output sreaming to the local terminal.
 2. 
 3. 
