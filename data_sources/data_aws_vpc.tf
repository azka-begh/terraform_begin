provider "aws" {
  region = "us-east-2"
}

data "aws_vpc" "myvpc" {

  filter {
    # It will get data of vpn whose name (which is actually a tag with key "Name") is "default". This is how filter works.
    name   = "tag:Name"
    values = ["default"]
  }
}

output "vpc_data" {
    value = data.aws_vpc.myvpc
}
