data "aws_key_pair" "terraform" {
  key_name           = "terraform"
  include_public_key = true

# Use it if your key has tags, otherwise not needed
  filter {
    name = "tag:Name"
    values = ["terraform"]
  }
}

output "publickey" {
  value = data.aws_key_pair.terraform.public_key
}

output "keyname" {
  value = data.aws_key_pair.terraform.key_name
}

output "keyid" {
  value = data.aws_key_pair.terraform.id
}

output "include_public_key" {
  value = data.aws_key_pair.terraform.include_public_key
}

output "key_type" {
  value = data.aws_key_pair.terraform.key_type
}

output "arn" {
  value = data.aws_key_pair.terraform.arn
}

# same as keyid
output "key_pair_id" {
  value = data.aws_key_pair.terraform.key_pair_id
}

output "tags" {
  value = data.aws_key_pair.terraform.tags
}
