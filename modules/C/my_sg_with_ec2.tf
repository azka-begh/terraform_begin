module "sgmodule" {
  source = "../output_module"
}

resource "aws_instance" "web" {
  ami                    = "ami-0265ca2039df27f61"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [module.sgmodule.sg_id]
}
