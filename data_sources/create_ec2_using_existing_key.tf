data "aws_key_pair" "terraform" {
  key_name           = "terraform"
  include_public_key = true

  filter {
    name   = "tag:Name"
    values = ["terraform"]
  }
}

data "aws_ami" "ami_ubuntu" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64*"]
  }
}

resource "aws_instance" "myinstance" {
  ami           = data.aws_ami.ami_ubuntu.id
  instance_type = "t2.micro"
  key_name      = data.aws_key_pair.terraform.key_name

  tags = {
    Name = "ubuntu_vm"
  }
}
