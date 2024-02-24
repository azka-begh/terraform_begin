module "ec2_ins" {
  source = "../modules/ec2"
  instancetype = "t2.nano"
}
