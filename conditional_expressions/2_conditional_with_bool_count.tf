variable "ami" {
  type    = string
  default = "ami-0078ef784b6fa1ba4"
}

variable "istest" {
  type    = bool
  default = true
}

resource "aws_instance" "test" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.istest == true ? 1 : 0
  tags = {
    Name = "test_server"
  }
}

resource "aws_instance" "prod" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.istest == false ? 1 : 0
  tags = {
    Name = "prod_server"
  }
}
