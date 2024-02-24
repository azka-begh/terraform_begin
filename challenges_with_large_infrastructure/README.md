# Dealing with Large Infrastructure

- When you have a large infrastructure, you will face issues related to API limits for a provider.

- It is better to switch to smaller configuration files (kept in separate directories) where each can be applied independently.

 *Below Options are Not meant to be Used in Prod*

- We can prevent terraform from querying the current state during operations like terraform plan.
    - This can be achieved with the flag. 

    `-refresh=false`
 
    - We can also pick and choose which infrastructure objects we want to change, create or destroy by using a `-target=resource flag`

    `terraform plan -target=aws_instance.resource_name`

[Terraform Best Practices](https://spacelift.io/blog/terraform-best-practices)
