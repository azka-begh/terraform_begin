provider "aws" {
  region = "us-east-2"
}

import {
  to = aws_security_group.mysg
  id = "sg-0c35f69038268c64f"
}
