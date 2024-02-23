# First ec2 instance needs to get created, elastic ip depends on the instance, and security group depends on the elastic ip.

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "myec2_instance" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
}

resource "aws_eip" "eip" {
  instance = aws_instance.myec2"_instance.id
  vpc      = true
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {  
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "${aws_eip.eip.private_ip}/32"          
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
