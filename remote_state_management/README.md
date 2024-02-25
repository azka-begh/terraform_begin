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

|  No.  | State Sub-Command  |            Description                                     |
| ----- |------------------- | ---------------------------------------------------------- |
|   1   | list               | List resources within terraform state file.                |
|   2   | mv                 | Moves items with terraform state                           |
|   3   | pull               | Manually download and output the state from remote state   |
|   4   | push               | Manually upload a local state file to remote state.        |
|   5   | rm                 | Remove items from the terraform state.                     |
|   6   | show               | Show the attributes of a single resource in the state.     |
