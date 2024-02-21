provider "aws" {
  region = "us-east-2"
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvn*"]
  }
}

resource "aws_instance" "myinstance" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
  tags = {
    Name = my_vm
  }
}
