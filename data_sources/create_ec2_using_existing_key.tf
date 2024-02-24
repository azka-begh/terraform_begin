data "aws_key_pair" "terraform" {
  key_name           = "terraform"
  include_public_key = true

  filter {
    name = "tag:Name"
    values = ["terraform"]
  }
}

