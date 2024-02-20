resource "aws_security_group" "my_sg1" {
  name        = "my-first-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "my_sg1"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.my_sg1.id
  cidr_ipv4   = var.vpc_ip
  from_port   = 443
  ip_protocol = "tcp"
  to_port     = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.my_sg1.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
