# Splat Expressions

[Splat Expressions in Terraform](https://developer.hashicorp.com/terraform/language/expressions/splat)

In Terraform, the splat expression, also known as the “splat variable” or “splat operator,” is represented by the * symbol. The splat expression is used to extract values from complex data structures, particularly when working with lists and maps. It allows you to access specific elements within a list or map and use them in your Terraform configurations.

```sh
provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "users" {
  name  = "iamuser_${count.index}"
  count = 3
  path  = "/system/"
}

output "arns" {
  value = aws_iam_user.users[*].arn
}
```

![F3AE2466-C338-4B26-80B0-05A5FEF1CA8F_4_5005_c](https://github.com/begh-azka/terraform_aws/assets/97597065/c965bd76-1595-4fa1-84d8-aff362ea1a4b)
