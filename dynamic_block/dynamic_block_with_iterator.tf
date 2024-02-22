variable "settings" {
  type = list(object({
    description = string
    port        = number
  }))
  default = [
    {
      description = "Allows SSH access"
      port        = 22
    },
    {
      description = "Allows HTTP traffic"
      port        = 80
    },
    {
      description = "Allows HTTPS traffic"
      port        = 443
    }
  ]
}

resource "aws_vpc" "sandbox_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "sandbox_vpc"
  }
}

resource "aws_subnet" "sandbox_subnet" {
  vpc_id     = aws_vpc.sandbox_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "sandbox_subnet"
  }
}

resource "aws_security_group" "sandbox_sg" {
  name   = "sandbox_sg"
  vpc_id = aws_vpc.sandbox_vpc.id

  dynamic "ingress" {
    for_each = var.settings
    iterator = sandbox_sg_ingress

    content {
      description = sandbox_sg_ingress.value["description"]
      from_port   = sandbox_sg_ingress.value["port"]
      to_port     = sandbox_sg_ingress.value["port"]
      protocol    = "tcp"
      cidr_blocks = [aws_vpc.sandbox_vpc.cidr_block]
    }
  }

  tags = {
    Name = "sandbox_sg"
  }
}
