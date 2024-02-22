provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "first" {
  name  = "iam_user-${count.index + 1}"
  path  = "/system/"
  count = 3
}

output "arns" {
  value = aws_iam_user.first[*].arn
}

output "username_with_arn" {
  value = zipmap(aws_iam_user.first[*].name, aws_iam_user.first[*].arn)
}
