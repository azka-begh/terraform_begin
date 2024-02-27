# Fetch all the iam users in an aws account
data "aws_iam_users" "user1" {}

# List all the iam users in aws account
output "list_iam_users" {
  value = data.aws_iam_users.user1.names
}

# Total number of iam users in our account
output "total_users" {
  value = length(data.aws_iam_users.user1.names)
}

# Gets the account id
data "aws_caller_identity" "account" {}

# Create an iam user using account id
resource "aws_iam_user" "iam" {
  name = "aws-admin-${data.aws_caller_identity.account.id}"
  path = "/system/"
}

# Print the name of the user newly created
output "name_of_new_user" {
  value = aws_iam_user.iam.name
}
