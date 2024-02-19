provider "aws" {
  region = "us-east-2"
}
resource "aws_eip" "myip" {
  domain = "vpc"
}
//Prints the IP
output "public-ip" {
  value = aws_eip.myip.public_ip
}
//Prints a URL
output "url" {
  value = "https://${aws_eip.myip.public_ip}:8080"
}
//Prints elastic ip details
output "details" {
  value = aws_eip.myip
}
