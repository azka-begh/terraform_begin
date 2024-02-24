# As we have not created a separate sg for this ec2 instance, deafaut sg will be assigned. Make sure port 22 is open.

provider "aws" {
  region = "us-east-2"
}

# Creates a private key
resource "tls_private_key" "rsa_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Creates a key pair using tls_private_key
resource "aws_key_pair" "ec2_pub_key" {
  key_name   = "terraform"
  public_key = tls_private_key.rsa_key.public_key_openssh
}

# Saves the private key to your local (pwd)
resource "local_file" "ec2_priv_key" {
  content  = tls_private_key.rsa_key.private_key_pem
  filename = "terraform.pem"
}

# Creates instance and attaches the public key to it
resource "aws_instance" "ec2" {
  ami           = "ami-05fb0b8c1424f266b"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ec2_pub_key.key_name
  tags = {
    Name = "ubuntu-1"
  }

# Using the private key created above, connection is amde to the instance
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = tls_private_key.rsa_key.private_key_pem
    host        = self.public_ip
  }

# Commands are run remotely on the instance
  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}
