provider "aws" {
  region = "us-east-2"
}

data "aws_vpc" "vpc_data" {

  filter {
    name   = "tag:Name"
    values = ["tf_vpc"]
  }
}

resource "aws_subnet" "tf_vpc_subnet2" {
  vpc_id     = data.aws_vpc.vpc_data.id
  cidr_block = "10.0.7.0/24"

  tags = {
    Name = "tf_subnet2"
  }
}
