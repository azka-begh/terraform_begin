provider "aws" {
    region = var.region
}

locals {
    time = formatdate("DD MM YYYY hh:mm:ss ZZZ", timestamp())
}

variable "region" {
    default = "us-east-2"
}

variable "tags" {
    type = list
    default = ["first-ec2", "second-ec2"]
}

variable "ami" {
    type = map
    default = {
        "us-east-2" = "ami-05fb0b8c1424f266b"
        "us-east-1" = "ami-0c7217cdde317cfec"
    }
}

resource "aws_key_pair" "loginkey" {
    key_name = "docker"
    public_key = file("${path.module}/docker.pub")
}

resource "aws_instance" "myinstance" {
  ami = lookup(var.ami,var.region)
  instance_type = "t2.micro"
  key_name = aws_key_pair.loginkey.key_name
  count = 2
  tags = {
    Name = element(var.tags,count.index)
  }
}

output "timestamp" {
    value = local.time
}
