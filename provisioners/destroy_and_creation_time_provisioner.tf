resource "aws_security_group" "test" {
  name = "test_sg"

  ingress {
    description = "SSH into ec2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Outbound Traffic"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "test_instance" {
  ami                    = "ami-0265ca2039df27f61"
  instance_type          = "t2.micro"
  key_name               = "terrafm"
  vpc_security_group_ids = [aws_security_group.test.id]

  provisioner "remote-exec" {
    inline = [
      "echo 'This instance is getting created'",
    "sudo apt install nano -y"]
  }

  provisioner "remote-exec" {
    when   = destroy
    inline = ["echo 'This instance will be destroyed'"]
  }

  connection {
    private_key = file("~/Downloads/terrafm.pem")
    host        = self.public_ip
    user        = "ubuntu"
    type        = "ssh"
  }
}
