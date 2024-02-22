variable "region" {
  type = string
}

variable "instance_type" {
  type = list(string)
}

variable "ec2_tags" {
  type = list(string)
}

variable "region_ami_ubuntu" {
  type = map(string)
}
