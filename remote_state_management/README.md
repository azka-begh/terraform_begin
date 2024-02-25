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

