provider "aws" {
  region = "us-east-2"
}

variable "names" {
  type    = list(string)
  default = ["saba", "wafa", "layla"]
}

resource "aws_iam_user" "users11" {
  name  = var.names[count.index]
  path  = "/system/"
  count = 3
}
