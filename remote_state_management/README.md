# Remote State Management

## Terraform and gitignore
- Depending on the environments, it is recommended to avoid committing certain files to git. Below files should be mentioned in .gitignore and not committed to your source code.
  
|  No.  |Files to Ignore    |            Description                                                      |
| ----- |------------------ | --------------------------------------------------------------------------- |
|   1   | .terraform        | This file will be recreated when terraform init is run.                     |
|   2   | terraform.tfvars  | Likely to contain sensitive data like usernames and passwords and secrets.  |
|   3   | terraform.tfstate | Should be stored on the remote side.                                        |
|   4   | crash.log         | If terraform crashes, the logs are stored in a file named crash.log         |

## Terraform State Management
- As your Terraform usage becomes more advanced, there are some cases where you might need to modify the terraform state.
- It is important to never modify the state file directly. Instead, we should make changes via terraform state commands.
- There are multiple sub-commands that can be used with terraform state, these include:

|  No.  | State Sub-Command  |            Description                                      |
| ----- | ------------------ | ----------------------------------------------------------- |
|   1   |      list          |  List resources in the state                                |
|   2   |      mv            |  Move an item in the state                                  |
|   3   |      pull          |  Pull current state and output to stdout                    |
|   4   |      push          |  Update remote state from a local state file                |
|   5   |      rm            |  Replace provider in the state                              |
|   6   |      show          |  Show a resource in the state                               |

1. **list:**
- It lists resources within a Terraform state.
```sh
terraform state list
aws_iam_user.lb
```
3. **mv:** 
- The terraform state mv command is used to move items in a terraform state.
- This command is used in many cases in which you want to rename an existing resource without destroying and recreating it.
- Due to the destructive nature of this command, it will output a backup copy of the state prior to saving any changes.
`terraform state [options] SOURCE DESTINATION`

```sh
% terraform state mv aws_instance.myec2 aws_instance.inst3
Move "aws_instance.myec2" to "aws_instance.inst3"
Successfully moved 1 object(s).
```
2. **pull:**
- The terraform state pull command is used to manually download and output the state from remote state.
- This is useful for reading values out of state (potentially pairing this command with something like jq)
`% terraform state pull`

3. **push:**
- The terraform state push command is used to manually upload a local state file to remote state.
- This command should be used rarely.

4. **remove:**
- The terraform state rm command is used to remove items from the terraform state.
- Items removed from the state are not physically destroyed.
- Items removed from the Terraform state are no longer managed by Terraform.
- For example, if you remove an AWS instance from the state, the AWS instance will continue running, but terraform plan will no longer see that instance.
```sh
% terraform state rm aws_instance.inst3
Removed aws_instance.inst3
Successfully removed 1 resource instance(s).
```

5. **show:**
- It shows all the attributes of a single resource in the Terraform state.
```sh
% terraform state show aws_iam_user.lb
# aws_iam_user.lb:
resource "aws_iam_user" "lb" {
    arn           = "arn:aws:iam::674583976178:user/system/loadbalancer"
    force_destroy = false
    id            = "loadbalancer"
    name          = "loadbalancer"
    path          = "/system/"
    tags_all      = {}
    unique_id     = "AIDAZ2ECWTDZG7FVPAKWS"
}
```
