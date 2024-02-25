# Remote State Management

## Overview of `.gitignore`

- The .gitignore file is a text file that tells Git which files or folders to ignore in a project.
### Terraform and gitignore

- Depending on the environments, it is recommended to avoid committing certain files to git. Below files should be mentioned in .gitignore and not committed to your source code.
  
|  No.  |Files to Ignore    |            Description                                                      |
| ----- |------------------ | --------------------------------------------------------------------------- |
|   1   | .terraform        | This file will be recreated when terraform init is run.                     |
|   2   | terraform.tfvars  | Likely to contain sensitive data like usernames and passwords and secrets.  |
|   3   | terraform.tfstate | Should be stored on the remote side.                                        |
|   4   | crash.log         | If terraform crashes, the logs are stored in a file named crash.log         |

