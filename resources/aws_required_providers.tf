terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.27.0,<=4.0.0"
    }
  }
}
resource "aws_instance" "ec2" {
  ami           = "ami-05fb0b8c1424f266b"
  instance_type = "t2.micro"
  tags = {
    Name = "ubuntu-1"
  }
}
