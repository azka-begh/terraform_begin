provider "aws" {
  region = "us-east-2"
}

resource "tls_private_key" "rsa_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ec2_pub_key" {
  key_name   = "terraform"
  public_key = tls_private_key.rsa_key.public_key_openssh
}

resource "local_file" "ec2_priv_key" {
  content  = tls_private_key.rsa_key.private_key_pem
  filename = "terraform.pem"
}

resource "aws_instance" "ec2" {
  ami           = "ami-05fb0b8c1424f266b"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ec2_pub_key.key_name
  tags = {
    Name = "ubuntu-1"
  }

  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = tls_private_key.rsa_key.private_key_pem
    #file("./terraform.pem")
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [ 
        "sudo apt update -y",
        "sudo apt install nginx -y",
        "sudo systemctl start nginx"
     ]
  }
}
