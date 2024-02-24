module "ec2_ins" {
  source       = "../modules/variables_modules/ec2"
  instancetype = "t2.nano"
}
