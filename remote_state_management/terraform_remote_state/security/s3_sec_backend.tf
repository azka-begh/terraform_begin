terraform {
  backend "s3" {
    bucket = "name-of-the-bucket"
    key    = "security/eip.tfstate"
    region = "us-east-2"
  }
}
