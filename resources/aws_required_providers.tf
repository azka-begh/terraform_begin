terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.27.0,<=4.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "instance-res" {
  instance_type = "t2.micro"
  ami           = "ami-05fb0b8c1424f266b"

  tags = {
    Name = "vm1"
  }
}
