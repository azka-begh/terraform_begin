provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "my_terraform_vpc" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "tf_vpc"
  }
}
