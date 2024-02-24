module "ec2_ins" {
  source       = "../modules/variables_module/ec2"
  instancetype = "t2.nano"
}
