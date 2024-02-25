# Remote State Management

## Terraform and gitignore

**`.gitignore`:** The .gitignore file is a text file that tells Git which files or folders to ignore in a project.

- Depending on the environments, it is recommended to avoid committing certain files to git. Below files should be mentioned in .gitignore and not committed to your source code.
  
|  No.  |Files to Ignore    |            Description                                                      |
| ----- |------------------ | --------------------------------------------------------------------------- |
|   1   | .terraform        | This file will be recreated when terraform init is run.                     |
|   2   | terraform.tfvars  | Likely to contain sensitive data like usernames and passwords and secrets.  |
|   3   | terraform.tfstate | Should be stored on the remote side.                                        |
|   4   | crash.log         | If terraform crashes, the logs are stored in a file named crash.log         |

# Terraform State Management

There are multiple sub-commands taht can be used with terraform state, these include:

|  No.  | State Sub-Command  |            Description                                      |
| ----- | ------------------ | ----------------------------------------------------------- |
|   1   |      list          |  List resources in the state                                |
|   2   |      mv            |  Move an item in the state                                  |
|   3   |      pull          |  Pull current state and output to stdout                    |
|   4   |      push          |  Update remote state from a local state file                |
|   5   |      rm            |  Replace provider in the state                              |
|   6   |      show          |  Show a resource in the state                               |

1. **mv:** 
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
