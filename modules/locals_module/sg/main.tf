resource "aws_security_group" "ec2_sg" {
  name        = "ec2_sg"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "ec2_sg"
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = local.app_port
    protocol    = "tcp"
    to_port     = local.app_port
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
  }
}

resource "aws_security_group" "elb_sg" {
  name = "elb_sg"

  ingress {
    description = "Allow Inbound from Secret Application"
    from_port   = local.elb_port
    to_port     = local.elb_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
  }
}
