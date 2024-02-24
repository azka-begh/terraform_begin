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
```sh
module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.13.0"
}
```


```sh
provider "aws" {
  region     = "us-west-2"
}

module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = "ami-0d6621c01e8c2de2c"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-4dbfb206"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
```
| Requirement                   | Description                                                                                            |
| ----------------------------- | ------------------------------------------------------------------------------------------------------ |
| **GitHub**                    | The module must be on GitHub and must be a public repo. This is required for public registry.          |
| **Name**                      | Module repos must use a three part name format **terraform-PROVIDER-NAME**. Example: terraform-aws-vpc |   
| **Repo Description**          | GitHub repo description is used to populate the short description of the module                        |
| **Standard Module Structure** | The module must adhere to the standard module structure.                                               |
| **x.y.z Tags for Releases**   | The registry uses tags to identify module versions. Release tag names must be a semantic version, which can be optionally be prefixed with a **v**. For example, v1.04 and v0.9.2                                                                |

### Standard Module Structure
```sh
.
├── main.tf
├── outputs.tf
├── README.md
└── variables.tf
```
