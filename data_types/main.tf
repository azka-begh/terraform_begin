resource "aws_elb" "my_elb" {
  name               = var.elb_name
  availability_zones = var.azone

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  cross_zone_load_balancing   = var.value
  idle_timeout                = var.timeout
  connection_draining         = var.value
  connection_draining_timeout = var.timeout

  tags = {
    Name = var.elb_name
  }
}
