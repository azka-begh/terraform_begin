provider "aws" {
  region = "us-east-2"
}

resource "tls_private_key" "rsa_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ec2-key" {
  key_name   = "terraform"
  public_key = tls_private_key.rsa_key.public_key_openssh
}

resource "local_file" "terraform_local_key" {
  content  = tls_private_key.rsa_key.private_key_pem
  filename = "terraform_key.pem"
}
