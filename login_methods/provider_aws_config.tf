# Export Keys in Terminal

export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
export AWS_REGION="us-west-2"
terraform plan

# Explicitly writing your keys in tf file (Not Safe!)

provider "aws" {
    region     = "us-east-2"
    access_key = "ENTER ACCESS KEY"
    secret_key = "ENTER SECRET ACCESS KEY"
}

# Shared Config Files (This creates an issue as people using awscli might have their credentials stored at a different location)

provider "aws" {
  shared_config_files      = ["/Users/tf_user/.aws/conf"]
  shared_credentials_files = ["/Users/tf_user/.aws/creds"]
  profile                  = "customprofile"
}

# Best Way is to install aws cli, do an aws configure and Terraform will automatically read the config and credential files in .aws directory.

provider "aws" {
    region     = "us-east-2"
# No need to mention anything here regarding keys
}
