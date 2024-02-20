provider "aws" {
  region = "us-east-2"
}

resource "aws_eip" "first_ip" {
  domain = "vpc"
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "allow_tls"
  }
}

// Check the documents of elastic ip to know more about its attributes.

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  
//public_ip attribute of elastic ip stores the ip address. We put the attribute reference in ${} and then wrote /32 for CIDR. otherwise it gives an error.
    
  cidr_ipv4         = "${aws_eip.first_ip.public_ip}/32"          
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
