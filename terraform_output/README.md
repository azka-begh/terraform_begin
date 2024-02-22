# Terraform Output

You can check the value of an output variable in 2 ways after you have already applied the changes:
1. Terraform apply (It will just print the output variable values)
2. Checking the State File (Might have a lot of information)

**The terraform output command is used to extract the value of an output variable from the state file.**

```
terraform output output_variable_name
```
