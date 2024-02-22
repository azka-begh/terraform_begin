resource "aws_vpc" "my_terraform_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = local.vpc_tags["Name"]
  }
}
