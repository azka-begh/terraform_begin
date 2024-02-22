provider "aws" {
  region = var.region
}

variable "region" {
  default = "us-east-2"
}

variable "instance_type" {
  default = ["t2.micro", "t2.nano", "t3.medium"]
}

variable "ec2_tags" {
  type    = list(string)
  default = ["ubuntu_1", "ubuntu_2", "ubuntu_3"]
}

variable "region_ami_ubuntu" {
  default = {
    us-east-2 = "ami-05fb0b8c1424f266b"
    us-east-1 = "ami-0c7217cdde317cfec"
    us-west-1 = "ami-0ce2cb35386fc22e9"
  }
}

locals {
  vpc_tags = {
    Name = "my_vpc"
  }
}

resource "aws_instance" "ec2_vm" {
  ami           = var.region_ami_ubuntu[var.region]
  instance_type = var.instance_type[count.index]
  count         = 3

  tags = {
    Name = var.ec2_tags[count.index]
  }
}

resource "aws_vpc" "my_terraform_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = local.vpc_tags["Name"]
  }
}
