data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket = "name-of-the-bucket"
    key    = "network/eip.tfstate"
    region = "us-east-2"
  }
}
