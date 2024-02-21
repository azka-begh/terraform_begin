locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Name    = "myrepo"
    Owner   = "admin_team"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_ebs_volume" "example_ebs" {
   availability_zone = "us-east-2"
   size              = 8
   tags              = local.common_tags
}
