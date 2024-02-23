provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "ec2-b" {
  ami           = "ami-05fb0b8c1424f266b"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.ec2-b.private_ip} >> private_ip.txt"
  }
}
