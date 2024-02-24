resource "aws_instance" "web" {
  ami           = "ami-0265ca2039df27f61"
  instance_type = "t2.micro"
  key_name      = "terrafm"

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/Downloads/terrafm.pem")
    host        = self.public_ip
  }

  # Copies the ec2.txt file to /tmp/ec2.txt
  provisioner "file" {
    source      = "ec2.txt"
    destination = "/tmp/ec2.txt"
  }

  # Copies the string in content into /tmp/ec2.log
  provisioner "file" {
    content     = "ami used: ${self.ami}"
    destination = "/tmp/ec2.log"
  }

  # Copies the temp folder to /etc/temp
  provisioner "file" {
    source      = "./temp"
    destination = "/tmp"
  }

  # Copies all files and folders in temp to tmp/webapp
  provisioner "file" {
    source      = "temp/"
    destination = "/tmp/"
  }
}
