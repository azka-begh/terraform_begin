provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  alias   = "mumbai"
  region  = "ap-south-1"
  profile = "aws_user2"  # 2nd user account in ~/.aws/credentials
}
