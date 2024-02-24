module "ec2_ins" {
  source       = "../variables_module/ec2"
  instancetype = "t2.nano"
}
