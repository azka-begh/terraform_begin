# When you create a resource, a tfstate file will not be created on your local. Instead it will populate in your bucket folder.

terraform {
  backend "s3" {
    bucket = "Name-of-your-bucket"
    # location in your bucket
    key    = "backend/terraform.tfstate"
    region = "us-east-2"
  }
}
