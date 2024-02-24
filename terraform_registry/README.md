# Terraform Registry

- It is a repository of modules written by the Terraform community.
  
- The registry can help you get started with Terraform more quickly.
  
- Within the registry you can find verified modules that are maintained by various third party vendors.
  
- These modules are available for various resources like AWS VPC, RDS, ELB and others.
  
- Verified modules are reviewed by HashiCorp and actively maintained by contributors to stay up-to-date and compatible with both Terraform and their respective providers.
  
- They can be recognized by blue badges.
  
- Module verification is a manual process restricted to trusted HashiCorp partners.these 


## Using Registry Modules

To use these modules within code, we can make use of the source argument that contains the module path.
```
module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.13.0"
}
```
