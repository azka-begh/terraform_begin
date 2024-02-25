terraform {
  backend "s3" {
    bucket = "Name-of-your-bucket"
    # location in your bucket
    key    = "backend/terraform.tfstate"
    region = "us-east-2"
  }
}
