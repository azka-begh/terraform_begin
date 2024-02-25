# Terraform Import

**Scenario:**
- It can happen that all the resources in an organization were created manually.
- Later, the organization decided to migrate to Terraform and manage these resources using IaC.
  
**How will they accomplish this?**

*Through Terraform Import*

**Earlier Approach:**
- In the older versions of Terraform, `import` command would create the state file associated with the resources running in your environment.
- Users still had to write configuration (.tf) files from scratch.

**Now:**
- In the latest versions of Terraform (>=1.5), `import` can automatically create both the state files and the terraform config files for the resources you want to import.


## Commands
The import block takes two parameters:
id → The id of the resource used in your cloud provider
to → The resource address that will be used in Terraform

- Put an import block in your config file. 

```sh
import {
  to = aws_security_group.mysg  #resource_name.local_name
  id = "sg-0c35f69038268c64f"   
}
```

- Then run:
```sh
terraform plan -generate-config-out=my_sg.tf
```

- This will generate a state file and a config file of that resource.
