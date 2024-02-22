resource "aws_instance" "ec2_vm" {
  ami           = var.region_ami_ubuntu[var.region]
  instance_type = var.instance_type[count.index]
  count         = 3

  tags = {
    Name = var.ec2_tags[count.index]
  }
}
