terraform {
  backend "s3" {
    bucket = "kops-s3-k8s-bucket"
    key    = "network/eip.tfstate"
    region = "us-east-2"
  }
}