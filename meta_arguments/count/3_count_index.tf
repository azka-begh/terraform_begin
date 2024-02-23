variable "ami" {
  type    = string
  default = "ami-0078ef784b6fa1ba4"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "servers" {
  type    = list(string)
  default = ["server_one", "server_two", "server_three"]
}

resource "aws_instance" "myinstance" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = length(var.servers)
  tags = {
    Name = var.servers[count.index]
  }
}
