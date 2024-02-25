resource "aws_eip" "my_eip1" {
  domain = "vpc"
}

resource "aws_eip" "my_eip2" {
  domain   = "vpc"
  provider = aws.mumbai
}
