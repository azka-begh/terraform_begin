provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "myinstance1" {
  ami           = "ami-05fb0b8c1424f266b"
  instance_type = var.mylist[1]
}

resource "aws_instance" "myinstance2" {
  ami           = "ami-05fb0b8c1424f266b"
  instance_type = var.mymap["us-east-2"]
}
