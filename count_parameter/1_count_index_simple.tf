provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "users11" {
  name = "saba.${count.index}"
  path = "/system/"
  count = 5
}
