# Resource Behavior and Meta-Arguments

## How Terraform Applies a Configuration?

* Creates resources that exist in the configuartion files but are not associated with a real infrastructure object in the state file.

* Destroys resources that exist in the state file but no longer exist in the config files.

* Updates in-place resources whose arguments have changed (Example: You changed a tag).

* Destroys and re-creates resources whose arguments have changed but which cannot be updated in-place due to remote API limitation (Example: You changed the ami from Amazon Linux to Ubuntu).


## Understanding the Limitations:

**What happens if we want to change the default behavior?**

* -> You created infrastructure via Terraform and later on someone made manual changes in the infrastructure. What if you want to keep the manual changes and not let Terraform undo them?
* -> So, what you are trying to do is change the default behavior of terraform apply. You are trying to seek some flexibility.

**This is where meta arguments come into picture.**

Meta Arguments:
Terraform allows us to include meta-arguments within the resource block which allows some details of this standard resource behavior to be customized on a per-resource basis.


```
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "ec2-b" {
  ami           = "ami-05fb0b8c1424f266b"
  instance_type = "t2.micro"

  tags = {
    Name = "my_vm"
  }

  #meta-arguments -> lifeycle
  lifecycle {
     ignore_changes = [tags]
 }
}
```
