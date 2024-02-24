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

  provisioner "remote-exec" {
    when       = destroy
    on_failure = continue
    inline = [
      "echo 'hello, instance is being destroyed'"
    ]
  }
  provisioner "remote-exec" {
    on_failure = fail
    inline = [
      "echo 'hello, instance is getting created'"
    ]
  }
}
