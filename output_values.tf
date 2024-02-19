provider "aws" {
  region = "us-east-2"
}
resource "aws_eip" "myip" {
  domain = "vpc"
}
output "public-ip" {
  value = aws_eip.myip.public_ip
}
