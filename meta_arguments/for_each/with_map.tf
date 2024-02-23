variable "ami" {
  type    = string
  default = "ami-0d77c9d87c7e619f9"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instances" {
  type = map(string)
  default = {
    prod = "server1"
    dev  = "server2"
    test = "server3"
  }
}

resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instance_type
  for_each      = var.instances
  tags = {
    Name = each.value
    Env  = each.key
    # for a set, each.value and each.key is the same }
  }
}
