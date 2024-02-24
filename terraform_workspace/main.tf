provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0265ca2039df27f61"
  instance_type = lookup(var.instance_type, terraform.workspace)
}

}
