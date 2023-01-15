# EC2 Instance
resource "aws_instance" "myec2vm" {
  //ami                  = var.my_ami
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  user_data              = file("${path.module}/docker-install.sh")
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.web-traffic.name]

  tags = {
    "Name" = "docker-jenkins"
  }
}