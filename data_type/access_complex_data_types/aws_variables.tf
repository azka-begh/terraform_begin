provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "myinstance1" {
  ami = "ami-05fb0b8c1424f266b"
  instance_type = var.mylist[1]
}

resource "aws_instance" "myinstance2" {
  ami = "ami-05fb0b8c1424f266b"
  instance_type = var.mymap["us-east-2"]
}

variable "mylist" {
  type = list
  default = ["t2.micro", "t3.micro", "t2.medium"]
}

variable "mymap" {
  type = map
  default = {
    us-east-2 = "t2.micro"
    us-east-1 = "t2.medium"
    ap-south-1 = "t3.micro"
  }
}
