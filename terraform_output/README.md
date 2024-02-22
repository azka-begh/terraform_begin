# Terraform Output

You can check the value of an output variable in 2 ways after you have already applied the changes:
1. Terraform apply (It will just print the output variable values)
2. Checking the State File (Might have a lot of information)

**The terraform output command is used to extract the value of an output variable from the state file.**

```
terraform output output_variable_name
```
```
resource "aws_instance" "example3" {
  ami           = "ami-05fb0b8c1424f266b"
  instance_type = "t2.micro"
}

output "pubip" {
  value = aws_instance.example3.public_ip
}

output "dns" {
  value = aws_instance.example3.public_dns
}
```

![27BA3A46-414B-457C-A461-823EECF9323E_4_5005_c](https://github.com/begh-azka/terraform_aws/assets/97597065/e8032699-31f9-4d47-928d-7e098a685dd2)
