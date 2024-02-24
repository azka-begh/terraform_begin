resource "aws_security_group" "ec2_sg" {
  name        = "ec2_sg"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "ec2_sg"
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 8433
    protocol    = "tcp"
    to_port     = 8443
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
  }
}

output "sg_id" {
  value = aws_security_group.ec2_sg.id
}
