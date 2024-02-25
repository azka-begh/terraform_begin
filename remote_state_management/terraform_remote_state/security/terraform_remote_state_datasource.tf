data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket = "kops-s3-k8s-bucket"
    key    = "network/eip.tfstate"
    region = "us-east-2"
  }
}