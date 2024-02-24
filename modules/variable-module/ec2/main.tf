resource "aws_instance" "myec2" {
  ami           = "ami-0265ca2039df27f61"
  instance_type = var.instancetype
  key_name      = "terrafm"
}
