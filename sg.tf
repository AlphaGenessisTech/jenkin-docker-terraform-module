resource "aws_security_group" "web-traffic" {
  name        = "docker"
  description = "opening custom ports"

  dynamic "ingress" {
    iterator = port
    for_each = var.ingressrules
    content {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    iterator = port
    for_each = var.egressrules
    content {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "docker"
  }
}