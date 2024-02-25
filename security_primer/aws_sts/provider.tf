provider "aws" {
  region = "us-east-2"

  # This is how Terraform lets a user assume a role
  assume_role {
    role_arn = "arn:aws:iam::674583976178:role/s3_role_access"
    session_name = "terraform-learning"
  }
}
